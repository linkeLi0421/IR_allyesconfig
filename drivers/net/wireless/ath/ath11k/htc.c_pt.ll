; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath11k/htc.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath11k/htc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.85 }
%struct.atomic_t = type { i32 }
%union.anon.85 = type { i32 }
%struct.sk_buff = type { %union.anon, %union.anon.107, %union.anon.108, [48 x i8], %union.anon.109, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.111, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.107 = type { ptr }
%union.anon.108 = type { i64 }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, ptr }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.113, i32, i32, i32, i16, i16, %union.anon.115, i32, %union.anon.116, %union.anon.117, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.113 = type { i32 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ath11k_htc = type { ptr, [9 x %struct.ath11k_htc_ep], %struct.spinlock, [256 x i8], i32, %struct.completion, i32, [8 x %struct.ath11k_htc_svc_tx_credits], i32, i8 }
%struct.ath11k_htc_ep = type { ptr, i32, i32, %struct.ath11k_htc_ep_ops, i32, i32, i8, i8, i8, i32, i8 }
%struct.ath11k_htc_ep_ops = type { ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.ath11k_htc_svc_tx_credits = type { i16, i8 }
%struct.ath11k_base = type { i32, ptr, ptr, %struct.ath11k_qmi, %struct.ath11k_wmi_base, %struct.completion, i32, i32, %struct.ath11k_htc, %struct.ath11k_dp, ptr, i32, %struct.anon.128, %struct.anon.129, %struct.ath11k_ce, %struct.timer_list, %struct.ath11k_hal, %struct.mutex, %struct.spinlock, [3 x %struct.ath11k_pdev], [3 x %struct.anon.150], i8, [3 x ptr], [3 x %struct.ath11k_hal_reg_capabilities_ext], i64, %struct.list_head, %struct.wait_queue_head, [6 x i8], i8, i32, [52 x i32], [11 x %struct.ath11k_ext_irq_grp], %struct.ath11k_targ_cap, [16 x i32], i8, i32, %struct.ath11k_hw_params, %struct.ath11k_bus_params, ptr, [3 x ptr], [3 x ptr], i32, ptr, ptr, %struct.ath11k_soc_dp_stats, i32, %struct.completion, ptr, %struct.work_struct, %struct.work_struct, [3 x i8], %struct.anon.154, i32, ptr, i32, %struct.work_struct, i8, %struct.mutex, %struct.timer_list, %struct.completion, %struct.anon.155, [0 x i8], [52 x i8] }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.106, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.106 = type { ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.155 = type { i32, i32, i32, i32, i32 }
%struct.ath11k_htc_hdr = type { i32, i32 }
%struct.page = type { i32, %union.anon.9, %union.anon.83, %struct.atomic_t, i32 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.83 = type { %struct.atomic_t }
%struct.ath11k_htc_record_hdr = type { i8, i8, i8, i8 }
%struct.ath11k_htc_record = type { %struct.ath11k_htc_record_hdr, %union.anon.163 }
%union.anon.163 = type { [0 x %struct.ath11k_htc_credit_report] }
%struct.ath11k_htc_credit_report = type { i8, i8, i8, i8 }
%struct.ath11k_htc_conn_svc_resp = type { i32, i32, i32 }
%struct.ath11k_htc_conn_svc = type { i32, i32 }
%struct.ath11k_htc_svc_conn_resp = type { i8, i8, i32, i32, i8 }
%struct.ath11k_htc_svc_conn_req = type { i16, %struct.ath11k_htc_ep_ops, i32 }
%struct.ath11k_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath11k_htc_setup_complete_extended = type { i32, i32, i32 }

@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unaligned HTC tx skb\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid endpoint id: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@ath11k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"htc insufficient credits ep %d required %d available %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"htc ep %d consumed %d credits (total %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"htc ep %d reverted %d credits back (total %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HTC Rx: invalid eid %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"HTC rx frame too long, len: %zu\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"HTC Rx: insufficient length, got %d, expected %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid trailer length: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HTC rx ctrl still processing\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ignoring unsolicited htc ep0 event %ld\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"htc rx completion ep %d skb %pK\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"failed to receive control response completion, polling..\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ctl_resp never came in (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid HTC ready msg len:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid HTC ready msg: 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Target ready! transmit resources: %d size:%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid credit size received\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"boot htc service %s does not allocate target credits\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate HTC packet\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Service connect timeout\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid resp message ID 0x%x\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"HTC Service %s connect response: status: 0x%lx, assigned ep: 0x%lx\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"HTC Service %s connect request failed: 0x%x)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"boot htc service '%s' ul pipe %d dl pipe %d eid %d ready\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"boot htc service '%s' eid %d TX flow control disabled\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"HTC is using TX credit flow control\0A\00", [59 x i8] zeroinitializer }, align 32
@ath11k_htc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&htc->tx_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not connect to htc service (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@__tracepoint_ath11k_log_dbg = external dso_local global %struct.tracepoint, align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid record length: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Credit report too long\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unhandled record: id:%d length:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Uneven credit report len %d\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"htc ep %d got %d credits (total %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"boot suspend complete %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__const.ath11k_htc_setup_target_buffer_assignments.svc_id = private unnamed_addr constant [3 x i32] [i32 256, i32 261, i32 262], align 4
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Control\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"WMI\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DATA BE\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DATA BK\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DATA VI\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DATA VO\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WMI MAC1\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WMI MAC2\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NMI Control\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NMI Data\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HTT Data\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RAW\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IPA TX\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PKT LOG\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@ath11k_htc_build_tx_ctrl_skb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ath/ath11k/htc.c\00", [58 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: skb %pK\0A\00", [19 x i8] zeroinitializer }, align 32
@__func__.ath11k_htc_build_tx_ctrl_skb = private unnamed_addr constant [29 x i8] c"ath11k_htc_build_tx_ctrl_skb\00", align 1
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unexpected htc rx\0A\00", [45 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@switch.table.ath11k_htc_init = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\02\01\01\03\02", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 3, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.57 = internal global [17 x i64] [i64 15, i64 16, i64 0, i64 1, i64 256, i64 257, i64 258, i64 259, i64 260, i64 261, i64 262, i64 512, i64 513, i64 768, i64 1280, i64 1536, i64 65024]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 16, i64 256, i64 261, i64 262]
@__sancov_gen_cov_switch_values.59 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 256, i64 257, i64 258, i64 259, i64 260, i64 261, i64 262, i64 512, i64 513, i64 768, i64 1280, i64 1536, i64 65024]
@__sancov_gen_cov_switch_values.60 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 256, i64 257, i64 258, i64 259, i64 260, i64 261, i64 262, i64 512, i64 513, i64 768, i64 1280, i64 1536, i64 65024]
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 23, i32 19 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 88, i32 19 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 98, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 106, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 134, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 294, i32 19 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 303, i32 19 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 309, i32 19 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 326, i32 20 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 358, i32 21 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 381, i32 20 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 388, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 520, i32 19 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 534, i32 19 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 539, i32 19 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 551, i32 19 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 558, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 564, i32 19 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 609, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 615, i32 19 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 658, i32 18 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 670, i32 18 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 674, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 685, i32 18 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 734, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 741, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 768, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 788, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 821, i32 18 }
@___asan_gen_.155 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 326, i32 6 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 202, i32 20 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 213, i32 22 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 223, i32 21 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 158, i32 19 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 170, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 242, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 415, i32 10 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 417, i32 10 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 419, i32 10 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 421, i32 10 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 423, i32 10 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 425, i32 10 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 427, i32 10 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 429, i32 10 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 431, i32 10 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 433, i32 10 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 435, i32 10 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 437, i32 10 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 439, i32 10 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 441, i32 10 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 443, i32 10 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 446, i32 9 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 44, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 49, i32 2 }
@___asan_gen_.230 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath11k/htc.c\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 407, i32 18 }
@___asan_gen_.232 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 87, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [29 x i8] c"switch.table.ath11k_htc_init\00", align 1
@llvm.compiler.used = appending global [60 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @ath11k_htc_init.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @init_completion.__key, ptr @.str.56, ptr @switch.table.ath11k_htc_init], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_htc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath11k_htc_init to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath11k_htc_alloc_skb(ptr noundef %ab, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %size, 8
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add, i32 noundef 2592) #5
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %3, i32 8
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %4 = ptrtoint ptr %add.ptr.i to i32
  %and = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_htc_send(ptr noundef %htc, i32 noundef %eid, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 1, i32 %eid
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %htc, align 4
  %dev1 = getelementptr inbounds %struct.ath11k_base, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 8
  %credit_flow = getelementptr inbounds %struct.ath11k_base, ptr %2, i32 0, i32 36, i32 40
  %5 = ptrtoint ptr %credit_flow to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %credit_flow, align 2, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %eid)
  %cmp142 = icmp sgt i32 %eid, 8
  br i1 %tobool.not, label %land.end.thread, label %land.end

land.end:                                         ; preds = %entry
  br i1 %cmp142, label %land.end.if.then_crit_edge, label %if.end

land.end.if.then_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

land.end.thread:                                  ; preds = %entry
  br i1 %cmp142, label %land.end.thread.if.then_crit_edge, label %if.end.thread

land.end.thread.if.then_crit_edge:                ; preds = %land.end.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.end.thread:                                    ; preds = %land.end.thread
  call void @__sanitizer_cov_trace_pc() #7
  %call5143 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #5
  br label %if.end31

if.then:                                          ; preds = %land.end.thread.if.then_crit_edge, %land.end.if.then_crit_edge
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %eid) #5
  br label %cleanup

if.end:                                           ; preds = %land.end
  %tx_credit_flow_enabled = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 1, i32 %eid, i32 10
  %7 = ptrtoint ptr %tx_credit_flow_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx_credit_flow_enabled, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  %call5 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #5
  br i1 %tobool4.not, label %if.end.if.end31_crit_edge, label %if.then7

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then7:                                         ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %target_credit_size = getelementptr inbounds %struct.ath11k_htc, ptr %htc, i32 0, i32 8
  %11 = ptrtoint ptr %target_credit_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %target_credit_size, align 4
  %add = add i32 %10, -1
  %sub = add i32 %add, %12
  %div = udiv i32 %sub, %12
  %tx_lock = getelementptr inbounds %struct.ath11k_htc, ptr %htc, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #5
  %tx_credits = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 1, i32 %eid, i32 9
  %13 = ptrtoint ptr %tx_credits to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_credits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %div)
  %cmp9 = icmp slt i32 %14, %div
  br i1 %cmp9, label %do.body, label %if.end17

do.body:                                          ; preds = %if.then7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %15 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %do.body.if.then13_crit_edge

