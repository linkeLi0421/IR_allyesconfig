; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath11k/hal.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath11k/hal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath11k_hal_srng_init\22, \22a\22\09"
module asm "\09.weak\09__crc_ath11k_hal_srng_init\09\09\09\09"
module asm "\09.long\09__crc_ath11k_hal_srng_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath11k_hal_srng_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ath11k_hal_srng_init\22\09\09\09\09\09"
module asm "__kstrtabns_ath11k_hal_srng_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath11k_hal_srng_deinit\22, \22a\22\09"
module asm "\09.weak\09__crc_ath11k_hal_srng_deinit\09\09\09\09"
module asm "\09.long\09__crc_ath11k_hal_srng_deinit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath11k_hal_srng_deinit:\09\09\09\09\09"
module asm "\09.asciz \09\22ath11k_hal_srng_deinit\22\09\09\09\09\09"
module asm "__kstrtabns_ath11k_hal_srng_deinit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%struct.atomic_t = type { i32 }
%union.anon.98 = type { i32 }
%struct.hal_srng_config = type { i32, i16, i16, [2 x i32], [2 x i16], i8, i32, i32 }
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
%struct.hal_srng_params = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hal_ce_srng_src_desc = type { i32, i32, i32, i32 }
%struct.hal_ce_srng_dest_desc = type { i32, i32 }
%struct.ath11k_buffer_addr = type { i32, i32 }
%struct.ath11k_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath11k_hw_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { [16 x i8], %struct.lockdep_map }
%struct.anon.106 = type { i32, i32, ptr, i32, ptr, i32, i32 }

@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ath/ath11k/hal.c\00", [58 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ath11k_hal_srng_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&srng->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hal->srng_key + ring_id\00", [40 x i8] zeroinitializer }, align 32
@ath11k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"hal type %d ring_num %d reg_base 0x%x shadow 0x%lx\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"type %d ring_num %d target_reg 0x%x shadow 0x%lx\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"target_reg %x, shadow reg 0x%x shadow_idx 0x%x, ring_type %d, ring num %d\00", [54 x i8] zeroinitializer }, align 32
@__kstrtab_ath11k_hal_srng_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath11k_hal_srng_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ath11k_hal_srng_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath11k_hal_srng_init to i32), ptr @__kstrtab_ath11k_hal_srng_init, ptr @__kstrtabns_ath11k_hal_srng_init }, section "___ksymtab+ath11k_hal_srng_init", align 4
@__kstrtab_ath11k_hal_srng_deinit = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath11k_hal_srng_deinit = external dso_local constant [0 x i8], align 1
@__ksymtab_ath11k_hal_srng_deinit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath11k_hal_srng_deinit to i32), ptr @__kstrtab_ath11k_hal_srng_deinit, ptr @__kstrtabns_ath11k_hal_srng_deinit }, section "___ksymtab+ath11k_hal_srng_deinit", align 4
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Last interrupt received for each CE:\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CE_id %d pipe_num %d %ums before\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\0ALast interrupt received for each group:\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"group_id %d %ums before\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"src srng id %u hp %u, reap_hp %u, cur tp %u, cached tp %u last tp %u napi processed before %ums\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"dst srng id %u tp %u, cur hp %u, cached hp %u last hp %u napi processed before %ums\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid ring number :%d\0A\00", [39 x i8] zeroinitializer }, align 32
@__tracepoint_ath11k_log_dbg = external dso_local global %struct.tracepoint, align 4
@hw_srng_config_template = internal constant { [21 x %struct.hal_srng_config], [160 x i8] } { [21 x %struct.hal_srng_config] [%struct.hal_srng_config { i32 0, i16 4, i16 16, [2 x i32] zeroinitializer, [2 x i16] zeroinitializer, i8 0, i32 1, i32 1048575 }, %struct.hal_srng_config { i32 4, i16 1, i16 16, [2 x i32] zeroinitializer, [2 x i16] zeroinitializer, i8 0, i32 1, i32 1048575 }, %struct.hal_srng_config { i32 5, i16 1, i16 8, [2 x i32] zeroinitializer, [2 x i16] zeroinitializer, i8 0, i32 0, i32 65535 }, %struct.hal_srng_config { i32 8, i16 1, i16 10, [2 x i32] zeroinitializer, [2 x i16] zeroinitializer, i8 0, i32 0, i32 65535 }, %struct.hal_srng_config { i32 9, i16 1, i16 26, [2 x i32] zeroinitializer, [2 x i16] zeroinitializer, i8 0, i32 1, i32 65535 }, %struct.hal_srng_config { i32 16, i16 3, i16 8, [2 x i32] zeroinitializer, [2 x i16] zeroinitializer, i8 0, i32 0, i32 1048575 }, %struct.hal_srng_config { i32 24, i16 1, i16 8, [2 x i32] zeroinitializer, [2 x i16] zeroinitializer, i8 0, i32 0, i32 1048575 }, %struct.hal_srng_config { i32 25, i16 1, i16 9, [2 x i32] zeroinitializer, [2 x i16] zeroinitializer, i8 0, i32 1, i32 65535 }, %struct.hal_srng_config { i32 32, i16 12, i16 4, [2 x i32] zeroinitializer, [2 x i16] zeroinitializer, i8 0, i32 0, i32 65535 }, %struct.hal_srng_config { i32 56, i16 12, i16 2, [2 x i32] zeroinitializer, [2 x i16] zeroinitializer, i8 0, i32 0, i32 65535 }, %struct.hal_srng_config { i32 80, i16 12, i16 4, [2 x i32] zeroinitializer, [2 x i16] zeroinitializer, i8 0, i32 1, i32 65535 }, %struct.hal_srng_config { i32 104, i16 1, i16 2, [2 x i32] zeroinitializer, [2 x i16] zeroinitializer, i8 0, i32 0, i32 65535 }, %struct.hal_srng_config { i32 105, i16 1, i16 8, [2 x i32] zeroinitializer, [2 x i16] zeroinitializer, i8 0, i32 0, i32 65535 }, %struct.hal_srng_config { i32 106, i16 4, i16 8, [2 x i32] zeroinitializer, [2 x i16] zeroinitializer, i8 0, i32 1, i32 1048575 }, %struct.hal_srng_config { i32 128, i16 2, i16 2, [2 x i32] zeroinitializer, [2 x i16] zeroinitializer, i8 1, i32 0, i32 65535 }, %struct.hal_srng_config { i32 133, i16 1, i16 8, [2 x i32] zeroinitializer, [2 x i16] zeroinitializer, i8 1, i32 1, i32 65535 }, %struct.hal_srng_config { i32 130, i16 1, i16 2, [2 x i32] zeroinitializer, [2 x i16] zeroinitializer, i8 1, i32 0, i32 65535 }, %struct.hal_srng_config { i32 132, i16 1, i16 2, [2 x i32] zeroinitializer, [2 x i16] zeroinitializer, i8 1, i32 0, i32 65535 }, %struct.hal_srng_config { i32 134, i16 1, i16 8, [2 x i32] zeroinitializer, [2 x i16] zeroinitializer, i8 1, i32 1, i32 65535 }, %struct.hal_srng_config { i32 135, i16 1, i16 2, [2 x i32] zeroinitializer, [2 x i16] zeroinitializer, i8 1, i32 0, i32 65535 }, %struct.hal_srng_config { i32 136, i16 1, i16 2, [2 x i32] zeroinitializer, [2 x i16] zeroinitializer, i8 1, i32 0, i32 65535 }], [160 x i8] zeroinitializer }, align 32
@switch.table.ath11k_hal_ce_get_desc_size = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 16, i32 8, i32 16], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 489, i32 6 }
@___asan_gen_.16 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 976, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 977, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 1011, i32 5 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 1045, i32 5 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 1120, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 1331, i32 17 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 1338, i32 18 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 1343, i32 17 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 1346, i32 18 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 1359, i32 8 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 1367, i32 8 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 471, i32 19 }
@___asan_gen_.55 = private unnamed_addr constant [24 x i8] c"hw_srng_config_template\00", align 1
@___asan_gen_.56 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath11k/hal.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 11, i32 37 }
@___asan_gen_.58 = private unnamed_addr constant [41 x i8] c"switch.table.ath11k_hal_ce_get_desc_size\00", align 1
@llvm.compiler.used = appending global [18 x ptr] [ptr @__ksymtab_ath11k_hal_srng_deinit, ptr @__ksymtab_ath11k_hal_srng_init, ptr @.str, ptr @ath11k_hal_srng_setup.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @hw_srng_config_template, ptr @switch.table.ath11k_hal_ce_get_desc_size], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_hal_srng_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_srng_config_template to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath11k_hal_ce_get_desc_size to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_hal_srng_get_entrysize(ptr nocapture noundef readonly %ab, i32 noundef %ring_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %ring_type)
  %cmp = icmp ugt i32 %ring_type, 20
  br i1 %cmp, label %do.end, label %if.end21, !prof !42

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 489, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %srng_config22 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 1
  %0 = ptrtoint ptr %srng_config22 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srng_config22, align 32
  %entry_size = getelementptr %struct.hal_srng_config, ptr %1, i32 %ring_type, i32 2
  %2 = ptrtoint ptr %entry_size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %entry_size, align 2
  %conv = zext i16 %3 to i32
  %shl = shl nuw nsw i32 %conv, 2
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %shl, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_hal_srng_get_max_entries(ptr nocapture noundef readonly %ab, i32 noundef %ring_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %ring_type)
  %cmp = icmp ugt i32 %ring_type, 20
  br i1 %cmp, label %do.end, label %if.end21, !prof !42

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 501, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %srng_config22 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 1
  %0 = ptrtoint ptr %srng_config22 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srng_config22, align 32
  %max_size = getelementptr %struct.hal_srng_config, ptr %1, i32 %ring_type, i32 7
  %2 = ptrtoint ptr %max_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_size, align 4
  %entry_size = getelementptr %struct.hal_srng_config, ptr %1, i32 %ring_type, i32 2
  %4 = ptrtoint ptr %entry_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %entry_size, align 2
  %conv = zext i16 %5 to i32
  %div = udiv i32 %3, %conv
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %div, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath11k_hal_srng_get_params(ptr nocapture noundef readnone %ab, ptr nocapture noundef readonly %srng, ptr nocapture noundef writeonly %params) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_base_paddr = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 3
  %0 = ptrtoint ptr %ring_base_paddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring_base_paddr, align 8
  %2 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %params, align 4
  %ring_base_vaddr = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 4
  %3 = ptrtoint ptr %ring_base_vaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ring_base_vaddr, align 4
  %ring_base_vaddr2 = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 1
  %5 = ptrtoint ptr %ring_base_vaddr2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %ring_base_vaddr2, align 4
  %num_entries = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 5
  %6 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_entries, align 8
  %num_entries3 = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 2
  %8 = ptrtoint ptr %num_entries3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_entries3, align 4
  %intr_timer_thres_us = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 9
  %9 = ptrtoint ptr %intr_timer_thres_us to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %intr_timer_thres_us, align 8
  %intr_timer_thres_us4 = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 4
  %11 = ptrtoint ptr %intr_timer_thres_us4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %intr_timer_thres_us4, align 4
  %intr_batch_cntr_thres_entries = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 10
  %12 = ptrtoint ptr %intr_batch_cntr_thres_entries to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %intr_batch_cntr_thres_entries, align 4
  %intr_batch_cntr_thres_entries5 = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 3
  %14 = ptrtoint ptr %intr_batch_cntr_thres_entries5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %intr_batch_cntr_thres_entries5, align 4
  %low_threshold = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 5
  %15 = ptrtoint ptr %low_threshold to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %low_threshold, align 4
  %low_threshold6 = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 7
  %17 = ptrtoint ptr %low_threshold6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %low_threshold6, align 4
  %msi_addr = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 11
  %18 = ptrtoint ptr %msi_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msi_addr, align 8
  %msi_addr7 = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 8
  %20 = ptrtoint ptr %msi_addr7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %msi_addr7, align 4
  %msi_data = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 12
  %21 = ptrtoint ptr %msi_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msi_data, align 4
  %msi_data8 = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 9
  %23 = ptrtoint ptr %msi_data8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %msi_data8, align 4
  %flags = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 13
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 8
  %flags9 = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 5
  %26 = ptrtoint ptr %flags9 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %flags9, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ath11k_hal_srng_get_hp_addr(ptr nocapture noundef readonly %ab, ptr nocapture noundef readonly %srng) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 13
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool.not = icmp sgt i32 %1, -1
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ring_dir = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 17
  %2 = ptrtoint ptr %ring_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ring_dir, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %rdp = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 2
  %paddr5 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 2, i32 1
  %hp_addr7 = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 1
  %wrp = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 3
  %paddr = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 3, i32 1
  %hp_addr = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 4
  %hp_addr7.sink = select i1 %cmp, ptr %hp_addr, ptr %hp_addr7
  %rdp.sink = select i1 %cmp, ptr %wrp, ptr %rdp
  %.sink20.in = select i1 %cmp, ptr %paddr, ptr %paddr5
  %4 = ptrtoint ptr %.sink20.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.sink20 = load i32, ptr %.sink20.in, align 4
  %5 = ptrtoint ptr %hp_addr7.sink to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hp_addr7.sink, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = ptrtoint ptr %rdp.sink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdp.sink, align 4
  %10 = ptrtoint ptr %9 to i32
  %sub11 = add i32 %.sink20, %7
  %add12 = sub i32 %sub11, %10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %add12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ath11k_hal_srng_get_tp_addr(ptr nocapture noundef readonly %ab, ptr nocapture noundef readonly %srng) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 13
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool.not = icmp sgt i32 %1, -1
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ring_dir = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 17
  %2 = ptrtoint ptr %ring_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ring_dir, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %wrp = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 3
  %paddr5 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 3, i32 1
  %tp_addr7 = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 3
  %rdp = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 2
  %paddr = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 2, i32 1
  %tp_addr = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 2
  %tp_addr7.sink = select i1 %cmp, ptr %tp_addr, ptr %tp_addr7
  %wrp.sink = select i1 %cmp, ptr %rdp, ptr %wrp
  %.sink20.in = select i1 %cmp, ptr %paddr, ptr %paddr5
  %4 = ptrtoint ptr %.sink20.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.sink20 = load i32, ptr %.sink20.in, align 4
  %5 = ptrtoint ptr %tp_addr7.sink to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tp_addr7.sink, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = ptrtoint ptr %wrp.sink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wrp.sink, align 4
  %10 = ptrtoint ptr %9 to i32
  %sub11 = add i32 %.sink20, %7
  %add12 = sub i32 %sub11, %10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %add12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ath11k_hal_ce_get_desc_size(i32 noundef %type) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %0 = icmp ult i32 %type, 3
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.ath11k_hal_ce_get_desc_size, i32 0, i32 %type
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_hal_ce_src_set_desc(ptr nocapture noundef writeonly %buf, i32 noundef %paddr, i32 noundef %len, i32 noundef %id, i8 noundef zeroext %byte_swap_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 %paddr, ptr %buf, align 1
  %conv43 = zext i8 %byte_swap_data to i32
  %shl44 = shl nuw nsw i32 %conv43, 9
  %and45 = and i32 %shl44, 512
  %shl85 = shl i32 %len, 16
  %or87 = or i32 %and45, %shl85
  %buffer_addr_info = getelementptr inbounds %struct.hal_ce_srng_src_desc, ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %buffer_addr_info to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 %or87, ptr %buffer_addr_info, align 1
  %and111 = and i32 %id, 65535
  %meta_info = getelementptr inbounds %struct.hal_ce_srng_src_desc, ptr %buf, i32 0, i32 2
  %2 = ptrtoint ptr %meta_info to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %and111, ptr %meta_info, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ath11k_hal_ce_dst_set_desc(ptr nocapture noundef writeonly %buf, i32 noundef %paddr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 %paddr, ptr %buf, align 1
  %buffer_addr_info = getelementptr inbounds %struct.hal_ce_srng_dest_desc, ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %buffer_addr_info to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 0, ptr %buffer_addr_info, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ath11k_hal_ce_dst_status_get_length(ptr nocapture noundef %buf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %buf, align 1
  %shr = lshr i32 %1, 16
  %and14 = and i32 %1, 65535
  store i32 %and14, ptr %buf, align 1
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_hal_set_link_desc_addr(ptr nocapture noundef writeonly %desc, i32 noundef %cookie, i32 noundef %paddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 %paddr, ptr %desc, align 1
  %shl65 = shl i32 %cookie, 11
  %or67 = or i32 %shl65, 256
  %info1 = getelementptr inbounds %struct.ath11k_buffer_addr, ptr %desc, i32 0, i32 1
  %1 = ptrtoint ptr %info1 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 %or67, ptr %info1, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath11k_hal_srng_dst_peek(ptr nocapture readnone %ab, ptr noundef %srng) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !42

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 622, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %u = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18
  %1 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %u, align 4
  %cached_hp = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 2
  %3 = ptrtoint ptr %cached_hp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cached_hp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp25.not = icmp eq i32 %2, %4
  br i1 %cmp25.not, label %if.end.return_crit_edge, label %if.then26

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ring_base_vaddr = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 4
  %5 = ptrtoint ptr %ring_base_vaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ring_base_vaddr, align 4
  %add.ptr = getelementptr i32, ptr %6, i32 %2
  br label %return

return:                                           ; preds = %if.then26, %if.end.return_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.then26 ], [ null, %if.end.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath11k_hal_srng_dst_get_next_entry(ptr nocapture noundef readonly %ab, ptr noundef %srng) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !42

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 650, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %u = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18
  %1 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %u, align 4
  %cached_hp = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 2
  %3 = ptrtoint ptr %cached_hp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cached_hp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp25 = icmp eq i32 %2, %4
  br i1 %cmp25, label %if.end.cleanup_crit_edge, label %if.end27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %ring_base_vaddr = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 4
  %5 = ptrtoint ptr %ring_base_vaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ring_base_vaddr, align 4
  %add.ptr = getelementptr i32, ptr %6, i32 %2
  %entry_size = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 8
  %7 = ptrtoint ptr %entry_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %entry_size, align 4
  %add = add i32 %8, %2
  %ring_size = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 6
  %9 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ring_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %10)
  %cmp34 = icmp eq i32 %add, %10
  %spec.store.select = select i1 %cmp34, i32 0, i32 %add
  %11 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.store.select, ptr %u, align 4
  %flags = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 13
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and = and i32 %13, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %if.end27.cleanup_crit_edge, label %if.then40

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then40:                                        ; preds = %if.end27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %14 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %if.then40.if.end.i.i_crit_edge, label %land.rhs.i.i

if.then40.if.end.i.i_crit_edge:                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %if.then40
  %dep_map.i.i = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !42

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 622, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %if.then40.if.end.i.i_crit_edge
  %15 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %u, align 4
  %17 = ptrtoint ptr %cached_hp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cached_hp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp25.not.i.i = icmp eq i32 %16, %18
  br i1 %cmp25.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %ath11k_hal_srng_dst_peek.exit.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ath11k_hal_srng_dst_peek.exit.i:                  ; preds = %if.end.i.i
  %19 = ptrtoint ptr %ring_base_vaddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ring_base_vaddr, align 4
  %add.ptr.i.i = getelementptr i32, ptr %20, i32 %16
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %ath11k_hal_srng_dst_peek.exit.i.cleanup_crit_edge, label %if.then.i, !prof !42

ath11k_hal_srng_dst_peek.exit.i.cleanup_crit_edge: ; preds = %ath11k_hal_srng_dst_peek.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %ath11k_hal_srng_dst_peek.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 8
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef %23) #6
  %24 = ptrtoint ptr %entry_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %entry_size, align 4
  %mul.i = shl i32 %25, 2
  tail call void @dma_sync_single_for_cpu(ptr noundef %22, i32 noundef %call.i.i, i32 noundef %mul.i, i32 noundef 2) #6
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr nonnull %add.ptr.i.i) #6, !srcloc !43
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %ath11k_hal_srng_dst_peek.exit.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end.cleanup_crit_edge ], [ %add.ptr, %if.end27.cleanup_crit_edge ], [ %add.ptr, %if.end.i.i.cleanup_crit_edge ], [ %add.ptr, %ath11k_hal_srng_dst_peek.exit.i.cleanup_crit_edge ], [ %add.ptr, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_hal_srng_dst_num_free(ptr nocapture noundef readnone %ab, ptr noundef %srng, i1 noundef zeroext %sync_hw_ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !42

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 675, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %u = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18
  %1 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %u, align 4
  br i1 %sync_hw_ptr, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %hp_addr = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 1
  %3 = ptrtoint ptr %hp_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hp_addr, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %cached_hp = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 2
  %7 = ptrtoint ptr %cached_hp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cached_hp, align 4
  br label %if.end31

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %cached_hp30 = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 2
  %8 = ptrtoint ptr %cached_hp30 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cached_hp30, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then26
  %hp.0 = phi i32 [ %6, %if.then26 ], [ %9, %if.else ]
  call void @__sanitizer_cov_trace_cmp4(i32 %hp.0, i32 %2)
  %cmp32.not = icmp ult i32 %hp.0, %2
  br i1 %cmp32.not, label %if.else34, label %if.then33

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %hp.0, %2
  br label %cleanup

if.else34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %ring_size = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 6
  %10 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ring_size, align 4
  %sub35 = sub i32 %hp.0, %2
  %add = add i32 %sub35, %11
  br label %cleanup

cleanup:                                          ; preds = %if.else34, %if.then33
  %add.sink = phi i32 [ %add, %if.else34 ], [ %sub, %if.then33 ]
  %entry_size36 = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 8
  %12 = ptrtoint ptr %entry_size36 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %entry_size36, align 4
  %div37 = udiv i32 %add.sink, %13
  ret i32 %div37
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_hal_srng_src_num_free(ptr nocapture noundef readnone %ab, ptr noundef %srng, i1 noundef zeroext %sync_hw_ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !42

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 698, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %u = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18
  %1 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %u, align 4
  br i1 %sync_hw_ptr, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tp_addr = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 2
  %3 = ptrtoint ptr %tp_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tp_addr, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %cached_tp = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 3
  %7 = ptrtoint ptr %cached_tp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cached_tp, align 4
  br label %if.end31

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %cached_tp30 = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 3
  %8 = ptrtoint ptr %cached_tp30 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cached_tp30, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then26
  %tp.0 = phi i32 [ %6, %if.then26 ], [ %9, %if.else ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tp.0, i32 %2)
  %cmp32 = icmp ugt i32 %tp.0, %2
  br i1 %cmp32, label %if.then33, label %if.else35

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %tp.0, %2
  br label %cleanup

if.else35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %ring_size = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 6
  %10 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ring_size, align 4
  %sub36 = sub i32 %tp.0, %2
  %add = add i32 %sub36, %11
  br label %cleanup

cleanup:                                          ; preds = %if.else35, %if.then33
  %add.sink = phi i32 [ %add, %if.else35 ], [ %sub, %if.then33 ]
  %entry_size37 = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 8
  %12 = ptrtoint ptr %entry_size37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %entry_size37, align 4
  %div38 = udiv i32 %add.sink, %13
  %retval.0 = add i32 %div38, -1
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath11k_hal_srng_src_get_next_entry(ptr nocapture noundef readnone %ab, ptr noundef %srng) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !42

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 721, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %u = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18
  %1 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %u, align 4
  %entry_size = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 8
  %3 = ptrtoint ptr %entry_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %entry_size, align 4
  %add = add i32 %4, %2
  %ring_size = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 6
  %5 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ring_size, align 4
  %rem = urem i32 %add, %6
  %cached_tp = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 3
  %7 = ptrtoint ptr %cached_tp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cached_tp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %8)
  %cmp25 = icmp eq i32 %rem, %8
  br i1 %cmp25, label %if.end.cleanup_crit_edge, label %if.end27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ring_base_vaddr = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 4
  %9 = ptrtoint ptr %ring_base_vaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ring_base_vaddr, align 4
  %add.ptr = getelementptr i32, ptr %10, i32 %2
  %11 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %rem, ptr %u, align 4
  %reap_hp = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 1
  %12 = ptrtoint ptr %reap_hp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %rem, ptr %reap_hp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end27 ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath11k_hal_srng_src_reap_next(ptr nocapture noundef readnone %ab, ptr noundef %srng) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !42

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 754, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %reap_hp = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 1
  %1 = ptrtoint ptr %reap_hp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reap_hp, align 4
  %entry_size = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 8
  %3 = ptrtoint ptr %entry_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %entry_size, align 4
  %add = add i32 %4, %2
  %ring_size = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 6
  %5 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ring_size, align 4
  %rem = urem i32 %add, %6
  %cached_tp = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 3
  %7 = ptrtoint ptr %cached_tp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cached_tp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %8)
  %cmp25 = icmp eq i32 %rem, %8
  br i1 %cmp25, label %if.end.cleanup_crit_edge, label %if.end27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ring_base_vaddr = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 4
  %9 = ptrtoint ptr %ring_base_vaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ring_base_vaddr, align 4
  %add.ptr = getelementptr i32, ptr %10, i32 %rem
  %11 = ptrtoint ptr %reap_hp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %rem, ptr %reap_hp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end27 ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath11k_hal_srng_src_get_next_reaped(ptr nocapture noundef readnone %ab, ptr noundef %srng) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !42

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 773, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %u = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18
  %1 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %u, align 4
  %reap_hp = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 1
  %3 = ptrtoint ptr %reap_hp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reap_hp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp25 = icmp eq i32 %2, %4
  br i1 %cmp25, label %if.end.cleanup_crit_edge, label %if.end27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ring_base_vaddr = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 4
  %5 = ptrtoint ptr %ring_base_vaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ring_base_vaddr, align 4
  %add.ptr = getelementptr i32, ptr %6, i32 %2
  %entry_size = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 8
  %7 = ptrtoint ptr %entry_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %entry_size, align 4
  %add = add i32 %8, %2
  %ring_size = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 6
  %9 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ring_size, align 4
  %rem = urem i32 %add, %10
  %11 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %rem, ptr %u, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end27 ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath11k_hal_srng_src_peek(ptr nocapture noundef readnone %ab, ptr noundef %srng) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !42

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 787, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %u = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18
  %1 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %u, align 4
  %entry_size = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 8
  %3 = ptrtoint ptr %entry_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %entry_size, align 4
  %add = add i32 %4, %2
  %ring_size = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 6
  %5 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ring_size, align 4
  %rem = urem i32 %add, %6
  %cached_tp = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 3
  %7 = ptrtoint ptr %cached_tp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cached_tp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %8)
  %cmp25 = icmp eq i32 %rem, %8
  br i1 %cmp25, label %if.end.return_crit_edge, label %if.end27

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ring_base_vaddr = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 4
  %9 = ptrtoint ptr %ring_base_vaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ring_base_vaddr, align 4
  %add.ptr = getelementptr i32, ptr %10, i32 %2
  br label %return

