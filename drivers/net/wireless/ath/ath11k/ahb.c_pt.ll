; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath11k/ahb.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath11k/ahb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ath11k_bus_params = type { i8, i8, i8, i8, i8 }
%struct.ath11k_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%struct.atomic_t = type { i32 }
%union.anon.98 = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.ath11k_pdev = type { ptr, i32, %struct.ath11k_pdev_cap, [6 x i8] }
%struct.ath11k_pdev_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x %struct.ath11k_band_cap], i8, i8 }
%struct.ath11k_band_cap = type { i32, i32, i32, [2 x i32], i32, [3 x i32], %struct.ath11k_ppe_threshold, i16 }
%struct.ath11k_ppe_threshold = type { i32, i32, [8 x i32] }
%struct.anon.150 = type { i32, i32 }
%struct.ath11k_hal_reg_capabilities_ext = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath11k_ext_irq_grp = type { ptr, [16 x i32], i32, i32, i64, i8, %struct.napi_struct, [64 x i8], %struct.net_device }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ath11k_targ_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath11k_hw_params = type { ptr, i16, i8, i32, %struct.anon.151, ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i8, i32, i32, i32, i8, i32, i8, i8, i8, %struct.anon.153, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8 }
%struct.anon.151 = type { ptr, i32, i32 }
%struct.anon.153 = type { i8, i8, i8, i8, i16 }
%struct.ath11k_soc_dp_stats = type { i32, i32, [14 x i32], [15 x i32], [4 x i32], %struct.ath11k_soc_dp_tx_err_stats, %struct.ath11k_dp_ring_bp_stats }
%struct.ath11k_soc_dp_tx_err_stats = type { [3 x i32], %struct.atomic_t }
%struct.ath11k_dp_ring_bp_stats = type { [18 x %struct.ath11k_bp_stats], [13 x [3 x %struct.ath11k_bp_stats]] }
%struct.ath11k_bp_stats = type { i16, i16, i32, i32 }
%struct.anon.154 = type { i32 }
%struct.anon.155 = type { i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ath11k_hw_ring_mask = type { [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.service_to_pipe = type { i32, i32, i32 }
%struct.ce_attr = type { i32, i32, i32, i32, ptr, ptr }

@__initcall__kmod_ath11k_ahb__373_799_ath11k_ahb_init6 = internal global ptr @ath11k_ahb_init, section ".initcall6.init", align 4
@__exitcall_ath11k_ahb_exit = internal global ptr @ath11k_ahb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description374 = internal constant [90 x i8] c"ath11k_ahb.description=Driver support for Qualcomm Technologies 802.11ax WLAN AHB devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file375 = internal constant [59 x i8] c"ath11k_ahb.file=drivers/net/wireless/ath/ath11k/ath11k_ahb\00", section ".modinfo", align 1
@__UNIQUE_ID_license376 = internal constant [32 x i8] c"ath11k_ahb.license=Dual BSD/GPL\00", section ".modinfo", align 1
@ath11k_ahb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ath11k_ahb_probe, ptr @ath11k_ahb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ath11k_ahb_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ath11k\00", [25 x i8] zeroinitializer }, align 32
@ath11k_ahb_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ipq8074-wifi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ipq6018-wifi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ath11k_ahb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 669, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to find matching device tree id\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ath11k_ahb_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ath/ath11k/ahb.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ath11k_ahb_probe._entry_ptr = internal global ptr @ath11k_ahb_probe._entry, section ".printk_index", align 4
@ath11k_ahb_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 675, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ioremap error\0A\00", [17 x i8] zeroinitializer }, align 32
@ath11k_ahb_probe._entry_ptr.8 = internal global ptr @ath11k_ahb_probe._entry.6, section ".printk_index", align 4
@ath11k_ahb_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 681, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to set 32-bit consistent dma\0A\00", [59 x i8] zeroinitializer }, align 32
@ath11k_ahb_probe._entry_ptr.11 = internal global ptr @ath11k_ahb_probe._entry.9, section ".printk_index", align 4
@ath11k_ahb_bus_params = internal constant { %struct.ath11k_bus_params, [27 x i8] } { %struct.ath11k_bus_params { i8 0, i8 0, i8 1, i8 1, i8 0 }, [27 x i8] zeroinitializer }, align 32
@ath11k_ahb_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 689, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to allocate ath11k base\0A\00", [32 x i8] zeroinitializer }, align 32
@ath11k_ahb_probe._entry_ptr.14 = internal global ptr @ath11k_ahb_probe._entry.12, section ".printk_index", align 4
@ath11k_ahb_hif_ops = internal constant { %struct.ath11k_hif_ops, [32 x i8] } { %struct.ath11k_hif_ops { ptr @ath11k_ahb_read32, ptr @ath11k_ahb_write32, ptr @ath11k_ahb_ext_irq_enable, ptr @ath11k_ahb_ext_irq_disable, ptr @ath11k_ahb_start, ptr @ath11k_ahb_stop, ptr @ath11k_ahb_power_up, ptr @ath11k_ahb_power_down, ptr null, ptr null, ptr @ath11k_ahb_map_service_to_pipe, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate ce pipes: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get rproc: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to init core: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to configure irq: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to boot the remote processor Q6\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom,rproc\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get q6_rproc handle\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get rproc\0A\00", [43 x i8] zeroinitializer }, align 32
@irq_name = internal constant { [52 x ptr], [48 x i8] } { [52 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74], [48 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"misc-pulse1\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"misc-latch\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sw-exception\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"watchdog\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ce0\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ce1\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ce2\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ce3\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ce4\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ce5\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ce6\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ce7\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ce8\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ce9\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ce10\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ce11\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"host2wbm-desc-feed\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"host2reo-re-injection\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"host2reo-command\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"host2rxdma-monitor-ring3\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"host2rxdma-monitor-ring2\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"host2rxdma-monitor-ring1\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reo2ost-exception\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wbm2host-rx-release\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reo2host-status\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reo2host-destination-ring4\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reo2host-destination-ring3\00", [37 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reo2host-destination-ring2\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reo2host-destination-ring1\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rxdma2host-monitor-destination-mac3\00", [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rxdma2host-monitor-destination-mac2\00", [60 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rxdma2host-monitor-destination-mac1\00", [60 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ppdu-end-interrupts-mac3\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ppdu-end-interrupts-mac2\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ppdu-end-interrupts-mac1\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rxdma2host-monitor-status-ring-mac3\00", [60 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rxdma2host-monitor-status-ring-mac2\00", [60 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rxdma2host-monitor-status-ring-mac1\00", [60 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"host2rxdma-host-buf-ring-mac3\00", [34 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"host2rxdma-host-buf-ring-mac2\00", [34 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"host2rxdma-host-buf-ring-mac1\00", [34 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rxdma2host-destination-ring-mac3\00", [63 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rxdma2host-destination-ring-mac2\00", [63 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rxdma2host-destination-ring-mac1\00", [63 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"host2tcl-input-ring4\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"host2tcl-input-ring3\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"host2tcl-input-ring2\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"host2tcl-input-ring1\00", [43 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wbm2host-tx-completions-ring3\00", [34 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wbm2host-tx-completions-ring2\00", [34 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wbm2host-tx-completions-ring1\00", [34 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tcl2host-status-ring\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.75 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed request_irq for %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ath11k_cold_boot_cal = external dso_local local_unnamed_addr global i8, align 1
@ath11k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wait for cold boot done\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Coldboot Calibration failed timed out\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"exited from cold boot mode\0A\00", [36 x i8] zeroinitializer }, align 32
@__tracepoint_ath11k_log_dbg = external dso_local global %struct.tracepoint, align 4
@.str.79 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to receive recovery response completion\0A\00", [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.80 = private unnamed_addr constant [18 x i8] c"ath11k_ahb_driver\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 786, i32 31 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 788, i32 13 }
@___asan_gen_.86 = private unnamed_addr constant [20 x i8] c"ath11k_ahb_of_match\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 16, i32 34 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 669, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 675, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 681, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [22 x i8] c"ath11k_ahb_bus_params\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 31, i32 39 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 689, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [19 x i8] c"ath11k_ahb_hif_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 625, i32 36 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 710, i32 18 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 718, i32 18 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 724, i32 18 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 730, i32 18 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 337, i32 18 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 644, i32 41 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 645, i32 18 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 651, i32 18 }
@___asan_gen_.155 = private unnamed_addr constant [9 x i8] c"irq_name\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 40, i32 20 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 41, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 42, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 43, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 44, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 45, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 46, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 47, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 48, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 49, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 50, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 51, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 52, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 53, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 54, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 55, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 56, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 57, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 58, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 59, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 60, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 61, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 62, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 63, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 64, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 65, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 66, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 67, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 68, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 69, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 70, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 71, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 72, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 73, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 74, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 75, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 76, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 77, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 78, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 79, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 80, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 81, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 82, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 83, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 84, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 85, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 86, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 87, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 88, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 89, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 90, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 91, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 92, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 542, i32 20 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 357, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 363, i32 19 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 370, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.327 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath11k/ahb.c\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 769, i32 20 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_description374, ptr @__UNIQUE_ID_file375, ptr @__UNIQUE_ID_license376, ptr @__exitcall_ath11k_ahb_exit, ptr @__initcall__kmod_ath11k_ahb__373_799_ath11k_ahb_init6, ptr @ath11k_ahb_probe._entry, ptr @ath11k_ahb_probe._entry.12, ptr @ath11k_ahb_probe._entry.6, ptr @ath11k_ahb_probe._entry.9, ptr @ath11k_ahb_probe._entry_ptr, ptr @ath11k_ahb_probe._entry_ptr.11, ptr @ath11k_ahb_probe._entry_ptr.14, ptr @ath11k_ahb_probe._entry_ptr.8, ptr @ath11k_ahb_driver, ptr @.str, ptr @ath11k_ahb_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @ath11k_ahb_bus_params, ptr @.str.13, ptr @ath11k_ahb_hif_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @irq_name, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_ahb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_ahb_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_ahb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_ahb_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_ahb_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_ahb_bus_params to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_ahb_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_ahb_hif_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_name to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_ahb_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ath11k_ahb_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_ahb_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @platform_driver_unregister(ptr noundef nonnull @ath11k_ahb_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_ahb_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %rproc_phandle.i = alloca i32, align 4
  %mem_res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem_res) #6
  %0 = ptrtoint ptr %mem_res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mem_res, align 4, !annotation !180
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @ath11k_ahb_of_match, ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %mem_res) #6
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call.i = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i107 = icmp eq i32 %call.i, 0
  br i1 %cmp.i107, label %if.end19, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #6
  %call21 = call ptr @ath11k_core_alloc(ptr noundef %dev, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @ath11k_ahb_bus_params) #6
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %do.end26, label %if.end28

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  %ops = getelementptr inbounds %struct.ath11k_base, ptr %call21, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ath11k_ahb_hif_ops, ptr %ops, align 4
  %pdev29 = getelementptr inbounds %struct.ath11k_base, ptr %call21, i32 0, i32 1
  %3 = ptrtoint ptr %pdev29 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %pdev29, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = ptrtoint ptr %call21 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %call21, align 128
  %mem30 = getelementptr inbounds %struct.ath11k_base, ptr %call21, i32 0, i32 10
  %8 = ptrtoint ptr %mem30 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2, ptr %mem30, align 4
  %9 = ptrtoint ptr %mem_res to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mem_res, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 4
  %sub.i = add i32 %12, 1
  %add.i = sub i32 %sub.i, %14
  %mem_len = getelementptr inbounds %struct.ath11k_base, ptr %call21, i32 0, i32 11
  %15 = ptrtoint ptr %mem_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add.i, ptr %mem_len, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call21, ptr %driver_data.i.i, align 4
  %call32 = call i32 @ath11k_core_pre_init(ptr noundef nonnull %call21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end28.err_core_free_crit_edge

if.end28.err_core_free_crit_edge:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_core_free

if.end35:                                         ; preds = %if.end28
  %call36 = call i32 @ath11k_hal_srng_init(ptr noundef nonnull %call21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.err_core_free_crit_edge

if.end35.err_core_free_crit_edge:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_core_free

if.end39:                                         ; preds = %if.end35
  %call40 = call i32 @ath11k_ce_alloc_pipes(ptr noundef nonnull %call21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.then42

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef nonnull %call21, ptr noundef nonnull @.str.15, i32 noundef %call40) #6
  br label %err_hal_srng_deinit

if.end43:                                         ; preds = %if.end39
  %ce_cfg.i = getelementptr inbounds %struct.ath11k_base, ptr %call21, i32 0, i32 3, i32 7
  %target_ce_count.i = getelementptr inbounds %struct.ath11k_base, ptr %call21, i32 0, i32 36, i32 13
  %17 = ptrtoint ptr %target_ce_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %target_ce_count.i, align 4
  %tgt_ce_len.i = getelementptr inbounds %struct.ath11k_base, ptr %call21, i32 0, i32 3, i32 7, i32 1
  %19 = ptrtoint ptr %tgt_ce_len.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tgt_ce_len.i, align 4
  %target_ce_config.i = getelementptr inbounds %struct.ath11k_base, ptr %call21, i32 0, i32 36, i32 12
  %20 = ptrtoint ptr %target_ce_config.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %target_ce_config.i, align 4
  %22 = ptrtoint ptr %ce_cfg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %ce_cfg.i, align 4
  %svc_to_ce_map_len.i = getelementptr inbounds %struct.ath11k_base, ptr %call21, i32 0, i32 36, i32 15
  %23 = ptrtoint ptr %svc_to_ce_map_len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %svc_to_ce_map_len.i, align 4
  %svc_to_ce_map_len3.i = getelementptr inbounds %struct.ath11k_base, ptr %call21, i32 0, i32 3, i32 7, i32 3
  %25 = ptrtoint ptr %svc_to_ce_map_len3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %svc_to_ce_map_len3.i, align 4
  %svc_to_ce_map.i = getelementptr inbounds %struct.ath11k_base, ptr %call21, i32 0, i32 36, i32 14
  %26 = ptrtoint ptr %svc_to_ce_map.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %svc_to_ce_map.i, align 4
  %svc_to_ce_map5.i = getelementptr inbounds %struct.ath11k_base, ptr %call21, i32 0, i32 3, i32 7, i32 2
  %28 = ptrtoint ptr %svc_to_ce_map5.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %svc_to_ce_map5.i, align 4
  %qmi_service_ins_id.i = getelementptr inbounds %struct.ath11k_base, ptr %call21, i32 0, i32 36, i32 9
  %29 = ptrtoint ptr %qmi_service_ins_id.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qmi_service_ins_id.i, align 4
  %service_ins_id.i = getelementptr inbounds %struct.ath11k_base, ptr %call21, i32 0, i32 3, i32 15
  %31 = ptrtoint ptr %service_ins_id.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %service_ins_id.i, align 4
  %drv_priv.i.i = getelementptr inbounds %struct.ath11k_base, ptr %call21, i32 0, i32 61
  %dev1.i = getelementptr inbounds %struct.ath11k_base, ptr %call21, i32 0, i32 2
  %32 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rproc_phandle.i) #6
  %34 = ptrtoint ptr %rproc_phandle.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %rproc_phandle.i, align 4, !annotation !180
  %of_node.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 27
  %35 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %36, ptr noundef nonnull @.str.20, ptr noundef nonnull %rproc_phandle.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %if.end43.if.then46_crit_edge

if.end43.if.then46_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46

if.end.i:                                         ; preds = %if.end43
  %37 = ptrtoint ptr %rproc_phandle.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rproc_phandle.i, align 4
  %call3.i = call ptr @rproc_get_by_phandle(i32 noundef %38) #6
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end.i.if.then46_crit_edge, label %if.end47

if.end.i.if.then46_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46

if.then46:                                        ; preds = %if.end.i.if.then46_crit_edge, %if.end43.if.then46_crit_edge
  %.str.21.sink = phi ptr [ @.str.21, %if.end43.if.then46_crit_edge ], [ @.str.22, %if.end.i.if.then46_crit_edge ]
  %retval.0.i.ph = phi i32 [ -2, %if.end43.if.then46_crit_edge ], [ -22, %if.end.i.if.then46_crit_edge ]
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef nonnull %call21, ptr noundef nonnull %.str.21.sink) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rproc_phandle.i) #6
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef nonnull %call21, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i.ph) #6
  br label %err_ce_free

if.end47:                                         ; preds = %if.end.i
  %39 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call3.i, ptr %drv_priv.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rproc_phandle.i) #6
  %call48 = call i32 @ath11k_core_init(ptr noundef nonnull %call21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.then50

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef nonnull %call21, ptr noundef nonnull @.str.17, i32 noundef %call48) #6
  br label %err_ce_free

if.end51:                                         ; preds = %if.end47
  %call52 = call fastcc i32 @ath11k_ahb_config_irq(ptr noundef nonnull %call21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef nonnull %call21, ptr noundef nonnull @.str.18, i32 noundef %call52) #6
  br label %err_ce_free

if.end55:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @ath11k_ahb_fwreset_from_cold_boot(ptr noundef nonnull %call21)
  br label %cleanup

err_ce_free:                                      ; preds = %if.then54, %if.then50, %if.then46
  %ret.0 = phi i32 [ %retval.0.i.ph, %if.then46 ], [ %call48, %if.then50 ], [ %call52, %if.then54 ]
  call void @ath11k_ce_free_pipes(ptr noundef nonnull %call21) #6
  br label %err_hal_srng_deinit

err_hal_srng_deinit:                              ; preds = %err_ce_free, %if.then42
  %ret.1 = phi i32 [ %call40, %if.then42 ], [ %ret.0, %err_ce_free ]
  call void @ath11k_hal_srng_deinit(ptr noundef nonnull %call21) #6
  br label %err_core_free

err_core_free:                                    ; preds = %err_hal_srng_deinit, %if.end35.err_core_free_crit_edge, %if.end28.err_core_free_crit_edge
  %ret.2 = phi i32 [ %call32, %if.end28.err_core_free_crit_edge ], [ %call36, %if.end35.err_core_free_crit_edge ], [ %ret.1, %err_hal_srng_deinit ]
  call void @ath11k_core_free(ptr noundef nonnull %call21) #6
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_core_free, %if.end55, %do.end26, %do.end17, %do.end7, %do.end
  %retval.0 = phi i32 [ %1, %do.end7 ], [ %call.i, %do.end17 ], [ %ret.2, %err_core_free ], [ 0, %if.end55 ], [ -12, %do.end26 ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem_res) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_ahb_remove(ptr nocapture noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev_flags = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %dev_flags, align 4
  %4 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %drv_priv.i.i = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 61
  %5 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drv_priv.i.i, align 4
  tail call void @rproc_shutdown(ptr noundef %6) #6
  tail call void @ath11k_debugfs_soc_destroy(ptr noundef %1) #6
  tail call void @ath11k_qmi_deinit_service(ptr noundef %1) #6
  br label %qmi_fail

if.end:                                           ; preds = %entry
  %driver_recovery = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 46
  %7 = ptrtoint ptr %driver_recovery to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %driver_recovery, align 4
  %8 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %dev_flags, align 4
  %10 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %if.end.if.end11_crit_edge, label %if.then5

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then5:                                         ; preds = %if.end
  %call7 = tail call i32 @wait_for_completion_timeout(ptr noundef %driver_recovery, i32 noundef 300) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.then5.if.end11_crit_edge

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.79) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then5.if.end11_crit_edge, %if.end.if.end11_crit_edge
  tail call void @_set_bit(i32 noundef 7, ptr noundef %dev_flags) #6
  %restart_work = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 48
  %call13 = tail call zeroext i1 @cancel_work_sync(ptr noundef %restart_work) #6
  tail call void @ath11k_core_deinit(ptr noundef %1) #6
  br label %qmi_fail

qmi_fail:                                         ; preds = %if.end11, %if.then
  %ce_count.i = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 36, i32 11
  %11 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ce_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp11.not.i = icmp eq i32 %12, 0
  br i1 %cmp11.not.i, label %qmi_fail.for.body.i.i.preheader_crit_edge, label %for.body.lr.ph.i

qmi_fail.for.body.i.i.preheader_crit_edge:        ; preds = %qmi_fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.preheader

for.body.lr.ph.i:                                 ; preds = %qmi_fail
  %ce.i = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 14
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i = tail call i32 @ath11k_ce_get_attr_flags(ptr noundef %1, i32 noundef %i.012.i) #6
  %and.i = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add i32 %i.012.i, 4
  %arrayidx.i = getelementptr %struct.ath11k_base, ptr %1, i32 0, i32 30, i32 %add.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [12 x %struct.ath11k_ce_pipe], ptr %ce.i, i32 0, i32 %i.012.i
  %call2.i = tail call ptr @free_irq(i32 noundef %14, ptr noundef %arrayidx1.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.012.i, 1
  %15 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ce_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %16
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.body.i.i.preheader_crit_edge

for.inc.i.for.body.i.i.preheader_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.preheader

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.i.preheader:                           ; preds = %for.inc.i.for.body.i.i.preheader_crit_edge, %qmi_fail.for.body.i.i.preheader_crit_edge
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.end.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.018.i.i = phi i32 [ %inc7.i.i, %for.end.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %arrayidx.i.i = getelementptr %struct.ath11k_base, ptr %1, i32 0, i32 31, i32 %i.018.i.i
  %num_irq.i.i = getelementptr %struct.ath11k_base, ptr %1, i32 0, i32 31, i32 %i.018.i.i, i32 2
  %17 = ptrtoint ptr %num_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_irq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp216.not.i.i = icmp eq i32 %18, 0
  br i1 %cmp216.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body3.i.i_crit_edge

for.body.i.i.for.body3.i.i_crit_edge:             ; preds = %for.body.i.i
  br label %for.body3.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body3.i.i:                                    ; preds = %for.body3.i.i.for.body3.i.i_crit_edge, %for.body.i.i.for.body3.i.i_crit_edge
  %j.017.i.i = phi i32 [ %inc.i.i, %for.body3.i.i.for.body3.i.i_crit_edge ], [ 0, %for.body.i.i.for.body3.i.i_crit_edge ]
  %arrayidx4.i.i = getelementptr %struct.ath11k_base, ptr %1, i32 0, i32 31, i32 %i.018.i.i, i32 1, i32 %j.017.i.i
  %19 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx5.i.i = getelementptr %struct.ath11k_base, ptr %1, i32 0, i32 30, i32 %20
  %21 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx5.i.i, align 4
  %call.i.i = tail call ptr @free_irq(i32 noundef %22, ptr noundef %arrayidx.i.i) #6
  %inc.i.i = add nuw i32 %j.017.i.i, 1
  %23 = ptrtoint ptr %num_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_irq.i.i, align 4
  %cmp2.i.i = icmp ult i32 %inc.i.i, %24
  br i1 %cmp2.i.i, label %for.body3.i.i.for.body3.i.i_crit_edge, label %for.body3.i.i.for.end.i.i_crit_edge

for.body3.i.i.for.end.i.i_crit_edge:              ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body3.i.i.for.body3.i.i_crit_edge:            ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i.i

for.end.i.i:                                      ; preds = %for.body3.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge
  %inc7.i.i = add nuw nsw i32 %i.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc7.i.i, 11
  br i1 %exitcond.not.i.i, label %ath11k_ahb_free_irq.exit, label %for.end.i.i.for.body.i.i_crit_edge

for.end.i.i.for.body.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

ath11k_ahb_free_irq.exit:                         ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ath11k_hal_srng_deinit(ptr noundef %1) #6
  tail call void @ath11k_ce_free_pipes(ptr noundef %1) #6
  tail call void @ath11k_core_free(ptr noundef %1) #6
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %driver_data.i.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath11k_core_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_core_pre_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_hal_srng_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_ce_alloc_pipes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_core_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath11k_ahb_config_irq(ptr noundef %ab) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ce_count = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 11
  %0 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ce_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp35.not = icmp eq i32 %1, 0
  br i1 %cmp35.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ce = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 14
  %pdev = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = tail call i32 @ath11k_ce_get_attr_flags(ptr noundef %ab, i32 noundef %i.036) #6
  %and = and i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr [12 x %struct.ath11k_ce_pipe], ptr %ce, i32 0, i32 %i.036
  %add = add i32 %i.036, 4
  %intr_tq = getelementptr [12 x %struct.ath11k_ce_pipe], ptr %ce, i32 0, i32 %i.036, i32 7
  tail call void @tasklet_setup(ptr noundef %intr_tq, ptr noundef nonnull @ath11k_ahb_ce_tasklet) #6
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %arrayidx2 = getelementptr [52 x ptr], ptr @irq_name, i32 0, i32 %add
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %call3 = tail call i32 @platform_get_irq_byname(ptr noundef %3, ptr noundef %5) #6
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call3, ptr noundef nonnull @ath11k_ahb_ce_interrupt_handler, ptr noundef null, i32 noundef 1, ptr noundef %5, ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup11_crit_edge

if.end.cleanup11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup11

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx9 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 30, i32 %add
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call3, ptr %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end8, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.036, 1
  %7 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ce_count, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ring_mask.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 6
  %max_radios.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 2
  %hw_ops.i.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 5
  %pdev.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.end130.i.for.body.i_crit_edge, %for.end
  %i.029.i = phi i32 [ 0, %for.end ], [ %inc132.i, %for.end130.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.029.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ab, ptr %arrayidx.i, align 128
  %grp_id.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.029.i, i32 3
  %10 = ptrtoint ptr %grp_id.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %i.029.i, ptr %grp_id.i, align 8
  %napi_ndev.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.029.i, i32 8
  %call.i30 = tail call i32 @init_dummy_netdev(ptr noundef %napi_ndev.i) #6
  %napi.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.029.i, i32 6
  tail call void @netif_napi_add(ptr noundef %napi_ndev.i, ptr noundef %napi.i, ptr noundef nonnull @ath11k_ahb_ext_grp_napi_poll, i32 noundef 64) #6
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.inc.i.for.body5.i_crit_edge, %for.body.i
  %num_irq.026.i = phi i32 [ 0, %for.body.i ], [ %num_irq.8.i, %for.inc.i.for.body5.i_crit_edge ]
  %j.023.i = phi i32 [ 0, %for.body.i ], [ %inc111.i, %for.inc.i.for.body5.i_crit_edge ]
  %11 = ptrtoint ptr %ring_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ring_mask.i, align 4
  %arrayidx7.i = getelementptr [11 x i8], ptr %12, i32 0, i32 %i.029.i
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx7.i, align 1
  %conv.i = zext i8 %14 to i32
  %shl.i = shl nuw nsw i32 1, %j.023.i
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body5.i.if.end.i_crit_edge, label %if.then.i

for.body5.i.if.end.i_crit_edge:                   ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub nuw nsw i32 50, %j.023.i
  %inc.i = add i32 %num_irq.026.i, 1
  %arrayidx8.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.029.i, i32 1, i32 %num_irq.026.i
  %15 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub.i, ptr %arrayidx8.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body5.i.if.end.i_crit_edge
  %num_irq.1.i = phi i32 [ %inc.i, %if.then.i ], [ %num_irq.026.i, %for.body5.i.if.end.i_crit_edge ]
  %16 = ptrtoint ptr %ring_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ring_mask.i, align 4
  %arrayidx11.i = getelementptr %struct.ath11k_hw_ring_mask, ptr %17, i32 0, i32 2, i32 %i.029.i
  %18 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %19 to i32
  %and14.i = and i32 %shl.i, %conv12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end.i.if.end21.i_crit_edge, label %if.then16.i

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub17.i = sub nuw nsw i32 28, %j.023.i
  %inc19.i = add i32 %num_irq.1.i, 1
  %arrayidx20.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.029.i, i32 1, i32 %num_irq.1.i
  %20 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub17.i, ptr %arrayidx20.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then16.i, %if.end.i.if.end21.i_crit_edge
  %num_irq.2.i = phi i32 [ %inc19.i, %if.then16.i ], [ %num_irq.1.i, %if.end.i.if.end21.i_crit_edge ]
  %21 = ptrtoint ptr %ring_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ring_mask.i, align 4
  %arrayidx24.i = getelementptr %struct.ath11k_hw_ring_mask, ptr %22, i32 0, i32 3, i32 %i.029.i
  %23 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx24.i, align 1
  %conv25.i = zext i8 %24 to i32
  %and27.i = and i32 %shl.i, %conv25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end21.i.if.end33.i_crit_edge, label %if.then29.i

if.end21.i.if.end33.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.then29.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc31.i = add i32 %num_irq.2.i, 1
  %arrayidx32.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.029.i, i32 1, i32 %num_irq.2.i
  %25 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 22, ptr %arrayidx32.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then29.i, %if.end21.i.if.end33.i_crit_edge
  %num_irq.3.i = phi i32 [ %inc31.i, %if.then29.i ], [ %num_irq.2.i, %if.end21.i.if.end33.i_crit_edge ]
  %26 = ptrtoint ptr %ring_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ring_mask.i, align 4
  %arrayidx36.i = getelementptr %struct.ath11k_hw_ring_mask, ptr %27, i32 0, i32 4, i32 %i.029.i
  %28 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx36.i, align 1
  %conv37.i = zext i8 %29 to i32
  %and39.i = and i32 %shl.i, %conv37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.end33.i.if.end45.i_crit_edge, label %if.then41.i

if.end33.i.if.end45.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i

if.then41.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc43.i = add i32 %num_irq.3.i, 1
  %arrayidx44.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.029.i, i32 1, i32 %num_irq.3.i
  %30 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 23, ptr %arrayidx44.i, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then41.i, %if.end33.i.if.end45.i_crit_edge
  %num_irq.4.i = phi i32 [ %inc43.i, %if.then41.i ], [ %num_irq.3.i, %if.end33.i.if.end45.i_crit_edge ]
  %31 = ptrtoint ptr %ring_mask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ring_mask.i, align 4
  %arrayidx48.i = getelementptr %struct.ath11k_hw_ring_mask, ptr %32, i32 0, i32 5, i32 %i.029.i
  %33 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %34 to i32
  %and51.i = and i32 %shl.i, %conv49.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %if.end45.i.if.end57.i_crit_edge, label %if.then53.i

if.end45.i.if.end57.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.i

if.then53.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc55.i = add i32 %num_irq.4.i, 1
  %arrayidx56.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.029.i, i32 1, i32 %num_irq.4.i
  %35 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 24, ptr %arrayidx56.i, align 4
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then53.i, %if.end45.i.if.end57.i_crit_edge
  %num_irq.5.i = phi i32 [ %inc55.i, %if.then53.i ], [ %num_irq.4.i, %if.end45.i.if.end57.i_crit_edge ]
  %36 = ptrtoint ptr %max_radios.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %max_radios.i, align 2
  %conv59.i = zext i8 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %j.023.i, i32 %conv59.i)
  %cmp60.i = icmp ult i32 %j.023.i, %conv59.i
  br i1 %cmp60.i, label %if.then62.i, label %if.end57.i.for.inc.i_crit_edge

if.end57.i.for.inc.i_crit_edge:                   ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then62.i:                                      ; preds = %if.end57.i
  %38 = ptrtoint ptr %ring_mask.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ring_mask.i, align 4
  %arrayidx65.i = getelementptr %struct.ath11k_hw_ring_mask, ptr %39, i32 0, i32 6, i32 %i.029.i
  %40 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx65.i, align 1
  %conv66.i = zext i8 %41 to i32
  %and68.i = and i32 %shl.i, %conv66.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %tobool69.not.i = icmp eq i32 %and68.i, 0
  br i1 %tobool69.not.i, label %if.then62.i.if.end76.i_crit_edge, label %if.then70.i

if.then62.i.if.end76.i_crit_edge:                 ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76.i

if.then70.i:                                      ; preds = %if.then62.i
  %42 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_ops.i.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %tobool.not.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i, label %if.then70.i.ath11k_hw_get_mac_from_pdev_id.exit.i_crit_edge, label %if.then.i.i

if.then70.i.ath11k_hw_get_mac_from_pdev_id.exit.i_crit_edge: ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_hw_get_mac_from_pdev_id.exit.i

if.then.i.i:                                      ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call zeroext i8 %45(i32 noundef %j.023.i) #6
  %conv.i.i = zext i8 %call.i.i to i32
  br label %ath11k_hw_get_mac_from_pdev_id.exit.i

ath11k_hw_get_mac_from_pdev_id.exit.i:            ; preds = %if.then.i.i, %if.then70.i.ath11k_hw_get_mac_from_pdev_id.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.then.i.i ], [ 0, %if.then70.i.ath11k_hw_get_mac_from_pdev_id.exit.i_crit_edge ]
  %sub72.i = sub nsw i32 43, %retval.0.i.i
  %inc74.i = add i32 %num_irq.5.i, 1
  %arrayidx75.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.029.i, i32 1, i32 %num_irq.5.i
  %46 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub72.i, ptr %arrayidx75.i, align 4
  br label %if.end76.i

if.end76.i:                                       ; preds = %ath11k_hw_get_mac_from_pdev_id.exit.i, %if.then62.i.if.end76.i_crit_edge
  %num_irq.6.i = phi i32 [ %inc74.i, %ath11k_hw_get_mac_from_pdev_id.exit.i ], [ %num_irq.5.i, %if.then62.i.if.end76.i_crit_edge ]
  %47 = ptrtoint ptr %ring_mask.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ring_mask.i, align 4
  %arrayidx79.i = getelementptr %struct.ath11k_hw_ring_mask, ptr %48, i32 0, i32 7, i32 %i.029.i
  %49 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx79.i, align 1
  %conv80.i = zext i8 %50 to i32
  %and82.i = and i32 %shl.i, %conv80.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i)
  %tobool83.not.i = icmp eq i32 %and82.i, 0
  br i1 %tobool83.not.i, label %if.end76.i.if.end90.i_crit_edge, label %if.then84.i

if.end76.i.if.end90.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90.i

if.then84.i:                                      ; preds = %if.end76.i
  %51 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw_ops.i.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %tobool.not.i2.i = icmp eq ptr %54, null
  br i1 %tobool.not.i2.i, label %if.then84.i.ath11k_hw_get_mac_from_pdev_id.exit7.i_crit_edge, label %if.then.i5.i

if.then84.i.ath11k_hw_get_mac_from_pdev_id.exit7.i_crit_edge: ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_hw_get_mac_from_pdev_id.exit7.i

if.then.i5.i:                                     ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i3.i = tail call zeroext i8 %54(i32 noundef %j.023.i) #6
  %conv.i4.i = zext i8 %call.i3.i to i32
  br label %ath11k_hw_get_mac_from_pdev_id.exit7.i

ath11k_hw_get_mac_from_pdev_id.exit7.i:           ; preds = %if.then.i5.i, %if.then84.i.ath11k_hw_get_mac_from_pdev_id.exit7.i_crit_edge
  %retval.0.i6.i = phi i32 [ %conv.i4.i, %if.then.i5.i ], [ 0, %if.then84.i.ath11k_hw_get_mac_from_pdev_id.exit7.i_crit_edge ]
  %sub86.i = sub nsw i32 40, %retval.0.i6.i
  %inc88.i = add i32 %num_irq.6.i, 1
  %arrayidx89.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.029.i, i32 1, i32 %num_irq.6.i
  %55 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %sub86.i, ptr %arrayidx89.i, align 4
  br label %if.end90.i

if.end90.i:                                       ; preds = %ath11k_hw_get_mac_from_pdev_id.exit7.i, %if.end76.i.if.end90.i_crit_edge
  %num_irq.7.i = phi i32 [ %inc88.i, %ath11k_hw_get_mac_from_pdev_id.exit7.i ], [ %num_irq.6.i, %if.end76.i.if.end90.i_crit_edge ]
  %56 = ptrtoint ptr %ring_mask.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ring_mask.i, align 4
  %arrayidx93.i = getelementptr %struct.ath11k_hw_ring_mask, ptr %57, i32 0, i32 1, i32 %i.029.i
  %58 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx93.i, align 1
  %conv94.i = zext i8 %59 to i32
  %and96.i = and i32 %shl.i, %conv94.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96.i)
  %tobool97.not.i = icmp eq i32 %and96.i, 0
  br i1 %tobool97.not.i, label %if.end90.i.for.inc.i_crit_edge, label %if.then98.i

if.end90.i.for.inc.i_crit_edge:                   ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then98.i:                                      ; preds = %if.end90.i
  %60 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw_ops.i.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %tobool.not.i9.i = icmp eq ptr %63, null
  br i1 %tobool.not.i9.i, label %if.then98.i.ath11k_hw_get_mac_from_pdev_id.exit14.i_crit_edge, label %if.then.i12.i

if.then98.i.ath11k_hw_get_mac_from_pdev_id.exit14.i_crit_edge: ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_hw_get_mac_from_pdev_id.exit14.i

if.then.i12.i:                                    ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i10.i = tail call zeroext i8 %63(i32 noundef %j.023.i) #6
  %conv.i11.i = zext i8 %call.i10.i to i32
  br label %ath11k_hw_get_mac_from_pdev_id.exit14.i

ath11k_hw_get_mac_from_pdev_id.exit14.i:          ; preds = %if.then.i12.i, %if.then98.i.ath11k_hw_get_mac_from_pdev_id.exit14.i_crit_edge
  %retval.0.i13.i = phi i32 [ %conv.i11.i, %if.then.i12.i ], [ 0, %if.then98.i.ath11k_hw_get_mac_from_pdev_id.exit14.i_crit_edge ]
  %sub100.i = sub nsw i32 34, %retval.0.i13.i
  %inc102.i = add i32 %num_irq.7.i, 1
  %arrayidx103.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.029.i, i32 1, i32 %num_irq.7.i
  %64 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %sub100.i, ptr %arrayidx103.i, align 4
  %65 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw_ops.i.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %tobool.not.i16.i = icmp eq ptr %68, null
  br i1 %tobool.not.i16.i, label %ath11k_hw_get_mac_from_pdev_id.exit14.i.ath11k_hw_get_mac_from_pdev_id.exit21.i_crit_edge, label %if.then.i19.i

ath11k_hw_get_mac_from_pdev_id.exit14.i.ath11k_hw_get_mac_from_pdev_id.exit21.i_crit_edge: ; preds = %ath11k_hw_get_mac_from_pdev_id.exit14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_hw_get_mac_from_pdev_id.exit21.i

if.then.i19.i:                                    ; preds = %ath11k_hw_get_mac_from_pdev_id.exit14.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i17.i = tail call zeroext i8 %68(i32 noundef %j.023.i) #6
  %conv.i18.i = zext i8 %call.i17.i to i32
  br label %ath11k_hw_get_mac_from_pdev_id.exit21.i

ath11k_hw_get_mac_from_pdev_id.exit21.i:          ; preds = %if.then.i19.i, %ath11k_hw_get_mac_from_pdev_id.exit14.i.ath11k_hw_get_mac_from_pdev_id.exit21.i_crit_edge
  %retval.0.i20.i = phi i32 [ %conv.i18.i, %if.then.i19.i ], [ 0, %ath11k_hw_get_mac_from_pdev_id.exit14.i.ath11k_hw_get_mac_from_pdev_id.exit21.i_crit_edge ]
  %sub105.i = sub nsw i32 37, %retval.0.i20.i
  %inc107.i = add i32 %num_irq.7.i, 2
  %arrayidx108.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.029.i, i32 1, i32 %inc102.i
  %69 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub105.i, ptr %arrayidx108.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %ath11k_hw_get_mac_from_pdev_id.exit21.i, %if.end90.i.for.inc.i_crit_edge, %if.end57.i.for.inc.i_crit_edge
  %num_irq.8.i = phi i32 [ %inc107.i, %ath11k_hw_get_mac_from_pdev_id.exit21.i ], [ %num_irq.7.i, %if.end90.i.for.inc.i_crit_edge ], [ %num_irq.5.i, %if.end57.i.for.inc.i_crit_edge ]
  %inc111.i = add nuw nsw i32 %j.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc111.i, 16
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body5.i_crit_edge

for.inc.i.for.body5.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5.i

for.end.i:                                        ; preds = %for.inc.i
  %num_irq112.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.029.i, i32 2
  %70 = ptrtoint ptr %num_irq112.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %num_irq.8.i, ptr %num_irq112.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_irq.8.i)
  %cmp11527.not.i = icmp eq i32 %num_irq.8.i, 0
  br i1 %cmp11527.not.i, label %for.end.i.for.end130.i_crit_edge, label %for.end.i.for.body117.i_crit_edge

for.end.i.for.body117.i_crit_edge:                ; preds = %for.end.i
  br label %for.body117.i

for.end.i.for.end130.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end130.i

for.body117.i:                                    ; preds = %if.end127.i.for.body117.i_crit_edge, %for.end.i.for.body117.i_crit_edge
  %j.128.i = phi i32 [ %inc129.i, %if.end127.i.for.body117.i_crit_edge ], [ 0, %for.end.i.for.body117.i_crit_edge ]
  %arrayidx119.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.029.i, i32 1, i32 %j.128.i
  %71 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx119.i, align 4
  %73 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdev.i, align 4
  %arrayidx120.i = getelementptr [52 x ptr], ptr @irq_name, i32 0, i32 %72
  %75 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx120.i, align 4
  %call121.i = tail call i32 @platform_get_irq_byname(ptr noundef %74, ptr noundef %76) #6
  %arrayidx122.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 30, i32 %72
  %77 = ptrtoint ptr %arrayidx122.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call121.i, ptr %arrayidx122.i, align 4
  tail call void @irq_modify_status(i32 noundef %call121.i, i32 noundef 0, i32 noundef 528384) #6
  %call.i22.i = tail call i32 @request_threaded_irq(i32 noundef %call121.i, ptr noundef nonnull @ath11k_ahb_ext_interrupt_handler, ptr noundef null, i32 noundef 1, ptr noundef %76, ptr noundef %arrayidx.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.i)
  %tobool125.not.i = icmp eq i32 %call.i22.i, 0
  br i1 %tobool125.not.i, label %for.body117.i.if.end127.i_crit_edge, label %if.then126.i

for.body117.i.if.end127.i_crit_edge:              ; preds = %for.body117.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127.i

if.then126.i:                                     ; preds = %for.body117.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.75, i32 noundef %call121.i) #6
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.then126.i, %for.body117.i.if.end127.i_crit_edge
  %inc129.i = add nuw i32 %j.128.i, 1
  %78 = ptrtoint ptr %num_irq112.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_irq112.i, align 4
  %cmp115.i = icmp ult i32 %inc129.i, %79
  br i1 %cmp115.i, label %if.end127.i.for.body117.i_crit_edge, label %if.end127.i.for.end130.i_crit_edge

if.end127.i.for.end130.i_crit_edge:               ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end130.i

if.end127.i.for.body117.i_crit_edge:              ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body117.i

for.end130.i:                                     ; preds = %if.end127.i.for.end130.i_crit_edge, %for.end.i.for.end130.i_crit_edge
  %inc132.i = add nuw nsw i32 %i.029.i, 1
  %exitcond31.not.i = icmp eq i32 %inc132.i, 11
  br i1 %exitcond31.not.i, label %for.end130.i.cleanup11_crit_edge, label %for.end130.i.for.body.i_crit_edge

for.end130.i.for.body.i_crit_edge:                ; preds = %for.end130.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end130.i.cleanup11_crit_edge:                 ; preds = %for.end130.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup11

cleanup11:                                        ; preds = %for.end130.i.cleanup11_crit_edge, %if.end.cleanup11_crit_edge
  %retval.2 = phi i32 [ 0, %for.end130.i.cleanup11_crit_edge ], [ %call.i, %if.end.cleanup11_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath11k_ahb_fwreset_from_cold_boot(ptr noundef %ab) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ath11k_cold_boot_cal to i32))
  %0 = load i8, ptr @ath11k_cold_boot_cal, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp = icmp eq i8 %0, 0
  br i1 %cmp, label %entry.cleanup83_crit_edge, label %lor.lhs.false

entry.cleanup83_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup83

lor.lhs.false:                                    ; preds = %entry
  %cal_done = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 12
  %1 = ptrtoint ptr %cal_done to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %cal_done, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool3.not = icmp eq i8 %2, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.cleanup83_crit_edge

lor.lhs.false.cleanup83_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup83

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cold_boot_calib = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 32
  %3 = ptrtoint ptr %cold_boot_calib to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cold_boot_calib, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp7 = icmp eq i8 %4, 0
  br i1 %cmp7, label %lor.lhs.false4.cleanup83_crit_edge, label %do.body

lor.lhs.false4.cleanup83_crit_edge:               ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup83

do.body:                                          ; preds = %lor.lhs.false4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %5 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %do.body.if.then12_crit_edge

do.body.if.then12_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

lor.lhs.false10:                                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_ahb_fwreset_from_cold_boot, %if.then12)) #6
          to label %do.end [label %if.then12], !srcloc !182

if.then12:                                        ; preds = %lor.lhs.false10, %do.body.if.then12_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 1, ptr noundef nonnull @.str.76) #6
  br label %do.end

do.end:                                           ; preds = %if.then12, %lor.lhs.false10
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 360) #6
  %6 = ptrtoint ptr %cal_done to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cal_done, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp23 = icmp eq i8 %7, 1
  br i1 %cmp23, label %do.end.if.end71_crit_edge, label %if.then34

do.end.if.end71_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then34:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %cold_boot_waitq = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 16
  %call3713 = call i32 @prepare_to_wait_event(ptr noundef %cold_boot_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %9 = ptrtoint ptr %cal_done to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cal_done, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp4214 = icmp eq i8 %10, 1
  br i1 %cmp4214, label %if.end66.thread, label %if.then34.cleanup_crit_edge

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  br label %cleanup

if.end66.thread:                                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  call void @finish_wait(ptr noundef %cold_boot_waitq, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end71

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then34.cleanup_crit_edge
  %__ret35.115 = phi i32 [ %__ret35.1, %cleanup.cleanup_crit_edge ], [ 4000, %if.then34.cleanup_crit_edge ]
  %call62 = call i32 @schedule_timeout(i32 noundef %__ret35.115) #6
  %call37 = call i32 @prepare_to_wait_event(ptr noundef %cold_boot_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %11 = ptrtoint ptr %cal_done to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cal_done, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp42 = icmp eq i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool48.not = icmp eq i32 %call62, 0
  %13 = select i1 %cmp42, i1 %tobool48.not, i1 false
  %__ret35.1 = select i1 %13, i32 1, i32 %call62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret35.1)
  %tobool55.not = icmp eq i32 %__ret35.1, 0
  %14 = select i1 %cmp42, i1 true, i1 %tobool55.not
  br i1 %14, label %if.end66, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end66:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret35.1)
  %phi.cmp = icmp slt i32 %__ret35.1, 1
  call void @finish_wait(ptr noundef %cold_boot_waitq, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br i1 %phi.cmp, label %if.then70, label %if.end66.if.end71_crit_edge

if.end66.if.end71_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_store1_noabort(i32 ptrtoint (ptr @ath11k_cold_boot_cal to i32))
  store i8 0, ptr @ath11k_cold_boot_cal, align 1
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.77) #6
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end66.if.end71_crit_edge, %if.end66.thread, %do.end.if.end71_crit_edge
  %drv_priv.i.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 61
  %15 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drv_priv.i.i, align 4
  call void @rproc_shutdown(ptr noundef %16) #6
  %17 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %drv_priv.i.i, align 4
  %call1.i = call i32 @rproc_boot(ptr noundef %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end71.ath11k_ahb_power_up.exit_crit_edge, label %if.then.i

if.end71.ath11k_ahb_power_up.exit_crit_edge:      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_ahb_power_up.exit

if.then.i:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.19) #6
  br label %ath11k_ahb_power_up.exit

ath11k_ahb_power_up.exit:                         ; preds = %if.then.i, %if.end71.ath11k_ahb_power_up.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %19 = load i32, ptr @ath11k_debug_mask, align 4
  %and74 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %lor.lhs.false76, label %ath11k_ahb_power_up.exit.if.then79_crit_edge

ath11k_ahb_power_up.exit.if.then79_crit_edge:     ; preds = %ath11k_ahb_power_up.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then79

lor.lhs.false76:                                  ; preds = %ath11k_ahb_power_up.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_ahb_fwreset_from_cold_boot, %if.then79)) #6
          to label %cleanup83 [label %if.then79], !srcloc !182

if.then79:                                        ; preds = %lor.lhs.false76, %ath11k_ahb_power_up.exit.if.then79_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 1, ptr noundef nonnull @.str.78) #6
  br label %cleanup83