do.body.if.then13_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_htc_send, %if.then13)) #5
          to label %do.end [label %if.then13], !srcloc !128

if.then13:                                        ; preds = %lor.lhs.false, %do.body.if.then13_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %tx_credits to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_credits, align 4
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %eid, i32 noundef %div, i32 noundef %17) #5
  br label %do.end

do.end:                                           ; preds = %if.then13, %lor.lhs.false
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #5
  br label %err_pull

if.end17:                                         ; preds = %if.then7
  %sub19 = sub i32 %14, %div
  %18 = ptrtoint ptr %tx_credits to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub19, ptr %tx_credits, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %19 = load i32, ptr @ath11k_debug_mask, align 4
  %and21 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %lor.lhs.false23, label %if.end17.if.then25_crit_edge

if.end17.if.then25_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then25

lor.lhs.false23:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_htc_send, %if.then25)) #5
          to label %do.end29 [label %if.then25], !srcloc !128

if.then25:                                        ; preds = %lor.lhs.false23, %if.end17.if.then25_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %tx_credits to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_credits, align 4
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %eid, i32 noundef %div, i32 noundef %21) #5
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %lor.lhs.false23
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #5
  br label %if.end31

if.end31:                                         ; preds = %do.end29, %if.end.if.end31_crit_edge, %if.end.thread
  %22 = phi i1 [ true, %do.end29 ], [ false, %if.end.if.end31_crit_edge ], [ false, %if.end.thread ]
  %credits.0 = phi i32 [ %div, %do.end29 ], [ 0, %if.end.if.end31_crit_edge ], [ 0, %if.end.thread ]
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 0, ptr %24, align 4
  %eid.i = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 1, i32 %eid, i32 1
  %26 = ptrtoint ptr %eid.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %eid.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %28 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len.i, align 4
  %and15.i = and i32 %27, 255
  %sub41.i = shl i32 %29, 16
  %shl42.i = add i32 %sub41.i, -524288
  %or.i = or i32 %shl42.i, %and15.i
  store i32 %or.i, ptr %24, align 4
  %tx_credit_flow_enabled.i = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 1, i32 %eid, i32 10
  %30 = ptrtoint ptr %tx_credit_flow_enabled.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tx_credit_flow_enabled.i, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool44.not.i = icmp eq i8 %31, 0
  br i1 %tobool44.not.i, label %if.end31.ath11k_htc_prepare_tx_skb.exit_crit_edge, label %do.end60.i

if.end31.ath11k_htc_prepare_tx_skb.exit_crit_edge: ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath11k_htc_prepare_tx_skb.exit

do.end60.i:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %or63.i = or i32 %or.i, 256
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or63.i, ptr %24, align 4
  br label %ath11k_htc_prepare_tx_skb.exit

ath11k_htc_prepare_tx_skb.exit:                   ; preds = %do.end60.i, %if.end31.ath11k_htc_prepare_tx_skb.exit_crit_edge
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %tx_lock.i = getelementptr inbounds %struct.ath11k_htc, ptr %34, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock.i) #5
  %seq_no.i = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 1, i32 %eid, i32 8
  %35 = ptrtoint ptr %seq_no.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %seq_no.i, align 2
  %inc.i = add i8 %36, 1
  store i8 %inc.i, ptr %seq_no.i, align 2
  %conv.i = zext i8 %36 to i32
  %shl81.i = shl nuw nsw i32 %conv.i, 8
  %ctrl_info.i = getelementptr inbounds %struct.ath11k_htc_hdr, ptr %24, i32 0, i32 1
  %37 = ptrtoint ptr %ctrl_info.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shl81.i, ptr %ctrl_info.i, align 4
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %tx_lock84.i = getelementptr inbounds %struct.ath11k_htc, ptr %39, i32 0, i32 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock84.i) #5
  %conv = trunc i32 %eid to i8
  %eid32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %40 = ptrtoint ptr %eid32 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv, ptr %eid32, align 1
  %41 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i, align 4
  %43 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %42) #5
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %ath11k_htc_prepare_tx_skb.exit
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i137, !prof !129

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_map_single_attrs.exit.thread

if.then.i137:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %4) #5
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %45 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i137.dev_name.exit.i_crit_edge

if.then.i137.dev_name.exit.i_crit_edge:           ; preds = %if.then.i137
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i137
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %4, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i137.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %48, %if.end.i.i ], [ %46, %if.then.i137.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.30, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #5
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %49 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 -1, ptr %0, align 1
  tail call void @debug_dma_mapping_error(ptr noundef %4, i32 noundef -1) #5
  br label %err_credits

dma_map_single_attrs.exit:                        ; preds = %ath11k_htc_prepare_tx_skb.exit
  tail call void @debug_dma_map_single(ptr noundef %4, ptr noundef %42, i32 noundef %44) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %50 = load ptr, ptr @mem_map, align 4
  %51 = ptrtoint ptr %42 to i32
  %sub.i138 = add i32 %51, 1073741824
  %shr.i = lshr i32 %sub.i138, 12
  %add.ptr.i = getelementptr %struct.page, ptr %50, i32 %shr.i
  %and.i = and i32 %51, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %4, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %44, i32 noundef 1, i32 noundef 0) #5
  %52 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %call41.i, ptr %0, align 1
  tail call void @debug_dma_mapping_error(ptr noundef %4, i32 noundef %call41.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.err_credits_crit_edge, label %if.end39

dma_map_single_attrs.exit.err_credits_crit_edge:  ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_credits

if.end39:                                         ; preds = %dma_map_single_attrs.exit
  %53 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %htc, align 4
  %ul_pipe_id = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 1, i32 %eid, i32 6
  %55 = ptrtoint ptr %ul_pipe_id to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ul_pipe_id, align 4
  %57 = ptrtoint ptr %eid.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %eid.i, align 4
  %conv42 = trunc i32 %58 to i16
  %call43 = tail call i32 @ath11k_ce_send(ptr noundef %54, ptr noundef %skb, i8 noundef zeroext %56, i16 noundef zeroext %conv42) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end39.cleanup_crit_edge, label %err_unmap

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_unmap:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %0, align 1
  %61 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %4, i32 noundef %60, i32 noundef %62, i32 noundef 1, i32 noundef 0) #5
  br label %err_credits

err_credits:                                      ; preds = %err_unmap, %dma_map_single_attrs.exit.err_credits_crit_edge, %dma_map_single_attrs.exit.thread
  %ret.0 = phi i32 [ %call43, %err_unmap ], [ -5, %dma_map_single_attrs.exit.err_credits_crit_edge ], [ -5, %dma_map_single_attrs.exit.thread ]
  br i1 %22, label %if.then50, label %err_credits.err_pull_crit_edge

err_credits.err_pull_crit_edge:                   ; preds = %err_credits
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_pull

if.then50:                                        ; preds = %err_credits
  %tx_lock51 = getelementptr inbounds %struct.ath11k_htc, ptr %htc, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock51) #5
  %tx_credits52 = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 1, i32 %eid, i32 9
  %63 = ptrtoint ptr %tx_credits52 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_credits52, align 4
  %add53 = add i32 %64, %credits.0
  store i32 %add53, ptr %tx_credits52, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %65 = load i32, ptr @ath11k_debug_mask, align 4
  %and55 = and i32 %65, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %lor.lhs.false57, label %if.then50.if.then60_crit_edge

if.then50.if.then60_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then60

lor.lhs.false57:                                  ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_htc_send, %if.then60)) #5
          to label %do.end64 [label %if.then60], !srcloc !128

if.then60:                                        ; preds = %lor.lhs.false57, %if.then50.if.then60_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %tx_credits52 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx_credits52, align 4
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %eid, i32 noundef %credits.0, i32 noundef %67) #5
  br label %do.end64

do.end64:                                         ; preds = %if.then60, %lor.lhs.false57
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock51) #5
  %ep_tx_credits = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 1, i32 %eid, i32 3, i32 2
  %68 = ptrtoint ptr %ep_tx_credits to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ep_tx_credits, align 4
  %tobool66.not = icmp eq ptr %69, null
  br i1 %tobool66.not, label %do.end64.err_pull_crit_edge, label %if.then67

do.end64.err_pull_crit_edge:                      ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_pull

if.then67:                                        ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %htc, align 4
  tail call void %69(ptr noundef %71) #5
  br label %err_pull

err_pull:                                         ; preds = %if.then67, %do.end64.err_pull_crit_edge, %err_credits.err_pull_crit_edge, %do.end
  %ret.1 = phi i32 [ -11, %do.end ], [ %ret.0, %if.then67 ], [ %ret.0, %do.end64.err_pull_crit_edge ], [ %ret.0, %err_credits.err_pull_crit_edge ]
  %call73 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 8) #5
  br label %cleanup

cleanup:                                          ; preds = %err_pull, %if.end39.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %ret.1, %err_pull ], [ 0, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath11k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_ce_send(ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_htc_tx_completion_handler(ptr noundef %ab, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %htc1 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 8
  %eid2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %0 = ptrtoint ptr %eid2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %eid2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp = icmp ugt i8 %1, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %1 to i32
  %tx_lock = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #5
  %ep_ops = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 %conv, i32 3
  %2 = ptrtoint ptr %ep_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep_ops, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #5
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %htc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %htc1, align 4
  tail call void %3(ptr noundef %5, ptr noundef %skb) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_htc_rx_completion_handler(ptr noundef %ab, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %htc1 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 8) #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %conv14 = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv14)
  %cmp = icmp ugt i32 %conv14, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.5, i32 noundef %conv14) #5
  br label %out

if.end:                                           ; preds = %entry
  %shr35 = lshr i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 267976703, i32 %3)
  %cmp38 = icmp ugt i32 %3, 267976703
  br i1 %cmp38, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %add = add nuw nsw i32 %shr35, 8
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.6, i32 noundef %add) #5
  br label %out

if.end43:                                         ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %shr35)
  %cmp45 = icmp ult i32 %5, %shr35
  br i1 %cmp45, label %if.then47, label %do.end65

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.7, i32 noundef %5, i32 noundef %shr35) #5
  br label %out

do.end65:                                         ; preds = %if.end43
  %6 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.end65.if.end107_crit_edge, label %if.then72

do.end65.if.end107_crit_edge:                     ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107

if.then72:                                        ; preds = %do.end65
  %ctrl_info = getelementptr inbounds %struct.ath11k_htc_hdr, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %ctrl_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctrl_info, align 4
  %and89 = and i32 %8, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and89)
  %cmp91 = icmp ult i32 %and89, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and89, i32 %shr35)
  %cmp94 = icmp ugt i32 %and89, %shr35
  %or.cond = select i1 %cmp91, i1 true, i1 %cmp94
  br i1 %or.cond, label %if.then96, label %while.body.lr.ph.i

