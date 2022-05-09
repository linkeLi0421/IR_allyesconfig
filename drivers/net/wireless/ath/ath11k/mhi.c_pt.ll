; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath11k/mhi.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath11k/mhi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mhi_controller_config = type { i32, i32, i32, i32, ptr, i32, ptr, i8, i8 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%struct.atomic_t = type { i32 }
%union.anon.98 = type { i32 }
%struct.mhi_channel_config = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.mhi_event_config = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ath11k_pci = type { ptr, ptr, i16, [100 x i8], i32, ptr, ptr, i32, i32, %struct.spinlock, i32, i16, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.hal_srng = type { i8, i8, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, [2 x i32], i64, i32, %union.anon.104 }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { i32, ptr, i32, ptr, i32, i16, i32 }
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
%struct.mhi_controller = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], ptr, ptr, ptr, %struct.mutex, %struct.rwlock_t, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.mhi_link_info, %struct.work_struct, ptr, %struct.wait_queue_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.mhi_link_info = type { i32, i32 }

@ath11k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MHISTATUS 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"amss.bin\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get msi for mhi\0A\00", [37 x i8] zeroinitializer }, align 32
@ath11k_mhi_config_qcn9074 = internal global { %struct.mhi_controller_config, [32 x i8] } { %struct.mhi_controller_config { i32 30, i32 10000, i32 0, i32 4, ptr @ath11k_mhi_channels_qcn9074, i32 2, ptr @ath11k_mhi_events_qcn9074, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@ath11k_mhi_config_qca6390 = internal global { %struct.mhi_controller_config, [32 x i8] } { %struct.mhi_controller_config { i32 128, i32 2000, i32 0, i32 4, ptr @ath11k_mhi_channels_qca6390, i32 2, ptr @ath11k_mhi_events_qca6390, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed assign mhi_config for unknown hw rev %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to register to mhi bus, err = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@__tracepoint_ath11k_log_dbg = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s/%s/%s\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ath11k\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MHI\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Number of assigned MSI for MHI is %d, base vector is %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memory\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"firmware crashed: MHI_CB_SYS_ERROR\0A\00", [60 x i8] zeroinitializer }, align 32
@ath11k_mhi_channels_qcn9074 = internal global { [4 x %struct.mhi_channel_config], [32 x i8] } { [4 x %struct.mhi_channel_config] [%struct.mhi_channel_config { ptr @.str.11, i32 0, i32 32, i32 0, i32 1, i32 1, i32 0, i32 20, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.11, i32 1, i32 32, i32 0, i32 1, i32 2, i32 0, i32 20, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.12, i32 20, i32 32, i32 0, i32 1, i32 1, i32 0, i32 20, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.12, i32 21, i32 32, i32 0, i32 1, i32 2, i32 0, i32 20, i32 0, i32 2, i8 0, i8 0, i8 0, i8 1, i8 0 }], [32 x i8] zeroinitializer }, align 32
@ath11k_mhi_events_qcn9074 = internal global { [2 x %struct.mhi_event_config], [32 x i8] } { [2 x %struct.mhi_event_config] [%struct.mhi_event_config { i32 32, i32 0, i32 1, i32 0, i32 0, i32 2, i32 1, i8 0, i8 0, i8 0 }, %struct.mhi_event_config { i32 256, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i8 0, i8 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LOOPBACK\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IPCR\00", [27 x i8] zeroinitializer }, align 32
@ath11k_mhi_channels_qca6390 = internal global { [4 x %struct.mhi_channel_config], [32 x i8] } { [4 x %struct.mhi_channel_config] [%struct.mhi_channel_config { ptr @.str.11, i32 0, i32 32, i32 0, i32 0, i32 1, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.11, i32 1, i32 32, i32 0, i32 0, i32 2, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.12, i32 20, i32 64, i32 0, i32 1, i32 1, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.12, i32 21, i32 64, i32 0, i32 1, i32 2, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 1, i8 0 }], [32 x i8] zeroinitializer }, align 32
@ath11k_mhi_events_qca6390 = internal global { [2 x %struct.mhi_event_config], [32 x i8] } { [2 x %struct.mhi_event_config] [%struct.mhi_event_config { i32 32, i32 0, i32 1, i32 0, i32 0, i32 2, i32 1, i8 0, i8 0, i8 0 }, %struct.mhi_event_config { i32 256, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i8 0, i8 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"setting mhi state: %s(%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unhandled MHI state (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to set mhi state: %s(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unhandled mhi state: %s(%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"failed to set mhi state %s(%d) in current mhi state (0x%lx)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INIT\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DEINIT\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"POWER_ON\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"POWER_OFF\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FORCE_POWER_OFF\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SUSPEND\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RESUME\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unhandled mhi state (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@switch.table.ath11k_mhi_register = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @ath11k_mhi_config_qca6390, ptr @ath11k_mhi_config_qcn9074, ptr @ath11k_mhi_config_qcn9074, ptr @ath11k_mhi_config_qca6390, ptr @ath11k_mhi_config_qca6390], [44 x i8] zeroinitializer }, align 32
@switch.table.ath11k_mhi_set_state = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], [40 x i8] zeroinitializer }, align 32
@switch.table.ath11k_mhi_set_state.29 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], [36 x i8] zeroinitializer }, align 32
@switch.table.ath11k_mhi_set_state.30 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.31 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.32 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 209, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 355, i32 39 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 367, i32 18 }
@___asan_gen_.42 = private unnamed_addr constant [26 x i8] c"ath11k_mhi_config_qcn9074\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 192, i32 37 }
@___asan_gen_.45 = private unnamed_addr constant [26 x i8] c"ath11k_mhi_config_qca6390\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 99, i32 37 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 403, i32 18 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 411, i32 18 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 1041, i32 25 }
@___asan_gen_.58 = private unnamed_addr constant [42 x i8] c"../drivers/net/wireless/ath/ath11k/core.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 1041, i32 37 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 257, i32 8 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 262, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 330, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 301, i32 19 }
@___asan_gen_.72 = private unnamed_addr constant [28 x i8] c"ath11k_mhi_channels_qcn9074\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 110, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant [26 x i8] c"ath11k_mhi_events_qcn9074\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 169, i32 32 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 113, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 141, i32 11 }
@___asan_gen_.84 = private unnamed_addr constant [28 x i8] c"ath11k_mhi_channels_qca6390\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 17, i32 34 }
@___asan_gen_.87 = private unnamed_addr constant [26 x i8] c"ath11k_mhi_events_qca6390\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 76, i32 32 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 551, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 589, i32 18 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 601, i32 17 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 530, i32 18 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 534, i32 17 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 432, i32 10 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 434, i32 10 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 436, i32 10 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 438, i32 10 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 440, i32 10 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 442, i32 10 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 444, i32 10 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 450, i32 10 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath11k/mhi.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 488, i32 18 }
@___asan_gen_.132 = private unnamed_addr constant [33 x i8] c"switch.table.ath11k_mhi_register\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [34 x i8] c"switch.table.ath11k_mhi_set_state\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [37 x i8] c"switch.table.ath11k_mhi_set_state.29\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [37 x i8] c"switch.table.ath11k_mhi_set_state.30\00", align 1
@llvm.compiler.used = appending global [37 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ath11k_mhi_config_qcn9074, ptr @ath11k_mhi_config_qca6390, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @ath11k_mhi_channels_qcn9074, ptr @ath11k_mhi_events_qcn9074, ptr @.str.11, ptr @.str.12, ptr @ath11k_mhi_channels_qca6390, ptr @ath11k_mhi_events_qca6390, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @switch.table.ath11k_mhi_register, ptr @switch.table.ath11k_mhi_set_state, ptr @switch.table.ath11k_mhi_set_state.29, ptr @switch.table.ath11k_mhi_set_state.30], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_mhi_config_qcn9074 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_mhi_config_qca6390 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_mhi_channels_qcn9074 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_mhi_events_qcn9074 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_mhi_channels_qca6390 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_mhi_events_qca6390 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath11k_mhi_register to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath11k_mhi_set_state to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath11k_mhi_set_state.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath11k_mhi_set_state.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_mhi_set_mhictrl_reset(ptr noundef %ab) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef 72) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %0 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_mhi_set_mhictrl_reset, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !79

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 4096, ptr noundef nonnull @.str, i32 noundef %call) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef 56, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_pci_read32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath11k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_pci_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_mhi_clear_vector(ptr noundef %ab) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef 864, i32 noundef 0) #7
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef 872, i32 noundef 0) #7
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef 916, i32 noundef 0) #7
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef 924, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_mhi_register(ptr noundef %ab_pci) local_unnamed_addr #0 align 64 {
entry:
  %res.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ab1 = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 1
  %0 = ptrtoint ptr %ab1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ab1, align 4
  %call = tail call ptr @mhi_alloc_controller() #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %amss_path = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 3
  %fw.i = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 36, i32 4
  %2 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw.i, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %amss_path, i32 noundef 100, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef %3, ptr noundef nonnull @.str.1) #7
  %mhi_ctrl2 = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 5
  %4 = ptrtoint ptr %mhi_ctrl2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %mhi_ctrl2, align 4
  %dev = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %7 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %call, align 4
  %fw_image = getelementptr inbounds %struct.mhi_controller, ptr %call, i32 0, i32 9
  %8 = ptrtoint ptr %fw_image to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %amss_path, ptr %fw_image, align 4
  %mem = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mem, align 4
  %regs = getelementptr inbounds %struct.mhi_controller, ptr %call, i32 0, i32 3
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %regs, align 4
  %mem_len = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %mem_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mem_len, align 8
  %reg_len = getelementptr inbounds %struct.mhi_controller, ptr %call, i32 0, i32 14
  %14 = ptrtoint ptr %reg_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %reg_len, align 4
  %call5 = tail call fastcc i32 @ath11k_mhi_get_msi(ptr noundef %ab_pci)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %1, ptr noundef nonnull @.str.2) #7
  tail call void @mhi_free_controller(ptr noundef nonnull %call) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 10
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags, align 4
  %17 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool10.not = icmp eq i32 %17, 0
  br i1 %tobool10.not, label %if.then11, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %irq_flags = getelementptr inbounds %struct.mhi_controller, ptr %call, i32 0, i32 69
  %18 = ptrtoint ptr %irq_flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2176, ptr %irq_flags, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8.if.end12_crit_edge
  %dev_flags = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 45
  %19 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %dev_flags, align 4
  %21 = and i32 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool14.not = icmp eq i32 %21, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #7
  %22 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 1
  %23 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  %call.i72 = tail call ptr @of_find_node_by_type(ptr noundef null, ptr noundef nonnull @.str.9) #7
  %tobool.not.i = icmp eq ptr %call.i72, null
  br i1 %tobool.not.i, label %ath11k_mhi_read_addr_from_dt.exit.thread, label %if.end.i