return:                                           ; preds = %if.end27, %if.end.return_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end27 ], [ null, %if.end.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_hal_srng_access_begin(ptr nocapture noundef readonly %ab, ptr noundef %srng) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !42

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 798, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %ring_dir = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 17
  %1 = ptrtoint ptr %ring_dir to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ring_dir, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp24 = icmp eq i32 %2, 0
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tp_addr = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 2
  %3 = ptrtoint ptr %tp_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tp_addr, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %cached_tp = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 3
  %7 = ptrtoint ptr %cached_tp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cached_tp, align 4
  br label %if.end32

if.else:                                          ; preds = %if.end
  %hp_addr = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 1
  %8 = ptrtoint ptr %hp_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hp_addr, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %cached_hp = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 2
  %12 = ptrtoint ptr %cached_hp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %cached_hp, align 4
  %flags = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 13
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 8
  %and = and i32 %14, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.else.if.end32_crit_edge, label %if.then30

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then30:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %15 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %if.then30.if.end.i.i_crit_edge, label %land.rhs.i.i

if.then30.if.end.i.i_crit_edge:                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %if.then30
  %dep_map.i.i = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !42

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 622, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %if.then30.if.end.i.i_crit_edge
  %u.i.i = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18
  %16 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %u.i.i, align 4
  %18 = ptrtoint ptr %cached_hp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cached_hp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp25.not.i.i = icmp eq i32 %17, %19
  br i1 %cmp25.not.i.i, label %if.end.i.i.if.end32_crit_edge, label %ath11k_hal_srng_dst_peek.exit.i

if.end.i.i.if.end32_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

ath11k_hal_srng_dst_peek.exit.i:                  ; preds = %if.end.i.i
  %ring_base_vaddr.i.i = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 4
  %20 = ptrtoint ptr %ring_base_vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ring_base_vaddr.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %21, i32 %17
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %ath11k_hal_srng_dst_peek.exit.i.if.end32_crit_edge, label %if.then.i, !prof !42

ath11k_hal_srng_dst_peek.exit.i.if.end32_crit_edge: ; preds = %ath11k_hal_srng_dst_peek.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then.i:                                        ; preds = %ath11k_hal_srng_dst_peek.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 8
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef %24) #6
  %entry_size.i = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 8
  %25 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %entry_size.i, align 4
  %mul.i = shl i32 %26, 2
  tail call void @dma_sync_single_for_cpu(ptr noundef %23, i32 noundef %call.i.i, i32 noundef %mul.i, i32 noundef 2) #6
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr nonnull %add.ptr.i.i) #6, !srcloc !43
  br label %if.end32

if.end32:                                         ; preds = %if.then.i, %ath11k_hal_srng_dst_peek.exit.i.if.end32_crit_edge, %if.end.i.i.if.end32_crit_edge, %if.else.if.end32_crit_edge, %if.then25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_hal_srng_access_end(ptr noundef %ab, ptr noundef %srng) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !42

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 817, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 13
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool24.not = icmp sgt i32 %2, -1
  %ring_dir39 = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 17
  %3 = ptrtoint ptr %ring_dir39 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ring_dir39, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp40 = icmp eq i32 %4, 0
  %u42 = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18
  br i1 %tobool24.not, label %if.else38, label %if.then25

if.then25:                                        ; preds = %if.end
  br i1 %cmp40, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %tp_addr = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 2
  %5 = ptrtoint ptr %tp_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tp_addr, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %last_tp = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 6
  %9 = ptrtoint ptr %last_tp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %last_tp, align 4
  %10 = ptrtoint ptr %u42 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %u42, align 4
  %hp_addr = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 4
  %12 = ptrtoint ptr %hp_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hp_addr, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %13, align 4
  br label %if.end62

if.else:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %hp_addr32 = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 1
  %15 = ptrtoint ptr %hp_addr32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hp_addr32, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %last_hp = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 6
  %19 = ptrtoint ptr %last_hp to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %last_hp, align 4
  %20 = ptrtoint ptr %u42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %u42, align 4
  %tp_addr36 = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 3
  %22 = ptrtoint ptr %tp_addr36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tp_addr36, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %23, align 4
  br label %if.end62

if.else38:                                        ; preds = %if.end
  br i1 %cmp40, label %if.then41, label %if.else50

if.then41:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #8
  %tp_addr43 = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 2
  %25 = ptrtoint ptr %tp_addr43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tp_addr43, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %last_tp45 = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 6
  %29 = ptrtoint ptr %last_tp45 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %last_tp45, align 4
  %hp_addr47 = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 4
  %30 = ptrtoint ptr %hp_addr47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hp_addr47, align 4
  %32 = ptrtoint ptr %31 to i32
  %mem = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 10
  %33 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mem, align 4
  %35 = ptrtoint ptr %34 to i32
  %sub = sub i32 %32, %35
  %36 = ptrtoint ptr %u42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %u42, align 4
  %ops.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 12, i32 1
  %38 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i, align 4
  %write32.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write32.i, align 4
  tail call void %41(ptr noundef %ab, i32 noundef %sub, i32 noundef %37) #6
  br label %if.end62

if.else50:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #8
  %hp_addr52 = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 1
  %42 = ptrtoint ptr %hp_addr52 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hp_addr52, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  %last_hp54 = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 6
  %46 = ptrtoint ptr %last_hp54 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %last_hp54, align 4
  %tp_addr56 = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 3
  %47 = ptrtoint ptr %tp_addr56 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tp_addr56, align 4
  %49 = ptrtoint ptr %48 to i32
  %mem57 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 10
  %50 = ptrtoint ptr %mem57 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mem57, align 4
  %52 = ptrtoint ptr %51 to i32
  %sub58 = sub i32 %49, %52
  %53 = ptrtoint ptr %u42 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %u42, align 4
  %ops.i87 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 12, i32 1
  %55 = ptrtoint ptr %ops.i87 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i87, align 4
  %write32.i88 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %write32.i88 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write32.i88, align 4
  tail call void %58(ptr noundef %ab, i32 noundef %sub58, i32 noundef %54) #6
  br label %if.end62

if.end62:                                         ; preds = %if.else50, %if.then41, %if.else, %if.then27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i32 %59 to i64
  %timestamp = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 16
  %60 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv, ptr %timestamp, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_hal_setup_link_idle_list(ptr noundef %ab, ptr nocapture noundef readonly %sbuf, i32 noundef %nsbufs, i32 noundef %tot_link_desc, i32 noundef %end_offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nsbufs)
  %cmp497 = icmp ugt i32 %nsbufs, 1
  br i1 %cmp497, label %entry.for.body_crit_edge, label %entry.do.end66_crit_edge

entry.do.end66_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end66

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %sbuf.pn499 = phi ptr [ %arrayidx1, %for.body.for.body_crit_edge ], [ %sbuf, %entry.for.body_crit_edge ]
  %i.0498 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %.pn.in = getelementptr inbounds %struct.hal_wbm_idle_scatter_list, ptr %sbuf.pn499, i32 0, i32 1
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %link_addr.0 = getelementptr i8, ptr %.pn, i32 32696
  %arrayidx1 = getelementptr %struct.hal_wbm_idle_scatter_list, ptr %sbuf, i32 %i.0498
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx1, align 4
  %3 = ptrtoint ptr %link_addr.0 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %2, ptr %link_addr.0, align 1
  %info1 = getelementptr i8, ptr %.pn, i32 32700
  %4 = ptrtoint ptr %info1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 1280, ptr %info1, align 1
  %inc = add nuw i32 %i.0498, 1
  %exitcond.not = icmp eq i32 %inc, %nsbufs
  br i1 %exitcond.not, label %for.body.do.end66_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.do.end66_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end66