if.then96:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.8, i32 noundef %and89) #5
  br label %out

while.body.lr.ph.i:                               ; preds = %if.then72
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %add.ptr99 = getelementptr i8, ptr %add.ptr, i32 %shr35
  %idx.neg = sub nsw i32 0, %and89
  %add.ptr100 = getelementptr i8, ptr %add.ptr99, i32 %idx.neg
  %9 = ptrtoint ptr %htc1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %htc1, align 4
  %credit_flow.i = getelementptr inbounds %struct.ath11k_base, ptr %10, i32 0, i32 36, i32 40
  br label %while.body.i

while.body.i:                                     ; preds = %if.end33.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %buffer.addr.07.i = phi ptr [ %add.ptr100, %while.body.lr.ph.i ], [ %add.ptr.i, %if.end33.i.while.body.i_crit_edge ]
  %length.addr.06.i = phi i32 [ %and89, %while.body.lr.ph.i ], [ %sub.i, %if.end33.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %length.addr.06.i)
  %cmp2.i = icmp ult i32 %length.addr.06.i, 4
  br i1 %cmp2.i, label %while.body.i.out_crit_edge, label %if.end.i

while.body.i.out_crit_edge:                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end.i:                                         ; preds = %while.body.i
  %len3.i = getelementptr inbounds %struct.ath11k_htc_record_hdr, ptr %buffer.addr.07.i, i32 0, i32 1
  %11 = ptrtoint ptr %len3.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %len3.i, align 1
  %conv.i = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %length.addr.06.i, i32 %conv.i)
  %cmp4.i = icmp ult i32 %length.addr.06.i, %conv.i
  br i1 %cmp4.i, label %if.then6.i, label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.le = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %10, ptr noundef nonnull @.str.31, i32 noundef %conv.i.le) #5
  br label %out

if.end10.i:                                       ; preds = %if.end.i
  %13 = ptrtoint ptr %credit_flow.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %credit_flow.i, align 2, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.end10.i.if.end33.i_crit_edge, label %if.then11.i

if.end10.i.if.end33.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.i

if.then11.i:                                      ; preds = %if.end10.i
  %15 = ptrtoint ptr %buffer.addr.07.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %buffer.addr.07.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cond.i = icmp eq i8 %16, 1
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %12)
  %cmp17.i = icmp ult i8 %12, 4
  br i1 %cmp17.i, label %if.end30.i, label %if.end20.i

if.end20.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = getelementptr inbounds %struct.ath11k_htc_record, ptr %buffer.addr.07.i, i32 0, i32 1
  tail call fastcc void @ath11k_htc_process_credit_report(ptr noundef %htc1, ptr noundef %17, i32 noundef %conv.i) #5
  br label %if.end33.i

sw.default.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv13.i = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %10, ptr noundef nonnull @.str.33, i32 noundef %conv13.i, i32 noundef %conv.i) #5
  br label %if.end33.i

if.end30.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %10, ptr noundef nonnull @.str.32) #5
  br label %out

if.end33.i:                                       ; preds = %sw.default.i, %if.end20.i, %if.end10.i.if.end33.i_crit_edge
  %18 = ptrtoint ptr %len3.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %len3.i, align 1
  %conv36.i = zext i8 %19 to i32
  %add.i = add nuw nsw i32 %conv36.i, 4
  %add.ptr.i = getelementptr i8, ptr %buffer.addr.07.i, i32 %add.i
  %sub.i = sub nsw i32 %length.addr.06.i, %add.i
  %cmp.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end33.i.while.body.i_crit_edge, label %cleanup

if.end33.i.while.body.i_crit_edge:                ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

cleanup:                                          ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %sub = sub i32 %21, %and89
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub) #5
  br label %if.end107

if.end107:                                        ; preds = %cleanup, %do.end65.if.end107_crit_edge
  %trailer_len.0 = phi i32 [ %and89, %cleanup ], [ 0, %do.end65.if.end107_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %trailer_len.0, i32 %shr35)
  %cmp109.not = icmp ult i32 %trailer_len.0, %shr35
  br i1 %cmp109.not, label %if.end112, label %if.end107.out_crit_edge

if.end107.out_crit_edge:                          ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end112:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv14)
  %cmp114 = icmp eq i32 %conv14, 0
  br i1 %cmp114, label %if.then116, label %do.body170

if.then116:                                       ; preds = %if.end112
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %trunc = trunc i32 %25 to i16
  %26 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %sw.default [
    i16 1, label %if.then116.sw.bb_crit_edge
    i16 3, label %if.then116.sw.bb_crit_edge257
    i16 6, label %sw.bb147
    i16 7, label %sw.bb148
    i16 8, label %if.then116.out_crit_edge
  ]

if.then116.out_crit_edge:                         ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then116.sw.bb_crit_edge257:                    ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.then116.sw.bb_crit_edge:                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %if.then116.sw.bb_crit_edge, %if.then116.sw.bb_crit_edge257
  %ctl_resp = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 5
  %call136 = tail call zeroext i1 @completion_done(ptr noundef %ctl_resp) #5
  br i1 %call136, label %if.then137, label %if.end139

if.then137:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.9) #5
  tail call void @complete(ptr noundef %ctl_resp) #5
  br label %out

if.end139:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  %29 = tail call i32 @llvm.smin.i32(i32 %28, i32 256)
  %control_resp_len = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 4
  %30 = ptrtoint ptr %control_resp_len to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %control_resp_len, align 4
  %control_resp_buffer = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 3
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %33 = call ptr @memcpy(ptr %control_resp_buffer, ptr %32, i32 %29)
  tail call void @complete(ptr noundef %ctl_resp) #5
  br label %out

sw.bb147:                                         ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @ath11k_htc_suspend_complete(ptr noundef %ab, i1 noundef zeroext true)
  br label %out

sw.bb148:                                         ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @ath11k_htc_suspend_complete(ptr noundef %ab, i1 noundef zeroext false)
  br label %out

sw.default:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #7
  %and134 = and i32 %25, 65535
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.10, i32 noundef %and134) #5
  br label %out

do.body170:                                       ; preds = %if.end112
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %34 = load i32, ptr @ath11k_debug_mask, align 4
  %and171 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %lor.lhs.false173, label %do.body170.if.then176_crit_edge

do.body170.if.then176_crit_edge:                  ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then176

lor.lhs.false173:                                 ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_htc_rx_completion_handler, %if.then176)) #5
          to label %do.end180 [label %if.then176], !srcloc !128

if.then176:                                       ; preds = %lor.lhs.false173, %do.body170.if.then176_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef %conv14, ptr noundef %skb) #5
  br label %do.end180

do.end180:                                        ; preds = %if.then176, %lor.lhs.false173
  %ep_rx_complete = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 %conv14, i32 3, i32 1
  %35 = ptrtoint ptr %ep_rx_complete to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ep_rx_complete, align 4
  tail call void %36(ptr noundef %ab, ptr noundef %skb) #5
  %ul_pipe_id = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 %conv14, i32 6
  %37 = ptrtoint ptr %ul_pipe_id to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ul_pipe_id, align 4
  tail call void @ath11k_ce_poll_send_completed(ptr noundef %ab, i8 noundef zeroext %38) #5
  br label %out

out:                                              ; preds = %do.end180, %sw.default, %sw.bb148, %sw.bb147, %if.end139, %if.then137, %if.then116.out_crit_edge, %if.end107.out_crit_edge, %if.end30.i, %if.then6.i, %while.body.i.out_crit_edge, %if.then96, %if.then47, %if.then40, %if.then
  %skb.addr.0 = phi ptr [ %skb, %if.then ], [ %skb, %if.then40 ], [ %skb, %if.then47 ], [ %skb, %if.end107.out_crit_edge ], [ null, %do.end180 ], [ %skb, %if.end139 ], [ %skb, %sw.bb147 ], [ %skb, %sw.bb148 ], [ %skb, %if.then116.out_crit_edge ], [ %skb, %sw.default ], [ %skb, %if.then137 ], [ %skb, %if.then96 ], [ %skb, %if.then6.i ], [ %skb, %if.end30.i ], [ %skb, %while.body.i.out_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath11k_htc_suspend_complete(ptr noundef %ab, i1 noundef zeroext %ack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %0 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_htc_suspend_complete, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !128

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i1 %ack to i32
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 32, ptr noundef nonnull @.str.36, i32 noundef %conv) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %dev_flags = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 45
  br i1 %ack, label %if.then3, label %if.else

if.then3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_set_bit(i32 noundef 10, ptr noundef %dev_flags) #5
  br label %if.end5

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %dev_flags) #5
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %htc_suspend = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 59
  tail call void @complete(ptr noundef %htc_suspend) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_ce_poll_send_completed(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_htc_wait_target(ptr noundef %htc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htc, align 4
  %ctl_resp = getelementptr inbounds %struct.ath11k_htc, ptr %htc, i32 0, i32 5
  %call = tail call i32 @wait_for_completion_timeout(ptr noundef %ctl_resp, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.12) #5
  %ce_count = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 36, i32 11
  %2 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ce_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp143.not = icmp eq i32 %3, 0
  br i1 %cmp143.not, label %if.then.if.end7_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.0144 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %4 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %htc, align 4
  %conv = trunc i32 %i.0144 to i16
  tail call void @ath11k_ce_per_engine_service(ptr noundef %5, i16 noundef zeroext %conv) #5
  %inc = add nuw i32 %i.0144, 1
  %6 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ce_count, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end7_crit_edge

for.body.if.end7_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end7:                                          ; preds = %for.body.if.end7_crit_edge, %if.then.if.end7_crit_edge
  %call4 = tail call i32 @wait_for_completion_timeout(ptr noundef %ctl_resp, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then10, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef -110) #5
  br label %cleanup

if.end11:                                         ; preds = %if.end7.if.end11_crit_edge, %entry.if.end11_crit_edge
  %control_resp_len = getelementptr inbounds %struct.ath11k_htc, ptr %htc, i32 0, i32 4
  %8 = ptrtoint ptr %control_resp_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %control_resp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp12 = icmp ult i32 %9, 8
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %9) #5
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %control_resp_buffer = getelementptr inbounds %struct.ath11k_htc, ptr %htc, i32 0, i32 3
  %10 = ptrtoint ptr %control_resp_buffer to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %control_resp_buffer, align 1
  %conv69 = and i32 %11, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv69)
  %cmp70.not = icmp eq i32 %conv69, 1
  br i1 %cmp70.not, label %if.end74, label %if.then72

