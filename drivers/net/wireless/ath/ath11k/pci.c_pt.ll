; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath11k/pci.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath11k/pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%struct.atomic_t = type { i32 }
%union.anon.98 = type { i32 }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath11k_bus_params = type { i8, i8, i8, i8, i8 }
%struct.ath11k_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ath11k_msi_config = type { i32, i32, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ath11k_msi_user = type { ptr, i32, i32 }
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
%struct.ath11k_pdev = type { ptr, i32, %struct.ath11k_pdev_cap, [6 x i8] }
%struct.ath11k_pdev_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x %struct.ath11k_band_cap], i8, i8 }
%struct.ath11k_band_cap = type { i32, i32, i32, [2 x i32], i32, [3 x i32], %struct.ath11k_ppe_threshold, i16 }
%struct.ath11k_ppe_threshold = type { i32, i32, [8 x i32] }
%struct.anon.146 = type { i32, i32 }
%struct.ath11k_hal_reg_capabilities_ext = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.ath11k_pci = type { ptr, ptr, i16, [100 x i8], i32, ptr, ptr, i32, i32, %struct.spinlock, i32, i16, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.156, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.156 = type { ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.msi_desc = type { i32, i32, ptr, %struct.msi_msg, ptr, ptr, ptr, ptr, i16, %struct.pci_msi_desc }
%struct.msi_msg = type { %union.anon.157, %union.anon.158, %union.anon.159 }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%union.anon.159 = type { i32 }
%struct.pci_msi_desc = type { %union.anon.160, %struct.anon.161, %union.anon.162 }
%union.anon.160 = type { i32 }
%struct.anon.161 = type { i16, i32 }
%union.anon.162 = type { ptr }
%struct.service_to_pipe = type { i32, i32, i32 }
%struct.ath11k_hw_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath11k_hw_ring_mask = type { [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8] }

@ath11k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"Assign MSI to user: %s, num_vectors: %d, user_base_data: %u, base_vector: %u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to find MSI assignment for %s!\0A\00", [57 x i8] zeroinitializer }, align 32
@__initcall__kmod_ath11k_pci__400_1619_ath11k_pci_init6 = internal global ptr @ath11k_pci_init, section ".initcall6.init", align 4
@__exitcall_ath11k_pci_exit = internal global ptr @ath11k_pci_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description401 = internal constant [91 x i8] c"ath11k_pci.description=Driver support for Qualcomm Technologies 802.11ax WLAN PCIe devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file402 = internal constant [59 x i8] c"ath11k_pci.file=drivers/net/wireless/ath/ath11k/ath11k_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license403 = internal constant [32 x i8] c"ath11k_pci.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware404 = internal constant [53 x i8] c"ath11k_pci.firmware=ath11k/QCA6390/hw2.0/board-2.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware405 = internal constant [50 x i8] c"ath11k_pci.firmware=ath11k/QCA6390/hw2.0/amss.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware406 = internal constant [48 x i8] c"ath11k_pci.firmware=ath11k/QCA6390/hw2.0/m3.bin\00", section ".modinfo", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ath/ath11k/pci.c\00", [58 x i8] zeroinitializer }, align 32
@__tracepoint_ath11k_log_dbg = external dso_local global %struct.tracepoint, align 4
@ath11k_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.3, ptr @ath11k_pci_id_table, ptr @ath11k_pci_probe, ptr @ath11k_pci_remove, ptr null, ptr null, ptr @ath11k_pci_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ath11k_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ath11k_pci\00", [21 x i8] zeroinitializer }, align 32
@ath11k_pci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 1615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013failed to register ath11k pci driver: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ath11k_pci_init\00", [16 x i8] zeroinitializer }, align 32
@ath11k_pci_init._entry_ptr = internal global ptr @ath11k_pci_init._entry, section ".printk_index", align 4
@ath11k_pci_id_table = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 6091, i32 4353, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6091, i32 4355, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6091, i32 4356, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ath11k_pci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ath11k_pci_pm_suspend, ptr @ath11k_pci_pm_resume, ptr @ath11k_pci_pm_suspend, ptr @ath11k_pci_pm_resume, ptr @ath11k_pci_pm_suspend, ptr @ath11k_pci_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ath11k_pci_bus_params = internal constant { %struct.ath11k_bus_params, [27 x i8] } { %struct.ath11k_bus_params { i8 1, i8 1, i8 0, i8 0, i8 0 }, [27 x i8] zeroinitializer }, align 32
@ath11k_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 1363, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to allocate ath11k base\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ath11k_pci_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ath11k_pci_probe._entry_ptr = internal global ptr @ath11k_pci_probe._entry, section ".printk_index", align 4
@ath11k_pci_hif_ops = internal constant { %struct.ath11k_hif_ops, [32 x i8] } { %struct.ath11k_hif_ops { ptr @ath11k_pci_read32, ptr @ath11k_pci_write32, ptr @ath11k_pci_ext_irq_enable, ptr @ath11k_pci_ext_irq_disable, ptr @ath11k_pci_start, ptr @ath11k_pci_stop, ptr @ath11k_pci_power_up, ptr @ath11k_pci_power_down, ptr @ath11k_pci_hif_suspend, ptr @ath11k_pci_hif_resume, ptr @ath11k_pci_map_service_to_pipe, ptr @ath11k_get_user_msi_assignment, ptr @ath11k_pci_get_msi_address, ptr @ath11k_pci_hif_ce_irq_enable, ptr @ath11k_pci_hif_ce_irq_disable, ptr @ath11k_pci_get_ce_msi_idx }, [32 x i8] zeroinitializer }, align 32
@ath11k_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&ab_pci->window_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory-region\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to claim device: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pci probe %04x:%04x %04x:%04x\0A\00", [33 x i8] zeroinitializer }, align 32
@ath11k_pci_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.2, i32 1410, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unsupported QCA6390 SOC hardware version: %d %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ath11k_pci_probe._entry_ptr.16 = internal global ptr @ath11k_pci_probe._entry.14, section ".printk_index", align 4
@ath11k_msi_config = internal constant { [2 x %struct.ath11k_msi_config], [40 x i8] } { [2 x %struct.ath11k_msi_config] [%struct.ath11k_msi_config { i32 32, i32 4, ptr @.compoundliteral }, %struct.ath11k_msi_config { i32 16, i32 3, ptr @.compoundliteral.55 }], [40 x i8] zeroinitializer }, align 32
@ath11k_pci_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.2, i32 1443, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unsupported WCN6855 SOC hardware version: %d %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ath11k_pci_probe._entry_ptr.19 = internal global ptr @ath11k_pci_probe._entry.17, section ".printk_index", align 4
@ath11k_pci_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.7, ptr @.str.2, i32 1451, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unknown PCI device found: 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@ath11k_pci_probe._entry_ptr.22 = internal global ptr @ath11k_pci_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to enable msi: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register mhi: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate ce pipes: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to config irq: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to config msi_data: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to init core: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"leaving PCI ASPM disabled to avoid MHI M2 problems\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to start mhi: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci ltssm 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pci pcie_hot_rst 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set sysclk: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to set dtct config1 error: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to set dtct config2: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to set dtct config4: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"failed to set pcie link register 0x%08x: 0x%08x != 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cookie:0x%x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"WLAON_WARM_SW_ENTRY 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"soc reset cause:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"link down error during global reset\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pci link_ctl 0x%04x L0s %d L1 %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pci device id mismatch: 0x%x 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to assign pci resource: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable pci device: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to request pci region: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to set pci dma mask to %d: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to map pci bar %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"boot pci_mem 0x%pK\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"pci tcsr_soc_hw_version major %d minor %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MHI\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CE\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"WAKE\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DP\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [4 x %struct.ath11k_msi_user], [48 x i8] } { [4 x %struct.ath11k_msi_user] [%struct.ath11k_msi_user { ptr @.str.51, i32 3, i32 0 }, %struct.ath11k_msi_user { ptr @.str.52, i32 10, i32 3 }, %struct.ath11k_msi_user { ptr @.str.53, i32 1, i32 13 }, %struct.ath11k_msi_user { ptr @.str.54, i32 18, i32 14 }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { [3 x %struct.ath11k_msi_user], [60 x i8] } { [3 x %struct.ath11k_msi_user] [%struct.ath11k_msi_user { ptr @.str.51, i32 3, i32 0 }, %struct.ath11k_msi_user { ptr @.str.52, i32 5, i32 3 }, %struct.ath11k_msi_user { ptr @.str.54, i32 8, i32 8 }], [60 x i8] zeroinitializer }, align 32
@msi_config_one_msi = internal constant { %struct.ath11k_msi_config, [20 x i8] } { %struct.ath11k_msi_config { i32 1, i32 4, ptr @.compoundliteral.60 }, [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"request MSI one vector\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MSI vectors: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"msi_desc is NULL!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"msi base data is %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { [4 x %struct.ath11k_msi_user], [48 x i8] } { [4 x %struct.ath11k_msi_user] [%struct.ath11k_msi_user { ptr @.str.51, i32 3, i32 0 }, %struct.ath11k_msi_user { ptr @.str.52, i32 1, i32 0 }, %struct.ath11k_msi_user { ptr @.str.53, i32 1, i32 0 }, %struct.ath11k_msi_user { ptr @.str.54, i32 1, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to set irq affinity %d\0A\00", [33 x i8] zeroinitializer }, align 32
@irq_name = internal constant { [52 x ptr], [48 x i8] } { [52 x ptr] [ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr null], [48 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to request irq %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bhi\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mhi-er0\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mhi-er1\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ce0\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ce1\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ce2\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ce3\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ce4\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ce5\00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ce6\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ce7\00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ce8\00", [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ce9\00", [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ce10\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ce11\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"host2wbm-desc-feed\00", [45 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"host2reo-re-injection\00", [42 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"host2reo-command\00", [47 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"host2rxdma-monitor-ring3\00", [39 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"host2rxdma-monitor-ring2\00", [39 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"host2rxdma-monitor-ring1\00", [39 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reo2ost-exception\00", [46 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wbm2host-rx-release\00", [44 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reo2host-status\00", [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reo2host-destination-ring4\00", [37 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reo2host-destination-ring3\00", [37 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reo2host-destination-ring2\00", [37 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reo2host-destination-ring1\00", [37 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rxdma2host-monitor-destination-mac3\00", [60 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rxdma2host-monitor-destination-mac2\00", [60 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rxdma2host-monitor-destination-mac1\00", [60 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ppdu-end-interrupts-mac3\00", [39 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ppdu-end-interrupts-mac2\00", [39 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ppdu-end-interrupts-mac1\00", [39 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rxdma2host-monitor-status-ring-mac3\00", [60 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rxdma2host-monitor-status-ring-mac2\00", [60 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rxdma2host-monitor-status-ring-mac1\00", [60 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"host2rxdma-host-buf-ring-mac3\00", [34 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"host2rxdma-host-buf-ring-mac2\00", [34 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"host2rxdma-host-buf-ring-mac1\00", [34 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rxdma2host-destination-ring-mac3\00", [63 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rxdma2host-destination-ring-mac2\00", [63 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rxdma2host-destination-ring-mac1\00", [63 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"host2tcl-input-ring4\00", [43 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"host2tcl-input-ring3\00", [43 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"host2tcl-input-ring2\00", [43 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"host2tcl-input-ring1\00", [43 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wbm2host-tx-completions-ring3\00", [34 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wbm2host-tx-completions-ring2\00", [34 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wbm2host-tx-completions-ring1\00", [34 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tcl2host-status-ring\00", [43 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"irq:%d group:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DP_EXT_IRQ\00", [21 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed request irq %d: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ext irq:%d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"pci after request_irq msi_ep_base_data %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to suspend core: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to resume core: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4353, i64 4355, i64 4356]
@__sancov_gen_cov_switch_values.121 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 16, i64 17]
@__sancov_gen_cov_switch_values.122 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 273, i64 4294967295]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 273, i64 4294967295]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 273, i64 4294967295]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 273, i64 4294967295]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 273, i64 4294967295]
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 504, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 513, i32 17 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 152, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [18 x i8] c"ath11k_pci_driver\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1597, i32 26 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1612, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1614, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [20 x i8] c"ath11k_pci_id_table\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 43, i32 35 }
@___asan_gen_.155 = private unnamed_addr constant [18 x i8] c"ath11k_pci_pm_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1593, i32 8 }
@___asan_gen_.158 = private unnamed_addr constant [22 x i8] c"ath11k_pci_bus_params\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 52, i32 39 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1363, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [19 x i8] c"ath11k_pci_hif_ops\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1319, i32 36 }
@___asan_gen_.179 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1375, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1381, i32 47 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1387, i32 18 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1391, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1409, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant [18 x i8] c"ath11k_msi_config\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 59, i32 39 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1442, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1450, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1458, i32 18 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1468, i32 18 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1478, i32 18 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1486, i32 18 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1497, i32 18 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1503, i32 18 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1258, i32 19 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1175, i32 18 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 411, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 418, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 361, i32 19 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 370, i32 19 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 379, i32 19 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 388, i32 19 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 346, i32 18 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 302, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 305, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 323, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 293, i32 19 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1138, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1063, i32 18 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1071, i32 18 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1077, i32 18 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1083, i32 18 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1090, i32 18 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1100, i32 18 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1105, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1348, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 64, i32 14 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 65, i32 14 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 66, i32 14 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 67, i32 14 }
@___asan_gen_.311 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.313 = private unnamed_addr constant [19 x i8] c"msi_config_one_msi\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 81, i32 39 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1003, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1005, i32 18 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1011, i32 18 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1020, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 880, i32 18 }
@___asan_gen_.332 = private unnamed_addr constant [9 x i8] c"irq_name\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 92, i32 20 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 901, i32 19 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 93, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 94, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 95, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 96, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 97, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 98, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 99, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 100, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 101, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 102, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 103, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 104, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 105, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 106, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 107, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 108, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 109, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 110, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 111, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 112, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 113, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 114, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 115, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 116, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 117, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 118, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 119, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 120, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 121, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 122, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 123, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 124, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 125, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 126, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 127, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 128, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 129, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 130, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 131, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 132, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 133, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 134, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 135, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 136, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 137, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 138, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 139, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 140, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 141, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 142, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 143, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 834, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 840, i32 8 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 842, i32 20 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 777, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1049, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1576, i32 19 }
@___asan_gen_.509 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.510 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath11k/pci.c\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1588, i32 19 }
@llvm.compiler.used = appending global [143 x ptr] [ptr @__UNIQUE_ID_description401, ptr @__UNIQUE_ID_file402, ptr @__UNIQUE_ID_firmware404, ptr @__UNIQUE_ID_firmware405, ptr @__UNIQUE_ID_firmware406, ptr @__UNIQUE_ID_license403, ptr @__exitcall_ath11k_pci_exit, ptr @__initcall__kmod_ath11k_pci__400_1619_ath11k_pci_init6, ptr @ath11k_pci_init._entry, ptr @ath11k_pci_init._entry_ptr, ptr @ath11k_pci_probe._entry, ptr @ath11k_pci_probe._entry.14, ptr @ath11k_pci_probe._entry.17, ptr @ath11k_pci_probe._entry.20, ptr @ath11k_pci_probe._entry_ptr, ptr @ath11k_pci_probe._entry_ptr.16, ptr @ath11k_pci_probe._entry_ptr.19, ptr @ath11k_pci_probe._entry_ptr.22, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ath11k_pci_driver, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ath11k_pci_id_table, ptr @ath11k_pci_pm_ops, ptr @ath11k_pci_bus_params, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ath11k_pci_hif_ops, ptr @ath11k_pci_probe.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @ath11k_msi_config, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.compoundliteral, ptr @.compoundliteral.55, ptr @msi_config_one_msi, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.compoundliteral.60, ptr @.str.61, ptr @irq_name, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120], section "llvm.metadata"
@0 = internal global [130 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_pci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_pci_id_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_pci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_pci_bus_params to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_pci_hif_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_pci_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_msi_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_pci_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_pci_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_config_one_msi to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_name to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_pci_write32(ptr noundef %ab, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %wakeup_mhi = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 45
  %0 = ptrtoint ptr %wakeup_mhi to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wakeup_mhi, align 2, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not = icmp ne i32 %and1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4063, i32 %offset)
  %cmp = icmp ugt i32 %offset, 4063
  %or.cond = and i1 %cmp, %tobool2.not
  br i1 %or.cond, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %mhi_ctrl = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 1, i32 1, i32 4, i32 7
  %4 = ptrtoint ptr %mhi_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mhi_ctrl, align 4
  %mhi_dev = getelementptr inbounds %struct.mhi_controller, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %mhi_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mhi_dev, align 4
  %call4 = tail call i32 @mhi_device_get_sync(ptr noundef %7) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %offset)
  %cmp5 = icmp ult i32 %offset, 524288
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mem = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 10
  %8 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !274
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %value) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #6, !srcloc !275
  br label %if.end24

if.else:                                          ; preds = %if.end
  %static_window_map = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 37, i32 4
  %11 = ptrtoint ptr %static_window_map to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %static_window_map, align 4, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not = icmp eq i8 %12, 0
  br i1 %tobool7.not, label %if.else.if.then13_crit_edge, label %if.then8

if.else.if.then13_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

if.then8:                                         ; preds = %if.else
  %xor.i = xor i32 %offset, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 524287, i32 %xor.i)
  %cmp.i = icmp ult i32 %xor.i, 524287
  br i1 %cmp.i, label %if.then8.if.else18_crit_edge, label %if.end11

if.then8.if.else18_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else18

if.end11:                                         ; preds = %if.then8
  %xor1.i = xor i32 %offset, 28835840
  call void @__sanitizer_cov_trace_const_cmp4(i32 524287, i32 %xor1.i)
  %cmp2.i = icmp ult i32 %xor1.i, 524287
  br i1 %cmp2.i, label %if.end11.if.else18_crit_edge, label %if.end11.if.then13_crit_edge

if.end11.if.then13_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

if.end11.if.else18_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else18

if.then13:                                        ; preds = %if.end11.if.then13_crit_edge, %if.else.if.then13_crit_edge
  %window_lock = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 1, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %window_lock) #6
  %ab1.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 62, i32 4
  %13 = ptrtoint ptr %ab1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ab1.i, align 4
  %and.i = lshr i32 %offset, 19
  %shr.i = and i32 %and.i, 63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %15 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.then13.if.end.i_crit_edge, label %land.rhs.i

if.then13.if.end.i_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then13
  %dep_map.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 1, i32 5, i32 2
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end26.i, label %land.rhs.i.if.end.i_crit_edge, !prof !276

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end26.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 152, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end26.i, %land.rhs.i.if.end.i_crit_edge, %if.then13.if.end.i_crit_edge
  %register_window.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 1, i32 3, i32 1
  %16 = ptrtoint ptr %register_window.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %register_window.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %17)
  %cmp41.not.i = icmp eq i32 %shr.i, %17
  br i1 %cmp41.not.i, label %if.end.i.ath11k_pci_select_window.exit_crit_edge, label %if.then42.i

if.end.i.ath11k_pci_select_window.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_select_window.exit

if.then42.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i = or i32 %shr.i, 1073741824
  %mem.i = getelementptr inbounds %struct.ath11k_base, ptr %14, i32 0, i32 10
  %18 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 12556
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !274
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %20) #6, !srcloc !275
  %21 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mem.i, align 4
  %add.ptr44.i = getelementptr i8, ptr %22, i32 12556
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44.i) #6, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !278
  %24 = ptrtoint ptr %register_window.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr.i, ptr %register_window.i, align 4
  br label %ath11k_pci_select_window.exit

ath11k_pci_select_window.exit:                    ; preds = %if.then42.i, %if.end.i.ath11k_pci_select_window.exit_crit_edge
  %mem14 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 10
  %25 = ptrtoint ptr %mem14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mem14, align 4
  %add.ptr15 = getelementptr i8, ptr %26, i32 524288
  %and = and i32 %offset, 524287
  %add.ptr16 = getelementptr i8, ptr %add.ptr15, i32 %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !274
  tail call void @arm_heavy_mb() #6
  %27 = tail call i32 @llvm.bswap.i32(i32 %value) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %27) #6, !srcloc !275
  tail call void @_raw_spin_unlock_bh(ptr noundef %window_lock) #6
  br label %if.end24

if.else18:                                        ; preds = %if.end11.if.else18_crit_edge, %if.then8.if.else18_crit_edge
  %window_start.069 = phi i32 [ 1048576, %if.end11.if.else18_crit_edge ], [ 1572864, %if.then8.if.else18_crit_edge ]
  %mem19 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 10
  %28 = ptrtoint ptr %mem19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mem19, align 4
  %add.ptr20 = getelementptr i8, ptr %29, i32 %window_start.069
  %and21 = and i32 %offset, 524287
  %add.ptr22 = getelementptr i8, ptr %add.ptr20, i32 %and21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !274
  tail call void @arm_heavy_mb() #6
  %30 = tail call i32 @llvm.bswap.i32(i32 %value) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %30) #6, !srcloc !275
  br label %if.end24

if.end24:                                         ; preds = %if.else18, %ath11k_pci_select_window.exit, %if.then6
  %31 = ptrtoint ptr %wakeup_mhi to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %wakeup_mhi, align 2, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool27.not = icmp eq i8 %32, 0
  br i1 %tobool27.not, label %if.end24.if.end37_crit_edge, label %land.lhs.true28

if.end24.if.end37_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

land.lhs.true28:                                  ; preds = %if.end24
  %flags29 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 3
  %33 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags29, align 4
  %and1.i63 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i63)
  %tobool31.not = icmp ne i32 %and1.i63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4063, i32 %offset)
  %cmp33 = icmp ugt i32 %offset, 4063
  %or.cond62 = and i1 %cmp33, %tobool31.not
  br i1 %or.cond62, label %if.then34, label %land.lhs.true28.if.end37_crit_edge

land.lhs.true28.if.end37_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then34:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  %mhi_ctrl35 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 1, i32 1, i32 4, i32 7
  %35 = ptrtoint ptr %mhi_ctrl35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mhi_ctrl35, align 4
  %mhi_dev36 = getelementptr inbounds %struct.mhi_controller, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %mhi_dev36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mhi_dev36, align 4
  tail call void @mhi_device_put(ptr noundef %38) #6
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %land.lhs.true28.if.end37_crit_edge, %if.end24.if.end37_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mhi_device_get_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mhi_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %wakeup_mhi = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 45
  %0 = ptrtoint ptr %wakeup_mhi to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wakeup_mhi, align 2, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not = icmp ne i32 %and1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4063, i32 %offset)
  %cmp = icmp ugt i32 %offset, 4063
  %or.cond = and i1 %cmp, %tobool2.not
  br i1 %or.cond, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %mhi_ctrl = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 1, i32 1, i32 4, i32 7
  %4 = ptrtoint ptr %mhi_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mhi_ctrl, align 4
  %mhi_dev = getelementptr inbounds %struct.mhi_controller, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %mhi_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mhi_dev, align 4
  %call4 = tail call i32 @mhi_device_get_sync(ptr noundef %7) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %offset)
  %cmp5 = icmp ult i32 %offset, 524288
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mem = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 10
  %8 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %offset
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !277
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !278
  br label %if.end27

if.else:                                          ; preds = %if.end
  %static_window_map = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 37, i32 4
  %12 = ptrtoint ptr %static_window_map to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %static_window_map, align 4, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not = icmp eq i8 %13, 0
  br i1 %tobool8.not, label %if.else.if.then14_crit_edge, label %if.then9

if.else.if.then14_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.then9:                                         ; preds = %if.else
  %xor.i = xor i32 %offset, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 524287, i32 %xor.i)
  %cmp.i = icmp ult i32 %xor.i, 524287
  br i1 %cmp.i, label %if.then9.if.else20_crit_edge, label %if.end12

if.then9.if.else20_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else20

if.end12:                                         ; preds = %if.then9
  %xor1.i = xor i32 %offset, 28835840
  call void @__sanitizer_cov_trace_const_cmp4(i32 524287, i32 %xor1.i)
  %cmp2.i = icmp ult i32 %xor1.i, 524287
  br i1 %cmp2.i, label %if.end12.if.else20_crit_edge, label %if.end12.if.then14_crit_edge

if.end12.if.then14_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.end12.if.else20_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else20

if.then14:                                        ; preds = %if.end12.if.then14_crit_edge, %if.else.if.then14_crit_edge
  %window_lock = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 1, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %window_lock) #6
  %ab1.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 62, i32 4
  %14 = ptrtoint ptr %ab1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ab1.i, align 4
  %and.i = lshr i32 %offset, 19
  %shr.i = and i32 %and.i, 63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %16 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.then14.if.end.i_crit_edge, label %land.rhs.i

if.then14.if.end.i_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then14
  %dep_map.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 1, i32 5, i32 2
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end26.i, label %land.rhs.i.if.end.i_crit_edge, !prof !276

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end26.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 152, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end26.i, %land.rhs.i.if.end.i_crit_edge, %if.then14.if.end.i_crit_edge
  %register_window.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 1, i32 3, i32 1
  %17 = ptrtoint ptr %register_window.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %register_window.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %18)
  %cmp41.not.i = icmp eq i32 %shr.i, %18
  br i1 %cmp41.not.i, label %if.end.i.ath11k_pci_select_window.exit_crit_edge, label %if.then42.i

if.end.i.ath11k_pci_select_window.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_select_window.exit

if.then42.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i = or i32 %shr.i, 1073741824
  %mem.i = getelementptr inbounds %struct.ath11k_base, ptr %15, i32 0, i32 10
  %19 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 12556
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !274
  tail call void @arm_heavy_mb() #6
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %21) #6, !srcloc !275
  %22 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mem.i, align 4
  %add.ptr44.i = getelementptr i8, ptr %23, i32 12556
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44.i) #6, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !278
  %25 = ptrtoint ptr %register_window.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shr.i, ptr %register_window.i, align 4
  br label %ath11k_pci_select_window.exit