ath11k_mhi_read_addr_from_dt.exit.thread:         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then15
  %call1.i = call i32 @of_address_to_resource(ptr noundef nonnull %call.i72, i32 noundef 0, ptr noundef nonnull %res.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %ath11k_mhi_read_addr_from_dt.exit.thread75, label %ath11k_mhi_read_addr_from_dt.exit

ath11k_mhi_read_addr_from_dt.exit.thread75:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %res.i, align 4
  %add.i = add i32 %25, 16777216
  %iova_start.i = getelementptr inbounds %struct.mhi_controller, ptr %call, i32 0, i32 7
  %26 = ptrtoint ptr %iova_start.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add.i, ptr %iova_start.i, align 4
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %22, align 4
  %iova_stop.i = getelementptr inbounds %struct.mhi_controller, ptr %call, i32 0, i32 8
  %29 = ptrtoint ptr %iova_stop.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %iova_stop.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #7
  br label %if.end19

ath11k_mhi_read_addr_from_dt.exit:                ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %ath11k_mhi_read_addr_from_dt.exit.cleanup_crit_edge, label %ath11k_mhi_read_addr_from_dt.exit.if.end19_crit_edge

ath11k_mhi_read_addr_from_dt.exit.if.end19_crit_edge: ; preds = %ath11k_mhi_read_addr_from_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

ath11k_mhi_read_addr_from_dt.exit.cleanup_crit_edge: ; preds = %ath11k_mhi_read_addr_from_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %iova_start = getelementptr inbounds %struct.mhi_controller, ptr %call, i32 0, i32 7
  %30 = ptrtoint ptr %iova_start to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %iova_start, align 4
  %iova_stop = getelementptr inbounds %struct.mhi_controller, ptr %call, i32 0, i32 8
  %31 = ptrtoint ptr %iova_stop to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %iova_stop, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %ath11k_mhi_read_addr_from_dt.exit.if.end19_crit_edge, %ath11k_mhi_read_addr_from_dt.exit.thread75
  %sbl_size = getelementptr inbounds %struct.mhi_controller, ptr %call, i32 0, i32 12
  %32 = ptrtoint ptr %sbl_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 524288, ptr %sbl_size, align 4
  %seg_len = getelementptr inbounds %struct.mhi_controller, ptr %call, i32 0, i32 13
  %33 = ptrtoint ptr %seg_len to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 524288, ptr %seg_len, align 4
  %fbc_download = getelementptr inbounds %struct.mhi_controller, ptr %call, i32 0, i32 67
  %34 = ptrtoint ptr %fbc_download to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %fbc_download, align 1
  %runtime_get = getelementptr inbounds %struct.mhi_controller, ptr %call, i32 0, i32 57
  %35 = ptrtoint ptr %runtime_get to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @ath11k_mhi_op_runtime_get, ptr %runtime_get, align 4
  %runtime_put = getelementptr inbounds %struct.mhi_controller, ptr %call, i32 0, i32 58
  %36 = ptrtoint ptr %runtime_put to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ath11k_mhi_op_runtime_put, ptr %runtime_put, align 4
  %status_cb = getelementptr inbounds %struct.mhi_controller, ptr %call, i32 0, i32 53
  %37 = ptrtoint ptr %status_cb to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ath11k_mhi_op_status_cb, ptr %status_cb, align 4
  %read_reg = getelementptr inbounds %struct.mhi_controller, ptr %call, i32 0, i32 61
  %38 = ptrtoint ptr %read_reg to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @ath11k_mhi_op_read_reg, ptr %read_reg, align 4
  %write_reg = getelementptr inbounds %struct.mhi_controller, ptr %call, i32 0, i32 62
  %39 = ptrtoint ptr %write_reg to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @ath11k_mhi_op_write_reg, ptr %write_reg, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %1, align 128
  %switch.tableidx = add i32 %41, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %42 = icmp ult i32 %switch.tableidx, 5
  br i1 %42, label %switch.hole_check, label %if.end19.sw.default_crit_edge

if.end19.sw.default_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

sw.default:                                       ; preds = %switch.hole_check.sw.default_crit_edge, %if.end19.sw.default_crit_edge
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %41) #7
  call void @mhi_free_controller(ptr noundef nonnull %call) #7
  br label %cleanup