if.then72:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %conv69) #5
  br label %cleanup

if.end74:                                         ; preds = %if.end16
  %size_ep = getelementptr inbounds %struct.ath11k_htc, ptr %htc, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %size_ep to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %size_ep, align 1
  %shr48 = lshr i32 %11, 16
  %total_transmit_credits = getelementptr inbounds %struct.ath11k_htc, ptr %htc, i32 0, i32 6
  %14 = ptrtoint ptr %total_transmit_credits to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr48, ptr %total_transmit_credits, align 4
  %conv76 = and i32 %13, 65535
  %target_credit_size = getelementptr inbounds %struct.ath11k_htc, ptr %htc, i32 0, i32 8
  %15 = ptrtoint ptr %target_credit_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv76, ptr %target_credit_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %16 = load i32, ptr @ath11k_debug_mask, align 4
  %and78 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %lor.lhs.false, label %if.end74.if.then82_crit_edge

if.end74.if.then82_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then82

lor.lhs.false:                                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_htc_wait_target, %if.then82)) #5
          to label %do.end87 [label %if.then82], !srcloc !128

if.then82:                                        ; preds = %lor.lhs.false, %if.end74.if.then82_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %total_transmit_credits to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %total_transmit_credits, align 4
  %19 = ptrtoint ptr %target_credit_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %target_credit_size, align 4
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.16, i32 noundef %18, i32 noundef %20) #5
  br label %do.end87

do.end87:                                         ; preds = %if.then82, %lor.lhs.false
  %21 = ptrtoint ptr %total_transmit_credits to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %total_transmit_credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp89 = icmp eq i32 %22, 0
  br i1 %cmp89, label %do.end87.if.then95_crit_edge, label %lor.lhs.false91

do.end87.if.then95_crit_edge:                     ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then95

lor.lhs.false91:                                  ; preds = %do.end87
  %23 = ptrtoint ptr %target_credit_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %target_credit_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp93 = icmp eq i32 %24, 0
  br i1 %cmp93, label %lor.lhs.false91.if.then95_crit_edge, label %if.end96

lor.lhs.false91.if.then95_crit_edge:              ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then95

if.then95:                                        ; preds = %lor.lhs.false91.if.then95_crit_edge, %do.end87.if.then95_crit_edge
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.17) #5
  br label %cleanup

if.end96:                                         ; preds = %lor.lhs.false91
  %supports_shadow_regs = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 36, i32 29
  %25 = ptrtoint ptr %supports_shadow_regs to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %supports_shadow_regs, align 2, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool98.not = icmp eq i8 %26, 0
  br i1 %tobool98.not, label %if.end96.if.end101_crit_edge, label %if.then99

if.end96.if.end101_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

if.then99:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %total_transmit_credits to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %total_transmit_credits, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %if.end96.if.end101_crit_edge
  %service_alloc_table.i = getelementptr inbounds %struct.ath11k_htc, ptr %htc, i32 0, i32 7
  %wmi_ep_count.i = getelementptr inbounds %struct.ath11k_htc, ptr %htc, i32 0, i32 9
  %28 = ptrtoint ptr %wmi_ep_count.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %wmi_ep_count.i, align 4
  %30 = add i8 %29, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %30)
  %31 = icmp ult i8 %30, -3
  br i1 %31, label %if.end101.cleanup_crit_edge, label %for.body.lr.ph.i

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end101
  %32 = ptrtoint ptr %total_transmit_credits to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %total_transmit_credits, align 4
  %conv.i = zext i8 %29 to i32
  %div.i = sdiv i32 %33, %conv.i
  %conv14.i = trunc i32 %div.i to i8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [3 x i32], ptr @__const.ath11k_htc_setup_target_buffer_assignments.svc_id, i32 0, i32 %i.03.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  %conv12.i = trunc i32 %35 to i16
  %arrayidx13.i = getelementptr %struct.ath11k_htc_svc_tx_credits, ptr %service_alloc_table.i, i32 %i.03.i
  %36 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv12.i, ptr %arrayidx13.i, align 2
  %credit_allocation.i = getelementptr %struct.ath11k_htc_svc_tx_credits, ptr %service_alloc_table.i, i32 %i.03.i, i32 1
  %37 = ptrtoint ptr %credit_allocation.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv14.i, ptr %credit_allocation.i, align 2
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %38 = ptrtoint ptr %wmi_ep_count.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %wmi_ep_count.i, align 4
  %conv9.i = zext i8 %39 to i32
  %cmp10.i = icmp ult i32 %inc.i, %conv9.i
  br i1 %cmp10.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.end101.cleanup_crit_edge, %if.then95, %if.then72, %if.then14, %if.then10
  %retval.0 = phi i32 [ -110, %if.then10 ], [ -70, %if.then14 ], [ -70, %if.then72 ], [ -70, %if.then95 ], [ 0, %if.end101.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_ce_per_engine_service(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_htc_connect_service(ptr noundef %htc, ptr nocapture noundef readonly %conn_req, ptr nocapture noundef %conn_resp) local_unnamed_addr #0 align 64 {
entry:
  %resp_msg_dummy = alloca %struct.ath11k_htc_conn_svc_resp, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htc, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %resp_msg_dummy) #5
  %2 = ptrtoint ptr %resp_msg_dummy to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %resp_msg_dummy, align 4, !annotation !130
  %3 = getelementptr inbounds %struct.ath11k_htc_conn_svc_resp, ptr %resp_msg_dummy, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !130
  %5 = getelementptr inbounds %struct.ath11k_htc_conn_svc_resp, ptr %resp_msg_dummy, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !130
  %7 = ptrtoint ptr %conn_req to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %conn_req, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %cmp = icmp eq i16 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = call ptr @memset(ptr %resp_msg_dummy, i32 0, i32 12)
  br label %setup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 7, i32 0
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %8)
  %cmp5.i = icmp eq i16 %11, %8
  br i1 %cmp5.i, label %if.then.i, label %if.end.for.inc.i_crit_edge

if.end.for.inc.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %credit_allocation.i = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 7, i32 0, i32 1
  %12 = ptrtoint ptr %credit_allocation.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %credit_allocation.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %if.end.for.inc.i_crit_edge
  %allocation.1.i = phi i8 [ %13, %if.then.i ], [ 0, %if.end.for.inc.i_crit_edge ]
  %arrayidx.1.i = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %8)
  %cmp5.1.i = icmp eq i16 %15, %8
  br i1 %cmp5.1.i, label %if.then.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %credit_allocation.1.i = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 7, i32 1, i32 1
  %16 = ptrtoint ptr %credit_allocation.1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %credit_allocation.1.i, align 2
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %allocation.1.1.i = phi i8 [ %17, %if.then.1.i ], [ %allocation.1.i, %for.inc.i.for.inc.1.i_crit_edge ]
  %arrayidx.2.i = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 7, i32 2
  %18 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %8)
  %cmp5.2.i = icmp eq i16 %19, %8
  br i1 %cmp5.2.i, label %if.then.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %credit_allocation.2.i = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 7, i32 2, i32 1
  %20 = ptrtoint ptr %credit_allocation.2.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %credit_allocation.2.i, align 2
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %allocation.1.2.i = phi i8 [ %21, %if.then.2.i ], [ %allocation.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %arrayidx.3.i = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 7, i32 3
  %22 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %8)
  %cmp5.3.i = icmp eq i16 %23, %8
  br i1 %cmp5.3.i, label %if.then.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %credit_allocation.3.i = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 7, i32 3, i32 1
  %24 = ptrtoint ptr %credit_allocation.3.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %credit_allocation.3.i, align 2
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %allocation.1.3.i = phi i8 [ %25, %if.then.3.i ], [ %allocation.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ]
  %arrayidx.4.i = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 7, i32 4
  %26 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %8)
  %cmp5.4.i = icmp eq i16 %27, %8
  br i1 %cmp5.4.i, label %if.then.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  %credit_allocation.4.i = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 7, i32 4, i32 1
  %28 = ptrtoint ptr %credit_allocation.4.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %credit_allocation.4.i, align 2
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %allocation.1.4.i = phi i8 [ %29, %if.then.4.i ], [ %allocation.1.3.i, %for.inc.3.i.for.inc.4.i_crit_edge ]
  %arrayidx.5.i = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 7, i32 5
  %30 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.5.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %8)
  %cmp5.5.i = icmp eq i16 %31, %8
  br i1 %cmp5.5.i, label %if.then.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5.i

if.then.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #7
  %credit_allocation.5.i = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 7, i32 5, i32 1
  %32 = ptrtoint ptr %credit_allocation.5.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %credit_allocation.5.i, align 2
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %allocation.1.5.i = phi i8 [ %33, %if.then.5.i ], [ %allocation.1.4.i, %for.inc.4.i.for.inc.5.i_crit_edge ]
  %arrayidx.6.i = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 7, i32 6
  %34 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.6.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %8)
  %cmp5.6.i = icmp eq i16 %35, %8
  br i1 %cmp5.6.i, label %if.then.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6.i

if.then.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #7
  %credit_allocation.6.i = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 7, i32 6, i32 1
  %36 = ptrtoint ptr %credit_allocation.6.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %credit_allocation.6.i, align 2
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.then.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %allocation.1.6.i = phi i8 [ %37, %if.then.6.i ], [ %allocation.1.5.i, %for.inc.5.i.for.inc.6.i_crit_edge ]
  %arrayidx.7.i = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 7, i32 7
  %38 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx.7.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %8)
  %cmp5.7.i = icmp eq i16 %39, %8
  br i1 %cmp5.7.i, label %if.then.7.i, label %for.inc.6.i.ath11k_htc_get_credit_allocation.exit_crit_edge

for.inc.6.i.ath11k_htc_get_credit_allocation.exit_crit_edge: ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath11k_htc_get_credit_allocation.exit

if.then.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #7
  %credit_allocation.7.i = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 7, i32 7, i32 1
  %40 = ptrtoint ptr %credit_allocation.7.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %credit_allocation.7.i, align 2
  br label %ath11k_htc_get_credit_allocation.exit

ath11k_htc_get_credit_allocation.exit:            ; preds = %if.then.7.i, %for.inc.6.i.ath11k_htc_get_credit_allocation.exit_crit_edge
  %allocation.1.7.i = phi i8 [ %41, %if.then.7.i ], [ %allocation.1.6.i, %for.inc.6.i.ath11k_htc_get_credit_allocation.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %allocation.1.7.i)
  %tobool.not = icmp eq i8 %allocation.1.7.i, 0
  br i1 %tobool.not, label %do.body, label %ath11k_htc_get_credit_allocation.exit.if.end14_crit_edge