do.end66:                                         ; preds = %for.body.do.end66_crit_edge, %entry.do.end66_crit_edge
  %ops.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 12, i32 1
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %write32.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write32.i, align 4
  tail call void %8(ptr noundef %ab, i32 noundef 10698824, i32 noundef 2042) #6
  %shl111 = mul i32 %nsbufs, 33423360
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %write32.i478 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %write32.i478 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write32.i478, align 4
  tail call void %12(ptr noundef %ab, i32 noundef 10698828, i32 noundef %shl111) #6
  %13 = ptrtoint ptr %sbuf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sbuf, align 4
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %write32.i480 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %write32.i480 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write32.i480, align 4
  tail call void %18(ptr noundef %ab, i32 noundef 10698840, i32 noundef %14) #6
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %write32.i482 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %write32.i482 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write32.i482, align 4
  tail call void %22(ptr noundef %ab, i32 noundef 10698844, i32 noundef 1280) #6
  %sub = add i32 %nsbufs, -1
  %arrayidx207 = getelementptr %struct.hal_wbm_idle_scatter_list, ptr %sbuf, i32 %sub
  %23 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx207, align 4
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %write32.i484 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %write32.i484 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write32.i484, align 4
  tail call void %28(ptr noundef %ab, i32 noundef 10698856, i32 noundef %24) #6
  %29 = shl i32 %end_offset, 6
  %and298 = and i32 %29, 2096896
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i, align 4
  %write32.i486 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %write32.i486 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write32.i486, align 4
  tail call void %33(ptr noundef %ab, i32 noundef 10698860, i32 noundef %and298) #6
  %34 = ptrtoint ptr %sbuf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sbuf, align 4
  %36 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i, align 4
  %write32.i488 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %write32.i488 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32.i488, align 4
  tail call void %39(ptr noundef %ab, i32 noundef 10698856, i32 noundef %35) #6
  %40 = ptrtoint ptr %sbuf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sbuf, align 4
  %42 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i, align 4
  %write32.i490 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %write32.i490 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write32.i490, align 4
  tail call void %45(ptr noundef %ab, i32 noundef 10698872, i32 noundef %41) #6
  %46 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i, align 4
  %write32.i492 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %write32.i492 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write32.i492, align 4
  tail call void %49(ptr noundef %ab, i32 noundef 10698876, i32 noundef 0) #6
  %mul414 = shl i32 %tot_link_desc, 1
  %50 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i, align 4
  %write32.i494 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %write32.i494 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write32.i494, align 4
  tail call void %53(ptr noundef %ab, i32 noundef 10698884, i32 noundef %mul414) #6
  %regs = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 8
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 4
  %hal_wbm_idle_link_ring_misc = getelementptr inbounds %struct.ath11k_hw_regs, ptr %55, i32 0, i32 41
  %56 = ptrtoint ptr %hal_wbm_idle_link_ring_misc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hal_wbm_idle_link_ring_misc, align 4
  %add = add i32 %57, 10698752
  %58 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i, align 4
  %write32.i496 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %write32.i496 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write32.i496, align 4
  tail call void %61(ptr noundef %ab, i32 noundef %add, i32 noundef 64) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_hal_srng_setup(ptr noundef %ab, i32 noundef %type, i32 noundef %ring_num, i32 noundef %mac_id, ptr nocapture noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hal1 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16
  %srng_config3 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 1
  %0 = ptrtoint ptr %srng_config3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srng_config3, align 32
  %max_rings.i = getelementptr %struct.hal_srng_config, ptr %1, i32 %type, i32 1
  %2 = ptrtoint ptr %max_rings.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_rings.i, align 4
  %conv.i = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %ring_num)
  %cmp.not.i = icmp sgt i32 %conv.i, %ring_num
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.12, i32 noundef %ring_num) #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr %struct.hal_srng_config, ptr %1, i32 %type
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, %ring_num
  %lmac_ring.i = getelementptr %struct.hal_srng_config, ptr %1, i32 %type, i32 5
  %6 = ptrtoint ptr %lmac_ring.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %lmac_ring.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %mul.i = mul i32 %mac_id, 15
  %add4.i = select i1 %tobool.not.i, i32 0, i32 %mul.i
  %ring_id.0.i = add i32 %add.i, %add4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 171, i32 %ring_id.0.i)
  %cmp6.i = icmp sgt i32 %ring_id.0.i, 171
  br i1 %cmp6.i, label %do.end.i, label %ath11k_hal_srng_get_ring_id.exit, !prof !42

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 479, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

ath11k_hal_srng_get_ring_id.exit:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ring_id.0.i)
  %cmp = icmp slt i32 %ring_id.0.i, 0
  br i1 %cmp, label %ath11k_hal_srng_get_ring_id.exit.cleanup_crit_edge, label %if.end

ath11k_hal_srng_get_ring_id.exit.cleanup_crit_edge: ; preds = %ath11k_hal_srng_get_ring_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ath11k_hal_srng_get_ring_id.exit
  %arrayidx4 = getelementptr [172 x %struct.hal_srng], ptr %hal1, i32 0, i32 %ring_id.0.i
  %conv = trunc i32 %ring_id.0.i to i8
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx4, align 8
  %ring_dir = getelementptr %struct.hal_srng_config, ptr %1, i32 %type, i32 6
  %9 = ptrtoint ptr %ring_dir to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ring_dir, align 4
  %ring_dir6 = getelementptr [172 x %struct.hal_srng], ptr %hal1, i32 0, i32 %ring_id.0.i, i32 17
  %11 = ptrtoint ptr %ring_dir6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %ring_dir6, align 8
  %12 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %params, align 4
  %ring_base_paddr7 = getelementptr [172 x %struct.hal_srng], ptr %hal1, i32 0, i32 %ring_id.0.i, i32 3
  %14 = ptrtoint ptr %ring_base_paddr7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ring_base_paddr7, align 8
  %ring_base_vaddr = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 1
  %15 = ptrtoint ptr %ring_base_vaddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring_base_vaddr, align 4
  %ring_base_vaddr8 = getelementptr [172 x %struct.hal_srng], ptr %hal1, i32 0, i32 %ring_id.0.i, i32 4
  %17 = ptrtoint ptr %ring_base_vaddr8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %ring_base_vaddr8, align 4
  %entry_size = getelementptr %struct.hal_srng_config, ptr %1, i32 %type, i32 2
  %18 = ptrtoint ptr %entry_size to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %entry_size, align 2
  %conv9 = zext i16 %19 to i32
  %entry_size10 = getelementptr [172 x %struct.hal_srng], ptr %hal1, i32 0, i32 %ring_id.0.i, i32 8
  %20 = ptrtoint ptr %entry_size10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv9, ptr %entry_size10, align 4
  %num_entries = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 2
  %21 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_entries, align 4
  %num_entries11 = getelementptr [172 x %struct.hal_srng], ptr %hal1, i32 0, i32 %ring_id.0.i, i32 5
  %23 = ptrtoint ptr %num_entries11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %num_entries11, align 8
  %mul = mul i32 %22, %conv9
  %ring_size = getelementptr [172 x %struct.hal_srng], ptr %hal1, i32 0, i32 %ring_id.0.i, i32 6
  %24 = ptrtoint ptr %ring_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul, ptr %ring_size, align 4
  %intr_batch_cntr_thres_entries = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 3
  %25 = ptrtoint ptr %intr_batch_cntr_thres_entries to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %intr_batch_cntr_thres_entries, align 4
  %intr_batch_cntr_thres_entries14 = getelementptr [172 x %struct.hal_srng], ptr %hal1, i32 0, i32 %ring_id.0.i, i32 10
  %27 = ptrtoint ptr %intr_batch_cntr_thres_entries14 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %intr_batch_cntr_thres_entries14, align 4
  %intr_timer_thres_us = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 4
  %28 = ptrtoint ptr %intr_timer_thres_us to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %intr_timer_thres_us, align 4
  %intr_timer_thres_us15 = getelementptr [172 x %struct.hal_srng], ptr %hal1, i32 0, i32 %ring_id.0.i, i32 9
  %30 = ptrtoint ptr %intr_timer_thres_us15 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %intr_timer_thres_us15, align 8
  %flags = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 5
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 4
  %flags16 = getelementptr [172 x %struct.hal_srng], ptr %hal1, i32 0, i32 %ring_id.0.i, i32 13
  %33 = ptrtoint ptr %flags16 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %flags16, align 8
  %msi_addr = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 8
  %34 = ptrtoint ptr %msi_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msi_addr, align 4
  %msi_addr17 = getelementptr [172 x %struct.hal_srng], ptr %hal1, i32 0, i32 %ring_id.0.i, i32 11
  %36 = ptrtoint ptr %msi_addr17 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %msi_addr17, align 8
  %msi_data = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 9
  %37 = ptrtoint ptr %msi_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msi_data, align 4
  %msi_data18 = getelementptr [172 x %struct.hal_srng], ptr %hal1, i32 0, i32 %ring_id.0.i, i32 12
  %39 = ptrtoint ptr %msi_data18 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %msi_data18, align 4
  %initialized = getelementptr [172 x %struct.hal_srng], ptr %hal1, i32 0, i32 %ring_id.0.i, i32 1
  %40 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %initialized, align 1
  %lock = getelementptr [172 x %struct.hal_srng], ptr %hal1, i32 0, i32 %ring_id.0.i, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ath11k_hal_srng_setup.__key, i16 noundef signext 3) #6
  %dep_map = getelementptr inbounds %struct.anon, ptr %lock, i32 0, i32 1
  %srng_key = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 8
  %add.ptr = getelementptr %struct.lock_class_key, ptr %srng_key, i32 %ring_id.0.i
  %wait_type_inner = getelementptr inbounds %struct.anon, ptr %lock, i32 0, i32 1, i32 4
  %41 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.2, ptr noundef %add.ptr, i32 noundef 0, i8 noundef zeroext %42, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %arrayidx27 = getelementptr %struct.hal_srng_config, ptr %1, i32 %type, i32 3, i32 0
  %43 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx27, align 4
  %arrayidx28 = getelementptr %struct.hal_srng_config, ptr %1, i32 %type, i32 4, i32 0
  %45 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx28, align 2
  %conv29 = zext i16 %46 to i32
  %mul30 = mul i32 %conv29, %ring_num
  %add = add i32 %mul30, %44
  %arrayidx31 = getelementptr [172 x %struct.hal_srng], ptr %hal1, i32 0, i32 %ring_id.0.i, i32 15, i32 0
  %47 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add, ptr %arrayidx31, align 4
  %arrayidx27.1 = getelementptr %struct.hal_srng_config, ptr %1, i32 %type, i32 3, i32 1
  %48 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx27.1, align 4
  %arrayidx28.1 = getelementptr %struct.hal_srng_config, ptr %1, i32 %type, i32 4, i32 1
  %50 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx28.1, align 2
  %conv29.1 = zext i16 %51 to i32
  %mul30.1 = mul i32 %conv29.1, %ring_num
  %add.1 = add i32 %mul30.1, %49
  %arrayidx31.1 = getelementptr [172 x %struct.hal_srng], ptr %hal1, i32 0, i32 %ring_id.0.i, i32 15, i32 1
  %52 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add.1, ptr %arrayidx31.1, align 4
  %53 = ptrtoint ptr %ring_base_vaddr8 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ring_base_vaddr8, align 4
  %55 = ptrtoint ptr %entry_size10 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %entry_size10, align 4
  %57 = ptrtoint ptr %num_entries11 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_entries11, align 8
  %mul35 = shl i32 %56, 2
  %shl = mul i32 %mul35, %58
  %59 = call ptr @memset(ptr %54, i32 0, i32 %shl)
  %60 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags16, align 8
  %or = or i32 %61, 56
  store i32 %or, ptr %flags16, align 8
  %62 = load i32, ptr %arrayidx31.1, align 4
  %63 = ptrtoint ptr %ring_dir6 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ring_dir6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp40 = icmp eq i32 %64, 0
  %u = getelementptr [172 x %struct.hal_srng], ptr %hal1, i32 0, i32 %ring_id.0.i, i32 18
  br i1 %cmp40, label %if.then42, label %if.else80

if.then42:                                        ; preds = %if.end
  %65 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %u, align 4
  %cached_tp = getelementptr inbounds %struct.anon.106, ptr %u, i32 0, i32 3
  %66 = ptrtoint ptr %cached_tp to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %cached_tp, align 4
  %67 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ring_size, align 4
  %69 = ptrtoint ptr %entry_size10 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %entry_size10, align 4
  %sub = sub i32 %68, %70
  %reap_hp = getelementptr inbounds %struct.anon.106, ptr %u, i32 0, i32 1
  %71 = ptrtoint ptr %reap_hp to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %sub, ptr %reap_hp, align 4
  %rdp = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 2
  %72 = ptrtoint ptr %rdp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rdp, align 4
  %add.ptr47 = getelementptr i32, ptr %73, i32 %ring_id.0.i
  %tp_addr = getelementptr inbounds %struct.anon.106, ptr %u, i32 0, i32 2
  %74 = ptrtoint ptr %tp_addr to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %add.ptr47, ptr %tp_addr, align 4
  %low_threshold = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 7
  %75 = ptrtoint ptr %low_threshold to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %low_threshold, align 4
  %mul50 = mul i32 %76, %70
  %low_threshold52 = getelementptr inbounds %struct.anon.106, ptr %u, i32 0, i32 5
  %77 = ptrtoint ptr %low_threshold52 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %mul50, ptr %low_threshold52, align 4
  %78 = ptrtoint ptr %lmac_ring.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %lmac_ring.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not = icmp eq i8 %79, 0
  br i1 %tobool.not, label %if.else, label %if.then53

if.then53:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  %sub54 = add nsw i32 %ring_id.0.i, -128
  %wrp = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 3
  %80 = ptrtoint ptr %wrp to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %wrp, align 4
  %add.ptr56 = getelementptr i32, ptr %81, i32 %sub54
  %hp_addr = getelementptr inbounds %struct.anon.106, ptr %u, i32 0, i32 4
  %82 = ptrtoint ptr %hp_addr to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %add.ptr56, ptr %hp_addr, align 4
  %or59 = or i32 %61, -2147483592
  %83 = ptrtoint ptr %flags16 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %or59, ptr %flags16, align 8
  br label %if.end139

if.else:                                          ; preds = %if.then42
  %supports_shadow_regs = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 29
  %84 = ptrtoint ptr %supports_shadow_regs to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %supports_shadow_regs, align 2, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool60.not = icmp eq i8 %85, 0
  br i1 %tobool60.not, label %if.then61, label %do.body66

if.then61:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %mem = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 10
  %86 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mem, align 4
  %88 = ptrtoint ptr %87 to i32
  %add62 = add i32 %62, %88
  %89 = inttoptr i32 %add62 to ptr
  %hp_addr64 = getelementptr inbounds %struct.anon.106, ptr %u, i32 0, i32 4
  %90 = ptrtoint ptr %hp_addr64 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %hp_addr64, align 4
  br label %if.end139

do.body66:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %91 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %91, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool67.not = icmp eq i32 %and, 0
  br i1 %tobool67.not, label %lor.lhs.false, label %do.body66.if.then70_crit_edge

do.body66.if.then70_crit_edge:                    ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then70

lor.lhs.false:                                    ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_hal_srng_setup, %if.then70)) #6
          to label %if.end139 [label %if.then70], !srcloc !45

if.then70:                                        ; preds = %lor.lhs.false, %do.body66.if.then70_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  %hp_addr72 = getelementptr inbounds %struct.anon.106, ptr %u, i32 0, i32 4
  %92 = ptrtoint ptr %hp_addr72 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hp_addr72, align 4
  %94 = ptrtoint ptr %93 to i32
  %mem73 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 10
  %95 = ptrtoint ptr %mem73 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mem73, align 4
  %97 = ptrtoint ptr %96 to i32
  %sub74 = sub i32 %94, %97
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 2048, ptr noundef nonnull @.str.3, i32 noundef %type, i32 noundef %ring_num, i32 noundef %62, i32 noundef %sub74) #6
  br label %if.end139

if.else80:                                        ; preds = %if.end
  %loop_cnt = getelementptr inbounds %struct.anon.105, ptr %u, i32 0, i32 4
  %98 = ptrtoint ptr %loop_cnt to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %loop_cnt, align 4
  %99 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %u, align 4
  %cached_hp = getelementptr inbounds %struct.anon.105, ptr %u, i32 0, i32 2
  %100 = ptrtoint ptr %cached_hp to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %cached_hp, align 4
  %rdp84 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 2
  %101 = ptrtoint ptr %rdp84 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rdp84, align 4
  %add.ptr86 = getelementptr i32, ptr %102, i32 %ring_id.0.i
  %hp_addr88 = getelementptr inbounds %struct.anon.105, ptr %u, i32 0, i32 1
  %103 = ptrtoint ptr %hp_addr88 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %add.ptr86, ptr %hp_addr88, align 4
  %104 = ptrtoint ptr %lmac_ring.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %lmac_ring.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool90.not = icmp eq i8 %105, 0
  br i1 %tobool90.not, label %if.else100, label %if.then91