switch.hole_check:                                ; preds = %if.end19
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %43 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %switch.lobit.not = icmp eq i8 %43, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default_crit_edge, label %switch.lookup

switch.hole_check.sw.default_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.ath11k_mhi_register, i32 0, i32 %switch.tableidx
  %44 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %44)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %call22 = call i32 @mhi_register_controller(ptr noundef nonnull %call, ptr noundef nonnull %switch.load) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %switch.lookup.cleanup_crit_edge, label %if.then24

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then24:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %call22) #7
  call void @mhi_free_controller(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %switch.lookup.cleanup_crit_edge, %sw.default, %ath11k_mhi_read_addr_from_dt.exit.cleanup_crit_edge, %ath11k_mhi_read_addr_from_dt.exit.thread, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then7 ], [ -22, %sw.default ], [ %call22, %if.then24 ], [ -12, %entry.cleanup_crit_edge ], [ %call1.i, %ath11k_mhi_read_addr_from_dt.exit.cleanup_crit_edge ], [ 0, %switch.lookup.cleanup_crit_edge ], [ -2, %ath11k_mhi_read_addr_from_dt.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mhi_alloc_controller() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath11k_mhi_get_msi(ptr noundef %ab_pci) unnamed_addr #0 align 64 {
entry:
  %user_base_data = alloca i32, align 4
  %base_vector = alloca i32, align 4
  %num_vectors = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ab1 = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 1
  %0 = ptrtoint ptr %ab1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ab1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %user_base_data) #7
  %2 = ptrtoint ptr %user_base_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %user_base_data, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base_vector) #7
  %3 = ptrtoint ptr %base_vector to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %base_vector, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_vectors) #7
  %4 = ptrtoint ptr %num_vectors to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %num_vectors, align 4, !annotation !80
  %call = call i32 @ath11k_pci_get_user_msi_assignment(ptr noundef %ab_pci, ptr noundef nonnull @.str.7, ptr noundef nonnull %num_vectors, ptr noundef nonnull %user_base_data, ptr noundef nonnull %base_vector) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %5 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %do.body.if.then4_crit_edge