ath11k_pci_select_window.exit:                    ; preds = %if.then42.i, %if.end.i.ath11k_pci_select_window.exit_crit_edge
  %mem15 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 10
  %26 = ptrtoint ptr %mem15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mem15, align 4
  %add.ptr16 = getelementptr i8, ptr %27, i32 524288
  %and = and i32 %offset, 524287
  %add.ptr17 = getelementptr i8, ptr %add.ptr16, i32 %and
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #6, !srcloc !277
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !278
  tail call void @_raw_spin_unlock_bh(ptr noundef %window_lock) #6
  br label %if.end27

if.else20:                                        ; preds = %if.end12.if.else20_crit_edge, %if.then9.if.else20_crit_edge
  %window_start.070 = phi i32 [ 1048576, %if.end12.if.else20_crit_edge ], [ 1572864, %if.then9.if.else20_crit_edge ]
  %mem21 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 10
  %30 = ptrtoint ptr %mem21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mem21, align 4
  %add.ptr22 = getelementptr i8, ptr %31, i32 %window_start.070
  %and23 = and i32 %offset, 524287
  %add.ptr24 = getelementptr i8, ptr %add.ptr22, i32 %and23
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #6, !srcloc !277
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !278
  br label %if.end27

if.end27:                                         ; preds = %if.else20, %ath11k_pci_select_window.exit, %if.then6
  %val.0 = phi i32 [ %11, %if.then6 ], [ %29, %ath11k_pci_select_window.exit ], [ %33, %if.else20 ]
  %34 = ptrtoint ptr %wakeup_mhi to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %wakeup_mhi, align 2, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool30.not = icmp eq i8 %35, 0
  br i1 %tobool30.not, label %if.end27.if.end40_crit_edge, label %land.lhs.true31

if.end27.if.end40_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

land.lhs.true31:                                  ; preds = %if.end27
  %flags32 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 3
  %36 = ptrtoint ptr %flags32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flags32, align 4
  %and1.i64 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i64)
  %tobool34.not = icmp ne i32 %and1.i64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4063, i32 %offset)
  %cmp36 = icmp ugt i32 %offset, 4063
  %or.cond63 = and i1 %cmp36, %tobool34.not
  br i1 %or.cond63, label %if.then37, label %land.lhs.true31.if.end40_crit_edge

land.lhs.true31.if.end40_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then37:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  %mhi_ctrl38 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 1, i32 1, i32 4, i32 7
  %38 = ptrtoint ptr %mhi_ctrl38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mhi_ctrl38, align 4
  %mhi_dev39 = getelementptr inbounds %struct.mhi_controller, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %mhi_dev39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mhi_dev39, align 4
  tail call void @mhi_device_put(ptr noundef %41) #6
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %land.lhs.true31.if.end40_crit_edge, %if.end27.if.end40_crit_edge
  ret i32 %val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_pci_get_msi_irq(ptr noundef %dev, i32 noundef %vector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %call = tail call i32 @pci_irq_vector(ptr noundef %add.ptr, i32 noundef %vector) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_pci_get_user_msi_assignment(ptr nocapture noundef readonly %ab_pci, ptr noundef %user_name, ptr nocapture noundef %num_vectors, ptr nocapture noundef %user_base_data, ptr nocapture noundef %base_vector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ab1 = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 1
  %0 = ptrtoint ptr %ab1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ab1, align 4
  %msi_config2 = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 6
  %2 = ptrtoint ptr %msi_config2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msi_config2, align 4
  %total_users = getelementptr inbounds %struct.ath11k_msi_config, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %total_users to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %total_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp33 = icmp sgt i32 %5, 0
  br i1 %cmp33, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %users = getelementptr inbounds %struct.ath11k_msi_config, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %users, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %idx.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath11k_msi_user, ptr %7, i32 %idx.034
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @strcmp(ptr noundef %user_name, ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %num_vectors6 = getelementptr %struct.ath11k_msi_user, ptr %7, i32 %idx.034, i32 1
  %10 = ptrtoint ptr %num_vectors6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_vectors6, align 4
  %12 = ptrtoint ptr %num_vectors to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_vectors, align 4
  %13 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %users, align 4
  %base_vector9 = getelementptr %struct.ath11k_msi_user, ptr %14, i32 %idx.034, i32 2
  %15 = ptrtoint ptr %base_vector9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base_vector9, align 4
  %17 = ptrtoint ptr %base_vector to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %base_vector, align 4
  %msi_ep_base_data = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 4
  %18 = ptrtoint ptr %msi_ep_base_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msi_ep_base_data, align 4
  %add = add i32 %19, %16
  %20 = ptrtoint ptr %user_base_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %user_base_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %21 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %21, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then.if.then11_crit_edge

if.then.if.then11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_pci_get_user_msi_assignment, %if.then11)) #6
          to label %cleanup [label %if.then11], !srcloc !279

if.then11:                                        ; preds = %lor.lhs.false, %if.then.if.then11_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %num_vectors to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_vectors, align 4
  %24 = ptrtoint ptr %user_base_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %user_base_data, align 4
  %26 = ptrtoint ptr %base_vector to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base_vector, align 4
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %1, i32 noundef 4096, ptr noundef nonnull @.str, ptr noundef %user_name, i32 noundef %23, i32 noundef %25, i32 noundef %27) #6
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %idx.034, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef %user_name) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then11, %lor.lhs.false
  %retval.0 = phi i32 [ -22, %for.end ], [ 0, %if.then11 ], [ 0, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath11k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_pci_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @ath11k_pci_driver, ptr noundef null, ptr noundef nonnull @.str.3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_pci_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_unregister_driver(ptr noundef nonnull @ath11k_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %pci_dev) #0 align 64 {
entry:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #6
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr, align 4, !annotation !280
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call ptr @ath11k_core_alloc(ptr noundef %dev, i32 noundef 188, i32 noundef 1, ptr noundef nonnull @ath11k_pci_bus_params) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.ath11k_base, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev3, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %drv_priv.i = getelementptr inbounds %struct.ath11k_base, ptr %call, i32 0, i32 61
  %device = getelementptr inbounds %struct.pci_device_id, ptr %pci_dev, i32 0, i32 1
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %device, align 4
  %conv = trunc i32 %4 to i16
  %dev_id = getelementptr inbounds %struct.ath11k_base, ptr %call, i32 0, i32 62, i32 8
  %5 = ptrtoint ptr %dev_id to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %dev_id, align 4
  %ab5 = getelementptr inbounds %struct.ath11k_base, ptr %call, i32 0, i32 62, i32 4
  %6 = ptrtoint ptr %ab5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %ab5, align 4
  %7 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdev, ptr %drv_priv.i, align 4
  %ops = getelementptr inbounds %struct.ath11k_base, ptr %call, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ath11k_pci_hif_ops, ptr %ops, align 4
  store ptr %call, ptr %driver_data.i.i, align 4
  %window_lock = getelementptr inbounds %struct.ath11k_base, ptr %call, i32 1, i32 3, i32 1, i32 1, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %window_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @ath11k_pci_probe.__key, i16 noundef signext 3) #6
  %9 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev3, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.11, ptr noundef nonnull %addr, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool13.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool13.not, label %if.then14, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev_flags = getelementptr inbounds %struct.ath11k_base, ptr %call, i32 0, i32 45
  call void @_set_bit(i32 noundef 13, ptr noundef %dev_flags) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end.if.end15_crit_edge
  %call16 = call fastcc i32 @ath11k_pci_claim(ptr noundef %drv_priv.i, ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.body20, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.12, i32 noundef %call16) #6
  br label %err_free_core

do.body20:                                        ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %13 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %lor.lhs.false, label %do.body20.if.then24_crit_edge

do.body20.if.then24_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

lor.lhs.false:                                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_pci_probe, %if.then24)) #6
          to label %do.end32 [label %if.then24], !srcloc !279

if.then24:                                        ; preds = %lor.lhs.false, %do.body20.if.then24_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %14 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vendor, align 8
  %conv25 = zext i16 %15 to i32
  %device26 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %16 = ptrtoint ptr %device26 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %device26, align 2
  %conv27 = zext i16 %17 to i32
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %18 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %subsystem_vendor, align 4
  %conv28 = zext i16 %19 to i32
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %20 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %subsystem_device, align 2
  %conv29 = zext i16 %21 to i32
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef nonnull %call, i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef %conv25, i32 noundef %conv27, i32 noundef %conv28, i32 noundef %conv29) #6
  br label %do.end32

do.end32:                                         ; preds = %if.then24, %lor.lhs.false
  %vendor33 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %22 = ptrtoint ptr %vendor33 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vendor33, align 8
  %conv34 = zext i16 %23 to i32
  %vendor35 = getelementptr inbounds %struct.ath11k_base, ptr %call, i32 0, i32 60, i32 1
  %24 = ptrtoint ptr %vendor35 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv34, ptr %vendor35, align 4
  %device36 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %25 = ptrtoint ptr %device36 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %device36, align 2
  %conv37 = zext i16 %26 to i32
  %device39 = getelementptr inbounds %struct.ath11k_base, ptr %call, i32 0, i32 60, i32 2
  %27 = ptrtoint ptr %device39 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv37, ptr %device39, align 8
  %subsystem_vendor40 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %28 = ptrtoint ptr %subsystem_vendor40 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %subsystem_vendor40, align 4
  %conv41 = zext i16 %29 to i32
  %subsystem_vendor43 = getelementptr inbounds %struct.ath11k_base, ptr %call, i32 0, i32 60, i32 3
  %30 = ptrtoint ptr %subsystem_vendor43 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv41, ptr %subsystem_vendor43, align 4
  %subsystem_device44 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %31 = ptrtoint ptr %subsystem_device44 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %subsystem_device44, align 2
  %conv45 = zext i16 %32 to i32
  %subsystem_device47 = getelementptr inbounds %struct.ath11k_base, ptr %call, i32 0, i32 60, i32 4
  %33 = ptrtoint ptr %subsystem_device47 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv45, ptr %subsystem_device47, align 8
  %34 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %device, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %35, label %do.end76 [
    i32 4353, label %sw.bb
    i32 4356, label %sw.bb54
    i32 4355, label %sw.bb57
  ]

sw.bb:                                            ; preds = %do.end32
  %wakeup_mhi.i.i = getelementptr inbounds %struct.ath11k_base, ptr %call, i32 0, i32 36, i32 45
  %37 = ptrtoint ptr %wakeup_mhi.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %wakeup_mhi.i.i, align 2, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i.i, label %sw.bb.if.end.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb.if.end.i.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %flags.i.i = getelementptr inbounds %struct.ath11k_base, ptr %call, i32 1, i32 3, i32 1, i32 3
  %39 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %sw.bb.if.end.i.i_crit_edge
  %mem.i.i = getelementptr inbounds %struct.ath11k_base, ptr %call, i32 0, i32 10
  %41 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 548
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !277
  %44 = call i32 @llvm.bswap.i32(i32 %43) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !278
  %45 = ptrtoint ptr %wakeup_mhi.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %wakeup_mhi.i.i, align 2, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool30.not.i.i = icmp eq i8 %46, 0
  br i1 %tobool30.not.i.i, label %if.end.i.i.ath11k_pci_read32.exit.i_crit_edge, label %land.lhs.true31.i.i

if.end.i.i.ath11k_pci_read32.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_read32.exit.i

land.lhs.true31.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %flags32.i.i = getelementptr inbounds %struct.ath11k_base, ptr %call, i32 1, i32 3, i32 1, i32 3
  %47 = ptrtoint ptr %flags32.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flags32.i.i, align 4
  br label %ath11k_pci_read32.exit.i

ath11k_pci_read32.exit.i:                         ; preds = %land.lhs.true31.i.i, %if.end.i.i.ath11k_pci_read32.exit.i_crit_edge
  %and.i = lshr i32 %44, 8
  %shr.i = and i32 %and.i, 15
  %and29.i = and i32 %44, 255
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %49 = load i32, ptr @ath11k_debug_mask, align 4
  %and32.i = and i32 %49, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %ath11k_pci_read32.exit.i.if.then.i_crit_edge

ath11k_pci_read32.exit.i.if.then.i_crit_edge:     ; preds = %ath11k_pci_read32.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %ath11k_pci_read32.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_pci_probe, %if.then.i)) #6
          to label %ath11k_pci_read_hw_version.exit [label %if.then.i], !srcloc !279

if.then.i:                                        ; preds = %lor.lhs.false.i, %ath11k_pci_read32.exit.i.if.then.i_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef nonnull %call, i32 noundef 4096, ptr noundef nonnull @.str.50, i32 noundef %shr.i, i32 noundef %and29.i) #6
  br label %ath11k_pci_read_hw_version.exit

ath11k_pci_read_hw_version.exit:                  ; preds = %if.then.i, %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i)
  %cond117 = icmp eq i32 %shr.i, 2
  br i1 %cond117, label %sw.bb49, label %do.end52

sw.bb49:                                          ; preds = %ath11k_pci_read_hw_version.exit
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %call, align 128
  %msi_config = getelementptr inbounds %struct.ath11k_base, ptr %call, i32 1, i32 3, i32 1, i32 1, i32 2
  %51 = ptrtoint ptr %msi_config to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @ath11k_msi_config, ptr %msi_config, align 4
  br label %sw.epilog79

do.end52:                                         ; preds = %ath11k_pci_read_hw_version.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %shr.i, i32 noundef %and29.i) #10
  br label %err_pci_free_region

sw.bb54:                                          ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #8
  %msi_config55 = getelementptr inbounds %struct.ath11k_base, ptr %call, i32 1, i32 3, i32 1, i32 1, i32 2
  %52 = ptrtoint ptr %msi_config55 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr getelementptr inbounds ([2 x %struct.ath11k_msi_config], ptr @ath11k_msi_config, i32 0, i32 1), ptr %msi_config55, align 4
  %static_window_map = getelementptr inbounds %struct.ath11k_base, ptr %call, i32 0, i32 37, i32 4
  %53 = ptrtoint ptr %static_window_map to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %static_window_map, align 4
  %54 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 3, ptr %call, align 128
  br label %sw.epilog79

sw.bb57:                                          ; preds = %do.end32
  %id = getelementptr inbounds %struct.ath11k_base, ptr %call, i32 0, i32 60
  %55 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %id, align 8
  %wakeup_mhi.i.i206 = getelementptr inbounds %struct.ath11k_base, ptr %call, i32 0, i32 36, i32 45
  %56 = ptrtoint ptr %wakeup_mhi.i.i206 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %wakeup_mhi.i.i206, align 2, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i.i207 = icmp eq i8 %57, 0
  br i1 %tobool.not.i.i207, label %sw.bb57.if.end.i.i213_crit_edge, label %land.lhs.true.i.i209

sw.bb57.if.end.i.i213_crit_edge:                  ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i213

land.lhs.true.i.i209:                             ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #8
  %flags.i.i208 = getelementptr inbounds %struct.ath11k_base, ptr %call, i32 1, i32 3, i32 1, i32 3
  %58 = ptrtoint ptr %flags.i.i208 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %flags.i.i208, align 4
  br label %if.end.i.i213

if.end.i.i213:                                    ; preds = %land.lhs.true.i.i209, %sw.bb57.if.end.i.i213_crit_edge
  %mem.i.i210 = getelementptr inbounds %struct.ath11k_base, ptr %call, i32 0, i32 10
  %60 = ptrtoint ptr %mem.i.i210 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mem.i.i210, align 4
  %add.ptr.i.i211 = getelementptr i8, ptr %61, i32 548
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i211) #6, !srcloc !277
  %63 = call i32 @llvm.bswap.i32(i32 %62) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !278
  %64 = ptrtoint ptr %wakeup_mhi.i.i206 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %wakeup_mhi.i.i206, align 2, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool30.not.i.i212 = icmp eq i8 %65, 0
  br i1 %tobool30.not.i.i212, label %if.end.i.i213.ath11k_pci_read32.exit.i221_crit_edge, label %land.lhs.true31.i.i215

if.end.i.i213.ath11k_pci_read32.exit.i221_crit_edge: ; preds = %if.end.i.i213
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_read32.exit.i221

land.lhs.true31.i.i215:                           ; preds = %if.end.i.i213
  call void @__sanitizer_cov_trace_pc() #8
  %flags32.i.i214 = getelementptr inbounds %struct.ath11k_base, ptr %call, i32 1, i32 3, i32 1, i32 3
  %66 = ptrtoint ptr %flags32.i.i214 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %flags32.i.i214, align 4
  br label %ath11k_pci_read32.exit.i221

ath11k_pci_read32.exit.i221:                      ; preds = %land.lhs.true31.i.i215, %if.end.i.i213.ath11k_pci_read32.exit.i221_crit_edge
  %and.i216 = lshr i32 %63, 8
  %shr.i217 = and i32 %and.i216, 15
  %and29.i218 = and i32 %63, 255
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %68 = load i32, ptr @ath11k_debug_mask, align 4
  %and32.i219 = and i32 %68, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i219)
  %tobool.not.i220 = icmp eq i32 %and32.i219, 0
  br i1 %tobool.not.i220, label %lor.lhs.false.i222, label %ath11k_pci_read32.exit.i221.if.then.i223_crit_edge

ath11k_pci_read32.exit.i221.if.then.i223_crit_edge: ; preds = %ath11k_pci_read32.exit.i221
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i223

lor.lhs.false.i222:                               ; preds = %ath11k_pci_read32.exit.i221
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_pci_probe, %if.then.i223)) #6
          to label %ath11k_pci_read_hw_version.exit224 [label %if.then.i223], !srcloc !279