if.then91:                                        ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #8
  %sub92 = add nsw i32 %ring_id.0.i, -128
  %wrp93 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 3
  %106 = ptrtoint ptr %wrp93 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %wrp93, align 4
  %add.ptr95 = getelementptr i32, ptr %107, i32 %sub92
  %tp_addr97 = getelementptr inbounds %struct.anon.105, ptr %u, i32 0, i32 3
  %108 = ptrtoint ptr %tp_addr97 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %add.ptr95, ptr %tp_addr97, align 4
  %or99 = or i32 %61, -2147483592
  %109 = ptrtoint ptr %flags16 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %or99, ptr %flags16, align 8
  br label %if.end139

if.else100:                                       ; preds = %if.else80
  %supports_shadow_regs102 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 29
  %110 = ptrtoint ptr %supports_shadow_regs102 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %supports_shadow_regs102, align 2, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool103.not = icmp eq i8 %111, 0
  br i1 %tobool103.not, label %if.then104, label %do.body115

if.then104:                                       ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #8
  %mem105 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 10
  %112 = ptrtoint ptr %mem105 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mem105, align 4
  %114 = ptrtoint ptr %113 to i32
  %regs = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 8
  %115 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs, align 4
  %hal_reo1_ring_tp = getelementptr inbounds %struct.ath11k_hw_regs, ptr %116, i32 0, i32 30
  %117 = ptrtoint ptr %hal_reo1_ring_tp to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %hal_reo1_ring_tp, align 4
  %hal_reo1_ring_hp = getelementptr inbounds %struct.ath11k_hw_regs, ptr %116, i32 0, i32 29
  %119 = ptrtoint ptr %hal_reo1_ring_hp to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %hal_reo1_ring_hp, align 4
  %sub110 = add i32 %62, %114
  %add106 = add i32 %sub110, %118
  %add111 = sub i32 %add106, %120
  %121 = inttoptr i32 %add111 to ptr
  %tp_addr113 = getelementptr inbounds %struct.anon.105, ptr %u, i32 0, i32 3
  %122 = ptrtoint ptr %tp_addr113 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %121, ptr %tp_addr113, align 4
  br label %if.end139

do.body115:                                       ; preds = %if.else100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %123 = load i32, ptr @ath11k_debug_mask, align 4
  %and116 = and i32 %123, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %lor.lhs.false118, label %do.body115.if.then121_crit_edge

do.body115.if.then121_crit_edge:                  ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then121

lor.lhs.false118:                                 ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_hal_srng_setup, %if.then121)) #6
          to label %if.end139 [label %if.then121], !srcloc !45

if.then121:                                       ; preds = %lor.lhs.false118, %do.body115.if.then121_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  %regs123 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 8
  %124 = ptrtoint ptr %regs123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs123, align 4
  %hal_reo1_ring_tp124 = getelementptr inbounds %struct.ath11k_hw_regs, ptr %125, i32 0, i32 30
  %126 = ptrtoint ptr %hal_reo1_ring_tp124 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %hal_reo1_ring_tp124, align 4
  %hal_reo1_ring_hp127 = getelementptr inbounds %struct.ath11k_hw_regs, ptr %125, i32 0, i32 29
  %128 = ptrtoint ptr %hal_reo1_ring_hp127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %hal_reo1_ring_hp127, align 4
  %sub128 = add i32 %127, %62
  %add129 = sub i32 %sub128, %129
  %tp_addr131 = getelementptr inbounds %struct.anon.105, ptr %u, i32 0, i32 3
  %130 = ptrtoint ptr %tp_addr131 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %tp_addr131, align 4
  %132 = ptrtoint ptr %131 to i32
  %mem132 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 10
  %133 = ptrtoint ptr %mem132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %mem132, align 4
  %135 = ptrtoint ptr %134 to i32
  %sub133 = sub i32 %132, %135
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 2048, ptr noundef nonnull @.str.4, i32 noundef %type, i32 noundef %ring_num, i32 noundef %add129, i32 noundef %sub133) #6
  br label %if.end139

if.end139:                                        ; preds = %if.then121, %lor.lhs.false118, %if.then104, %if.then91, %if.then70, %lor.lhs.false, %if.then61, %if.then53
  %136 = ptrtoint ptr %lmac_ring.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %lmac_ring.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool141.not = icmp eq i8 %137, 0
  br i1 %tobool141.not, label %if.end143, label %if.end139.cleanup_crit_edge

if.end139.cleanup_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end143:                                        ; preds = %if.end139
  %138 = ptrtoint ptr %ring_dir6 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %ring_dir6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp.i = icmp eq i32 %139, 0
  %140 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx31, align 8
  %142 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %flags16, align 8
  %and.i.i = and i32 %143, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i, label %if.then.i269, label %if.else.i

if.then.i269:                                     ; preds = %if.end143
  br i1 %tobool.not.i.i, label %if.then.i269.if.end42.i.i_crit_edge, label %if.then.i.i

if.then.i269.if.end42.i.i_crit_edge:              ; preds = %if.then.i269
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i.i

if.then.i.i:                                      ; preds = %if.then.i269
  call void @__sanitizer_cov_trace_pc() #8
  %regs.i.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 8
  %144 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regs.i.i, align 4
  %hal_tcl1_ring_msi1_base_lsb.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %145, i32 0, i32 8
  %146 = ptrtoint ptr %hal_tcl1_ring_msi1_base_lsb.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %hal_tcl1_ring_msi1_base_lsb.i.i, align 4
  %148 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %145, align 4
  %sub.i.i = add i32 %147, %141
  %add.i.i = sub i32 %sub.i.i, %149
  %150 = ptrtoint ptr %msi_addr17 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %msi_addr17, align 8
  %ops.i.i.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 12, i32 1
  %152 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ops.i.i.i, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %155(ptr noundef %ab, i32 noundef %add.i.i, i32 noundef %151) #6
  %156 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regs.i.i, align 4
  %hal_tcl1_ring_msi1_base_msb.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %157, i32 0, i32 9
  %158 = ptrtoint ptr %hal_tcl1_ring_msi1_base_msb.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %hal_tcl1_ring_msi1_base_msb.i.i, align 4
  %160 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %157, align 4
  %sub33.i.i = add i32 %159, %141
  %add34.i.i = sub i32 %sub33.i.i, %161
  %162 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ops.i.i.i, align 4
  %write32.i529.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %write32.i529.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %write32.i529.i.i, align 4
  tail call void %165(ptr noundef %ab, i32 noundef %add34.i.i, i32 noundef 256) #6
  %166 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %regs.i.i, align 4
  %hal_tcl1_ring_msi1_data.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %167, i32 0, i32 10
  %168 = ptrtoint ptr %hal_tcl1_ring_msi1_data.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %hal_tcl1_ring_msi1_data.i.i, align 4
  %170 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %167, align 4
  %sub40.i.i = add i32 %169, %141
  %add41.i.i = sub i32 %sub40.i.i, %171
  %172 = ptrtoint ptr %msi_data18 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %msi_data18, align 4
  %174 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %ops.i.i.i, align 4
  %write32.i531.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %write32.i531.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %write32.i531.i.i, align 4
  tail call void %177(ptr noundef %ab, i32 noundef %add41.i.i, i32 noundef %173) #6
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.then.i.i, %if.then.i269.if.end42.i.i_crit_edge
  %178 = ptrtoint ptr %ring_base_paddr7 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %ring_base_paddr7, align 8
  %ops.i532.i.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 12, i32 1
  %180 = ptrtoint ptr %ops.i532.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ops.i532.i.i, align 4
  %write32.i533.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %write32.i533.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %write32.i533.i.i, align 4
  tail call void %183(ptr noundef %ab, i32 noundef %141, i32 noundef %179) #6
  %184 = ptrtoint ptr %num_entries11 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %num_entries11, align 8
  %186 = ptrtoint ptr %entry_size10 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %entry_size10, align 4
  %mul.i.i = mul i32 %185, %187
  %shl105.i.i = shl i32 %mul.i.i, 8
  %and106.i.i = and i32 %shl105.i.i, 268435200
  %regs109.i.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 8
  %188 = ptrtoint ptr %regs109.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %regs109.i.i, align 4
  %hal_tcl1_ring_base_msb.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %hal_tcl1_ring_base_msb.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %hal_tcl1_ring_base_msb.i.i, align 4
  %192 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %189, align 4
  %sub113.i.i = add i32 %191, %141
  %add114.i.i = sub i32 %sub113.i.i, %193
  %194 = ptrtoint ptr %ops.i532.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %ops.i532.i.i, align 4
  %write32.i535.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %write32.i535.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %write32.i535.i.i, align 4
  tail call void %197(ptr noundef %ab, i32 noundef %add114.i.i, i32 noundef %and106.i.i) #6
  %198 = ptrtoint ptr %entry_size10 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %entry_size10, align 4
  %and141.i.i = and i32 %199, 255
  %200 = ptrtoint ptr %regs109.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %regs109.i.i, align 4
  %hal_tcl1_ring_id.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %201, i32 0, i32 2
  %202 = ptrtoint ptr %hal_tcl1_ring_id.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %hal_tcl1_ring_id.i.i, align 4
  %204 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %201, align 4
  %sub147.i.i = add i32 %203, %141
  %add148.i.i = sub i32 %sub147.i.i, %205
  %206 = ptrtoint ptr %ops.i532.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %ops.i532.i.i, align 4
  %write32.i537.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %write32.i537.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %write32.i537.i.i, align 4
  tail call void %209(ptr noundef %ab, i32 noundef %add148.i.i, i32 noundef %and141.i.i) #6
  %210 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx4, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 104, i8 %211)
  %cmp.i.i = icmp eq i8 %211, 104
  br i1 %cmp.i.i, label %if.then151.i.i, label %if.end42.i.i.do.body236.i.i_crit_edge

if.end42.i.i.do.body236.i.i_crit_edge:            ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body236.i.i

if.then151.i.i:                                   ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %212 = ptrtoint ptr %ring_base_paddr7 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %ring_base_paddr7, align 8
  %214 = ptrtoint ptr %ops.i532.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %ops.i532.i.i, align 4
  %write32.i539.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %write32.i539.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %write32.i539.i.i, align 4
  tail call void %217(ptr noundef %ab, i32 noundef %141, i32 noundef %213) #6
  %218 = ptrtoint ptr %num_entries11 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %num_entries11, align 8
  %220 = ptrtoint ptr %entry_size10 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %entry_size10, align 4
  %mul196.i.i = mul i32 %219, %221
  %shl218.i.i = shl i32 %mul196.i.i, 8
  %and219.i.i = and i32 %shl218.i.i, 268435200
  %222 = ptrtoint ptr %regs109.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %regs109.i.i, align 4
  %hal_tcl1_ring_base_msb223.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %hal_tcl1_ring_base_msb223.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %hal_tcl1_ring_base_msb223.i.i, align 4
  %226 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %223, align 4
  %sub227.i.i = add i32 %225, %141
  %add228.i.i = sub i32 %sub227.i.i, %227
  %228 = ptrtoint ptr %ops.i532.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %ops.i532.i.i, align 4
  %write32.i541.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %229, i32 0, i32 1
  %230 = ptrtoint ptr %write32.i541.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %write32.i541.i.i, align 4
  tail call void %231(ptr noundef %ab, i32 noundef %add228.i.i, i32 noundef %and219.i.i) #6
  br label %do.body236.i.i

do.body236.i.i:                                   ; preds = %if.then151.i.i, %if.end42.i.i.do.body236.i.i_crit_edge
  %232 = ptrtoint ptr %intr_timer_thres_us15 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %intr_timer_thres_us15, align 8
  %234 = ptrtoint ptr %entry_size10 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %entry_size10, align 4
  %236 = ptrtoint ptr %intr_batch_cntr_thres_entries14 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %intr_batch_cntr_thres_entries14, align 4
  %mul264.i.i = mul i32 %235, %237
  %shl254.i.i = shl i32 %233, 16
  %and287.i.i = and i32 %mul264.i.i, 32767
  %or288.i.i = or i32 %and287.i.i, %shl254.i.i
  %238 = ptrtoint ptr %regs109.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %regs109.i.i, align 4
  %hal_tcl1_ring_consumer_int_setup_ix0.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %239, i32 0, i32 6
  %240 = ptrtoint ptr %hal_tcl1_ring_consumer_int_setup_ix0.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %hal_tcl1_ring_consumer_int_setup_ix0.i.i, align 4
  %242 = ptrtoint ptr %239 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %239, align 4
  %sub294.i.i = add i32 %241, %141
  %add295.i.i = sub i32 %sub294.i.i, %243
  %244 = ptrtoint ptr %ops.i532.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %ops.i532.i.i, align 4
  %write32.i543.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %245, i32 0, i32 1
  %246 = ptrtoint ptr %write32.i543.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %write32.i543.i.i, align 4
  tail call void %247(ptr noundef %ab, i32 noundef %add295.i.i, i32 noundef %or288.i.i) #6
  %248 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %flags16, align 8
  %and297.i.i = and i32 %249, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and297.i.i)
  %tobool298.not.i.i = icmp eq i32 %and297.i.i, 0
  br i1 %tobool298.not.i.i, label %do.body236.i.i.if.end329.i.i_crit_edge, label %do.end322.i.i

do.body236.i.i.if.end329.i.i_crit_edge:           ; preds = %do.body236.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end329.i.i

do.end322.i.i:                                    ; preds = %do.body236.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %low_threshold.i.i = getelementptr [172 x %struct.hal_srng], ptr %hal1, i32 0, i32 %ring_id.0.i, i32 18, i32 0, i32 5
  %250 = ptrtoint ptr %low_threshold.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %low_threshold.i.i, align 4
  %and327.i.i = and i32 %251, 65535
  br label %if.end329.i.i

if.end329.i.i:                                    ; preds = %do.end322.i.i, %do.body236.i.i.if.end329.i.i_crit_edge
  %val.0.i.i = phi i32 [ %and327.i.i, %do.end322.i.i ], [ 0, %do.body236.i.i.if.end329.i.i_crit_edge ]
  %252 = ptrtoint ptr %regs109.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %regs109.i.i, align 4
  %hal_tcl1_ring_consumer_int_setup_ix1.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %253, i32 0, i32 7
  %254 = ptrtoint ptr %hal_tcl1_ring_consumer_int_setup_ix1.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %hal_tcl1_ring_consumer_int_setup_ix1.i.i, align 4
  %256 = ptrtoint ptr %253 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %253, align 4
  %sub335.i.i = add i32 %255, %141
  %add336.i.i = sub i32 %sub335.i.i, %257
  %258 = ptrtoint ptr %ops.i532.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %ops.i532.i.i, align 4
  %write32.i545.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %259, i32 0, i32 1
  %260 = ptrtoint ptr %write32.i545.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %write32.i545.i.i, align 4
  tail call void %261(ptr noundef %ab, i32 noundef %add336.i.i, i32 noundef %val.0.i.i) #6
  %262 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %arrayidx4, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 104, i8 %263)
  %cmp339.not.i.i = icmp eq i8 %263, 104
  br i1 %cmp339.not.i.i, label %if.end329.i.i.ath11k_hal_srng_src_hw_init.exit.i_crit_edge, label %if.then341.i.i

if.end329.i.i.ath11k_hal_srng_src_hw_init.exit.i_crit_edge: ; preds = %if.end329.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_hal_srng_src_hw_init.exit.i

if.then341.i.i:                                   ; preds = %if.end329.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %rdp.i.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 2
  %paddr.i.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 2, i32 1
  %264 = ptrtoint ptr %paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %paddr.i.i, align 4
  %tp_addr343.i.i = getelementptr [172 x %struct.hal_srng], ptr %hal1, i32 0, i32 %ring_id.0.i, i32 18, i32 0, i32 2
  %266 = ptrtoint ptr %tp_addr343.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %tp_addr343.i.i, align 4
  %268 = ptrtoint ptr %267 to i32
  %269 = ptrtoint ptr %rdp.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %rdp.i.i, align 4
  %271 = ptrtoint ptr %270 to i32
  %sub345.i.i = add i32 %265, %268
  %add346.i.i = sub i32 %sub345.i.i, %271
  %272 = ptrtoint ptr %regs109.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %regs109.i.i, align 4
  %hal_tcl1_ring_tp_addr_lsb.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %273, i32 0, i32 4
  %274 = ptrtoint ptr %hal_tcl1_ring_tp_addr_lsb.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %hal_tcl1_ring_tp_addr_lsb.i.i, align 4
  %276 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %273, align 4
  %sub353.i.i = add i32 %275, %141
  %add354.i.i = sub i32 %sub353.i.i, %277
  %278 = ptrtoint ptr %ops.i532.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %ops.i532.i.i, align 4
  %write32.i547.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %279, i32 0, i32 1
  %280 = ptrtoint ptr %write32.i547.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %write32.i547.i.i, align 4
  tail call void %281(ptr noundef %ab, i32 noundef %add354.i.i, i32 noundef %add346.i.i) #6
  %282 = ptrtoint ptr %regs109.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %regs109.i.i, align 4
  %hal_tcl1_ring_tp_addr_msb.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %283, i32 0, i32 5
  %284 = ptrtoint ptr %hal_tcl1_ring_tp_addr_msb.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %hal_tcl1_ring_tp_addr_msb.i.i, align 4
  %286 = ptrtoint ptr %283 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %283, align 4
  %sub362.i.i = add i32 %285, %141
  %add363.i.i = sub i32 %sub362.i.i, %287
  %288 = ptrtoint ptr %ops.i532.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %ops.i532.i.i, align 4
  %write32.i549.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %289, i32 0, i32 1
  %290 = ptrtoint ptr %write32.i549.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %write32.i549.i.i, align 4
  tail call void %291(ptr noundef %ab, i32 noundef %add363.i.i, i32 noundef 0) #6
  br label %ath11k_hal_srng_src_hw_init.exit.i