do.body.if.then4_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_mhi_get_msi, %if.then4)) #7
          to label %do.end [label %if.then4], !srcloc !79

if.then4:                                         ; preds = %lor.lhs.false, %do.body.if.then4_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %num_vectors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_vectors, align 4
  %8 = ptrtoint ptr %base_vector to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_vector, align 4
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %1, i32 noundef 4096, ptr noundef nonnull @.str.8, i32 noundef %7, i32 noundef %9) #7
  br label %do.end

do.end:                                           ; preds = %if.then4, %lor.lhs.false
  %10 = ptrtoint ptr %num_vectors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_vectors, align 4
  %12 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 4) #7
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %do.end.cleanup_crit_edge, label %if.end7.i.i, !prof !81

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i.i:                                      ; preds = %do.end
  %14 = extractvalue { i32, i1 } %12, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #10
  %tobool7.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool7.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  %15 = ptrtoint ptr %num_vectors to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_vectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp39 = icmp sgt i32 %16, 0
  br i1 %cmp39, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %flags = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 10
  %dev = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %base_vector to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base_vector, align 4
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags, align 4
  %21 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool11.not = icmp eq i32 %21, 0
  %add = select i1 %tobool11.not, i32 0, i32 %i.040
  %spec.select = add i32 %add, %18
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %call14 = call i32 @ath11k_pci_get_msi_irq(ptr noundef %23, i32 noundef %spec.select) #7
  %arrayidx = getelementptr i32, ptr %call8.i.i, i32 %i.040
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call14, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.040, 1
  %25 = ptrtoint ptr %num_vectors to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_vectors, align 4
  %cmp = icmp slt i32 %inc, %26
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ %16, %for.cond.preheader.for.end_crit_edge ], [ %26, %for.body.for.end_crit_edge ]
  %mhi_ctrl = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 5
  %27 = ptrtoint ptr %mhi_ctrl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mhi_ctrl, align 4
  %irq15 = getelementptr inbounds %struct.mhi_controller, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %irq15 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call8.i.i, ptr %irq15, align 4
  %30 = load ptr, ptr %mhi_ctrl, align 4
  %nr_irqs = getelementptr inbounds %struct.mhi_controller, ptr %30, i32 0, i32 24
  %31 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.lcssa, ptr %nr_irqs, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end7.i.i.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_vectors) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base_vector) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %user_base_data) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mhi_free_controller(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath11k_mhi_op_runtime_get(ptr nocapture noundef readnone %mhi_cntrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ath11k_mhi_op_runtime_put(ptr nocapture noundef %mhi_cntrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_mhi_op_status_cb(ptr nocapture noundef readonly %mhi_cntrl, i32 noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %cb)
  %cond = icmp eq i32 %cb, 6
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %mhi_cntrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mhi_cntrl, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %3, ptr noundef nonnull @.str.10) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_mhi_op_read_reg(ptr nocapture noundef readnone %mhi_cntrl, ptr noundef %addr, ptr nocapture noundef writeonly %out) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #7, !srcloc !82
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  %2 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %out, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_mhi_op_write_reg(ptr nocapture noundef readnone %mhi_cntrl, ptr noundef %addr, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #7, !srcloc !85
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mhi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_mhi_unregister(ptr nocapture noundef readonly %ab_pci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mhi_ctrl1 = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 5
  %0 = ptrtoint ptr %mhi_ctrl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mhi_ctrl1, align 4
  tail call void @mhi_unregister_controller(ptr noundef %1) #7
  %irq = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq, align 4
  tail call void @kfree(ptr noundef %3) #7
  tail call void @mhi_free_controller(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mhi_unregister_controller(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_mhi_start(ptr noundef %ab_pci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mhi_ctrl = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 5
  %0 = ptrtoint ptr %mhi_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mhi_ctrl, align 4
  %timeout_ms = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %timeout_ms to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 90000, ptr %timeout_ms, align 4
  %call = tail call fastcc i32 @ath11k_mhi_set_state(ptr noundef %ab_pci, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @ath11k_mhi_set_state(ptr noundef %ab_pci, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

out:                                              ; preds = %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call1, %if.end.out_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath11k_mhi_set_state(ptr noundef %ab_pci, i32 noundef %mhi_state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ab1 = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 1
  %0 = ptrtoint ptr %ab1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ab1, align 4
  %2 = zext i32 %mhi_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mhi_state, label %ath11k_mhi_state_to_str.exit.i [
    i32 0, label %sw.bb.i
    i32 1, label %entry.sw.bb3.i_crit_edge
    i32 2, label %entry.sw.bb3.i_crit_edge87
    i32 4, label %sw.bb12.i
    i32 3, label %entry.sw.bb18.i_crit_edge
    i32 5, label %entry.sw.bb18.i_crit_edge88
    i32 6, label %sw.bb28.i
  ]

entry.sw.bb18.i_crit_edge88:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb18.i

entry.sw.bb18.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb18.i

entry.sw.bb3.i_crit_edge87:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

sw.bb.i:                                          ; preds = %entry
  %mhi_state2.i = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 7
  %3 = ptrtoint ptr %mhi_state2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %mhi_state2.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.do.body_crit_edge, label %sw.bb.i.ath11k_mhi_check_state_bit.exit_crit_edge

sw.bb.i.ath11k_mhi_check_state_bit.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_mhi_check_state_bit.exit

sw.bb.i.do.body_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.bb3.i:                                         ; preds = %entry.sw.bb3.i_crit_edge, %entry.sw.bb3.i_crit_edge87
  %mhi_state4.i = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 7
  %5 = ptrtoint ptr %mhi_state4.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %mhi_state4.i, align 4
  %and1.i63.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i63.i)
  %tobool6.not.i = icmp eq i32 %and1.i63.i, 0
  br i1 %tobool6.not.i, label %sw.bb3.i.sw.epilog.i_crit_edge, label %land.lhs.true.i

sw.bb3.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

land.lhs.true.i:                                  ; preds = %sw.bb3.i
  %7 = ptrtoint ptr %mhi_state4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %mhi_state4.i, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not.i = icmp eq i32 %9, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.do.body_crit_edge, label %land.lhs.true.i.sw.epilog.i_crit_edge

land.lhs.true.i.sw.epilog.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

land.lhs.true.i.do.body_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.bb12.i:                                        ; preds = %entry
  %mhi_state13.i = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 7
  %10 = ptrtoint ptr %mhi_state13.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %mhi_state13.i, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool15.not.i = icmp eq i32 %12, 0
  br i1 %tobool15.not.i, label %sw.bb12.i.ath11k_mhi_check_state_bit.exit_crit_edge, label %sw.bb12.i.do.body_crit_edge

sw.bb12.i.do.body_crit_edge:                      ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.bb12.i.ath11k_mhi_check_state_bit.exit_crit_edge: ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_mhi_check_state_bit.exit

sw.bb18.i:                                        ; preds = %entry.sw.bb18.i_crit_edge, %entry.sw.bb18.i_crit_edge88
  %mhi_state19.i = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 7
  %13 = ptrtoint ptr %mhi_state19.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %mhi_state19.i, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool21.not.i = icmp eq i32 %15, 0
  br i1 %tobool21.not.i, label %sw.bb18.i.sw.epilog.i_crit_edge, label %land.lhs.true22.i

sw.bb18.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

land.lhs.true22.i:                                ; preds = %sw.bb18.i
  %16 = ptrtoint ptr %mhi_state19.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %mhi_state19.i, align 4
  %18 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool25.not.i = icmp eq i32 %18, 0
  br i1 %tobool25.not.i, label %land.lhs.true22.i.do.body_crit_edge, label %land.lhs.true22.i.sw.epilog.i_crit_edge

land.lhs.true22.i.sw.epilog.i_crit_edge:          ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

land.lhs.true22.i.do.body_crit_edge:              ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.bb28.i:                                        ; preds = %entry
  %mhi_state29.i = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 7
  %19 = ptrtoint ptr %mhi_state29.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %mhi_state29.i, align 4
  %21 = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool31.not.i = icmp eq i32 %21, 0
  br i1 %tobool31.not.i, label %sw.bb28.i.ath11k_mhi_check_state_bit.exit_crit_edge, label %sw.bb28.i.do.body_crit_edge

sw.bb28.i.do.body_crit_edge:                      ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.bb28.i.ath11k_mhi_check_state_bit.exit_crit_edge: ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_mhi_check_state_bit.exit

ath11k_mhi_state_to_str.exit.i:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.27, i32 noundef %mhi_state) #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %ath11k_mhi_state_to_str.exit.i, %land.lhs.true22.i.sw.epilog.i_crit_edge, %sw.bb18.i.sw.epilog.i_crit_edge, %land.lhs.true.i.sw.epilog.i_crit_edge, %sw.bb3.i.sw.epilog.i_crit_edge
  %switch.tableidx = add i32 %mhi_state, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %22 = icmp ult i32 %switch.tableidx, 6
  br i1 %22, label %switch.lookup, label %sw.epilog.i.ath11k_mhi_check_state_bit.exit_crit_edge

sw.epilog.i.ath11k_mhi_check_state_bit.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_mhi_check_state_bit.exit

switch.lookup:                                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.ath11k_mhi_set_state, i32 0, i32 %switch.tableidx
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %ath11k_mhi_check_state_bit.exit

ath11k_mhi_check_state_bit.exit:                  ; preds = %switch.lookup, %sw.epilog.i.ath11k_mhi_check_state_bit.exit_crit_edge, %sw.bb28.i.ath11k_mhi_check_state_bit.exit_crit_edge, %sw.bb12.i.ath11k_mhi_check_state_bit.exit_crit_edge, %sw.bb.i.ath11k_mhi_check_state_bit.exit_crit_edge
  %retval.0.i80.i = phi ptr [ @.str.18, %sw.bb.i.ath11k_mhi_check_state_bit.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ @.str.22, %sw.bb12.i.ath11k_mhi_check_state_bit.exit_crit_edge ], [ @.str.24, %sw.bb28.i.ath11k_mhi_check_state_bit.exit_crit_edge ], [ @.str.27, %sw.epilog.i.ath11k_mhi_check_state_bit.exit_crit_edge ]
  %mhi_state47.i = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 7
  %24 = ptrtoint ptr %mhi_state47.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mhi_state47.i, align 4
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef nonnull %retval.0.i80.i, i32 noundef %mhi_state, i32 noundef %25) #7
  br label %out

do.body:                                          ; preds = %sw.bb28.i.do.body_crit_edge, %land.lhs.true22.i.do.body_crit_edge, %sw.bb12.i.do.body_crit_edge, %land.lhs.true.i.do.body_crit_edge, %sw.bb.i.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %26 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %26, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %do.body.if.then4_crit_edge

do.body.if.then4_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_mhi_set_state, %if.then4)) #7
          to label %do.end [label %if.then4], !srcloc !79

if.then4:                                         ; preds = %lor.lhs.false, %do.body.if.then4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %mhi_state)
  %27 = icmp ult i32 %mhi_state, 7
  br i1 %27, label %switch.lookup81, label %if.then4.ath11k_mhi_state_to_str.exit_crit_edge

if.then4.ath11k_mhi_state_to_str.exit_crit_edge:  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_mhi_state_to_str.exit

switch.lookup81:                                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep82 = getelementptr inbounds [7 x ptr], ptr @switch.table.ath11k_mhi_set_state.29, i32 0, i32 %mhi_state
  %28 = ptrtoint ptr %switch.gep82 to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load83 = load ptr, ptr %switch.gep82, align 4
  br label %ath11k_mhi_state_to_str.exit

ath11k_mhi_state_to_str.exit:                     ; preds = %switch.lookup81, %if.then4.ath11k_mhi_state_to_str.exit_crit_edge
  %retval.0.i53 = phi ptr [ %switch.load83, %switch.lookup81 ], [ @.str.27, %if.then4.ath11k_mhi_state_to_str.exit_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %1, i32 noundef 4096, ptr noundef nonnull @.str.13, ptr noundef nonnull %retval.0.i53, i32 noundef %mhi_state) #7
  br label %do.end

do.end:                                           ; preds = %ath11k_mhi_state_to_str.exit, %lor.lhs.false
  %29 = zext i32 %mhi_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %mhi_state, label %sw.epilog.thread76 [
    i32 0, label %sw.bb
    i32 1, label %if.end28.thread79
    i32 2, label %sw.bb10
    i32 3, label %do.end.sw.bb7.i.sink.split_crit_edge
    i32 4, label %sw.bb15
    i32 5, label %sw.bb17
    i32 6, label %sw.bb20
  ]

do.end.sw.bb7.i.sink.split_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7.i.sink.split

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %mhi_ctrl = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 5
  %30 = ptrtoint ptr %mhi_ctrl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mhi_ctrl, align 4
  %call7 = tail call i32 @mhi_prepare_for_power_up(ptr noundef %31) #7
  br label %sw.epilog

if.end28.thread79:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %mhi_ctrl9 = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 5
  %32 = ptrtoint ptr %mhi_ctrl9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mhi_ctrl9, align 4
  tail call void @mhi_unprepare_after_power_down(ptr noundef %33) #7
  br label %sw.bb3.i57

sw.bb10:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %mhi_ctrl11 = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 5
  %34 = ptrtoint ptr %mhi_ctrl11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mhi_ctrl11, align 4
  %call12 = tail call i32 @mhi_async_power_up(ptr noundef %35) #7
  br label %sw.epilog

sw.bb15:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7.i.sink.split

sw.bb17:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %mhi_ctrl18 = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 5
  %36 = ptrtoint ptr %mhi_ctrl18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mhi_ctrl18, align 4
  %call19 = tail call i32 @mhi_pm_suspend(ptr noundef %37) #7
  br label %sw.epilog

sw.bb20:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %mhi_ctrl21 = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 5
  %38 = ptrtoint ptr %mhi_ctrl21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mhi_ctrl21, align 4
  %call22 = tail call i32 @mhi_pm_resume_force(ptr noundef %39) #7
  br label %sw.epilog

sw.epilog.thread76:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %mhi_state) #7
  br label %out

sw.epilog:                                        ; preds = %sw.bb20, %sw.bb17, %sw.bb10, %sw.bb
  %ret.0 = phi i32 [ %call22, %sw.bb20 ], [ %call19, %sw.bb17 ], [ %call12, %sw.bb10 ], [ %call7, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool26.not = icmp eq i32 %ret.0, 0
  br i1 %tobool26.not, label %if.end28, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end28:                                         ; preds = %sw.epilog
  %40 = zext i32 %mhi_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %mhi_state, label %sw.default.i60 [
    i32 0, label %sw.bb.i55
    i32 1, label %if.end28.sw.bb3.i57_crit_edge
    i32 2, label %sw.bb5.i58
    i32 3, label %if.end28.sw.bb7.i_crit_edge
    i32 4, label %if.end28.sw.bb7.i_crit_edge89
    i32 5, label %sw.bb11.i
    i32 6, label %sw.bb13.i
  ]

if.end28.sw.bb7.i_crit_edge89:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7.i

if.end28.sw.bb7.i_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7.i

if.end28.sw.bb3.i57_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i57

sw.bb.i55:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %mhi_state2.i54 = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 0, ptr noundef %mhi_state2.i54) #7
  br label %cleanup

sw.bb3.i57:                                       ; preds = %if.end28.sw.bb3.i57_crit_edge, %if.end28.thread79
  %mhi_state4.i56 = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %mhi_state4.i56) #7
  br label %cleanup

sw.bb5.i58:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %mhi_state6.i = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 2, ptr noundef %mhi_state6.i) #7
  br label %cleanup

sw.bb7.i.sink.split:                              ; preds = %sw.bb15, %do.end.sw.bb7.i.sink.split_crit_edge
  %.sink80 = phi i1 [ false, %sw.bb15 ], [ true, %do.end.sw.bb7.i.sink.split_crit_edge ]
  %mhi_ctrl16 = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 5
  %41 = ptrtoint ptr %mhi_ctrl16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mhi_ctrl16, align 4
  tail call void @mhi_power_down(ptr noundef %42, i1 noundef zeroext %.sink80) #7
  br label %sw.bb7.i

sw.bb7.i:                                         ; preds = %sw.bb7.i.sink.split, %if.end28.sw.bb7.i_crit_edge, %if.end28.sw.bb7.i_crit_edge89
  %mhi_state8.i = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %mhi_state8.i) #7
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %mhi_state8.i) #7
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %mhi_state8.i) #7
  br label %cleanup