ath11k_htc_get_credit_allocation.exit.if.end14_crit_edge: ; preds = %ath11k_htc_get_credit_allocation.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

do.body:                                          ; preds = %ath11k_htc_get_credit_allocation.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %42 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %42, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %do.body.if.then9_crit_edge

do.body.if.then9_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_htc_connect_service, %if.then9)) #5
          to label %if.end14 [label %if.then9], !srcloc !128

if.then9:                                         ; preds = %lor.lhs.false, %do.body.if.then9_crit_edge
  %43 = ptrtoint ptr %conn_req to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %conn_req, align 4
  %45 = zext i16 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.57)
  switch i16 %44, label %sw.epilog.i [
    i16 0, label %if.then9.htc_service_name.exit_crit_edge
    i16 1, label %sw.bb1.i
    i16 256, label %sw.bb2.i
    i16 257, label %sw.bb3.i
    i16 258, label %sw.bb4.i
    i16 259, label %sw.bb5.i
    i16 260, label %sw.bb6.i
    i16 261, label %sw.bb7.i
    i16 262, label %sw.bb8.i
    i16 512, label %sw.bb9.i
    i16 513, label %sw.bb10.i
    i16 768, label %sw.bb11.i
    i16 -512, label %sw.bb12.i
    i16 1280, label %sw.bb13.i
    i16 1536, label %sw.bb14.i
  ]

if.then9.htc_service_name.exit_crit_edge:         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit

sw.bb1.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit

sw.bb2.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit

sw.bb3.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit

sw.bb4.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit

sw.bb5.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit

sw.bb6.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit

sw.bb7.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit

sw.bb8.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit

sw.bb9.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit

sw.bb10.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit

sw.bb11.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit

sw.bb12.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit

sw.bb13.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit

sw.bb14.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit

sw.epilog.i:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit

htc_service_name.exit:                            ; preds = %sw.epilog.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then9.htc_service_name.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.52, %sw.epilog.i ], [ @.str.51, %sw.bb14.i ], [ @.str.50, %sw.bb13.i ], [ @.str.49, %sw.bb12.i ], [ @.str.48, %sw.bb11.i ], [ @.str.47, %sw.bb10.i ], [ @.str.46, %sw.bb9.i ], [ @.str.45, %sw.bb8.i ], [ @.str.44, %sw.bb7.i ], [ @.str.43, %sw.bb6.i ], [ @.str.42, %sw.bb5.i ], [ @.str.41, %sw.bb4.i ], [ @.str.40, %sw.bb3.i ], [ @.str.39, %sw.bb2.i ], [ @.str.38, %sw.bb1.i ], [ @.str.37, %if.then9.htc_service_name.exit_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.18, ptr noundef nonnull %retval.0.i) #5
  br label %if.end14

if.end14:                                         ; preds = %htc_service_name.exit, %lor.lhs.false, %ath11k_htc_get_credit_allocation.exit.if.end14_crit_edge
  %46 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %htc, align 4
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 264, i32 noundef 2592) #5
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.then18, label %if.end.i

if.end.i:                                         ; preds = %if.end14
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %48 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %50 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %51, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %52 = ptrtoint ptr %add.ptr.i.i to i32
  %and.i = and i32 %52, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end.i.if.end31.i_crit_edge, label %land.rhs.i

if.end.i.if.end31.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b56.i = load i1, ptr @ath11k_htc_build_tx_ctrl_skb.__already_done, align 1
  br i1 %.b56.i, label %land.rhs.i.if.end31.i_crit_edge, label %if.then9.i, !prof !129

land.rhs.i.if.end31.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i

if.then9.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ath11k_htc_build_tx_ctrl_skb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 44, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then9.i, %land.rhs.i.if.end31.i_crit_edge, %if.end.i.if.end31.i_crit_edge
  %53 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 8
  %54 = call ptr @memset(ptr %53, i32 0, i32 18)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %55 = load i32, ptr @ath11k_debug_mask, align 4
  %and41.i = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %lor.lhs.false.i, label %if.end31.i.if.then44.i_crit_edge

if.end31.i.if.then44.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then44.i

lor.lhs.false.i:                                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_htc_connect_service, %if.then44.i)) #5
          to label %if.end19 [label %if.then44.i], !srcloc !128

if.then44.i:                                      ; preds = %lor.lhs.false.i, %if.end31.i.if.then44.i_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %47, i32 noundef 4, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.ath11k_htc_build_tx_ctrl_skb, ptr noundef nonnull %call.i.i.i) #5
  br label %if.end19

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.19) #5
  br label %cleanup

if.end19:                                         ; preds = %if.then44.i, %lor.lhs.false.i
  %call20 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 8) #5
  %56 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 8)
  store i64 0, ptr %57, align 1
  %59 = load ptr, ptr %data.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 2, ptr %59, align 1
  %conv58 = zext i8 %allocation.1.7.i to i16
  %shl = shl nuw i16 %conv58, 8
  %61 = ptrtoint ptr %conn_req to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %conn_req, align 4
  %63 = zext i16 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.58)
  switch i16 %62, label %if.then76 [
    i16 256, label %if.end19.if.end80_crit_edge
    i16 261, label %if.end19.if.end80_crit_edge549
    i16 262, label %if.end19.if.end80_crit_edge550
  ]

if.end19.if.end80_crit_edge550:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.end19.if.end80_crit_edge549:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.end19.if.end80_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.then76:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %64 = or i16 %shl, 8
  br label %if.end80

if.end80:                                         ; preds = %if.then76, %if.end19.if.end80_crit_edge, %if.end19.if.end80_crit_edge549, %if.end19.if.end80_crit_edge550
  %flags.0 = phi i16 [ %shl, %if.end19.if.end80_crit_edge ], [ %64, %if.then76 ], [ %shl, %if.end19.if.end80_crit_edge549 ], [ %shl, %if.end19.if.end80_crit_edge550 ]
  %disable_credit_flow_ctrl.0.off0 = phi i1 [ false, %if.end19.if.end80_crit_edge ], [ true, %if.then76 ], [ false, %if.end19.if.end80_crit_edge549 ], [ false, %if.end19.if.end80_crit_edge550 ]
  %credit_flow = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 36, i32 40
  %65 = ptrtoint ptr %credit_flow to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %credit_flow, align 2, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool81.not = icmp eq i8 %66, 0
  %67 = or i16 %flags.0, 8
  %spec.select = select i1 %tobool81.not, i16 %67, i16 %flags.0
  %spec.select518 = or i1 %disable_credit_flow_ctrl.0.off0, %tobool81.not
  %conv110 = zext i16 %spec.select to i32
  %flags_len = getelementptr inbounds %struct.ath11k_htc_conn_svc, ptr %59, i32 0, i32 1
  %68 = ptrtoint ptr %flags_len to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %conv110, ptr %flags_len, align 1
  %69 = ptrtoint ptr %conn_req to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %conn_req, align 4
  %conv139 = zext i16 %70 to i32
  %shl140 = shl nuw i32 %conv139, 16
  %or143 = or i32 %shl140, 2
  %71 = ptrtoint ptr %59 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %or143, ptr %59, align 1
  %ctl_resp = getelementptr inbounds %struct.ath11k_htc, ptr %htc, i32 0, i32 5
  %72 = ptrtoint ptr %ctl_resp to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %ctl_resp, align 4
  %call144 = tail call i32 @ath11k_htc_send(ptr noundef %htc, i32 noundef 0, ptr noundef nonnull %call.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end147, label %if.then146

if.then146:                                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #5
  br label %cleanup

if.end147:                                        ; preds = %if.end80
  %call149 = tail call i32 @wait_for_completion_timeout(ptr noundef %ctl_resp, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.then151, label %if.end152

if.then151:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %1, ptr noundef nonnull @.str.20) #5
  br label %cleanup

if.end152:                                        ; preds = %if.end147
  %control_resp_buffer = getelementptr inbounds %struct.ath11k_htc, ptr %htc, i32 0, i32 3
  %73 = ptrtoint ptr %control_resp_buffer to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %control_resp_buffer, align 1
  %shr190 = lshr i32 %74, 16
  %conv192 = and i32 %74, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv192)
  %cmp193.not = icmp eq i32 %conv192, 3
  br i1 %cmp193.not, label %lor.lhs.false195, label %if.end152.if.then198_crit_edge

if.end152.if.then198_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then198

lor.lhs.false195:                                 ; preds = %if.end152
  %control_resp_len = getelementptr inbounds %struct.ath11k_htc, ptr %htc, i32 0, i32 4
  %75 = ptrtoint ptr %control_resp_len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %control_resp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %76)
  %cmp196 = icmp ult i32 %76, 12
  br i1 %cmp196, label %lor.lhs.false195.if.then198_crit_edge, label %do.body201

lor.lhs.false195.if.then198_crit_edge:            ; preds = %lor.lhs.false195
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then198

if.then198:                                       ; preds = %lor.lhs.false195.if.then198_crit_edge, %if.end152.if.then198_crit_edge
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %conv192) #5
  br label %cleanup

do.body201:                                       ; preds = %lor.lhs.false195
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %77 = load i32, ptr @ath11k_debug_mask, align 4
  %and202 = and i32 %77, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and202)
  %tobool203.not = icmp eq i32 %and202, 0
  br i1 %tobool203.not, label %lor.lhs.false204, label %do.body201.if.then207_crit_edge

do.body201.if.then207_crit_edge:                  ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then207

lor.lhs.false204:                                 ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_htc_connect_service, %if.then207)) #5
          to label %do.end265 [label %if.then207], !srcloc !128

if.then207:                                       ; preds = %lor.lhs.false204, %do.body201.if.then207_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  %call209 = tail call fastcc ptr @htc_service_name(i32 noundef %shr190)
  %flags_len226 = getelementptr inbounds %struct.ath11k_htc, ptr %htc, i32 0, i32 3, i32 4
  %78 = ptrtoint ptr %flags_len226 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %flags_len226, align 1
  %and227 = and i32 %79, 255
  %and246 = lshr i32 %79, 8
  %shr247 = and i32 %and246, 255
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.22, ptr noundef nonnull %call209, i32 noundef %and227, i32 noundef %shr247) #5
  br label %do.end265

do.end265:                                        ; preds = %if.then207, %lor.lhs.false204
  %flags_len267 = getelementptr inbounds %struct.ath11k_htc, ptr %htc, i32 0, i32 3, i32 4
  %80 = ptrtoint ptr %flags_len267 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %flags_len267, align 1
  %conv270 = trunc i32 %81 to i8
  %connect_resp_code = getelementptr inbounds %struct.ath11k_htc_svc_conn_resp, ptr %conn_resp, i32 0, i32 4
  %82 = ptrtoint ptr %connect_resp_code to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv270, ptr %connect_resp_code, align 4
  %conv272 = and i32 %81, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv272)
  %cmp273.not = icmp eq i32 %conv272, 0
  br i1 %cmp273.not, label %do.end295, label %if.then275