ath11k_hal_srng_src_hw_init.exit.i:               ; preds = %if.then341.i.i, %if.end329.i.i.ath11k_hal_srng_src_hw_init.exit.i_crit_edge
  %292 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %arrayidx31.1, align 4
  %294 = ptrtoint ptr %ops.i532.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %ops.i532.i.i, align 4
  %write32.i551.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %295, i32 0, i32 1
  %296 = ptrtoint ptr %write32.i551.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %write32.i551.i.i, align 4
  tail call void %297(ptr noundef %ab, i32 noundef %293, i32 noundef 0) #6
  %add369.i.i = add i32 %293, 4
  %298 = ptrtoint ptr %ops.i532.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %ops.i532.i.i, align 4
  %write32.i553.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %299, i32 0, i32 1
  %300 = ptrtoint ptr %write32.i553.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %write32.i553.i.i, align 4
  tail call void %301(ptr noundef %ab, i32 noundef %add369.i.i, i32 noundef 0) #6
  %tp_addr371.i.i = getelementptr [172 x %struct.hal_srng], ptr %hal1, i32 0, i32 %ring_id.0.i, i32 18, i32 0, i32 2
  %302 = ptrtoint ptr %tp_addr371.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %tp_addr371.i.i, align 4
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 0, ptr %303, align 4
  %305 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %arrayidx31, align 8
  %307 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %flags16, align 8
  %309 = and i32 %308, 56
  %or393.i.i = or i32 %309, 66
  %310 = ptrtoint ptr %regs109.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %regs109.i.i, align 4
  %hal_tcl1_ring_misc.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %311, i32 0, i32 3
  %312 = ptrtoint ptr %hal_tcl1_ring_misc.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %hal_tcl1_ring_misc.i.i, align 4
  %314 = ptrtoint ptr %311 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %311, align 4
  %sub399.i.i = add i32 %313, %306
  %add400.i.i = sub i32 %sub399.i.i, %315
  %316 = ptrtoint ptr %ops.i532.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %ops.i532.i.i, align 4
  %write32.i555.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %317, i32 0, i32 1
  %318 = ptrtoint ptr %write32.i555.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %write32.i555.i.i, align 4
  tail call void %319(ptr noundef %ab, i32 noundef %add400.i.i, i32 noundef %or393.i.i) #6
  br label %ath11k_hal_srng_hw_init.exit

if.else.i:                                        ; preds = %if.end143
  br i1 %tobool.not.i.i, label %if.else.i.if.end42.i27.i_crit_edge, label %if.then.i19.i

if.else.i.if.end42.i27.i_crit_edge:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i27.i

if.then.i19.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %regs.i8.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 8
  %320 = ptrtoint ptr %regs.i8.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %regs.i8.i, align 4
  %hal_reo1_ring_msi1_base_lsb.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %321, i32 0, i32 21
  %322 = ptrtoint ptr %hal_reo1_ring_msi1_base_lsb.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %hal_reo1_ring_msi1_base_lsb.i.i, align 4
  %hal_reo1_ring_base_lsb.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %321, i32 0, i32 14
  %324 = ptrtoint ptr %hal_reo1_ring_base_lsb.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %hal_reo1_ring_base_lsb.i.i, align 4
  %sub.i9.i = add i32 %323, %141
  %add.i10.i = sub i32 %sub.i9.i, %325
  %326 = ptrtoint ptr %msi_addr17 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %msi_addr17, align 8
  %ops.i.i12.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 12, i32 1
  %328 = ptrtoint ptr %ops.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %ops.i.i12.i, align 4
  %write32.i.i13.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %329, i32 0, i32 1
  %330 = ptrtoint ptr %write32.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %write32.i.i13.i, align 4
  tail call void %331(ptr noundef %ab, i32 noundef %add.i10.i, i32 noundef %327) #6
  %332 = ptrtoint ptr %regs.i8.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %regs.i8.i, align 4
  %hal_reo1_ring_msi1_base_msb.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %333, i32 0, i32 22
  %334 = ptrtoint ptr %hal_reo1_ring_msi1_base_msb.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %hal_reo1_ring_msi1_base_msb.i.i, align 4
  %hal_reo1_ring_base_lsb32.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %333, i32 0, i32 14
  %336 = ptrtoint ptr %hal_reo1_ring_base_lsb32.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %hal_reo1_ring_base_lsb32.i.i, align 4
  %sub33.i14.i = add i32 %335, %141
  %add34.i15.i = sub i32 %sub33.i14.i, %337
  %338 = ptrtoint ptr %ops.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %ops.i.i12.i, align 4
  %write32.i407.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %339, i32 0, i32 1
  %340 = ptrtoint ptr %write32.i407.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %write32.i407.i.i, align 4
  tail call void %341(ptr noundef %ab, i32 noundef %add34.i15.i, i32 noundef 256) #6
  %342 = ptrtoint ptr %regs.i8.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %regs.i8.i, align 4
  %hal_reo1_ring_msi1_data.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %343, i32 0, i32 23
  %344 = ptrtoint ptr %hal_reo1_ring_msi1_data.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %hal_reo1_ring_msi1_data.i.i, align 4
  %hal_reo1_ring_base_lsb39.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %343, i32 0, i32 14
  %346 = ptrtoint ptr %hal_reo1_ring_base_lsb39.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %hal_reo1_ring_base_lsb39.i.i, align 4
  %sub40.i16.i = add i32 %345, %141
  %add41.i17.i = sub i32 %sub40.i16.i, %347
  %348 = ptrtoint ptr %msi_data18 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %msi_data18, align 4
  %350 = ptrtoint ptr %ops.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %ops.i.i12.i, align 4
  %write32.i409.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %351, i32 0, i32 1
  %352 = ptrtoint ptr %write32.i409.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %write32.i409.i.i, align 4
  tail call void %353(ptr noundef %ab, i32 noundef %add41.i17.i, i32 noundef %349) #6
  br label %if.end42.i27.i

if.end42.i27.i:                                   ; preds = %if.then.i19.i, %if.else.i.if.end42.i27.i_crit_edge
  %354 = ptrtoint ptr %ring_base_paddr7 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %ring_base_paddr7, align 8
  %ops.i410.i.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 12, i32 1
  %356 = ptrtoint ptr %ops.i410.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %ops.i410.i.i, align 4
  %write32.i411.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %357, i32 0, i32 1
  %358 = ptrtoint ptr %write32.i411.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %write32.i411.i.i, align 4
  tail call void %359(ptr noundef %ab, i32 noundef %141, i32 noundef %355) #6
  %360 = ptrtoint ptr %num_entries11 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %num_entries11, align 8
  %362 = ptrtoint ptr %entry_size10 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %entry_size10, align 4
  %mul.i23.i = mul i32 %361, %363
  %shl105.i29.i = shl i32 %mul.i23.i, 8
  %and106.i30.i = and i32 %shl105.i29.i, 268435200
  %regs109.i31.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 8
  %364 = ptrtoint ptr %regs109.i31.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %regs109.i31.i, align 4
  %hal_reo1_ring_base_msb.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %365, i32 0, i32 15
  %366 = ptrtoint ptr %hal_reo1_ring_base_msb.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %hal_reo1_ring_base_msb.i.i, align 4
  %hal_reo1_ring_base_lsb112.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %365, i32 0, i32 14
  %368 = ptrtoint ptr %hal_reo1_ring_base_lsb112.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %hal_reo1_ring_base_lsb112.i.i, align 4
  %sub113.i32.i = add i32 %367, %141
  %add114.i33.i = sub i32 %sub113.i32.i, %369
  %370 = ptrtoint ptr %ops.i410.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %ops.i410.i.i, align 4
  %write32.i413.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %371, i32 0, i32 1
  %372 = ptrtoint ptr %write32.i413.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %write32.i413.i.i, align 4
  tail call void %373(ptr noundef %ab, i32 noundef %add114.i33.i, i32 noundef %and106.i30.i) #6
  %374 = ptrtoint ptr %entry_size10 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %entry_size10, align 4
  %376 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %arrayidx4, align 8
  %conv140.i.i = zext i8 %377 to i32
  %shl141.i.i = shl nuw nsw i32 %conv140.i.i, 8
  %and169.i.i = and i32 %375, 255
  %or170.i.i = or i32 %shl141.i.i, %and169.i.i
  %378 = ptrtoint ptr %regs109.i31.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %regs109.i31.i, align 4
  %hal_reo1_ring_id.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %379, i32 0, i32 16
  %380 = ptrtoint ptr %hal_reo1_ring_id.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %hal_reo1_ring_id.i.i, align 4
  %hal_reo1_ring_base_lsb175.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %379, i32 0, i32 14
  %382 = ptrtoint ptr %hal_reo1_ring_base_lsb175.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %hal_reo1_ring_base_lsb175.i.i, align 4
  %sub176.i.i = add i32 %381, %141
  %add177.i.i = sub i32 %sub176.i.i, %383
  %384 = ptrtoint ptr %ops.i410.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %ops.i410.i.i, align 4
  %write32.i415.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %385, i32 0, i32 1
  %386 = ptrtoint ptr %write32.i415.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %write32.i415.i.i, align 4
  tail call void %387(ptr noundef %ab, i32 noundef %add177.i.i, i32 noundef %or170.i.i) #6
  %388 = ptrtoint ptr %intr_timer_thres_us15 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %intr_timer_thres_us15, align 8
  %390 = ptrtoint ptr %entry_size10 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %entry_size10, align 4
  %392 = ptrtoint ptr %intr_batch_cntr_thres_entries14 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %intr_batch_cntr_thres_entries14, align 4
  %mul215.i.i = mul i32 %391, %393
  %394 = shl i32 %389, 13
  %shl205.i.i = and i32 %394, -65536
  %and238.i.i = and i32 %mul215.i.i, 32767
  %or239.i.i = or i32 %and238.i.i, %shl205.i.i
  %395 = ptrtoint ptr %regs109.i31.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %regs109.i31.i, align 4
  %hal_reo1_ring_producer_int_setup.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %396, i32 0, i32 20
  %397 = ptrtoint ptr %hal_reo1_ring_producer_int_setup.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %hal_reo1_ring_producer_int_setup.i.i, align 4
  %hal_reo1_ring_base_lsb244.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %396, i32 0, i32 14
  %399 = ptrtoint ptr %hal_reo1_ring_base_lsb244.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %hal_reo1_ring_base_lsb244.i.i, align 4
  %sub245.i.i = add i32 %398, %141
  %add246.i.i = sub i32 %sub245.i.i, %400
  %401 = ptrtoint ptr %ops.i410.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %ops.i410.i.i, align 4
  %write32.i417.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %402, i32 0, i32 1
  %403 = ptrtoint ptr %write32.i417.i.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %write32.i417.i.i, align 4
  tail call void %404(ptr noundef %ab, i32 noundef %add246.i.i, i32 noundef %or239.i.i) #6
  %rdp.i37.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 2
  %paddr.i38.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 2, i32 1
  %405 = ptrtoint ptr %paddr.i38.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %paddr.i38.i, align 4
  %hp_addr247.i.i = getelementptr [172 x %struct.hal_srng], ptr %hal1, i32 0, i32 %ring_id.0.i, i32 18, i32 0, i32 1
  %407 = ptrtoint ptr %hp_addr247.i.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %hp_addr247.i.i, align 4
  %409 = ptrtoint ptr %408 to i32
  %410 = ptrtoint ptr %rdp.i37.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %rdp.i37.i, align 4
  %412 = ptrtoint ptr %411 to i32
  %sub249.i.i = add i32 %406, %409
  %add250.i.i = sub i32 %sub249.i.i, %412
  %413 = ptrtoint ptr %regs109.i31.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %regs109.i31.i, align 4
  %hal_reo1_ring_hp_addr_lsb.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %414, i32 0, i32 18
  %415 = ptrtoint ptr %hal_reo1_ring_hp_addr_lsb.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %hal_reo1_ring_hp_addr_lsb.i.i, align 4
  %hal_reo1_ring_base_lsb256.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %414, i32 0, i32 14
  %417 = ptrtoint ptr %hal_reo1_ring_base_lsb256.i.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %hal_reo1_ring_base_lsb256.i.i, align 4
  %sub257.i.i = add i32 %416, %141
  %add258.i.i = sub i32 %sub257.i.i, %418
  %419 = ptrtoint ptr %ops.i410.i.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %ops.i410.i.i, align 4
  %write32.i419.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %420, i32 0, i32 1
  %421 = ptrtoint ptr %write32.i419.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %write32.i419.i.i, align 4
  tail call void %422(ptr noundef %ab, i32 noundef %add258.i.i, i32 noundef %add250.i.i) #6
  %423 = ptrtoint ptr %regs109.i31.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %regs109.i31.i, align 4
  %hal_reo1_ring_hp_addr_msb.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %424, i32 0, i32 19
  %425 = ptrtoint ptr %hal_reo1_ring_hp_addr_msb.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %hal_reo1_ring_hp_addr_msb.i.i, align 4
  %hal_reo1_ring_base_lsb265.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %424, i32 0, i32 14
  %427 = ptrtoint ptr %hal_reo1_ring_base_lsb265.i.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %hal_reo1_ring_base_lsb265.i.i, align 4
  %sub266.i.i = add i32 %426, %141
  %add267.i.i = sub i32 %sub266.i.i, %428
  %429 = ptrtoint ptr %ops.i410.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %ops.i410.i.i, align 4
  %write32.i421.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %430, i32 0, i32 1
  %431 = ptrtoint ptr %write32.i421.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %write32.i421.i.i, align 4
  tail call void %432(ptr noundef %ab, i32 noundef %add267.i.i, i32 noundef 0) #6
  %433 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %arrayidx31.1, align 4
  %435 = ptrtoint ptr %ops.i410.i.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %ops.i410.i.i, align 4
  %write32.i423.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %436, i32 0, i32 1
  %437 = ptrtoint ptr %write32.i423.i.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %write32.i423.i.i, align 4
  tail call void %438(ptr noundef %ab, i32 noundef %434, i32 noundef 0) #6
  %439 = ptrtoint ptr %regs109.i31.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %regs109.i31.i, align 4
  %hal_reo1_ring_tp.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %440, i32 0, i32 30
  %441 = ptrtoint ptr %hal_reo1_ring_tp.i.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %hal_reo1_ring_tp.i.i, align 4
  %hal_reo1_ring_hp.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %440, i32 0, i32 29
  %443 = ptrtoint ptr %hal_reo1_ring_hp.i.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %hal_reo1_ring_hp.i.i, align 4
  %sub276.i.i = add i32 %442, %434
  %add277.i.i = sub i32 %sub276.i.i, %444
  %445 = ptrtoint ptr %ops.i410.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %ops.i410.i.i, align 4
  %write32.i425.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %446, i32 0, i32 1
  %447 = ptrtoint ptr %write32.i425.i.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %write32.i425.i.i, align 4
  tail call void %448(ptr noundef %ab, i32 noundef %add277.i.i, i32 noundef 0) #6
  %449 = ptrtoint ptr %hp_addr247.i.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %hp_addr247.i.i, align 4
  %451 = ptrtoint ptr %450 to i32
  call void @__asan_store4_noabort(i32 %451)
  store volatile i32 0, ptr %450, align 4
  %452 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %arrayidx31, align 8
  %454 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %flags16, align 8
  %456 = and i32 %455, 56
  %or300.i.i = or i32 %456, 64
  %457 = ptrtoint ptr %regs109.i31.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %regs109.i31.i, align 4
  %hal_reo1_ring_misc.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %458, i32 0, i32 17
  %459 = ptrtoint ptr %hal_reo1_ring_misc.i.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %hal_reo1_ring_misc.i.i, align 4
  %hal_reo1_ring_base_lsb305.i.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %458, i32 0, i32 14
  %461 = ptrtoint ptr %hal_reo1_ring_base_lsb305.i.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %hal_reo1_ring_base_lsb305.i.i, align 4
  %sub306.i.i = add i32 %460, %453
  %add307.i.i = sub i32 %sub306.i.i, %462
  %463 = ptrtoint ptr %ops.i410.i.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %ops.i410.i.i, align 4
  %write32.i427.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %464, i32 0, i32 1
  %465 = ptrtoint ptr %write32.i427.i.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %write32.i427.i.i, align 4
  tail call void %466(ptr noundef %ab, i32 noundef %add307.i.i, i32 noundef %or300.i.i) #6
  br label %ath11k_hal_srng_hw_init.exit