sw.bb11.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %mhi_state12.i = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 5, ptr noundef %mhi_state12.i) #7
  br label %cleanup

sw.bb13.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %mhi_state14.i = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %mhi_state14.i) #7
  br label %cleanup

sw.default.i60:                                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %ab1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ab1, align 4
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %44, ptr noundef nonnull @.str.28, i32 noundef %mhi_state) #7
  br label %cleanup

out:                                              ; preds = %sw.epilog.out_crit_edge, %sw.epilog.thread76, %ath11k_mhi_check_state_bit.exit
  %ret.1 = phi i32 [ -22, %ath11k_mhi_check_state_bit.exit ], [ %ret.0, %sw.epilog.out_crit_edge ], [ -22, %sw.epilog.thread76 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %mhi_state)
  %45 = icmp ult i32 %mhi_state, 7
  br i1 %45, label %switch.lookup84, label %out.ath11k_mhi_state_to_str.exit70_crit_edge

out.ath11k_mhi_state_to_str.exit70_crit_edge:     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_mhi_state_to_str.exit70

switch.lookup84:                                  ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep85 = getelementptr inbounds [7 x ptr], ptr @switch.table.ath11k_mhi_set_state.30, i32 0, i32 %mhi_state
  %46 = ptrtoint ptr %switch.gep85 to i32
  call void @__asan_load4_noabort(i32 %46)
  %switch.load86 = load ptr, ptr %switch.gep85, align 4
  br label %ath11k_mhi_state_to_str.exit70