if.then275:                                       ; preds = %do.end265
  call void @__sanitizer_cov_trace_pc() #7
  %call277 = tail call fastcc ptr @htc_service_name(i32 noundef %shr190)
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull %call277, i32 noundef %conv272) #5
  br label %cleanup

do.end295:                                        ; preds = %do.end265
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %flags_len267 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %flags_len267, align 1
  %and298 = lshr i32 %84, 8
  %shr299 = and i32 %and298, 255
  %phi.cast = zext i8 %allocation.1.7.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %84)
  %phi.cmp = icmp ult i32 %84, 65536
  br label %setup

setup:                                            ; preds = %do.end295, %if.then
  %tx_alloc.0 = phi i32 [ 0, %if.then ], [ %phi.cast, %do.end295 ]
  %disable_credit_flow_ctrl.2.off0 = phi i1 [ true, %if.then ], [ %spec.select518, %do.end295 ]
  %max_msg_size.0 = phi i1 [ false, %if.then ], [ %phi.cmp, %do.end295 ]
  %assigned_eid.0 = phi i32 [ 0, %if.then ], [ %shr299, %do.end295 ]
  %resp_msg.0 = phi ptr [ %resp_msg_dummy, %if.then ], [ %control_resp_buffer, %do.end295 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %assigned_eid.0)
  %cmp319 = icmp ugt i32 %assigned_eid.0, 8
  %or.cond = select i1 %cmp319, i1 true, i1 %max_msg_size.0
  br i1 %or.cond, label %setup.cleanup_crit_edge, label %if.end326

setup.cleanup_crit_edge:                          ; preds = %setup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end326:                                        ; preds = %setup
  %eid = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 1, i32 %assigned_eid.0, i32 1
  %85 = ptrtoint ptr %eid to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %assigned_eid.0, ptr %eid, align 4
  %service_id327 = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 1, i32 %assigned_eid.0, i32 2
  %86 = ptrtoint ptr %service_id327 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %service_id327, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp328.not = icmp eq i32 %87, 0
  br i1 %cmp328.not, label %if.end331, label %if.end326.cleanup_crit_edge

if.end326.cleanup_crit_edge:                      ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end331:                                        ; preds = %if.end326
  %eid332 = getelementptr inbounds %struct.ath11k_htc_svc_conn_resp, ptr %conn_resp, i32 0, i32 2
  %88 = ptrtoint ptr %eid332 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %assigned_eid.0, ptr %eid332, align 4
  %flags_len349 = getelementptr inbounds %struct.ath11k_htc_conn_svc_resp, ptr %resp_msg.0, i32 0, i32 1
  %89 = ptrtoint ptr %flags_len349 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %flags_len349, align 1
  %shr351 = lshr i32 %90, 16
  %max_msg_len = getelementptr inbounds %struct.ath11k_htc_svc_conn_resp, ptr %conn_resp, i32 0, i32 3
  %91 = ptrtoint ptr %max_msg_len to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %shr351, ptr %max_msg_len, align 4
  %92 = ptrtoint ptr %conn_req to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %conn_req, align 4
  %conv353 = zext i16 %93 to i32
  %94 = ptrtoint ptr %service_id327 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %conv353, ptr %service_id327, align 4
  %max_send_queue_depth = getelementptr inbounds %struct.ath11k_htc_svc_conn_req, ptr %conn_req, i32 0, i32 2
  %95 = ptrtoint ptr %max_send_queue_depth to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %max_send_queue_depth, align 4
  %max_tx_queue_depth = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 1, i32 %assigned_eid.0, i32 4
  %97 = ptrtoint ptr %max_tx_queue_depth to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %max_tx_queue_depth, align 4
  %98 = load i32, ptr %flags_len349, align 1
  %shr373 = lshr i32 %98, 16
  %max_ep_message_len = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 1, i32 %assigned_eid.0, i32 5
  %99 = ptrtoint ptr %max_ep_message_len to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %shr373, ptr %max_ep_message_len, align 4
  %tx_credits = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 1, i32 %assigned_eid.0, i32 9
  %100 = ptrtoint ptr %tx_credits to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %tx_alloc.0, ptr %tx_credits, align 4
  %ep_ops = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 1, i32 %assigned_eid.0, i32 3
  %ep_ops375 = getelementptr inbounds %struct.ath11k_htc_svc_conn_req, ptr %conn_req, i32 0, i32 1
  %101 = call ptr @memcpy(ptr %ep_ops, ptr %ep_ops375, i32 12)
  %102 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %htc, align 4
  %ul_pipe_id = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 1, i32 %assigned_eid.0, i32 6
  %dl_pipe_id = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 1, i32 %assigned_eid.0, i32 7
  %ops.i = getelementptr inbounds %struct.ath11k_base, ptr %103, i32 0, i32 12, i32 1
  %104 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ops.i, align 4
  %map_service_to_pipe.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %105, i32 0, i32 10
  %106 = ptrtoint ptr %map_service_to_pipe.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %map_service_to_pipe.i, align 4
  %call.i = tail call i32 %107(ptr noundef %103, i16 noundef zeroext %93, ptr noundef %ul_pipe_id, ptr noundef %dl_pipe_id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool380.not = icmp eq i32 %call.i, 0
  br i1 %tobool380.not, label %do.body383, label %if.end331.cleanup_crit_edge

if.end331.cleanup_crit_edge:                      ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body383:                                       ; preds = %if.end331
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %108 = load i32, ptr @ath11k_debug_mask, align 4
  %and384 = and i32 %108, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and384)
  %tobool385.not = icmp eq i32 %and384, 0
  br i1 %tobool385.not, label %lor.lhs.false386, label %do.body383.if.then389_crit_edge

do.body383.if.then389_crit_edge:                  ; preds = %do.body383
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then389

lor.lhs.false386:                                 ; preds = %do.body383
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_htc_connect_service, %if.then389)) #5
          to label %do.end399 [label %if.then389], !srcloc !128

if.then389:                                       ; preds = %lor.lhs.false386, %do.body383.if.then389_crit_edge
  %109 = ptrtoint ptr %service_id327 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %service_id327, align 4
  %111 = zext i32 %110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %110, label %sw.epilog.i539 [
    i32 0, label %if.then389.htc_service_name.exit541_crit_edge
    i32 1, label %sw.bb1.i525
    i32 256, label %sw.bb2.i526
    i32 257, label %sw.bb3.i527
    i32 258, label %sw.bb4.i528
    i32 259, label %sw.bb5.i529
    i32 260, label %sw.bb6.i530
    i32 261, label %sw.bb7.i531
    i32 262, label %sw.bb8.i532
    i32 512, label %sw.bb9.i533
    i32 513, label %sw.bb10.i534
    i32 768, label %sw.bb11.i535
    i32 65024, label %sw.bb12.i536
    i32 1280, label %sw.bb13.i537
    i32 1536, label %sw.bb14.i538
  ]

if.then389.htc_service_name.exit541_crit_edge:    ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit541

sw.bb1.i525:                                      ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit541

sw.bb2.i526:                                      ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit541

sw.bb3.i527:                                      ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit541

sw.bb4.i528:                                      ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit541

sw.bb5.i529:                                      ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit541

sw.bb6.i530:                                      ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit541

sw.bb7.i531:                                      ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit541

sw.bb8.i532:                                      ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit541

sw.bb9.i533:                                      ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit541

sw.bb10.i534:                                     ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit541

sw.bb11.i535:                                     ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit541

sw.bb12.i536:                                     ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit541

sw.bb13.i537:                                     ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit541

sw.bb14.i538:                                     ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit541

sw.epilog.i539:                                   ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #7
  br label %htc_service_name.exit541

htc_service_name.exit541:                         ; preds = %sw.epilog.i539, %sw.bb14.i538, %sw.bb13.i537, %sw.bb12.i536, %sw.bb11.i535, %sw.bb10.i534, %sw.bb9.i533, %sw.bb8.i532, %sw.bb7.i531, %sw.bb6.i530, %sw.bb5.i529, %sw.bb4.i528, %sw.bb3.i527, %sw.bb2.i526, %sw.bb1.i525, %if.then389.htc_service_name.exit541_crit_edge
  %retval.0.i540 = phi ptr [ @.str.52, %sw.epilog.i539 ], [ @.str.51, %sw.bb14.i538 ], [ @.str.50, %sw.bb13.i537 ], [ @.str.49, %sw.bb12.i536 ], [ @.str.48, %sw.bb11.i535 ], [ @.str.47, %sw.bb10.i534 ], [ @.str.46, %sw.bb9.i533 ], [ @.str.45, %sw.bb8.i532 ], [ @.str.44, %sw.bb7.i531 ], [ @.str.43, %sw.bb6.i530 ], [ @.str.42, %sw.bb5.i529 ], [ @.str.41, %sw.bb4.i528 ], [ @.str.40, %sw.bb3.i527 ], [ @.str.39, %sw.bb2.i526 ], [ @.str.38, %sw.bb1.i525 ], [ @.str.37, %if.then389.htc_service_name.exit541_crit_edge ]
  %112 = ptrtoint ptr %ul_pipe_id to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %ul_pipe_id, align 4
  %conv393 = zext i8 %113 to i32
  %114 = ptrtoint ptr %dl_pipe_id to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %dl_pipe_id, align 1
  %conv395 = zext i8 %115 to i32
  %116 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %eid, align 4
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.24, ptr noundef nonnull %retval.0.i540, i32 noundef %conv393, i32 noundef %conv395, i32 noundef %117) #5
  br label %do.end399

do.end399:                                        ; preds = %htc_service_name.exit541, %lor.lhs.false386
  br i1 %disable_credit_flow_ctrl.2.off0, label %land.lhs.true, label %do.end399.cleanup_crit_edge

do.end399.cleanup_crit_edge:                      ; preds = %do.end399
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end399
  %tx_credit_flow_enabled = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 1, i32 %assigned_eid.0, i32 10
  %118 = ptrtoint ptr %tx_credit_flow_enabled to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %tx_credit_flow_enabled, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool402.not = icmp eq i8 %119, 0
  br i1 %tobool402.not, label %land.lhs.true.cleanup_crit_edge, label %if.then404

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then404:                                       ; preds = %land.lhs.true
  %120 = ptrtoint ptr %tx_credit_flow_enabled to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %tx_credit_flow_enabled, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %121 = load i32, ptr @ath11k_debug_mask, align 4
  %and407 = and i32 %121, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and407)
  %tobool408.not = icmp eq i32 %and407, 0
  br i1 %tobool408.not, label %lor.lhs.false409, label %if.then404.if.then412_crit_edge