cleanup83:                                        ; preds = %if.then79, %lor.lhs.false76, %lor.lhs.false4.cleanup83_crit_edge, %lor.lhs.false.cleanup83_crit_edge, %entry.cleanup83_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_ce_free_pipes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_hal_srng_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_core_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_ahb_read32(ptr nocapture noundef readonly %ab, i32 noundef %offset) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %mem = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 10
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !183
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !184
  ret i32 %3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_ahb_write32(ptr nocapture noundef readonly %ab, i32 noundef %offset, i32 noundef %value) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %mem = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 10
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !185
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %value) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !186
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_ahb_ext_irq_enable(ptr noundef %ab) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %ath11k_ahb_ext_grp_enable.exit.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %ath11k_ahb_ext_grp_enable.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.07
  %napi_enabled = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.07, i32 5
  %0 = ptrtoint ptr %napi_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %napi_enabled, align 8, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %napi = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.07, i32 6
  tail call void @napi_enable(ptr noundef %napi) #6
  %2 = ptrtoint ptr %napi_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %napi_enabled, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %num_irq.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.07, i32 2
  %3 = ptrtoint ptr %num_irq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp6.not.i = icmp eq i32 %4, 0
  br i1 %cmp6.not.i, label %if.end.ath11k_ahb_ext_grp_enable.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.ath11k_ahb_ext_grp_enable.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_ahb_ext_grp_enable.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 128
  %arrayidx.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.07, i32 1, i32 %i.07.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.ath11k_base, ptr %6, i32 0, i32 30, i32 %8
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx1.i, align 4
  tail call void @enable_irq(i32 noundef %10) #6
  %inc.i = add nuw i32 %i.07.i, 1
  %11 = ptrtoint ptr %num_irq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_irq.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %12
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ath11k_ahb_ext_grp_enable.exit_crit_edge