if.then.i223:                                     ; preds = %lor.lhs.false.i222, %ath11k_pci_read32.exit.i221.if.then.i223_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef nonnull %call, i32 noundef 4096, ptr noundef nonnull @.str.50, i32 noundef %shr.i217, i32 noundef %and29.i218) #6
  br label %ath11k_pci_read_hw_version.exit224

ath11k_pci_read_hw_version.exit224:               ; preds = %if.then.i223, %lor.lhs.false.i222
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i217)
  %cond = icmp eq i32 %shr.i217, 2
  br i1 %cond, label %sw.bb59, label %ath11k_pci_read_hw_version.exit224.do.end69_crit_edge

ath11k_pci_read_hw_version.exit224.do.end69_crit_edge: ; preds = %ath11k_pci_read_hw_version.exit224
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end69

sw.bb59:                                          ; preds = %ath11k_pci_read_hw_version.exit224
  %trunc = trunc i32 %63 to i8
  %69 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.121)
  switch i8 %trunc, label %sw.bb59.do.end69_crit_edge [
    i8 0, label %sw.bb59.sw.epilog71_crit_edge
    i8 1, label %sw.bb59.sw.epilog71_crit_edge235
    i8 16, label %sw.bb59.sw.bb62_crit_edge
    i8 17, label %sw.bb59.sw.bb62_crit_edge236
  ]

sw.bb59.sw.bb62_crit_edge236:                     ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb62

sw.bb59.sw.bb62_crit_edge:                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb62

sw.bb59.sw.epilog71_crit_edge235:                 ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog71

sw.bb59.sw.epilog71_crit_edge:                    ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog71

sw.bb59.do.end69_crit_edge:                       ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end69

sw.bb62:                                          ; preds = %sw.bb59.sw.bb62_crit_edge, %sw.bb59.sw.bb62_crit_edge236
  br label %sw.epilog71

do.end69:                                         ; preds = %sw.bb59.do.end69_crit_edge, %ath11k_pci_read_hw_version.exit224.do.end69_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %shr.i217, i32 noundef %and29.i218) #10
  br label %err_pci_free_region

sw.epilog71:                                      ; preds = %sw.bb62, %sw.bb59.sw.epilog71_crit_edge, %sw.bb59.sw.epilog71_crit_edge235
  %storemerge = phi i32 [ 5, %sw.bb62 ], [ 4, %sw.bb59.sw.epilog71_crit_edge ], [ 4, %sw.bb59.sw.epilog71_crit_edge235 ]
  %70 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %storemerge, ptr %call, align 128
  %msi_config72 = getelementptr inbounds %struct.ath11k_base, ptr %call, i32 1, i32 3, i32 1, i32 1, i32 2
  %71 = ptrtoint ptr %msi_config72 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @ath11k_msi_config, ptr %msi_config72, align 4
  br label %sw.epilog79

do.end76:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %35) #10
  br label %err_pci_free_region

sw.epilog79:                                      ; preds = %sw.epilog71, %sw.bb54, %sw.bb49
  %call80 = call fastcc i32 @ath11k_pci_alloc_msi(ptr noundef %drv_priv.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.then82

if.then82:                                        ; preds = %sw.epilog79
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.23, i32 noundef %call80) #6
  br label %err_pci_free_region

if.end83:                                         ; preds = %sw.epilog79
  %call84 = call i32 @ath11k_core_pre_init(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end83.err_pci_disable_msi_crit_edge

if.end83.err_pci_disable_msi_crit_edge:           ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_pci_disable_msi

if.end87:                                         ; preds = %if.end83
  %call88 = call i32 @ath11k_mhi_register(ptr noundef %drv_priv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %if.then90

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.24, i32 noundef %call88) #6
  br label %err_pci_disable_msi

if.end91:                                         ; preds = %if.end87
  %call92 = call i32 @ath11k_hal_srng_init(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.end91.err_mhi_unregister_crit_edge

if.end91.err_mhi_unregister_crit_edge:            ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mhi_unregister

if.end95:                                         ; preds = %if.end91
  %call96 = call i32 @ath11k_ce_alloc_pipes(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %if.then98

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.25, i32 noundef %call96) #6
  br label %err_hal_srng_deinit

if.end99:                                         ; preds = %if.end95
  call fastcc void @ath11k_pci_init_qmi_ce_config(ptr noundef nonnull %call)
  %call100 = call fastcc i32 @ath11k_pci_config_irq(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end103, label %if.then102

if.then102:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.26, i32 noundef %call100) #6
  br label %err_ce_free

if.end103:                                        ; preds = %if.end99
  %call104 = call fastcc i32 @ath11k_pci_config_msi_data(ptr noundef %drv_priv.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %if.then106

if.then106:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.27, i32 noundef %call104) #6
  br label %err_free_irq

if.end107:                                        ; preds = %if.end103
  %call108 = call i32 @ath11k_core_init(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end107.cleanup_crit_edge, label %if.then110

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.28, i32 noundef %call108) #6
  br label %err_free_irq

err_free_irq:                                     ; preds = %if.then110, %if.then106
  %ret.0 = phi i32 [ %call104, %if.then106 ], [ %call108, %if.then110 ]
  call fastcc void @ath11k_pci_free_irq(ptr noundef nonnull %call)
  br label %err_ce_free

err_ce_free:                                      ; preds = %err_free_irq, %if.then102
  %ret.1 = phi i32 [ %call100, %if.then102 ], [ %ret.0, %err_free_irq ]
  call void @ath11k_ce_free_pipes(ptr noundef nonnull %call) #6
  br label %err_hal_srng_deinit

err_hal_srng_deinit:                              ; preds = %err_ce_free, %if.then98
  %ret.2 = phi i32 [ %call96, %if.then98 ], [ %ret.1, %err_ce_free ]
  call void @ath11k_hal_srng_deinit(ptr noundef nonnull %call) #6
  br label %err_mhi_unregister

err_mhi_unregister:                               ; preds = %err_hal_srng_deinit, %if.end91.err_mhi_unregister_crit_edge
  %ret.3 = phi i32 [ %call92, %if.end91.err_mhi_unregister_crit_edge ], [ %ret.2, %err_hal_srng_deinit ]
  call void @ath11k_mhi_unregister(ptr noundef %drv_priv.i) #6
  br label %err_pci_disable_msi

err_pci_disable_msi:                              ; preds = %err_mhi_unregister, %if.then90, %if.end83.err_pci_disable_msi_crit_edge
  %ret.4 = phi i32 [ %call84, %if.end83.err_pci_disable_msi_crit_edge ], [ %call88, %if.then90 ], [ %ret.3, %err_mhi_unregister ]
  %72 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %drv_priv.i, align 4
  call void @pci_free_irq_vectors(ptr noundef %73) #6
  br label %err_pci_free_region

err_pci_free_region:                              ; preds = %err_pci_disable_msi, %if.then82, %do.end76, %do.end69, %do.end52
  %ret.5 = phi i32 [ -95, %do.end76 ], [ -95, %do.end69 ], [ %call80, %if.then82 ], [ %ret.4, %err_pci_disable_msi ], [ -95, %do.end52 ]
  %74 = ptrtoint ptr %ab5 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ab5, align 4
  %76 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %drv_priv.i, align 4
  %mem.i = getelementptr inbounds %struct.ath11k_base, ptr %75, i32 0, i32 10
  %78 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mem.i, align 4
  call void @pci_iounmap(ptr noundef %77, ptr noundef %79) #6
  %80 = ptrtoint ptr %mem.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %mem.i, align 4
  call void @pci_clear_master(ptr noundef %77) #6
  call void @pci_release_region(ptr noundef %77, i32 noundef 0) #6
  %enable_cnt.i.i = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 51
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %enable_cnt.i.i, i32 noundef 4) #6
  %81 = ptrtoint ptr %enable_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %enable_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp.i.i = icmp slt i32 %82, 1
  br i1 %cmp.i.i, label %err_pci_free_region.err_free_core_crit_edge, label %if.then.i225

err_pci_free_region.err_free_core_crit_edge:      ; preds = %err_pci_free_region
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_core

if.then.i225:                                     ; preds = %err_pci_free_region
  call void @__sanitizer_cov_trace_pc() #8
  call void @pci_disable_device(ptr noundef %77) #6
  br label %err_free_core

err_free_core:                                    ; preds = %if.then.i225, %err_pci_free_region.err_free_core_crit_edge, %if.then18
  %ret.6 = phi i32 [ %call16, %if.then18 ], [ %ret.5, %err_pci_free_region.err_free_core_crit_edge ], [ %ret.5, %if.then.i225 ]
  call void @ath11k_core_free(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free_core, %if.end107.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.6, %err_free_core ], [ -12, %do.end ], [ 0, %if.end107.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_pci_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %drv_priv.i = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 61
  %flags.i = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 1, i32 3, i32 1, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ath11k_pci_set_irq_affinity_hint.exit_crit_edge

entry.ath11k_pci_set_irq_affinity_hint.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_set_irq_affinity_hint.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drv_priv.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 46
  %7 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq.i, align 4
  %call.i.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %8, ptr noundef null, i1 noundef zeroext true) #6
  br label %ath11k_pci_set_irq_affinity_hint.exit

ath11k_pci_set_irq_affinity_hint.exit:            ; preds = %if.end.i, %entry.ath11k_pci_set_irq_affinity_hint.exit_crit_edge
  %dev_flags = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 45
  %9 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %dev_flags, align 4
  %11 = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %ath11k_pci_set_irq_affinity_hint.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ath11k_pci_power_down(ptr noundef %1)
  tail call void @ath11k_debugfs_soc_destroy(ptr noundef %1) #6
  tail call void @ath11k_qmi_deinit_service(ptr noundef %1) #6
  br label %qmi_fail

if.end:                                           ; preds = %ath11k_pci_set_irq_affinity_hint.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 7, ptr noundef %dev_flags) #6
  tail call void @ath11k_core_deinit(ptr noundef %1) #6
  br label %qmi_fail

qmi_fail:                                         ; preds = %if.end, %if.then
  tail call void @ath11k_mhi_unregister(ptr noundef %drv_priv.i) #6
  tail call fastcc void @ath11k_pci_free_irq(ptr noundef %1)
  %12 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drv_priv.i, align 4
  tail call void @pci_free_irq_vectors(ptr noundef %13) #6
  %ab1.i = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 62, i32 4
  %14 = ptrtoint ptr %ab1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ab1.i, align 4
  %16 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drv_priv.i, align 4
  %mem.i = getelementptr inbounds %struct.ath11k_base, ptr %15, i32 0, i32 10
  %18 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mem.i, align 4
  tail call void @pci_iounmap(ptr noundef %17, ptr noundef %19) #6
  %20 = ptrtoint ptr %mem.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %mem.i, align 4
  tail call void @pci_clear_master(ptr noundef %17) #6
  tail call void @pci_release_region(ptr noundef %17, i32 noundef 0) #6
  %enable_cnt.i.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 51
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %enable_cnt.i.i, i32 noundef 4) #6
  %21 = ptrtoint ptr %enable_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %enable_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i.i = icmp slt i32 %22, 1
  br i1 %cmp.i.i, label %qmi_fail.ath11k_pci_free_region.exit_crit_edge, label %if.then.i

qmi_fail.ath11k_pci_free_region.exit_crit_edge:   ; preds = %qmi_fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_free_region.exit

if.then.i:                                        ; preds = %qmi_fail
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_disable_device(ptr noundef %17) #6
  br label %ath11k_pci_free_region.exit

ath11k_pci_free_region.exit:                      ; preds = %if.then.i, %qmi_fail.ath11k_pci_free_region.exit_crit_edge
  tail call void @ath11k_hal_srng_deinit(ptr noundef %1) #6
  tail call void @ath11k_ce_free_pipes(ptr noundef %1) #6
  tail call void @ath11k_core_free(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_pci_shutdown(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @ath11k_pci_power_down(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath11k_core_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath11k_pci_claim(ptr nocapture noundef readonly %ab_pci, ptr noundef %pdev) unnamed_addr #0 align 64 {
entry:
  %device_id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ab1 = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 1
  %0 = ptrtoint ptr %ab1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ab1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %device_id) #6
  %2 = ptrtoint ptr %device_id to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %device_id, align 2, !annotation !280
  %call = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 2, ptr noundef nonnull %device_id) #6
  %3 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device_id, align 2
  %dev_id = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 2
  %5 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %dev_id, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %6)
  %cmp.not = icmp eq i16 %4, %6
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv2 = zext i16 %6 to i32
  %conv = zext i16 %4 to i32
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef %1, ptr noundef nonnull @.str.43, i32 noundef %conv, i32 noundef %conv2) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = call i32 @pci_assign_resource(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef %call7) #6
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = call i32 @pci_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %call10) #6
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = call i32 @pci_request_region(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull @.str.3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef %1, ptr noundef nonnull @.str.46, i32 noundef %call14) #6
  br label %disable_device

if.end17:                                         ; preds = %if.end13
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef %1, ptr noundef nonnull @.str.47, i32 noundef 32, i32 noundef %call.i) #6
  br label %release_region

if.end21:                                         ; preds = %if.end17
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #6
  call void @pci_set_master(ptr noundef %pdev) #6
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %7 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp22 = icmp eq i32 %8, 0
  br i1 %cmp22, label %if.end21.cond.end_crit_edge, label %cond.false

if.end21.cond.end_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %9 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %resource, align 8
  %sub = add i32 %8, 1
  %add = sub i32 %sub, %10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end21.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end21.cond.end_crit_edge ]
  %mem_len = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %mem_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %mem_len, align 8
  %call29 = call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 0) #6
  %mem = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call29, ptr %mem, align 4
  %tobool31.not = icmp eq ptr %call29, null
  br i1 %tobool31.not, label %if.then32, label %do.body

if.then32:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef %1, ptr noundef nonnull @.str.48, i32 noundef 0) #6
  call void @pci_clear_master(ptr noundef %pdev) #6
  br label %release_region

do.body:                                          ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %13 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %lor.lhs.false, label %do.body.if.then37_crit_edge

do.body.if.then37_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then37

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_pci_claim, %if.then37)) #6
          to label %cleanup [label %if.then37], !srcloc !279

if.then37:                                        ; preds = %lor.lhs.false, %do.body.if.then37_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mem, align 4
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.49, ptr noundef %15) #6
  br label %cleanup

release_region:                                   ; preds = %if.then32, %if.then20
  %ret.0 = phi i32 [ %call.i, %if.then20 ], [ -5, %if.then32 ]
  call void @pci_release_region(ptr noundef %pdev, i32 noundef 0) #6
  br label %disable_device

disable_device:                                   ; preds = %release_region, %if.then16
  %ret.1 = phi i32 [ %call14, %if.then16 ], [ %ret.0, %release_region ]
  call void @pci_disable_device(ptr noundef %pdev) #6
  br label %cleanup

cleanup:                                          ; preds = %disable_device, %if.then37, %lor.lhs.false, %if.then12, %if.then8, %if.then
  %retval.0 = phi i32 [ 0, %if.then37 ], [ -5, %if.then ], [ %call7, %if.then8 ], [ %call10, %if.then12 ], [ %ret.1, %disable_device ], [ 0, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %device_id) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath11k_pci_alloc_msi(ptr noundef %ab_pci) unnamed_addr #0 align 64 {
entry:
  %control.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ab1 = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 1
  %0 = ptrtoint ptr %ab1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ab1, align 4
  %msi_config2 = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 6
  %2 = ptrtoint ptr %msi_config2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msi_config2, align 4
  %4 = ptrtoint ptr %ab_pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ab_pci, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %5, i32 noundef %7, i32 noundef %7, i32 noundef 2, ptr noundef null) #6
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %9)
  %cmp = icmp eq i32 %call.i, %9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #6
  %irq_flags = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 12
  %10 = ptrtoint ptr %irq_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 128, ptr %irq_flags, align 4
  br label %if.end15

if.else:                                          ; preds = %entry
  %11 = ptrtoint ptr %ab_pci to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ab_pci, align 4
  %call.i63 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %12, i32 noundef 1, i32 noundef 1, i32 noundef 2, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp7 = icmp slt i32 %call.i63, 0
  br i1 %cmp7, label %if.else.cleanup_crit_edge, label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.else
  %flags9 = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags9) #6
  %13 = ptrtoint ptr %msi_config2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @msi_config_one_msi, ptr %msi_config2, align 4
  %irq_flags11 = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 12
  %14 = ptrtoint ptr %irq_flags11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2176, ptr %irq_flags11, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %15 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %15, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then13_crit_edge

if.end.if.then13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_pci_alloc_msi, %if.then13)) #6
          to label %if.end15 [label %if.then13], !srcloc !279

if.then13:                                        ; preds = %lor.lhs.false, %if.end.if.then13_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %1, i32 noundef 4096, ptr noundef nonnull @.str.56) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %lor.lhs.false, %if.then
  %num_vectors.0 = phi i32 [ %call.i, %if.then ], [ %call.i63, %if.then13 ], [ %call.i63, %lor.lhs.false ]
  tail call void (ptr, ptr, ...) @ath11k_info(ptr noundef %1, ptr noundef nonnull @.str.57, i32 noundef %num_vectors.0) #6
  %16 = ptrtoint ptr %ab_pci to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ab_pci, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %control.i.i) #6
  %18 = ptrtoint ptr %control.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -1, ptr %control.i.i, align 2, !annotation !280
  %msi_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 20
  %19 = ptrtoint ptr %msi_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %msi_cap.i.i, align 1
  %conv.i.i = zext i8 %20 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 2
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %17, i32 noundef %add.i.i, ptr noundef nonnull %control.i.i) #6
  %21 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %control.i.i, align 2
  %23 = and i16 %22, -2
  store i16 %23, ptr %control.i.i, align 2
  %24 = ptrtoint ptr %msi_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %msi_cap.i.i, align 1
  %conv6.i.i = zext i8 %25 to i32
  %add7.i.i = add nuw nsw i32 %conv6.i.i, 2
  %call8.i.i = call i32 @pci_write_config_word(ptr noundef %17, i32 noundef %add7.i.i, i16 noundef zeroext %23) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %control.i.i) #6
  %26 = ptrtoint ptr %ab_pci to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ab_pci, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 46
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq, align 4
  %call.i64 = call ptr @irq_get_irq_data(i32 noundef %29) #6
  %tobool.not.i = icmp eq ptr %call.i64, null
  br i1 %tobool.not.i, label %if.end15.if.then19_crit_edge, label %irq_get_msi_desc.exit

if.end15.if.then19_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

irq_get_msi_desc.exit:                            ; preds = %if.end15
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call.i64, i32 0, i32 3
  %30 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %common.i, align 4
  %msi_desc.i = getelementptr inbounds %struct.irq_common_data, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %msi_desc.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %msi_desc.i, align 4
  %tobool18.not = icmp eq ptr %33, null
  br i1 %tobool18.not, label %irq_get_msi_desc.exit.if.then19_crit_edge, label %if.end20

irq_get_msi_desc.exit.if.then19_crit_edge:        ; preds = %irq_get_msi_desc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.then19:                                        ; preds = %irq_get_msi_desc.exit.if.then19_crit_edge, %if.end15.if.then19_crit_edge
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef %1, ptr noundef nonnull @.str.58) #6
  %34 = ptrtoint ptr %ab_pci to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ab_pci, align 4
  call void @pci_free_irq_vectors(ptr noundef %35) #6
  br label %cleanup

if.end20:                                         ; preds = %irq_get_msi_desc.exit
  %36 = getelementptr inbounds %struct.msi_desc, ptr %33, i32 0, i32 3, i32 2
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %msi_ep_base_data = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 4
  %39 = ptrtoint ptr %msi_ep_base_data to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %msi_ep_base_data, align 4
  %msi_attrib = getelementptr inbounds %struct.msi_desc, ptr %33, i32 0, i32 9, i32 1
  %40 = ptrtoint ptr %msi_attrib to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load = load i16, ptr %msi_attrib, align 4
  %41 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool21.not = icmp eq i16 %41, 0
  br i1 %tobool21.not, label %if.end20.do.body25_crit_edge, label %if.then22

if.end20.do.body25_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body25

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %flags23 = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 10
  call void @_set_bit(i32 noundef 1, ptr noundef %flags23) #6
  br label %do.body25

do.body25:                                        ; preds = %if.then22, %if.end20.do.body25_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %42 = load i32, ptr @ath11k_debug_mask, align 4
  %and26 = and i32 %42, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %lor.lhs.false28, label %do.body25.if.then30_crit_edge

do.body25.if.then30_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

lor.lhs.false28:                                  ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_pci_alloc_msi, %if.then30)) #6
          to label %cleanup [label %if.then30], !srcloc !279