if.then404.if.then412_crit_edge:                  ; preds = %if.then404
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then412

lor.lhs.false409:                                 ; preds = %if.then404
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_htc_connect_service, %if.then412)) #5
          to label %cleanup [label %if.then412], !srcloc !128

if.then412:                                       ; preds = %lor.lhs.false409, %if.then404.if.then412_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  %122 = ptrtoint ptr %service_id327 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %service_id327, align 4
  %call414 = tail call fastcc ptr @htc_service_name(i32 noundef %123)
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.25, ptr noundef nonnull %call414, i32 noundef %assigned_eid.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then412, %lor.lhs.false409, %land.lhs.true.cleanup_crit_edge, %do.end399.cleanup_crit_edge, %if.end331.cleanup_crit_edge, %if.end326.cleanup_crit_edge, %setup.cleanup_crit_edge, %if.then275, %if.then198, %if.then151, %if.then146, %if.then18
  %retval.0 = phi i32 [ %call144, %if.then146 ], [ -71, %if.then198 ], [ -71, %if.then275 ], [ -110, %if.then151 ], [ -12, %if.then18 ], [ -71, %setup.cleanup_crit_edge ], [ -71, %if.end326.cleanup_crit_edge ], [ %call.i, %if.end331.cleanup_crit_edge ], [ 0, %if.then412 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %do.end399.cleanup_crit_edge ], [ 0, %lor.lhs.false409 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %resp_msg_dummy) #5
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @htc_service_name(i32 noundef %id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %id, label %sw.epilog [
    i32 0, label %entry.return_crit_edge
    i32 1, label %sw.bb1
    i32 256, label %sw.bb2
    i32 257, label %sw.bb3
    i32 258, label %sw.bb4
    i32 259, label %sw.bb5
    i32 260, label %sw.bb6
    i32 261, label %sw.bb7
    i32 262, label %sw.bb8
    i32 512, label %sw.bb9
    i32 513, label %sw.bb10
    i32 768, label %sw.bb11
    i32 65024, label %sw.bb12
    i32 1280, label %sw.bb13
    i32 1536, label %sw.bb14
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str.52, %sw.epilog ], [ @.str.51, %sw.bb14 ], [ @.str.50, %sw.bb13 ], [ @.str.49, %sw.bb12 ], [ @.str.48, %sw.bb11 ], [ @.str.47, %sw.bb10 ], [ @.str.46, %sw.bb9 ], [ @.str.45, %sw.bb8 ], [ @.str.44, %sw.bb7 ], [ @.str.43, %sw.bb6 ], [ @.str.42, %sw.bb5 ], [ @.str.41, %sw.bb4 ], [ @.str.40, %sw.bb3 ], [ @.str.39, %sw.bb2 ], [ @.str.38, %sw.bb1 ], [ @.str.37, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_htc_start(ptr noundef %htc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htc, align 4
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 264, i32 noundef 2592) #5
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %5, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  %and.i = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end.i.if.end31.i_crit_edge, label %land.rhs.i

if.end.i.if.end31.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b56.i = load i1, ptr @ath11k_htc_build_tx_ctrl_skb.__already_done, align 1
  br i1 %.b56.i, label %land.rhs.i.if.end31.i_crit_edge, label %if.then9.i, !prof !129

land.rhs.i.if.end31.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i

if.then9.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ath11k_htc_build_tx_ctrl_skb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 44, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then9.i, %land.rhs.i.if.end31.i_crit_edge, %if.end.i.if.end31.i_crit_edge
  %7 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 18)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %9 = load i32, ptr @ath11k_debug_mask, align 4
  %and41.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %lor.lhs.false.i, label %if.end31.i.if.then44.i_crit_edge

if.end31.i.if.then44.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then44.i

lor.lhs.false.i:                                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_htc_start, %if.then44.i)) #5
          to label %if.end [label %if.then44.i], !srcloc !128

if.then44.i:                                      ; preds = %lor.lhs.false.i, %if.end31.i.if.then44.i_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.ath11k_htc_build_tx_ctrl_skb, ptr noundef nonnull %call.i.i.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then44.i, %lor.lhs.false.i
  %call3 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 12) #5
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %14 = call ptr @memset(ptr %11, i32 0, i32 %13)
  %15 = load ptr, ptr %data.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 5, ptr %15, align 1
  %credit_flow = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 36, i32 40
  %17 = ptrtoint ptr %credit_flow to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %credit_flow, align 2, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool17.not = icmp eq i8 %18, 0
  br i1 %tobool17.not, label %if.else, label %do.body19

do.body19:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %19 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %lor.lhs.false, label %do.body19.if.then22_crit_edge

do.body19.if.then22_crit_edge:                    ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22

lor.lhs.false:                                    ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_htc_start, %if.then22)) #5
          to label %if.end26 [label %if.then22], !srcloc !128

if.then22:                                        ; preds = %lor.lhs.false, %do.body19.if.then22_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.26) #5
  br label %if.end26

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr inbounds %struct.ath11k_htc_setup_complete_extended, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %flags, align 1
  %or = or i32 %21, 2
  store i32 %or, ptr %flags, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then22, %lor.lhs.false
  %call27 = tail call i32 @ath11k_htc_send(ptr noundef %htc, i32 noundef 0, ptr noundef nonnull %call.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %if.then29

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end26.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.then29 ], [ 0, %if.end26.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_htc_init(ptr noundef %ab) local_unnamed_addr #0 align 64 {
entry:
  %conn_req = alloca %struct.ath11k_htc_svc_conn_req, align 4
  %conn_resp = alloca %struct.ath11k_htc_svc_conn_resp, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %htc1 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %conn_req) #5
  %0 = call ptr @memset(ptr %conn_req, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %conn_resp) #5
  %1 = call ptr @memset(ptr %conn_resp, i32 255, i32 16)
  %tx_lock = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.27, ptr noundef nonnull @ath11k_htc_init.__key, i16 noundef signext 3) #5
  %arrayidx.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1
  %service_id.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %service_id.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %service_id.i, align 4
  %max_ep_message_len.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 0, i32 5
  %3 = ptrtoint ptr %max_ep_message_len.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %max_ep_message_len.i, align 4
  %max_tx_queue_depth.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 0, i32 4
  %4 = ptrtoint ptr %max_tx_queue_depth.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %max_tx_queue_depth.i, align 4
  %eid.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %eid.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %eid.i, align 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %htc1, ptr %arrayidx.i, align 4
  %tx_credit_flow_enabled.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 0, i32 10
  %7 = ptrtoint ptr %tx_credit_flow_enabled.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %tx_credit_flow_enabled.i, align 4
  %arrayidx.1.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 1
  %service_id.1.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 1, i32 2
  %8 = ptrtoint ptr %service_id.1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %service_id.1.i, align 4
  %max_ep_message_len.1.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 1, i32 5
  %9 = ptrtoint ptr %max_ep_message_len.1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %max_ep_message_len.1.i, align 4
  %max_tx_queue_depth.1.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 1, i32 4
  %10 = ptrtoint ptr %max_tx_queue_depth.1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %max_tx_queue_depth.1.i, align 4
  %eid.1.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 1, i32 1
  %11 = ptrtoint ptr %eid.1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %eid.1.i, align 4
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %htc1, ptr %arrayidx.1.i, align 4
  %tx_credit_flow_enabled.1.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 1, i32 10
  %13 = ptrtoint ptr %tx_credit_flow_enabled.1.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %tx_credit_flow_enabled.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 2
  %service_id.2.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 2, i32 2
  %14 = ptrtoint ptr %service_id.2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %service_id.2.i, align 4
  %max_ep_message_len.2.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 2, i32 5
  %15 = ptrtoint ptr %max_ep_message_len.2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %max_ep_message_len.2.i, align 4
  %max_tx_queue_depth.2.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 2, i32 4
  %16 = ptrtoint ptr %max_tx_queue_depth.2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %max_tx_queue_depth.2.i, align 4
  %eid.2.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 2, i32 1
  %17 = ptrtoint ptr %eid.2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %eid.2.i, align 4
  %18 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %htc1, ptr %arrayidx.2.i, align 4
  %tx_credit_flow_enabled.2.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 2, i32 10
  %19 = ptrtoint ptr %tx_credit_flow_enabled.2.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %tx_credit_flow_enabled.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 3
  %service_id.3.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 3, i32 2
  %20 = ptrtoint ptr %service_id.3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %service_id.3.i, align 4
  %max_ep_message_len.3.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 3, i32 5
  %21 = ptrtoint ptr %max_ep_message_len.3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %max_ep_message_len.3.i, align 4
  %max_tx_queue_depth.3.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 3, i32 4
  %22 = ptrtoint ptr %max_tx_queue_depth.3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %max_tx_queue_depth.3.i, align 4
  %eid.3.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 3, i32 1
  %23 = ptrtoint ptr %eid.3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %eid.3.i, align 4
  %24 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %htc1, ptr %arrayidx.3.i, align 4
  %tx_credit_flow_enabled.3.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 3, i32 10
  %25 = ptrtoint ptr %tx_credit_flow_enabled.3.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %tx_credit_flow_enabled.3.i, align 4
  %arrayidx.4.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 4
  %service_id.4.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 4, i32 2
  %26 = ptrtoint ptr %service_id.4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %service_id.4.i, align 4
  %max_ep_message_len.4.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 4, i32 5
  %27 = ptrtoint ptr %max_ep_message_len.4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %max_ep_message_len.4.i, align 4
  %max_tx_queue_depth.4.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 4, i32 4
  %28 = ptrtoint ptr %max_tx_queue_depth.4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %max_tx_queue_depth.4.i, align 4
  %eid.4.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 4, i32 1
  %29 = ptrtoint ptr %eid.4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %eid.4.i, align 4
  %30 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %htc1, ptr %arrayidx.4.i, align 4
  %tx_credit_flow_enabled.4.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 4, i32 10
  %31 = ptrtoint ptr %tx_credit_flow_enabled.4.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %tx_credit_flow_enabled.4.i, align 4
  %arrayidx.5.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 5
  %service_id.5.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 5, i32 2
  %32 = ptrtoint ptr %service_id.5.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %service_id.5.i, align 4
  %max_ep_message_len.5.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 5, i32 5
  %33 = ptrtoint ptr %max_ep_message_len.5.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %max_ep_message_len.5.i, align 4
  %max_tx_queue_depth.5.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 5, i32 4
  %34 = ptrtoint ptr %max_tx_queue_depth.5.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %max_tx_queue_depth.5.i, align 4
  %eid.5.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 5, i32 1
  %35 = ptrtoint ptr %eid.5.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 5, ptr %eid.5.i, align 4
  %36 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %htc1, ptr %arrayidx.5.i, align 4
  %tx_credit_flow_enabled.5.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 5, i32 10
  %37 = ptrtoint ptr %tx_credit_flow_enabled.5.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %tx_credit_flow_enabled.5.i, align 4
  %arrayidx.6.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 6
  %service_id.6.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 6, i32 2
  %38 = ptrtoint ptr %service_id.6.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %service_id.6.i, align 4
  %max_ep_message_len.6.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 6, i32 5
  %39 = ptrtoint ptr %max_ep_message_len.6.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %max_ep_message_len.6.i, align 4
  %max_tx_queue_depth.6.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 6, i32 4
  %40 = ptrtoint ptr %max_tx_queue_depth.6.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %max_tx_queue_depth.6.i, align 4
  %eid.6.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 6, i32 1
  %41 = ptrtoint ptr %eid.6.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 6, ptr %eid.6.i, align 4
  %42 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %htc1, ptr %arrayidx.6.i, align 4
  %tx_credit_flow_enabled.6.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 6, i32 10
  %43 = ptrtoint ptr %tx_credit_flow_enabled.6.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %tx_credit_flow_enabled.6.i, align 4
  %arrayidx.7.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 7
  %service_id.7.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 7, i32 2
  %44 = ptrtoint ptr %service_id.7.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %service_id.7.i, align 4
  %max_ep_message_len.7.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 7, i32 5
  %45 = ptrtoint ptr %max_ep_message_len.7.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %max_ep_message_len.7.i, align 4
  %max_tx_queue_depth.7.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 7, i32 4
  %46 = ptrtoint ptr %max_tx_queue_depth.7.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %max_tx_queue_depth.7.i, align 4
  %eid.7.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 7, i32 1
  %47 = ptrtoint ptr %eid.7.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 7, ptr %eid.7.i, align 4
  %48 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %htc1, ptr %arrayidx.7.i, align 4
  %tx_credit_flow_enabled.7.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 7, i32 10
  %49 = ptrtoint ptr %tx_credit_flow_enabled.7.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %tx_credit_flow_enabled.7.i, align 4
  %arrayidx.8.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 8
  %service_id.8.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 8, i32 2
  %50 = ptrtoint ptr %service_id.8.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %service_id.8.i, align 4
  %max_ep_message_len.8.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 8, i32 5
  %51 = ptrtoint ptr %max_ep_message_len.8.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %max_ep_message_len.8.i, align 4
  %max_tx_queue_depth.8.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 8, i32 4
  %52 = ptrtoint ptr %max_tx_queue_depth.8.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %max_tx_queue_depth.8.i, align 4
  %eid.8.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 8, i32 1
  %53 = ptrtoint ptr %eid.8.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 8, ptr %eid.8.i, align 4
  %54 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %htc1, ptr %arrayidx.8.i, align 4
  %tx_credit_flow_enabled.8.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 1, i32 8, i32 10
  %55 = ptrtoint ptr %tx_credit_flow_enabled.8.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %tx_credit_flow_enabled.8.i, align 4
  %56 = ptrtoint ptr %htc1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %ab, ptr %htc1, align 4
  %preferred_hw_mode = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 4, i32 12
  %57 = ptrtoint ptr %preferred_hw_mode to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %preferred_hw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %58)
  %59 = icmp ult i32 %58, 6
  br i1 %59, label %switch.hole_check, label %entry.sw.default_crit_edge

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default