for.body.i.ath11k_ahb_ext_grp_enable.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_ahb_ext_grp_enable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ath11k_ahb_ext_grp_enable.exit:                   ; preds = %for.body.i.ath11k_ahb_ext_grp_enable.exit_crit_edge, %if.end.ath11k_ahb_ext_grp_enable.exit_crit_edge
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.end, label %ath11k_ahb_ext_grp_enable.exit.for.body_crit_edge

ath11k_ahb_ext_grp_enable.exit.for.body_crit_edge: ; preds = %ath11k_ahb_ext_grp_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %ath11k_ahb_ext_grp_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_ahb_ext_irq_disable(ptr noundef %ab) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.09.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.09.i
  %num_irq.i.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.09.i, i32 2
  %0 = ptrtoint ptr %num_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_irq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.not.i.i = icmp eq i32 %1, 0
  br i1 %cmp6.not.i.i, label %for.body.i.ath11k_ahb_ext_grp_disable.exit.i_crit_edge, label %for.body.i.for.body.i.i_crit_edge

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

for.body.i.ath11k_ahb_ext_grp_disable.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_ahb_ext_grp_disable.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %i.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.for.body.i.i_crit_edge ]
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 128
  %arrayidx.i.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.09.i, i32 1, i32 %i.07.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx1.i.i = getelementptr %struct.ath11k_base, ptr %3, i32 0, i32 30, i32 %5
  %6 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1.i.i, align 4
  tail call void @disable_irq_nosync(i32 noundef %7) #6
  %inc.i.i = add nuw i32 %i.07.i.i, 1
  %8 = ptrtoint ptr %num_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_irq.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %9
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.ath11k_ahb_ext_grp_disable.exit.i_crit_edge