if.then30:                                        ; preds = %lor.lhs.false28, %do.body25.if.then30_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %msi_ep_base_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %msi_ep_base_data, align 4
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %1, i32 noundef 4096, ptr noundef nonnull @.str.59, i32 noundef %44) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %lor.lhs.false28, %if.then19, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then30 ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.then19 ], [ 0, %lor.lhs.false28 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_core_pre_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_mhi_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_hal_srng_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_ce_alloc_pipes(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath11k_pci_init_qmi_ce_config(ptr noundef %ab) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ce_cfg = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 7
  %target_ce_config = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 12
  %0 = ptrtoint ptr %target_ce_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %target_ce_config, align 4
  %2 = ptrtoint ptr %ce_cfg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %ce_cfg, align 4
  %target_ce_count = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 13
  %3 = ptrtoint ptr %target_ce_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %target_ce_count, align 4
  %tgt_ce_len = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 7, i32 1
  %5 = ptrtoint ptr %tgt_ce_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tgt_ce_len, align 4
  %svc_to_ce_map = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 14
  %6 = ptrtoint ptr %svc_to_ce_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %svc_to_ce_map, align 4
  %svc_to_ce_map3 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 7, i32 2
  %8 = ptrtoint ptr %svc_to_ce_map3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %svc_to_ce_map3, align 4
  %svc_to_ce_map_len = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 15
  %9 = ptrtoint ptr %svc_to_ce_map_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %svc_to_ce_map_len, align 4
  %svc_to_ce_map_len5 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 7, i32 3
  %11 = ptrtoint ptr %svc_to_ce_map_len5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %svc_to_ce_map_len5, align 4
  %qmi_service_ins_id = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 9
  %12 = ptrtoint ptr %qmi_service_ins_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qmi_service_ins_id, align 4
  %service_ins_id = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 15
  %14 = ptrtoint ptr %service_ins_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %service_ins_id, align 4
  %shadow_reg_v2 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 7, i32 6
  %shadow_reg_v2_len = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 7, i32 7
  tail call void @ath11k_ce_get_shadow_config(ptr noundef %ab, ptr noundef %shadow_reg_v2, ptr noundef %shadow_reg_v2_len) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath11k_pci_config_irq(ptr noundef %ab) unnamed_addr #0 align 64 {
entry:
  %msi_data_start = alloca i32, align 4
  %msi_data_count = alloca i32, align 4
  %msi_irq_start = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msi_data_start) #6
  %0 = ptrtoint ptr %msi_data_start to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %msi_data_start, align 4, !annotation !280
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msi_data_count) #6
  %1 = ptrtoint ptr %msi_data_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %msi_data_count, align 4, !annotation !280
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msi_irq_start) #6
  %2 = ptrtoint ptr %msi_irq_start to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %msi_irq_start, align 4, !annotation !280
  %call2 = call i32 @ath11k_pci_get_user_msi_assignment(ptr noundef %drv_priv.i, ptr noundef nonnull @.str.52, ptr noundef nonnull %msi_data_count, ptr noundef nonnull %msi_data_start, ptr noundef nonnull %msi_irq_start)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 3
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %ath11k_pci_set_irq_affinity_hint.exit, label %if.end.for.cond.preheader_crit_edge

if.end.for.cond.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

ath11k_pci_set_irq_affinity_hint.exit:            ; preds = %if.end
  %6 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv_priv.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 46
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq.i, align 4
  %call.i.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %9, ptr noundef getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool5.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool5.not, label %ath11k_pci_set_irq_affinity_hint.exit.for.cond.preheader_crit_edge, label %if.then6

ath11k_pci_set_irq_affinity_hint.exit.for.cond.preheader_crit_edge: ; preds = %ath11k_pci_set_irq_affinity_hint.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %ath11k_pci_set_irq_affinity_hint.exit.for.cond.preheader_crit_edge, %if.end.for.cond.preheader_crit_edge
  %ce_count = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 11
  %10 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ce_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp79.not = icmp eq i32 %11, 0
  br i1 %cmp79.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %ce = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 14
  %irq_flags = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 3, i32 1, i32 1
  br label %for.body

if.then6:                                         ; preds = %ath11k_pci_set_irq_affinity_hint.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.61, i32 noundef %call.i.i.i) #6
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc21, %for.inc.for.body_crit_edge ]
  %msi_data_idx.080 = phi i32 [ 0, %for.body.lr.ph ], [ %msi_data_idx.1, %for.inc.for.body_crit_edge ]
  %call8 = tail call i32 @ath11k_ce_get_attr_flags(ptr noundef %ab, i32 noundef %i.081) #6
  %and = and i32 %call8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end11, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end11:                                         ; preds = %for.body
  %12 = ptrtoint ptr %msi_data_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msi_data_count, align 4
  %rem = urem i32 %msi_data_idx.080, %13
  %14 = ptrtoint ptr %msi_irq_start to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msi_irq_start, align 4
  %add = add i32 %15, %rem
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 -136
  %call.i = tail call i32 @pci_irq_vector(ptr noundef %add.ptr.i, i32 noundef %add) #6
  %arrayidx = getelementptr [12 x %struct.ath11k_ce_pipe], ptr %ce, i32 0, i32 %i.081
  %add14 = add i32 %i.081, 3
  %intr_tq = getelementptr [12 x %struct.ath11k_ce_pipe], ptr %ce, i32 0, i32 %i.081, i32 7
  tail call void @tasklet_setup(ptr noundef %intr_tq, ptr noundef nonnull @ath11k_pci_ce_tasklet) #6
  %18 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq_flags, align 4
  %arrayidx15 = getelementptr [52 x ptr], ptr @irq_name, i32 0, i32 %add14
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx15, align 4
  %call.i68 = tail call i32 @request_threaded_irq(i32 noundef %call.i, ptr noundef nonnull @ath11k_pci_ce_interrupt_handler, ptr noundef null, i32 noundef %19, ptr noundef %21, ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool17.not = icmp eq i32 %call.i68, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.62, i32 noundef %add14, i32 noundef %call.i68) #6
  br label %err_irq_affinity_cleanup

if.end19:                                         ; preds = %if.end11
  %arrayidx20 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 30, i32 %add14
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call.i, ptr %arrayidx20, align 4
  %inc = add i32 %msi_data_idx.080, 1
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags.i, align 4
  %25 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i70 = icmp eq i32 %25, 0
  br i1 %tobool.not.i70, label %if.end19.for.inc_crit_edge, label %if.end.i71

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i71:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = and i32 %i.081, 65535
  %add.i = add nuw nsw i32 %conv.i, 3
  %arrayidx.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 30, i32 %add.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  tail call void @disable_irq_nosync(i32 noundef %27) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end.i71, %if.end19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %msi_data_idx.1 = phi i32 [ %msi_data_idx.080, %for.body.for.inc_crit_edge ], [ %inc, %if.end19.for.inc_crit_edge ], [ %inc, %if.end.i71 ]
  %inc21 = add nuw i32 %i.081, 1
  %28 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ce_count, align 4
  %cmp = icmp ult i32 %inc21, %29
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call22 = tail call fastcc i32 @ath11k_pci_ext_irq_config(ptr noundef %ab)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %for.end.cleanup_crit_edge, label %for.end.err_irq_affinity_cleanup_crit_edge

for.end.err_irq_affinity_cleanup_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_irq_affinity_cleanup

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_irq_affinity_cleanup:                         ; preds = %for.end.err_irq_affinity_cleanup_crit_edge, %if.then18
  %ret.0 = phi i32 [ %call.i68, %if.then18 ], [ %call22, %for.end.err_irq_affinity_cleanup_crit_edge ]
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags.i, align 4
  %32 = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i73 = icmp eq i32 %32, 0
  br i1 %tobool.not.i73, label %if.end.i76, label %err_irq_affinity_cleanup.cleanup_crit_edge

err_irq_affinity_cleanup.cleanup_crit_edge:       ; preds = %err_irq_affinity_cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i76:                                       ; preds = %err_irq_affinity_cleanup
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %drv_priv.i, align 4
  %irq.i74 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 46
  %35 = ptrtoint ptr %irq.i74 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq.i74, align 4
  %call.i.i.i75 = tail call i32 @__irq_apply_affinity_hint(i32 noundef %36, ptr noundef null, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i76, %err_irq_affinity_cleanup.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %if.then6 ], [ %call2, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ %ret.0, %err_irq_affinity_cleanup.cleanup_crit_edge ], [ %ret.0, %if.end.i76 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msi_irq_start) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msi_data_count) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msi_data_start) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath11k_pci_config_msi_data(ptr nocapture noundef %ab_pci) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ab_pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ab_pci, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %3) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %irq_get_msi_desc.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

irq_get_msi_desc.exit:                            ; preds = %entry
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common.i, align 4
  %msi_desc.i = getelementptr inbounds %struct.irq_common_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %msi_desc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msi_desc.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %irq_get_msi_desc.exit.if.then_crit_edge, label %if.end

irq_get_msi_desc.exit.if.then_crit_edge:          ; preds = %irq_get_msi_desc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %irq_get_msi_desc.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %ab = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 1
  %8 = ptrtoint ptr %ab to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ab, align 4
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %9, ptr noundef nonnull @.str.58) #6
  %10 = ptrtoint ptr %ab_pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ab_pci, align 4
  tail call void @pci_free_irq_vectors(ptr noundef %11) #6
  br label %cleanup

if.end:                                           ; preds = %irq_get_msi_desc.exit
  %12 = getelementptr inbounds %struct.msi_desc, ptr %7, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %msi_ep_base_data = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 4
  %15 = ptrtoint ptr %msi_ep_base_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %msi_ep_base_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %16 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %16, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_pci_config_msi_data, %if.then4)) #6
          to label %cleanup [label %if.then4], !srcloc !279

if.then4:                                         ; preds = %lor.lhs.false, %if.end.if.then4_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  %ab5 = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 1
  %17 = ptrtoint ptr %ab5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ab5, align 4
  %19 = ptrtoint ptr %msi_ep_base_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msi_ep_base_data, align 4
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %18, i32 noundef 4096, ptr noundef nonnull @.str.118, i32 noundef %20) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %lor.lhs.false, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.then4 ], [ 0, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_core_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath11k_pci_free_irq(ptr noundef %ab) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ce_count = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 11
  %0 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ce_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11.not = icmp eq i32 %1, 0
  br i1 %cmp11.not, label %entry.for.body.i.preheader_crit_edge, label %for.body.lr.ph

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

for.body.lr.ph:                                   ; preds = %entry
  %ce = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = tail call i32 @ath11k_ce_get_attr_flags(ptr noundef %ab, i32 noundef %i.012) #6
  %and = and i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %i.012, 3
  %arrayidx = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 30, i32 %add
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr [12 x %struct.ath11k_ce_pipe], ptr %ce, i32 0, i32 %i.012
  %call2 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %arrayidx1) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.012, 1
  %4 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ce_count, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.body.i.preheader_crit_edge

for.inc.for.body.i.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.i.preheader:                             ; preds = %for.inc.for.body.i.preheader_crit_edge, %entry.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.019.i = phi i32 [ %inc7.i, %for.end.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.019.i
  %num_irq.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.019.i, i32 2
  %6 = ptrtoint ptr %num_irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp217.not.i = icmp eq i32 %7, 0
  br i1 %cmp217.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body3.i_crit_edge

for.body.i.for.body3.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body3.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.body.i.for.body3.i_crit_edge
  %j.018.i = phi i32 [ %inc.i, %for.body3.i.for.body3.i_crit_edge ], [ 0, %for.body.i.for.body3.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.019.i, i32 1, i32 %j.018.i
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 30, i32 %9
  %10 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %11, ptr noundef %arrayidx.i) #6
  %inc.i = add nuw i32 %j.018.i, 1
  %12 = ptrtoint ptr %num_irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_irq.i, align 4
  %cmp2.i = icmp ult i32 %inc.i, %13
  br i1 %cmp2.i, label %for.body3.i.for.body3.i_crit_edge, label %for.body3.i.for.end.i_crit_edge

for.body3.i.for.end.i_crit_edge:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i

for.end.i:                                        ; preds = %for.body3.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %napi.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.019.i, i32 6
  tail call void @__netif_napi_del(ptr noundef %napi.i) #6
  tail call void @synchronize_net() #6
  %inc7.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc7.i, 11
  br i1 %exitcond.not.i, label %ath11k_pci_free_ext_irq.exit, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ath11k_pci_free_ext_irq.exit:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_ce_free_pipes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_hal_srng_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_mhi_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_core_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_pci_ext_irq_enable(ptr noundef %ab) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_flags = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 45
  tail call void @_set_bit(i32 noundef 12, ptr noundef %dev_flags) #6
  br label %for.body

for.body:                                         ; preds = %ath11k_pci_ext_grp_enable.exit.for.body_crit_edge, %entry
  %i.08 = phi i32 [ 0, %entry ], [ %inc, %ath11k_pci_ext_grp_enable.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.08
  %napi_enabled = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.08, i32 5
  %0 = ptrtoint ptr %napi_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %napi_enabled, align 8, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %napi = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.08, i32 6
  tail call void @napi_enable(ptr noundef %napi) #6
  %2 = ptrtoint ptr %napi_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %napi_enabled, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 128
  %flags.i = getelementptr inbounds %struct.ath11k_base, ptr %4, i32 1, i32 3, i32 1, i32 3
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.ath11k_pci_ext_grp_enable.exit_crit_edge, label %for.cond.preheader.i

if.end.ath11k_pci_ext_grp_enable.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_ext_grp_enable.exit

for.cond.preheader.i:                             ; preds = %if.end
  %num_irq.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.08, i32 2
  %8 = ptrtoint ptr %num_irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp10.not.i = icmp eq i32 %9, 0
  br i1 %cmp10.not.i, label %for.cond.preheader.i.ath11k_pci_ext_grp_enable.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.ath11k_pci_ext_grp_enable.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_ext_grp_enable.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 128
  %arrayidx.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.08, i32 1, i32 %i.011.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr %struct.ath11k_base, ptr %11, i32 0, i32 30, i32 %13
  %14 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx3.i, align 4
  tail call void @enable_irq(i32 noundef %15) #6
  %inc.i = add nuw i32 %i.011.i, 1
  %16 = ptrtoint ptr %num_irq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_irq.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %17
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ath11k_pci_ext_grp_enable.exit_crit_edge

for.body.i.ath11k_pci_ext_grp_enable.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_ext_grp_enable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ath11k_pci_ext_grp_enable.exit:                   ; preds = %for.body.i.ath11k_pci_ext_grp_enable.exit_crit_edge, %for.cond.preheader.i.ath11k_pci_ext_grp_enable.exit_crit_edge, %if.end.ath11k_pci_ext_grp_enable.exit_crit_edge
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.end, label %ath11k_pci_ext_grp_enable.exit.for.body_crit_edge

ath11k_pci_ext_grp_enable.exit.for.body_crit_edge: ; preds = %ath11k_pci_ext_grp_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %ath11k_pci_ext_grp_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_pci_ext_irq_disable(ptr noundef %ab) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_flags.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 45
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %dev_flags.i) #6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.011.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.011.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 128
  %flags.i.i = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 1, i32 3, i32 1, i32 3
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i.i, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %for.body.i.ath11k_pci_ext_grp_disable.exit.i_crit_edge, label %for.cond.preheader.i.i

for.body.i.ath11k_pci_ext_grp_disable.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_ext_grp_disable.exit.i

for.cond.preheader.i.i:                           ; preds = %for.body.i
  %num_irq.i.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.011.i, i32 2
  %5 = ptrtoint ptr %num_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_irq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp10.not.i.i = icmp eq i32 %6, 0
  br i1 %cmp10.not.i.i, label %for.cond.preheader.i.i.ath11k_pci_ext_grp_disable.exit.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.ath11k_pci_ext_grp_disable.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_ext_grp_disable.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.011.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 128
  %arrayidx.i.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.011.i, i32 1, i32 %i.011.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx3.i.i = getelementptr %struct.ath11k_base, ptr %8, i32 0, i32 30, i32 %10
  %11 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx3.i.i, align 4
  tail call void @disable_irq_nosync(i32 noundef %12) #6
  %inc.i.i = add nuw i32 %i.011.i.i, 1
  %13 = ptrtoint ptr %num_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_irq.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %14
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.ath11k_pci_ext_grp_disable.exit.i_crit_edge

for.body.i.i.ath11k_pci_ext_grp_disable.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_ext_grp_disable.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

ath11k_pci_ext_grp_disable.exit.i:                ; preds = %for.body.i.i.ath11k_pci_ext_grp_disable.exit.i_crit_edge, %for.cond.preheader.i.i.ath11k_pci_ext_grp_disable.exit.i_crit_edge, %for.body.i.ath11k_pci_ext_grp_disable.exit.i_crit_edge
  %napi_enabled.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.011.i, i32 5
  %15 = ptrtoint ptr %napi_enabled.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %napi_enabled.i, align 8, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %ath11k_pci_ext_grp_disable.exit.i.if.end.i_crit_edge, label %if.then.i

ath11k_pci_ext_grp_disable.exit.i.if.end.i_crit_edge: ; preds = %ath11k_pci_ext_grp_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %ath11k_pci_ext_grp_disable.exit.i
  %napi.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.011.i, i32 6
  %state.i.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.011.i, i32 6, i32 1
  %17 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i.i, align 4
  %and1.i1.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1.i.i)
  %tobool.not2.i.i = icmp eq i32 %and1.i1.i.i, 0
  br i1 %tobool.not2.i.i, label %if.then.i.napi_synchronize.exit.i_crit_edge, label %if.then.i.while.body.i.i_crit_edge

if.then.i.while.body.i.i_crit_edge:               ; preds = %if.then.i
  br label %while.body.i.i

if.then.i.napi_synchronize.exit.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %napi_synchronize.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then.i.while.body.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %19 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %20, 1
  %tobool.not.i10.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i10.i, label %while.body.i.i.napi_synchronize.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.body.i.i.napi_synchronize.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %napi_synchronize.exit.i

napi_synchronize.exit.i:                          ; preds = %while.body.i.i.napi_synchronize.exit.i_crit_edge, %if.then.i.napi_synchronize.exit.i_crit_edge
  tail call void @napi_disable(ptr noundef %napi.i) #6
  %21 = ptrtoint ptr %napi_enabled.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %napi_enabled.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %napi_synchronize.exit.i, %ath11k_pci_ext_grp_disable.exit.i.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 11
  br i1 %exitcond.not.i, label %if.end.i.for.cond1.preheader.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end.i.for.cond1.preheader.i_crit_edge:         ; preds = %if.end.i
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.end.i.for.cond1.preheader.i_crit_edge, %if.end.i.for.cond1.preheader.i_crit_edge
  %i.017.i = phi i32 [ %inc7.i, %for.end.i.for.cond1.preheader.i_crit_edge ], [ 0, %if.end.i.for.cond1.preheader.i_crit_edge ]
  %num_irq.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.017.i, i32 2
  %22 = ptrtoint ptr %num_irq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp215.not.i = icmp eq i32 %23, 0
  br i1 %cmp215.not.i, label %for.cond1.preheader.i.for.end.i_crit_edge, label %for.cond1.preheader.i.for.body3.i_crit_edge

for.cond1.preheader.i.for.body3.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body3.i

for.cond1.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.cond1.preheader.i.for.body3.i_crit_edge
  %j.016.i = phi i32 [ %inc.i2, %for.body3.i.for.body3.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.017.i, i32 1, i32 %j.016.i
  %24 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 30, i32 %25
  %26 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx5.i, align 4
  tail call void @synchronize_irq(i32 noundef %27) #6
  %inc.i2 = add nuw i32 %j.016.i, 1
  %28 = ptrtoint ptr %num_irq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_irq.i, align 4
  %cmp2.i = icmp ult i32 %inc.i2, %29
  br i1 %cmp2.i, label %for.body3.i.for.body3.i_crit_edge, label %for.body3.i.for.end.i_crit_edge

for.body3.i.for.end.i_crit_edge:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i

for.end.i:                                        ; preds = %for.body3.i.for.end.i_crit_edge, %for.cond1.preheader.i.for.end.i_crit_edge
  %inc7.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i3 = icmp eq i32 %inc7.i, 11
  br i1 %exitcond.not.i3, label %ath11k_pci_sync_ext_irqs.exit, label %for.end.i.for.cond1.preheader.i_crit_edge

for.end.i.for.cond1.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader.i

ath11k_pci_sync_ext_irqs.exit:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_pci_start(ptr noundef %ab) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 61
  %flags = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drv_priv.i, align 4
  %link_ctl.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 3, i32 1
  %5 = ptrtoint ptr %link_ctl.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %link_ctl.i, align 4
  %call1.i = tail call i32 @pcie_capability_write_word(ptr noundef %4, i32 noundef 16, i16 noundef zeroext %6) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath11k_info(ptr noundef %ab, ptr noundef nonnull @.str.29) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i, %if.then.if.end_crit_edge
  %dev_flags.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 45
  tail call void @_set_bit(i32 noundef 11, ptr noundef %dev_flags.i) #6
  %ce_count.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 11
  %7 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ce_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7.not.i = icmp eq i32 %8, 0
  br i1 %cmp7.not.i, label %if.end.ath11k_pci_ce_irqs_enable.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.ath11k_pci_ce_irqs_enable.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_ce_irqs_enable.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %call.i8 = tail call i32 @ath11k_ce_get_attr_flags(ptr noundef %ab, i32 noundef %i.08.i) #6
  %and.i = and i32 %call.i8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i9 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i9, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = and i32 %i.08.i, 65535
  %add.i.i = add nuw nsw i32 %conv.i.i, 3
  %arrayidx.i.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 30, i32 %add.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  tail call void @enable_irq(i32 noundef %13) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.08.i, 1
  %14 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ce_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %15
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ath11k_pci_ce_irqs_enable.exit_crit_edge

for.inc.i.ath11k_pci_ce_irqs_enable.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_ce_irqs_enable.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ath11k_pci_ce_irqs_enable.exit:                   ; preds = %for.inc.i.ath11k_pci_ce_irqs_enable.exit_crit_edge, %if.end.ath11k_pci_ce_irqs_enable.exit_crit_edge
  tail call void @ath11k_ce_rx_post_buf(ptr noundef %ab) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_pci_stop(ptr noundef %ab) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ath11k_pci_ce_irq_disable_sync(ptr noundef %ab)
  tail call void @ath11k_ce_cleanup_pipes(ptr noundef %ab) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_pci_power_up(ptr noundef %ab) #0 align 64 {
entry:
  %control.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 61
  %register_window = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 1, i32 3, i32 1
  %0 = ptrtoint ptr %register_window to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %register_window, align 4
  %flags = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 3
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #6
  %ab1 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 62, i32 4
  %1 = ptrtoint ptr %ab1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ab1, align 4
  tail call fastcc void @ath11k_pci_sw_reset(ptr noundef %2, i1 noundef zeroext true)
  tail call fastcc void @ath11k_pci_aspm_disable(ptr noundef %drv_priv.i)
  %3 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drv_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %control.i.i) #6
  %5 = ptrtoint ptr %control.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %control.i.i, align 2, !annotation !280
  %msi_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 20
  %6 = ptrtoint ptr %msi_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %msi_cap.i.i, align 1
  %conv.i.i = zext i8 %7 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 2
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %4, i32 noundef %add.i.i, ptr noundef nonnull %control.i.i) #6
  %8 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %control.i.i, align 2
  %storemerge.i.i = or i16 %9, 1
  store i16 %storemerge.i.i, ptr %control.i.i, align 2
  %10 = ptrtoint ptr %msi_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %msi_cap.i.i, align 1
  %conv6.i.i = zext i8 %11 to i32
  %add7.i.i = add nuw nsw i32 %conv6.i.i, 2
  %call8.i.i = call i32 @pci_write_config_word(ptr noundef %4, i32 noundef %add7.i.i, i16 noundef zeroext %storemerge.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %control.i.i) #6
  %call2 = call i32 @ath11k_mhi_start(ptr noundef %drv_priv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.30, i32 noundef %call2) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %static_window_map = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 37, i32 4
  %12 = ptrtoint ptr %static_window_map to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %static_window_map, align 4, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not = icmp eq i8 %13, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %ab1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ab1, align 4
  %mem.i = getelementptr inbounds %struct.ath11k_base, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 12556
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !274
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1068695232) #6, !srcloc !275
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %if.then
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_pci_power_down(ptr noundef %ab) #0 align 64 {
entry:
  %control.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 61
  %flags.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 3
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %flags.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.ath11k_pci_aspm_restore.exit_crit_edge, label %if.then.i