ath11k_hal_srng_hw_init.exit:                     ; preds = %if.end42.i27.i, %ath11k_hal_srng_src_hw_init.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %type)
  %cmp144 = icmp eq i32 %type, 9
  br i1 %cmp144, label %if.then146, label %ath11k_hal_srng_hw_init.exit.cleanup_crit_edge

ath11k_hal_srng_hw_init.exit.cleanup_crit_edge:   ; preds = %ath11k_hal_srng_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then146:                                       ; preds = %ath11k_hal_srng_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %max_buffer_len = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 6
  %467 = ptrtoint ptr %max_buffer_len to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %max_buffer_len, align 4
  %conv147 = trunc i32 %468 to i16
  %max_buffer_length = getelementptr [172 x %struct.hal_srng], ptr %hal1, i32 0, i32 %ring_id.0.i, i32 18, i32 0, i32 5
  %469 = ptrtoint ptr %max_buffer_length to i32
  call void @__asan_store2_noabort(i32 %469)
  store i16 %conv147, ptr %max_buffer_length, align 4
  %470 = ptrtoint ptr %srng_config3 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %srng_config3, align 32
  %reg_start.i = getelementptr %struct.hal_srng_config, ptr %471, i32 9, i32 3
  %472 = ptrtoint ptr %reg_start.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %reg_start.i, align 4
  %add.i272 = add i32 %473, 176
  %reg_size.i = getelementptr %struct.hal_srng_config, ptr %471, i32 9, i32 4
  %474 = ptrtoint ptr %reg_size.i to i32
  call void @__asan_load2_noabort(i32 %474)
  %475 = load i16, ptr %reg_size.i, align 4
  %conv.i273 = zext i16 %475 to i32
  %mul.i274 = mul i32 %conv.i273, %ring_num
  %add4.i275 = add i32 %add.i272, %mul.i274
  %ops.i.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 12, i32 1
  %476 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %ops.i.i, align 4
  %478 = ptrtoint ptr %477 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %477, align 4
  %call.i.i = tail call i32 %479(ptr noundef %ab, i32 noundef %add4.i275) #6
  %480 = ptrtoint ptr %max_buffer_length to i32
  call void @__asan_load2_noabort(i32 %480)
  %481 = load i16, ptr %max_buffer_length, align 4
  %and.i = and i32 %call.i.i, -65536
  %conv23.i = zext i16 %481 to i32
  %or.i = or i32 %and.i, %conv23.i
  %482 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %483, i32 0, i32 1
  %484 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %write32.i.i, align 4
  tail call void %485(ptr noundef %ab, i32 noundef %add4.i275, i32 noundef %or.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then146, %ath11k_hal_srng_hw_init.exit.cleanup_crit_edge, %if.end139.cleanup_crit_edge, %ath11k_hal_srng_get_ring_id.exit.cleanup_crit_edge, %do.end.i, %if.then.i
  %retval.0.i279 = phi i32 [ %ring_id.0.i, %ath11k_hal_srng_hw_init.exit.cleanup_crit_edge ], [ %ring_id.0.i, %if.then146 ], [ %ring_id.0.i, %if.end139.cleanup_crit_edge ], [ %ring_id.0.i, %ath11k_hal_srng_get_ring_id.exit.cleanup_crit_edge ], [ -22, %if.then.i ], [ -22, %do.end.i ]
  ret i32 %retval.0.i279
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath11k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_hal_srng_update_shadow_config(ptr noundef %ab, i32 noundef %ring_type, i32 noundef %ring_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_shadow_reg_configured = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 7
  %0 = ptrtoint ptr %num_shadow_reg_configured to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_shadow_reg_configured, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %1)
  %cmp = icmp sgt i32 %1, 35
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %srng_config2 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 1
  %2 = ptrtoint ptr %srng_config2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %srng_config2, align 8
  %inc = add nsw i32 %1, 1
  %4 = ptrtoint ptr %num_shadow_reg_configured to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %inc, ptr %num_shadow_reg_configured, align 8
  %arrayidx4 = getelementptr %struct.hal_srng_config, ptr %3, i32 %ring_type, i32 3, i32 1
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr %struct.hal_srng_config, ptr %3, i32 %ring_type, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx5, align 2
  %conv = zext i16 %8 to i32
  %mul = mul i32 %conv, %ring_num
  %add = add i32 %mul, %6
  %ring_dir = getelementptr %struct.hal_srng_config, ptr %3, i32 %ring_type, i32 6
  %9 = ptrtoint ptr %ring_dir to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ring_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp6 = icmp eq i32 %10, 1
  %add9 = add i32 %add, 4
  %spec.select = select i1 %cmp6, i32 %add9, i32 %add
  %arrayidx11 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 6, i32 %1
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %arrayidx11, align 4
  %12 = ptrtoint ptr %srng_config2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %srng_config2, align 8
  %max_rings.i.i = getelementptr %struct.hal_srng_config, ptr %13, i32 %ring_type, i32 1
  %14 = ptrtoint ptr %max_rings.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %max_rings.i.i, align 4
  %conv.i.i = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %ring_num)
  %cmp.not.i.i = icmp sgt i32 %conv.i.i, %ring_num
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.12, i32 noundef %ring_num) #6
  br label %ath11k_hal_srng_update_hp_tp_addr.exit

if.end.i.i:                                       ; preds = %if.end
  %arrayidx.i.i = getelementptr %struct.hal_srng_config, ptr %13, i32 %ring_type
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %17, %ring_num
  call void @__sanitizer_cov_trace_const_cmp4(i32 171, i32 %add.i.i)
  %cmp6.i.i = icmp sgt i32 %add.i.i, 171
  br i1 %cmp6.i.i, label %do.end.i.i, label %ath11k_hal_srng_get_ring_id.exit.i, !prof !42

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 479, i32 noundef 9, ptr noundef null) #6
  br label %ath11k_hal_srng_update_hp_tp_addr.exit

ath11k_hal_srng_get_ring_id.exit.i:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %cmp.i = icmp slt i32 %add.i.i, 0
  br i1 %cmp.i, label %ath11k_hal_srng_get_ring_id.exit.i.ath11k_hal_srng_update_hp_tp_addr.exit_crit_edge, label %if.end.i

ath11k_hal_srng_get_ring_id.exit.i.ath11k_hal_srng_update_hp_tp_addr.exit_crit_edge: ; preds = %ath11k_hal_srng_get_ring_id.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_hal_srng_update_hp_tp_addr.exit

if.end.i:                                         ; preds = %ath11k_hal_srng_get_ring_id.exit.i
  %hal1.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16
  %ring_dir.i = getelementptr %struct.hal_srng_config, ptr %13, i32 %ring_type, i32 6
  %18 = ptrtoint ptr %ring_dir.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ring_dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp4.i = icmp eq i32 %19, 1
  %mul.i = shl i32 %1, 2
  %add.i = add i32 %mul.i, 2300
  %mem.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 10
  %20 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mem.i, align 4
  %22 = ptrtoint ptr %21 to i32
  %add6.i = add i32 %add.i, %22
  %23 = inttoptr i32 %add6.i to ptr
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %tp_addr.i = getelementptr [172 x %struct.hal_srng], ptr %hal1.i, i32 0, i32 %add.i.i, i32 18, i32 0, i32 3
  %24 = ptrtoint ptr %tp_addr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %tp_addr.i, align 4
  br label %ath11k_hal_srng_update_hp_tp_addr.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %hp_addr.i = getelementptr [172 x %struct.hal_srng], ptr %hal1.i, i32 0, i32 %add.i.i, i32 18, i32 0, i32 4
  %25 = ptrtoint ptr %hp_addr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %hp_addr.i, align 4
  br label %ath11k_hal_srng_update_hp_tp_addr.exit

ath11k_hal_srng_update_hp_tp_addr.exit:           ; preds = %if.else.i, %if.then5.i, %ath11k_hal_srng_get_ring_id.exit.i.ath11k_hal_srng_update_hp_tp_addr.exit_crit_edge, %do.end.i.i, %if.then.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %26 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %26, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %ath11k_hal_srng_update_hp_tp_addr.exit.if.then13_crit_edge

ath11k_hal_srng_update_hp_tp_addr.exit.if.then13_crit_edge: ; preds = %ath11k_hal_srng_update_hp_tp_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

lor.lhs.false:                                    ; preds = %ath11k_hal_srng_update_hp_tp_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_hal_srng_update_shadow_config, %if.then13)) #6
          to label %cleanup [label %if.then13], !srcloc !45

if.then13:                                        ; preds = %lor.lhs.false, %ath11k_hal_srng_update_hp_tp_addr.exit.if.then13_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  %mul14 = shl i32 %1, 2
  %add15 = add i32 %mul14, 2300
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 2048, ptr noundef nonnull @.str.5, i32 noundef %spec.select, i32 noundef %add15, i32 noundef %1, i32 noundef %ring_type, i32 noundef %ring_num) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then13 ], [ 0, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_hal_srng_shadow_config(ptr noundef %ab) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %srng_config2 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %ring_type.029 = phi i32 [ 0, %entry ], [ %inc14, %cleanup.for.body_crit_edge ]
  %0 = ptrtoint ptr %srng_config2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srng_config2, align 8
  %ring_type.0.off = add nsw i32 %ring_type.029, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ring_type.0.off)
  %switch = icmp ult i32 %ring_type.0.off, 3
  br i1 %switch, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  %lmac_ring = getelementptr %struct.hal_srng_config, ptr %1, i32 %ring_type.029, i32 5
  %2 = ptrtoint ptr %lmac_ring to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lmac_ring, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.cond9.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond9.preheader:                              ; preds = %if.end
  %max_rings = getelementptr %struct.hal_srng_config, ptr %1, i32 %ring_type.029, i32 1
  %4 = ptrtoint ptr %max_rings to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %max_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp1027.not = icmp eq i16 %5, 0
  br i1 %cmp1027.not, label %for.cond9.preheader.cleanup_crit_edge, label %for.cond9.preheader.for.body12_crit_edge

for.cond9.preheader.for.body12_crit_edge:         ; preds = %for.cond9.preheader
  br label %for.body12

for.cond9.preheader.cleanup_crit_edge:            ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.cond9.preheader.for.body12_crit_edge
  %ring_num.028 = phi i32 [ %inc, %for.body12.for.body12_crit_edge ], [ 0, %for.cond9.preheader.for.body12_crit_edge ]
  %call = tail call i32 @ath11k_hal_srng_update_shadow_config(ptr noundef %ab, i32 noundef %ring_type.029, i32 noundef %ring_num.028)
  %inc = add nuw nsw i32 %ring_num.028, 1
  %6 = ptrtoint ptr %max_rings to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %max_rings, align 4
  %conv = zext i16 %7 to i32
  %cmp10 = icmp ult i32 %inc, %conv
  br i1 %cmp10, label %for.body12.for.body12_crit_edge, label %for.body12.cleanup_crit_edge

for.body12.cleanup_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body12