for.body.i.i.ath11k_ahb_ext_grp_disable.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_ahb_ext_grp_disable.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

ath11k_ahb_ext_grp_disable.exit.i:                ; preds = %for.body.i.i.ath11k_ahb_ext_grp_disable.exit.i_crit_edge, %for.body.i.ath11k_ahb_ext_grp_disable.exit.i_crit_edge
  %napi_enabled.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.09.i, i32 5
  %10 = ptrtoint ptr %napi_enabled.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %napi_enabled.i, align 8, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %ath11k_ahb_ext_grp_disable.exit.i.if.end.i_crit_edge, label %if.then.i

ath11k_ahb_ext_grp_disable.exit.i.if.end.i_crit_edge: ; preds = %ath11k_ahb_ext_grp_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %ath11k_ahb_ext_grp_disable.exit.i
  %napi.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.09.i, i32 6
  %state.i.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.09.i, i32 6, i32 1
  %12 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i.i, align 4
  %and1.i1.i.i = and i32 %13, 1
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
  %14 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %15, 1
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.napi_synchronize.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.body.i.i.napi_synchronize.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %napi_synchronize.exit.i

napi_synchronize.exit.i:                          ; preds = %while.body.i.i.napi_synchronize.exit.i_crit_edge, %if.then.i.napi_synchronize.exit.i_crit_edge
  tail call void @napi_disable(ptr noundef %napi.i) #6
  %16 = ptrtoint ptr %napi_enabled.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %napi_enabled.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %napi_synchronize.exit.i, %ath11k_ahb_ext_grp_disable.exit.i.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.09.i, 1
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
  %17 = ptrtoint ptr %num_irq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp215.not.i = icmp eq i32 %18, 0
  br i1 %cmp215.not.i, label %for.cond1.preheader.i.for.end.i_crit_edge, label %for.cond1.preheader.i.for.body3.i_crit_edge