entry.ath11k_pci_aspm_restore.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_aspm_restore.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %link_ctl.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 3, i32 1
  %2 = ptrtoint ptr %link_ctl.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %link_ctl.i, align 4
  %call1.i = tail call i32 @pcie_capability_write_word(ptr noundef %1, i32 noundef 16, i16 noundef zeroext %3) #6
  br label %ath11k_pci_aspm_restore.exit

ath11k_pci_aspm_restore.exit:                     ; preds = %if.then.i, %entry.ath11k_pci_aspm_restore.exit_crit_edge
  %ab1 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 62, i32 4
  %4 = ptrtoint ptr %ab1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ab1, align 4
  %wakeup_mhi.i.i = getelementptr inbounds %struct.ath11k_base, ptr %5, i32 0, i32 36, i32 45
  %6 = ptrtoint ptr %wakeup_mhi.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %wakeup_mhi.i.i, align 2, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %ath11k_pci_aspm_restore.exit.if.end.i.i_crit_edge, label %land.lhs.true.i.i

ath11k_pci_aspm_restore.exit.if.end.i.i_crit_edge: ; preds = %ath11k_pci_aspm_restore.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %ath11k_pci_aspm_restore.exit
  %flags.i.i = getelementptr inbounds %struct.ath11k_base, ptr %5, i32 1, i32 3, i32 1, i32 3
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool2.not.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool2.not.i.not.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %mhi_ctrl.i.i = getelementptr inbounds %struct.ath11k_base, ptr %5, i32 1, i32 3, i32 1, i32 1, i32 1, i32 4, i32 7
  %10 = ptrtoint ptr %mhi_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mhi_ctrl.i.i, align 4
  %mhi_dev.i.i = getelementptr inbounds %struct.mhi_controller, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %mhi_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mhi_dev.i.i, align 4
  %call4.i.i = tail call i32 @mhi_device_get_sync(ptr noundef %13) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %ath11k_pci_aspm_restore.exit.if.end.i.i_crit_edge
  %mem.i.i = getelementptr inbounds %struct.ath11k_base, ptr %5, i32 0, i32 10
  %14 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 12292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !274
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #6, !srcloc !275
  %16 = ptrtoint ptr %wakeup_mhi.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %wakeup_mhi.i.i, align 2, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool27.not.i.i = icmp eq i8 %17, 0
  br i1 %tobool27.not.i.i, label %if.end.i.i.ath11k_pci_force_wake.exit_crit_edge, label %land.lhs.true28.i.i

if.end.i.i.ath11k_pci_force_wake.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_force_wake.exit

land.lhs.true28.i.i:                              ; preds = %if.end.i.i
  %flags29.i.i = getelementptr inbounds %struct.ath11k_base, ptr %5, i32 1, i32 3, i32 1, i32 3
  %18 = ptrtoint ptr %flags29.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags29.i.i, align 4
  %and1.i63.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i63.i.i)
  %tobool31.not.i.not.i = icmp eq i32 %and1.i63.i.i, 0
  br i1 %tobool31.not.i.not.i, label %land.lhs.true28.i.i.ath11k_pci_force_wake.exit_crit_edge, label %if.then34.i.i

land.lhs.true28.i.i.ath11k_pci_force_wake.exit_crit_edge: ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_force_wake.exit

if.then34.i.i:                                    ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %mhi_ctrl35.i.i = getelementptr inbounds %struct.ath11k_base, ptr %5, i32 1, i32 3, i32 1, i32 1, i32 1, i32 4, i32 7
  %20 = ptrtoint ptr %mhi_ctrl35.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mhi_ctrl35.i.i, align 4
  %mhi_dev36.i.i = getelementptr inbounds %struct.mhi_controller, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %mhi_dev36.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mhi_dev36.i.i, align 4
  tail call void @mhi_device_put(ptr noundef %23) #6
  br label %ath11k_pci_force_wake.exit

ath11k_pci_force_wake.exit:                       ; preds = %if.then34.i.i, %land.lhs.true28.i.i.ath11k_pci_force_wake.exit_crit_edge, %if.end.i.i.ath11k_pci_force_wake.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #6
  %29 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %drv_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %control.i.i) #6
  %31 = ptrtoint ptr %control.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %control.i.i, align 2, !annotation !280
  %msi_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 20
  %32 = ptrtoint ptr %msi_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %msi_cap.i.i, align 1
  %conv.i.i = zext i8 %33 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 2
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %30, i32 noundef %add.i.i, ptr noundef nonnull %control.i.i) #6
  %34 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %control.i.i, align 2
  %36 = and i16 %35, -2
  store i16 %36, ptr %control.i.i, align 2
  %37 = ptrtoint ptr %msi_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %msi_cap.i.i, align 1
  %conv6.i.i = zext i8 %38 to i32
  %add7.i.i = add nuw nsw i32 %conv6.i.i, 2
  %call8.i.i = call i32 @pci_write_config_word(ptr noundef %30, i32 noundef %add7.i.i, i16 noundef zeroext %36) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %control.i.i) #6
  call void @ath11k_mhi_stop(ptr noundef %drv_priv.i) #6
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #6
  %39 = ptrtoint ptr %ab1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ab1, align 4
  call fastcc void @ath11k_pci_sw_reset(ptr noundef %40, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_pci_hif_suspend(ptr noundef %ab) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 61
  tail call void @ath11k_mhi_suspend(ptr noundef %drv_priv.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_pci_hif_resume(ptr noundef %ab) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 61
  tail call void @ath11k_mhi_resume(ptr noundef %drv_priv.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_pci_map_service_to_pipe(ptr nocapture noundef readonly %ab, i16 noundef zeroext %service_id, ptr nocapture noundef writeonly %ul_pipe, ptr nocapture noundef writeonly %dl_pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %svc_to_ce_map_len = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 15
  %0 = ptrtoint ptr %svc_to_ce_map_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %svc_to_ce_map_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp194.not = icmp eq i32 %1, 0
  br i1 %cmp194.not, label %entry.do.end149_crit_edge, label %for.body.lr.ph

entry.do.end149_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end149

for.body.lr.ph:                                   ; preds = %entry
  %svc_to_ce_map = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 14
  %conv = zext i16 %service_id to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ul_set.0.off0198 = phi i1 [ false, %for.body.lr.ph ], [ %ul_set.1.off0, %for.inc.for.body_crit_edge ]
  %dl_set.0.off0197 = phi i1 [ false, %for.body.lr.ph ], [ %dl_set.1.off0, %for.inc.for.body_crit_edge ]
  %i.0195 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %svc_to_ce_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %svc_to_ce_map, align 4
  %arrayidx = getelementptr %struct.service_to_pipe, ptr %3, i32 %i.0195
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp4.not = icmp eq i32 %6, %conv
  br i1 %cmp4.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %pipedir = getelementptr %struct.service_to_pipe, ptr %3, i32 %i.0195, i32 1
  %7 = ptrtoint ptr %pipedir to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pipedir, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %9, label %if.end.for.inc_crit_edge [
    i32 3, label %sw.bb62
    i32 1, label %sw.bb
    i32 2, label %sw.bb28
  ]

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb:                                            ; preds = %if.end
  br i1 %dl_set.0.off0197, label %do.end, label %sw.bb.if.end20_crit_edge, !prof !276

sw.bb.if.end20_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1293, i32 noundef 9, ptr noundef null) #6
  br label %if.end20

if.end20:                                         ; preds = %do.end, %sw.bb.if.end20_crit_edge
  %pipenum = getelementptr %struct.service_to_pipe, ptr %3, i32 %i.0195, i32 2
  br label %for.inc.sink.split

sw.bb28:                                          ; preds = %if.end
  br i1 %ul_set.0.off0198, label %do.end46, label %sw.bb28.if.end52_crit_edge, !prof !276

sw.bb28.if.end52_crit_edge:                       ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

do.end46:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1298, i32 noundef 9, ptr noundef null) #6
  br label %if.end52

if.end52:                                         ; preds = %do.end46, %sw.bb28.if.end52_crit_edge
  %pipenum60 = getelementptr %struct.service_to_pipe, ptr %3, i32 %i.0195, i32 2
  br label %for.inc.sink.split

sw.bb62:                                          ; preds = %if.end
  br i1 %dl_set.0.off0197, label %do.end80, label %sw.bb62.if.end86_crit_edge, !prof !276

sw.bb62.if.end86_crit_edge:                       ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

do.end80:                                         ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1303, i32 noundef 9, ptr noundef null) #6
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %sw.bb62.if.end86_crit_edge
  br i1 %ul_set.0.off0198, label %do.end111, label %if.end86.if.end117_crit_edge, !prof !276

if.end86.if.end117_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

do.end111:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1304, i32 noundef 9, ptr noundef null) #6
  br label %if.end117

if.end117:                                        ; preds = %do.end111, %if.end86.if.end117_crit_edge
  %pipenum125 = getelementptr %struct.service_to_pipe, ptr %3, i32 %i.0195, i32 2
  %11 = ptrtoint ptr %pipenum125 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pipenum125, align 4
  %13 = lshr i32 %12, 24
  %conv126 = trunc i32 %13 to i8
  %14 = ptrtoint ptr %dl_pipe to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv126, ptr %dl_pipe, align 1
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.end117, %if.end52, %if.end20
  %pipenum.sink = phi ptr [ %pipenum, %if.end20 ], [ %pipenum60, %if.end52 ], [ %pipenum125, %if.end117 ]
  %dl_pipe.sink = phi ptr [ %dl_pipe, %if.end20 ], [ %ul_pipe, %if.end52 ], [ %ul_pipe, %if.end117 ]
  %dl_set.1.off0.ph = phi i1 [ true, %if.end20 ], [ %dl_set.0.off0197, %if.end52 ], [ true, %if.end117 ]
  %ul_set.1.off0.ph = phi i1 [ %ul_set.0.off0198, %if.end20 ], [ true, %if.end52 ], [ true, %if.end117 ]
  %15 = ptrtoint ptr %pipenum.sink to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pipenum.sink, align 4
  %17 = lshr i32 %16, 24
  %conv27 = trunc i32 %17 to i8
  %18 = ptrtoint ptr %dl_pipe.sink to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv27, ptr %dl_pipe.sink, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %dl_set.1.off0 = phi i1 [ %dl_set.0.off0197, %for.body.for.inc_crit_edge ], [ %dl_set.0.off0197, %if.end.for.inc_crit_edge ], [ %dl_set.1.off0.ph, %for.inc.sink.split ]
  %ul_set.1.off0 = phi i1 [ %ul_set.0.off0198, %for.body.for.inc_crit_edge ], [ %ul_set.0.off0198, %if.end.for.inc_crit_edge ], [ %ul_set.1.off0.ph, %for.inc.sink.split ]
  %inc = add nuw i32 %i.0195, 1
  %19 = ptrtoint ptr %svc_to_ce_map_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %svc_to_ce_map_len, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %21 = select i1 %ul_set.1.off0, i1 %dl_set.1.off0, i1 false
  br i1 %21, label %for.end.if.end155_crit_edge, label %for.end.do.end149_crit_edge, !prof !281

for.end.do.end149_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end149

for.end.if.end155_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end155

do.end149:                                        ; preds = %for.end.do.end149_crit_edge, %entry.do.end149_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1313, i32 noundef 9, ptr noundef null) #6
  br label %if.end155

if.end155:                                        ; preds = %do.end149, %for.end.if.end155_crit_edge
  %. = phi i32 [ -2, %do.end149 ], [ 0, %for.end.if.end155_crit_edge ]
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_get_user_msi_assignment(ptr nocapture noundef readonly %ab, ptr noundef %user_name, ptr nocapture noundef %num_vectors, ptr nocapture noundef %user_base_data, ptr nocapture noundef %base_vector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 61
  %call1 = tail call i32 @ath11k_pci_get_user_msi_assignment(ptr noundef %drv_priv.i, ptr noundef %user_name, ptr noundef %num_vectors, ptr noundef %user_base_data, ptr noundef %base_vector)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_pci_get_msi_address(ptr noundef %ab, ptr noundef %msi_addr_lo, ptr noundef %msi_addr_hi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  %msi_cap = getelementptr i8, ptr %1, i32 -71
  %2 = ptrtoint ptr %msi_cap to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msi_cap, align 1
  %conv = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv, 4
  %call1 = tail call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef %add, ptr noundef %msi_addr_lo) #6
  %flags = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %msi_cap to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %msi_cap, align 1
  %conv4 = zext i8 %8 to i32
  %add5 = add nuw nsw i32 %conv4, 8
  %call6 = tail call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef %add5, ptr noundef %msi_addr_hi) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %msi_addr_hi to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %msi_addr_hi, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_pci_hif_ce_irq_enable(ptr noundef %ab) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_flags.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 45
  tail call void @_set_bit(i32 noundef 11, ptr noundef %dev_flags.i) #6
  %ce_count.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 11
  %0 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ce_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7.not.i = icmp eq i32 %1, 0
  br i1 %cmp7.not.i, label %entry.ath11k_pci_ce_irqs_enable.exit_crit_edge, label %for.body.lr.ph.i

entry.ath11k_pci_ce_irqs_enable.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_ce_irqs_enable.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i = tail call i32 @ath11k_ce_get_attr_flags(ptr noundef %ab, i32 noundef %i.08.i) #6
  %and.i = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i.i, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = and i32 %i.08.i, 65535
  %add.i.i = add nuw nsw i32 %conv.i.i, 3
  %arrayidx.i.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 30, i32 %add.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i, align 4
  tail call void @enable_irq(i32 noundef %6) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.08.i, 1
  %7 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ce_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %8
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ath11k_pci_ce_irqs_enable.exit_crit_edge

for.inc.i.ath11k_pci_ce_irqs_enable.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_ce_irqs_enable.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ath11k_pci_ce_irqs_enable.exit:                   ; preds = %for.inc.i.ath11k_pci_ce_irqs_enable.exit_crit_edge, %entry.ath11k_pci_ce_irqs_enable.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_pci_hif_ce_irq_disable(ptr noundef %ab) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ath11k_pci_ce_irq_disable_sync(ptr noundef %ab)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_pci_get_ce_msi_idx(ptr noundef %ab, i32 noundef %ce_id, ptr nocapture noundef writeonly %msi_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ce_count = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 11
  %0 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ce_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10.not = icmp eq i32 %1, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %msi_data_idx.012 = phi i32 [ %msi_data_idx.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.011 = phi i32 [ %inc4, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call i32 @ath11k_ce_get_attr_flags(ptr noundef %ab, i32 noundef %i.011) #6
  %and = and i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %i.011, i32 %ce_id)
  %cmp1 = icmp eq i32 %i.011, %ce_id
  br i1 %cmp1, label %if.end.for.end_crit_edge, label %if.end3

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i32 %msi_data_idx.012, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end3, %for.body.for.inc_crit_edge
  %msi_data_idx.1 = phi i32 [ %msi_data_idx.012, %for.body.for.inc_crit_edge ], [ %inc, %if.end3 ]
  %inc4 = add nuw i32 %i.011, 1
  %2 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ce_count, align 4
  %cmp = icmp ult i32 %inc4, %3
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %msi_data_idx.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %msi_data_idx.012, %if.end.for.end_crit_edge ], [ %msi_data_idx.1, %for.inc.for.end_crit_edge ]
  %4 = ptrtoint ptr %msi_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %msi_data_idx.0.lcssa, ptr %msi_idx, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_ce_rx_post_buf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_write_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_ce_get_attr_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath11k_pci_ce_irq_disable_sync(ptr noundef %ab) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_flags.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 45
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %dev_flags.i) #6
  %ce_count.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 11
  %0 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ce_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7.not.i = icmp eq i32 %1, 0
  br i1 %cmp7.not.i, label %entry.ath11k_pci_kill_tasklets.exit_crit_edge, label %for.body.lr.ph.i

entry.ath11k_pci_kill_tasklets.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_kill_tasklets.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i = tail call i32 @ath11k_ce_get_attr_flags(ptr noundef %ab, i32 noundef %i.08.i) #6
  %and.i = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i.i, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = and i32 %i.08.i, 65535
  %add.i.i = add nuw nsw i32 %conv.i.i, 3
  %arrayidx.i.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 30, i32 %add.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i, align 4
  tail call void @disable_irq_nosync(i32 noundef %6) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.08.i, 1
  %7 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ce_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %8
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %ath11k_pci_ce_irqs_disable.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ath11k_pci_ce_irqs_disable.exit:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6.not.i = icmp eq i32 %8, 0
  br i1 %cmp6.not.i, label %ath11k_pci_ce_irqs_disable.exit.ath11k_pci_kill_tasklets.exit_crit_edge, label %ath11k_pci_ce_irqs_disable.exit.for.body.i7_crit_edge

ath11k_pci_ce_irqs_disable.exit.for.body.i7_crit_edge: ; preds = %ath11k_pci_ce_irqs_disable.exit
  br label %for.body.i7

ath11k_pci_ce_irqs_disable.exit.ath11k_pci_kill_tasklets.exit_crit_edge: ; preds = %ath11k_pci_ce_irqs_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_kill_tasklets.exit

for.body.i7:                                      ; preds = %for.inc.i11.for.body.i7_crit_edge, %ath11k_pci_ce_irqs_disable.exit.for.body.i7_crit_edge
  %i.07.i = phi i32 [ %inc.i9, %for.inc.i11.for.body.i7_crit_edge ], [ 0, %ath11k_pci_ce_irqs_disable.exit.for.body.i7_crit_edge ]
  %call.i4 = tail call i32 @ath11k_ce_get_attr_flags(ptr noundef %ab, i32 noundef %i.07.i) #6
  %and.i5 = and i32 %call.i4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5)
  %tobool.not.i6 = icmp eq i32 %and.i5, 0
  br i1 %tobool.not.i6, label %if.end.i8, label %for.body.i7.for.inc.i11_crit_edge

for.body.i7.for.inc.i11_crit_edge:                ; preds = %for.body.i7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i11

if.end.i8:                                        ; preds = %for.body.i7
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add i32 %i.07.i, 3
  %arrayidx.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 30, i32 %add.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  tail call void @synchronize_irq(i32 noundef %10) #6
  br label %for.inc.i11

for.inc.i11:                                      ; preds = %if.end.i8, %for.body.i7.for.inc.i11_crit_edge
  %inc.i9 = add nuw i32 %i.07.i, 1
  %11 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ce_count.i, align 4
  %cmp.i10 = icmp ult i32 %inc.i9, %12
  br i1 %cmp.i10, label %for.inc.i11.for.body.i7_crit_edge, label %ath11k_pci_sync_ce_irqs.exit

for.inc.i11.for.body.i7_crit_edge:                ; preds = %for.inc.i11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i7

ath11k_pci_sync_ce_irqs.exit:                     ; preds = %for.inc.i11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %phi.cmp = icmp eq i32 %12, 0
  br i1 %phi.cmp, label %ath11k_pci_sync_ce_irqs.exit.ath11k_pci_kill_tasklets.exit_crit_edge, label %for.body.lr.ph.i14

ath11k_pci_sync_ce_irqs.exit.ath11k_pci_kill_tasklets.exit_crit_edge: ; preds = %ath11k_pci_sync_ce_irqs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_kill_tasklets.exit

for.body.lr.ph.i14:                               ; preds = %ath11k_pci_sync_ce_irqs.exit
  %ce.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 14
  br label %for.body.i19

for.body.i19:                                     ; preds = %cleanup.i.for.body.i19_crit_edge, %for.body.lr.ph.i14
  %i.08.i15 = phi i32 [ 0, %for.body.lr.ph.i14 ], [ %inc.i21, %cleanup.i.for.body.i19_crit_edge ]
  %call.i16 = tail call i32 @ath11k_ce_get_attr_flags(ptr noundef %ab, i32 noundef %i.08.i15) #6
  %and.i17 = and i32 %call.i16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.not.i18 = icmp eq i32 %and.i17, 0
  br i1 %tobool.not.i18, label %if.end.i20, label %for.body.i19.cleanup.i_crit_edge