cleanup:                                          ; preds = %for.body12.cleanup_crit_edge, %for.cond9.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc14 = add nuw nsw i32 %ring_type.029, 1
  %exitcond.not = icmp eq i32 %inc14, 21
  br i1 %exitcond.not, label %for.end15, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end15:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath11k_hal_srng_get_shadow_config(ptr noundef %ab, ptr nocapture noundef writeonly %cfg, ptr nocapture noundef writeonly %len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_shadow_reg_configured = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 7
  %0 = ptrtoint ptr %num_shadow_reg_configured to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_shadow_reg_configured, align 8
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %len, align 4
  %shadow_reg_addr = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 6
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %shadow_reg_addr, ptr %cfg, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_hal_srng_shadow_update_hp_tp(ptr noundef %ab, ptr noundef %srng) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !42

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1164, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %ring_dir = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 17
  %1 = ptrtoint ptr %ring_dir to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ring_dir, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp24 = icmp eq i32 %2, 0
  br i1 %cmp24, label %land.lhs.true, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end
  %u = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18
  %tp_addr = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 18, i32 0, i32 2
  %3 = ptrtoint ptr %tp_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tp_addr, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %7 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %u, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp26.not = icmp eq i32 %6, %8
  br i1 %cmp26.not, label %land.lhs.true.if.end28_crit_edge, label %if.then27

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ath11k_hal_srng_access_end(ptr noundef %ab, ptr noundef %srng)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %land.lhs.true.if.end28_crit_edge, %if.end.if.end28_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_hal_srng_init(ptr noundef %ab) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hal1 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16
  %0 = call ptr @memset(ptr %hal1, i32 0, i32 26320)
  %call.i = tail call ptr @kmemdup(ptr noundef nonnull @hw_srng_config_template, i32 noundef 672, i32 noundef 3264) #6
  %srng_config.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 1
  %1 = ptrtoint ptr %srng_config.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %srng_config.i, align 8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 8
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %hal_reo1_ring_base_lsb.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %hal_reo1_ring_base_lsb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hal_reo1_ring_base_lsb.i, align 4
  %add.i = add i32 %5, 10715136
  %reg_start.i = getelementptr inbounds %struct.hal_srng_config, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %reg_start.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add.i, ptr %reg_start.i, align 4
  %7 = load ptr, ptr %regs.i, align 4
  %hal_reo1_ring_hp.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %7, i32 0, i32 29
  %8 = ptrtoint ptr %hal_reo1_ring_hp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hal_reo1_ring_hp.i, align 4
  %add7.i = add i32 %9, 10715136
  %arrayidx9.i = getelementptr %struct.hal_srng_config, ptr %call.i, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add7.i, ptr %arrayidx9.i, align 4
  %11 = load ptr, ptr %regs.i, align 4
  %hal_reo2_ring_base_lsb.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %11, i32 0, i32 24
  %12 = ptrtoint ptr %hal_reo2_ring_base_lsb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hal_reo2_ring_base_lsb.i, align 4
  %hal_reo1_ring_base_lsb14.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %11, i32 0, i32 14
  %14 = ptrtoint ptr %hal_reo1_ring_base_lsb14.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hal_reo1_ring_base_lsb14.i, align 4
  %sub.i = sub i32 %13, %15
  %conv.i = trunc i32 %sub.i to i16
  %reg_size.i = getelementptr inbounds %struct.hal_srng_config, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %reg_size.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %reg_size.i, align 4
  %17 = load ptr, ptr %regs.i, align 4
  %hal_reo2_ring_hp.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %17, i32 0, i32 31
  %18 = ptrtoint ptr %hal_reo2_ring_hp.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hal_reo2_ring_hp.i, align 4
  %hal_reo1_ring_hp20.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %17, i32 0, i32 29
  %20 = ptrtoint ptr %hal_reo1_ring_hp20.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hal_reo1_ring_hp20.i, align 4
  %sub21.i = sub i32 %19, %21
  %conv22.i = trunc i32 %sub21.i to i16
  %arrayidx24.i = getelementptr %struct.hal_srng_config, ptr %call.i, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv22.i, ptr %arrayidx24.i, align 2
  %23 = ptrtoint ptr %srng_config.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %srng_config.i, align 8
  %25 = load ptr, ptr %regs.i, align 4
  %hal_reo_tcl_ring_base_lsb.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %25, i32 0, i32 32
  %26 = ptrtoint ptr %hal_reo_tcl_ring_base_lsb.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hal_reo_tcl_ring_base_lsb.i, align 4
  %add29.i = add i32 %27, 10715136
  %reg_start30.i = getelementptr %struct.hal_srng_config, ptr %24, i32 1, i32 3
  %28 = ptrtoint ptr %reg_start30.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add29.i, ptr %reg_start30.i, align 4
  %29 = load ptr, ptr %regs.i, align 4
  %hal_reo_tcl_ring_hp.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %29, i32 0, i32 33
  %30 = ptrtoint ptr %hal_reo_tcl_ring_hp.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hal_reo_tcl_ring_hp.i, align 4
  %add34.i = add i32 %31, 10715136
  %arrayidx36.i = getelementptr %struct.hal_srng_config, ptr %24, i32 1, i32 3, i32 1
  %32 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add34.i, ptr %arrayidx36.i, align 4
  %33 = load ptr, ptr %srng_config.i, align 8
  %reg_start39.i = getelementptr %struct.hal_srng_config, ptr %33, i32 2, i32 3
  %34 = ptrtoint ptr %reg_start39.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 10715628, ptr %reg_start39.i, align 4
  %arrayidx42.i = getelementptr %struct.hal_srng_config, ptr %33, i32 2, i32 3, i32 1
  %35 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 10727464, ptr %arrayidx42.i, align 4
  %36 = load ptr, ptr %srng_config.i, align 8
  %reg_start45.i = getelementptr %struct.hal_srng_config, ptr %36, i32 3, i32 3
  %37 = ptrtoint ptr %reg_start45.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 10715540, ptr %reg_start45.i, align 4
  %arrayidx48.i = getelementptr %struct.hal_srng_config, ptr %36, i32 3, i32 3, i32 1
  %38 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 10727456, ptr %arrayidx48.i, align 4
  %39 = load ptr, ptr %srng_config.i, align 8
  %40 = load ptr, ptr %regs.i, align 4
  %hal_reo_status_ring_base_lsb.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %40, i32 0, i32 34
  %41 = ptrtoint ptr %hal_reo_status_ring_base_lsb.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hal_reo_status_ring_base_lsb.i, align 4
  %add53.i = add i32 %42, 10715136
  %reg_start54.i = getelementptr %struct.hal_srng_config, ptr %39, i32 4, i32 3
  %43 = ptrtoint ptr %reg_start54.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add53.i, ptr %reg_start54.i, align 4
  %44 = load ptr, ptr %regs.i, align 4
  %hal_reo_status_hp.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %44, i32 0, i32 35
  %45 = ptrtoint ptr %hal_reo_status_hp.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hal_reo_status_hp.i, align 4
  %add58.i = add i32 %46, 10715136
  %arrayidx60.i = getelementptr %struct.hal_srng_config, ptr %39, i32 4, i32 3, i32 1
  %47 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add58.i, ptr %arrayidx60.i, align 4
  %48 = load ptr, ptr %srng_config.i, align 8
  %49 = load ptr, ptr %regs.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %add65.i = add i32 %51, 10764288
  %reg_start66.i = getelementptr %struct.hal_srng_config, ptr %48, i32 5, i32 3
  %52 = ptrtoint ptr %reg_start66.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add65.i, ptr %reg_start66.i, align 4
  %arrayidx69.i = getelementptr %struct.hal_srng_config, ptr %48, i32 5, i32 3, i32 1
  %53 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 10772480, ptr %arrayidx69.i, align 4
  %54 = load ptr, ptr %regs.i, align 4
  %hal_tcl2_ring_base_lsb.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %54, i32 0, i32 11
  %55 = ptrtoint ptr %hal_tcl2_ring_base_lsb.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hal_tcl2_ring_base_lsb.i, align 4
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %54, align 4
  %sub75.i = sub i32 %56, %58
  %conv76.i = trunc i32 %sub75.i to i16
  %reg_size77.i = getelementptr %struct.hal_srng_config, ptr %48, i32 5, i32 4
  %59 = ptrtoint ptr %reg_size77.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv76.i, ptr %reg_size77.i, align 4
  %arrayidx80.i = getelementptr %struct.hal_srng_config, ptr %48, i32 5, i32 4, i32 1
  %60 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 8, ptr %arrayidx80.i, align 2
  %61 = load ptr, ptr %srng_config.i, align 8
  %62 = load ptr, ptr %regs.i, align 4
  %hal_tcl_ring_base_lsb.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %62, i32 0, i32 12
  %63 = ptrtoint ptr %hal_tcl_ring_base_lsb.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hal_tcl_ring_base_lsb.i, align 4
  %add85.i = add i32 %64, 10764288
  %reg_start86.i = getelementptr %struct.hal_srng_config, ptr %61, i32 6, i32 3
  %65 = ptrtoint ptr %reg_start86.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add85.i, ptr %reg_start86.i, align 4
  %arrayidx89.i = getelementptr %struct.hal_srng_config, ptr %61, i32 6, i32 3, i32 1
  %66 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 10772504, ptr %arrayidx89.i, align 4
  %67 = load ptr, ptr %srng_config.i, align 8
  %68 = load ptr, ptr %regs.i, align 4
  %hal_tcl_status_ring_base_lsb.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %68, i32 0, i32 13
  %69 = ptrtoint ptr %hal_tcl_status_ring_base_lsb.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %hal_tcl_status_ring_base_lsb.i, align 4
  %add94.i = add i32 %70, 10764288
  %reg_start95.i = getelementptr %struct.hal_srng_config, ptr %67, i32 7, i32 3
  %71 = ptrtoint ptr %reg_start95.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add94.i, ptr %reg_start95.i, align 4
  %arrayidx98.i = getelementptr %struct.hal_srng_config, ptr %67, i32 7, i32 3, i32 1
  %72 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 10772528, ptr %arrayidx98.i, align 4
  %73 = load ptr, ptr %srng_config.i, align 8
  %74 = load ptr, ptr %regs.i, align 4
  %hal_seq_wcss_umac_ce0_src_reg.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %74, i32 0, i32 36
  %75 = ptrtoint ptr %hal_seq_wcss_umac_ce0_src_reg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %hal_seq_wcss_umac_ce0_src_reg.i, align 4
  %reg_start104.i = getelementptr %struct.hal_srng_config, ptr %73, i32 8, i32 3
  %77 = ptrtoint ptr %reg_start104.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %reg_start104.i, align 4
  %78 = load ptr, ptr %regs.i, align 4
  %hal_seq_wcss_umac_ce0_src_reg108.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %78, i32 0, i32 36
  %79 = ptrtoint ptr %hal_seq_wcss_umac_ce0_src_reg108.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %hal_seq_wcss_umac_ce0_src_reg108.i, align 4
  %add109.i = add i32 %80, 1024
  %arrayidx111.i = getelementptr %struct.hal_srng_config, ptr %73, i32 8, i32 3, i32 1
  %81 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add109.i, ptr %arrayidx111.i, align 4
  %82 = load ptr, ptr %regs.i, align 4
  %hal_seq_wcss_umac_ce1_src_reg.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %82, i32 0, i32 38
  %83 = ptrtoint ptr %hal_seq_wcss_umac_ce1_src_reg.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %hal_seq_wcss_umac_ce1_src_reg.i, align 4
  %hal_seq_wcss_umac_ce0_src_reg116.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %82, i32 0, i32 36
  %85 = ptrtoint ptr %hal_seq_wcss_umac_ce0_src_reg116.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %hal_seq_wcss_umac_ce0_src_reg116.i, align 4
  %sub117.i = sub i32 %84, %86
  %conv118.i = trunc i32 %sub117.i to i16
  %reg_size119.i = getelementptr %struct.hal_srng_config, ptr %73, i32 8, i32 4
  %87 = ptrtoint ptr %reg_size119.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv118.i, ptr %reg_size119.i, align 4
  %88 = load ptr, ptr %regs.i, align 4
  %hal_seq_wcss_umac_ce1_src_reg123.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %88, i32 0, i32 38
  %89 = ptrtoint ptr %hal_seq_wcss_umac_ce1_src_reg123.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %hal_seq_wcss_umac_ce1_src_reg123.i, align 4
  %hal_seq_wcss_umac_ce0_src_reg126.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %88, i32 0, i32 36
  %91 = ptrtoint ptr %hal_seq_wcss_umac_ce0_src_reg126.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %hal_seq_wcss_umac_ce0_src_reg126.i, align 4
  %sub127.i = sub i32 %90, %92
  %conv128.i = trunc i32 %sub127.i to i16
  %arrayidx130.i = getelementptr %struct.hal_srng_config, ptr %73, i32 8, i32 4, i32 1
  %93 = ptrtoint ptr %arrayidx130.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv128.i, ptr %arrayidx130.i, align 2
  %94 = load ptr, ptr %srng_config.i, align 8
  %95 = load ptr, ptr %regs.i, align 4
  %hal_seq_wcss_umac_ce0_dst_reg.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %95, i32 0, i32 37
  %96 = ptrtoint ptr %hal_seq_wcss_umac_ce0_dst_reg.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %hal_seq_wcss_umac_ce0_dst_reg.i, align 4
  %reg_start136.i = getelementptr %struct.hal_srng_config, ptr %94, i32 9, i32 3
  %98 = ptrtoint ptr %reg_start136.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %reg_start136.i, align 4
  %99 = load ptr, ptr %regs.i, align 4
  %hal_seq_wcss_umac_ce0_dst_reg140.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %99, i32 0, i32 37
  %100 = ptrtoint ptr %hal_seq_wcss_umac_ce0_dst_reg140.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %hal_seq_wcss_umac_ce0_dst_reg140.i, align 4
  %add141.i = add i32 %101, 1024
  %arrayidx143.i = getelementptr %struct.hal_srng_config, ptr %94, i32 9, i32 3, i32 1
  %102 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %add141.i, ptr %arrayidx143.i, align 4
  %103 = load ptr, ptr %regs.i, align 4
  %hal_seq_wcss_umac_ce1_dst_reg.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %103, i32 0, i32 39
  %104 = ptrtoint ptr %hal_seq_wcss_umac_ce1_dst_reg.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %hal_seq_wcss_umac_ce1_dst_reg.i, align 4
  %hal_seq_wcss_umac_ce0_dst_reg148.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %103, i32 0, i32 37
  %106 = ptrtoint ptr %hal_seq_wcss_umac_ce0_dst_reg148.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %hal_seq_wcss_umac_ce0_dst_reg148.i, align 4
  %sub149.i = sub i32 %105, %107
  %conv150.i = trunc i32 %sub149.i to i16
  %reg_size151.i = getelementptr %struct.hal_srng_config, ptr %94, i32 9, i32 4
  %108 = ptrtoint ptr %reg_size151.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv150.i, ptr %reg_size151.i, align 4
  %109 = load ptr, ptr %regs.i, align 4
  %hal_seq_wcss_umac_ce1_dst_reg155.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %109, i32 0, i32 39
  %110 = ptrtoint ptr %hal_seq_wcss_umac_ce1_dst_reg155.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %hal_seq_wcss_umac_ce1_dst_reg155.i, align 4
  %hal_seq_wcss_umac_ce0_dst_reg158.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %109, i32 0, i32 37
  %112 = ptrtoint ptr %hal_seq_wcss_umac_ce0_dst_reg158.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %hal_seq_wcss_umac_ce0_dst_reg158.i, align 4
  %sub159.i = sub i32 %111, %113
  %conv160.i = trunc i32 %sub159.i to i16
  %arrayidx162.i = getelementptr %struct.hal_srng_config, ptr %94, i32 9, i32 4, i32 1
  %114 = ptrtoint ptr %arrayidx162.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv160.i, ptr %arrayidx162.i, align 2
  %115 = load ptr, ptr %srng_config.i, align 8
  %116 = load ptr, ptr %regs.i, align 4
  %hal_seq_wcss_umac_ce0_dst_reg167.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %116, i32 0, i32 37
  %117 = ptrtoint ptr %hal_seq_wcss_umac_ce0_dst_reg167.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %hal_seq_wcss_umac_ce0_dst_reg167.i, align 4
  %add168.i = add i32 %118, 88
  %reg_start169.i = getelementptr %struct.hal_srng_config, ptr %115, i32 10, i32 3
  %119 = ptrtoint ptr %reg_start169.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %add168.i, ptr %reg_start169.i, align 4
  %120 = load ptr, ptr %regs.i, align 4
  %hal_seq_wcss_umac_ce0_dst_reg173.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %120, i32 0, i32 37
  %121 = ptrtoint ptr %hal_seq_wcss_umac_ce0_dst_reg173.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %hal_seq_wcss_umac_ce0_dst_reg173.i, align 4
  %add174.i = add i32 %122, 1032
  %arrayidx176.i = getelementptr %struct.hal_srng_config, ptr %115, i32 10, i32 3, i32 1
  %123 = ptrtoint ptr %arrayidx176.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %add174.i, ptr %arrayidx176.i, align 4
  %124 = load ptr, ptr %regs.i, align 4
  %hal_seq_wcss_umac_ce1_dst_reg179.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %124, i32 0, i32 39
  %125 = ptrtoint ptr %hal_seq_wcss_umac_ce1_dst_reg179.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %hal_seq_wcss_umac_ce1_dst_reg179.i, align 4
  %hal_seq_wcss_umac_ce0_dst_reg182.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %124, i32 0, i32 37
  %127 = ptrtoint ptr %hal_seq_wcss_umac_ce0_dst_reg182.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %hal_seq_wcss_umac_ce0_dst_reg182.i, align 4
  %sub183.i = sub i32 %126, %128
  %conv184.i = trunc i32 %sub183.i to i16
  %reg_size185.i = getelementptr %struct.hal_srng_config, ptr %115, i32 10, i32 4
  %129 = ptrtoint ptr %reg_size185.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv184.i, ptr %reg_size185.i, align 4
  %130 = load ptr, ptr %regs.i, align 4
  %hal_seq_wcss_umac_ce1_dst_reg189.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %130, i32 0, i32 39
  %131 = ptrtoint ptr %hal_seq_wcss_umac_ce1_dst_reg189.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %hal_seq_wcss_umac_ce1_dst_reg189.i, align 4
  %hal_seq_wcss_umac_ce0_dst_reg192.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %130, i32 0, i32 37
  %133 = ptrtoint ptr %hal_seq_wcss_umac_ce0_dst_reg192.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %hal_seq_wcss_umac_ce0_dst_reg192.i, align 4
  %sub193.i = sub i32 %132, %134
  %conv194.i = trunc i32 %sub193.i to i16
  %arrayidx196.i = getelementptr %struct.hal_srng_config, ptr %115, i32 10, i32 4, i32 1
  %135 = ptrtoint ptr %arrayidx196.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv194.i, ptr %arrayidx196.i, align 2
  %136 = load ptr, ptr %srng_config.i, align 8
  %137 = load ptr, ptr %regs.i, align 4
  %hal_wbm_idle_link_ring_base_lsb.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %137, i32 0, i32 40
  %138 = ptrtoint ptr %hal_wbm_idle_link_ring_base_lsb.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %hal_wbm_idle_link_ring_base_lsb.i, align 4
  %add201.i = add i32 %139, 10698752
  %reg_start202.i = getelementptr %struct.hal_srng_config, ptr %136, i32 11, i32 3
  %140 = ptrtoint ptr %reg_start202.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %add201.i, ptr %reg_start202.i, align 4
  %arrayidx205.i = getelementptr %struct.hal_srng_config, ptr %136, i32 11, i32 3, i32 1
  %141 = ptrtoint ptr %arrayidx205.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 10711216, ptr %arrayidx205.i, align 4
  %142 = load ptr, ptr %srng_config.i, align 8
  %143 = load ptr, ptr %regs.i, align 4
  %hal_wbm_release_ring_base_lsb.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %143, i32 0, i32 42
  %144 = ptrtoint ptr %hal_wbm_release_ring_base_lsb.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %hal_wbm_release_ring_base_lsb.i, align 4
  %add210.i = add i32 %145, 10698752
  %reg_start211.i = getelementptr %struct.hal_srng_config, ptr %142, i32 12, i32 3
  %146 = ptrtoint ptr %reg_start211.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %add210.i, ptr %reg_start211.i, align 4
  %arrayidx214.i = getelementptr %struct.hal_srng_config, ptr %142, i32 12, i32 3, i32 1
  %147 = ptrtoint ptr %arrayidx214.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 10711064, ptr %arrayidx214.i, align 4
  %148 = load ptr, ptr %srng_config.i, align 8
  %149 = load ptr, ptr %regs.i, align 4
  %hal_wbm0_release_ring_base_lsb.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %149, i32 0, i32 43
  %150 = ptrtoint ptr %hal_wbm0_release_ring_base_lsb.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %hal_wbm0_release_ring_base_lsb.i, align 4
  %add219.i = add i32 %151, 10698752
  %reg_start220.i = getelementptr %struct.hal_srng_config, ptr %148, i32 13, i32 3
  %152 = ptrtoint ptr %reg_start220.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %add219.i, ptr %reg_start220.i, align 4
  %arrayidx223.i = getelementptr %struct.hal_srng_config, ptr %148, i32 13, i32 3, i32 1
  %153 = ptrtoint ptr %arrayidx223.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 10711232, ptr %arrayidx223.i, align 4
  %154 = load ptr, ptr %regs.i, align 4
  %hal_wbm1_release_ring_base_lsb.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %154, i32 0, i32 44
  %155 = ptrtoint ptr %hal_wbm1_release_ring_base_lsb.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %hal_wbm1_release_ring_base_lsb.i, align 4
  %hal_wbm0_release_ring_base_lsb228.i = getelementptr inbounds %struct.ath11k_hw_regs, ptr %154, i32 0, i32 43
  %157 = ptrtoint ptr %hal_wbm0_release_ring_base_lsb228.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %hal_wbm0_release_ring_base_lsb228.i, align 4
  %sub229.i = sub i32 %156, %158
  %conv230.i = trunc i32 %sub229.i to i16
  %reg_size231.i = getelementptr %struct.hal_srng_config, ptr %148, i32 13, i32 4
  %159 = ptrtoint ptr %reg_size231.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %conv230.i, ptr %reg_size231.i, align 4
  %arrayidx234.i = getelementptr %struct.hal_srng_config, ptr %148, i32 13, i32 4, i32 1
  %160 = ptrtoint ptr %arrayidx234.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 8, ptr %arrayidx234.i, align 2
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %161 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev.i, align 8
  %rdp.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 2
  %paddr.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 2, i32 1
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %162, i32 noundef 688, ptr noundef %paddr.i, i32 noundef 3264, i32 noundef 0) #6
  %163 = ptrtoint ptr %rdp.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call.i.i, ptr %rdp.i, align 4
  %tobool.not.i19.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i19.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %164 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dev.i, align 8
  %wrp.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 3
  %paddr.i21 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 3, i32 1
  %call.i.i22 = tail call ptr @dma_alloc_attrs(ptr noundef %165, i32 noundef 180, ptr noundef %paddr.i21, i32 noundef 3264, i32 noundef 0) #6
  %166 = ptrtoint ptr %wrp.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %call.i.i22, ptr %wrp.i, align 4
  %tobool.not.i23.not = icmp eq ptr %call.i.i22, null
  br i1 %tobool.not.i23.not, label %err_free_cont_rdp, label %if.end9