ath11k_mhi_state_to_str.exit70:                   ; preds = %switch.lookup84, %out.ath11k_mhi_state_to_str.exit70_crit_edge
  %retval.0.i69 = phi ptr [ %switch.load86, %switch.lookup84 ], [ @.str.27, %out.ath11k_mhi_state_to_str.exit70_crit_edge ]
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull %retval.0.i69, i32 noundef %mhi_state) #7
  br label %cleanup

cleanup:                                          ; preds = %ath11k_mhi_state_to_str.exit70, %sw.default.i60, %sw.bb13.i, %sw.bb11.i, %sw.bb7.i, %sw.bb5.i58, %sw.bb3.i57, %sw.bb.i55
  %retval.0 = phi i32 [ %ret.1, %ath11k_mhi_state_to_str.exit70 ], [ 0, %sw.bb.i55 ], [ 0, %sw.bb3.i57 ], [ 0, %sw.bb5.i58 ], [ 0, %sw.bb7.i ], [ 0, %sw.bb11.i ], [ 0, %sw.bb13.i ], [ 0, %sw.default.i60 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_mhi_stop(ptr noundef %ab_pci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ath11k_mhi_set_state(ptr noundef %ab_pci, i32 noundef 3)
  %call1 = tail call fastcc i32 @ath11k_mhi_set_state(ptr noundef %ab_pci, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_mhi_suspend(ptr noundef %ab_pci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ath11k_mhi_set_state(ptr noundef %ab_pci, i32 noundef 5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_mhi_resume(ptr noundef %ab_pci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ath11k_mhi_set_state(ptr noundef %ab_pci, i32 noundef 6)
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_pci_get_user_msi_assignment(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_pci_get_msi_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mhi_prepare_for_power_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mhi_unprepare_after_power_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mhi_async_power_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mhi_power_down(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mhi_pm_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mhi_pm_resume_force(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 209, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 355, i32 39}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 367, i32 18}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 403, i32 18}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 411, i32 18}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath11k/core.h", i32 1041, i32 25}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath11k/core.h", i32 1041, i32 37}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 257, i32 8}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 262, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 330, i32 34}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 301, i32 19}
!22 = !{ptr @ath11k_mhi_config_qcn9074, !23, !"ath11k_mhi_config_qcn9074", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 192, i32 37}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 113, i32 11}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 141, i32 11}
!28 = !{ptr @ath11k_mhi_channels_qcn9074, !29, !"ath11k_mhi_channels_qcn9074", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 110, i32 34}
!30 = !{ptr @ath11k_mhi_events_qcn9074, !31, !"ath11k_mhi_events_qcn9074", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 169, i32 32}
!32 = !{ptr @ath11k_mhi_config_qca6390, !33, !"ath11k_mhi_config_qca6390", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 99, i32 37}
!34 = !{ptr @ath11k_mhi_channels_qca6390, !35, !"ath11k_mhi_channels_qca6390", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 17, i32 34}
!36 = !{ptr @ath11k_mhi_events_qca6390, !37, !"ath11k_mhi_events_qca6390", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 76, i32 32}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 551, i32 2}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 589, i32 18}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 601, i32 17}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 530, i32 18}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 534, i32 17}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 432, i32 10}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 434, i32 10}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 436, i32 10}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 438, i32 10}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 440, i32 10}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 442, i32 10}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 444, i32 10}
!62 = distinct !{null, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 446, i32 10}
!64 = distinct !{null, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 448, i32 10}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 450, i32 10}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath11k/mhi.c", i32 488, i32 18}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 2148750603, i64 2148750608, i64 2148750621, i64 2148750665, i64 2148750699, i64 2148750720}
!80 = !{!"auto-init"}
!81 = !{!"branch_weights", i32 1, i32 2000}
!82 = !{i64 5011045}
!83 = !{i64 2158772573}
!84 = !{i64 2158772774}
!85 = !{i64 5010627}