for.body.i19.cleanup.i_crit_edge:                 ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end.i20:                                       ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #8
  %intr_tq.i = getelementptr [12 x %struct.ath11k_ce_pipe], ptr %ce.i, i32 0, i32 %i.08.i15, i32 7
  tail call void @tasklet_kill(ptr noundef %intr_tq.i) #6
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i20, %for.body.i19.cleanup.i_crit_edge
  %inc.i21 = add nuw i32 %i.08.i15, 1
  %13 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ce_count.i, align 4
  %cmp.i22 = icmp ult i32 %inc.i21, %14
  br i1 %cmp.i22, label %cleanup.i.for.body.i19_crit_edge, label %cleanup.i.ath11k_pci_kill_tasklets.exit_crit_edge

cleanup.i.ath11k_pci_kill_tasklets.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_kill_tasklets.exit

cleanup.i.for.body.i19_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i19

ath11k_pci_kill_tasklets.exit:                    ; preds = %cleanup.i.ath11k_pci_kill_tasklets.exit_crit_edge, %ath11k_pci_sync_ce_irqs.exit.ath11k_pci_kill_tasklets.exit_crit_edge, %ath11k_pci_ce_irqs_disable.exit.ath11k_pci_kill_tasklets.exit_crit_edge, %entry.ath11k_pci_kill_tasklets.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_ce_cleanup_pipes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath11k_pci_sw_reset(ptr noundef %ab, i1 noundef zeroext %power_on) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %__ms.018 = phi i32 [ 100, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.018, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #6
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body
  br i1 %power_on, label %if.then, label %while.end.if.end4_crit_edge

while.end.if.end4_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %while.end
  tail call fastcc void @ath11k_pci_enable_ltssm(ptr noundef %ab)
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef 31490600, i32 noundef -1) #6
  %call.i = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef 33030940) #6
  %and.i = and i32 %call.i, -5
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef 33030940, i32 noundef %and.i) #6
  %fix_l1ss = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 39
  %1 = ptrtoint ptr %fix_l1ss to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fix_l1ss, align 1, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then3

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.then
  %regs.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 8
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %pcie_qserdes_sysclk_en_sel.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %4, i32 0, i32 45
  %5 = ptrtoint ptr %pcie_qserdes_sysclk_en_sel.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pcie_qserdes_sysclk_en_sel.i, align 4
  %call.i.i = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 16
  br i1 %cmp.i.i, label %if.then3.if.end.i_crit_edge, label %for.body.i.preheader.i

if.then3.if.end.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.body.i.preheader.i:                           ; preds = %if.then3
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef %6, i32 noundef 16) #6
  %call3.i.i = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call3.i.i)
  %cmp5.i.i = icmp eq i32 %call3.i.i, 16
  br i1 %cmp5.i.i, label %for.body.i.preheader.i.if.end.i_crit_edge, label %if.end7.i.i

for.body.i.preheader.i.if.end.i_crit_edge:        ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end7.i.i:                                      ; preds = %for.body.i.preheader.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 429496000) #6
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef %6, i32 noundef 16) #6
  %call3.i.1.i = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call3.i.1.i)
  %cmp5.i.1.i = icmp eq i32 %call3.i.1.i, 16
  br i1 %cmp5.i.1.i, label %if.end7.i.i.if.end.i_crit_edge, label %if.end7.i.1.i

if.end7.i.i.if.end.i_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end7.i.1.i:                                    ; preds = %if.end7.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 429496000) #6
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef %6, i32 noundef 16) #6
  %call3.i.2.i = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call3.i.2.i)
  %cmp5.i.2.i = icmp eq i32 %call3.i.2.i, 16
  br i1 %cmp5.i.2.i, label %if.end7.i.1.i.if.end.i_crit_edge, label %if.end7.i.2.i

if.end7.i.1.i.if.end.i_crit_edge:                 ; preds = %if.end7.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end7.i.2.i:                                    ; preds = %if.end7.i.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 429496000) #6
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef %6, i32 noundef 16) #6
  %call3.i.3.i = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call3.i.3.i)
  %cmp5.i.3.i = icmp eq i32 %call3.i.3.i, 16
  br i1 %cmp5.i.3.i, label %if.end7.i.2.i.if.end.i_crit_edge, label %if.end7.i.3.i

if.end7.i.2.i.if.end.i_crit_edge:                 ; preds = %if.end7.i.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end7.i.3.i:                                    ; preds = %if.end7.i.2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 429496000) #6
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef %6, i32 noundef 16) #6
  %call3.i.4.i = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call3.i.4.i)
  %cmp5.i.4.i = icmp eq i32 %call3.i.4.i, 16
  br i1 %cmp5.i.4.i, label %if.end7.i.3.i.if.end.i_crit_edge, label %if.end7.i.4.i

if.end7.i.3.i.if.end.i_crit_edge:                 ; preds = %if.end7.i.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end7.i.4.i:                                    ; preds = %if.end7.i.3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 429496000) #6
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef %6, i32 noundef 16) #6
  %call3.i.5.i = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call3.i.5.i)
  %cmp5.i.5.i = icmp eq i32 %call3.i.5.i, 16
  br i1 %cmp5.i.5.i, label %if.end7.i.4.i.if.end.i_crit_edge, label %if.end7.i.5.i

if.end7.i.4.i.if.end.i_crit_edge:                 ; preds = %if.end7.i.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end7.i.5.i:                                    ; preds = %if.end7.i.4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 429496000) #6
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef %6, i32 noundef 16) #6
  %call3.i.6.i = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call3.i.6.i)
  %cmp5.i.6.i = icmp eq i32 %call3.i.6.i, 16
  br i1 %cmp5.i.6.i, label %if.end7.i.5.i.if.end.i_crit_edge, label %if.end7.i.6.i

if.end7.i.5.i.if.end.i_crit_edge:                 ; preds = %if.end7.i.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end7.i.6.i:                                    ; preds = %if.end7.i.5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 429496000) #6
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef %6, i32 noundef 16) #6
  %call3.i.7.i = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call3.i.7.i)
  %cmp5.i.7.i = icmp eq i32 %call3.i.7.i, 16
  br i1 %cmp5.i.7.i, label %if.end7.i.6.i.if.end.i_crit_edge, label %if.end7.i.7.i

if.end7.i.6.i.if.end.i_crit_edge:                 ; preds = %if.end7.i.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end7.i.7.i:                                    ; preds = %if.end7.i.6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 429496000) #6
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef %6, i32 noundef 16) #6
  %call3.i.8.i = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call3.i.8.i)
  %cmp5.i.8.i = icmp eq i32 %call3.i.8.i, 16
  br i1 %cmp5.i.8.i, label %if.end7.i.7.i.if.end.i_crit_edge, label %if.end7.i.8.i

if.end7.i.7.i.if.end.i_crit_edge:                 ; preds = %if.end7.i.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end7.i.8.i:                                    ; preds = %if.end7.i.7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 429496000) #6
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef %6, i32 noundef 16) #6
  %call3.i.9.i = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call3.i.9.i)
  %cmp5.i.9.i = icmp eq i32 %call3.i.9.i, 16
  br i1 %cmp5.i.9.i, label %if.end7.i.8.i.if.end.i_crit_edge, label %if.end7.i.9.i

if.end7.i.8.i.if.end.i_crit_edge:                 ; preds = %if.end7.i.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end7.i.9.i:                                    ; preds = %if.end7.i.8.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 429496000) #6
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.37, i32 noundef %6, i32 noundef %call3.i.9.i, i32 noundef 16) #6
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end7.i.8.i.if.end.i_crit_edge, %if.end7.i.7.i.if.end.i_crit_edge, %if.end7.i.6.i.if.end.i_crit_edge, %if.end7.i.5.i.if.end.i_crit_edge, %if.end7.i.4.i.if.end.i_crit_edge, %if.end7.i.3.i.if.end.i_crit_edge, %if.end7.i.2.i.if.end.i_crit_edge, %if.end7.i.1.i.if.end.i_crit_edge, %if.end7.i.i.if.end.i_crit_edge, %for.body.i.preheader.i.if.end.i_crit_edge, %if.then3.if.end.i_crit_edge
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %pcie_pcs_osc_dtct_config_base.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %18, i32 0, i32 46
  %19 = ptrtoint ptr %pcie_pcs_osc_dtct_config_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pcie_pcs_osc_dtct_config_base.i, align 4
  %call.i1.i = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef %20) #6
  %and.i.i = and i32 %call.i1.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i)
  %cmp.i2.i = icmp eq i32 %and.i.i, 2
  br i1 %cmp.i2.i, label %if.end.i.if.end6.i_crit_edge, label %if.end.i.for.body.i8.i_crit_edge

if.end.i.for.body.i8.i_crit_edge:                 ; preds = %if.end.i
  br label %for.body.i8.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

for.body.i8.i:                                    ; preds = %if.end7.i11.i.for.body.i8.i_crit_edge, %if.end.i.for.body.i8.i_crit_edge
  %i.028.i4.i = phi i32 [ %inc.i9.i, %if.end7.i11.i.for.body.i8.i_crit_edge ], [ 0, %if.end.i.for.body.i8.i_crit_edge ]
  %v.027.i5.i = phi i32 [ %call3.i6.i, %if.end7.i11.i.for.body.i8.i_crit_edge ], [ %call.i1.i, %if.end.i.for.body.i8.i_crit_edge ]
  %and2.i.i = and i32 %v.027.i5.i, -256
  %or.i.i = or i32 %and2.i.i, 2
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef %20, i32 noundef %or.i.i) #6
  %call3.i6.i = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef %20) #6
  %and4.i.i = and i32 %call3.i6.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and4.i.i)
  %cmp5.i7.i = icmp eq i32 %and4.i.i, 2
  br i1 %cmp5.i7.i, label %for.body.i8.i.if.end6.i_crit_edge, label %if.end7.i11.i

for.body.i8.i.if.end6.i_crit_edge:                ; preds = %for.body.i8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.end7.i11.i:                                    ; preds = %for.body.i8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 429496000) #6
  %inc.i9.i = add nuw nsw i32 %i.028.i4.i, 1
  %exitcond.not.i10.i = icmp eq i32 %inc.i9.i, 10
  br i1 %exitcond.not.i10.i, label %if.then5.i, label %if.end7.i11.i.for.body.i8.i_crit_edge

if.end7.i11.i.for.body.i8.i_crit_edge:            ; preds = %if.end7.i11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i8.i

if.then5.i:                                       ; preds = %if.end7.i11.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.37, i32 noundef %20, i32 noundef %and4.i.i, i32 noundef 2) #6
  br label %cleanup.sink.split.i

if.end6.i:                                        ; preds = %for.body.i8.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %pcie_pcs_osc_dtct_config_base9.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %23, i32 0, i32 46
  %24 = ptrtoint ptr %pcie_pcs_osc_dtct_config_base9.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pcie_pcs_osc_dtct_config_base9.i, align 4
  %add.i = add i32 %25, 4
  %call.i15.i = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef %add.i) #6
  %and.i16.i = and i32 %call.i15.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 82, i32 %and.i16.i)
  %cmp.i17.i = icmp eq i32 %and.i16.i, 82
  br i1 %cmp.i17.i, label %if.end6.i.if.end13.i_crit_edge, label %if.end6.i.for.body.i26.i_crit_edge

if.end6.i.for.body.i26.i_crit_edge:               ; preds = %if.end6.i
  br label %for.body.i26.i

if.end6.i.if.end13.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

for.body.i26.i:                                   ; preds = %if.end7.i29.i.for.body.i26.i_crit_edge, %if.end6.i.for.body.i26.i_crit_edge
  %i.028.i19.i = phi i32 [ %inc.i27.i, %if.end7.i29.i.for.body.i26.i_crit_edge ], [ 0, %if.end6.i.for.body.i26.i_crit_edge ]
  %v.027.i20.i = phi i32 [ %call3.i23.i, %if.end7.i29.i.for.body.i26.i_crit_edge ], [ %call.i15.i, %if.end6.i.for.body.i26.i_crit_edge ]
  %and2.i21.i = and i32 %v.027.i20.i, -256
  %or.i22.i = or i32 %and2.i21.i, 82
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef %add.i, i32 noundef %or.i22.i) #6
  %call3.i23.i = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef %add.i) #6
  %and4.i24.i = and i32 %call3.i23.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 82, i32 %and4.i24.i)
  %cmp5.i25.i = icmp eq i32 %and4.i24.i, 82
  br i1 %cmp5.i25.i, label %for.body.i26.i.if.end13.i_crit_edge, label %if.end7.i29.i

for.body.i26.i.if.end13.i_crit_edge:              ; preds = %for.body.i26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.end7.i29.i:                                    ; preds = %for.body.i26.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 429496000) #6
  %inc.i27.i = add nuw nsw i32 %i.028.i19.i, 1
  %exitcond.not.i28.i = icmp eq i32 %inc.i27.i, 10
  br i1 %exitcond.not.i28.i, label %if.then12.i, label %if.end7.i29.i.for.body.i26.i_crit_edge

if.end7.i29.i.for.body.i26.i_crit_edge:           ; preds = %if.end7.i29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i26.i

if.then12.i:                                      ; preds = %if.end7.i29.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.37, i32 noundef %add.i, i32 noundef %and4.i24.i, i32 noundef 82) #6
  br label %cleanup.sink.split.i

if.end13.i:                                       ; preds = %for.body.i26.i.if.end13.i_crit_edge, %if.end6.i.if.end13.i_crit_edge
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %pcie_pcs_osc_dtct_config_base16.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %28, i32 0, i32 46
  %29 = ptrtoint ptr %pcie_pcs_osc_dtct_config_base16.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pcie_pcs_osc_dtct_config_base16.i, align 4
  %add17.i = add i32 %30, 12
  %call.i33.i = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef %add17.i) #6
  %and.i34.i = and i32 %call.i33.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i34.i)
  %cmp.i35.i = icmp eq i32 %and.i34.i, 255
  br i1 %cmp.i35.i, label %if.end13.i.if.end4_crit_edge, label %if.end13.i.for.body.i44.i_crit_edge

if.end13.i.for.body.i44.i_crit_edge:              ; preds = %if.end13.i
  br label %for.body.i44.i

if.end13.i.if.end4_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

for.body.i44.i:                                   ; preds = %if.end7.i47.i.for.body.i44.i_crit_edge, %if.end13.i.for.body.i44.i_crit_edge
  %i.028.i37.i = phi i32 [ %inc.i45.i, %if.end7.i47.i.for.body.i44.i_crit_edge ], [ 0, %if.end13.i.for.body.i44.i_crit_edge ]
  %v.027.i38.i = phi i32 [ %call3.i41.i, %if.end7.i47.i.for.body.i44.i_crit_edge ], [ %call.i33.i, %if.end13.i.for.body.i44.i_crit_edge ]
  %or.i40.i = or i32 %v.027.i38.i, 255
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef %add17.i, i32 noundef %or.i40.i) #6
  %call3.i41.i = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef %add17.i) #6
  %and4.i42.i = and i32 %call3.i41.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and4.i42.i)
  %cmp5.i43.i = icmp eq i32 %and4.i42.i, 255
  br i1 %cmp5.i43.i, label %for.body.i44.i.if.end4_crit_edge, label %if.end7.i47.i

for.body.i44.i.if.end4_crit_edge:                 ; preds = %for.body.i44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end7.i47.i:                                    ; preds = %for.body.i44.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 429496000) #6
  %inc.i45.i = add nuw nsw i32 %i.028.i37.i, 1
  %exitcond.not.i46.i = icmp eq i32 %inc.i45.i, 10
  br i1 %exitcond.not.i46.i, label %if.then20.i, label %if.end7.i47.i.for.body.i44.i_crit_edge

if.end7.i47.i.for.body.i44.i_crit_edge:           ; preds = %if.end7.i47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i44.i

if.then20.i:                                      ; preds = %if.end7.i47.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.37, i32 noundef %add17.i, i32 noundef %and4.i42.i, i32 noundef 255) #6
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then20.i, %if.then12.i, %if.then5.i, %if.end7.i.9.i
  %.str.36.sink.i = phi ptr [ @.str.36, %if.then20.i ], [ @.str.35, %if.then12.i ], [ @.str.34, %if.then5.i ], [ @.str.33, %if.end7.i.9.i ]
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull %.str.36.sink.i, i32 noundef -110) #6
  br label %if.end4

if.end4:                                          ; preds = %cleanup.sink.split.i, %for.body.i44.i.if.end4_crit_edge, %if.end13.i.if.end4_crit_edge, %if.then.if.end4_crit_edge, %while.end.if.end4_crit_edge
  tail call void @ath11k_mhi_clear_vector(ptr noundef %ab) #6
  tail call fastcc void @ath11k_pci_clear_dbg_registers(ptr noundef %ab)
  %wakeup_mhi.i.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 45
  %32 = ptrtoint ptr %wakeup_mhi.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %wakeup_mhi.i.i, align 2, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i.i, label %if.end4.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end4.if.end.i.i_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end4
  %flags.i.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 3
  %34 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool2.not.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool2.not.i.not.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %mhi_ctrl.i.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 1, i32 1, i32 4, i32 7
  %36 = ptrtoint ptr %mhi_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mhi_ctrl.i.i, align 4
  %mhi_dev.i.i = getelementptr inbounds %struct.mhi_controller, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %mhi_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mhi_dev.i.i, align 4
  %call4.i.i = tail call i32 @mhi_device_get_sync(ptr noundef %39) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end4.if.end.i.i_crit_edge
  %mem.i.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 10
  %40 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 12296
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !277
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !278
  %44 = ptrtoint ptr %wakeup_mhi.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %wakeup_mhi.i.i, align 2, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool30.not.i.i = icmp eq i8 %45, 0
  br i1 %tobool30.not.i.i, label %if.end.i.i.if.end.i68.i_crit_edge, label %land.lhs.true31.i.i

if.end.i.i.if.end.i68.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i68.i

land.lhs.true31.i.i:                              ; preds = %if.end.i.i
  %flags32.i.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 3
  %46 = ptrtoint ptr %flags32.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags32.i.i, align 4
  %and1.i64.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i64.i.i)
  %tobool34.not.i.not.i = icmp eq i32 %and1.i64.i.i, 0
  br i1 %tobool34.not.i.not.i, label %land.lhs.true31.i.i.ath11k_pci_read32.exit.i_crit_edge, label %if.then37.i.i

land.lhs.true31.i.i.ath11k_pci_read32.exit.i_crit_edge: ; preds = %land.lhs.true31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_read32.exit.i

if.then37.i.i:                                    ; preds = %land.lhs.true31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %mhi_ctrl38.i.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 1, i32 1, i32 4, i32 7
  %48 = ptrtoint ptr %mhi_ctrl38.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mhi_ctrl38.i.i, align 4
  %mhi_dev39.i.i = getelementptr inbounds %struct.mhi_controller, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %mhi_dev39.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mhi_dev39.i.i, align 4
  tail call void @mhi_device_put(ptr noundef %51) #6
  br label %ath11k_pci_read32.exit.i

ath11k_pci_read32.exit.i:                         ; preds = %if.then37.i.i, %land.lhs.true31.i.i.ath11k_pci_read32.exit.i_crit_edge
  %52 = ptrtoint ptr %wakeup_mhi.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %.pr.i = load i8, ptr %wakeup_mhi.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool.not.i59.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool.not.i59.i, label %ath11k_pci_read32.exit.i.if.end.i68.i_crit_edge, label %land.lhs.true.i63.i

ath11k_pci_read32.exit.i.if.end.i68.i_crit_edge:  ; preds = %ath11k_pci_read32.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i68.i

land.lhs.true.i63.i:                              ; preds = %ath11k_pci_read32.exit.i
  %53 = ptrtoint ptr %flags32.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %flags32.i.i, align 4
  %and1.i.i61.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i61.i)
  %tobool2.not.i62.not.i = icmp eq i32 %and1.i.i61.i, 0
  br i1 %tobool2.not.i62.not.i, label %land.lhs.true.i63.i.if.end.i68.i_crit_edge, label %if.then.i67.i

land.lhs.true.i63.i.if.end.i68.i_crit_edge:       ; preds = %land.lhs.true.i63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i68.i

if.then.i67.i:                                    ; preds = %land.lhs.true.i63.i
  call void @__sanitizer_cov_trace_pc() #8
  %mhi_ctrl.i64.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 1, i32 1, i32 4, i32 7
  %55 = ptrtoint ptr %mhi_ctrl.i64.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mhi_ctrl.i64.i, align 4
  %mhi_dev.i65.i = getelementptr inbounds %struct.mhi_controller, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %mhi_dev.i65.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mhi_dev.i65.i, align 4
  %call4.i66.i = tail call i32 @mhi_device_get_sync(ptr noundef %58) #6
  br label %if.end.i68.i

if.end.i68.i:                                     ; preds = %if.then.i67.i, %land.lhs.true.i63.i.if.end.i68.i_crit_edge, %ath11k_pci_read32.exit.i.if.end.i68.i_crit_edge, %if.end.i.i.if.end.i68.i_crit_edge
  %or117.i = or i32 %43, 1
  %59 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mem.i.i, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %60, i32 12296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !274
  tail call void @arm_heavy_mb() #6
  %61 = tail call i32 @llvm.bswap.i32(i32 %or117.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i, i32 %61) #6, !srcloc !275
  %62 = ptrtoint ptr %wakeup_mhi.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %wakeup_mhi.i.i, align 2, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool27.not.i.i = icmp eq i8 %63, 0
  br i1 %tobool27.not.i.i, label %if.end.i68.i.ath11k_pci_write32.exit.i_crit_edge, label %land.lhs.true28.i.i

