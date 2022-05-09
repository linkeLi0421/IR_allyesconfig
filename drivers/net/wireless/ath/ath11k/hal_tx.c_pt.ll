; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath11k/hal_tx.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath11k/hal_tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hal_tx_info = type { i16, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.ath11k_buffer_addr = type { i32, i32 }
%struct.hal_tcl_data_cmd = type { %struct.ath11k_buffer_addr, i32, i32, i32, i32, i32 }
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
%struct.ath11k_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath11k_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hal_srng_params = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_hal_tx_cmd_desc_setup(ptr noundef %ab, ptr noundef %cmd, ptr nocapture noundef readonly %ti) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %paddr = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 5
  %0 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %paddr, align 4
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %1, ptr %cmd, align 1
  %info1 = getelementptr inbounds %struct.ath11k_buffer_addr, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %info1 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 0, ptr %info1, align 1
  %ring_id = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 1
  %4 = ptrtoint ptr %ring_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ring_id, align 2
  %conv56 = zext i8 %5 to i32
  %desc_id = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 2
  %6 = ptrtoint ptr %desc_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %desc_id, align 4
  %add77 = shl nuw nsw i32 %conv56, 8
  %shl78 = add nuw nsw i32 %add77, 768
  %and79 = and i32 %shl78, 1792
  %shl104 = shl i32 %7, 11
  %or = or i32 %shl104, %and79
  store i32 %or, ptr %info1, align 1
  %type = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 3
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %encap_type = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 4
  %10 = ptrtoint ptr %encap_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %encap_type, align 4
  %encrypt_type = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 8
  %12 = ptrtoint ptr %encrypt_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %encrypt_type, align 4
  %search_type = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 15
  %14 = ptrtoint ptr %search_type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %search_type, align 1
  %addr_search_flags = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 11
  %16 = ptrtoint ptr %addr_search_flags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %addr_search_flags, align 4
  %and134 = and i32 %9, 1
  %shl159 = shl i32 %11, 2
  %and160 = and i32 %shl159, 12
  %or161 = or i32 %and160, %and134
  %shl186 = shl i32 %13, 4
  %and187 = and i32 %shl186, 240
  %or188 = or i32 %or161, %and187
  %conv214 = zext i8 %15 to i32
  %shl215 = shl nuw nsw i32 %conv214, 12
  %and216 = and i32 %shl215, 12288
  %or217 = or i32 %or188, %and216
  %conv243 = zext i16 %17 to i32
  %shl244 = shl nuw nsw i32 %conv243, 14
  %and245 = and i32 %shl244, 49152
  %or246 = or i32 %or217, %and245
  %18 = ptrtoint ptr %ti to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ti, align 4
  %conv272 = zext i16 %19 to i32
  %shl273 = shl nuw i32 %conv272, 16
  %or275 = or i32 %or246, %shl273
  %info0276 = getelementptr inbounds %struct.hal_tcl_data_cmd, ptr %cmd, i32 0, i32 1
  %20 = ptrtoint ptr %info0276 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %or275, ptr %info0276, align 1
  %data_len = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 6
  %21 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_len, align 4
  %pkt_offset = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 7
  %23 = ptrtoint ptr %pkt_offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pkt_offset, align 4
  %flags0 = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 9
  %25 = ptrtoint ptr %flags0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags0, align 4
  %and302 = and i32 %22, 65535
  %shl328 = shl i32 %24, 23
  %or303 = or i32 %shl328, %and302
  %or330 = or i32 %or303, %26
  %info1331 = getelementptr inbounds %struct.hal_tcl_data_cmd, ptr %cmd, i32 0, i32 2
  %27 = ptrtoint ptr %info1331 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %or330, ptr %info1331, align 1
  %tid = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 14
  %28 = ptrtoint ptr %tid to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tid, align 2
  %lmac_id = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 16
  %30 = ptrtoint ptr %lmac_id to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %lmac_id, align 4
  %flags1 = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 10
  %32 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags1, align 4
  %conv357 = zext i8 %29 to i32
  %shl358 = shl nuw nsw i32 %conv357, 22
  %and359 = and i32 %shl358, 62914560
  %conv386 = zext i8 %31 to i32
  %shl387 = shl i32 %conv386, 26
  %and388 = and i32 %shl387, 201326592
  %or360 = or i32 %and388, %and359
  %or389 = or i32 %or360, %33
  %info2 = getelementptr inbounds %struct.hal_tcl_data_cmd, ptr %cmd, i32 0, i32 3
  %34 = ptrtoint ptr %info2 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %or389, ptr %info2, align 1
  %dscp_tid_tbl_idx = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 17
  %35 = ptrtoint ptr %dscp_tid_tbl_idx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dscp_tid_tbl_idx, align 1
  %bss_ast_hash = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 12
  %37 = ptrtoint ptr %bss_ast_hash to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %bss_ast_hash, align 2
  %bss_ast_idx = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 13
  %39 = ptrtoint ptr %bss_ast_idx to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %bss_ast_idx, align 4
  %conv443 = zext i16 %40 to i32
  %shl444 = shl nuw nsw i32 %conv443, 6
  %41 = and i8 %36, 63
  %and417 = zext i8 %41 to i32
  %or446 = or i32 %shl444, %and417
  %conv472 = zext i16 %38 to i32
  %shl473 = shl i32 %conv472, 26
  %and474 = and i32 %shl473, 1006632960
  %or475 = or i32 %or446, %and474
  %info3 = getelementptr inbounds %struct.hal_tcl_data_cmd, ptr %cmd, i32 0, i32 4
  %42 = ptrtoint ptr %info3 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %or475, ptr %info3, align 1
  %info4 = getelementptr inbounds %struct.hal_tcl_data_cmd, ptr %cmd, i32 0, i32 5
  %43 = ptrtoint ptr %info4 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 0, ptr %info4, align 1
  %enable_mesh = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 18
  %44 = ptrtoint ptr %enable_mesh to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %enable_mesh, align 2, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool476.not = icmp eq i8 %45, 0
  br i1 %tobool476.not, label %entry.if.end478_crit_edge, label %if.then477

entry.if.end478_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end478

if.then477:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %hw_ops = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 5
  %46 = ptrtoint ptr %hw_ops to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw_ops, align 4
  %tx_mesh_enable = getelementptr inbounds %struct.ath11k_hw_ops, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %tx_mesh_enable to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tx_mesh_enable, align 4
  tail call void %49(ptr noundef %ab, ptr noundef %cmd) #3
  br label %if.end478

if.end478:                                        ; preds = %if.then477, %entry.if.end478_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_hal_tx_set_dscp_tid_map(ptr noundef %ab, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  %hw_map_val.sroa.0 = alloca [12 x i8], align 4
  %hw_map_val.sroa.21 = alloca [12 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %hw_map_val.sroa.0)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %hw_map_val.sroa.21)
  %hw_map_val.sroa.0.3..sroa_idx314 = getelementptr inbounds i8, ptr %hw_map_val.sroa.0, i32 3
  %hw_map_val.sroa.0.4..sroa_idx316 = getelementptr inbounds i8, ptr %hw_map_val.sroa.0, i32 4
  %hw_map_val.sroa.0.6..sroa_idx319 = getelementptr inbounds i8, ptr %hw_map_val.sroa.0, i32 6
  %hw_map_val.sroa.0.8..sroa_idx322 = getelementptr inbounds i8, ptr %hw_map_val.sroa.0, i32 8
  %hw_map_val.sroa.0.9..sroa_idx324 = getelementptr inbounds i8, ptr %hw_map_val.sroa.0, i32 9
  %hw_map_val.sroa.21.3..sroa_idx = getelementptr inbounds i8, ptr %hw_map_val.sroa.21, i32 3
  %hw_map_val.sroa.21.4..sroa_idx = getelementptr inbounds i8, ptr %hw_map_val.sroa.21, i32 4
  %hw_map_val.sroa.21.6..sroa_idx = getelementptr inbounds i8, ptr %hw_map_val.sroa.21, i32 6
  %hw_map_val.sroa.21.8..sroa_idx = getelementptr inbounds i8, ptr %hw_map_val.sroa.21, i32 8
  %hw_map_val.sroa.21.9..sroa_idx = getelementptr inbounds i8, ptr %hw_map_val.sroa.21, i32 9
  %ops.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 %3(ptr noundef %ab, i32 noundef 10764308) #3
  %or = or i32 %call.i, 131072
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %write32.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i, align 4
  tail call void %7(ptr noundef %ab, i32 noundef 10764308, i32 noundef %or) #3
  %mul1 = mul i32 %id, 24
  %8 = ptrtoint ptr %hw_map_val.sroa.0 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 3)
  store i24 0, ptr %hw_map_val.sroa.0, align 4
  %9 = ptrtoint ptr %hw_map_val.sroa.0.3..sroa_idx314 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 3)
  store i24 9362, ptr %hw_map_val.sroa.0.3..sroa_idx314, align 1
  %10 = ptrtoint ptr %hw_map_val.sroa.0.6..sroa_idx319 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 3)
  store i24 18724, ptr %hw_map_val.sroa.0.6..sroa_idx319, align 2
  %11 = ptrtoint ptr %hw_map_val.sroa.0.9..sroa_idx324 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 3)
  store i24 28086, ptr %hw_map_val.sroa.0.9..sroa_idx324, align 1
  %12 = ptrtoint ptr %hw_map_val.sroa.21 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 3)
  store i24 37449, ptr %hw_map_val.sroa.21, align 4
  %13 = ptrtoint ptr %hw_map_val.sroa.21.3..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %13, i32 3)
  store i24 46811, ptr %hw_map_val.sroa.21.3..sroa_idx, align 1
  %14 = ptrtoint ptr %hw_map_val.sroa.21.6..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %14, i32 3)
  store i24 56173, ptr %hw_map_val.sroa.21.6..sroa_idx, align 2
  %15 = ptrtoint ptr %hw_map_val.sroa.21.9..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %15, i32 3)
  store i24 65535, ptr %hw_map_val.sroa.21.9..sroa_idx, align 1
  %add = add i32 %mul1, 10764332
  %hw_map_val.sroa.0.0.hw_map_val.sroa.0.0. = load i32, ptr %hw_map_val.sroa.0, align 4
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %write32.i302 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write32.i302 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i302, align 4
  tail call void %19(ptr noundef %ab, i32 noundef %add, i32 noundef %hw_map_val.sroa.0.0.hw_map_val.sroa.0.0.) #3
  %add257 = add i32 %mul1, 10764336
  %20 = ptrtoint ptr %hw_map_val.sroa.0.4..sroa_idx316 to i32
  call void @__asan_load4_noabort(i32 %20)
  %hw_map_val.sroa.0.4.hw_map_val.sroa.0.4. = load i32, ptr %hw_map_val.sroa.0.4..sroa_idx316, align 4
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i, align 4
  %write32.i302.1 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %write32.i302.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write32.i302.1, align 4
  tail call void %24(ptr noundef %ab, i32 noundef %add257, i32 noundef %hw_map_val.sroa.0.4.hw_map_val.sroa.0.4.) #3
  %add257.1 = add i32 %mul1, 10764340
  %25 = ptrtoint ptr %hw_map_val.sroa.0.8..sroa_idx322 to i32
  call void @__asan_load4_noabort(i32 %25)
  %hw_map_val.sroa.0.8.hw_map_val.sroa.0.8. = load i32, ptr %hw_map_val.sroa.0.8..sroa_idx322, align 4
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %write32.i302.2 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %write32.i302.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write32.i302.2, align 4
  tail call void %29(ptr noundef %ab, i32 noundef %add257.1, i32 noundef %hw_map_val.sroa.0.8.hw_map_val.sroa.0.8.) #3
  %add257.2 = add i32 %mul1, 10764344
  %30 = ptrtoint ptr %hw_map_val.sroa.21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %hw_map_val.sroa.21.0.hw_map_val.sroa.21.12. = load i32, ptr %hw_map_val.sroa.21, align 4
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i, align 4
  %write32.i302.3 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %write32.i302.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write32.i302.3, align 4
  tail call void %34(ptr noundef %ab, i32 noundef %add257.2, i32 noundef %hw_map_val.sroa.21.0.hw_map_val.sroa.21.12.) #3
  %add257.3 = add i32 %mul1, 10764348
  %35 = ptrtoint ptr %hw_map_val.sroa.21.4..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %35)
  %hw_map_val.sroa.21.4.hw_map_val.sroa.21.16. = load i32, ptr %hw_map_val.sroa.21.4..sroa_idx, align 4
  %36 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i, align 4
  %write32.i302.4 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %write32.i302.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32.i302.4, align 4
  tail call void %39(ptr noundef %ab, i32 noundef %add257.3, i32 noundef %hw_map_val.sroa.21.4.hw_map_val.sroa.21.16.) #3
  %add257.4 = add i32 %mul1, 10764352
  %40 = ptrtoint ptr %hw_map_val.sroa.21.8..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %40)
  %hw_map_val.sroa.21.8.hw_map_val.sroa.21.20. = load i32, ptr %hw_map_val.sroa.21.8..sroa_idx, align 4
  %41 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i, align 4
  %write32.i302.5 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %write32.i302.5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write32.i302.5, align 4
  tail call void %44(ptr noundef %ab, i32 noundef %add257.4, i32 noundef %hw_map_val.sroa.21.8.hw_map_val.sroa.21.20.) #3
  %45 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %call.i304 = tail call i32 %48(ptr noundef %ab, i32 noundef 10764308) #3
  %and262 = and i32 %call.i304, -131073
  %49 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i, align 4
  %write32.i306 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %write32.i306 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write32.i306, align 4
  tail call void %52(ptr noundef %ab, i32 noundef 10764308, i32 noundef %and262) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %hw_map_val.sroa.0)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %hw_map_val.sroa.21)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_hal_tx_init_data_ring(ptr noundef %ab, ptr noundef %srng) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.hal_srng_params, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %params) #3
  %0 = call ptr @memset(ptr %params, i32 0, i32 40)
  %call = tail call i32 @ath11k_hal_srng_get_entrysize(ptr noundef %ab, i32 noundef 5) #3
  call void @ath11k_hal_srng_get_params(ptr noundef %ab, ptr noundef %srng, ptr noundef nonnull %params) #3
  %num_entries = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 2
  %1 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp32 = icmp sgt i32 %2, 0
  br i1 %cmp32, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %ring_base_vaddr = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 1
  %3 = ptrtoint ptr %ring_base_vaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ring_base_vaddr, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.034 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %desc.033 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %4, %for.body.preheader ]
  %5 = ptrtoint ptr %desc.033 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 29320, ptr %desc.033, align 1
  %add.ptr = getelementptr i8, ptr %desc.033, i32 %call
  %inc = add nuw nsw i32 %i.034, 1
  %6 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_entries, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %params) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_hal_srng_get_entrysize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_hal_srng_get_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{null, !1, !"dscp_tid_map", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath11k/hal_tx.c", i32 25, i32 17}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i8 0, i8 2}