for.cond1.preheader.i.for.body3.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body3.i

for.cond1.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.cond1.preheader.i.for.body3.i_crit_edge
  %j.016.i = phi i32 [ %inc.i2, %for.body3.i.for.body3.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 %i.017.i, i32 1, i32 %j.016.i
  %19 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 30, i32 %20
  %21 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx5.i, align 4
  tail call void @synchronize_irq(i32 noundef %22) #6
  %inc.i2 = add nuw i32 %j.016.i, 1
  %23 = ptrtoint ptr %num_irq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_irq.i, align 4
  %cmp2.i = icmp ult i32 %inc.i2, %24
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
  br i1 %exitcond.not.i3, label %ath11k_ahb_sync_ext_irqs.exit, label %for.end.i.for.cond1.preheader.i_crit_edge

for.end.i.for.cond1.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader.i

ath11k_ahb_sync_ext_irqs.exit:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_ahb_start(ptr noundef %ab) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ce_count.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 11
  %0 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ce_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.not.i = icmp eq i32 %1, 0
  br i1 %cmp6.not.i, label %entry.ath11k_ahb_ce_irqs_enable.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.ath11k_ahb_ce_irqs_enable.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_ahb_ce_irqs_enable.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %call.i = tail call i32 @ath11k_ce_get_attr_flags(ptr noundef %ab, i32 noundef %i.07.i) #6
  %and.i = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i32 %i.07.i to i16
  tail call fastcc void @ath11k_ahb_ce_irq_enable(ptr noundef %ab, i16 noundef zeroext %conv.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.07.i, 1
  %2 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ce_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %3
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ath11k_ahb_ce_irqs_enable.exit_crit_edge

for.inc.i.ath11k_ahb_ce_irqs_enable.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_ahb_ce_irqs_enable.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ath11k_ahb_ce_irqs_enable.exit:                   ; preds = %for.inc.i.ath11k_ahb_ce_irqs_enable.exit_crit_edge, %entry.ath11k_ahb_ce_irqs_enable.exit_crit_edge
  tail call void @ath11k_ce_rx_post_buf(ptr noundef %ab) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_ahb_stop(ptr noundef %ab) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_flags = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 45
  %0 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %dev_flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %ce_count.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 11
  %3 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ce_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp6.not.i = icmp eq i32 %4, 0
  br i1 %cmp6.not.i, label %if.then.if.end_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %call.i = tail call i32 @ath11k_ce_get_attr_flags(ptr noundef %ab, i32 noundef %i.07.i) #6
  %and.i = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i32 %i.07.i to i16
  tail call fastcc void @ath11k_ahb_ce_irq_disable(ptr noundef %ab, i16 noundef zeroext %conv.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.07.i, 1
  %5 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ce_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %6
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %ce_count.i7 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 11
  %7 = ptrtoint ptr %ce_count.i7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ce_count.i7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6.not.i8 = icmp eq i32 %8, 0
  br i1 %cmp6.not.i8, label %if.end.ath11k_ahb_kill_tasklets.exit_crit_edge, label %if.end.for.body.i13_crit_edge

if.end.for.body.i13_crit_edge:                    ; preds = %if.end
  br label %for.body.i13

if.end.ath11k_ahb_kill_tasklets.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_ahb_kill_tasklets.exit

for.body.i13:                                     ; preds = %for.inc.i17.for.body.i13_crit_edge, %if.end.for.body.i13_crit_edge
  %i.07.i9 = phi i32 [ %inc.i15, %for.inc.i17.for.body.i13_crit_edge ], [ 0, %if.end.for.body.i13_crit_edge ]
  %call.i10 = tail call i32 @ath11k_ce_get_attr_flags(ptr noundef %ab, i32 noundef %i.07.i9) #6
  %and.i11 = and i32 %call.i10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11)
  %tobool.not.i12 = icmp eq i32 %and.i11, 0
  br i1 %tobool.not.i12, label %if.end.i14, label %for.body.i13.for.inc.i17_crit_edge

for.body.i13.for.inc.i17_crit_edge:               ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i17

if.end.i14:                                       ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add i32 %i.07.i9, 4
  %arrayidx.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 30, i32 %add.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  tail call void @synchronize_irq(i32 noundef %10) #6
  br label %for.inc.i17

for.inc.i17:                                      ; preds = %if.end.i14, %for.body.i13.for.inc.i17_crit_edge
  %inc.i15 = add nuw i32 %i.07.i9, 1
  %11 = ptrtoint ptr %ce_count.i7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ce_count.i7, align 4
  %cmp.i16 = icmp ult i32 %inc.i15, %12
  br i1 %cmp.i16, label %for.inc.i17.for.body.i13_crit_edge, label %ath11k_ahb_sync_ce_irqs.exit

for.inc.i17.for.body.i13_crit_edge:               ; preds = %for.inc.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i13

ath11k_ahb_sync_ce_irqs.exit:                     ; preds = %for.inc.i17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp7.not.i = icmp eq i32 %12, 0
  br i1 %cmp7.not.i, label %ath11k_ahb_sync_ce_irqs.exit.ath11k_ahb_kill_tasklets.exit_crit_edge, label %for.body.lr.ph.i

ath11k_ahb_sync_ce_irqs.exit.ath11k_ahb_kill_tasklets.exit_crit_edge: ; preds = %ath11k_ahb_sync_ce_irqs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_ahb_kill_tasklets.exit

for.body.lr.ph.i:                                 ; preds = %ath11k_ahb_sync_ce_irqs.exit
  %ce.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 14
  br label %for.body.i22

for.body.i22:                                     ; preds = %cleanup.i.for.body.i22_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i24, %cleanup.i.for.body.i22_crit_edge ]
  %call.i19 = tail call i32 @ath11k_ce_get_attr_flags(ptr noundef %ab, i32 noundef %i.08.i) #6
  %and.i20 = and i32 %call.i19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20)
  %tobool.not.i21 = icmp eq i32 %and.i20, 0
  br i1 %tobool.not.i21, label %if.end.i23, label %for.body.i22.cleanup.i_crit_edge