if.end.i68.i.ath11k_pci_write32.exit.i_crit_edge: ; preds = %if.end.i68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_write32.exit.i

land.lhs.true28.i.i:                              ; preds = %if.end.i68.i
  %flags29.i.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 3
  %64 = ptrtoint ptr %flags29.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %flags29.i.i, align 4
  %and1.i63.i.i = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i63.i.i)
  %tobool31.not.i.not.i = icmp eq i32 %and1.i63.i.i, 0
  br i1 %tobool31.not.i.not.i, label %land.lhs.true28.i.i.ath11k_pci_write32.exit.i_crit_edge, label %if.then34.i.i

land.lhs.true28.i.i.ath11k_pci_write32.exit.i_crit_edge: ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_write32.exit.i

if.then34.i.i:                                    ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %mhi_ctrl35.i.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 1, i32 1, i32 4, i32 7
  %66 = ptrtoint ptr %mhi_ctrl35.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mhi_ctrl35.i.i, align 4
  %mhi_dev36.i.i = getelementptr inbounds %struct.mhi_controller, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %mhi_dev36.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mhi_dev36.i.i, align 4
  tail call void @mhi_device_put(ptr noundef %69) #6
  br label %ath11k_pci_write32.exit.i

ath11k_pci_write32.exit.i:                        ; preds = %if.then34.i.i, %land.lhs.true28.i.i.ath11k_pci_write32.exit.i_crit_edge, %if.end.i68.i.ath11k_pci_write32.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 214748000) #6
  %and.i13 = and i32 %43, -2
  %80 = ptrtoint ptr %wakeup_mhi.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %wakeup_mhi.i.i, align 2, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i72.i = icmp eq i8 %81, 0
  br i1 %tobool.not.i72.i, label %ath11k_pci_write32.exit.i.if.end.i81.i_crit_edge, label %land.lhs.true.i76.i

ath11k_pci_write32.exit.i.if.end.i81.i_crit_edge: ; preds = %ath11k_pci_write32.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i81.i

land.lhs.true.i76.i:                              ; preds = %ath11k_pci_write32.exit.i
  %flags.i73.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 3
  %82 = ptrtoint ptr %flags.i73.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %flags.i73.i, align 4
  %and1.i.i74.i = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i74.i)
  %tobool2.not.i75.not.i = icmp eq i32 %and1.i.i74.i, 0
  br i1 %tobool2.not.i75.not.i, label %land.lhs.true.i76.i.if.end.i81.i_crit_edge, label %if.then.i80.i

land.lhs.true.i76.i.if.end.i81.i_crit_edge:       ; preds = %land.lhs.true.i76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i81.i

if.then.i80.i:                                    ; preds = %land.lhs.true.i76.i
  call void @__sanitizer_cov_trace_pc() #8
  %mhi_ctrl.i77.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 1, i32 1, i32 4, i32 7
  %84 = ptrtoint ptr %mhi_ctrl.i77.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mhi_ctrl.i77.i, align 4
  %mhi_dev.i78.i = getelementptr inbounds %struct.mhi_controller, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %mhi_dev.i78.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mhi_dev.i78.i, align 4
  %call4.i79.i = tail call i32 @mhi_device_get_sync(ptr noundef %87) #6
  br label %if.end.i81.i

if.end.i81.i:                                     ; preds = %if.then.i80.i, %land.lhs.true.i76.i.if.end.i81.i_crit_edge, %ath11k_pci_write32.exit.i.if.end.i81.i_crit_edge
  %88 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mem.i.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %89, i32 12296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !274
  tail call void @arm_heavy_mb() #6
  %90 = tail call i32 @llvm.bswap.i32(i32 %and.i13) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i, i32 %90) #6, !srcloc !275
  %91 = ptrtoint ptr %wakeup_mhi.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %wakeup_mhi.i.i, align 2, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool27.not.i84.i = icmp eq i8 %92, 0
  br i1 %tobool27.not.i84.i, label %if.end.i81.i.ath11k_pci_write32.exit92.i_crit_edge, label %land.lhs.true28.i88.i

if.end.i81.i.ath11k_pci_write32.exit92.i_crit_edge: ; preds = %if.end.i81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_write32.exit92.i

land.lhs.true28.i88.i:                            ; preds = %if.end.i81.i
  %flags29.i85.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 3
  %93 = ptrtoint ptr %flags29.i85.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %flags29.i85.i, align 4
  %and1.i63.i86.i = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i63.i86.i)
  %tobool31.not.i87.not.i = icmp eq i32 %and1.i63.i86.i, 0
  br i1 %tobool31.not.i87.not.i, label %land.lhs.true28.i88.i.ath11k_pci_write32.exit92.i_crit_edge, label %if.then34.i91.i

land.lhs.true28.i88.i.ath11k_pci_write32.exit92.i_crit_edge: ; preds = %land.lhs.true28.i88.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_write32.exit92.i

if.then34.i91.i:                                  ; preds = %land.lhs.true28.i88.i
  call void @__sanitizer_cov_trace_pc() #8
  %mhi_ctrl35.i89.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 1, i32 1, i32 4, i32 7
  %95 = ptrtoint ptr %mhi_ctrl35.i89.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mhi_ctrl35.i89.i, align 4
  %mhi_dev36.i90.i = getelementptr inbounds %struct.mhi_controller, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %mhi_dev36.i90.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mhi_dev36.i90.i, align 4
  tail call void @mhi_device_put(ptr noundef %98) #6
  br label %ath11k_pci_write32.exit92.i

ath11k_pci_write32.exit92.i:                      ; preds = %if.then34.i91.i, %land.lhs.true28.i88.i.ath11k_pci_write32.exit92.i_crit_edge, %if.end.i81.i.ath11k_pci_write32.exit92.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %99(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %103(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %106(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %107(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %108(i32 noundef 214748000) #6
  %109 = ptrtoint ptr %wakeup_mhi.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %wakeup_mhi.i.i, align 2, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i94.i = icmp eq i8 %110, 0
  br i1 %tobool.not.i94.i, label %ath11k_pci_write32.exit92.i.if.end.i103.i_crit_edge, label %land.lhs.true.i98.i

ath11k_pci_write32.exit92.i.if.end.i103.i_crit_edge: ; preds = %ath11k_pci_write32.exit92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i103.i

land.lhs.true.i98.i:                              ; preds = %ath11k_pci_write32.exit92.i
  %flags.i95.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 3
  %111 = ptrtoint ptr %flags.i95.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %flags.i95.i, align 4
  %and1.i.i96.i = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i96.i)
  %tobool2.not.i97.not.i = icmp eq i32 %and1.i.i96.i, 0
  br i1 %tobool2.not.i97.not.i, label %land.lhs.true.i98.i.if.end.i103.i_crit_edge, label %if.then.i102.i

land.lhs.true.i98.i.if.end.i103.i_crit_edge:      ; preds = %land.lhs.true.i98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i103.i

if.then.i102.i:                                   ; preds = %land.lhs.true.i98.i
  call void @__sanitizer_cov_trace_pc() #8
  %mhi_ctrl.i99.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 1, i32 1, i32 4, i32 7
  %113 = ptrtoint ptr %mhi_ctrl.i99.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mhi_ctrl.i99.i, align 4
  %mhi_dev.i100.i = getelementptr inbounds %struct.mhi_controller, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %mhi_dev.i100.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mhi_dev.i100.i, align 4
  %call4.i101.i = tail call i32 @mhi_device_get_sync(ptr noundef %116) #6
  br label %if.end.i103.i

if.end.i103.i:                                    ; preds = %if.then.i102.i, %land.lhs.true.i98.i.if.end.i103.i_crit_edge, %ath11k_pci_write32.exit92.i.if.end.i103.i_crit_edge
  %117 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mem.i.i, align 4
  %add.ptr.i105.i = getelementptr i8, ptr %118, i32 12296
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105.i) #6, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !278
  %120 = ptrtoint ptr %wakeup_mhi.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %wakeup_mhi.i.i, align 2, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool30.not.i106.i = icmp eq i8 %121, 0
  br i1 %tobool30.not.i106.i, label %if.end.i103.i.ath11k_pci_read32.exit114.i_crit_edge, label %land.lhs.true31.i110.i

if.end.i103.i.ath11k_pci_read32.exit114.i_crit_edge: ; preds = %if.end.i103.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_read32.exit114.i

land.lhs.true31.i110.i:                           ; preds = %if.end.i103.i
  %flags32.i107.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 3
  %122 = ptrtoint ptr %flags32.i107.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %flags32.i107.i, align 4
  %and1.i64.i108.i = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i64.i108.i)
  %tobool34.not.i109.not.i = icmp eq i32 %and1.i64.i108.i, 0
  br i1 %tobool34.not.i109.not.i, label %land.lhs.true31.i110.i.ath11k_pci_read32.exit114.i_crit_edge, label %if.then37.i113.i

land.lhs.true31.i110.i.ath11k_pci_read32.exit114.i_crit_edge: ; preds = %land.lhs.true31.i110.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_read32.exit114.i

if.then37.i113.i:                                 ; preds = %land.lhs.true31.i110.i
  call void @__sanitizer_cov_trace_pc() #8
  %mhi_ctrl38.i111.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 1, i32 1, i32 4, i32 7
  %124 = ptrtoint ptr %mhi_ctrl38.i111.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mhi_ctrl38.i111.i, align 4
  %mhi_dev39.i112.i = getelementptr inbounds %struct.mhi_controller, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %mhi_dev39.i112.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mhi_dev39.i112.i, align 4
  tail call void @mhi_device_put(ptr noundef %127) #6
  br label %ath11k_pci_read32.exit114.i

ath11k_pci_read32.exit114.i:                      ; preds = %if.then37.i113.i, %land.lhs.true31.i110.i.ath11k_pci_read32.exit114.i_crit_edge, %if.end.i103.i.ath11k_pci_read32.exit114.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %119)
  %cmp36.i = icmp eq i32 %119, -1
  br i1 %cmp36.i, label %if.then.i, label %ath11k_pci_read32.exit114.i.ath11k_pci_soc_global_reset.exit_crit_edge

ath11k_pci_read32.exit114.i.ath11k_pci_soc_global_reset.exit_crit_edge: ; preds = %ath11k_pci_read32.exit114.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_pci_soc_global_reset.exit

if.then.i:                                        ; preds = %ath11k_pci_read32.exit114.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.41) #6
  br label %ath11k_pci_soc_global_reset.exit

ath11k_pci_soc_global_reset.exit:                 ; preds = %if.then.i, %ath11k_pci_read32.exit114.i.ath11k_pci_soc_global_reset.exit_crit_edge
  tail call void @ath11k_mhi_set_mhictrl_reset(ptr noundef %ab) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath11k_pci_aspm_disable(ptr noundef %ab_pci) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ab1 = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 1
  %0 = ptrtoint ptr %ab1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ab1, align 4
  %2 = ptrtoint ptr %ab_pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ab_pci, align 4
  %link_ctl = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 11
  %call = tail call i32 @pcie_capability_read_word(ptr noundef %3, i32 noundef 16, ptr noundef %link_ctl) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %4 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_pci_aspm_disable, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !279

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %link_ctl to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %link_ctl, align 4
  %conv = zext i16 %6 to i32
  %and6.i = and i16 %6, 1
  %conv6 = zext i16 %and6.i to i32
  %7 = lshr i16 %6, 1
  %8 = and i16 %7, 1
  %div7.i2627 = zext i16 %8 to i32
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %1, i32 noundef 4096, ptr noundef nonnull @.str.42, i32 noundef %conv, i32 noundef %conv6, i32 noundef %div7.i2627) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %9 = ptrtoint ptr %ab_pci to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ab_pci, align 4
  %11 = ptrtoint ptr %link_ctl to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %link_ctl, align 4
  %13 = and i16 %12, -4
  %call15 = tail call i32 @pcie_capability_write_word(ptr noundef %10, i32 noundef 16, i16 noundef zeroext %13) #6
  %flags = getelementptr inbounds %struct.ath11k_pci, ptr %ab_pci, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_mhi_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath11k_pci_enable_ltssm(ptr noundef %ab) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef 31490480)
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %call, label %entry.if.end_crit_edge [
    i32 273, label %entry.do.body_crit_edge
    i32 -1, label %while.body.preheader
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #6
  br label %if.end

if.end:                                           ; preds = %while.body.preheader, %entry.if.end_crit_edge
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef 31490480, i32 noundef 273)
  %call3 = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef 31490480)
  %6 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %call3, label %if.end.if.end.1_crit_edge [
    i32 273, label %if.end.do.body_crit_edge
    i32 -1, label %while.body.preheader.1
  ]

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.1

while.body.preheader.1:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #6
  br label %if.end.1

if.end.1:                                         ; preds = %while.body.preheader.1, %if.end.if.end.1_crit_edge
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef 31490480, i32 noundef 273)
  %call3.1 = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef 31490480)
  %12 = zext i32 %call3.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %call3.1, label %if.end.1.if.end.2_crit_edge [
    i32 273, label %if.end.1.do.body_crit_edge
    i32 -1, label %while.body.preheader.2
  ]

if.end.1.do.body_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.2

while.body.preheader.2:                           ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #6
  br label %if.end.2

if.end.2:                                         ; preds = %while.body.preheader.2, %if.end.1.if.end.2_crit_edge
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef 31490480, i32 noundef 273)
  %call3.2 = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef 31490480)
  %18 = zext i32 %call3.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %call3.2, label %if.end.2.if.end.3_crit_edge [
    i32 273, label %if.end.2.do.body_crit_edge
    i32 -1, label %while.body.preheader.3
  ]

if.end.2.do.body_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.3

while.body.preheader.3:                           ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #6
  br label %if.end.3

if.end.3:                                         ; preds = %while.body.preheader.3, %if.end.2.if.end.3_crit_edge
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef 31490480, i32 noundef 273)
  %call3.3 = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef 31490480)
  %24 = zext i32 %call3.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %call3.3, label %if.end.3.if.end.4_crit_edge [
    i32 273, label %if.end.3.do.body_crit_edge
    i32 -1, label %while.body.preheader.4
  ]

if.end.3.do.body_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.4

while.body.preheader.4:                           ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #6
  br label %if.end.4

if.end.4:                                         ; preds = %while.body.preheader.4, %if.end.3.if.end.4_crit_edge
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef 31490480, i32 noundef 273)
  %call3.4 = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef 31490480)
  br label %do.body

do.body:                                          ; preds = %if.end.4, %if.end.3.do.body_crit_edge, %if.end.2.do.body_crit_edge, %if.end.1.do.body_crit_edge, %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  %val.0.lcssa = phi i32 [ 273, %entry.do.body_crit_edge ], [ %call3, %if.end.do.body_crit_edge ], [ %call3.1, %if.end.1.do.body_crit_edge ], [ %call3.2, %if.end.2.do.body_crit_edge ], [ %call3.3, %if.end.3.do.body_crit_edge ], [ %call3.4, %if.end.4 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %30 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %30, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %do.body.if.then6_crit_edge

do.body.if.then6_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_pci_enable_ltssm, %if.then6)) #6
          to label %do.end [label %if.then6], !srcloc !279

if.then6:                                         ; preds = %lor.lhs.false, %do.body.if.then6_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 4096, ptr noundef nonnull @.str.31, i32 noundef %val.0.lcssa) #6
  br label %do.end

do.end:                                           ; preds = %if.then6, %lor.lhs.false
  %call8 = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef 31720124)
  %or = or i32 %call8, 16
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef 31720124, i32 noundef %or)
  %call9 = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef 31720124)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %31 = load i32, ptr @ath11k_debug_mask, align 4
  %and11 = and i32 %31, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %do.end.if.then15_crit_edge

do.end.if.then15_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

lor.lhs.false13:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_pci_enable_ltssm, %if.then15)) #6
          to label %do.end18 [label %if.then15], !srcloc !279

if.then15:                                        ; preds = %lor.lhs.false13, %do.end.if.then15_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 4096, ptr noundef nonnull @.str.32, i32 noundef %call9) #6
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %lor.lhs.false13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_mhi_clear_vector(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath11k_pci_clear_dbg_registers(ptr noundef %ab) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef 33031424)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %0 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_pci_clear_dbg_registers, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !279

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 4096, ptr noundef nonnull @.str.38, i32 noundef %call) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %call2 = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef 33031428)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %1 = load i32, ptr @ath11k_debug_mask, align 4
  %and4 = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %do.end.if.then8_crit_edge

do.end.if.then8_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

lor.lhs.false6:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_pci_clear_dbg_registers, %if.then8)) #6
          to label %do.end11 [label %if.then8], !srcloc !279

if.then8:                                         ; preds = %lor.lhs.false6, %do.end.if.then8_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 4096, ptr noundef nonnull @.str.39, i32 noundef %call2) #6
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %lor.lhs.false6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #6
  tail call void @ath11k_pci_write32(ptr noundef %ab, i32 noundef 33031428, i32 noundef 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #6
  %call19 = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef 33031428)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %22 = load i32, ptr @ath11k_debug_mask, align 4
  %and21 = and i32 %22, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %lor.lhs.false23, label %do.end11.if.then25_crit_edge

do.end11.if.then25_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then25

lor.lhs.false23:                                  ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_pci_clear_dbg_registers, %if.then25)) #6
          to label %do.end28 [label %if.then25], !srcloc !279

if.then25:                                        ; preds = %lor.lhs.false23, %do.end11.if.then25_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 4096, ptr noundef nonnull @.str.39, i32 noundef %call19) #6
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %lor.lhs.false23
  %call29 = tail call i32 @ath11k_pci_read32(ptr noundef %ab, i32 noundef 33031692)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %23 = load i32, ptr @ath11k_debug_mask, align 4
  %and31 = and i32 %23, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %lor.lhs.false33, label %do.end28.if.then35_crit_edge

do.end28.if.then35_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then35

lor.lhs.false33:                                  ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_pci_clear_dbg_registers, %if.then35)) #6
          to label %do.end38 [label %if.then35], !srcloc !279

if.then35:                                        ; preds = %lor.lhs.false33, %do.end28.if.then35_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 4096, ptr noundef nonnull @.str.40, i32 noundef %call29) #6
  br label %do.end38