sw.default:                                       ; preds = %switch.hole_check.sw.default_crit_edge, %entry.sw.default_crit_edge
  %max_radios = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 2
  br label %sw.epilog

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %58 to i8
  %switch.shifted = lshr i8 51, %switch.maskindex
  %60 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %switch.lobit.not = icmp eq i8 %60, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default_crit_edge, label %switch.lookup

switch.hole_check.sw.default_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.ath11k_htc_init, i32 0, i32 %58
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %sw.default
  %.sink.in = phi ptr [ %max_radios, %sw.default ], [ %switch.gep, %switch.lookup ]
  %61 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load1_noabort(i32 %61)
  %.sink = load i8, ptr %.sink.in, align 1
  %wmi_ep_count7 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 9
  %62 = ptrtoint ptr %wmi_ep_count7 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %.sink, ptr %wmi_ep_count7, align 4
  %63 = call ptr @memset(ptr %conn_req, i32 0, i32 16)
  %64 = call ptr @memset(ptr %conn_resp, i32 0, i32 16)
  %ep_ops = getelementptr inbounds %struct.ath11k_htc_svc_conn_req, ptr %conn_req, i32 0, i32 1
  %65 = ptrtoint ptr %ep_ops to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @ath11k_htc_control_tx_complete, ptr %ep_ops, align 4
  %ep_rx_complete = getelementptr inbounds %struct.ath11k_htc_svc_conn_req, ptr %conn_req, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %ep_rx_complete to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @ath11k_htc_control_rx_complete, ptr %ep_rx_complete, align 4
  %max_send_queue_depth = getelementptr inbounds %struct.ath11k_htc_svc_conn_req, ptr %conn_req, i32 0, i32 2
  %67 = ptrtoint ptr %max_send_queue_depth to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2, ptr %max_send_queue_depth, align 4
  %68 = ptrtoint ptr %conn_req to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 1, ptr %conn_req, align 4
  %call9 = call i32 @ath11k_htc_connect_service(ptr noundef %htc1, ptr noundef nonnull %conn_req, ptr noundef nonnull %conn_resp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.28, i32 noundef %call9) #5
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %ctl_resp = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 5
  %69 = ptrtoint ptr %ctl_resp to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %ctl_resp, align 4
  %wait.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 8, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.56, ptr noundef nonnull @init_completion.__key) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %conn_resp) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %conn_req) #5
  ret i32 %call9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_htc_control_tx_complete(ptr nocapture noundef readnone %ab, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_htc_control_rx_complete(ptr noundef %ab, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.55) #5
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath11k_htc_process_credit_report(ptr noundef %htc, ptr nocapture noundef readonly %report, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htc, align 4
  %rem = and i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef %len) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_lock = getelementptr inbounds %struct.ath11k_htc, ptr %htc, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp4.not = icmp ult i32 %len, 4
  br i1 %cmp4.not, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %div1 = lshr i32 %len, 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.07 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %report.addr.05 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %report, %for.body.preheader ]
  %2 = ptrtoint ptr %report.addr.05 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %report.addr.05, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp3 = icmp ugt i8 %3, 8
  br i1 %cmp3, label %for.body.for.end_crit_edge, label %if.end6

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end6:                                          ; preds = %for.body
  %conv = zext i8 %3 to i32
  %credits = getelementptr inbounds %struct.ath11k_htc_credit_report, ptr %report.addr.05, i32 0, i32 1
  %4 = ptrtoint ptr %credits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %credits, align 1
  %conv8 = zext i8 %5 to i32
  %tx_credits = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 1, i32 %conv, i32 9
  %6 = ptrtoint ptr %tx_credits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_credits, align 4
  %add = add i32 %7, %conv8
  store i32 %add, ptr %tx_credits, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %8 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %if.end6.if.then11_crit_edge

if.end6.if.then11_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_htc_process_credit_report, %if.then11)) #5
          to label %do.end [label %if.then11], !srcloc !128

if.then11:                                        ; preds = %lor.lhs.false, %if.end6.if.then11_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %report.addr.05 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %report.addr.05, align 1
  %conv13 = zext i8 %10 to i32
  %11 = ptrtoint ptr %credits to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %credits, align 1
  %conv15 = zext i8 %12 to i32
  %13 = ptrtoint ptr %tx_credits to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_credits, align 4
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.35, i32 noundef %conv13, i32 noundef %conv15, i32 noundef %14) #5
  br label %do.end

do.end:                                           ; preds = %if.then11, %lor.lhs.false
  %ep_tx_credits = getelementptr %struct.ath11k_htc, ptr %htc, i32 0, i32 1, i32 %conv, i32 3, i32 2
  %15 = ptrtoint ptr %ep_tx_credits to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ep_tx_credits, align 4
  %tobool18.not = icmp eq ptr %16, null
  br i1 %tobool18.not, label %do.end.for.inc_crit_edge, label %if.then19

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #5
  %17 = ptrtoint ptr %ep_tx_credits to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ep_tx_credits, align 4
  %19 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %htc, align 4
  tail call void %18(ptr noundef %20) #5
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %do.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.07, 1
  %incdec.ptr = getelementptr %struct.ath11k_htc_credit_report, ptr %report.addr.05, i32 1
  %exitcond.not = icmp eq i32 %inc, %div1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !59, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !110, !112, !113, !115, !117}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 23, i32 19}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 88, i32 19}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 98, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 106, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 134, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 294, i32 19}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 303, i32 19}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 309, i32 19}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 326, i32 20}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 358, i32 21}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 381, i32 20}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 388, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 520, i32 19}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 534, i32 19}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 539, i32 19}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 551, i32 19}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 558, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 564, i32 19}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 609, i32 3}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 615, i32 19}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 658, i32 18}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 670, i32 18}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 674, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 685, i32 18}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 734, i32 2}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 741, i32 3}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 768, i32 3}
!54 = !{ptr @ath11k_htc_init.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 788, i32 2}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 821, i32 18}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 202, i32 20}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 213, i32 22}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 223, i32 21}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 158, i32 19}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 170, i32 3}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 242, i32 2}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 415, i32 10}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 417, i32 10}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 419, i32 10}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 421, i32 10}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 423, i32 10}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 425, i32 10}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 427, i32 10}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 429, i32 10}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 431, i32 10}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 433, i32 10}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 435, i32 10}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 437, i32 10}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 439, i32 10}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 441, i32 10}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 443, i32 10}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 446, i32 9}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 44, i32 2}
!109 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 49, i32 2}
!112 = !{ptr @__func__.ath11k_htc_build_tx_ctrl_skb, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/ath/ath11k/htc.c", i32 407, i32 18}
!115 = !{ptr @init_completion.__key, !116, !"__key", i1 false, i1 false}
!116 = !{!"../include/linux/completion.h", i32 87, i32 2}
!117 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{i8 0, i8 2}
!128 = !{i64 2148850363, i64 2148850368, i64 2148850381, i64 2148850425, i64 2148850459, i64 2148850480}
!129 = !{!"branch_weights", i32 2000, i32 1}
!130 = !{!"auto-init"}