for.body.i22.cleanup.i_crit_edge:                 ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end.i23:                                       ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #8
  %intr_tq.i = getelementptr [12 x %struct.ath11k_ce_pipe], ptr %ce.i, i32 0, i32 %i.08.i, i32 7
  tail call void @tasklet_kill(ptr noundef %intr_tq.i) #6
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i23, %for.body.i22.cleanup.i_crit_edge
  %inc.i24 = add nuw i32 %i.08.i, 1
  %13 = ptrtoint ptr %ce_count.i7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ce_count.i7, align 4
  %cmp.i25 = icmp ult i32 %inc.i24, %14
  br i1 %cmp.i25, label %cleanup.i.for.body.i22_crit_edge, label %cleanup.i.ath11k_ahb_kill_tasklets.exit_crit_edge

cleanup.i.ath11k_ahb_kill_tasklets.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_ahb_kill_tasklets.exit

cleanup.i.for.body.i22_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i22

ath11k_ahb_kill_tasklets.exit:                    ; preds = %cleanup.i.ath11k_ahb_kill_tasklets.exit_crit_edge, %ath11k_ahb_sync_ce_irqs.exit.ath11k_ahb_kill_tasklets.exit_crit_edge, %if.end.ath11k_ahb_kill_tasklets.exit_crit_edge
  %rx_replenish_retry = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 15
  %call1 = tail call i32 @del_timer_sync(ptr noundef %rx_replenish_retry) #6
  tail call void @ath11k_ce_cleanup_pipes(ptr noundef %ab) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_ahb_power_up(ptr noundef %ab) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 61
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %call1 = tail call i32 @rproc_boot(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.19) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_ahb_power_down(ptr nocapture noundef readonly %ab) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 61
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  tail call void @rproc_shutdown(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_ahb_map_service_to_pipe(ptr nocapture noundef readonly %ab, i16 noundef zeroext %service_id, ptr nocapture noundef writeonly %ul_pipe, ptr nocapture noundef writeonly %dl_pipe) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end.for.inc_crit_edge [
    i32 3, label %sw.bb62
    i32 1, label %sw.bb
    i32 2, label %sw.bb28
  ]

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb:                                            ; preds = %if.end
  br i1 %dl_set.0.off0197, label %do.end, label %sw.bb.if.end20_crit_edge, !prof !187

sw.bb.if.end20_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 599, i32 noundef 9, ptr noundef null) #6
  br label %if.end20