do.end38:                                         ; preds = %if.then35, %lor.lhs.false33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_mhi_set_mhictrl_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_mhi_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_mhi_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_mhi_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_assign_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_region(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_region(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_ce_get_shadow_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_pci_ce_tasklet(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -28
  %pipe_num = getelementptr i8, ptr %t, i32 -24
  %0 = ptrtoint ptr %pipe_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pipe_num, align 4
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 3
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  tail call void @ath11k_ce_per_engine_service(ptr noundef %3, i16 noundef zeroext %1) #6
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %arrayidx = getelementptr %struct.ath11k_base, ptr %5, i32 0, i32 30, i32 %add
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  tail call void @enable_irq(i32 noundef %7) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_pci_ce_interrupt_handler(i32 noundef %irq, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 8
  %pipe_num = getelementptr inbounds %struct.ath11k_ce_pipe, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %pipe_num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pipe_num, align 4
  %dev_flags = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 45
  %4 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %dev_flags, align 4
  %6 = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %3 to i32
  %add = add nuw nsw i32 %conv, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %conv2 = zext i32 %7 to i64
  %timestamp = getelementptr inbounds %struct.ath11k_ce_pipe, ptr %arg, i32 0, i32 11
  %8 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv2, ptr %timestamp, align 8
  %arrayidx = getelementptr %struct.ath11k_base, ptr %1, i32 0, i32 30, i32 %add
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  tail call void @disable_irq_nosync(i32 noundef %10) #6
  %state.i = getelementptr inbounds %struct.ath11k_ce_pipe, ptr %arg, i32 0, i32 7, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %intr_tq = getelementptr inbounds %struct.ath11k_ce_pipe, ptr %arg, i32 0, i32 7
  tail call void @__tasklet_schedule(ptr noundef %intr_tq) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath11k_pci_ext_irq_config(ptr noundef %ab) unnamed_addr #0 align 64 {
entry:
  %num_vectors = alloca i32, align 4
  %user_base_data = alloca i32, align 4
  %base_vector = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_vectors) #6
  %0 = ptrtoint ptr %num_vectors to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %num_vectors, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %user_base_data) #6
  %1 = ptrtoint ptr %user_base_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %user_base_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base_vector) #6
  %2 = ptrtoint ptr %base_vector to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %base_vector, align 4
  %call2 = call i32 @ath11k_pci_get_user_msi_assignment(ptr noundef %drv_priv.i, ptr noundef nonnull @.str.54, ptr noundef nonnull %num_vectors, ptr noundef nonnull %user_base_data, ptr noundef nonnull %base_vector)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup82_crit_edge, label %for.cond.preheader

entry.cleanup82_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup82

for.cond.preheader:                               ; preds = %entry
  %ring_mask = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 6
  %dev = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %irq_flags = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 1, i32 3, i32 1, i32 3, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc79.for.body_crit_edge, %for.cond.preheader
  %i.0152 = phi i32 [ 0, %for.cond.preheader ], [ %inc80, %for.inc79.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.0152
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ab, ptr %arrayidx, align 128
  %grp_id = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.0152, i32 3
  %4 = ptrtoint ptr %grp_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %i.0152, ptr %grp_id, align 8
  %napi_ndev = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.0152, i32 8
  %call5 = tail call i32 @init_dummy_netdev(ptr noundef %napi_ndev) #6
  %napi = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.0152, i32 6
  tail call void @netif_napi_add(ptr noundef %napi_ndev, ptr noundef %napi, ptr noundef nonnull @ath11k_pci_ext_grp_napi_poll, i32 noundef 64) #6
  %5 = ptrtoint ptr %ring_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ring_mask, align 4
  %arrayidx7 = getelementptr [11 x i8], ptr %6, i32 0, i32 %i.0152
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.body.for.body57.lr.ph_crit_edge

for.body.for.body57.lr.ph_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body57.lr.ph

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx10 = getelementptr %struct.ath11k_hw_ring_mask, ptr %6, i32 0, i32 2, i32 %i.0152
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool12.not = icmp eq i8 %10, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %lor.lhs.false.for.body57.lr.ph_crit_edge

lor.lhs.false.for.body57.lr.ph_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body57.lr.ph

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %arrayidx16 = getelementptr %struct.ath11k_hw_ring_mask, ptr %6, i32 0, i32 3, i32 %i.0152
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool18.not = icmp eq i8 %12, 0
  br i1 %tobool18.not, label %lor.lhs.false19, label %lor.lhs.false13.for.body57.lr.ph_crit_edge

lor.lhs.false13.for.body57.lr.ph_crit_edge:       ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body57.lr.ph

lor.lhs.false19:                                  ; preds = %lor.lhs.false13
  %arrayidx22 = getelementptr %struct.ath11k_hw_ring_mask, ptr %6, i32 0, i32 4, i32 %i.0152
  %13 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool24.not = icmp eq i8 %14, 0
  br i1 %tobool24.not, label %lor.lhs.false25, label %lor.lhs.false19.for.body57.lr.ph_crit_edge

lor.lhs.false19.for.body57.lr.ph_crit_edge:       ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body57.lr.ph

lor.lhs.false25:                                  ; preds = %lor.lhs.false19
  %arrayidx28 = getelementptr %struct.ath11k_hw_ring_mask, ptr %6, i32 0, i32 5, i32 %i.0152
  %15 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool30.not = icmp eq i8 %16, 0
  br i1 %tobool30.not, label %lor.lhs.false31, label %lor.lhs.false25.for.body57.lr.ph_crit_edge

lor.lhs.false25.for.body57.lr.ph_crit_edge:       ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body57.lr.ph

lor.lhs.false31:                                  ; preds = %lor.lhs.false25
  %arrayidx34 = getelementptr %struct.ath11k_hw_ring_mask, ptr %6, i32 0, i32 6, i32 %i.0152
  %17 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool36.not = icmp eq i8 %18, 0
  br i1 %tobool36.not, label %lor.lhs.false37, label %lor.lhs.false31.for.body57.lr.ph_crit_edge

lor.lhs.false31.for.body57.lr.ph_crit_edge:       ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body57.lr.ph

lor.lhs.false37:                                  ; preds = %lor.lhs.false31
  %arrayidx40 = getelementptr %struct.ath11k_hw_ring_mask, ptr %6, i32 0, i32 7, i32 %i.0152
  %19 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool42.not = icmp eq i8 %20, 0
  br i1 %tobool42.not, label %lor.lhs.false43, label %lor.lhs.false37.for.body57.lr.ph_crit_edge

lor.lhs.false37.for.body57.lr.ph_crit_edge:       ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body57.lr.ph

lor.lhs.false43:                                  ; preds = %lor.lhs.false37
  %arrayidx46 = getelementptr %struct.ath11k_hw_ring_mask, ptr %6, i32 0, i32 1, i32 %i.0152
  %21 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool48.not = icmp eq i8 %22, 0
  br i1 %tobool48.not, label %if.end50, label %lor.lhs.false43.for.body57.lr.ph_crit_edge

lor.lhs.false43.for.body57.lr.ph_crit_edge:       ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body57.lr.ph

if.end50:                                         ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #8
  %num_irq51 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.0152, i32 2
  %23 = ptrtoint ptr %num_irq51 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %num_irq51, align 4
  %add = add nuw nsw i32 %i.0152, 14
  %irqs = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.0152, i32 1
  %24 = ptrtoint ptr %irqs to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add, ptr %irqs, align 4
  br label %for.end

for.body57.lr.ph:                                 ; preds = %lor.lhs.false43.for.body57.lr.ph_crit_edge, %lor.lhs.false37.for.body57.lr.ph_crit_edge, %lor.lhs.false31.for.body57.lr.ph_crit_edge, %lor.lhs.false25.for.body57.lr.ph_crit_edge, %lor.lhs.false19.for.body57.lr.ph_crit_edge, %lor.lhs.false13.for.body57.lr.ph_crit_edge, %lor.lhs.false.for.body57.lr.ph_crit_edge, %for.body.for.body57.lr.ph_crit_edge
  %num_irq51158 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.0152, i32 2
  %25 = ptrtoint ptr %num_irq51158 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %num_irq51158, align 4
  %add159 = add nuw nsw i32 %i.0152, 14
  %irqs160 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.0152, i32 1
  %26 = ptrtoint ptr %irqs160 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add159, ptr %irqs160, align 4
  %27 = ptrtoint ptr %num_vectors to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_vectors, align 4
  %rem = srem i32 %i.0152, %28
  %29 = ptrtoint ptr %base_vector to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %base_vector, align 4
  %add60 = add i32 %30, %rem
  br label %for.body57

for.cond53:                                       ; preds = %do.end
  %inc = add nuw i32 %j.0151, 1
  %31 = ptrtoint ptr %num_irq51158 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_irq51158, align 4
  %cmp55 = icmp ult i32 %inc, %32
  br i1 %cmp55, label %for.cond53.for.body57_crit_edge, label %for.cond53.for.end_crit_edge

for.cond53.for.end_crit_edge:                     ; preds = %for.cond53
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond53.for.body57_crit_edge:                  ; preds = %for.cond53
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body57

for.body57:                                       ; preds = %for.cond53.for.body57_crit_edge, %for.body57.lr.ph
  %j.0151 = phi i32 [ 0, %for.body57.lr.ph ], [ %inc, %for.cond53.for.body57_crit_edge ]
  %arrayidx59 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.0152, i32 1, i32 %j.0151
  %33 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx59, align 4
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 8
  %add.ptr.i = getelementptr i8, ptr %36, i32 -136
  %call.i = tail call i32 @pci_irq_vector(ptr noundef %add.ptr.i, i32 noundef %add60) #6
  %arrayidx62 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 30, i32 %34
  %37 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call.i, ptr %arrayidx62, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %38 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %38, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool63.not = icmp eq i32 %and, 0
  br i1 %tobool63.not, label %lor.lhs.false64, label %for.body57.if.then67_crit_edge

for.body57.if.then67_crit_edge:                   ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then67

lor.lhs.false64:                                  ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_pci_ext_irq_config, %if.then67)) #6
          to label %do.end [label %if.then67], !srcloc !279

if.then67:                                        ; preds = %lor.lhs.false64, %for.body57.if.then67_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 4096, ptr noundef nonnull @.str.114, i32 noundef %call.i, i32 noundef %i.0152) #6
  br label %do.end

do.end:                                           ; preds = %if.then67, %lor.lhs.false64
  tail call void @irq_modify_status(i32 noundef %call.i, i32 noundef 0, i32 noundef 524288) #6
  %39 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq_flags, align 4
  %call.i141 = tail call i32 @request_threaded_irq(i32 noundef %call.i, ptr noundef nonnull @ath11k_pci_ext_interrupt_handler, ptr noundef null, i32 noundef %40, ptr noundef nonnull @.str.115, ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %tobool70.not = icmp eq i32 %call.i141, 0
  br i1 %tobool70.not, label %for.cond53, label %cleanup75.thread147

cleanup75.thread147:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.116, i32 noundef %add60, i32 noundef %call.i141) #6
  br label %cleanup82

for.end:                                          ; preds = %for.cond53.for.end_crit_edge, %if.end50
  %num_irq51162 = phi ptr [ %num_irq51, %if.end50 ], [ %num_irq51158, %for.cond53.for.end_crit_edge ]
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 128
  %flags.i = getelementptr inbounds %struct.ath11k_base, ptr %42, i32 1, i32 3, i32 1, i32 3
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %flags.i, align 4
  %45 = and i32 %44, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i, label %for.end.for.inc79_crit_edge, label %for.cond.preheader.i

for.end.for.inc79_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc79

for.cond.preheader.i:                             ; preds = %for.end
  %46 = ptrtoint ptr %num_irq51162 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_irq51162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp10.not.i = icmp eq i32 %47, 0
  br i1 %cmp10.not.i, label %for.cond.preheader.i.for.inc79_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.inc79_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc79

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx, align 128
  %arrayidx.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.0152, i32 1, i32 %i.011.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr %struct.ath11k_base, ptr %49, i32 0, i32 30, i32 %51
  %52 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx3.i, align 4
  tail call void @disable_irq_nosync(i32 noundef %53) #6
  %inc.i = add nuw i32 %i.011.i, 1
  %54 = ptrtoint ptr %num_irq51162 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_irq51162, align 4
  %cmp.i = icmp ult i32 %inc.i, %55
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.inc79_crit_edge

for.body.i.for.inc79_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc79

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc79:                                        ; preds = %for.body.i.for.inc79_crit_edge, %for.cond.preheader.i.for.inc79_crit_edge, %for.end.for.inc79_crit_edge
  %inc80 = add nuw nsw i32 %i.0152, 1
  %exitcond.not = icmp eq i32 %inc80, 11
  br i1 %exitcond.not, label %for.inc79.cleanup82_crit_edge, label %for.inc79.for.body_crit_edge

for.inc79.for.body_crit_edge:                     ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc79.cleanup82_crit_edge:                    ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup82

cleanup82:                                        ; preds = %for.inc79.cleanup82_crit_edge, %cleanup75.thread147, %entry.cleanup82_crit_edge
  %retval.4 = phi i32 [ %call2, %entry.cleanup82_crit_edge ], [ %call.i141, %cleanup75.thread147 ], [ 0, %for.inc79.cleanup82_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base_vector) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %user_base_data) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_vectors) #6
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_apply_affinity_hint(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_ce_per_engine_service(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_dummy_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_pci_ext_grp_napi_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -96
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %call = tail call i32 @ath11k_dp_service_srng(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %budget) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %budget)
  %cmp = icmp slt i32 %call, %budget
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %call2 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %call) #6
  %num_irq = getelementptr i8, ptr %napi, i32 -28
  %2 = ptrtoint ptr %num_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp322.not = icmp eq i32 %3, 0
  br i1 %cmp322.not, label %if.then.if.end_crit_edge, label %for.body.lr.ph

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.lr.ph:                                   ; preds = %if.then
  %irqs = getelementptr i8, ptr %napi, i32 -92
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 128
  %arrayidx = getelementptr [16 x i32], ptr %irqs, i32 0, i32 %i.023
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %arrayidx5 = getelementptr %struct.ath11k_base, ptr %5, i32 0, i32 30, i32 %7
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  tail call void @enable_irq(i32 noundef %9) #6
  %inc = add nuw i32 %i.023, 1
  %10 = ptrtoint ptr %num_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_irq, align 4
  %cmp3 = icmp ult i32 %inc, %11
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = tail call i32 @llvm.smin.i32(i32 %call, i32 %budget)
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_pci_ext_interrupt_handler(i32 noundef %irq, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 128
  %dev_flags = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %dev_flags, align 4
  %4 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %5 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %do.body.if.then4_crit_edge

do.body.if.then4_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_pci_ext_interrupt_handler, %if.then4)) #6
          to label %do.end [label %if.then4], !srcloc !279

if.then4:                                         ; preds = %lor.lhs.false, %do.body.if.then4_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arg, align 128
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %7, i32 noundef 4096, ptr noundef nonnull @.str.117, i32 noundef %irq) #6
  br label %do.end

do.end:                                           ; preds = %if.then4, %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i32 %8 to i64
  %timestamp = getelementptr inbounds %struct.ath11k_ext_irq_grp, ptr %arg, i32 0, i32 4
  %9 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %timestamp, align 16
  %num_irq = getelementptr inbounds %struct.ath11k_ext_irq_grp, ptr %arg, i32 0, i32 2
  %10 = ptrtoint ptr %num_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp21.not = icmp eq i32 %11, 0
  br i1 %cmp21.not, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arg, align 128
  %arrayidx = getelementptr %struct.ath11k_ext_irq_grp, ptr %arg, i32 0, i32 1, i32 %i.022
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %arrayidx9 = getelementptr %struct.ath11k_base, ptr %13, i32 0, i32 30, i32 %15
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx9, align 4
  tail call void @disable_irq_nosync(i32 noundef %17) #6
  %inc = add nuw i32 %i.022, 1
  %18 = ptrtoint ptr %num_irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_irq, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %napi = getelementptr inbounds %struct.ath11k_ext_irq_grp, ptr %arg, i32 0, i32 6
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #6
  br i1 %call.i, label %if.then.i, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__napi_schedule(ptr noundef %napi) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_dp_service_srng(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_debugfs_soc_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_qmi_deinit_service(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_core_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_pci_pm_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @ath11k_core_suspend(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.119, i32 noundef %call1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_pci_pm_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @ath11k_core_resume(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.120, i32 noundef %call1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_core_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_core_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !30, !32, !34, !35, !36, !37, !38, !39, !41, !42, !44, !46, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262}
!llvm.module.flags = !{!264, !265, !266, !267, !268, !269, !270, !271}
!llvm.ident = !{!272}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 504, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 513, i32 17}
!4 = !{ptr @__initcall__kmod_ath11k_pci__400_1619_ath11k_pci_init6, !5, !"__initcall__kmod_ath11k_pci__400_1619_ath11k_pci_init6", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1619, i32 1}
!6 = !{ptr @__exitcall_ath11k_pci_exit, !7, !"__exitcall_ath11k_pci_exit", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1626, i32 1}
!8 = !{ptr @__UNIQUE_ID_description401, !9, !"__UNIQUE_ID_description401", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1628, i32 1}
!10 = !{ptr @__UNIQUE_ID_file402, !11, !"__UNIQUE_ID_file402", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1629, i32 1}
!12 = !{ptr @__UNIQUE_ID_license403, !11, !"__UNIQUE_ID_license403", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_firmware404, !14, !"__UNIQUE_ID_firmware404", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1632, i32 1}
!15 = !{ptr @__UNIQUE_ID_firmware405, !16, !"__UNIQUE_ID_firmware405", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1633, i32 1}
!17 = !{ptr @__UNIQUE_ID_firmware406, !18, !"__UNIQUE_ID_firmware406", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1634, i32 1}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 152, i32 2}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1612, i32 8}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1614, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ath11k_pci_init._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @ath11k_pci_init._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @ath11k_pci_driver, !29, !"ath11k_pci_driver", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1597, i32 26}
!30 = !{ptr @ath11k_pci_id_table, !31, !"ath11k_pci_id_table", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 43, i32 35}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1363, i32 3}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ath11k_pci_probe._entry, !33, !"_entry", i1 false, i1 false}
!38 = !{ptr @ath11k_pci_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @ath11k_pci_probe.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1375, i32 2}
!41 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1381, i32 47}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1387, i32 18}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1391, i32 2}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1409, i32 4}
!50 = !{ptr @ath11k_pci_probe._entry.14, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ath11k_pci_probe._entry_ptr.16, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1442, i32 4}
!54 = !{ptr @ath11k_pci_probe._entry.17, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ath11k_pci_probe._entry_ptr.19, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1450, i32 3}
!58 = !{ptr @ath11k_pci_probe._entry.20, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ath11k_pci_probe._entry_ptr.22, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1458, i32 18}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1468, i32 18}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1478, i32 18}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1486, i32 18}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1497, i32 18}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1503, i32 18}
!72 = !{ptr @ath11k_pci_bus_params, !73, !"ath11k_pci_bus_params", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 52, i32 39}
!74 = !{ptr @ath11k_pci_hif_ops, !75, !"ath11k_pci_hif_ops", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1319, i32 36}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1258, i32 19}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1175, i32 18}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 411, i32 2}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 418, i32 2}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 361, i32 19}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 370, i32 19}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 379, i32 19}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 388, i32 19}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 346, i32 18}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 302, i32 2}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 305, i32 2}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 323, i32 2}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 293, i32 19}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1138, i32 2}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1063, i32 18}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1071, i32 18}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1077, i32 18}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1083, i32 18}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1090, i32 18}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1100, i32 18}
!116 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1105, i32 2}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1348, i32 2}
!120 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 64, i32 14}
!122 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 65, i32 14}
!124 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 66, i32 14}
!126 = !{ptr @.str.54, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 67, i32 14}
!128 = !{ptr @ath11k_msi_config, !129, !"ath11k_msi_config", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 59, i32 39}
!130 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1003, i32 3}
!132 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1005, i32 18}
!134 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1011, i32 18}
!136 = !{ptr @.str.59, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1020, i32 2}
!138 = !{ptr @msi_config_one_msi, !139, !"msi_config_one_msi", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 81, i32 39}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 880, i32 18}
!142 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 901, i32 19}
!144 = !{ptr @.str.63, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 93, i32 2}
!146 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 94, i32 2}
!148 = !{ptr @.str.65, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 95, i32 2}
!150 = !{ptr @.str.66, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 96, i32 2}
!152 = !{ptr @.str.67, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 97, i32 2}
!154 = !{ptr @.str.68, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 98, i32 2}
!156 = !{ptr @.str.69, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 99, i32 2}
!158 = !{ptr @.str.70, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 100, i32 2}
!160 = !{ptr @.str.71, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 101, i32 2}
!162 = !{ptr @.str.72, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 102, i32 2}
!164 = !{ptr @.str.73, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 103, i32 2}
!166 = !{ptr @.str.74, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 104, i32 2}
!168 = !{ptr @.str.75, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 105, i32 2}
!170 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 106, i32 2}
!172 = !{ptr @.str.77, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 107, i32 2}
!174 = !{ptr @.str.78, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 108, i32 2}
!176 = !{ptr @.str.79, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 109, i32 2}
!178 = !{ptr @.str.80, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 110, i32 2}
!180 = !{ptr @.str.81, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 111, i32 2}
!182 = !{ptr @.str.82, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 112, i32 2}
!184 = !{ptr @.str.83, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 113, i32 2}
!186 = !{ptr @.str.84, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 114, i32 2}
!188 = !{ptr @.str.85, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 115, i32 2}
!190 = !{ptr @.str.86, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 116, i32 2}
!192 = !{ptr @.str.87, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 117, i32 2}
!194 = !{ptr @.str.88, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 118, i32 2}
!196 = !{ptr @.str.89, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 119, i32 2}
!198 = !{ptr @.str.90, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 120, i32 2}
!200 = !{ptr @.str.91, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 121, i32 2}
!202 = !{ptr @.str.92, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 122, i32 2}
!204 = !{ptr @.str.93, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 123, i32 2}
!206 = !{ptr @.str.94, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 124, i32 2}
!208 = !{ptr @.str.95, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 125, i32 2}
!210 = !{ptr @.str.96, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 126, i32 2}
!212 = !{ptr @.str.97, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 127, i32 2}
!214 = !{ptr @.str.98, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 128, i32 2}
!216 = !{ptr @.str.99, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 129, i32 2}
!218 = !{ptr @.str.100, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 130, i32 2}
!220 = !{ptr @.str.101, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 131, i32 2}
!222 = !{ptr @.str.102, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 132, i32 2}
!224 = !{ptr @.str.103, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 133, i32 2}
!226 = !{ptr @.str.104, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 134, i32 2}
!228 = !{ptr @.str.105, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 135, i32 2}
!230 = !{ptr @.str.106, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 136, i32 2}
!232 = !{ptr @.str.107, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 137, i32 2}
!234 = !{ptr @.str.108, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 138, i32 2}
!236 = !{ptr @.str.109, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 139, i32 2}
!238 = !{ptr @.str.110, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 140, i32 2}
!240 = !{ptr @.str.111, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 141, i32 2}
!242 = !{ptr @.str.112, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 142, i32 2}
!244 = !{ptr @.str.113, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 143, i32 2}
!246 = !{ptr @irq_name, !247, !"irq_name", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 92, i32 20}
!248 = !{ptr @.str.114, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 834, i32 4}
!250 = !{ptr @.str.115, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 840, i32 8}
!252 = !{ptr @.str.116, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 842, i32 20}
!254 = !{ptr @.str.117, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 777, i32 2}
!256 = !{ptr @.str.118, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1049, i32 2}
!258 = !{ptr @ath11k_pci_pm_ops, !259, !"ath11k_pci_pm_ops", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1593, i32 8}
!260 = !{ptr @.str.119, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1576, i32 19}
!262 = !{ptr @.str.120, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/ath/ath11k/pci.c", i32 1588, i32 19}
!264 = !{i32 1, !"wchar_size", i32 2}
!265 = !{i32 1, !"min_enum_size", i32 4}
!266 = !{i32 8, !"branch-target-enforcement", i32 0}
!267 = !{i32 8, !"sign-return-address", i32 0}
!268 = !{i32 8, !"sign-return-address-all", i32 0}
!269 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!270 = !{i32 7, !"uwtable", i32 1}
!271 = !{i32 7, !"frame-pointer", i32 2}
!272 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!273 = !{i8 0, i8 2}
!274 = !{i64 2152579695}
!275 = !{i64 5037573}
!276 = !{!"branch_weights", i32 1, i32 2000}
!277 = !{i64 5037991}
!278 = !{i64 2152578340}
!279 = !{i64 2148993273, i64 2148993278, i64 2148993291, i64 2148993335, i64 2148993369, i64 2148993390}
!280 = !{!"auto-init"}
!281 = !{!"branch_weights", i32 2000, i32 1}