if.end9:                                          ; preds = %if.end5
  %srng_key.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end9
  %ring_id.04.i = phi i32 [ 0, %if.end9 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.lock_class_key, ptr %srng_key.i, i32 %ring_id.04.i
  tail call void @lockdep_register_key(ptr noundef %add.ptr.i) #6
  %inc.i = add nuw nsw i32 %ring_id.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 172
  br i1 %exitcond.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_free_cont_rdp:                                ; preds = %if.end5
  %167 = ptrtoint ptr %rdp.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %rdp.i, align 4
  %tobool.not.i26 = icmp eq ptr %168, null
  br i1 %tobool.not.i26, label %err_free_cont_rdp.cleanup_crit_edge, label %if.end.i29

err_free_cont_rdp.cleanup_crit_edge:              ; preds = %err_free_cont_rdp
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i29:                                       ; preds = %err_free_cont_rdp
  call void @__sanitizer_cov_trace_pc() #8
  %169 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev.i, align 8
  %171 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %paddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %170, i32 noundef 688, ptr noundef nonnull %168, i32 noundef %172, i32 noundef 0) #6
  %173 = ptrtoint ptr %rdp.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr null, ptr %rdp.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i29, %err_free_cont_rdp.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -12, %err_free_cont_rdp.cleanup_crit_edge ], [ -12, %if.end.i29 ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_hal_srng_deinit(ptr noundef %ab) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %srng_key.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %ring_id.04.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.lock_class_key, ptr %srng_key.i, i32 %ring_id.04.i
  tail call void @lockdep_unregister_key(ptr noundef %add.ptr.i) #6
  %inc.i = add nuw nsw i32 %ring_id.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 172
  br i1 %exitcond.not.i, label %ath11k_hal_unregister_srng_key.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ath11k_hal_unregister_srng_key.exit:              ; preds = %for.body.i
  %rdp.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 2
  %0 = ptrtoint ptr %rdp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdp.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %ath11k_hal_unregister_srng_key.exit.ath11k_hal_free_cont_rdp.exit_crit_edge, label %if.end.i

ath11k_hal_unregister_srng_key.exit.ath11k_hal_free_cont_rdp.exit_crit_edge: ; preds = %ath11k_hal_unregister_srng_key.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_hal_free_cont_rdp.exit

if.end.i:                                         ; preds = %ath11k_hal_unregister_srng_key.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 8
  %paddr.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 2, i32 1
  %4 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %paddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef 688, ptr noundef nonnull %1, i32 noundef %5, i32 noundef 0) #6
  %6 = ptrtoint ptr %rdp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %rdp.i, align 4
  br label %ath11k_hal_free_cont_rdp.exit

ath11k_hal_free_cont_rdp.exit:                    ; preds = %if.end.i, %ath11k_hal_unregister_srng_key.exit.ath11k_hal_free_cont_rdp.exit_crit_edge
  %wrp.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 3
  %7 = ptrtoint ptr %wrp.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wrp.i, align 4
  %tobool.not.i5 = icmp eq ptr %8, null
  br i1 %tobool.not.i5, label %ath11k_hal_free_cont_rdp.exit.ath11k_hal_free_cont_wrp.exit_crit_edge, label %if.end.i8

ath11k_hal_free_cont_rdp.exit.ath11k_hal_free_cont_wrp.exit_crit_edge: ; preds = %ath11k_hal_free_cont_rdp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath11k_hal_free_cont_wrp.exit

if.end.i8:                                        ; preds = %ath11k_hal_free_cont_rdp.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i6 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %9 = ptrtoint ptr %dev.i6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i6, align 8
  %paddr.i7 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 3, i32 1
  %11 = ptrtoint ptr %paddr.i7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %paddr.i7, align 4
  tail call void @dma_free_attrs(ptr noundef %10, i32 noundef 180, ptr noundef nonnull %8, i32 noundef %12, i32 noundef 0) #6
  %13 = ptrtoint ptr %wrp.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %wrp.i, align 4
  br label %ath11k_hal_free_cont_wrp.exit

ath11k_hal_free_cont_wrp.exit:                    ; preds = %if.end.i8, %ath11k_hal_free_cont_rdp.exit.ath11k_hal_free_cont_wrp.exit_crit_edge
  %srng_config = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 1
  %14 = ptrtoint ptr %srng_config to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %srng_config, align 8
  tail call void @kfree(ptr noundef %15) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_hal_dump_srng_stats(ptr noundef %ab) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.6) #6
  %ce_count = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 11
  %0 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ce_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp96.not = icmp eq i32 %1, 0
  br i1 %cmp96.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ce = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.097 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = tail call i32 @ath11k_ce_get_attr_flags(ptr noundef %ab, i32 noundef %i.097) #6
  %and = and i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %pipe_num = getelementptr [12 x %struct.ath11k_ce_pipe], ptr %ce, i32 0, i32 %i.097, i32 1
  %2 = ptrtoint ptr %pipe_num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pipe_num, align 4
  %conv = zext i16 %3 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %timestamp = getelementptr [12 x %struct.ath11k_ce_pipe], ptr %ce, i32 0, i32 %i.097, i32 11
  %5 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %timestamp, align 8
  %7 = trunc i64 %6 to i32
  %conv3 = sub i32 %4, %7
  %call4 = tail call i32 @jiffies_to_msecs(i32 noundef %conv3) #6
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.7, i32 noundef %i.097, i32 noundef %conv, i32 noundef %call4) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.097, 1
  %8 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ce_count, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.8) #6
  %grp_id = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 0, i32 3
  %10 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %grp_id, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %timestamp11 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 0, i32 4
  %13 = ptrtoint ptr %timestamp11 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %timestamp11, align 16
  %15 = trunc i64 %14 to i32
  %conv13 = sub i32 %12, %15
  %call14 = tail call i32 @jiffies_to_msecs(i32 noundef %conv13) #6
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.9, i32 noundef %11, i32 noundef %call14) #6
  %grp_id.1 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 1, i32 3
  %16 = ptrtoint ptr %grp_id.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %grp_id.1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %timestamp11.1 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 1, i32 4
  %19 = ptrtoint ptr %timestamp11.1 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %timestamp11.1, align 16
  %21 = trunc i64 %20 to i32
  %conv13.1 = sub i32 %18, %21
  %call14.1 = tail call i32 @jiffies_to_msecs(i32 noundef %conv13.1) #6
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.9, i32 noundef %17, i32 noundef %call14.1) #6
  %grp_id.2 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 2, i32 3
  %22 = ptrtoint ptr %grp_id.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %grp_id.2, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %timestamp11.2 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 2, i32 4
  %25 = ptrtoint ptr %timestamp11.2 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %timestamp11.2, align 16
  %27 = trunc i64 %26 to i32
  %conv13.2 = sub i32 %24, %27
  %call14.2 = tail call i32 @jiffies_to_msecs(i32 noundef %conv13.2) #6
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.9, i32 noundef %23, i32 noundef %call14.2) #6
  %grp_id.3 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 3, i32 3
  %28 = ptrtoint ptr %grp_id.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %grp_id.3, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %timestamp11.3 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 3, i32 4
  %31 = ptrtoint ptr %timestamp11.3 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %timestamp11.3, align 16
  %33 = trunc i64 %32 to i32
  %conv13.3 = sub i32 %30, %33
  %call14.3 = tail call i32 @jiffies_to_msecs(i32 noundef %conv13.3) #6
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.9, i32 noundef %29, i32 noundef %call14.3) #6
  %grp_id.4 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 4, i32 3
  %34 = ptrtoint ptr %grp_id.4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %grp_id.4, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %timestamp11.4 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 4, i32 4
  %37 = ptrtoint ptr %timestamp11.4 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %timestamp11.4, align 16
  %39 = trunc i64 %38 to i32
  %conv13.4 = sub i32 %36, %39
  %call14.4 = tail call i32 @jiffies_to_msecs(i32 noundef %conv13.4) #6
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.9, i32 noundef %35, i32 noundef %call14.4) #6
  %grp_id.5 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 5, i32 3
  %40 = ptrtoint ptr %grp_id.5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %grp_id.5, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %timestamp11.5 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 5, i32 4
  %43 = ptrtoint ptr %timestamp11.5 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %timestamp11.5, align 16
  %45 = trunc i64 %44 to i32
  %conv13.5 = sub i32 %42, %45
  %call14.5 = tail call i32 @jiffies_to_msecs(i32 noundef %conv13.5) #6
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.9, i32 noundef %41, i32 noundef %call14.5) #6
  %grp_id.6 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 6, i32 3
  %46 = ptrtoint ptr %grp_id.6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %grp_id.6, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %timestamp11.6 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 6, i32 4
  %49 = ptrtoint ptr %timestamp11.6 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %timestamp11.6, align 16
  %51 = trunc i64 %50 to i32
  %conv13.6 = sub i32 %48, %51
  %call14.6 = tail call i32 @jiffies_to_msecs(i32 noundef %conv13.6) #6
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.9, i32 noundef %47, i32 noundef %call14.6) #6
  %grp_id.7 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 7, i32 3
  %52 = ptrtoint ptr %grp_id.7 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %grp_id.7, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %timestamp11.7 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 7, i32 4
  %55 = ptrtoint ptr %timestamp11.7 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %timestamp11.7, align 16
  %57 = trunc i64 %56 to i32
  %conv13.7 = sub i32 %54, %57
  %call14.7 = tail call i32 @jiffies_to_msecs(i32 noundef %conv13.7) #6
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.9, i32 noundef %53, i32 noundef %call14.7) #6
  %grp_id.8 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 8, i32 3
  %58 = ptrtoint ptr %grp_id.8 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %grp_id.8, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %timestamp11.8 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 8, i32 4
  %61 = ptrtoint ptr %timestamp11.8 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %timestamp11.8, align 16
  %63 = trunc i64 %62 to i32
  %conv13.8 = sub i32 %60, %63
  %call14.8 = tail call i32 @jiffies_to_msecs(i32 noundef %conv13.8) #6
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.9, i32 noundef %59, i32 noundef %call14.8) #6
  %grp_id.9 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 9, i32 3
  %64 = ptrtoint ptr %grp_id.9 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %grp_id.9, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %66 = load volatile i32, ptr @jiffies, align 128
  %timestamp11.9 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 9, i32 4
  %67 = ptrtoint ptr %timestamp11.9 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %timestamp11.9, align 16
  %69 = trunc i64 %68 to i32
  %conv13.9 = sub i32 %66, %69
  %call14.9 = tail call i32 @jiffies_to_msecs(i32 noundef %conv13.9) #6
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.9, i32 noundef %65, i32 noundef %call14.9) #6
  %grp_id.10 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 10, i32 3
  %70 = ptrtoint ptr %grp_id.10 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %grp_id.10, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  %timestamp11.10 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 31, i32 10, i32 4
  %73 = ptrtoint ptr %timestamp11.10 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %timestamp11.10, align 16
  %75 = trunc i64 %74 to i32
  %conv13.10 = sub i32 %72, %75
  %call14.10 = tail call i32 @jiffies_to_msecs(i32 noundef %conv13.10) #6
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.9, i32 noundef %71, i32 noundef %call14.10) #6
  %hal = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16
  br label %for.body21

for.body21:                                       ; preds = %for.inc56.for.body21_crit_edge, %for.end
  %i.2100 = phi i32 [ 0, %for.end ], [ %inc57, %for.inc56.for.body21_crit_edge ]
  %arrayidx22 = getelementptr [172 x %struct.hal_srng], ptr %hal, i32 0, i32 %i.2100
  %initialized = getelementptr [172 x %struct.hal_srng], ptr %hal, i32 0, i32 %i.2100, i32 1
  %76 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %initialized, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool23.not = icmp eq i8 %77, 0
  br i1 %tobool23.not, label %for.body21.for.inc56_crit_edge, label %if.end25

for.body21.for.inc56_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc56

if.end25:                                         ; preds = %for.body21
  %ring_dir = getelementptr [172 x %struct.hal_srng], ptr %hal, i32 0, i32 %i.2100, i32 17
  %78 = ptrtoint ptr %ring_dir to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ring_dir, align 8
  %80 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values)
  switch i32 %79, label %if.end25.for.inc56_crit_edge [
    i32 0, label %if.then28
    i32 1, label %if.then42
  ]

if.end25.for.inc56_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc56

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx22, align 8
  %conv29 = zext i8 %82 to i32
  %u = getelementptr [172 x %struct.hal_srng], ptr %hal, i32 0, i32 %i.2100, i32 18
  %83 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %u, align 4
  %reap_hp = getelementptr inbounds %struct.anon.106, ptr %u, i32 0, i32 1
  %85 = ptrtoint ptr %reap_hp to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %reap_hp, align 4
  %tp_addr = getelementptr inbounds %struct.anon.106, ptr %u, i32 0, i32 2
  %87 = ptrtoint ptr %tp_addr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tp_addr, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  %cached_tp = getelementptr inbounds %struct.anon.106, ptr %u, i32 0, i32 3
  %91 = ptrtoint ptr %cached_tp to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cached_tp, align 4
  %last_tp = getelementptr inbounds %struct.anon.106, ptr %u, i32 0, i32 6
  %93 = ptrtoint ptr %last_tp to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %last_tp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %95 = load volatile i32, ptr @jiffies, align 128
  %timestamp35 = getelementptr [172 x %struct.hal_srng], ptr %hal, i32 0, i32 %i.2100, i32 16
  %96 = ptrtoint ptr %timestamp35 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %timestamp35, align 8
  %98 = trunc i64 %97 to i32
  %conv37 = sub i32 %95, %98
  %call38 = tail call i32 @jiffies_to_msecs(i32 noundef %conv37) #6
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.10, i32 noundef %conv29, i32 noundef %84, i32 noundef %86, i32 noundef %90, i32 noundef %92, i32 noundef %94, i32 noundef %call38) #6
  br label %for.inc56

if.then42:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %99 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx22, align 8
  %conv44 = zext i8 %100 to i32
  %u45 = getelementptr [172 x %struct.hal_srng], ptr %hal, i32 0, i32 %i.2100, i32 18
  %101 = ptrtoint ptr %u45 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %u45, align 4
  %hp_addr = getelementptr inbounds %struct.anon.105, ptr %u45, i32 0, i32 1
  %103 = ptrtoint ptr %hp_addr to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hp_addr, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %104, align 4
  %cached_hp = getelementptr inbounds %struct.anon.105, ptr %u45, i32 0, i32 2
  %107 = ptrtoint ptr %cached_hp to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cached_hp, align 4
  %last_hp = getelementptr inbounds %struct.anon.105, ptr %u45, i32 0, i32 6
  %109 = ptrtoint ptr %last_hp to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %last_hp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %111 = load volatile i32, ptr @jiffies, align 128
  %timestamp50 = getelementptr [172 x %struct.hal_srng], ptr %hal, i32 0, i32 %i.2100, i32 16
  %112 = ptrtoint ptr %timestamp50 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %timestamp50, align 8
  %114 = trunc i64 %113 to i32
  %conv52 = sub i32 %111, %114
  %call53 = tail call i32 @jiffies_to_msecs(i32 noundef %conv52) #6
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.11, i32 noundef %conv44, i32 noundef %102, i32 noundef %106, i32 noundef %108, i32 noundef %110, i32 noundef %call53) #6
  br label %for.inc56

for.inc56:                                        ; preds = %if.then42, %if.then28, %if.end25.for.inc56_crit_edge, %for.body21.for.inc56_crit_edge
  %inc57 = add nuw nsw i32 %i.2100, 1
  %exitcond.not = icmp eq i32 %inc57, 172
  br i1 %exitcond.not, label %for.end58, label %for.inc56.for.body21_crit_edge

for.inc56.for.body21_crit_edge:                   ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body21

for.end58:                                        ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_ce_get_attr_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_register_key(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_unregister_key(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath11k/hal.c", i32 489, i32 6}
!2 = !{ptr @ath11k_hal_srng_setup.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath11k/hal.c", i32 976, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath11k/hal.c", i32 977, i32 2}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath11k/hal.c", i32 1011, i32 5}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath11k/hal.c", i32 1045, i32 5}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath11k/hal.c", i32 1120, i32 2}
!13 = !{ptr @__ksymtab_ath11k_hal_srng_init, !14, !"__ksymtab_ath11k_hal_srng_init", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath11k/hal.c", i32 1311, i32 1}
!15 = !{ptr @__ksymtab_ath11k_hal_srng_deinit, !16, !"__ksymtab_ath11k_hal_srng_deinit", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath11k/hal.c", i32 1322, i32 1}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath11k/hal.c", i32 1331, i32 17}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath11k/hal.c", i32 1338, i32 18}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath11k/hal.c", i32 1343, i32 17}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath11k/hal.c", i32 1346, i32 18}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath11k/hal.c", i32 1359, i32 8}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath11k/hal.c", i32 1367, i32 8}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath11k/hal.c", i32 471, i32 19}
!31 = !{ptr @hw_srng_config_template, !32, !"hw_srng_config_template", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath11k/hal.c", i32 11, i32 37}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{i64 1047736}
!44 = !{i8 0, i8 2}
!45 = !{i64 2148361861, i64 2148361866, i64 2148361879, i64 2148361923, i64 2148361957, i64 2148361978}