if.end20:                                         ; preds = %do.end, %sw.bb.if.end20_crit_edge
  %pipenum = getelementptr %struct.service_to_pipe, ptr %3, i32 %i.0195, i32 2
  br label %for.inc.sink.split

sw.bb28:                                          ; preds = %if.end
  br i1 %ul_set.0.off0198, label %do.end46, label %sw.bb28.if.end52_crit_edge, !prof !187

sw.bb28.if.end52_crit_edge:                       ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

do.end46:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 604, i32 noundef 9, ptr noundef null) #6
  br label %if.end52

if.end52:                                         ; preds = %do.end46, %sw.bb28.if.end52_crit_edge
  %pipenum60 = getelementptr %struct.service_to_pipe, ptr %3, i32 %i.0195, i32 2
  br label %for.inc.sink.split

sw.bb62:                                          ; preds = %if.end
  br i1 %dl_set.0.off0197, label %do.end80, label %sw.bb62.if.end86_crit_edge, !prof !187

sw.bb62.if.end86_crit_edge:                       ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

do.end80:                                         ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 609, i32 noundef 9, ptr noundef null) #6
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %sw.bb62.if.end86_crit_edge
  br i1 %ul_set.0.off0198, label %do.end111, label %if.end86.if.end117_crit_edge, !prof !187

if.end86.if.end117_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

do.end111:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 610, i32 noundef 9, ptr noundef null) #6
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
  br i1 %21, label %for.end.if.end155_crit_edge, label %for.end.do.end149_crit_edge, !prof !188

for.end.do.end149_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end149

for.end.if.end155_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end155

do.end149:                                        ; preds = %for.end.do.end149_crit_edge, %entry.do.end149_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 619, i32 noundef 9, ptr noundef null) #6
  br label %if.end155

if.end155:                                        ; preds = %do.end149, %for.end.if.end155_crit_edge
  %. = phi i32 [ -2, %do.end149 ], [ 0, %for.end.if.end155_crit_edge ]
  ret i32 %.
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_ce_rx_post_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_ce_get_attr_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath11k_ahb_ce_irq_enable(ptr nocapture noundef readonly %ab, i16 noundef zeroext %ce_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_ce_config = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 10
  %0 = ptrtoint ptr %host_ce_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_ce_config, align 4
  %idxprom = zext i16 %ce_id to i32
  %src_nentries = getelementptr %struct.ce_attr, ptr %1, i32 %idxprom, i32 1
  %2 = ptrtoint ptr %src_nentries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src_nentries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mem.i.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 10
  %4 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 10584124
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !183
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !184
  %8 = and i16 %ce_id, 255
  %conv.i = zext i16 %8 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %or.i = or i32 %7, %shl.i
  %9 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mem.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %10, i32 10584124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !185
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %11) #6, !srcloc !186
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dest_nentries = getelementptr %struct.ce_attr, ptr %1, i32 %idxprom, i32 3
  %12 = ptrtoint ptr %dest_nentries to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dest_nentries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.not = icmp eq i32 %13, 0
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mem.i.i14 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 10
  %14 = ptrtoint ptr %mem.i.i14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mem.i.i14, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %15, i32 10584128
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i15) #6, !srcloc !183
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !184
  %conv3.mask = and i16 %ce_id, 255
  %conv.i16 = zext i16 %conv3.mask to i32
  %shl.i17 = shl nuw i32 1, %conv.i16
  %or.i18 = or i32 %17, %shl.i17
  %18 = ptrtoint ptr %mem.i.i14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mem.i.i14, align 4
  %add.ptr.i4.i19 = getelementptr i8, ptr %19, i32 10584128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !185
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i18) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i19, i32 %20) #6, !srcloc !186
  %21 = ptrtoint ptr %mem.i.i14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mem.i.i14, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %22, i32 10584124
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i21) #6, !srcloc !183
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !184
  %25 = add i16 %ce_id, 12
  %26 = and i16 %25, 255
  %conv.i22 = zext i16 %26 to i32
  %shl.i23 = shl nuw i32 1, %conv.i22
  %or.i24 = or i32 %24, %shl.i23
  %27 = ptrtoint ptr %mem.i.i14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mem.i.i14, align 4
  %add.ptr.i4.i25 = getelementptr i8, ptr %28, i32 10584124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !185
  tail call void @arm_heavy_mb() #6
  %29 = tail call i32 @llvm.bswap.i32(i32 %or.i24) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i25, i32 %29) #6, !srcloc !186
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_ce_cleanup_pipes(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath11k_ahb_ce_irq_disable(ptr nocapture noundef readonly %ab, i16 noundef zeroext %ce_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_ce_config = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 10
  %0 = ptrtoint ptr %host_ce_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_ce_config, align 4
  %idxprom = zext i16 %ce_id to i32
  %src_nentries = getelementptr %struct.ce_attr, ptr %1, i32 %idxprom, i32 1
  %2 = ptrtoint ptr %src_nentries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src_nentries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mem.i.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 10
  %4 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 10584124
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !183
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !184
  %8 = and i16 %ce_id, 255
  %conv.i = zext i16 %8 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %7, %neg.i
  %9 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mem.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %10, i32 10584124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !185
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %11) #6, !srcloc !186
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dest_nentries = getelementptr %struct.ce_attr, ptr %1, i32 %idxprom, i32 3
  %12 = ptrtoint ptr %dest_nentries to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dest_nentries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.not = icmp eq i32 %13, 0
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mem.i.i14 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 10
  %14 = ptrtoint ptr %mem.i.i14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mem.i.i14, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %15, i32 10584128
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i15) #6, !srcloc !183
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !184
  %conv3.mask = and i16 %ce_id, 255
  %conv.i16 = zext i16 %conv3.mask to i32
  %shl.i17 = shl nuw i32 1, %conv.i16
  %neg.i18 = xor i32 %shl.i17, -1
  %and.i19 = and i32 %17, %neg.i18
  %18 = ptrtoint ptr %mem.i.i14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mem.i.i14, align 4
  %add.ptr.i4.i20 = getelementptr i8, ptr %19, i32 10584128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !185
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %and.i19) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i20, i32 %20) #6, !srcloc !186
  %21 = ptrtoint ptr %mem.i.i14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mem.i.i14, align 4
  %add.ptr.i.i22 = getelementptr i8, ptr %22, i32 10584124
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i22) #6, !srcloc !183
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !184
  %25 = add i16 %ce_id, 12
  %26 = and i16 %25, 255
  %conv.i23 = zext i16 %26 to i32
  %shl.i24 = shl nuw i32 1, %conv.i23
  %neg.i25 = xor i32 %shl.i24, -1
  %and.i26 = and i32 %24, %neg.i25
  %27 = ptrtoint ptr %mem.i.i14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mem.i.i14, align 4
  %add.ptr.i4.i27 = getelementptr i8, ptr %28, i32 10584124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !185
  tail call void @arm_heavy_mb() #6
  %29 = tail call i32 @llvm.bswap.i32(i32 %and.i26) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i27, i32 %29) #6, !srcloc !186
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_boot(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_get_by_phandle(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_ahb_ce_tasklet(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -28
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %pipe_num = getelementptr i8, ptr %t, i32 -24
  %2 = ptrtoint ptr %pipe_num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pipe_num, align 4
  tail call void @ath11k_ce_per_engine_service(ptr noundef %1, i16 noundef zeroext %3) #6
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %6 = ptrtoint ptr %pipe_num to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pipe_num, align 4
  tail call fastcc void @ath11k_ahb_ce_irq_enable(ptr noundef %5, i16 noundef zeroext %7)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_ahb_ce_interrupt_handler(i32 noundef %irq, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i32 %0 to i64
  %timestamp = getelementptr inbounds %struct.ath11k_ce_pipe, ptr %arg, i32 0, i32 11
  %1 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %conv, ptr %timestamp, align 8
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arg, align 8
  %pipe_num = getelementptr inbounds %struct.ath11k_ce_pipe, ptr %arg, i32 0, i32 1
  %4 = ptrtoint ptr %pipe_num to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pipe_num, align 4
  tail call fastcc void @ath11k_ahb_ce_irq_disable(ptr noundef %3, i16 noundef zeroext %5)
  %state.i = getelementptr inbounds %struct.ath11k_ce_pipe, ptr %arg, i32 0, i32 7, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %intr_tq = getelementptr inbounds %struct.ath11k_ce_pipe, ptr %arg, i32 0, i32 7
  tail call void @__tasklet_schedule(ptr noundef %intr_tq) #6
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_ce_per_engine_service(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_dummy_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_ahb_ext_grp_napi_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
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
  %num_irq.i = getelementptr i8, ptr %napi, i32 -28
  %2 = ptrtoint ptr %num_irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.not.i = icmp eq i32 %3, 0
  br i1 %cmp6.not.i, label %if.then.if.end_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 128
  %arrayidx.i = getelementptr %struct.ath11k_ext_irq_grp, ptr %add.ptr, i32 0, i32 1, i32 %i.07.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.ath11k_base, ptr %5, i32 0, i32 30, i32 %7
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1.i, align 4
  tail call void @enable_irq(i32 noundef %9) #6
  %inc.i = add nuw i32 %i.07.i, 1
  %10 = ptrtoint ptr %num_irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_irq.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = tail call i32 @llvm.smin.i32(i32 %call, i32 %budget)
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_ahb_ext_interrupt_handler(i32 noundef %irq, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i32 %0 to i64
  %timestamp = getelementptr inbounds %struct.ath11k_ext_irq_grp, ptr %arg, i32 0, i32 4
  %1 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %conv, ptr %timestamp, align 16
  %num_irq.i = getelementptr inbounds %struct.ath11k_ext_irq_grp, ptr %arg, i32 0, i32 2
  %2 = ptrtoint ptr %num_irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.not.i = icmp eq i32 %3, 0
  br i1 %cmp6.not.i, label %entry.ath11k_ahb_ext_grp_disable.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.ath11k_ahb_ext_grp_disable.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_ahb_ext_grp_disable.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arg, align 128
  %arrayidx.i = getelementptr %struct.ath11k_ext_irq_grp, ptr %arg, i32 0, i32 1, i32 %i.07.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.ath11k_base, ptr %5, i32 0, i32 30, i32 %7
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1.i, align 4
  tail call void @disable_irq_nosync(i32 noundef %9) #6
  %inc.i = add nuw i32 %i.07.i, 1
  %10 = ptrtoint ptr %num_irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_irq.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ath11k_ahb_ext_grp_disable.exit_crit_edge

for.body.i.ath11k_ahb_ext_grp_disable.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_ahb_ext_grp_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ath11k_ahb_ext_grp_disable.exit:                  ; preds = %for.body.i.ath11k_ahb_ext_grp_disable.exit_crit_edge, %entry.ath11k_ahb_ext_grp_disable.exit_crit_edge
  %napi = getelementptr inbounds %struct.ath11k_ext_irq_grp, ptr %arg, i32 0, i32 6
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #6
  br i1 %call.i, label %if.then.i, label %ath11k_ahb_ext_grp_disable.exit.napi_schedule.exit_crit_edge

ath11k_ahb_ext_grp_disable.exit.napi_schedule.exit_crit_edge: ; preds = %ath11k_ahb_ext_grp_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %ath11k_ahb_ext_grp_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__napi_schedule(ptr noundef %napi) #6
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %ath11k_ahb_ext_grp_disable.exit.napi_schedule.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_dp_service_srng(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath11k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_debugfs_soc_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_qmi_deinit_service(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_core_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @__initcall__kmod_ath11k_ahb__373_799_ath11k_ahb_init6, !1, !"__initcall__kmod_ath11k_ahb__373_799_ath11k_ahb_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 799, i32 1}
!2 = !{ptr @__exitcall_ath11k_ahb_exit, !3, !"__exitcall_ath11k_ahb_exit", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 805, i32 1}
!4 = !{ptr @__UNIQUE_ID_description374, !5, !"__UNIQUE_ID_description374", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 807, i32 1}
!6 = !{ptr @__UNIQUE_ID_file375, !7, !"__UNIQUE_ID_file375", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 808, i32 1}
!8 = !{ptr @__UNIQUE_ID_license376, !7, !"__UNIQUE_ID_license376", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 788, i32 13}
!11 = !{ptr @ath11k_ahb_driver, !12, !"ath11k_ahb_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 786, i32 31}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 669, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ath11k_ahb_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @ath11k_ahb_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 675, i32 3}
!23 = !{ptr @ath11k_ahb_probe._entry.6, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @ath11k_ahb_probe._entry_ptr.8, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 681, i32 3}
!27 = !{ptr @ath11k_ahb_probe._entry.9, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @ath11k_ahb_probe._entry_ptr.11, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 689, i32 3}
!31 = !{ptr @ath11k_ahb_probe._entry.12, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ath11k_ahb_probe._entry_ptr.14, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 710, i32 18}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 718, i32 18}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 724, i32 18}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 730, i32 18}
!41 = !{ptr @ath11k_ahb_bus_params, !42, !"ath11k_ahb_bus_params", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 31, i32 39}
!43 = !{ptr @ath11k_ahb_hif_ops, !44, !"ath11k_ahb_hif_ops", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 625, i32 36}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 337, i32 18}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 644, i32 41}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 645, i32 18}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 651, i32 18}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 41, i32 2}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 42, i32 2}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 43, i32 2}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 44, i32 2}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 45, i32 2}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 46, i32 2}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 47, i32 2}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 48, i32 2}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 49, i32 2}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 50, i32 2}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 51, i32 2}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 52, i32 2}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 53, i32 2}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 54, i32 2}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 55, i32 2}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 56, i32 2}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 57, i32 2}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 58, i32 2}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 59, i32 2}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 60, i32 2}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 61, i32 2}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 62, i32 2}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 63, i32 2}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 64, i32 2}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 65, i32 2}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 66, i32 2}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 67, i32 2}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 68, i32 2}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 69, i32 2}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 70, i32 2}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 71, i32 2}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 72, i32 2}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 73, i32 2}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 74, i32 2}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 75, i32 2}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 76, i32 2}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 77, i32 2}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 78, i32 2}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 79, i32 2}
!131 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 80, i32 2}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 81, i32 2}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 82, i32 2}
!137 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 83, i32 2}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 84, i32 2}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 85, i32 2}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 86, i32 2}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 87, i32 2}
!147 = !{ptr @.str.70, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 88, i32 2}
!149 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 89, i32 2}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 90, i32 2}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 91, i32 2}
!155 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 92, i32 2}
!157 = !{ptr @irq_name, !158, !"irq_name", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 40, i32 20}
!159 = !{ptr @.str.75, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 542, i32 20}
!161 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 357, i32 2}
!163 = !{ptr @.str.77, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 363, i32 19}
!165 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 370, i32 2}
!167 = !{ptr @.str.79, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 769, i32 20}
!169 = !{ptr @ath11k_ahb_of_match, !170, !"ath11k_ahb_of_match", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/ath/ath11k/ahb.c", i32 16, i32 34}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{!"auto-init"}
!181 = !{i8 0, i8 2}
!182 = !{i64 2148971045, i64 2148971050, i64 2148971063, i64 2148971107, i64 2148971141, i64 2148971162}
!183 = !{i64 6403352}
!184 = !{i64 2153936211}
!185 = !{i64 2153937566}
!186 = !{i64 6402934}
!187 = !{!"branch_weights", i32 1, i32 2000}
!188 = !{!"branch_weights", i32 2000, i32 1}
