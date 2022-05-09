; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/fw/dbg.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/fw/dbg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_fw_dump_desc = type { i32, %struct.iwl_fw_error_dump_trigger_desc }
%struct.iwl_fw_error_dump_trigger_desc = type { i32, [0 x i8] }
%struct.iwl_dump_ini_mem_ops = type { ptr, ptr, ptr, ptr }
%struct.iwl_prph_range = type { i32, i32 }
%struct.iwl_trans = type { i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, [52 x i8], [3 x i32], i8, i8, i8, i8, i8, ptr, i32, i8, %struct.wait_queue_head, i8, i32, ptr, ptr, [50 x i8], ptr, %struct.lockdep_map, %struct.iwl_trans_debug, %struct.iwl_self_init_dram, i32, ptr, %struct.iwl_trans_txqs, [0 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_trans_debug = type { i8, i8, ptr, [32 x ptr], ptr, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, [5 x %struct.iwl_fw_ini_allocation_tlv], [5 x %struct.iwl_fw_mon], %struct.iwl_dram_data, i8, i32, i64, [64 x ptr], %struct.list_head, [27 x %struct.iwl_dbg_tlv_time_point_data], %struct.list_head, i32, i32, i8, i32 }
%struct.iwl_fw_ini_allocation_tlv = type { %struct.iwl_fw_ini_header, i32, i32, i32, i32, i32 }
%struct.iwl_fw_ini_header = type { i32, i32 }
%struct.iwl_fw_mon = type { i32, ptr }
%struct.iwl_dram_data = type { i32, ptr, i32 }
%struct.iwl_dbg_tlv_time_point_data = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.iwl_self_init_dram = type { ptr, i32, ptr, i32 }
%struct.iwl_trans_txqs = type { [16 x i32], [16 x i32], [512 x ptr], ptr, i32, i8, i8, i8, ptr, %struct.anon.127, %struct.anon.128, %struct.iwl_dma_ptr }
%struct.anon.127 = type { i8, i8, i32 }
%struct.anon.128 = type { i8, i16, i8 }
%struct.iwl_dma_ptr = type { i32, ptr, i32 }
%struct.iwl_fw_runtime = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [33 x %struct.iwl_fw_paging], i16, i16, i32, %struct.iwl_fwrt_shared_mem_cfg, %struct.anon.130, %struct.anon.135, i8 }
%struct.iwl_fw_paging = type { i32, ptr, i32, i32 }
%struct.iwl_fwrt_shared_mem_cfg = type { i32, i32, [2 x %struct.anon.129], i32, i32, i32, [6 x i32] }
%struct.anon.129 = type { [15 x i32], i32 }
%struct.anon.130 = type { [5 x %struct.iwl_fwrt_wk_data], i32, i8, [27 x i32], ptr, [2 x i32], i32, %struct.iwl_txf_iter_data, %struct.anon.134 }
%struct.iwl_fwrt_wk_data = type { i8, %struct.delayed_work, %struct.iwl_fwrt_dump_data }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.iwl_fwrt_dump_data = type { %union.anon.131 }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { ptr, ptr }
%struct.iwl_txf_iter_data = type { i32, i32, i32, i8 }
%struct.anon.134 = type { i8, i8, i32, i32, i32, i32 }
%struct.anon.135 = type { %struct.delayed_work, i32, i64 }
%struct.anon.133 = type { ptr, i8 }
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl_fw_dbg_trigger_tlv = type { i32, i32, i32, i32, i8, i8, i16, i16, i8, [5 x i8], [0 x i8] }
%struct.__va_list = type { ptr }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.iwl_fw_dbg_conf_tlv = type { i8, i8, i8, i8, %struct.iwl_fw_dbg_conf_hcmd }
%struct.iwl_fw_dbg_conf_hcmd = type { i8, i8, i16, [0 x i8] }
%struct.iwl_fw_ini_trigger_tlv = type <{ %struct.iwl_fw_ini_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, [0 x i32] }>
%struct.iwl_dump_ini_region_data = type { ptr, ptr }
%struct.iwl_fw_dbg_params = type { i32, i32 }
%struct.iwl_fw_ini_dump_entry = type { %struct.list_head, i32, [0 x i8] }
%struct.iwl_ucode_tlv = type { i32, i32, [0 x i8] }
%struct.iwl_fw_ini_region_tlv = type { %struct.iwl_fw_ini_header, i32, i8, i8, i8, i8, [32 x i8], %union.anon.140, [0 x i32] }
%union.anon.140 = type { %struct.iwl_fw_ini_region_fifos }
%struct.iwl_fw_ini_region_fifos = type { [2 x i32], i32, i32 }
%struct.iwl_fw_ini_error_dump_data = type { i8, i8, i8, i8, i32, [0 x i8] }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_dbg_tlv_node = type { %struct.list_head, %struct.iwl_ucode_tlv }
%struct.iwl_fw_ini_dump_cfg_name = type { i32, i32, [64 x i8] }
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.fw_desc = type { ptr, i32, i32 }
%struct.iwl_fw_dbg_mem_seg_tlv = type { i32, i32, i32 }
%struct.iwl_fw_runtime_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.iwl_fw_error_dump_file = type { i32, i32, [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.iwl_fw_error_dump_info = type <{ i32, i32, [64 x i8], [64 x i8], [8 x i8], i8, i32, [2 x i32] }>
%struct.iwl_fw_error_dump_data = type { i32, i32, [0 x i8] }
%struct.iwl_dump_sanitize_ops = type { ptr, ptr, ptr }
%struct.iwl_trans_dump_data = type { i32, [0 x i8] }
%struct.iwl_dbg_suspend_resume_cmd = type { i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.iwl_fw_ini_error_dump_range = type <{ i32, %union.anon.141, [0 x i32] }>
%union.anon.141 = type { i64 }
%struct.iwl_fw_ini_error_dump = type { %struct.iwl_fw_ini_error_dump_header, [0 x i8] }
%struct.iwl_fw_ini_error_dump_header = type { i32, i32, i32, i32, [32 x i8] }
%struct.iwl_fw_ini_fifo_hdr = type { i32, i32 }
%struct.iwl_fw_ini_error_dump_register = type { i32, i32 }
%struct.iwl_ini_rxf_data = type { i32, i32, i32 }
%struct.iwl_fw_ini_err_table_dump = type { %struct.iwl_fw_ini_error_dump_header, i32, [0 x i8] }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%struct.iwl_fw_ini_special_device_memory = type { %struct.iwl_fw_ini_error_dump_header, i16, i16, [0 x i8] }
%struct.iwl_fw_ini_region_special_device_memory = type { i16, i16, i32, i32, i32 }
%struct.iwl_fw_ini_monitor_dump = type { %struct.iwl_fw_ini_error_dump_header, i32, i32, i32, [0 x i8] }

@iwl_dump_desc_assert = dso_local constant { %struct.iwl_fw_dump_desc, [24 x i8] } { %struct.iwl_fw_dump_desc { i32 0, %struct.iwl_fw_error_dump_trigger_desc { i32 33554432, [0 x i8] zeroinitializer } }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/intel/iwlwifi/fw/dbg.c\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Collecting data: trigger %d fired.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Force restart: trigger %d fired.\0A\00", [62 x i8] zeroinitializer }, align 32
@iwl_fw_dbg_collect_trig.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_fw_start_dbg_conf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid configuration %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"FW already configured (%d) - re-configuring\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"WRT: Trigger %d is not active, aborting dump\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"WRT: Collecting data: ini trigger %d fired (delay=%dms).\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to allocate memory for D3 debug data\0A\00", [51 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Device is not enabled - cannot dump error\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Skip fw error dump since bus is dead\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.iwl_fw_dbg_collect_sync = private unnamed_addr constant [24 x i8] c"iwl_fw_dbg_collect_sync\00", align 1
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WRT: Data collection start\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WRT: Data collection done\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"WRT: Unassigned region id %d, skipping\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"WRT: trying to collect phy prph at time point: %d, skipping\0A\00", [35 x i8] zeroinitializer }, align 32
@iwl_dump_ini_region_ops = internal constant { [19 x %struct.iwl_dump_ini_mem_ops], [80 x i8] } { [19 x %struct.iwl_dump_ini_mem_ops] [%struct.iwl_dump_ini_mem_ops zeroinitializer, %struct.iwl_dump_ini_mem_ops zeroinitializer, %struct.iwl_dump_ini_mem_ops { ptr @iwl_dump_ini_single_range, ptr @iwl_dump_ini_mon_smem_get_size, ptr @iwl_dump_ini_mon_smem_fill_header, ptr @iwl_dump_ini_mon_smem_iter }, %struct.iwl_dump_ini_mem_ops { ptr @iwl_dump_ini_mon_dram_ranges, ptr @iwl_dump_ini_mon_dram_get_size, ptr @iwl_dump_ini_mon_dram_fill_header, ptr @iwl_dump_ini_mon_dram_iter }, %struct.iwl_dump_ini_mem_ops { ptr @iwl_dump_ini_txf_ranges, ptr @iwl_dump_ini_txf_get_size, ptr @iwl_dump_ini_mem_fill_header, ptr @iwl_dump_ini_txf_iter }, %struct.iwl_dump_ini_mem_ops { ptr @iwl_dump_ini_single_range, ptr @iwl_dump_ini_rxf_get_size, ptr @iwl_dump_ini_mem_fill_header, ptr @iwl_dump_ini_rxf_iter }, %struct.iwl_dump_ini_mem_ops { ptr @iwl_dump_ini_single_range, ptr @iwl_dump_ini_err_table_get_size, ptr @iwl_dump_ini_err_table_fill_header, ptr @iwl_dump_ini_err_table_iter }, %struct.iwl_dump_ini_mem_ops { ptr @iwl_dump_ini_single_range, ptr @iwl_dump_ini_err_table_get_size, ptr @iwl_dump_ini_err_table_fill_header, ptr @iwl_dump_ini_err_table_iter }, %struct.iwl_dump_ini_mem_ops { ptr @iwl_dump_ini_single_range, ptr @iwl_dump_ini_fw_pkt_get_size, ptr @iwl_dump_ini_mem_fill_header, ptr @iwl_dump_ini_fw_pkt_iter }, %struct.iwl_dump_ini_mem_ops { ptr @iwl_dump_ini_mem_ranges, ptr @iwl_dump_ini_mem_get_size, ptr @iwl_dump_ini_mem_fill_header, ptr @iwl_dump_ini_dev_mem_iter }, %struct.iwl_dump_ini_mem_ops { ptr @iwl_dump_ini_mem_ranges, ptr @iwl_dump_ini_mem_get_size, ptr @iwl_dump_ini_mem_fill_header, ptr @iwl_dump_ini_prph_mac_iter }, %struct.iwl_dump_ini_mem_ops { ptr @iwl_dump_ini_mem_ranges, ptr @iwl_dump_ini_mem_get_size, ptr @iwl_dump_ini_mem_fill_header, ptr @iwl_dump_ini_prph_phy_iter }, %struct.iwl_dump_ini_mem_ops zeroinitializer, %struct.iwl_dump_ini_mem_ops { ptr @iwl_dump_ini_paging_ranges, ptr @iwl_dump_ini_paging_get_size, ptr @iwl_dump_ini_mem_fill_header, ptr @iwl_dump_ini_paging_iter }, %struct.iwl_dump_ini_mem_ops { ptr @iwl_dump_ini_mem_ranges, ptr @iwl_dump_ini_mem_get_size, ptr @iwl_dump_ini_mem_fill_header, ptr @iwl_dump_ini_csr_iter }, %struct.iwl_dump_ini_mem_ops zeroinitializer, %struct.iwl_dump_ini_mem_ops { ptr @iwl_dump_ini_mem_ranges, ptr @iwl_dump_ini_mem_get_size, ptr @iwl_dump_ini_mem_fill_header, ptr @iwl_dump_ini_config_iter }, %struct.iwl_dump_ini_mem_ops { ptr @iwl_dump_ini_single_range, ptr @iwl_dump_ini_special_mem_get_size, ptr @iwl_dump_ini_special_mem_fill_header, ptr @iwl_dump_ini_special_mem_iter }, %struct.iwl_dump_ini_mem_ops { ptr @iwl_dump_ini_mem_ranges, ptr @iwl_dump_ini_mem_get_size, ptr @iwl_dump_ini_mem_fill_header, ptr @iwl_dump_ini_dbgi_sram_iter }], [80 x i8] zeroinitializer }, align 32
@__func__.iwl_dump_ini_mem = private unnamed_addr constant [17 x i8] c"iwl_dump_ini_mem\00", align 1
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"WRT: Collecting region: id=%d, type=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"WRT: Failed to fill region header: id=%d, type=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"WRT: Failed to dump region: id=%d, type=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get monitor header\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"WRT: Invalid lmac offset 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/fw/file.h\00", [51 x i8] zeroinitializer }, align 32
@iwl_ini_get_rxf_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fid1=%x, fid2=%x\0A\00", [46 x i8] zeroinitializer }, align 32
@iwl_ini_get_rxf_data.__already_done.21 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fifo_idx=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@iwl_ini_get_rxf_data.__already_done.23 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid umac fifo idx %d\00", [39 x i8] zeroinitializer }, align 32
@iwl_dump_ini_config_iter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_prph_dump_addr_ax210 = internal constant { [3 x %struct.iwl_prph_range], [40 x i8] } { [3 x %struct.iwl_prph_range] [%struct.iwl_prph_range { i32 13646848, i32 13646948 }, %struct.iwl_prph_range { i32 13655064, i32 13655068 }, %struct.iwl_prph_range { i32 13680640, i32 13681012 }], [40 x i8] zeroinitializer }, align 32
@iwl_prph_dump_addr_22000 = internal constant { [85 x %struct.iwl_prph_range], [184 x i8] } { [85 x %struct.iwl_prph_range] [%struct.iwl_prph_range { i32 10485760, i32 10485760 }, %struct.iwl_prph_range { i32 10485772, i32 10485796 }, %struct.iwl_prph_range { i32 10485804, i32 10485812 }, %struct.iwl_prph_range { i32 10485820, i32 10485820 }, %struct.iwl_prph_range { i32 10486800, i32 10486808 }, %struct.iwl_prph_range { i32 10486816, i32 10486816 }, %struct.iwl_prph_range { i32 10486824, i32 10486824 }, %struct.iwl_prph_range { i32 10486832, i32 10486844 }, %struct.iwl_prph_range { i32 10486852, i32 10486852 }, %struct.iwl_prph_range { i32 10487872, i32 10487872 }, %struct.iwl_prph_range { i32 10487888, i32 10487896 }, %struct.iwl_prph_range { i32 10489860, i32 10489864 }, %struct.iwl_prph_range { i32 10489872, i32 10489872 }, %struct.iwl_prph_range { i32 10489880, i32 10489880 }, %struct.iwl_prph_range { i32 10489892, i32 10489892 }, %struct.iwl_prph_range { i32 10489900, i32 10489908 }, %struct.iwl_prph_range { i32 10489916, i32 10489920 }, %struct.iwl_prph_range { i32 10489928, i32 10489936 }, %struct.iwl_prph_range { i32 10489944, i32 10489944 }, %struct.iwl_prph_range { i32 10489952, i32 10489968 }, %struct.iwl_prph_range { i32 10489996, i32 10489996 }, %struct.iwl_prph_range { i32 10492960, i32 10492968 }, %struct.iwl_prph_range { i32 10493200, i32 10493200 }, %struct.iwl_prph_range { i32 10493480, i32 10493484 }, %struct.iwl_prph_range { i32 10493536, i32 10493536 }, %struct.iwl_prph_range { i32 10493568, i32 10493568 }, %struct.iwl_prph_range { i32 10493600, i32 10493600 }, %struct.iwl_prph_range { i32 10493952, i32 10493980 }, %struct.iwl_prph_range { i32 10493988, i32 10493988 }, %struct.iwl_prph_range { i32 10494016, i32 10494024 }, %struct.iwl_prph_range { i32 10494144, i32 10494176 }, %struct.iwl_prph_range { i32 10494976, i32 10494980 }, %struct.iwl_prph_range { i32 10494988, i32 10494996 }, %struct.iwl_prph_range { i32 10495004, i32 10495036 }, %struct.iwl_prph_range { i32 10495048, i32 10495164 }, %struct.iwl_prph_range { i32 10495172, i32 10495180 }, %struct.iwl_prph_range { i32 10495240, i32 10495240 }, %struct.iwl_prph_range { i32 10495248, i32 10495252 }, %struct.iwl_prph_range { i32 10495260, i32 10495260 }, %struct.iwl_prph_range { i32 10495276, i32 10495324 }, %struct.iwl_prph_range { i32 10495332, i32 10495392 }, %struct.iwl_prph_range { i32 10495400, i32 10495412 }, %struct.iwl_prph_range { i32 10495424, i32 10495424 }, %struct.iwl_prph_range { i32 10495464, i32 10495476 }, %struct.iwl_prph_range { i32 10497032, i32 10497048 }, %struct.iwl_prph_range { i32 10497068, i32 10497080 }, %struct.iwl_prph_range { i32 10497128, i32 10497144 }, %struct.iwl_prph_range { i32 10498048, i32 10498048 }, %struct.iwl_prph_range { i32 10498064, i32 10498068 }, %struct.iwl_prph_range { i32 10498076, i32 10498092 }, %struct.iwl_prph_range { i32 10498100, i32 10498104 }, %struct.iwl_prph_range { i32 10498112, i32 10498116 }, %struct.iwl_prph_range { i32 10498144, i32 10498152 }, %struct.iwl_prph_range { i32 10498160, i32 10498160 }, %struct.iwl_prph_range { i32 10498172, i32 10498180 }, %struct.iwl_prph_range { i32 10498188, i32 10498192 }, %struct.iwl_prph_range { i32 10498200, i32 10498200 }, %struct.iwl_prph_range { i32 10498208, i32 10498208 }, %struct.iwl_prph_range { i32 10498216, i32 10498228 }, %struct.iwl_prph_range { i32 10498236, i32 10498240 }, %struct.iwl_prph_range { i32 10498248, i32 10498292 }, %struct.iwl_prph_range { i32 10498304, i32 10498348 }, %struct.iwl_prph_range { i32 10501120, i32 10501212 }, %struct.iwl_prph_range { i32 10503168, i32 10503252 }, %struct.iwl_prph_range { i32 10503264, i32 10503284 }, %struct.iwl_prph_range { i32 10503360, i32 10503404 }, %struct.iwl_prph_range { i32 10503424, i32 10503428 }, %struct.iwl_prph_range { i32 10503440, i32 10503480 }, %struct.iwl_prph_range { i32 10503488, i32 10503496 }, %struct.iwl_prph_range { i32 10503520, i32 10503520 }, %struct.iwl_prph_range { i32 10503536, i32 10503548 }, %struct.iwl_prph_range { i32 10503568, i32 10503568 }, %struct.iwl_prph_range { i32 10503576, i32 10503576 }, %struct.iwl_prph_range { i32 10503616, i32 10503668 }, %struct.iwl_prph_range { i32 10509336, i32 10509340 }, %struct.iwl_prph_range { i32 10534912, i32 10534936 }, %struct.iwl_prph_range { i32 10534944, i32 10534952 }, %struct.iwl_prph_range { i32 10534968, i32 10535060 }, %struct.iwl_prph_range { i32 10535104, i32 10535172 }, %struct.iwl_prph_range { i32 10535180, i32 10535192 }, %struct.iwl_prph_range { i32 10535248, i32 10535284 }, %struct.iwl_prph_range { i32 10535292, i32 10535304 }, %struct.iwl_prph_range { i32 10535312, i32 10535320 }, %struct.iwl_prph_range { i32 10535328, i32 10535336 }, %struct.iwl_prph_range { i32 10535344, i32 10535352 }], [184 x i8] zeroinitializer }, align 32
@iwl_prph_dump_addr_comm = internal constant { [94 x %struct.iwl_prph_range], [176 x i8] } { [94 x %struct.iwl_prph_range] [%struct.iwl_prph_range { i32 10485760, i32 10485760 }, %struct.iwl_prph_range { i32 10485772, i32 10485796 }, %struct.iwl_prph_range { i32 10485804, i32 10485820 }, %struct.iwl_prph_range { i32 10486800, i32 10486808 }, %struct.iwl_prph_range { i32 10486816, i32 10486816 }, %struct.iwl_prph_range { i32 10486824, i32 10486824 }, %struct.iwl_prph_range { i32 10486832, i32 10486844 }, %struct.iwl_prph_range { i32 10486852, i32 10486852 }, %struct.iwl_prph_range { i32 10486976, i32 10486988 }, %struct.iwl_prph_range { i32 10487000, i32 10487000 }, %struct.iwl_prph_range { i32 10487008, i32 10487024 }, %struct.iwl_prph_range { i32 10487872, i32 10487872 }, %struct.iwl_prph_range { i32 10487888, i32 10487896 }, %struct.iwl_prph_range { i32 10489860, i32 10489864 }, %struct.iwl_prph_range { i32 10489872, i32 10489872 }, %struct.iwl_prph_range { i32 10489880, i32 10489880 }, %struct.iwl_prph_range { i32 10489892, i32 10489892 }, %struct.iwl_prph_range { i32 10489900, i32 10489908 }, %struct.iwl_prph_range { i32 10489916, i32 10489920 }, %struct.iwl_prph_range { i32 10489928, i32 10490004 }, %struct.iwl_prph_range { i32 10492928, i32 10492960 }, %struct.iwl_prph_range { i32 10493016, i32 10493016 }, %struct.iwl_prph_range { i32 10493052, i32 10493052 }, %struct.iwl_prph_range { i32 10492968, i32 10493012 }, %struct.iwl_prph_range { i32 10493020, i32 10493020 }, %struct.iwl_prph_range { i32 10493024, i32 10493148 }, %struct.iwl_prph_range { i32 10493152, i32 10493196 }, %struct.iwl_prph_range { i32 10493208, i32 10493216 }, %struct.iwl_prph_range { i32 10493228, i32 10493232 }, %struct.iwl_prph_range { i32 10493248, i32 10493276 }, %struct.iwl_prph_range { i32 10493312, i32 10493312 }, %struct.iwl_prph_range { i32 10493336, i32 10493340 }, %struct.iwl_prph_range { i32 10493352, i32 10493352 }, %struct.iwl_prph_range { i32 10493368, i32 10493428 }, %struct.iwl_prph_range { i32 10493376, i32 10493436 }, %struct.iwl_prph_range { i32 10493440, i32 10493484 }, %struct.iwl_prph_range { i32 10493504, i32 10493536 }, %struct.iwl_prph_range { i32 10493544, i32 10493548 }, %struct.iwl_prph_range { i32 10493556, i32 10493556 }, %struct.iwl_prph_range { i32 10493572, i32 10493584 }, %struct.iwl_prph_range { i32 10493596, i32 10493636 }, %struct.iwl_prph_range { i32 10493648, i32 10493664 }, %struct.iwl_prph_range { i32 10493696, i32 10493724 }, %struct.iwl_prph_range { i32 10493764, i32 10493948 }, %struct.iwl_prph_range { i32 10493952, i32 10494024 }, %struct.iwl_prph_range { i32 10494056, i32 10494192 }, %struct.iwl_prph_range { i32 10494208, i32 10494232 }, %struct.iwl_prph_range { i32 10494272, i32 10494284 }, %struct.iwl_prph_range { i32 10494312, i32 10494348 }, %struct.iwl_prph_range { i32 10494400, i32 10494400 }, %struct.iwl_prph_range { i32 10494976, i32 10494992 }, %struct.iwl_prph_range { i32 10495000, i32 10495008 }, %struct.iwl_prph_range { i32 10495016, i32 10495020 }, %struct.iwl_prph_range { i32 10495028, i32 10495028 }, %struct.iwl_prph_range { i32 10495040, i32 10495072 }, %struct.iwl_prph_range { i32 10495080, i32 10495152 }, %struct.iwl_prph_range { i32 10495176, i32 10495180 }, %struct.iwl_prph_range { i32 10495232, i32 10495236 }, %struct.iwl_prph_range { i32 10495244, i32 10495248 }, %struct.iwl_prph_range { i32 10495296, i32 10495316 }, %struct.iwl_prph_range { i32 10495360, i32 10495476 }, %struct.iwl_prph_range { i32 10495488, i32 10495500 }, %struct.iwl_prph_range { i32 10495560, i32 10495568 }, %struct.iwl_prph_range { i32 10495616, i32 10495616 }, %struct.iwl_prph_range { i32 10495680, i32 10495696 }, %struct.iwl_prph_range { i32 10495744, i32 10495756 }, %struct.iwl_prph_range { i32 10496004, i32 10496004 }, %struct.iwl_prph_range { i32 10496024, i32 10496028 }, %struct.iwl_prph_range { i32 10497024, i32 10497460 }, %struct.iwl_prph_range { i32 10497524, i32 10497968 }, %struct.iwl_prph_range { i32 10498048, i32 10498068 }, %struct.iwl_prph_range { i32 10498076, i32 10498092 }, %struct.iwl_prph_range { i32 10498100, i32 10498104 }, %struct.iwl_prph_range { i32 10498112, i32 10498120 }, %struct.iwl_prph_range { i32 10498144, i32 10498152 }, %struct.iwl_prph_range { i32 10498160, i32 10498164 }, %struct.iwl_prph_range { i32 10498172, i32 10498172 }, %struct.iwl_prph_range { i32 10498176, i32 10498180 }, %struct.iwl_prph_range { i32 10498188, i32 10498192 }, %struct.iwl_prph_range { i32 10498200, i32 10498200 }, %struct.iwl_prph_range { i32 10498208, i32 10498208 }, %struct.iwl_prph_range { i32 10498216, i32 10498228 }, %struct.iwl_prph_range { i32 10498236, i32 10498236 }, %struct.iwl_prph_range { i32 10498240, i32 10498348 }, %struct.iwl_prph_range { i32 10501120, i32 10501212 }, %struct.iwl_prph_range { i32 10503168, i32 10503252 }, %struct.iwl_prph_range { i32 10503264, i32 10503284 }, %struct.iwl_prph_range { i32 10503360, i32 10503404 }, %struct.iwl_prph_range { i32 10503424, i32 10503428 }, %struct.iwl_prph_range { i32 10503440, i32 10503480 }, %struct.iwl_prph_range { i32 10503488, i32 10503496 }, %struct.iwl_prph_range { i32 10503520, i32 10503548 }, %struct.iwl_prph_range { i32 10503568, i32 10503576 }, %struct.iwl_prph_range { i32 10503616, i32 10503668 }], [176 x i8] zeroinitializer }, align 32
@iwl_prph_dump_addr_9000 = internal constant { [7 x %struct.iwl_prph_range], [40 x i8] } { [7 x %struct.iwl_prph_range] [%struct.iwl_prph_range { i32 10509312, i32 10509336 }, %struct.iwl_prph_range { i32 10507264, i32 10508008 }, %struct.iwl_prph_range { i32 10518528, i32 10524860 }, %struct.iwl_prph_range { i32 10494976, i32 10495832 }, %struct.iwl_prph_range { i32 10504036, i32 10504044 }, %struct.iwl_prph_range { i32 10504048, i32 10504052 }, %struct.iwl_prph_range { i32 10503712, i32 10503716 }], [40 x i8] zeroinitializer }, align 32
@__func__.iwl_fw_dump_rxf = private unnamed_addr constant [16 x i8] c"iwl_fw_dump_rxf\00", align 1
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WRT RX FIFO dump\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.iwl_fw_dump_txf = private unnamed_addr constant [16 x i8] c"iwl_fw_dump_txf\00", align 1
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WRT TX FIFO dump\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.iwl_read_radio_regs = private unnamed_addr constant [20 x i8] c"iwl_read_radio_regs\00", align 1
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"WRT radio registers dump\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.iwl_fw_dump_mem = private unnamed_addr constant [16 x i8] c"iwl_fw_dump_mem\00", align 1
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"WRT memory dump. Type=%u\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.iwl_dump_paging = private unnamed_addr constant [16 x i8] c"iwl_dump_paging\00", align 1
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"WRT paging dump\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.iwl_dump_prph = private unnamed_addr constant [14 x i8] c"iwl_dump_prph\00", align 1
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"WRT PRPH dump\0A\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.32 = private unnamed_addr constant [21 x i8] c"iwl_dump_desc_assert\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2471, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2507, i32 6 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2513, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2579, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2647, i32 6 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2661, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2746, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2776, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2819, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2701, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2707, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2713, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2718, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2291, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2303, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant [24 x i8] c"iwl_dump_ini_region_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2168, i32 42 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2025, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2038, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2048, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1654, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1268, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/fw/file.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 971, i32 6 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1395, i32 6 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1403, i32 7 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1419, i32 7 }
@___asan_gen_.107 = private unnamed_addr constant [25 x i8] c"iwl_prph_dump_addr_ax210\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 508, i32 36 }
@___asan_gen_.110 = private unnamed_addr constant [25 x i8] c"iwl_prph_dump_addr_22000\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 420, i32 36 }
@___asan_gen_.113 = private unnamed_addr constant [24 x i8] c"iwl_prph_dump_addr_comm\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 313, i32 36 }
@___asan_gen_.116 = private unnamed_addr constant [24 x i8] c"iwl_prph_dump_addr_9000\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 410, i32 36 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 179, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 211, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 38, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 670, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 742, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [47 x i8] c"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 536, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @iwl_dump_desc_assert, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @iwl_dump_ini_region_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @iwl_prph_dump_addr_ax210, ptr @iwl_prph_dump_addr_22000, ptr @iwl_prph_dump_addr_comm, ptr @iwl_prph_dump_addr_9000, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dump_desc_assert to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dump_ini_region_ops to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_prph_dump_addr_ax210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_prph_dump_addr_22000 to i32), i32 680, i32 864, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_prph_dump_addr_comm to i32), i32 752, i32 928, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_prph_dump_addr_9000 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_fw_dbg_collect_desc(ptr noundef %fwrt, ptr noundef %desc, i1 noundef zeroext %monitor_only, i32 noundef %delay) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %monitor_only to i8
  %0 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwrt, align 8
  %internal_ini_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 10
  %2 = ptrtoint ptr %internal_ini_cfg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %internal_ini_cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %iwl_trans_dbg_ini_valid.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then

iwl_trans_dbg_ini_valid.exit:                     ; preds = %entry
  %external_ini_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 11
  %4 = ptrtoint ptr %external_ini_cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %external_ini_cfg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.i.not = icmp eq i32 %5, 0
  br i1 %cmp2.i.not, label %if.end, label %iwl_trans_dbg_ini_valid.exit.if.then_crit_edge

iwl_trans_dbg_ini_valid.exit.if.then_crit_edge:   ; preds = %iwl_trans_dbg_ini_valid.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then

if.then:                                          ; preds = %iwl_trans_dbg_ini_valid.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %tobool.not.i = icmp eq ptr %desc, null
  %cmp.not.i77 = icmp eq ptr %desc, @iwl_dump_desc_assert
  %or.cond.i = or i1 %tobool.not.i, %cmp.not.i77
  br i1 %or.cond.i, label %if.then.if.end.i79_crit_edge, label %if.then.i78

if.then.if.end.i79_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i79

if.then.i78:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @kfree(ptr noundef nonnull %desc) #19
  br label %if.end.i79

if.end.i79:                                       ; preds = %if.then.i78, %if.then.if.end.i79_crit_edge
  %lmac_err_id.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 5
  %6 = ptrtoint ptr %lmac_err_id.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %lmac_err_id.i, align 8
  %smem_cfg.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11
  %7 = ptrtoint ptr %smem_cfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %smem_cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp1.i = icmp sgt i32 %8, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i79.iwl_fw_free_dump_desc.exit_crit_edge

if.end.i79.iwl_fw_free_dump_desc.exit_crit_edge:  ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_fw_free_dump_desc.exit

if.then2.i:                                       ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx5.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 5, i32 1
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx5.i, align 4
  br label %iwl_fw_free_dump_desc.exit

iwl_fw_free_dump_desc.exit:                       ; preds = %if.then2.i, %if.end.i79.iwl_fw_free_dump_desc.exit_crit_edge
  %umac_err_id.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 6
  %10 = ptrtoint ptr %umac_err_id.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %umac_err_id.i, align 8
  br label %cleanup

if.end:                                           ; preds = %iwl_trans_dbg_ini_valid.exit
  %dump = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12
  %active_wks = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 1
  %11 = ptrtoint ptr %active_wks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %active_wks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp = icmp eq i32 %12, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %neg = xor i32 %12, -1
  %13 = tail call i32 @llvm.cttz.i32(i32 %neg, i1 false) #19, !range !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp6 = icmp ugt i32 %13, 4
  br i1 %cmp6, label %if.end2.cleanup_crit_edge, label %lor.lhs.false

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end2
  %arrayidx = getelementptr [5 x %struct.iwl_fwrt_wk_data], ptr %dump, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 8
  %conv = zext i8 %15 to i32
  %call11 = tail call i32 @_test_and_set_bit(i32 noundef %conv, ptr noundef %active_wks) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end13, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  %dump_data = getelementptr [5 x %struct.iwl_fwrt_wk_data], ptr %dump, i32 0, i32 %13, i32 2
  %16 = ptrtoint ptr %dump_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dump_data, align 4
  %tobool18.not = icmp eq ptr %17, null
  br i1 %tobool18.not, label %if.end13.if.end44_crit_edge, label %do.end, !prof !99

if.end13.if.end44_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end44

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2507, i32 noundef 9, ptr noundef null) #19
  %18 = ptrtoint ptr %dump_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dump_data, align 4
  tail call fastcc void @iwl_fw_free_dump_desc(ptr noundef %fwrt, ptr noundef %19)
  br label %if.end44

if.end44:                                         ; preds = %do.end, %if.end13.if.end44_crit_edge
  %20 = ptrtoint ptr %dump_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %desc, ptr %dump_data, align 4
  %monitor_only49 = getelementptr inbounds %struct.anon.133, ptr %dump_data, i32 0, i32 1
  %21 = ptrtoint ptr %monitor_only49 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool, ptr %monitor_only49, align 4
  %dev = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %trig_desc = getelementptr inbounds %struct.iwl_fw_dump_desc, ptr %desc, i32 0, i32 1
  %24 = ptrtoint ptr %trig_desc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %trig_desc, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %23, ptr noundef nonnull @.str.1, i32 noundef %26) #19
  %wk = getelementptr [5 x %struct.iwl_fwrt_wk_data], ptr %dump, i32 0, i32 %13, i32 1
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %delay) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %wk, i32 noundef %call3.i) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %lor.lhs.false.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %iwl_fw_free_dump_desc.exit
  %retval.0 = phi i32 [ 0, %iwl_fw_free_dump_desc.exit ], [ 0, %if.end44 ], [ -16, %if.end.cleanup_crit_edge ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_fw_free_dump_desc(ptr nocapture noundef %fwrt, ptr noundef %desc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  %tobool.not = icmp eq ptr %desc, null
  %cmp.not = icmp eq ptr %desc, @iwl_dump_desc_assert
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @kfree(ptr noundef nonnull %desc) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lmac_err_id = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 5
  %0 = ptrtoint ptr %lmac_err_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %lmac_err_id, align 8
  %smem_cfg = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11
  %1 = ptrtoint ptr %smem_cfg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %smem_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp1 = icmp sgt i32 %2, 1
  br i1 %cmp1, label %if.then2, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx5 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 5, i32 1
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %umac_err_id = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 6
  %4 = ptrtoint ptr %umac_err_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %umac_err_id, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_fw_dbg_error_collect(ptr noundef %fwrt, i32 noundef %trig_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwrt, align 8
  %status = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end:                                           ; preds = %entry
  %internal_ini_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 10
  %5 = ptrtoint ptr %internal_ini_cfg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %internal_ini_cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 0
  br i1 %cmp.not.i, label %iwl_trans_dbg_ini_valid.exit, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then3

iwl_trans_dbg_ini_valid.exit:                     ; preds = %if.end
  %external_ini_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 11
  %7 = ptrtoint ptr %external_ini_cfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %external_ini_cfg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2.i.not = icmp eq i32 %8, 0
  br i1 %cmp2.i.not, label %if.else, label %iwl_trans_dbg_ini_valid.exit.if.then3_crit_edge

iwl_trans_dbg_ini_valid.exit.if.then3_crit_edge:  ; preds = %iwl_trans_dbg_ini_valid.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then3

if.then3:                                         ; preds = %iwl_trans_dbg_ini_valid.exit.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %trig_type.off = add i32 %trig_type, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %trig_type.off)
  %switch29 = icmp ult i32 %trig_type.off, 2
  br i1 %switch29, label %if.end6, label %if.then3.return_crit_edge

if.then3.return_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end6:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_iwl_dbg_tlv_time_point(ptr noundef %fwrt, i32 noundef 13, ptr noundef null, i1 noundef zeroext false) #19
  br label %if.end16

if.else:                                          ; preds = %iwl_trans_dbg_ini_valid.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 8) #22
  %tobool8.not = icmp eq ptr %call7.i, null
  br i1 %tobool8.not, label %if.else.return_crit_edge, label %if.end10

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end10:                                         ; preds = %if.else
  %10 = tail call i32 @llvm.bswap.i32(i32 %trig_type)
  %trig_desc = getelementptr inbounds %struct.iwl_fw_dump_desc, ptr %call7.i, i32 0, i32 1
  %11 = ptrtoint ptr %trig_desc to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %trig_desc, align 4
  %12 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %call7.i, align 8
  %call11 = tail call i32 @iwl_fw_dbg_collect_desc(ptr noundef %fwrt, ptr noundef nonnull %call7.i, i1 noundef zeroext false, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.if.end16_crit_edge, label %if.then13

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end16

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @kfree(ptr noundef nonnull %call7.i) #19
  br label %return

if.end16:                                         ; preds = %if.end10.if.end16_crit_edge, %if.end6
  %13 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fwrt, align 8
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %sync_nmi.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %16, i32 0, i32 37
  %17 = ptrtoint ptr %sync_nmi.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sync_nmi.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end16.return_crit_edge, label %if.then.i

if.end16.return_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #21
  tail call void %18(ptr noundef %14) #19
  br label %return

return:                                           ; preds = %if.then.i, %if.end16.return_crit_edge, %if.then13, %if.else.return_crit_edge, %if.then3.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ -5, %entry.return_crit_edge ], [ -5, %if.then3.return_crit_edge ], [ 0, %if.end16.return_crit_edge ], [ 0, %if.then.i ], [ -12, %if.else.return_crit_edge ], [ %call11, %if.then13 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_fw_dbg_collect(ptr noundef %fwrt, i32 noundef %trig, ptr nocapture noundef readonly %str, i32 noundef %len, ptr noundef %trigger) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %trigger, null
  br i1 %tobool.not, label %entry.if.end8.i.i_crit_edge, label %if.then

entry.if.end8.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8.i.i

if.then:                                          ; preds = %entry
  %occurrences1 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %trigger, i32 0, i32 6
  %0 = ptrtoint ptr %occurrences1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %occurrences1, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %sub = add i16 %2, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool4.not = icmp eq i16 %1, 0
  br i1 %tobool4.not, label %if.then.cleanup25_crit_edge, label %if.end

if.then.cleanup25_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup25

if.end:                                           ; preds = %if.then
  %flags = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %trigger, i32 0, i32 8
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flags, align 1
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  br i1 %tobool7.not, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %dev = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %7, ptr noundef nonnull @.str.2, i32 noundef %trig) #19
  %8 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fwrt, align 8
  tail call void @iwl_force_nmi(ptr noundef %9) #19
  br label %cleanup25

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %10 = tail call i16 @llvm.bswap.i16(i16 %sub)
  %11 = ptrtoint ptr %occurrences1 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %occurrences1, align 1
  %mode = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %trigger, i32 0, i32 4
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mode, align 1
  %14 = and i8 %13, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool16 = icmp ne i8 %14, 0
  %stop_delay = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %trigger, i32 0, i32 3
  %15 = ptrtoint ptr %stop_delay to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %stop_delay, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %mul = mul i32 %17, 1000
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %cleanup, %entry.if.end8.i.i_crit_edge
  %delay.1 = phi i32 [ %mul, %cleanup ], [ 0, %entry.if.end8.i.i_crit_edge ]
  %monitor_only.1.off0 = phi i1 [ %tobool16, %cleanup ], [ false, %entry.if.end8.i.i_crit_edge ]
  %add = add i32 %len, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 2848) #23
  %tobool18.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool18.not, label %if.end8.i.i.cleanup25_crit_edge, label %if.end20

if.end8.i.i.cleanup25_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup25

if.end20:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %18 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %len, ptr %call9.i.i, align 128
  %19 = tail call i32 @llvm.bswap.i32(i32 %trig)
  %trig_desc = getelementptr inbounds %struct.iwl_fw_dump_desc, ptr %call9.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %trig_desc to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %trig_desc, align 4
  %data = getelementptr inbounds %struct.iwl_fw_dump_desc, ptr %call9.i.i, i32 1
  %21 = call ptr @memcpy(ptr %data, ptr %str, i32 %len)
  %call24 = tail call i32 @iwl_fw_dbg_collect_desc(ptr noundef %fwrt, ptr noundef nonnull %call9.i.i, i1 noundef zeroext %monitor_only.1.off0, i32 noundef %delay.1)
  br label %cleanup25

cleanup25:                                        ; preds = %if.end20, %if.end8.i.i.cleanup25_crit_edge, %do.end, %if.then.cleanup25_crit_edge
  %retval.1 = phi i32 [ %call24, %if.end20 ], [ -12, %if.end8.i.i.cleanup25_crit_edge ], [ 0, %do.end ], [ 0, %if.then.cleanup25_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_force_nmi(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_fw_dbg_collect_trig(ptr noundef %fwrt, ptr noundef %trigger, ptr noundef readonly %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #19
  %0 = call ptr @memset(ptr %buf, i32 255, i32 64)
  %1 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fwrt, align 8
  %internal_ini_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %2, i32 0, i32 32, i32 10
  %3 = ptrtoint ptr %internal_ini_cfg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %internal_ini_cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 0
  br i1 %cmp.not.i, label %iwl_trans_dbg_ini_valid.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

iwl_trans_dbg_ini_valid.exit:                     ; preds = %entry
  %external_ini_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %2, i32 0, i32 32, i32 11
  %5 = ptrtoint ptr %external_ini_cfg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %external_ini_cfg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2.i.not = icmp eq i32 %6, 0
  br i1 %cmp2.i.not, label %if.end, label %iwl_trans_dbg_ini_valid.exit.cleanup_crit_edge

iwl_trans_dbg_ini_valid.exit.cleanup_crit_edge:   ; preds = %iwl_trans_dbg_ini_valid.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %iwl_trans_dbg_ini_valid.exit
  %tobool.not = icmp eq ptr %fmt, null
  br i1 %tobool.not, label %if.end.if.end48_crit_edge, label %if.then1

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end48

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #19
  %7 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !100
  %arrayidx = getelementptr inbounds [64 x i8], ptr %buf, i32 0, i32 63
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx, align 1
  call void @llvm.va_start(ptr nonnull %ap)
  %9 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %9)
  %.fca.0.load = load i32, ptr %ap, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call2 = call i32 @vsnprintf(ptr noundef nonnull %buf, i32 noundef 64, ptr noundef nonnull %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %ap)
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %if.then1.if.end45_crit_edge, label %land.rhs

if.then1.if.end45_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end45

land.rhs:                                         ; preds = %if.then1
  %.b62 = load i1, ptr @iwl_fw_dbg_collect_trig.__already_done, align 1
  br i1 %.b62, label %land.rhs.if.then43_crit_edge, label %if.then12, !prof !99

land.rhs.if.then43_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then43

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @iwl_fw_dbg_collect_trig.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2625, i32 noundef 9, ptr noundef null) #19
  br label %if.then43

if.then43:                                        ; preds = %if.then12, %land.rhs.if.then43_crit_edge
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.then1.if.end45_crit_edge
  %call47 = call i32 @strlen(ptr noundef nonnull %buf) #24
  %add = add i32 %call47, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #19
  br label %if.end48

if.end48:                                         ; preds = %if.end45, %if.end.if.end48_crit_edge
  %len.0 = phi i32 [ %add, %if.end45 ], [ 0, %if.end.if.end48_crit_edge ]
  %13 = ptrtoint ptr %trigger to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %trigger, align 1
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %call50 = call i32 @iwl_fw_dbg_collect(ptr noundef %fwrt, i32 noundef %15, ptr noundef nonnull %buf, i32 noundef %len.0, ptr noundef %trigger)
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %iwl_trans_dbg_ini_valid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %iwl_trans_dbg_ini_valid.exit.cleanup_crit_edge ], [ %call50, %if.end48 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #19
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_fw_start_dbg_conf(ptr nocapture noundef %fwrt, i8 noundef zeroext %conf_id) local_unnamed_addr #0 align 64 {
entry:
  %hcmd89 = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %conf_id to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %conf_id)
  %cmp = icmp ugt i8 %conf_id, 31
  br i1 %cmp, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b141 = load i1, ptr @iwl_fw_start_dbg_conf.__already_done, align 1
  br i1 %.b141, label %land.rhs.cleanup112_crit_edge, label %if.then, !prof !99

land.rhs.cleanup112_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup112

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @iwl_fw_start_dbg_conf.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2648, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %conv) #19
  br label %cleanup112

if.end40:                                         ; preds = %entry
  %fw = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 1
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw, align 4
  %arrayidx = getelementptr %struct.iwl_fw, ptr %1, i32 0, i32 20, i32 2, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool41.not = icmp eq ptr %3, null
  br i1 %tobool41.not, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end40
  %num_of_hcmds = getelementptr inbounds %struct.iwl_fw_dbg_conf_tlv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %num_of_hcmds to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_of_hcmds, align 1
  %6 = or i8 %5, %conf_id
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %lor.lhs.false.cleanup112_crit_edge, label %if.end60

lor.lhs.false.cleanup112_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup112

land.lhs.true:                                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conf_id)
  %cmp49.old = icmp eq i8 %conf_id, 0
  %spec.select = select i1 %cmp49.old, i32 0, i32 -22
  br label %cleanup112

if.end60:                                         ; preds = %lor.lhs.false
  %conf = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 2
  %8 = ptrtoint ptr %conf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %conf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp62.not = icmp eq i8 %9, -1
  br i1 %cmp62.not, label %if.end60.if.end74_crit_edge, label %do.end68

if.end60.if.end74_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end74

do.end68:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #21
  %conv61 = zext i8 %9 to i32
  %dev = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @__iwl_info(ptr noundef %11, ptr noundef nonnull @.str.4, i32 noundef %conv61) #19
  br label %if.end74

if.end74:                                         ; preds = %do.end68, %if.end60.if.end74_crit_edge
  %12 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw, align 4
  %arrayidx84147 = getelementptr %struct.iwl_fw, ptr %13, i32 0, i32 20, i32 2, i32 %conv
  %14 = ptrtoint ptr %arrayidx84147 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx84147, align 4
  %num_of_hcmds85148 = getelementptr inbounds %struct.iwl_fw_dbg_conf_tlv, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %num_of_hcmds85148 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_of_hcmds85148, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp87150.not = icmp eq i8 %17, 0
  br i1 %cmp87150.not, label %if.end74.for.end_crit_edge, label %for.body.lr.ph

if.end74.for.end_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end74
  %18 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fw, align 4
  %arrayidx79 = getelementptr %struct.iwl_fw, ptr %19, i32 0, i32 20, i32 2, i32 %conv
  %20 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx79, align 4
  %hcmd = getelementptr inbounds %struct.iwl_fw_dbg_conf_tlv, ptr %21, i32 0, i32 4
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd89, i32 0, i32 5
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd89, i32 0, i32 6
  %arrayinit.start96 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd89, i32 0, i32 6, i32 1
  %arrayinit.end97 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd89, i32 0, i32 7
  %22 = getelementptr inbounds i8, ptr %hcmd89, i32 32
  %arrayinit.cur.ptr = getelementptr inbounds ptr, ptr %hcmd89, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ptr.0152 = phi ptr [ %hcmd, %for.body.lr.ph ], [ %add.ptr108, %for.inc.for.body_crit_edge ]
  %i.0151 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd89) #19
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %22, align 4, !annotation !100
  %data90 = getelementptr %struct.iwl_fw_dbg_conf_hcmd, ptr %ptr.0152, i32 0, i32 3
  %24 = ptrtoint ptr %hcmd89 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %data90, ptr %hcmd89, align 4
  %25 = call ptr @memset(ptr %arrayinit.cur.ptr, i32 0, i32 20)
  %26 = ptrtoint ptr %ptr.0152 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ptr.0152, align 1
  %conv93 = zext i8 %27 to i32
  %28 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv93, ptr %id, align 4
  %len95 = getelementptr inbounds %struct.iwl_fw_dbg_conf_hcmd, ptr %ptr.0152, i32 0, i32 2
  %29 = ptrtoint ptr %len95 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %len95, align 1
  %31 = call i16 @llvm.bswap.i16(i16 %30)
  %32 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %len, align 4
  %33 = ptrtoint ptr %arrayinit.start96 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %arrayinit.start96, align 2
  %34 = ptrtoint ptr %arrayinit.end97 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %arrayinit.end97, align 4
  %35 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fwrt, align 8
  %call = call i32 @iwl_trans_send_cmd(ptr noundef %36, ptr noundef nonnull %hcmd89) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool103.not = icmp eq i32 %call, 0
  br i1 %tobool103.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd89) #19
  br label %cleanup112

for.inc:                                          ; preds = %for.body
  %37 = ptrtoint ptr %len95 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %len95, align 1
  %39 = call i16 @llvm.bswap.i16(i16 %38)
  %conv107 = zext i16 %39 to i32
  %add.ptr108 = getelementptr i8, ptr %data90, i32 %conv107
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd89) #19
  %inc = add nuw nsw i32 %i.0151, 1
  %40 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fw, align 4
  %arrayidx84 = getelementptr %struct.iwl_fw, ptr %41, i32 0, i32 20, i32 2, i32 %conv
  %42 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx84, align 4
  %num_of_hcmds85 = getelementptr inbounds %struct.iwl_fw_dbg_conf_tlv, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %num_of_hcmds85 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %num_of_hcmds85, align 1
  %conv86 = zext i8 %45 to i32
  %cmp87 = icmp ult i32 %inc, %conv86
  br i1 %cmp87, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end74.for.end_crit_edge
  %46 = ptrtoint ptr %conf to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conf_id, ptr %conf, align 4
  br label %cleanup112

cleanup112:                                       ; preds = %for.end, %cleanup, %land.lhs.true, %lor.lhs.false.cleanup112_crit_edge, %if.then, %land.rhs.cleanup112_crit_edge
  %retval.2 = phi i32 [ %call, %cleanup ], [ 0, %for.end ], [ -22, %if.then ], [ 0, %lor.lhs.false.cleanup112_crit_edge ], [ -22, %land.rhs.cleanup112_crit_edge ], [ %spec.select, %land.lhs.true ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_trans_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_fw_dbg_ini_collect(ptr noundef %fwrt, ptr nocapture noundef readonly %dump_data, i1 noundef zeroext %sync) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dump_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dump_data, align 4
  %time_point = getelementptr inbounds %struct.iwl_fw_ini_trigger_tlv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %time_point to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %time_point, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %ignore_consec.i = getelementptr inbounds %struct.iwl_fw_ini_trigger_tlv, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %ignore_consec.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %ignore_consec.i, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #19
  %8 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fwrt, align 8
  %internal_ini_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %9, i32 0, i32 32, i32 10
  %10 = ptrtoint ptr %internal_ini_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %internal_ini_cfg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i.i, label %lor.rhs.i.i, label %entry.iwl_trans_dbg_ini_valid.exit.i_crit_edge

entry.iwl_trans_dbg_ini_valid.exit.i_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_trans_dbg_ini_valid.exit.i

lor.rhs.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %external_ini_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %9, i32 0, i32 32, i32 11
  %12 = ptrtoint ptr %external_ini_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %external_ini_cfg.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2.i.i = icmp eq i32 %13, 0
  br label %iwl_trans_dbg_ini_valid.exit.i

iwl_trans_dbg_ini_valid.exit.i:                   ; preds = %lor.rhs.i.i, %entry.iwl_trans_dbg_ini_valid.exit.i_crit_edge
  %14 = phi i1 [ false, %entry.iwl_trans_dbg_ini_valid.exit.i_crit_edge ], [ %cmp2.i.i, %lor.rhs.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i72 = icmp eq i32 %3, 0
  %or.cond.i = select i1 %14, i1 true, i1 %cmp.i72
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %4)
  %cmp2.i = icmp ugt i32 %4, 26
  %or.cond10.i = select i1 %or.cond.i, i1 true, i1 %cmp2.i
  br i1 %or.cond10.i, label %iwl_trans_dbg_ini_valid.exit.i.do.end_crit_edge, label %if.else.i.i.i

iwl_trans_dbg_ini_valid.exit.i.do.end_crit_edge:  ; preds = %iwl_trans_dbg_ini_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

if.else.i.i.i:                                    ; preds = %iwl_trans_dbg_ini_valid.exit.i
  %call3.i.i.i = tail call i32 @__usecs_to_jiffies(i32 noundef %7) #19
  %arrayidx.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 3, i32 %4
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %if.else.i.i.i.if.end_crit_edge, label %land.lhs.true.i.i

if.else.i.i.i.if.end_crit_edge:                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.lhs.true.i.i:                                ; preds = %if.else.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %18 = add i32 %16, %call3.i.i.i
  %sub.i.i73 = sub i32 %17, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i73)
  %cmp.i.i = icmp slt i32 %sub.i.i73, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i.do.end_crit_edge, label %land.lhs.true.i.i.if.end_crit_edge

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.lhs.true.i.i.do.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

do.end:                                           ; preds = %land.lhs.true.i.i.do.end_crit_edge, %iwl_trans_dbg_ini_valid.exit.i.do.end_crit_edge
  %dev = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %20, ptr noundef nonnull @.str.5, i32 noundef %4) #19
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.i.if.end_crit_edge, %if.else.i.i.i.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i.i, align 4
  %dump_delay = getelementptr inbounds %struct.iwl_fw_ini_trigger_tlv, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %dump_delay to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %dump_delay, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %occurrences = getelementptr inbounds %struct.iwl_fw_ini_trigger_tlv, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %occurrences to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %occurrences, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not = icmp eq i32 %27, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %dec = add i32 %28, -1
  %29 = tail call i32 @llvm.bswap.i32(i32 %dec)
  %30 = ptrtoint ptr %occurrences to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %occurrences, align 1
  %dump = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12
  %active_wks = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 1
  %31 = ptrtoint ptr %active_wks to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %active_wks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp = icmp eq i32 %32, -1
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %neg = xor i32 %32, -1
  %33 = tail call i32 @llvm.cttz.i32(i32 %neg, i1 false) #19, !range !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp13 = icmp ugt i32 %33, 4
  br i1 %cmp13, label %if.end9.cleanup_crit_edge, label %lor.lhs.false

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end9
  %arrayidx = getelementptr [5 x %struct.iwl_fwrt_wk_data], ptr %dump, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx, align 8
  %conv = zext i8 %35 to i32
  %call18 = tail call i32 @_test_and_set_bit(i32 noundef %conv, ptr noundef %active_wks) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false
  %dump_data25 = getelementptr [5 x %struct.iwl_fwrt_wk_data], ptr %dump, i32 0, i32 %33, i32 2
  %36 = ptrtoint ptr %dump_data to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %dump_data, align 4
  %38 = ptrtoint ptr %dump_data25 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %dump_data25, align 8
  %spec.select = select i1 %sync, i32 0, i32 %25
  %dev33 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %39 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev33, align 8
  %div = udiv i32 %spec.select, 1000
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %40, ptr noundef nonnull @.str.6, i32 noundef %4, i32 noundef %div) #19
  %wk = getelementptr [5 x %struct.iwl_fwrt_wk_data], ptr %dump, i32 0, i32 %33, i32 1
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %spec.select) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %41 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %41, ptr noundef %wk, i32 noundef %call3.i) #19
  br i1 %sync, label %if.then42, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then42:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  %conv43 = trunc i32 %33 to i8
  tail call fastcc void @iwl_fw_dbg_collect_sync(ptr noundef %fwrt, i8 noundef zeroext %conv43)
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end21.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ -16, %if.end6.cleanup_crit_edge ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %if.end9.cleanup_crit_edge ], [ 0, %if.then42 ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_fw_dbg_collect_sync(ptr noundef %fwrt, i8 noundef zeroext %wk_idx) unnamed_addr #0 align 64 {
entry:
  %dump_data.i.i = alloca ptr, align 4
  %reg_data.i.i.i = alloca %struct.iwl_dump_ini_region_data, align 4
  %dump_list.i = alloca %struct.list_head, align 4
  %params = alloca %struct.iwl_fw_dbg_params, align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %params) #19
  %0 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %params, align 8
  %dump = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12
  %idxprom = zext i8 %wk_idx to i32
  %dump_data1 = getelementptr [5 x %struct.iwl_fwrt_wk_data], ptr %dump, i32 0, i32 %idxprom, i32 2
  %active_wks = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 1
  %div3.i = lshr i32 %idxprom, 5
  %arrayidx.i = getelementptr i32, ptr %active_wks, i32 %div3.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %idxprom, 31
  %3 = shl nuw i32 1, %and.i
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fwrt, align 8
  %status = getelementptr inbounds %struct.iwl_trans, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %status, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %dev = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %11, i32 noundef 0, ptr noundef nonnull @.str.8) #19
  br label %out

if.end9:                                          ; preds = %if.end
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %status, align 4
  %14 = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  br i1 %tobool13.not, label %if.end22, label %do.end18

do.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #21
  %dev19 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %15 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev19, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %16, i32 noundef 0, ptr noundef nonnull @.str.9) #19
  br label %out

if.end22:                                         ; preds = %if.end9
  call void @iwl_fw_dbg_stop_restart_recording(ptr noundef %fwrt, ptr noundef nonnull %params, i1 noundef zeroext true)
  %dev27 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %17 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev27, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %18, i32 noundef 65537, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_fw_dbg_collect_sync, ptr noundef nonnull @.str.10) #19
  %19 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fwrt, align 8
  %internal_ini_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %20, i32 0, i32 32, i32 10
  %21 = ptrtoint ptr %internal_ini_cfg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %internal_ini_cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not.i = icmp eq i32 %22, 0
  br i1 %cmp.not.i, label %iwl_trans_dbg_ini_valid.exit, label %if.end22.if.then32_crit_edge

if.end22.if.then32_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then32

iwl_trans_dbg_ini_valid.exit:                     ; preds = %if.end22
  %external_ini_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %20, i32 0, i32 32, i32 11
  %23 = ptrtoint ptr %external_ini_cfg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %external_ini_cfg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp2.i.not = icmp eq i32 %24, 0
  br i1 %cmp2.i.not, label %if.else, label %iwl_trans_dbg_ini_valid.exit.if.then32_crit_edge

iwl_trans_dbg_ini_valid.exit.if.then32_crit_edge: ; preds = %iwl_trans_dbg_ini_valid.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then32

if.then32:                                        ; preds = %iwl_trans_dbg_ini_valid.exit.if.then32_crit_edge, %if.end22.if.then32_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dump_list.i) #19
  %25 = getelementptr inbounds %struct.list_head, ptr %dump_list.i, i32 0, i32 1
  %26 = ptrtoint ptr %dump_list.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dump_list.i, ptr %dump_list.i, align 4
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dump_list.i, ptr %25, align 4
  %28 = ptrtoint ptr %dump_data1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dump_data1, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %if.then32.iwl_fw_error_ini_dump.exit_crit_edge, label %lor.lhs.false.i.i

if.then32.iwl_fw_error_ini_dump.exit_crit_edge:   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_fw_error_ini_dump.exit

lor.lhs.false.i.i:                                ; preds = %if.then32
  %time_point.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_trigger_tlv, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %time_point.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %time_point.i.i.i, align 1
  %32 = call i32 @llvm.bswap.i32(i32 %31) #19
  %ignore_consec.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_trigger_tlv, ptr %29, i32 0, i32 7
  %33 = ptrtoint ptr %ignore_consec.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %ignore_consec.i.i.i, align 1
  %35 = call i32 @llvm.bswap.i32(i32 %34) #19
  br i1 %cmp.not.i, label %lor.rhs.i.i.i.i, label %lor.lhs.false.i.i.iwl_trans_dbg_ini_valid.exit.i.i.i_crit_edge

lor.lhs.false.i.i.iwl_trans_dbg_ini_valid.exit.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_trans_dbg_ini_valid.exit.i.i.i

lor.rhs.i.i.i.i:                                  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %external_ini_cfg.i.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %20, i32 0, i32 32, i32 11
  %36 = ptrtoint ptr %external_ini_cfg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %external_ini_cfg.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp2.i.i.i.i = icmp eq i32 %37, 0
  br label %iwl_trans_dbg_ini_valid.exit.i.i.i

iwl_trans_dbg_ini_valid.exit.i.i.i:               ; preds = %lor.rhs.i.i.i.i, %lor.lhs.false.i.i.iwl_trans_dbg_ini_valid.exit.i.i.i_crit_edge
  %38 = phi i1 [ false, %lor.lhs.false.i.i.iwl_trans_dbg_ini_valid.exit.i.i.i_crit_edge ], [ %cmp2.i.i.i.i, %lor.rhs.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i.i = icmp eq i32 %31, 0
  %or.cond.i.i.i = select i1 %38, i1 true, i1 %cmp.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %32)
  %cmp2.i.i.i = icmp ugt i32 %32, 26
  %or.cond10.i.i.i = select i1 %or.cond.i.i.i, i1 true, i1 %cmp2.i.i.i
  br i1 %or.cond10.i.i.i, label %iwl_trans_dbg_ini_valid.exit.i.i.i.iwl_fw_error_ini_dump.exit_crit_edge, label %if.else.i.i.i.i.i

iwl_trans_dbg_ini_valid.exit.i.i.i.iwl_fw_error_ini_dump.exit_crit_edge: ; preds = %iwl_trans_dbg_ini_valid.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_fw_error_ini_dump.exit

if.else.i.i.i.i.i:                                ; preds = %iwl_trans_dbg_ini_valid.exit.i.i.i
  %call3.i.i.i.i.i = call i32 @__usecs_to_jiffies(i32 noundef %35) #19
  %arrayidx.i.i.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 3, i32 %32
  %39 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i.i.i, label %if.else.i.i.i.i.i.lor.lhs.false2.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.else.i.i.i.i.i.lor.lhs.false2.i.i_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %lor.lhs.false2.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.else.i.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %42 = add i32 %40, %call3.i.i.i.i.i
  %sub.i.i.i.i = sub i32 %41, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %sub.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %land.lhs.true.i.i.i.i.iwl_fw_error_ini_dump.exit_crit_edge, label %land.lhs.true.i.i.i.i.lor.lhs.false2.i.i_crit_edge

land.lhs.true.i.i.i.i.lor.lhs.false2.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %lor.lhs.false2.i.i

land.lhs.true.i.i.i.i.iwl_fw_error_ini_dump.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_fw_error_ini_dump.exit

lor.lhs.false2.i.i:                               ; preds = %land.lhs.true.i.i.i.i.lor.lhs.false2.i.i_crit_edge, %if.else.i.i.i.i.i.lor.lhs.false2.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %44 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx.i.i.i.i, align 4
  %regions_mask.i.i = getelementptr inbounds %struct.iwl_fw_ini_trigger_tlv, ptr %29, i32 0, i32 10
  %45 = ptrtoint ptr %regions_mask.i.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %46 = load i64, ptr %regions_mask.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %46)
  %tobool3.not.i.i = icmp eq i64 %46, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false2.i.i.iwl_fw_error_ini_dump.exit_crit_edge, label %if.end.i.i

lor.lhs.false2.i.i.iwl_fw_error_ini_dump.exit_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_fw_error_ini_dump.exit

if.end.i.i:                                       ; preds = %lor.lhs.false2.i.i
  %call4.i.i = call noalias ptr @vzalloc(i32 noundef 20) #23
  %tobool5.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool5.not.i.i, label %if.end.i.i.iwl_fw_error_ini_dump.exit_crit_edge, label %if.end7.i.i

if.end.i.i.iwl_fw_error_ini_dump.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_fw_error_ini_dump.exit

if.end7.i.i:                                      ; preds = %if.end.i.i
  %size8.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call4.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %size8.i.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 8, ptr %size8.i.i, align 1
  %48 = ptrtoint ptr %dump_data1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dump_data1, align 4
  %time_point.i32.i.i = getelementptr inbounds %struct.iwl_fw_ini_trigger_tlv, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %time_point.i32.i.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %time_point.i32.i.i, align 1
  %52 = call i32 @llvm.bswap.i32(i32 %51) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg_data.i.i.i) #19
  %53 = getelementptr inbounds %struct.iwl_dump_ini_region_data, ptr %reg_data.i.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %reg_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %reg_data.i.i.i, align 4
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %dump_data1, ptr %53, align 4
  %regions_mask2.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_trigger_tlv, ptr %49, i32 0, i32 10
  %56 = ptrtoint ptr %regions_mask2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 8)
  %57 = load i64, ptr %regions_mask2.i.i.i, align 1
  %58 = call i64 @llvm.bswap.i64(i64 %57) #19
  %59 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fwrt, align 8
  %unsupported_region_msk.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %60, i32 0, i32 32, i32 17
  %61 = ptrtoint ptr %unsupported_region_msk.i.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %unsupported_region_msk.i.i.i, align 8
  %neg.i.i.i = xor i64 %62, -1
  %and.i.i.i = and i64 %58, %neg.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %51)
  %cmp27.not.i.i.i = icmp eq i32 %51, 67108864
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %cleanup.i.i.i.for.body.i.i.i_crit_edge, %if.end7.i.i
  %size.087.i.i.i = phi i32 [ 0, %if.end7.i.i ], [ %size.1.i.i.i, %cleanup.i.i.i.for.body.i.i.i_crit_edge ]
  %i.085.i.i.i = phi i32 [ 0, %if.end7.i.i ], [ %inc.i.i.i, %cleanup.i.i.i.for.body.i.i.i_crit_edge ]
  %sh_prom.i.i.i = zext i32 %i.085.i.i.i to i64
  %shl.i.i.i = shl nuw i64 1, %sh_prom.i.i.i
  %and6.i.i.i = and i64 %and.i.i.i, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6.i.i.i)
  %tobool.not.i.i.i = icmp eq i64 %and6.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.cleanup.i.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.i.cleanup.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  %63 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fwrt, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_trans, ptr %64, i32 0, i32 32, i32 18, i32 %i.085.i.i.i
  %65 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i.i.i, align 4
  %67 = ptrtoint ptr %reg_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %reg_data.i.i.i, align 4
  %tobool11.not.i.i.i = icmp eq ptr %66, null
  br i1 %tobool11.not.i.i.i, label %do.end16.i.i.i, label %if.end19.i.i.i

do.end16.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %68 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev27, align 8
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %69, ptr noundef nonnull @.str.12, i32 noundef %i.085.i.i.i) #19
  br label %cleanup.i.i.i

if.end19.i.i.i:                                   ; preds = %if.end.i.i.i
  %type.i.i.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %66, i32 2, i32 1
  %70 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %type.i.i.i, align 1
  %conv.i.i.i = zext i8 %71 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %71)
  %cmp21.i.i.i = icmp ugt i8 %71, 18
  br i1 %cmp21.i.i.i, label %if.end19.i.i.i.cleanup.i.i.i_crit_edge, label %if.end24.i.i.i

if.end19.i.i.i.cleanup.i.i.i_crit_edge:           ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.i.i.i

if.end24.i.i.i:                                   ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %71)
  %cmp25.i.i.i = icmp ne i8 %71, 11
  %or.cond.i33.i.i = select i1 %cmp25.i.i.i, i1 true, i1 %cmp27.not.i.i.i
  br i1 %or.cond.i33.i.i, label %if.end37.i.i.i, label %do.end33.i.i.i

do.end33.i.i.i:                                   ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %72 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev27, align 8
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %73, ptr noundef nonnull @.str.13, i32 noundef %52) #19
  br label %cleanup.i.i.i

if.end37.i.i.i:                                   ; preds = %if.end24.i.i.i
  %arrayidx38.i.i.i = getelementptr [19 x %struct.iwl_dump_ini_mem_ops], ptr @iwl_dump_ini_region_ops, i32 0, i32 %conv.i.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %66, i32 0, i32 2
  %id3.i.i.i.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %66, i32 2
  %74 = ptrtoint ptr %id3.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %id3.i.i.i.i, align 1
  %76 = call i32 @llvm.bswap.i32(i32 %75) #19
  %77 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %data.i.i.i.i, align 1
  %79 = call i32 @llvm.bswap.i32(i32 %78) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %79)
  %cmp.i.i34.i.i = icmp ugt i32 %79, 1
  %and.i.i.i.i = and i32 %76, 65535
  %spec.select.i.i.i.i = select i1 %cmp.i.i34.i.i, i32 %and.i.i.i.i, i32 %76
  %80 = ptrtoint ptr %arrayidx38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx38.i.i.i, align 4
  %tobool.not.i.i35.i.i = icmp eq ptr %81, null
  br i1 %tobool.not.i.i35.i.i, label %if.end37.i.i.i.iwl_dump_ini_mem.exit.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end37.i.i.i.iwl_dump_ini_mem.exit.i.i.i_crit_edge: ; preds = %if.end37.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_dump_ini_mem.exit.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end37.i.i.i
  %82 = lshr i32 36867, %conv.i.i.i
  %83 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool5.not.i.not.i.i.i = icmp eq i32 %83, 0
  br i1 %tobool5.not.i.not.i.i.i, label %if.end11.i.i.i.i, label %lor.lhs.false.i.i.i.i.iwl_dump_ini_mem.exit.i.i.i_crit_edge

lor.lhs.false.i.i.i.i.iwl_dump_ini_mem.exit.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_dump_ini_mem.exit.i.i.i

if.end11.i.i.i.i:                                 ; preds = %lor.lhs.false.i.i.i.i
  %get_size.i.i.i.i = getelementptr [19 x %struct.iwl_dump_ini_mem_ops], ptr @iwl_dump_ini_region_ops, i32 0, i32 %conv.i.i.i, i32 1
  %84 = ptrtoint ptr %get_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %get_size.i.i.i.i, align 4
  %fill_mem_hdr.i.i.i.i = getelementptr [19 x %struct.iwl_dump_ini_mem_ops], ptr @iwl_dump_ini_region_ops, i32 0, i32 %conv.i.i.i, i32 2
  %86 = ptrtoint ptr %fill_mem_hdr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %fill_mem_hdr.i.i.i.i, align 4
  %fill_range.i.i.i.i = getelementptr [19 x %struct.iwl_dump_ini_mem_ops], ptr @iwl_dump_ini_region_ops, i32 0, i32 %conv.i.i.i, i32 3
  %88 = ptrtoint ptr %fill_range.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %fill_range.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %85(ptr noundef %fwrt, ptr noundef nonnull %reg_data.i.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool13.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool13.not.i.i.i.i, label %if.end11.i.i.i.i.iwl_dump_ini_mem.exit.i.i.i_crit_edge, label %if.end15.i.i.i.i

if.end11.i.i.i.i.iwl_dump_ini_mem.exit.i.i.i_crit_edge: ; preds = %if.end11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_dump_ini_mem.exit.i.i.i

if.end15.i.i.i.i:                                 ; preds = %if.end11.i.i.i.i
  %add.i.i.i.i = add i32 %call.i.i.i.i, 20
  %call16.i.i.i.i = call noalias ptr @vzalloc(i32 noundef %add.i.i.i.i) #23
  %tobool17.not.i.i.i.i = icmp eq ptr %call16.i.i.i.i, null
  br i1 %tobool17.not.i.i.i.i, label %if.end15.i.i.i.i.iwl_dump_ini_mem.exit.i.i.i_crit_edge, label %if.end19.i.i.i.i

if.end15.i.i.i.i.iwl_dump_ini_mem.exit.i.i.i_crit_edge: ; preds = %if.end15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_dump_ini_mem.exit.i.i.i

if.end19.i.i.i.i:                                 ; preds = %if.end15.i.i.i.i
  %add20.i.i.i.i = add i32 %call.i.i.i.i, 8
  %size21.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call16.i.i.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %size21.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %add20.i.i.i.i, ptr %size21.i.i.i.i, align 1
  %data22.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call16.i.i.i.i, i32 0, i32 2
  %91 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %type.i.i.i, align 1
  %93 = ptrtoint ptr %data22.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %data22.i.i.i.i, align 1
  %sub_type.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_region_tlv, ptr %data.i.i.i.i, i32 0, i32 3
  %94 = ptrtoint ptr %sub_type.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %sub_type.i.i.i.i, align 1
  %sub_type26.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_error_dump_data, ptr %data22.i.i.i.i, i32 0, i32 1
  %96 = ptrtoint ptr %sub_type26.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %sub_type26.i.i.i.i, align 1
  %sub_type_ver.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_region_tlv, ptr %data.i.i.i.i, i32 0, i32 4
  %97 = ptrtoint ptr %sub_type_ver.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %sub_type_ver.i.i.i.i, align 1
  %sub_type_ver27.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_error_dump_data, ptr %data22.i.i.i.i, i32 0, i32 2
  %99 = ptrtoint ptr %sub_type_ver27.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %sub_type_ver27.i.i.i.i, align 1
  %reserved.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_region_tlv, ptr %data.i.i.i.i, i32 0, i32 5
  %100 = ptrtoint ptr %reserved.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %reserved.i.i.i.i, align 1
  %reserved28.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_error_dump_data, ptr %data22.i.i.i.i, i32 0, i32 3
  %102 = ptrtoint ptr %reserved28.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %reserved28.i.i.i.i, align 1
  %103 = call i32 @llvm.bswap.i32(i32 %call.i.i.i.i) #19
  %len.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call16.i.i.i.i, i32 1, i32 0, i32 1
  %104 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %104, i32 4)
  store i32 %103, ptr %len.i.i.i.i, align 1
  %105 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev27, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %106, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dump_ini_mem, ptr noundef nonnull @.str.14, i32 noundef %spec.select.i.i.i.i, i32 noundef %conv.i.i.i) #19
  %call33.i.i.i.i = call i32 %81(ptr noundef %fwrt, ptr noundef nonnull %reg_data.i.i.i) #19
  %data34.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call16.i.i.i.i, i32 1, i32 1
  %107 = call i32 @llvm.bswap.i32(i32 %spec.select.i.i.i.i) #19
  %region_id.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call16.i.i.i.i, i32 2
  %108 = ptrtoint ptr %region_id.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %region_id.i.i.i.i, align 4
  %109 = call i32 @llvm.bswap.i32(i32 %call33.i.i.i.i) #19
  %num_of_ranges36.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call16.i.i.i.i, i32 2, i32 0, i32 1
  %110 = ptrtoint ptr %num_of_ranges36.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %num_of_ranges36.i.i.i.i, align 4
  %name_len.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call16.i.i.i.i, i32 2, i32 1
  %111 = ptrtoint ptr %name_len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 536870912, ptr %name_len.i.i.i.i, align 4
  %name.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call16.i.i.i.i, i32 3
  %name38.i.i.i.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %66, i32 3
  %112 = call ptr @memcpy(ptr %name.i.i.i.i, ptr %name38.i.i.i.i, i32 32)
  %call41.i.i.i.i = call ptr %87(ptr noundef %fwrt, ptr noundef nonnull %reg_data.i.i.i, ptr noundef %data34.i.i.i.i) #19
  %tobool42.not.i.i.i.i = icmp eq ptr %call41.i.i.i.i, null
  br i1 %tobool42.not.i.i.i.i, label %if.end19.i.i.i.i.out_err.i.i.i.i_crit_edge, label %for.cond.preheader.i.i.i.i

if.end19.i.i.i.i.out_err.i.i.i.i_crit_edge:       ; preds = %if.end19.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_err.i.i.i.i

for.cond.preheader.i.i.i.i:                       ; preds = %if.end19.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i.i.i)
  %cmp52135.not.i.i.i.i = icmp eq i32 %call33.i.i.i.i, 0
  br i1 %cmp52135.not.i.i.i.i, label %for.cond.preheader.i.i.i.i.for.end.i.i.i.i_crit_edge, label %for.cond.preheader.i.i.i.i.for.body.i.i.i.i_crit_edge

for.cond.preheader.i.i.i.i.for.body.i.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i.i
  br label %for.body.i.i.i.i

for.cond.preheader.i.i.i.i.for.end.i.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.cond.preheader.i.i.i.i.for.body.i.i.i.i_crit_edge
  %range.0137.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %call41.i.i.i.i, %for.cond.preheader.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %i.0136.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %call55.i.i.i.i = call i32 %89(ptr noundef %fwrt, ptr noundef nonnull %reg_data.i.i.i, ptr noundef %range.0137.i.i.i.i, i32 noundef %i.0136.i.i.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i.i.i)
  %cmp56.i.i.i.i = icmp slt i32 %call55.i.i.i.i, 0
  br i1 %cmp56.i.i.i.i, label %for.body.i.i.i.i.out_err.i.i.i.i_crit_edge, label %for.inc.i.i.i.i

for.body.i.i.i.i.out_err.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_err.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %range.0137.i.i.i.i, i32 %call55.i.i.i.i
  %inc.i.i.i.i = add nuw i32 %i.0136.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %call33.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.for.end.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.for.end.i.i.i.i_crit_edge:        ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i.i.i.i

for.end.i.i.i.i:                                  ; preds = %for.inc.i.i.i.i.for.end.i.i.i.i_crit_edge, %for.cond.preheader.i.i.i.i.for.end.i.i.i.i_crit_edge
  %113 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %25, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call16.i.i.i.i, ptr noundef %114, ptr noundef nonnull %dump_list.i) #19
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %for.end.i.i.i.i.list_add_tail.exit.i.i.i.i_crit_edge

for.end.i.i.i.i.list_add_tail.exit.i.i.i.i_crit_edge: ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_add_tail.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %115 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call16.i.i.i.i, ptr %25, align 4
  %116 = ptrtoint ptr %call16.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %dump_list.i, ptr %call16.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call16.i.i.i.i, i32 0, i32 1
  %117 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %114, ptr %prev3.i.i.i.i.i.i, align 4
  %118 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %call16.i.i.i.i, ptr %114, align 4
  br label %list_add_tail.exit.i.i.i.i

list_add_tail.exit.i.i.i.i:                       ; preds = %if.end.i.i.i.i.i.i, %for.end.i.i.i.i.list_add_tail.exit.i.i.i.i_crit_edge
  %119 = ptrtoint ptr %size21.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %119, i32 4)
  %120 = load i32, ptr %size21.i.i.i.i, align 1
  br label %iwl_dump_ini_mem.exit.i.i.i

out_err.i.i.i.i:                                  ; preds = %for.body.i.i.i.i.out_err.i.i.i.i_crit_edge, %if.end19.i.i.i.i.out_err.i.i.i.i_crit_edge
  %.str.16.sink.i.i.i.i = phi ptr [ @.str.15, %if.end19.i.i.i.i.out_err.i.i.i.i_crit_edge ], [ @.str.16, %for.body.i.i.i.i.out_err.i.i.i.i_crit_edge ]
  %121 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev27, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %122, i32 noundef 0, ptr noundef nonnull %.str.16.sink.i.i.i.i, i32 noundef %spec.select.i.i.i.i, i32 noundef %conv.i.i.i) #19
  call void @vfree(ptr noundef nonnull %call16.i.i.i.i) #19
  br label %iwl_dump_ini_mem.exit.i.i.i

iwl_dump_ini_mem.exit.i.i.i:                      ; preds = %out_err.i.i.i.i, %list_add_tail.exit.i.i.i.i, %if.end15.i.i.i.i.iwl_dump_ini_mem.exit.i.i.i_crit_edge, %if.end11.i.i.i.i.iwl_dump_ini_mem.exit.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.iwl_dump_ini_mem.exit.i.i.i_crit_edge, %if.end37.i.i.i.iwl_dump_ini_mem.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ 0, %out_err.i.i.i.i ], [ %120, %list_add_tail.exit.i.i.i.i ], [ 0, %lor.lhs.false.i.i.i.i.iwl_dump_ini_mem.exit.i.i.i_crit_edge ], [ 0, %if.end37.i.i.i.iwl_dump_ini_mem.exit.i.i.i_crit_edge ], [ 0, %if.end11.i.i.i.i.iwl_dump_ini_mem.exit.i.i.i_crit_edge ], [ 0, %if.end15.i.i.i.i.iwl_dump_ini_mem.exit.i.i.i_crit_edge ]
  %add.i.i.i = add i32 %retval.0.i.i.i.i, %size.087.i.i.i
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %iwl_dump_ini_mem.exit.i.i.i, %do.end33.i.i.i, %if.end19.i.i.i.cleanup.i.i.i_crit_edge, %do.end16.i.i.i, %for.body.i.i.i.cleanup.i.i.i_crit_edge
  %size.1.i.i.i = phi i32 [ %size.087.i.i.i, %do.end33.i.i.i ], [ %add.i.i.i, %iwl_dump_ini_mem.exit.i.i.i ], [ %size.087.i.i.i, %do.end16.i.i.i ], [ %size.087.i.i.i, %for.body.i.i.i.cleanup.i.i.i_crit_edge ], [ %size.087.i.i.i, %if.end19.i.i.i.cleanup.i.i.i_crit_edge ]
  %inc.i.i.i = add nuw nsw i32 %i.085.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 64
  br i1 %exitcond.not.i.i.i, label %for.end.i.i.i, label %cleanup.i.i.i.for.body.i.i.i_crit_edge

cleanup.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.1.i.i.i)
  %tobool40.not.i.i.i = icmp eq i32 %size.1.i.i.i, 0
  br i1 %tobool40.not.i.i.i, label %iwl_dump_ini_trigger.exit.thread.i.i, label %if.then41.i.i.i

iwl_dump_ini_trigger.exit.thread.i.i:             ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_data.i.i.i) #19
  br label %if.then11.i.i

if.then41.i.i.i:                                  ; preds = %for.end.i.i.i
  %123 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %fwrt, align 8
  %debug_info_tlv_list.i.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %124, i32 0, i32 32, i32 19
  %125 = ptrtoint ptr %debug_info_tlv_list.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %node.0186.i.i.i.i = load ptr, ptr %debug_info_tlv_list.i.i.i.i, align 4
  %cmp.not187.i.i.i.i = icmp eq ptr %node.0186.i.i.i.i, %debug_info_tlv_list.i.i.i.i
  br i1 %cmp.not187.i.i.i.i, label %if.then41.i.i.i.for.end.i76.i.i.i_crit_edge, label %if.then41.i.i.i.for.body.i73.i.i.i_crit_edge

if.then41.i.i.i.for.body.i73.i.i.i_crit_edge:     ; preds = %if.then41.i.i.i
  br label %for.body.i73.i.i.i

if.then41.i.i.i.for.end.i76.i.i.i_crit_edge:      ; preds = %if.then41.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i76.i.i.i

for.body.i73.i.i.i:                               ; preds = %for.body.i73.i.i.i.for.body.i73.i.i.i_crit_edge, %if.then41.i.i.i.for.body.i73.i.i.i_crit_edge
  %node.0190.i.i.i.i = phi ptr [ %node.0.i.i.i.i, %for.body.i73.i.i.i.for.body.i73.i.i.i_crit_edge ], [ %node.0186.i.i.i.i, %if.then41.i.i.i.for.body.i73.i.i.i_crit_edge ]
  %size.0189.i.i.i.i = phi i32 [ %add.i71.i.i.i, %for.body.i73.i.i.i.for.body.i73.i.i.i_crit_edge ], [ 156, %if.then41.i.i.i.for.body.i73.i.i.i_crit_edge ]
  %num_of_cfg_names.0188.i.i.i.i = phi i32 [ %inc.i72.i.i.i, %for.body.i73.i.i.i.for.body.i73.i.i.i_crit_edge ], [ 0, %if.then41.i.i.i.for.body.i73.i.i.i_crit_edge ]
  %add.i71.i.i.i = add i32 %size.0189.i.i.i.i, 72
  %inc.i72.i.i.i = add i32 %num_of_cfg_names.0188.i.i.i.i, 1
  %126 = ptrtoint ptr %node.0190.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %node.0.i.i.i.i = load ptr, ptr %node.0190.i.i.i.i, align 4
  %cmp.not.i.i36.i.i = icmp eq ptr %node.0.i.i.i.i, %debug_info_tlv_list.i.i.i.i
  br i1 %cmp.not.i.i36.i.i, label %for.body.i73.i.i.i.for.end.i76.i.i.i_crit_edge, label %for.body.i73.i.i.i.for.body.i73.i.i.i_crit_edge

for.body.i73.i.i.i.for.body.i73.i.i.i_crit_edge:  ; preds = %for.body.i73.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i73.i.i.i

for.body.i73.i.i.i.for.end.i76.i.i.i_crit_edge:   ; preds = %for.body.i73.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i76.i.i.i

for.end.i76.i.i.i:                                ; preds = %for.body.i73.i.i.i.for.end.i76.i.i.i_crit_edge, %if.then41.i.i.i.for.end.i76.i.i.i_crit_edge
  %num_of_cfg_names.0.lcssa.i.i.i.i = phi i32 [ 0, %if.then41.i.i.i.for.end.i76.i.i.i_crit_edge ], [ %inc.i72.i.i.i, %for.body.i73.i.i.i.for.end.i76.i.i.i_crit_edge ]
  %size.0.lcssa.i.i.i.i = phi i32 [ 156, %if.then41.i.i.i.for.end.i76.i.i.i_crit_edge ], [ %add.i71.i.i.i, %for.body.i73.i.i.i.for.end.i76.i.i.i_crit_edge ]
  %add11.i.i.i.i = add i32 %size.0.lcssa.i.i.i.i, 12
  %call.i74.i.i.i = call noalias ptr @vzalloc(i32 noundef %add11.i.i.i.i) #23
  %tobool.not.i75.i.i.i = icmp eq ptr %call.i74.i.i.i, null
  br i1 %tobool.not.i75.i.i.i, label %for.end.i76.i.i.i.iwl_dump_ini_trigger.exit.i.i_crit_edge, label %if.end.i.i.i.i

for.end.i76.i.i.i.iwl_dump_ini_trigger.exit.i.i_crit_edge: ; preds = %for.end.i76.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_dump_ini_trigger.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.end.i76.i.i.i
  %size12.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call.i74.i.i.i, i32 0, i32 1
  %127 = ptrtoint ptr %size12.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %127, i32 4)
  store i32 %size.0.lcssa.i.i.i.i, ptr %size12.i.i.i.i, align 1
  %data.i77.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call.i74.i.i.i, i32 0, i32 2
  %128 = ptrtoint ptr %data.i77.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %128, i32 4)
  store i32 128, ptr %data.i77.i.i.i, align 1
  %sub.i.i37.i.i = add i32 %size.0.lcssa.i.i.i.i, -8
  %129 = call i32 @llvm.bswap.i32(i32 %sub.i.i37.i.i) #19
  %len.i78.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call.i74.i.i.i, i32 1, i32 0, i32 1
  %130 = ptrtoint ptr %len.i78.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %130, i32 4)
  store i32 %129, ptr %len.i78.i.i.i, align 1
  %data13.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call.i74.i.i.i, i32 1, i32 1
  %131 = ptrtoint ptr %data13.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %131, i32 4)
  store i32 16777216, ptr %data13.i.i.i.i, align 1
  %132 = ptrtoint ptr %time_point.i32.i.i to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %133 = load i32, ptr %time_point.i32.i.i, align 1
  %time_point15.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call.i74.i.i.i, i32 2
  %134 = ptrtoint ptr %time_point15.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %134, i32 4)
  store i32 %133, ptr %time_point15.i.i.i.i, align 1
  %trigger_reason.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_trigger_tlv, ptr %49, i32 0, i32 2
  %135 = ptrtoint ptr %trigger_reason.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %135, i32 4)
  %136 = load i32, ptr %trigger_reason.i.i.i.i, align 1
  %trigger_reason16.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call.i74.i.i.i, i32 2, i32 0, i32 1
  %137 = ptrtoint ptr %trigger_reason16.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %137, i32 4)
  store i32 %136, ptr %trigger_reason16.i.i.i.i, align 1
  %138 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %fwrt, align 8
  %external_ini_cfg.i.i38.i.i = getelementptr inbounds %struct.iwl_trans, ptr %139, i32 0, i32 32, i32 11
  %140 = ptrtoint ptr %external_ini_cfg.i.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %external_ini_cfg.i.i38.i.i, align 8
  %142 = call i32 @llvm.bswap.i32(i32 %141) #19
  %external_cfg_state.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call.i74.i.i.i, i32 2, i32 1
  %143 = ptrtoint ptr %external_cfg_state.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %143, i32 4)
  store i32 %142, ptr %external_cfg_state.i.i.i.i, align 1
  %fw_ver.i.i.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 8
  %144 = ptrtoint ptr %fw_ver.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %fw_ver.i.i.i.i, align 4
  %conv.i79.i.i.i = zext i8 %145 to i32
  %146 = shl nuw i32 %conv.i79.i.i.i, 24
  %ver_type.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call.i74.i.i.i, i32 3
  %147 = ptrtoint ptr %ver_type.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %147, i32 4)
  store i32 %146, ptr %ver_type.i.i.i.i, align 1
  %subtype.i.i.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 8, i32 1
  %148 = ptrtoint ptr %subtype.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %subtype.i.i.i.i, align 1
  %conv23.i.i.i.i = zext i8 %149 to i32
  %150 = shl nuw i32 %conv23.i.i.i.i, 24
  %ver_subtype.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call.i74.i.i.i, i32 3, i32 0, i32 1
  %151 = ptrtoint ptr %ver_subtype.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %151, i32 4)
  store i32 %150, ptr %ver_subtype.i.i.i.i, align 1
  %hw_rev_step.i.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %139, i32 0, i32 11
  %152 = ptrtoint ptr %hw_rev_step.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %hw_rev_step.i.i.i.i, align 4
  %154 = call i32 @llvm.bswap.i32(i32 %153) #19
  %hw_step.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call.i74.i.i.i, i32 3, i32 1
  %155 = ptrtoint ptr %hw_step.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %155, i32 4)
  store i32 %154, ptr %hw_step.i.i.i.i, align 1
  %hw_rev.i.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %139, i32 0, i32 10
  %156 = ptrtoint ptr %hw_rev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %hw_rev.i.i.i.i, align 8
  %and.i80.i.i.i = lshr i32 %157, 4
  %shr.i.i.i.i = and i32 %and.i80.i.i.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %shr.i.i.i.i)
  %cmp26.i.i.i.i = icmp eq i32 %shr.i.i.i.i, 66
  br i1 %cmp26.i.i.i.i, label %if.then28.i.i.i.i, label %if.end.i.i.i.i.if.end43.i.i.i.i_crit_edge

if.end.i.i.i.i.if.end43.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end43.i.i.i.i

if.then28.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %trans_cfg.i.i.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %139, i32 0, i32 3
  %158 = ptrtoint ptr %trans_cfg.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %trans_cfg.i.i.i.i.i, align 4
  %umac_prph_offset.i.i.i.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %159, i32 0, i32 2
  %160 = ptrtoint ptr %umac_prph_offset.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %umac_prph_offset.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %161, 10498200
  %call.i.i.i39.i.i = call i32 @iwl_read_prph(ptr noundef %139, i32 noundef %add.i.i.i.i.i) #19
  %162 = shl i32 %call.i.i.i39.i.i, 8
  %shl41.i.i.i.i = and i32 %162, 12288
  %or42.i.i.i.i = or i32 %shl41.i.i.i.i, 66
  br label %if.end43.i.i.i.i

if.end43.i.i.i.i:                                 ; preds = %if.then28.i.i.i.i, %if.end.i.i.i.i.if.end43.i.i.i.i_crit_edge
  %hw_type.0.i.i.i.i = phi i32 [ %or42.i.i.i.i, %if.then28.i.i.i.i ], [ %shr.i.i.i.i, %if.end.i.i.i.i.if.end43.i.i.i.i_crit_edge ]
  %163 = call i32 @llvm.bswap.i32(i32 %hw_type.0.i.i.i.i) #19
  %hw_type44.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call.i74.i.i.i, i32 4
  %164 = ptrtoint ptr %hw_type44.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %164, i32 4)
  store i32 %163, ptr %hw_type44.i.i.i.i, align 1
  %165 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %fwrt, align 8
  %hw_rf_id.i.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %166, i32 0, i32 12
  %167 = ptrtoint ptr %hw_rf_id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %hw_rf_id.i.i.i.i, align 8
  %and46.i.i.i.i = shl i32 %168, 24
  %169 = and i32 %and46.i.i.i.i, 251658240
  %rf_id_flavor.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call.i74.i.i.i, i32 4, i32 0, i32 1
  %170 = ptrtoint ptr %rf_id_flavor.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %170, i32 4)
  store i32 %169, ptr %rf_id_flavor.i.i.i.i, align 1
  %171 = load i32, ptr %hw_rf_id.i.i.i.i, align 8
  %172 = shl i32 %171, 20
  %173 = and i32 %172, 251658240
  %rf_id_dash.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call.i74.i.i.i, i32 4, i32 1
  %174 = ptrtoint ptr %rf_id_dash.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %174, i32 4)
  store i32 %173, ptr %rf_id_dash.i.i.i.i, align 1
  %175 = load i32, ptr %hw_rf_id.i.i.i.i, align 8
  %176 = shl i32 %175, 16
  %177 = and i32 %176, 251658240
  %rf_id_step.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call.i74.i.i.i, i32 5
  %178 = ptrtoint ptr %rf_id_step.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %178, i32 4)
  store i32 %177, ptr %rf_id_step.i.i.i.i, align 1
  %179 = load i32, ptr %hw_rf_id.i.i.i.i, align 8
  %and58.i.i.i.i = lshr i32 %179, 12
  %shr59.i.i.i.i = and i32 %and58.i.i.i.i, 4095
  %180 = call i32 @llvm.bswap.i32(i32 %shr59.i.i.i.i) #19
  %rf_id_type.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call.i74.i.i.i, i32 5, i32 0, i32 1
  %181 = ptrtoint ptr %rf_id_type.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %181, i32 4)
  store i32 %180, ptr %rf_id_type.i.i.i.i, align 1
  %lmac_major.i.i.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 8, i32 2
  %182 = ptrtoint ptr %lmac_major.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %lmac_major.i.i.i.i, align 4
  %184 = call i32 @llvm.bswap.i32(i32 %183) #19
  %lmac_major62.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call.i74.i.i.i, i32 5, i32 1
  %185 = ptrtoint ptr %lmac_major62.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %185, i32 4)
  store i32 %184, ptr %lmac_major62.i.i.i.i, align 1
  %lmac_minor.i.i.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 8, i32 3
  %186 = ptrtoint ptr %lmac_minor.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %lmac_minor.i.i.i.i, align 4
  %188 = call i32 @llvm.bswap.i32(i32 %187) #19
  %lmac_minor65.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call.i74.i.i.i, i32 6
  %189 = ptrtoint ptr %lmac_minor65.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %189, i32 4)
  store i32 %188, ptr %lmac_minor65.i.i.i.i, align 1
  %umac_major.i.i.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 8, i32 4
  %190 = ptrtoint ptr %umac_major.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %umac_major.i.i.i.i, align 4
  %192 = call i32 @llvm.bswap.i32(i32 %191) #19
  %umac_major68.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call.i74.i.i.i, i32 6, i32 0, i32 1
  %193 = ptrtoint ptr %umac_major68.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %193, i32 4)
  store i32 %192, ptr %umac_major68.i.i.i.i, align 1
  %umac_minor.i.i.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 8, i32 5
  %194 = ptrtoint ptr %umac_minor.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %umac_minor.i.i.i.i, align 4
  %196 = call i32 @llvm.bswap.i32(i32 %195) #19
  %umac_minor71.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call.i74.i.i.i, i32 6, i32 1
  %197 = ptrtoint ptr %umac_minor71.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %197, i32 4)
  store i32 %196, ptr %umac_minor71.i.i.i.i, align 1
  %ini_dest.i.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %166, i32 0, i32 32, i32 16
  %198 = ptrtoint ptr %ini_dest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %ini_dest.i.i.i.i, align 8
  %200 = call i32 @llvm.bswap.i32(i32 %199) #19
  %fw_mon_mode.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call.i74.i.i.i, i32 7
  %201 = ptrtoint ptr %fw_mon_mode.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %201, i32 4)
  store i32 %200, ptr %fw_mon_mode.i.i.i.i, align 1
  %202 = ptrtoint ptr %regions_mask2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %202, i32 8)
  %203 = load i64, ptr %regions_mask2.i.i.i, align 1
  %unsupported_region_msk.i.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %166, i32 0, i32 32, i32 17
  %204 = ptrtoint ptr %unsupported_region_msk.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %unsupported_region_msk.i.i.i.i, align 8
  %206 = xor i64 %205, -1
  %207 = call i64 @llvm.bswap.i64(i64 %206) #19
  %and76.i.i.i.i = and i64 %207, %203
  %regions_mask77.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call.i74.i.i.i, i32 7, i32 0, i32 1
  %208 = ptrtoint ptr %regions_mask77.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %208, i32 8)
  store i64 %and76.i.i.i.i, ptr %regions_mask77.i.i.i.i, align 1
  %build_tag_len.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call.i74.i.i.i, i32 8
  %209 = ptrtoint ptr %build_tag_len.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %209, i32 4)
  store i32 1073741824, ptr %build_tag_len.i.i.i.i, align 1
  %build_tag.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call.i74.i.i.i, i32 8, i32 0, i32 1
  %fw.i.i.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 1
  %210 = ptrtoint ptr %fw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %fw.i.i.i.i, align 4
  %human_readable.i.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %211, i32 0, i32 19
  %212 = call ptr @memcpy(ptr %build_tag.i.i.i.i, ptr %human_readable.i.i.i.i, i32 64)
  %213 = call i32 @llvm.bswap.i32(i32 %num_of_cfg_names.0.lcssa.i.i.i.i) #19
  %num_of_cfg_names81.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call.i74.i.i.i, i32 13, i32 1
  %214 = ptrtoint ptr %num_of_cfg_names81.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %214, i32 4)
  store i32 %213, ptr %num_of_cfg_names81.i.i.i.i, align 1
  %debug_info_tlv_list85.i.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %166, i32 0, i32 32, i32 19
  %215 = ptrtoint ptr %debug_info_tlv_list85.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %node.1192.i.i.i.i = load ptr, ptr %debug_info_tlv_list85.i.i.i.i, align 4
  %cmp94.not193.i.i.i.i = icmp eq ptr %node.1192.i.i.i.i, %debug_info_tlv_list85.i.i.i.i
  br i1 %cmp94.not193.i.i.i.i, label %if.end43.i.i.i.i.for.end112.i.i.i.i_crit_edge, label %for.body98.preheader.i.i.i.i

if.end43.i.i.i.i.for.end112.i.i.i.i_crit_edge:    ; preds = %if.end43.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end112.i.i.i.i

for.body98.preheader.i.i.i.i:                     ; preds = %if.end43.i.i.i.i
  %cfg_names.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call.i74.i.i.i, i32 14
  br label %for.body98.i.i.i.i

for.body98.i.i.i.i:                               ; preds = %for.body98.i.i.i.i.for.body98.i.i.i.i_crit_edge, %for.body98.preheader.i.i.i.i
  %node.1195.i.i.i.i = phi ptr [ %node.1.i.i.i.i, %for.body98.i.i.i.i.for.body98.i.i.i.i_crit_edge ], [ %node.1192.i.i.i.i, %for.body98.preheader.i.i.i.i ]
  %cfg_name.0194.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %for.body98.i.i.i.i.for.body98.i.i.i.i_crit_edge ], [ %cfg_names.i.i.i.i, %for.body98.preheader.i.i.i.i ]
  %image_type.i.i.i.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.1195.i.i.i.i, i32 1, i32 1
  %216 = ptrtoint ptr %image_type.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %216, i32 4)
  %217 = load i32, ptr %image_type.i.i.i.i, align 1
  %218 = ptrtoint ptr %cfg_name.0194.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %218, i32 4)
  store i32 %217, ptr %cfg_name.0194.i.i.i.i, align 1
  %cfg_name_len.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_cfg_name, ptr %cfg_name.0194.i.i.i.i, i32 0, i32 1
  %219 = ptrtoint ptr %cfg_name_len.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %219, i32 4)
  store i32 1073741824, ptr %cfg_name_len.i.i.i.i, align 1
  %cfg_name103.i.i.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_cfg_name, ptr %cfg_name.0194.i.i.i.i, i32 0, i32 2
  %debug_cfg_name.i.i.i.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.1195.i.i.i.i, i32 1, i32 1, i32 1
  %220 = call ptr @memcpy(ptr %cfg_name103.i.i.i.i, ptr %debug_cfg_name.i.i.i.i, i32 64)
  %incdec.ptr.i.i.i.i = getelementptr %struct.iwl_fw_ini_dump_cfg_name, ptr %cfg_name.0194.i.i.i.i, i32 1
  %221 = ptrtoint ptr %node.1195.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %node.1.i.i.i.i = load ptr, ptr %node.1195.i.i.i.i, align 4
  %cmp94.not.i.i.i.i = icmp eq ptr %node.1.i.i.i.i, %debug_info_tlv_list85.i.i.i.i
  br i1 %cmp94.not.i.i.i.i, label %for.body98.i.i.i.i.for.end112.i.i.i.i_crit_edge, label %for.body98.i.i.i.i.for.body98.i.i.i.i_crit_edge

for.body98.i.i.i.i.for.body98.i.i.i.i_crit_edge:  ; preds = %for.body98.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body98.i.i.i.i

for.body98.i.i.i.i.for.end112.i.i.i.i_crit_edge:  ; preds = %for.body98.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end112.i.i.i.i

for.end112.i.i.i.i:                               ; preds = %for.body98.i.i.i.i.for.end112.i.i.i.i_crit_edge, %if.end43.i.i.i.i.for.end112.i.i.i.i_crit_edge
  %222 = ptrtoint ptr %dump_list.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %dump_list.i, align 4
  %call.i.i.i81.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %call.i74.i.i.i, ptr noundef nonnull %dump_list.i, ptr noundef %223) #19
  br i1 %call.i.i.i81.i.i.i, label %if.end.i.i.i83.i.i.i, label %for.end112.i.i.i.i.list_add.exit.i.i.i.i_crit_edge

for.end112.i.i.i.i.list_add.exit.i.i.i.i_crit_edge: ; preds = %for.end112.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_add.exit.i.i.i.i

if.end.i.i.i83.i.i.i:                             ; preds = %for.end112.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %call.i74.i.i.i, ptr %prev1.i.i.i.i.i.i, align 4
  %225 = ptrtoint ptr %call.i74.i.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %223, ptr %call.i74.i.i.i, align 4
  %prev3.i.i.i82.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i74.i.i.i, i32 0, i32 1
  %226 = ptrtoint ptr %prev3.i.i.i82.i.i.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %dump_list.i, ptr %prev3.i.i.i82.i.i.i, align 4
  %227 = ptrtoint ptr %dump_list.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store volatile ptr %call.i74.i.i.i, ptr %dump_list.i, align 4
  br label %list_add.exit.i.i.i.i

list_add.exit.i.i.i.i:                            ; preds = %if.end.i.i.i83.i.i.i, %for.end112.i.i.i.i.list_add.exit.i.i.i.i_crit_edge
  %228 = ptrtoint ptr %size12.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %228, i32 4)
  %229 = load i32, ptr %size12.i.i.i.i, align 1
  br label %iwl_dump_ini_trigger.exit.i.i

iwl_dump_ini_trigger.exit.i.i:                    ; preds = %list_add.exit.i.i.i.i, %for.end.i76.i.i.i.iwl_dump_ini_trigger.exit.i.i_crit_edge
  %retval.0.i84.i.i.i = phi i32 [ %229, %list_add.exit.i.i.i.i ], [ 0, %for.end.i76.i.i.i.iwl_dump_ini_trigger.exit.i.i_crit_edge ]
  %add43.i.i.i = add i32 %retval.0.i84.i.i.i, %size.1.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_data.i.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add43.i.i.i)
  %tobool10.not.i.i = icmp eq i32 %add43.i.i.i, 0
  br i1 %tobool10.not.i.i, label %iwl_dump_ini_trigger.exit.i.i.if.then11.i.i_crit_edge, label %if.end12.i.i

iwl_dump_ini_trigger.exit.i.i.if.then11.i.i_crit_edge: ; preds = %iwl_dump_ini_trigger.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %iwl_dump_ini_trigger.exit.i.i.if.then11.i.i_crit_edge, %iwl_dump_ini_trigger.exit.thread.i.i
  call void @vfree(ptr noundef nonnull %call4.i.i) #19
  br label %iwl_fw_error_ini_dump.exit

if.end12.i.i:                                     ; preds = %iwl_dump_ini_trigger.exit.i.i
  %data.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call4.i.i, i32 0, i32 2
  %230 = ptrtoint ptr %data.i.i to i32
  call void @__asan_storeN_noabort(i32 %230, i32 4)
  store i32 865499156, ptr %data.i.i, align 1
  %231 = ptrtoint ptr %size8.i.i to i32
  call void @__asan_loadN_noabort(i32 %231, i32 4)
  %232 = load i32, ptr %size8.i.i, align 1
  %add.i.i = add i32 %232, %add43.i.i.i
  %233 = call i32 @llvm.bswap.i32(i32 %add.i.i) #19
  %file_len.i.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %call4.i.i, i32 1, i32 0, i32 1
  %234 = ptrtoint ptr %file_len.i.i to i32
  call void @__asan_storeN_noabort(i32 %234, i32 4)
  store i32 %233, ptr %file_len.i.i, align 1
  %235 = ptrtoint ptr %dump_list.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dump_list.i, align 4
  %call.i.i40.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call4.i.i, ptr noundef nonnull %dump_list.i, ptr noundef %236) #19
  br i1 %call.i.i40.i.i, label %if.end.i.i41.i.i, label %if.end12.i.i.iwl_dump_ini_file_gen.exit.i_crit_edge

if.end12.i.i.iwl_dump_ini_file_gen.exit.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_dump_ini_file_gen.exit.i

if.end.i.i41.i.i:                                 ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %236, i32 0, i32 1
  %237 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %call4.i.i, ptr %prev1.i.i.i.i, align 4
  %238 = ptrtoint ptr %call4.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %236, ptr %call4.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call4.i.i, i32 0, i32 1
  %239 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %dump_list.i, ptr %prev3.i.i.i.i, align 4
  %240 = ptrtoint ptr %dump_list.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store volatile ptr %call4.i.i, ptr %dump_list.i, align 4
  br label %iwl_dump_ini_file_gen.exit.i

iwl_dump_ini_file_gen.exit.i:                     ; preds = %if.end.i.i41.i.i, %if.end12.i.i.iwl_dump_ini_file_gen.exit.i_crit_edge
  %241 = ptrtoint ptr %file_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %241, i32 4)
  %242 = load i32, ptr %file_len.i.i, align 1
  %243 = call i32 @llvm.bswap.i32(i32 %242) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %tobool.not.i = icmp eq i32 %242, 0
  br i1 %tobool.not.i, label %iwl_dump_ini_file_gen.exit.i.iwl_fw_error_ini_dump.exit_crit_edge, label %if.end.i

iwl_dump_ini_file_gen.exit.i.iwl_fw_error_ini_dump.exit_crit_edge: ; preds = %iwl_dump_ini_file_gen.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_fw_error_ini_dump.exit

if.end.i:                                         ; preds = %iwl_dump_ini_file_gen.exit.i
  %call1.i = call fastcc ptr @alloc_sgtable(i32 noundef %243) #19
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.end14.i_crit_edge, label %if.then3.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end14.i

if.then3.i:                                       ; preds = %if.end.i
  %call5.i = call i32 @sg_nents(ptr noundef nonnull %call1.i) #19
  %244 = ptrtoint ptr %dump_list.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %entry4.033.i = load ptr, ptr %dump_list.i, align 4
  %cmp.not34.i = icmp eq ptr %entry4.033.i, %dump_list.i
  br i1 %cmp.not34.i, label %if.then3.i.for.end.i_crit_edge, label %if.then3.i.for.body.i_crit_edge

if.then3.i.for.body.i_crit_edge:                  ; preds = %if.then3.i
  br label %for.body.i

if.then3.i.for.end.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then3.i.for.body.i_crit_edge
  %entry4.036.i = phi ptr [ %entry4.0.i, %for.body.i.for.body.i_crit_edge ], [ %entry4.033.i, %if.then3.i.for.body.i_crit_edge ]
  %offs.035.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then3.i.for.body.i_crit_edge ]
  %data.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %entry4.036.i, i32 0, i32 2
  %size.i = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, ptr %entry4.036.i, i32 0, i32 1
  %245 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %245, i32 4)
  %246 = load i32, ptr %size.i, align 1
  %call7.i = call i32 @sg_pcopy_from_buffer(ptr noundef nonnull %call1.i, i32 noundef %call5.i, ptr noundef %data.i, i32 noundef %246, i32 noundef %offs.035.i) #19
  %247 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %247, i32 4)
  %248 = load i32, ptr %size.i, align 1
  %add.i = add i32 %248, %offs.035.i
  %249 = ptrtoint ptr %entry4.036.i to i32
  call void @__asan_loadN_noabort(i32 %249, i32 4)
  %entry4.0.i = load ptr, ptr %entry4.036.i, align 1
  %cmp.not.i95 = icmp eq ptr %entry4.0.i, %dump_list.i
  br i1 %cmp.not.i95, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then3.i.for.end.i_crit_edge
  %250 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %fwrt, align 8
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %251, i32 0, i32 8
  %252 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %dev.i, align 8
  call void @dev_coredumpsg(ptr noundef %253, ptr noundef nonnull %call1.i, i32 noundef %243, i32 noundef 3264) #19
  br label %if.end14.i

if.end14.i:                                       ; preds = %for.end.i, %if.end.i.if.end14.i_crit_edge
  %254 = ptrtoint ptr %dump_list.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load volatile ptr, ptr %dump_list.i, align 4
  %cmp.i.not5.i.i = icmp eq ptr %255, %dump_list.i
  br i1 %cmp.i.not5.i.i, label %if.end14.i.iwl_fw_error_ini_dump.exit_crit_edge, label %if.end14.i.while.body.i.i_crit_edge

if.end14.i.while.body.i.i_crit_edge:              ; preds = %if.end14.i
  br label %while.body.i.i

if.end14.i.iwl_fw_error_ini_dump.exit_crit_edge:  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_fw_error_ini_dump.exit

while.body.i.i:                                   ; preds = %list_del.exit.i.i.while.body.i.i_crit_edge, %if.end14.i.while.body.i.i_crit_edge
  %256 = phi ptr [ %266, %list_del.exit.i.i.while.body.i.i_crit_edge ], [ %255, %if.end14.i.while.body.i.i_crit_edge ]
  %call.i.i.i28.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %256) #19
  br i1 %call.i.i.i28.i, label %if.end.i.i.i29.i, label %while.body.i.i.list_del.exit.i.i_crit_edge

while.body.i.i.list_del.exit.i.i_crit_edge:       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_del.exit.i.i

if.end.i.i.i29.i:                                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %256, i32 0, i32 1
  %257 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %prev.i.i.i.i, align 4
  %259 = ptrtoint ptr %256 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %256, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %260, i32 0, i32 1
  %261 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %258, ptr %prev1.i.i.i.i.i, align 4
  %262 = ptrtoint ptr %258 to i32
  call void @__asan_store4_noabort(i32 %262)
  store volatile ptr %260, ptr %258, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i29.i, %while.body.i.i.list_del.exit.i.i_crit_edge
  %263 = ptrtoint ptr %256 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr inttoptr (i32 256 to ptr), ptr %256, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %256, i32 0, i32 1
  %264 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @vfree(ptr noundef %256) #19
  %265 = ptrtoint ptr %dump_list.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load volatile ptr, ptr %dump_list.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %266, %dump_list.i
  br i1 %cmp.i.not.i.i, label %list_del.exit.i.i.iwl_fw_error_ini_dump.exit_crit_edge, label %list_del.exit.i.i.while.body.i.i_crit_edge

list_del.exit.i.i.while.body.i.i_crit_edge:       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i.i

list_del.exit.i.i.iwl_fw_error_ini_dump.exit_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_fw_error_ini_dump.exit

iwl_fw_error_ini_dump.exit:                       ; preds = %list_del.exit.i.i.iwl_fw_error_ini_dump.exit_crit_edge, %if.end14.i.iwl_fw_error_ini_dump.exit_crit_edge, %iwl_dump_ini_file_gen.exit.i.iwl_fw_error_ini_dump.exit_crit_edge, %if.then11.i.i, %if.end.i.i.iwl_fw_error_ini_dump.exit_crit_edge, %lor.lhs.false2.i.i.iwl_fw_error_ini_dump.exit_crit_edge, %land.lhs.true.i.i.i.i.iwl_fw_error_ini_dump.exit_crit_edge, %iwl_trans_dbg_ini_valid.exit.i.i.i.iwl_fw_error_ini_dump.exit_crit_edge, %if.then32.iwl_fw_error_ini_dump.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dump_list.i) #19
  br label %do.end47

if.else:                                          ; preds = %iwl_trans_dbg_ini_valid.exit
  %fw.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 1
  %267 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %fw.i, align 4
  %dump_mask1.i = getelementptr inbounds %struct.iwl_fw, ptr %268, i32 0, i32 20, i32 7
  %269 = ptrtoint ptr %dump_mask1.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %dump_mask1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dump_data.i.i) #19
  %271 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr inttoptr (i32 -1 to ptr), ptr %dump_data.i.i, align 4, !annotation !100
  %mem_tlv.i.i = getelementptr inbounds %struct.iwl_fw, ptr %268, i32 0, i32 20, i32 5
  %272 = ptrtoint ptr %mem_tlv.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %mem_tlv.i.i, align 4
  %smem_cfg.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11
  %n_mem_tlv.i.i = getelementptr inbounds %struct.iwl_fw, ptr %268, i32 0, i32 20, i32 6
  %274 = ptrtoint ptr %n_mem_tlv.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %n_mem_tlv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %tobool.not.i.i96 = icmp eq i32 %275, 0
  br i1 %tobool.not.i.i96, label %cond.false9.i.i, label %if.else.cond.end12.i.i_crit_edge

if.else.cond.end12.i.i_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end12.i.i

cond.false9.i.i:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %20, i32 0, i32 4
  %276 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %cfg.i.i, align 8
  %smem_len3.i.i = getelementptr inbounds %struct.iwl_cfg, ptr %277, i32 0, i32 18
  %278 = ptrtoint ptr %smem_len3.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %smem_len3.i.i, align 4
  %dccm2_len.i.i = getelementptr inbounds %struct.iwl_cfg, ptr %277, i32 0, i32 16
  %280 = ptrtoint ptr %dccm2_len.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %dccm2_len.i.i, align 4
  br label %cond.end12.i.i

cond.end12.i.i:                                   ; preds = %cond.false9.i.i, %if.else.cond.end12.i.i_crit_edge
  %cond873.i.i = phi i32 [ %279, %cond.false9.i.i ], [ 0, %if.else.cond.end12.i.i_crit_edge ]
  %cond13.i.i = phi i32 [ %281, %cond.false9.i.i ], [ 0, %if.else.cond.end12.i.i_crit_edge ]
  %cfg15.i.i = getelementptr inbounds %struct.iwl_trans, ptr %20, i32 0, i32 4
  %282 = ptrtoint ptr %cfg15.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %cfg15.i.i, align 8
  %dccm_offset.i.i = getelementptr inbounds %struct.iwl_cfg, ptr %283, i32 0, i32 13
  %284 = ptrtoint ptr %dccm_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %dccm_offset.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %285)
  %tobool16.not.i.i = icmp eq i32 %285, 0
  br i1 %tobool16.not.i.i, label %cond.end12.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i97

cond.end12.i.i.if.then.i.i_crit_edge:             ; preds = %cond.end12.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i.i

lor.lhs.false.i.i97:                              ; preds = %cond.end12.i.i
  %dccm_len.i.i = getelementptr inbounds %struct.iwl_cfg, ptr %283, i32 0, i32 14
  %286 = ptrtoint ptr %dccm_len.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %dccm_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %tobool19.not.i.i = icmp eq i32 %287, 0
  br i1 %tobool19.not.i.i, label %lor.lhs.false.i.i97.if.then.i.i_crit_edge, label %lor.lhs.false.i.i97.if.end33.i.i_crit_edge

lor.lhs.false.i.i97.if.end33.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i97
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end33.i.i

lor.lhs.false.i.i97.if.then.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i97
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i97.if.then.i.i_crit_edge, %cond.end12.i.i.if.then.i.i_crit_edge
  %cur_fw_img.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 10
  %288 = ptrtoint ptr %cur_fw_img.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %cur_fw_img.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %289)
  %cmp.i.i = icmp ugt i32 %289, 3
  br i1 %cmp.i.i, label %if.then.i.i.iwl_fw_error_dump_file.exit.thread.i_crit_edge, label %cleanup.i.i

if.then.i.i.iwl_fw_error_dump_file.exit.thread.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_fw_error_dump_file.exit.thread.i

cleanup.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %268, i32 0, i32 2, i32 %289
  %290 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %arrayidx.i.i, align 4
  %offset.i.i = getelementptr inbounds %struct.fw_desc, ptr %291, i32 0, i32 2
  %292 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %offset.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.fw_desc, ptr %291, i32 0, i32 1
  %294 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %len.i.i, align 4
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %cleanup.i.i, %lor.lhs.false.i.i97.if.end33.i.i_crit_edge
  %sram_ofs.1.i.i = phi i32 [ %293, %cleanup.i.i ], [ %285, %lor.lhs.false.i.i97.if.end33.i.i_crit_edge ]
  %sram_len.1.i.i = phi i32 [ %295, %cleanup.i.i ], [ %287, %lor.lhs.false.i.i97.if.end33.i.i_crit_edge ]
  %status.i.i = getelementptr inbounds %struct.iwl_trans, ptr %20, i32 0, i32 7
  %296 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load volatile i32, ptr %status.i.i, align 4
  %298 = and i32 %297, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %298)
  %tobool35.not.i.i = icmp eq i32 %298, 0
  br i1 %tobool35.not.i.i, label %if.end33.i.i.if.end47.i.i_crit_edge, label %if.then36.i.i

if.end33.i.i.if.end47.i.i_crit_edge:              ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end47.i.i

if.then36.i.i:                                    ; preds = %if.end33.i.i
  %and.i.i.i.i98 = and i32 %270, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i98)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i98, 0
  br i1 %tobool.i.not.i.i.i, label %if.then36.i.i.iwl_fw_rxf_len.exit.i.i_crit_edge, label %do.body.i.i.i

if.then36.i.i.iwl_fw_rxf_len.exit.i.i_crit_edge:  ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_fw_rxf_len.exit.i.i

do.body.i.i.i:                                    ; preds = %if.then36.i.i
  %rxfifo2_size.i.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 3
  %299 = ptrtoint ptr %rxfifo2_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %rxfifo2_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %300)
  %tobool.not.i.i.i99 = icmp eq i32 %300, 0
  %mul.i.i.i = select i1 %tobool.not.i.i.i99, i32 0, i32 32
  %add.i.i.i100 = add i32 %mul.i.i.i, %300
  %301 = ptrtoint ptr %smem_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %smem_cfg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %302)
  %cmp.i.i.i101 = icmp sgt i32 %302, 2
  br i1 %cmp.i.i.i101, label %if.end33.thread.i.i.i, label %if.end33.i.i.i, !prof !101

if.end33.thread.i.i.i:                            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 692, i32 noundef 9, ptr noundef null) #19
  %303 = ptrtoint ptr %smem_cfg.i.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 2, ptr %smem_cfg.i.i, align 4
  br label %do.body36.preheader.i.i.i

if.end33.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %302)
  %cmp3562.i.i.i = icmp sgt i32 %302, 0
  br i1 %cmp3562.i.i.i, label %if.end33.i.i.i.do.body36.preheader.i.i.i_crit_edge, label %if.end33.i.i.i.iwl_fw_rxf_len.exit.i.i_crit_edge

if.end33.i.i.i.iwl_fw_rxf_len.exit.i.i_crit_edge: ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_fw_rxf_len.exit.i.i

if.end33.i.i.i.do.body36.preheader.i.i.i_crit_edge: ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body36.preheader.i.i.i

do.body36.preheader.i.i.i:                        ; preds = %if.end33.i.i.i.do.body36.preheader.i.i.i_crit_edge, %if.end33.thread.i.i.i
  %304 = phi i32 [ 2, %if.end33.thread.i.i.i ], [ %302, %if.end33.i.i.i.do.body36.preheader.i.i.i_crit_edge ]
  br label %do.body36.i.i.i

do.body36.i.i.i:                                  ; preds = %do.body36.i.i.i.do.body36.i.i.i_crit_edge, %do.body36.preheader.i.i.i
  %fifo_len.064.i.i.i = phi i32 [ %add45.i.i.i, %do.body36.i.i.i.do.body36.i.i.i_crit_edge ], [ %add.i.i.i100, %do.body36.preheader.i.i.i ]
  %i.063.i.i.i = phi i32 [ %inc.i.i.i102, %do.body36.i.i.i.do.body36.i.i.i_crit_edge ], [ 0, %do.body36.preheader.i.i.i ]
  %rxfifo1_size.i.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 %i.063.i.i.i, i32 1
  %305 = ptrtoint ptr %rxfifo1_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %rxfifo1_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %tobool38.not.i.i.i = icmp eq i32 %306, 0
  %mul43.i.i.i = select i1 %tobool38.not.i.i.i, i32 0, i32 32
  %add44.i.i.i = add i32 %306, %fifo_len.064.i.i.i
  %add45.i.i.i = add i32 %add44.i.i.i, %mul43.i.i.i
  %inc.i.i.i102 = add nuw nsw i32 %i.063.i.i.i, 1
  %exitcond.not.i.i.i103 = icmp eq i32 %inc.i.i.i102, %304
  br i1 %exitcond.not.i.i.i103, label %do.body36.i.i.i.iwl_fw_rxf_len.exit.i.i_crit_edge, label %do.body36.i.i.i.do.body36.i.i.i_crit_edge

do.body36.i.i.i.do.body36.i.i.i_crit_edge:        ; preds = %do.body36.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body36.i.i.i

do.body36.i.i.i.iwl_fw_rxf_len.exit.i.i_crit_edge: ; preds = %do.body36.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_fw_rxf_len.exit.i.i

iwl_fw_rxf_len.exit.i.i:                          ; preds = %do.body36.i.i.i.iwl_fw_rxf_len.exit.i.i_crit_edge, %if.end33.i.i.i.iwl_fw_rxf_len.exit.i.i_crit_edge, %if.then36.i.i.iwl_fw_rxf_len.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.then36.i.i.iwl_fw_rxf_len.exit.i.i_crit_edge ], [ %add.i.i.i100, %if.end33.i.i.i.iwl_fw_rxf_len.exit.i.i_crit_edge ], [ %add45.i.i.i, %do.body36.i.i.i.iwl_fw_rxf_len.exit.i.i_crit_edge ]
  %307 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %fw.i, align 4
  %dump_mask.i.i539.i.i = getelementptr inbounds %struct.iwl_fw, ptr %308, i32 0, i32 20, i32 7
  %309 = ptrtoint ptr %dump_mask.i.i539.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %dump_mask.i.i539.i.i, align 4
  %and.i.i540.i.i = and i32 %310, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i540.i.i)
  %tobool.i.not.i541.i.i = icmp eq i32 %and.i.i540.i.i, 0
  br i1 %tobool.i.not.i541.i.i, label %iwl_fw_rxf_len.exit.i.i.dump_internal_txf.i.i.i_crit_edge, label %if.end.i.i.i104

iwl_fw_rxf_len.exit.i.i.dump_internal_txf.i.i.i_crit_edge: ; preds = %iwl_fw_rxf_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dump_internal_txf.i.i.i

if.end.i.i.i104:                                  ; preds = %iwl_fw_rxf_len.exit.i.i
  %311 = ptrtoint ptr %smem_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %smem_cfg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %312)
  %cmp.i542.i.i = icmp sgt i32 %312, 2
  br i1 %cmp.i542.i.i, label %if.end24.thread.i.i.i, label %if.end24.i.i.i105, !prof !101

if.end24.thread.i.i.i:                            ; preds = %if.end.i.i.i104
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 713, i32 noundef 9, ptr noundef null) #19
  %313 = ptrtoint ptr %smem_cfg.i.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 2, ptr %smem_cfg.i.i, align 4
  br label %for.cond27.preheader.lr.ph.i.i.i

if.end24.i.i.i105:                                ; preds = %if.end.i.i.i104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %312)
  %cmp2694.i.i.i = icmp sgt i32 %312, 0
  br i1 %cmp2694.i.i.i, label %if.end24.i.i.i105.for.cond27.preheader.lr.ph.i.i.i_crit_edge, label %if.end24.i.i.i105.dump_internal_txf.i.i.i_crit_edge

if.end24.i.i.i105.dump_internal_txf.i.i.i_crit_edge: ; preds = %if.end24.i.i.i105
  call void @__sanitizer_cov_trace_pc() #21
  br label %dump_internal_txf.i.i.i

if.end24.i.i.i105.for.cond27.preheader.lr.ph.i.i.i_crit_edge: ; preds = %if.end24.i.i.i105
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond27.preheader.lr.ph.i.i.i

for.cond27.preheader.lr.ph.i.i.i:                 ; preds = %if.end24.i.i.i105.for.cond27.preheader.lr.ph.i.i.i_crit_edge, %if.end24.thread.i.i.i
  %314 = phi i32 [ 2, %if.end24.thread.i.i.i ], [ %312, %if.end24.i.i.i105.for.cond27.preheader.lr.ph.i.i.i_crit_edge ]
  %num_txfifo_entries.i.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 1
  %315 = ptrtoint ptr %num_txfifo_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %num_txfifo_entries.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %316)
  %cmp2891.i.i.i = icmp sgt i32 %316, 0
  br label %for.cond27.preheader.i.i.i

for.cond27.preheader.i.i.i:                       ; preds = %for.end.i.i.i107.for.cond27.preheader.i.i.i_crit_edge, %for.cond27.preheader.lr.ph.i.i.i
  %fifo_len.097.i.i.i = phi i32 [ 0, %for.cond27.preheader.lr.ph.i.i.i ], [ %fifo_len.1.lcssa.i.i.i, %for.end.i.i.i107.for.cond27.preheader.i.i.i_crit_edge ]
  %i.095.i.i.i = phi i32 [ 0, %for.cond27.preheader.lr.ph.i.i.i ], [ %inc41.i.i.i, %for.end.i.i.i107.for.cond27.preheader.i.i.i_crit_edge ]
  br i1 %cmp2891.i.i.i, label %do.body30.lr.ph.i.i.i, label %for.cond27.preheader.i.i.i.for.end.i.i.i107_crit_edge

for.cond27.preheader.i.i.i.for.end.i.i.i107_crit_edge: ; preds = %for.cond27.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i.i.i107

do.body30.lr.ph.i.i.i:                            ; preds = %for.cond27.preheader.i.i.i
  %arrayidx.i.i.i106 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 %i.095.i.i.i
  br label %do.body30.i.i.i

do.body30.i.i.i:                                  ; preds = %do.body30.i.i.i.do.body30.i.i.i_crit_edge, %do.body30.lr.ph.i.i.i
  %fifo_len.193.i.i.i = phi i32 [ %fifo_len.097.i.i.i, %do.body30.lr.ph.i.i.i ], [ %add37.i.i.i, %do.body30.i.i.i.do.body30.i.i.i_crit_edge ]
  %j.092.i.i.i = phi i32 [ 0, %do.body30.lr.ph.i.i.i ], [ %inc.i545.i.i, %do.body30.i.i.i.do.body30.i.i.i_crit_edge ]
  %arrayidx31.i.i.i = getelementptr [15 x i32], ptr %arrayidx.i.i.i106, i32 0, i32 %j.092.i.i.i
  %317 = ptrtoint ptr %arrayidx31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %arrayidx31.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %318)
  %tobool32.not.i.i.i = icmp eq i32 %318, 0
  %mul.i543.i.i = select i1 %tobool32.not.i.i.i, i32 0, i32 32
  %add.i544.i.i = add i32 %318, %fifo_len.193.i.i.i
  %add37.i.i.i = add i32 %add.i544.i.i, %mul.i543.i.i
  %inc.i545.i.i = add nuw nsw i32 %j.092.i.i.i, 1
  %exitcond.not.i546.i.i = icmp eq i32 %inc.i545.i.i, %316
  br i1 %exitcond.not.i546.i.i, label %do.body30.i.i.i.for.end.i.i.i107_crit_edge, label %do.body30.i.i.i.do.body30.i.i.i_crit_edge

do.body30.i.i.i.do.body30.i.i.i_crit_edge:        ; preds = %do.body30.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body30.i.i.i

do.body30.i.i.i.for.end.i.i.i107_crit_edge:       ; preds = %do.body30.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i.i.i107

for.end.i.i.i107:                                 ; preds = %do.body30.i.i.i.for.end.i.i.i107_crit_edge, %for.cond27.preheader.i.i.i.for.end.i.i.i107_crit_edge
  %fifo_len.1.lcssa.i.i.i = phi i32 [ %fifo_len.097.i.i.i, %for.cond27.preheader.i.i.i.for.end.i.i.i107_crit_edge ], [ %add37.i.i.i, %do.body30.i.i.i.for.end.i.i.i107_crit_edge ]
  %inc41.i.i.i = add nuw nsw i32 %i.095.i.i.i, 1
  %exitcond101.not.i.i.i = icmp eq i32 %inc41.i.i.i, %314
  br i1 %exitcond101.not.i.i.i, label %for.end.i.i.i107.dump_internal_txf.i.i.i_crit_edge, label %for.end.i.i.i107.for.cond27.preheader.i.i.i_crit_edge

for.end.i.i.i107.for.cond27.preheader.i.i.i_crit_edge: ; preds = %for.end.i.i.i107
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond27.preheader.i.i.i

for.end.i.i.i107.dump_internal_txf.i.i.i_crit_edge: ; preds = %for.end.i.i.i107
  call void @__sanitizer_cov_trace_pc() #21
  br label %dump_internal_txf.i.i.i

dump_internal_txf.i.i.i:                          ; preds = %for.end.i.i.i107.dump_internal_txf.i.i.i_crit_edge, %if.end24.i.i.i105.dump_internal_txf.i.i.i_crit_edge, %iwl_fw_rxf_len.exit.i.i.dump_internal_txf.i.i.i_crit_edge
  %fifo_len.2.i.i.i = phi i32 [ 0, %iwl_fw_rxf_len.exit.i.i.dump_internal_txf.i.i.i_crit_edge ], [ 0, %if.end24.i.i.i105.dump_internal_txf.i.i.i_crit_edge ], [ %fifo_len.1.lcssa.i.i.i, %for.end.i.i.i107.dump_internal_txf.i.i.i_crit_edge ]
  %319 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %fw.i, align 4
  %dump_mask.i87.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %320, i32 0, i32 20, i32 7
  %321 = ptrtoint ptr %dump_mask.i87.i.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %dump_mask.i87.i.i.i, align 4
  %and.i88.i.i.i = and i32 %322, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i88.i.i.i)
  %tobool.i89.not.i.i.i = icmp eq i32 %and.i88.i.i.i, 0
  br i1 %tobool.i89.not.i.i.i, label %dump_internal_txf.i.i.i.iwl_fw_txf_len.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

dump_internal_txf.i.i.i.iwl_fw_txf_len.exit.i.i_crit_edge: ; preds = %dump_internal_txf.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_fw_txf_len.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %dump_internal_txf.i.i.i
  %arrayidx.i.i.i.i.i = getelementptr %struct.iwl_fw, ptr %320, i32 0, i32 5, i32 8, i32 2
  %323 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %325 = and i32 %324, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %325)
  %tobool.i90.not.i.i.i = icmp eq i32 %325, 0
  br i1 %tobool.i90.not.i.i.i, label %land.lhs.true.i.i.i.iwl_fw_txf_len.exit.i.i_crit_edge, label %do.body50.preheader.i.i.i

land.lhs.true.i.i.i.iwl_fw_txf_len.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_fw_txf_len.exit.i.i

do.body50.preheader.i.i.i:                        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx52.i.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 6
  %326 = ptrtoint ptr %arrayidx52.i.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %arrayidx52.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %327)
  %tobool53.not.i.i.i = icmp eq i32 %327, 0
  %mul58.i.i.i = select i1 %tobool53.not.i.i.i, i32 0, i32 32
  %add59.i.i.i = add i32 %327, %fifo_len.2.i.i.i
  %arrayidx52.1.i.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 6, i32 1
  %328 = ptrtoint ptr %arrayidx52.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %arrayidx52.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %329)
  %tobool53.not.1.i.i.i = icmp eq i32 %329, 0
  %mul58.1.i.i.i = select i1 %tobool53.not.1.i.i.i, i32 0, i32 32
  %arrayidx52.2.i.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 6, i32 2
  %330 = ptrtoint ptr %arrayidx52.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %arrayidx52.2.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %331)
  %tobool53.not.2.i.i.i = icmp eq i32 %331, 0
  %mul58.2.i.i.i = select i1 %tobool53.not.2.i.i.i, i32 0, i32 32
  %arrayidx52.3.i.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 6, i32 3
  %332 = ptrtoint ptr %arrayidx52.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %arrayidx52.3.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %333)
  %tobool53.not.3.i.i.i = icmp eq i32 %333, 0
  %mul58.3.i.i.i = select i1 %tobool53.not.3.i.i.i, i32 0, i32 32
  %arrayidx52.4.i.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 6, i32 4
  %334 = ptrtoint ptr %arrayidx52.4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %arrayidx52.4.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %335)
  %tobool53.not.4.i.i.i = icmp eq i32 %335, 0
  %mul58.4.i.i.i = select i1 %tobool53.not.4.i.i.i, i32 0, i32 32
  %arrayidx52.5.i.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 6, i32 5
  %336 = ptrtoint ptr %arrayidx52.5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %arrayidx52.5.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %337)
  %tobool53.not.5.i.i.i = icmp eq i32 %337, 0
  %mul58.5.i.i.i = select i1 %tobool53.not.5.i.i.i, i32 0, i32 32
  %add60.i.i.i = add i32 %add59.i.i.i, %329
  %add59.1.i.i.i = add i32 %add60.i.i.i, %mul58.i.i.i
  %add60.1.i.i.i = add i32 %add59.1.i.i.i, %331
  %add59.2.i.i.i = add i32 %add60.1.i.i.i, %mul58.1.i.i.i
  %add60.2.i.i.i = add i32 %add59.2.i.i.i, %333
  %add59.3.i.i.i = add i32 %add60.2.i.i.i, %mul58.2.i.i.i
  %add60.3.i.i.i = add i32 %add59.3.i.i.i, %335
  %add59.4.i.i.i = add i32 %add60.3.i.i.i, %mul58.3.i.i.i
  %add60.4.i.i.i = add i32 %add59.4.i.i.i, %337
  %add59.5.i.i.i = add i32 %add60.4.i.i.i, %mul58.4.i.i.i
  %add60.5.i.i.i = add i32 %add59.5.i.i.i, %mul58.5.i.i.i
  br label %iwl_fw_txf_len.exit.i.i

iwl_fw_txf_len.exit.i.i:                          ; preds = %do.body50.preheader.i.i.i, %land.lhs.true.i.i.i.iwl_fw_txf_len.exit.i.i_crit_edge, %dump_internal_txf.i.i.i.iwl_fw_txf_len.exit.i.i_crit_edge
  %fifo_len.4.i.i.i = phi i32 [ %fifo_len.2.i.i.i, %land.lhs.true.i.i.i.iwl_fw_txf_len.exit.i.i_crit_edge ], [ %fifo_len.2.i.i.i, %dump_internal_txf.i.i.i.iwl_fw_txf_len.exit.i.i_crit_edge ], [ %add60.5.i.i.i, %do.body50.preheader.i.i.i ]
  %add.i.i108 = add i32 %fifo_len.4.i.i.i, %retval.0.i.i.i
  %and.i.i.i109 = and i32 %322, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i109)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i109, 0
  br i1 %tobool.i.not.i.i, label %iwl_fw_txf_len.exit.i.i.if.end41.i.i_crit_edge, label %if.then40.i.i

iwl_fw_txf_len.exit.i.i.if.end41.i.i_crit_edge:   ; preds = %iwl_fw_txf_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end41.i.i

if.then40.i.i:                                    ; preds = %iwl_fw_txf_len.exit.i.i
  %338 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %fwrt, align 8
  %trans_cfg.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %339, i32 0, i32 3
  %340 = ptrtoint ptr %trans_cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %trans_cfg.i.i.i, align 4
  %device_family.i.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %341, i32 0, i32 1
  %342 = ptrtoint ptr %device_family.i.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %device_family.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %343)
  %cmp.i547.i.i = icmp ugt i32 %343, 18
  br i1 %cmp.i547.i.i, label %if.then40.i.i.if.end41.i.i_crit_edge, label %if.else.i.i.i

if.then40.i.i.if.end41.i.i_crit_edge:             ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end41.i.i

if.else.i.i.i:                                    ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %343)
  %cmp4.i.i.i = icmp eq i32 %343, 18
  br i1 %cmp4.i.i.i, label %if.else.i.i.i.if.end41.i.i_crit_edge, label %for.body.i845.preheader.i.i

if.else.i.i.i.if.end41.i.i_crit_edge:             ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end41.i.i

for.body.i845.preheader.i.i:                      ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %mq_rx_supported.i.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %341, i32 0, i32 5
  %344 = ptrtoint ptr %mq_rx_supported.i.i.i to i32
  call void @__asan_load2_noabort(i32 %344)
  %bf.load.i.i.i = load i16, ptr %mq_rx_supported.i.i.i, align 4
  %345 = and i16 %bf.load.i.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %345)
  %tobool.not.i548.i.i = icmp eq i16 %345, 0
  %spec.select.i.i = select i1 %tobool.not.i548.i.i, i32 4520, i32 12604
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %for.body.i845.preheader.i.i, %if.else.i.i.i.if.end41.i.i_crit_edge, %if.then40.i.i.if.end41.i.i_crit_edge, %iwl_fw_txf_len.exit.i.i.if.end41.i.i_crit_edge
  %prph_len.5.i.i = phi i32 [ 0, %iwl_fw_txf_len.exit.i.i.if.end41.i.i_crit_edge ], [ 524, %if.then40.i.i.if.end41.i.i_crit_edge ], [ 2676, %if.else.i.i.i.if.end41.i.i_crit_edge ], [ %spec.select.i.i, %for.body.i845.preheader.i.i ]
  %346 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %fwrt, align 8
  %trans_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %347, i32 0, i32 3
  %348 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %trans_cfg.i.i, align 4
  %device_family.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %349, i32 0, i32 1
  %350 = ptrtoint ptr %device_family.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %device_family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %351)
  %cmp43.i.i = icmp eq i32 %351, 15
  br i1 %cmp43.i.i, label %land.lhs.true.i.i, label %if.end41.i.i.if.end47.i.i_crit_edge

if.end41.i.i.if.end47.i.i_crit_edge:              ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end47.i.i

land.lhs.true.i.i:                                ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %and.i551.i.i = and i32 %322, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i551.i.i)
  %tobool.i552.not.i.i = icmp eq i32 %and.i551.i.i, 0
  %spec.select535.i.i = select i1 %tobool.i552.not.i.i, i32 0, i32 693
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %land.lhs.true.i.i, %if.end41.i.i.if.end47.i.i_crit_edge, %if.end33.i.i.if.end47.i.i_crit_edge
  %prph_len.6.i.i = phi i32 [ 0, %if.end33.i.i.if.end47.i.i_crit_edge ], [ %prph_len.5.i.i, %land.lhs.true.i.i ], [ %prph_len.5.i.i, %if.end41.i.i.if.end47.i.i_crit_edge ]
  %fifo_len.0.i.i = phi i32 [ 0, %if.end33.i.i.if.end47.i.i_crit_edge ], [ %add.i.i108, %land.lhs.true.i.i ], [ %add.i.i108, %if.end41.i.i.if.end47.i.i_crit_edge ]
  %tobool237.not.i.i = phi i1 [ true, %if.end33.i.i.if.end47.i.i_crit_edge ], [ %tobool.i552.not.i.i, %land.lhs.true.i.i ], [ true, %if.end41.i.i.if.end47.i.i_crit_edge ]
  %radio_len.0.i.i = phi i32 [ 0, %if.end33.i.i.if.end47.i.i_crit_edge ], [ %spec.select535.i.i, %land.lhs.true.i.i ], [ 0, %if.end41.i.i.if.end47.i.i_crit_edge ]
  %add48.i.i = add nuw nsw i32 %prph_len.6.i.i, 8
  %add49.i.i = add i32 %add48.i.i, %fifo_len.0.i.i
  %add50.i.i = add i32 %add49.i.i, %radio_len.0.i.i
  %352 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %fw.i, align 4
  %dump_mask.i554.i.i = getelementptr inbounds %struct.iwl_fw, ptr %353, i32 0, i32 20, i32 7
  %354 = ptrtoint ptr %dump_mask.i554.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %dump_mask.i554.i.i, align 4
  %and.i555.i.i = and i32 %355, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i555.i.i)
  %tobool.i556.not.i.i = icmp eq i32 %and.i555.i.i, 0
  %add53.i.i = add i32 %add50.i.i, 165
  %spec.select536.i.i = select i1 %tobool.i556.not.i.i, i32 %add50.i.i, i32 %add53.i.i
  %and.i559.i.i = and i32 %355, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i559.i.i)
  %tobool.i560.not.i.i = icmp eq i32 %and.i559.i.i, 0
  %add57.i.i = add i32 %spec.select536.i.i, 176
  %file_len.1.i.i = select i1 %tobool.i560.not.i.i, i32 %spec.select536.i.i, i32 %add57.i.i
  %and.i563.i.i = and i32 %355, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i563.i.i)
  %tobool.i564.not.i.i = icmp eq i32 %and.i563.i.i, 0
  br i1 %tobool.i564.not.i.i, label %if.end47.i.i.if.end113.i.i_crit_edge, label %if.then60.i.i

if.end47.i.i.if.end113.i.i_crit_edge:             ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end113.i.i

if.then60.i.i:                                    ; preds = %if.end47.i.i
  %n_mem_tlv63.i.i = getelementptr inbounds %struct.iwl_fw, ptr %353, i32 0, i32 20, i32 6
  %356 = ptrtoint ptr %n_mem_tlv63.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %n_mem_tlv63.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %357)
  %tobool64.not.i.i = icmp eq i32 %357, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sram_len.1.i.i)
  %tobool66.not.i.i = icmp eq i32 %sram_len.1.i.i, 0
  %mul.i.i = select i1 %tobool66.not.i.i, i32 0, i32 16
  %add68.i.i = add i32 %mul.i.i, %sram_len.1.i.i
  %add69.i.i = select i1 %tobool64.not.i.i, i32 %add68.i.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond873.i.i)
  %tobool73.not.i.i = icmp eq i32 %cond873.i.i, 0
  %mul78.i.i = select i1 %tobool73.not.i.i, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond13.i.i)
  %tobool85.not.i.i = icmp eq i32 %cond13.i.i, 0
  %mul90.i.i = select i1 %tobool85.not.i.i, i32 0, i32 16
  %file_len.2.i.i = add i32 %cond13.i.i, %cond873.i.i
  %add79.i.i = add i32 %file_len.2.i.i, %mul78.i.i
  %add80.i.i = add i32 %add79.i.i, %mul90.i.i
  %add91.i.i = add i32 %add80.i.i, %file_len.1.i.i
  %add92.i.i = add i32 %add91.i.i, %add69.i.i
  br i1 %tobool64.not.i.i, label %if.then60.i.i.if.end113.i.i_crit_edge, label %if.then60.i.i.do.body99.i.i_crit_edge

if.then60.i.i.do.body99.i.i_crit_edge:            ; preds = %if.then60.i.i
  br label %do.body99.i.i

if.then60.i.i.if.end113.i.i_crit_edge:            ; preds = %if.then60.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end113.i.i

do.body99.i.i:                                    ; preds = %do.body99.i.i.do.body99.i.i_crit_edge, %if.then60.i.i.do.body99.i.i_crit_edge
  %i.0886.i.i = phi i32 [ %inc.i.i, %do.body99.i.i.do.body99.i.i_crit_edge ], [ 0, %if.then60.i.i.do.body99.i.i_crit_edge ]
  %file_len.3885.i.i = phi i32 [ %add110.i.i, %do.body99.i.i.do.body99.i.i_crit_edge ], [ %add92.i.i, %if.then60.i.i.do.body99.i.i_crit_edge ]
  %len102.i.i = getelementptr %struct.iwl_fw_dbg_mem_seg_tlv, ptr %273, i32 %i.0886.i.i, i32 2
  %358 = ptrtoint ptr %len102.i.i to i32
  call void @__asan_loadN_noabort(i32 %358, i32 4)
  %359 = load i32, ptr %len102.i.i, align 1
  %360 = call i32 @llvm.bswap.i32(i32 %359) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %359)
  %tobool103.not.i.i = icmp eq i32 %359, 0
  %mul108.i.i = select i1 %tobool103.not.i.i, i32 0, i32 16
  %add109.i.i = add i32 %360, %file_len.3885.i.i
  %add110.i.i = add i32 %add109.i.i, %mul108.i.i
  %inc.i.i = add nuw i32 %i.0886.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %357
  br i1 %exitcond.not.i.i, label %do.body99.i.i.if.end113.i.i_crit_edge, label %do.body99.i.i.do.body99.i.i_crit_edge

do.body99.i.i.do.body99.i.i_crit_edge:            ; preds = %do.body99.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body99.i.i

do.body99.i.i.if.end113.i.i_crit_edge:            ; preds = %do.body99.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end113.i.i

if.end113.i.i:                                    ; preds = %do.body99.i.i.if.end113.i.i_crit_edge, %if.then60.i.i.if.end113.i.i_crit_edge, %if.end47.i.i.if.end113.i.i_crit_edge
  %file_len.4.i.i = phi i32 [ %file_len.1.i.i, %if.end47.i.i.if.end113.i.i_crit_edge ], [ %add92.i.i, %if.then60.i.i.if.end113.i.i_crit_edge ], [ %add110.i.i, %do.body99.i.i.if.end113.i.i_crit_edge ]
  %and.i.i567.i.i = and i32 %355, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i567.i.i)
  %tobool.i.not.i568.i.i = icmp eq i32 %and.i.i567.i.i, 0
  br i1 %tobool.i.not.i568.i.i, label %if.end113.i.i.if.end118.i.i_crit_edge, label %land.lhs.true.i572.i.i

if.end113.i.i.if.end118.i.i_crit_edge:            ; preds = %if.end113.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end118.i.i

land.lhs.true.i572.i.i:                           ; preds = %if.end113.i.i
  %361 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %fwrt, align 8
  %trans_cfg.i569.i.i = getelementptr inbounds %struct.iwl_trans, ptr %362, i32 0, i32 3
  %363 = ptrtoint ptr %trans_cfg.i569.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %trans_cfg.i569.i.i, align 4
  %gen2.i.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %364, i32 0, i32 5
  %365 = ptrtoint ptr %gen2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %365)
  %bf.load.i570.i.i = load i16, ptr %gen2.i.i.i, align 4
  %366 = and i16 %bf.load.i570.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %366)
  %tobool.not.i571.i.i = icmp eq i16 %366, 0
  br i1 %tobool.not.i571.i.i, label %land.lhs.true1.i.i.i, label %land.lhs.true.i572.i.i.if.end118.i.i_crit_edge

land.lhs.true.i572.i.i.if.end118.i.i_crit_edge:   ; preds = %land.lhs.true.i572.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end118.i.i

land.lhs.true1.i.i.i:                             ; preds = %land.lhs.true.i572.i.i
  %cur_fw_img.i.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 10
  %367 = ptrtoint ptr %cur_fw_img.i.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %cur_fw_img.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %368)
  %cmp.i573.i.i = icmp ult i32 %368, 4
  br i1 %cmp.i573.i.i, label %land.lhs.true2.i.i.i, label %land.lhs.true1.i.i.i.if.end118.i.i_crit_edge

land.lhs.true1.i.i.i.if.end118.i.i_crit_edge:     ; preds = %land.lhs.true1.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end118.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true1.i.i.i
  %paging_mem_size.i.i.i = getelementptr %struct.iwl_fw, ptr %353, i32 0, i32 2, i32 %368, i32 3
  %369 = ptrtoint ptr %paging_mem_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %paging_mem_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %370)
  %tobool4.not.i.i.i = icmp eq i32 %370, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true2.i.i.i.if.end118.i.i_crit_edge, label %iwl_fw_dbg_is_paging_enabled.exit.i.i

land.lhs.true2.i.i.i.if.end118.i.i_crit_edge:     ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end118.i.i

iwl_fw_dbg_is_paging_enabled.exit.i.i:            ; preds = %land.lhs.true2.i.i.i
  %fw_paging_block.i.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 7, i32 0, i32 1
  %371 = ptrtoint ptr %fw_paging_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %fw_paging_block.i.i.i, align 4
  %tobool6.i.not.i.i = icmp eq ptr %372, null
  br i1 %tobool6.i.not.i.i, label %iwl_fw_dbg_is_paging_enabled.exit.i.i.if.end118.i.i_crit_edge, label %if.then115.i.i

iwl_fw_dbg_is_paging_enabled.exit.i.i.if.end118.i.i_crit_edge: ; preds = %iwl_fw_dbg_is_paging_enabled.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end118.i.i

if.then115.i.i:                                   ; preds = %iwl_fw_dbg_is_paging_enabled.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %num_of_paging_blk.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 8
  %373 = ptrtoint ptr %num_of_paging_blk.i.i to i32
  call void @__asan_load2_noabort(i32 %373)
  %374 = load i16, ptr %num_of_paging_blk.i.i, align 4
  %conv.i.i = zext i16 %374 to i32
  %mul116.i.i = mul nuw i32 %conv.i.i, 32784
  %add117.i.i = add i32 %mul116.i.i, %file_len.4.i.i
  br label %if.end118.i.i

if.end118.i.i:                                    ; preds = %if.then115.i.i, %iwl_fw_dbg_is_paging_enabled.exit.i.i.if.end118.i.i_crit_edge, %land.lhs.true2.i.i.i.if.end118.i.i_crit_edge, %land.lhs.true1.i.i.i.if.end118.i.i_crit_edge, %land.lhs.true.i572.i.i.if.end118.i.i_crit_edge, %if.end113.i.i.if.end118.i.i_crit_edge
  %file_len.5.i.i = phi i32 [ %add117.i.i, %if.then115.i.i ], [ %file_len.4.i.i, %iwl_fw_dbg_is_paging_enabled.exit.i.i.if.end118.i.i_crit_edge ], [ %file_len.4.i.i, %land.lhs.true2.i.i.i.if.end118.i.i_crit_edge ], [ %file_len.4.i.i, %land.lhs.true1.i.i.i.if.end118.i.i_crit_edge ], [ %file_len.4.i.i, %land.lhs.true.i572.i.i.if.end118.i.i_crit_edge ], [ %file_len.4.i.i, %if.end113.i.i.if.end118.i.i_crit_edge ]
  %arrayidx.i.i.i575.i.i = getelementptr %struct.iwl_fw, ptr %353, i32 0, i32 5, i32 8, i32 2
  %375 = ptrtoint ptr %arrayidx.i.i.i575.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load volatile i32, ptr %arrayidx.i.i.i575.i.i, align 4
  %377 = and i32 %376, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %377)
  %tobool.i.not.i576.i.i = icmp eq i32 %377, 0
  br i1 %tobool.i.not.i576.i.i, label %if.end118.i.i.if.end129.i.i_crit_edge, label %land.lhs.true.i578.i.i

if.end118.i.i.if.end129.i.i_crit_edge:            ; preds = %if.end118.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end129.i.i

land.lhs.true.i578.i.i:                           ; preds = %if.end118.i.i
  %378 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %fwrt, align 8
  %cfg.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %379, i32 0, i32 4
  %380 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %cfg.i.i.i, align 8
  %d3_debug_data_length.i.i.i = getelementptr inbounds %struct.iwl_cfg, ptr %381, i32 0, i32 32
  %382 = ptrtoint ptr %d3_debug_data_length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %d3_debug_data_length.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %383)
  %tobool.not.i577.i.i = icmp eq i32 %383, 0
  br i1 %tobool.not.i577.i.i, label %land.lhs.true.i578.i.i.if.end129.i.i_crit_edge, label %land.lhs.true1.i579.i.i

land.lhs.true.i578.i.i.if.end129.i.i_crit_edge:   ; preds = %land.lhs.true.i578.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end129.i.i

land.lhs.true1.i579.i.i:                          ; preds = %land.lhs.true.i578.i.i
  %ops.i.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 3
  %384 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %ops.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %385, null
  br i1 %tobool2.not.i.i.i, label %land.lhs.true1.i579.i.i.if.end129.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true1.i579.i.i.if.end129.i.i_crit_edge:  ; preds = %land.lhs.true1.i579.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end129.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true1.i579.i.i
  %d3_debug_enable.i.i.i = getelementptr inbounds %struct.iwl_fw_runtime_ops, ptr %385, i32 0, i32 4
  %386 = ptrtoint ptr %d3_debug_enable.i.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %d3_debug_enable.i.i.i, align 4
  %tobool5.not.i.i.i = icmp eq ptr %387, null
  br i1 %tobool5.not.i.i.i, label %land.lhs.true3.i.i.i.if.end129.i.i_crit_edge, label %land.lhs.true6.i.i.i

land.lhs.true3.i.i.i.if.end129.i.i_crit_edge:     ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end129.i.i

land.lhs.true6.i.i.i:                             ; preds = %land.lhs.true3.i.i.i
  %ops_ctx.i.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 4
  %388 = ptrtoint ptr %ops_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %ops_ctx.i.i.i, align 8
  %call9.i.i.i = call zeroext i1 %387(ptr noundef %389) #19
  br i1 %call9.i.i.i, label %iwl_fw_dbg_is_d3_debug_enabled.exit.i.i, label %land.lhs.true6.i.i.i.if.end129.i.i_crit_edge

land.lhs.true6.i.i.i.if.end129.i.i_crit_edge:     ; preds = %land.lhs.true6.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end129.i.i

iwl_fw_dbg_is_d3_debug_enabled.exit.i.i:          ; preds = %land.lhs.true6.i.i.i
  %390 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %fw.i, align 4
  %dump_mask.i.i580.i.i = getelementptr inbounds %struct.iwl_fw, ptr %391, i32 0, i32 20, i32 7
  %392 = ptrtoint ptr %dump_mask.i.i580.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %dump_mask.i.i580.i.i, align 4
  %and.i.i581.i.i = and i32 %393, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i581.i.i)
  %tobool.i18.i.not.i.i = icmp eq i32 %and.i.i581.i.i, 0
  br i1 %tobool.i18.i.not.i.i, label %iwl_fw_dbg_is_d3_debug_enabled.exit.i.i.if.end129.i.i_crit_edge, label %land.lhs.true121.i.i

iwl_fw_dbg_is_d3_debug_enabled.exit.i.i.if.end129.i.i_crit_edge: ; preds = %iwl_fw_dbg_is_d3_debug_enabled.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end129.i.i

land.lhs.true121.i.i:                             ; preds = %iwl_fw_dbg_is_d3_debug_enabled.exit.i.i
  %d3_debug_data.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 4
  %394 = ptrtoint ptr %d3_debug_data.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %d3_debug_data.i.i, align 4
  %tobool122.not.i.i = icmp eq ptr %395, null
  br i1 %tobool122.not.i.i, label %land.lhs.true121.i.i.if.end129.i.i_crit_edge, label %if.then123.i.i

land.lhs.true121.i.i.if.end129.i.i_crit_edge:     ; preds = %land.lhs.true121.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end129.i.i

if.then123.i.i:                                   ; preds = %land.lhs.true121.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %396 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %fwrt, align 8
  %cfg125.i.i = getelementptr inbounds %struct.iwl_trans, ptr %397, i32 0, i32 4
  %398 = ptrtoint ptr %cfg125.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %cfg125.i.i, align 8
  %d3_debug_data_length.i.i = getelementptr inbounds %struct.iwl_cfg, ptr %399, i32 0, i32 32
  %400 = ptrtoint ptr %d3_debug_data_length.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %d3_debug_data_length.i.i, align 8
  %mul126.i.i = shl i32 %401, 1
  %add127.i.i = add i32 %file_len.5.i.i, 8
  %add128.i.i = add i32 %add127.i.i, %mul126.i.i
  br label %if.end129.i.i

if.end129.i.i:                                    ; preds = %if.then123.i.i, %land.lhs.true121.i.i.if.end129.i.i_crit_edge, %iwl_fw_dbg_is_d3_debug_enabled.exit.i.i.if.end129.i.i_crit_edge, %land.lhs.true6.i.i.i.if.end129.i.i_crit_edge, %land.lhs.true3.i.i.i.if.end129.i.i_crit_edge, %land.lhs.true1.i579.i.i.if.end129.i.i_crit_edge, %land.lhs.true.i578.i.i.if.end129.i.i_crit_edge, %if.end118.i.i.if.end129.i.i_crit_edge
  %file_len.6.i.i = phi i32 [ %add128.i.i, %if.then123.i.i ], [ %file_len.5.i.i, %land.lhs.true121.i.i.if.end129.i.i_crit_edge ], [ %file_len.5.i.i, %iwl_fw_dbg_is_d3_debug_enabled.exit.i.i.if.end129.i.i_crit_edge ], [ %file_len.5.i.i, %land.lhs.true6.i.i.i.if.end129.i.i_crit_edge ], [ %file_len.5.i.i, %land.lhs.true3.i.i.i.if.end129.i.i_crit_edge ], [ %file_len.5.i.i, %land.lhs.true1.i579.i.i.if.end129.i.i_crit_edge ], [ %file_len.5.i.i, %land.lhs.true.i578.i.i.if.end129.i.i_crit_edge ], [ %file_len.5.i.i, %if.end118.i.i.if.end129.i.i_crit_edge ]
  %monitor_only.i.i = getelementptr inbounds %struct.anon.133, ptr %dump_data1, i32 0, i32 1
  %402 = ptrtoint ptr %monitor_only.i.i to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %monitor_only.i.i, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %403)
  %tobool130.not.i.i = icmp eq i8 %403, 0
  %spec.select537.i.i = select i1 %tobool130.not.i.i, i32 %file_len.6.i.i, i32 349
  %404 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %fw.i, align 4
  %dump_mask.i584.i.i = getelementptr inbounds %struct.iwl_fw, ptr %405, i32 0, i32 20, i32 7
  %406 = ptrtoint ptr %dump_mask.i584.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %dump_mask.i584.i.i, align 4
  %and.i585.i.i = and i32 %407, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i585.i.i)
  %tobool.i586.not.i.i = icmp eq i32 %and.i585.i.i, 0
  br i1 %tobool.i586.not.i.i, label %if.end129.i.i.if.end142.i.i_crit_edge, label %land.lhs.true135.i.i

if.end129.i.i.if.end142.i.i_crit_edge:            ; preds = %if.end129.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end142.i.i

land.lhs.true135.i.i:                             ; preds = %if.end129.i.i
  %408 = ptrtoint ptr %dump_data1 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %dump_data1, align 4
  %tobool136.not.i.i = icmp eq ptr %409, null
  br i1 %tobool136.not.i.i, label %land.lhs.true135.i.i.if.end142.i.i_crit_edge, label %if.then137.i.i

land.lhs.true135.i.i.if.end142.i.i_crit_edge:     ; preds = %land.lhs.true135.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end142.i.i

if.then137.i.i:                                   ; preds = %land.lhs.true135.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %410 = ptrtoint ptr %409 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %409, align 4
  %add140.i.i = add i32 %spec.select537.i.i, 12
  %add141.i.i = add i32 %add140.i.i, %411
  br label %if.end142.i.i

if.end142.i.i:                                    ; preds = %if.then137.i.i, %land.lhs.true135.i.i.if.end142.i.i_crit_edge, %if.end129.i.i.if.end142.i.i_crit_edge
  %file_len.8.i.i = phi i32 [ %add141.i.i, %if.then137.i.i ], [ %spec.select537.i.i, %land.lhs.true135.i.i.if.end142.i.i_crit_edge ], [ %spec.select537.i.i, %if.end129.i.i.if.end142.i.i_crit_edge ]
  %call143.i.i = call noalias ptr @vzalloc(i32 noundef %file_len.8.i.i) #23
  %tobool144.not.i.i = icmp eq ptr %call143.i.i, null
  br i1 %tobool144.not.i.i, label %if.end142.i.i.iwl_fw_error_dump_file.exit.thread.i_crit_edge, label %if.end146.i.i

if.end142.i.i.iwl_fw_error_dump_file.exit.thread.i_crit_edge: ; preds = %if.end142.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_fw_error_dump_file.exit.thread.i

if.end146.i.i:                                    ; preds = %if.end142.i.i
  %412 = ptrtoint ptr %call143.i.i to i32
  call void @__asan_storeN_noabort(i32 %412, i32 4)
  store i32 848721940, ptr %call143.i.i, align 1
  %data147.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_file, ptr %call143.i.i, i32 0, i32 2
  %413 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store ptr %data147.i.i, ptr %dump_data.i.i, align 4
  %414 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %fw.i, align 4
  %dump_mask.i588.i.i = getelementptr inbounds %struct.iwl_fw, ptr %415, i32 0, i32 20, i32 7
  %416 = ptrtoint ptr %dump_mask.i588.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %dump_mask.i588.i.i, align 4
  %and.i589.i.i = and i32 %417, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i589.i.i)
  %tobool.i590.not.i.i = icmp eq i32 %and.i589.i.i, 0
  br i1 %tobool.i590.not.i.i, label %if.end146.i.i.if.end184.i.i_crit_edge, label %if.then149.i.i

if.end146.i.i.if.end184.i.i_crit_edge:            ; preds = %if.end146.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end184.i.i

if.then149.i.i:                                   ; preds = %if.end146.i.i
  %418 = ptrtoint ptr %data147.i.i to i32
  call void @__asan_storeN_noabort(i32 %418, i32 4)
  store i32 67108864, ptr %data147.i.i, align 1
  %len150.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_file, ptr %call143.i.i, i32 1, i32 1
  %419 = ptrtoint ptr %len150.i.i to i32
  call void @__asan_storeN_noabort(i32 %419, i32 4)
  store i32 -1660944384, ptr %len150.i.i, align 1
  %data151.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_file, ptr %call143.i.i, i32 2
  %420 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %fwrt, align 8
  %hw_rev.i.i = getelementptr inbounds %struct.iwl_trans, ptr %421, i32 0, i32 10
  %422 = ptrtoint ptr %hw_rev.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %hw_rev.i.i, align 8
  %and.i.i = lshr i32 %423, 4
  %shr.i.i = and i32 %and.i.i, 4095
  %424 = call i32 @llvm.bswap.i32(i32 %shr.i.i) #19
  %425 = ptrtoint ptr %data151.i.i to i32
  call void @__asan_storeN_noabort(i32 %425, i32 4)
  store i32 %424, ptr %data151.i.i, align 1
  %hw_rev_step.i.i = getelementptr inbounds %struct.iwl_trans, ptr %421, i32 0, i32 11
  %426 = ptrtoint ptr %hw_rev_step.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %hw_rev_step.i.i, align 4
  %428 = call i32 @llvm.bswap.i32(i32 %427) #19
  %hw_step.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_file, ptr %call143.i.i, i32 2, i32 1
  %429 = ptrtoint ptr %hw_step.i.i to i32
  call void @__asan_storeN_noabort(i32 %429, i32 4)
  store i32 %428, ptr %hw_step.i.i, align 1
  %fw_human_readable.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_file, ptr %call143.i.i, i32 3
  %human_readable.i.i = getelementptr inbounds %struct.iwl_fw, ptr %415, i32 0, i32 19
  %430 = call ptr @memcpy(ptr %fw_human_readable.i.i, ptr %human_readable.i.i, i32 64)
  %dev_human_readable.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_file, ptr %call143.i.i, i32 11
  %name.i.i = getelementptr inbounds %struct.iwl_trans, ptr %421, i32 0, i32 35
  %431 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %name.i.i, align 4
  %call160.i.i = call ptr @strncpy(ptr noundef %dev_human_readable.i.i, ptr noundef %432, i32 noundef 63) #19
  %bus_human_readable.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_file, ptr %call143.i.i, i32 19
  %433 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %dev27, align 8
  %bus.i.i = getelementptr inbounds %struct.device, ptr %434, i32 0, i32 5
  %435 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %bus.i.i, align 8
  %437 = ptrtoint ptr %436 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %436, align 4
  %call163.i.i = call ptr @strncpy(ptr noundef %bus_human_readable.i.i, ptr noundef %438, i32 noundef 7) #19
  %439 = ptrtoint ptr %smem_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %smem_cfg.i.i, align 4
  %conv165.i.i = trunc i32 %440 to i8
  %num_of_lmacs.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_file, ptr %call143.i.i, i32 20
  %441 = ptrtoint ptr %num_of_lmacs.i.i to i32
  call void @__asan_store1_noabort(i32 %441)
  store i8 %conv165.i.i, ptr %num_of_lmacs.i.i, align 1
  %lmac_err_id.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 5
  %442 = ptrtoint ptr %lmac_err_id.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %lmac_err_id.i.i, align 8
  %444 = call i32 @llvm.bswap.i32(i32 %443) #19
  %lmac_err_id168.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_info, ptr %data151.i.i, i32 0, i32 7
  %445 = ptrtoint ptr %lmac_err_id168.i.i to i32
  call void @__asan_storeN_noabort(i32 %445, i32 4)
  store i32 %444, ptr %lmac_err_id168.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %440)
  %cmp172.i.i = icmp sgt i32 %440, 1
  br i1 %cmp172.i.i, label %if.then174.i.i, label %if.then149.i.i.if.end180.i.i_crit_edge

if.then149.i.i.if.end180.i.i_crit_edge:           ; preds = %if.then149.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end180.i.i

if.then174.i.i:                                   ; preds = %if.then149.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx177.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 5, i32 1
  %446 = ptrtoint ptr %arrayidx177.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %arrayidx177.i.i, align 4
  %448 = call i32 @llvm.bswap.i32(i32 %447) #19
  %arrayidx179.i.i = getelementptr %struct.iwl_fw_error_dump_info, ptr %data151.i.i, i32 0, i32 7, i32 1
  %449 = ptrtoint ptr %arrayidx179.i.i to i32
  call void @__asan_storeN_noabort(i32 %449, i32 4)
  store i32 %448, ptr %arrayidx179.i.i, align 1
  br label %if.end180.i.i

if.end180.i.i:                                    ; preds = %if.then174.i.i, %if.then149.i.i.if.end180.i.i_crit_edge
  %umac_err_id.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 6
  %450 = ptrtoint ptr %umac_err_id.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %umac_err_id.i.i, align 8
  %452 = call i32 @llvm.bswap.i32(i32 %451) #19
  %umac_err_id182.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_info, ptr %data151.i.i, i32 0, i32 6
  %453 = ptrtoint ptr %umac_err_id182.i.i to i32
  call void @__asan_storeN_noabort(i32 %453, i32 4)
  store i32 %452, ptr %umac_err_id182.i.i, align 1
  %454 = ptrtoint ptr %len150.i.i to i32
  call void @__asan_loadN_noabort(i32 %454, i32 4)
  %455 = load i32, ptr %len150.i.i, align 1
  %456 = call i32 @llvm.bswap.i32(i32 %455) #19
  %add.ptr.i.i.i = getelementptr i8, ptr %data151.i.i, i32 %456
  %457 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_store4_noabort(i32 %457)
  store ptr %add.ptr.i.i.i, ptr %dump_data.i.i, align 4
  br label %if.end184.i.i

if.end184.i.i:                                    ; preds = %if.end180.i.i, %if.end146.i.i.if.end184.i.i_crit_edge
  %458 = ptrtoint ptr %dump_mask.i588.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %dump_mask.i588.i.i, align 4
  %and.i593.i.i = and i32 %459, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i593.i.i)
  %tobool.i594.not.i.i = icmp eq i32 %and.i593.i.i, 0
  br i1 %tobool.i594.not.i.i, label %if.end184.i.i.if.end233.i.i_crit_edge, label %if.then186.i.i

if.end184.i.i.if.end233.i.i_crit_edge:            ; preds = %if.end184.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end233.i.i

if.then186.i.i:                                   ; preds = %if.end184.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %460 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %dump_data.i.i, align 4
  %462 = ptrtoint ptr %461 to i32
  call void @__asan_storeN_noabort(i32 %462, i32 4)
  store i32 268435456, ptr %461, align 1
  %463 = load ptr, ptr %dump_data.i.i, align 4
  %len188.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %463, i32 0, i32 1
  %464 = ptrtoint ptr %len188.i.i to i32
  call void @__asan_storeN_noabort(i32 %464, i32 4)
  store i32 -1476395008, ptr %len188.i.i, align 1
  %data189.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %463, i32 0, i32 2
  %465 = ptrtoint ptr %smem_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %smem_cfg.i.i, align 4
  %467 = call i32 @llvm.bswap.i32(i32 %466) #19
  %468 = ptrtoint ptr %data189.i.i to i32
  call void @__asan_storeN_noabort(i32 %468, i32 4)
  store i32 %467, ptr %data189.i.i, align 1
  %num_txfifo_entries.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 1
  %469 = ptrtoint ptr %num_txfifo_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %num_txfifo_entries.i.i, align 4
  %471 = call i32 @llvm.bswap.i32(i32 %470) #19
  %num_txfifo_entries193.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %463, i32 1, i32 1
  %472 = ptrtoint ptr %num_txfifo_entries193.i.i to i32
  call void @__asan_storeN_noabort(i32 %472, i32 4)
  store i32 %471, ptr %num_txfifo_entries193.i.i, align 1
  %lmac205.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %463, i32 2
  %arrayidx198.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 0
  %473 = ptrtoint ptr %arrayidx198.i.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %arrayidx198.i.i, align 4
  %475 = call i32 @llvm.bswap.i32(i32 %474) #19
  %476 = ptrtoint ptr %lmac205.i.i to i32
  call void @__asan_storeN_noabort(i32 %476, i32 4)
  store i32 %475, ptr %lmac205.i.i, align 1
  %arrayidx204.1.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 0, i32 0, i32 1
  %477 = ptrtoint ptr %arrayidx204.1.i.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %arrayidx204.1.i.i, align 4
  %479 = call i32 @llvm.bswap.i32(i32 %478) #19
  %arrayidx208.1.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 2, i32 1
  %480 = ptrtoint ptr %arrayidx208.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %480, i32 4)
  store i32 %479, ptr %arrayidx208.1.i.i, align 1
  %arrayidx204.2.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 0, i32 0, i32 2
  %481 = ptrtoint ptr %arrayidx204.2.i.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %arrayidx204.2.i.i, align 4
  %483 = call i32 @llvm.bswap.i32(i32 %482) #19
  %arrayidx208.2.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 3
  %484 = ptrtoint ptr %arrayidx208.2.i.i to i32
  call void @__asan_storeN_noabort(i32 %484, i32 4)
  store i32 %483, ptr %arrayidx208.2.i.i, align 1
  %arrayidx204.3.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 0, i32 0, i32 3
  %485 = ptrtoint ptr %arrayidx204.3.i.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %arrayidx204.3.i.i, align 4
  %487 = call i32 @llvm.bswap.i32(i32 %486) #19
  %arrayidx208.3.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 3, i32 1
  %488 = ptrtoint ptr %arrayidx208.3.i.i to i32
  call void @__asan_storeN_noabort(i32 %488, i32 4)
  store i32 %487, ptr %arrayidx208.3.i.i, align 1
  %arrayidx204.4.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 0, i32 0, i32 4
  %489 = ptrtoint ptr %arrayidx204.4.i.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %arrayidx204.4.i.i, align 4
  %491 = call i32 @llvm.bswap.i32(i32 %490) #19
  %arrayidx208.4.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 4
  %492 = ptrtoint ptr %arrayidx208.4.i.i to i32
  call void @__asan_storeN_noabort(i32 %492, i32 4)
  store i32 %491, ptr %arrayidx208.4.i.i, align 1
  %arrayidx204.5.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 0, i32 0, i32 5
  %493 = ptrtoint ptr %arrayidx204.5.i.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %arrayidx204.5.i.i, align 4
  %495 = call i32 @llvm.bswap.i32(i32 %494) #19
  %arrayidx208.5.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 4, i32 1
  %496 = ptrtoint ptr %arrayidx208.5.i.i to i32
  call void @__asan_storeN_noabort(i32 %496, i32 4)
  store i32 %495, ptr %arrayidx208.5.i.i, align 1
  %arrayidx204.6.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 0, i32 0, i32 6
  %497 = ptrtoint ptr %arrayidx204.6.i.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %arrayidx204.6.i.i, align 4
  %499 = call i32 @llvm.bswap.i32(i32 %498) #19
  %arrayidx208.6.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 5
  %500 = ptrtoint ptr %arrayidx208.6.i.i to i32
  call void @__asan_storeN_noabort(i32 %500, i32 4)
  store i32 %499, ptr %arrayidx208.6.i.i, align 1
  %arrayidx204.7.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 0, i32 0, i32 7
  %501 = ptrtoint ptr %arrayidx204.7.i.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %arrayidx204.7.i.i, align 4
  %503 = call i32 @llvm.bswap.i32(i32 %502) #19
  %arrayidx208.7.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 5, i32 1
  %504 = ptrtoint ptr %arrayidx208.7.i.i to i32
  call void @__asan_storeN_noabort(i32 %504, i32 4)
  store i32 %503, ptr %arrayidx208.7.i.i, align 1
  %arrayidx204.8.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 0, i32 0, i32 8
  %505 = ptrtoint ptr %arrayidx204.8.i.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load i32, ptr %arrayidx204.8.i.i, align 4
  %507 = call i32 @llvm.bswap.i32(i32 %506) #19
  %arrayidx208.8.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 6
  %508 = ptrtoint ptr %arrayidx208.8.i.i to i32
  call void @__asan_storeN_noabort(i32 %508, i32 4)
  store i32 %507, ptr %arrayidx208.8.i.i, align 1
  %arrayidx204.9.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 0, i32 0, i32 9
  %509 = ptrtoint ptr %arrayidx204.9.i.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %arrayidx204.9.i.i, align 4
  %511 = call i32 @llvm.bswap.i32(i32 %510) #19
  %arrayidx208.9.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 6, i32 1
  %512 = ptrtoint ptr %arrayidx208.9.i.i to i32
  call void @__asan_storeN_noabort(i32 %512, i32 4)
  store i32 %511, ptr %arrayidx208.9.i.i, align 1
  %arrayidx204.10.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 0, i32 0, i32 10
  %513 = ptrtoint ptr %arrayidx204.10.i.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %arrayidx204.10.i.i, align 4
  %515 = call i32 @llvm.bswap.i32(i32 %514) #19
  %arrayidx208.10.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 7
  %516 = ptrtoint ptr %arrayidx208.10.i.i to i32
  call void @__asan_storeN_noabort(i32 %516, i32 4)
  store i32 %515, ptr %arrayidx208.10.i.i, align 1
  %arrayidx204.11.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 0, i32 0, i32 11
  %517 = ptrtoint ptr %arrayidx204.11.i.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %arrayidx204.11.i.i, align 4
  %519 = call i32 @llvm.bswap.i32(i32 %518) #19
  %arrayidx208.11.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 7, i32 1
  %520 = ptrtoint ptr %arrayidx208.11.i.i to i32
  call void @__asan_storeN_noabort(i32 %520, i32 4)
  store i32 %519, ptr %arrayidx208.11.i.i, align 1
  %arrayidx204.12.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 0, i32 0, i32 12
  %521 = ptrtoint ptr %arrayidx204.12.i.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %arrayidx204.12.i.i, align 4
  %523 = call i32 @llvm.bswap.i32(i32 %522) #19
  %arrayidx208.12.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 8
  %524 = ptrtoint ptr %arrayidx208.12.i.i to i32
  call void @__asan_storeN_noabort(i32 %524, i32 4)
  store i32 %523, ptr %arrayidx208.12.i.i, align 1
  %arrayidx204.13.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 0, i32 0, i32 13
  %525 = ptrtoint ptr %arrayidx204.13.i.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load i32, ptr %arrayidx204.13.i.i, align 4
  %527 = call i32 @llvm.bswap.i32(i32 %526) #19
  %arrayidx208.13.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 8, i32 1
  %528 = ptrtoint ptr %arrayidx208.13.i.i to i32
  call void @__asan_storeN_noabort(i32 %528, i32 4)
  store i32 %527, ptr %arrayidx208.13.i.i, align 1
  %arrayidx204.14.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 0, i32 0, i32 14
  %529 = ptrtoint ptr %arrayidx204.14.i.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %arrayidx204.14.i.i, align 4
  %531 = call i32 @llvm.bswap.i32(i32 %530) #19
  %arrayidx208.14.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 9
  %532 = ptrtoint ptr %arrayidx208.14.i.i to i32
  call void @__asan_storeN_noabort(i32 %532, i32 4)
  store i32 %531, ptr %arrayidx208.14.i.i, align 1
  %rxfifo1_size.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 0, i32 1
  %533 = ptrtoint ptr %rxfifo1_size.i.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load i32, ptr %rxfifo1_size.i.i, align 4
  %535 = call i32 @llvm.bswap.i32(i32 %534) #19
  %rxfifo1_size216.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %463, i32 9, i32 1
  %536 = ptrtoint ptr %rxfifo1_size216.i.i to i32
  call void @__asan_storeN_noabort(i32 %536, i32 4)
  store i32 %535, ptr %rxfifo1_size216.i.i, align 1
  %arrayidx198.1.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 1
  %arrayidx206.1.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 10
  %537 = ptrtoint ptr %arrayidx198.1.i.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load i32, ptr %arrayidx198.1.i.i, align 4
  %539 = call i32 @llvm.bswap.i32(i32 %538) #19
  %540 = ptrtoint ptr %arrayidx206.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %540, i32 4)
  store i32 %539, ptr %arrayidx206.1.i.i, align 1
  %arrayidx204.1.1.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 1, i32 0, i32 1
  %541 = ptrtoint ptr %arrayidx204.1.1.i.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %arrayidx204.1.1.i.i, align 4
  %543 = call i32 @llvm.bswap.i32(i32 %542) #19
  %arrayidx208.1.1.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 10, i32 1
  %544 = ptrtoint ptr %arrayidx208.1.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %544, i32 4)
  store i32 %543, ptr %arrayidx208.1.1.i.i, align 1
  %arrayidx204.2.1.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 1, i32 0, i32 2
  %545 = ptrtoint ptr %arrayidx204.2.1.i.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load i32, ptr %arrayidx204.2.1.i.i, align 4
  %547 = call i32 @llvm.bswap.i32(i32 %546) #19
  %arrayidx208.2.1.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 11
  %548 = ptrtoint ptr %arrayidx208.2.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %548, i32 4)
  store i32 %547, ptr %arrayidx208.2.1.i.i, align 1
  %arrayidx204.3.1.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 1, i32 0, i32 3
  %549 = ptrtoint ptr %arrayidx204.3.1.i.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load i32, ptr %arrayidx204.3.1.i.i, align 4
  %551 = call i32 @llvm.bswap.i32(i32 %550) #19
  %arrayidx208.3.1.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 11, i32 1
  %552 = ptrtoint ptr %arrayidx208.3.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %552, i32 4)
  store i32 %551, ptr %arrayidx208.3.1.i.i, align 1
  %arrayidx204.4.1.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 1, i32 0, i32 4
  %553 = ptrtoint ptr %arrayidx204.4.1.i.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load i32, ptr %arrayidx204.4.1.i.i, align 4
  %555 = call i32 @llvm.bswap.i32(i32 %554) #19
  %arrayidx208.4.1.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 12
  %556 = ptrtoint ptr %arrayidx208.4.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %556, i32 4)
  store i32 %555, ptr %arrayidx208.4.1.i.i, align 1
  %arrayidx204.5.1.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 1, i32 0, i32 5
  %557 = ptrtoint ptr %arrayidx204.5.1.i.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %arrayidx204.5.1.i.i, align 4
  %559 = call i32 @llvm.bswap.i32(i32 %558) #19
  %arrayidx208.5.1.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 12, i32 1
  %560 = ptrtoint ptr %arrayidx208.5.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %560, i32 4)
  store i32 %559, ptr %arrayidx208.5.1.i.i, align 1
  %arrayidx204.6.1.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 1, i32 0, i32 6
  %561 = ptrtoint ptr %arrayidx204.6.1.i.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load i32, ptr %arrayidx204.6.1.i.i, align 4
  %563 = call i32 @llvm.bswap.i32(i32 %562) #19
  %arrayidx208.6.1.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 13
  %564 = ptrtoint ptr %arrayidx208.6.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %564, i32 4)
  store i32 %563, ptr %arrayidx208.6.1.i.i, align 1
  %arrayidx204.7.1.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 1, i32 0, i32 7
  %565 = ptrtoint ptr %arrayidx204.7.1.i.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %arrayidx204.7.1.i.i, align 4
  %567 = call i32 @llvm.bswap.i32(i32 %566) #19
  %arrayidx208.7.1.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 13, i32 1
  %568 = ptrtoint ptr %arrayidx208.7.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %568, i32 4)
  store i32 %567, ptr %arrayidx208.7.1.i.i, align 1
  %arrayidx204.8.1.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 1, i32 0, i32 8
  %569 = ptrtoint ptr %arrayidx204.8.1.i.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load i32, ptr %arrayidx204.8.1.i.i, align 4
  %571 = call i32 @llvm.bswap.i32(i32 %570) #19
  %arrayidx208.8.1.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 14
  %572 = ptrtoint ptr %arrayidx208.8.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %572, i32 4)
  store i32 %571, ptr %arrayidx208.8.1.i.i, align 1
  %arrayidx204.9.1.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 1, i32 0, i32 9
  %573 = ptrtoint ptr %arrayidx204.9.1.i.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load i32, ptr %arrayidx204.9.1.i.i, align 4
  %575 = call i32 @llvm.bswap.i32(i32 %574) #19
  %arrayidx208.9.1.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 14, i32 1
  %576 = ptrtoint ptr %arrayidx208.9.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %576, i32 4)
  store i32 %575, ptr %arrayidx208.9.1.i.i, align 1
  %arrayidx204.10.1.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 1, i32 0, i32 10
  %577 = ptrtoint ptr %arrayidx204.10.1.i.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load i32, ptr %arrayidx204.10.1.i.i, align 4
  %579 = call i32 @llvm.bswap.i32(i32 %578) #19
  %arrayidx208.10.1.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 15
  %580 = ptrtoint ptr %arrayidx208.10.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %580, i32 4)
  store i32 %579, ptr %arrayidx208.10.1.i.i, align 1
  %arrayidx204.11.1.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 1, i32 0, i32 11
  %581 = ptrtoint ptr %arrayidx204.11.1.i.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %arrayidx204.11.1.i.i, align 4
  %583 = call i32 @llvm.bswap.i32(i32 %582) #19
  %arrayidx208.11.1.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 15, i32 1
  %584 = ptrtoint ptr %arrayidx208.11.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %584, i32 4)
  store i32 %583, ptr %arrayidx208.11.1.i.i, align 1
  %arrayidx204.12.1.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 1, i32 0, i32 12
  %585 = ptrtoint ptr %arrayidx204.12.1.i.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load i32, ptr %arrayidx204.12.1.i.i, align 4
  %587 = call i32 @llvm.bswap.i32(i32 %586) #19
  %arrayidx208.12.1.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 16
  %588 = ptrtoint ptr %arrayidx208.12.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %588, i32 4)
  store i32 %587, ptr %arrayidx208.12.1.i.i, align 1
  %arrayidx204.13.1.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 1, i32 0, i32 13
  %589 = ptrtoint ptr %arrayidx204.13.1.i.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load i32, ptr %arrayidx204.13.1.i.i, align 4
  %591 = call i32 @llvm.bswap.i32(i32 %590) #19
  %arrayidx208.13.1.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 16, i32 1
  %592 = ptrtoint ptr %arrayidx208.13.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %592, i32 4)
  store i32 %591, ptr %arrayidx208.13.1.i.i, align 1
  %arrayidx204.14.1.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 1, i32 0, i32 14
  %593 = ptrtoint ptr %arrayidx204.14.1.i.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load i32, ptr %arrayidx204.14.1.i.i, align 4
  %595 = call i32 @llvm.bswap.i32(i32 %594) #19
  %arrayidx208.14.1.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 17
  %596 = ptrtoint ptr %arrayidx208.14.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %596, i32 4)
  store i32 %595, ptr %arrayidx208.14.1.i.i, align 1
  %rxfifo1_size.1.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 1, i32 1
  %597 = ptrtoint ptr %rxfifo1_size.1.i.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load i32, ptr %rxfifo1_size.1.i.i, align 4
  %599 = call i32 @llvm.bswap.i32(i32 %598) #19
  %rxfifo1_size216.1.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 17, i32 1
  %600 = ptrtoint ptr %rxfifo1_size216.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %600, i32 4)
  store i32 %599, ptr %rxfifo1_size216.1.i.i, align 1
  %rxfifo2_size.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 3
  %601 = ptrtoint ptr %rxfifo2_size.i.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load i32, ptr %rxfifo2_size.i.i, align 4
  %603 = call i32 @llvm.bswap.i32(i32 %602) #19
  %rxfifo2_size220.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %463, i32 18
  %604 = ptrtoint ptr %rxfifo2_size220.i.i to i32
  call void @__asan_storeN_noabort(i32 %604, i32 4)
  store i32 %603, ptr %rxfifo2_size220.i.i, align 1
  %internal_txfifo_addr.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 5
  %605 = ptrtoint ptr %internal_txfifo_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load i32, ptr %internal_txfifo_addr.i.i, align 4
  %607 = call i32 @llvm.bswap.i32(i32 %606) #19
  %internal_txfifo_addr221.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %463, i32 18, i32 1
  %608 = ptrtoint ptr %internal_txfifo_addr221.i.i to i32
  call void @__asan_storeN_noabort(i32 %608, i32 4)
  store i32 %607, ptr %internal_txfifo_addr221.i.i, align 1
  %internal_txfifo_size227.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %463, i32 19
  %arrayidx226.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 6, i32 0
  %609 = ptrtoint ptr %arrayidx226.i.i to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load i32, ptr %arrayidx226.i.i, align 4
  %611 = call i32 @llvm.bswap.i32(i32 %610) #19
  %612 = ptrtoint ptr %internal_txfifo_size227.i.i to i32
  call void @__asan_storeN_noabort(i32 %612, i32 4)
  store i32 %611, ptr %internal_txfifo_size227.i.i, align 1
  %arrayidx226.1.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 6, i32 1
  %613 = ptrtoint ptr %arrayidx226.1.i.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load i32, ptr %arrayidx226.1.i.i, align 4
  %615 = call i32 @llvm.bswap.i32(i32 %614) #19
  %arrayidx228.1.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 19, i32 1
  %616 = ptrtoint ptr %arrayidx228.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %616, i32 4)
  store i32 %615, ptr %arrayidx228.1.i.i, align 1
  %arrayidx226.2.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 6, i32 2
  %617 = ptrtoint ptr %arrayidx226.2.i.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load i32, ptr %arrayidx226.2.i.i, align 4
  %619 = call i32 @llvm.bswap.i32(i32 %618) #19
  %arrayidx228.2.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 20
  %620 = ptrtoint ptr %arrayidx228.2.i.i to i32
  call void @__asan_storeN_noabort(i32 %620, i32 4)
  store i32 %619, ptr %arrayidx228.2.i.i, align 1
  %arrayidx226.3.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 6, i32 3
  %621 = ptrtoint ptr %arrayidx226.3.i.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load i32, ptr %arrayidx226.3.i.i, align 4
  %623 = call i32 @llvm.bswap.i32(i32 %622) #19
  %arrayidx228.3.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 20, i32 1
  %624 = ptrtoint ptr %arrayidx228.3.i.i to i32
  call void @__asan_storeN_noabort(i32 %624, i32 4)
  store i32 %623, ptr %arrayidx228.3.i.i, align 1
  %arrayidx226.4.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 6, i32 4
  %625 = ptrtoint ptr %arrayidx226.4.i.i to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load i32, ptr %arrayidx226.4.i.i, align 4
  %627 = call i32 @llvm.bswap.i32(i32 %626) #19
  %arrayidx228.4.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 21
  %628 = ptrtoint ptr %arrayidx228.4.i.i to i32
  call void @__asan_storeN_noabort(i32 %628, i32 4)
  store i32 %627, ptr %arrayidx228.4.i.i, align 1
  %arrayidx226.5.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 6, i32 5
  %629 = ptrtoint ptr %arrayidx226.5.i.i to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load i32, ptr %arrayidx226.5.i.i, align 4
  %631 = call i32 @llvm.bswap.i32(i32 %630) #19
  %arrayidx228.5.i.i = getelementptr %struct.iwl_fw_error_dump_data, ptr %463, i32 21, i32 1
  %632 = ptrtoint ptr %arrayidx228.5.i.i to i32
  call void @__asan_storeN_noabort(i32 %632, i32 4)
  store i32 %631, ptr %arrayidx228.5.i.i, align 1
  %633 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %dump_data.i.i, align 4
  %data1.i595.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %634, i32 0, i32 2
  %len.i596.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %634, i32 0, i32 1
  %635 = ptrtoint ptr %len.i596.i.i to i32
  call void @__asan_loadN_noabort(i32 %635, i32 4)
  %636 = load i32, ptr %len.i596.i.i, align 1
  %637 = call i32 @llvm.bswap.i32(i32 %636) #19
  %add.ptr.i597.i.i = getelementptr i8, ptr %data1.i595.i.i, i32 %637
  %638 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_store4_noabort(i32 %638)
  store ptr %add.ptr.i597.i.i, ptr %dump_data.i.i, align 4
  br label %if.end233.i.i

if.end233.i.i:                                    ; preds = %if.then186.i.i, %if.end184.i.i.if.end233.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fifo_len.0.i.i)
  %tobool234.not.i.i = icmp eq i32 %fifo_len.0.i.i, 0
  br i1 %tobool234.not.i.i, label %if.end233.i.i.if.end236.i.i_crit_edge, label %if.then235.i.i

if.end233.i.i.if.end236.i.i_crit_edge:            ; preds = %if.end233.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end236.i.i

if.then235.i.i:                                   ; preds = %if.end233.i.i
  %639 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %dev27, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %640, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_fw_dump_rxf, ptr noundef nonnull @.str.26) #19
  %641 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %fwrt, align 8
  %ops.i598.i.i = getelementptr inbounds %struct.iwl_trans, ptr %642, i32 0, i32 1
  %643 = ptrtoint ptr %ops.i598.i.i to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %ops.i598.i.i, align 4
  %grab_nic_access.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %644, i32 0, i32 32
  %645 = ptrtoint ptr %grab_nic_access.i.i.i to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %grab_nic_access.i.i.i, align 4
  %call.i.i.i = call zeroext i1 %646(ptr noundef %642) #19
  br i1 %call.i.i.i, label %if.end.i603.i.i, label %if.then235.i.i.iwl_fw_dump_rxf.exit.i.i_crit_edge, !prof !99

if.then235.i.i.iwl_fw_dump_rxf.exit.i.i_crit_edge: ; preds = %if.then235.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_fw_dump_rxf.exit.i.i

if.end.i603.i.i:                                  ; preds = %if.then235.i.i
  %647 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %fw.i, align 4
  %dump_mask.i.i600.i.i = getelementptr inbounds %struct.iwl_fw, ptr %648, i32 0, i32 20, i32 7
  %649 = ptrtoint ptr %dump_mask.i.i600.i.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load i32, ptr %dump_mask.i.i600.i.i, align 4
  %and.i.i601.i.i = and i32 %650, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i601.i.i)
  %tobool.i.not.i602.i.i = icmp eq i32 %and.i.i601.i.i, 0
  br i1 %tobool.i.not.i602.i.i, label %if.end.i603.i.i.if.end15.i.i.i_crit_edge, label %if.then7.i.i.i

if.end.i603.i.i.if.end15.i.i.i_crit_edge:         ; preds = %if.end.i603.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15.i.i.i

if.then7.i.i.i:                                   ; preds = %if.end.i603.i.i
  %rxfifo1_size.i604.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 0, i32 1
  %651 = ptrtoint ptr %rxfifo1_size.i604.i.i to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load i32, ptr %rxfifo1_size.i604.i.i, align 4
  call fastcc void @iwl_fwrt_dump_rxf(ptr noundef %fwrt, ptr noundef nonnull %dump_data.i.i, i32 noundef %652, i32 noundef 0, i32 noundef 0) #19
  %rxfifo2_size.i605.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 3
  %653 = ptrtoint ptr %rxfifo2_size.i605.i.i to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load i32, ptr %rxfifo2_size.i605.i.i, align 4
  %655 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %fwrt, align 8
  %trans_cfg.i606.i.i = getelementptr inbounds %struct.iwl_trans, ptr %656, i32 0, i32 3
  %657 = ptrtoint ptr %trans_cfg.i606.i.i to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %trans_cfg.i606.i.i, align 4
  %umac_prph_offset.i.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %658, i32 0, i32 2
  %659 = ptrtoint ptr %umac_prph_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load i32, ptr %umac_prph_offset.i.i.i, align 4
  %add.i607.i.i = add i32 %660, 512
  call fastcc void @iwl_fwrt_dump_rxf(ptr noundef %fwrt, ptr noundef nonnull %dump_data.i.i, i32 noundef %654, i32 noundef %add.i607.i.i, i32 noundef 1) #19
  %661 = ptrtoint ptr %smem_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load i32, ptr %smem_cfg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %662)
  %cmp.i608.i.i = icmp sgt i32 %662, 1
  br i1 %cmp.i608.i.i, label %if.then10.i.i.i, label %if.then7.i.i.i.if.end15.i.i.i_crit_edge

if.then7.i.i.i.if.end15.i.i.i_crit_edge:          ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15.i.i.i

if.then10.i.i.i:                                  ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rxfifo1_size13.i.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 1, i32 1
  %663 = ptrtoint ptr %rxfifo1_size13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load i32, ptr %rxfifo1_size13.i.i.i, align 4
  call fastcc void @iwl_fwrt_dump_rxf(ptr noundef %fwrt, ptr noundef nonnull %dump_data.i.i, i32 noundef %664, i32 noundef 1048576, i32 noundef 2) #19
  br label %if.end15.i.i.i

if.end15.i.i.i:                                   ; preds = %if.then10.i.i.i, %if.then7.i.i.i.if.end15.i.i.i_crit_edge, %if.end.i603.i.i.if.end15.i.i.i_crit_edge
  %665 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %fwrt, align 8
  %ops.i.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %666, i32 0, i32 1
  %667 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %ops.i.i.i.i, align 4
  %release_nic_access.i.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %668, i32 0, i32 33
  %669 = ptrtoint ptr %release_nic_access.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %release_nic_access.i.i.i.i, align 4
  call void %670(ptr noundef %666) #19
  br label %iwl_fw_dump_rxf.exit.i.i

iwl_fw_dump_rxf.exit.i.i:                         ; preds = %if.end15.i.i.i, %if.then235.i.i.iwl_fw_dump_rxf.exit.i.i_crit_edge
  %671 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %dev27, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %672, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_fw_dump_txf, ptr noundef nonnull @.str.27) #19
  %673 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %fwrt, align 8
  %ops.i611.i.i = getelementptr inbounds %struct.iwl_trans, ptr %674, i32 0, i32 1
  %675 = ptrtoint ptr %ops.i611.i.i to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %ops.i611.i.i, align 4
  %grab_nic_access.i612.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %676, i32 0, i32 32
  %677 = ptrtoint ptr %grab_nic_access.i612.i.i to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %grab_nic_access.i612.i.i, align 4
  %call.i613.i.i = call zeroext i1 %678(ptr noundef %674) #19
  br i1 %call.i613.i.i, label %if.end.i618.i.i, label %iwl_fw_dump_rxf.exit.i.i.if.end236.i.i_crit_edge, !prof !99

iwl_fw_dump_rxf.exit.i.i.if.end236.i.i_crit_edge: ; preds = %iwl_fw_dump_rxf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end236.i.i

if.end.i618.i.i:                                  ; preds = %iwl_fw_dump_rxf.exit.i.i
  %679 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load ptr, ptr %fw.i, align 4
  %dump_mask.i.i615.i.i = getelementptr inbounds %struct.iwl_fw, ptr %680, i32 0, i32 20, i32 7
  %681 = ptrtoint ptr %dump_mask.i.i615.i.i to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load i32, ptr %dump_mask.i.i615.i.i, align 4
  %and.i.i616.i.i = and i32 %682, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i616.i.i)
  %tobool.i.not.i617.i.i = icmp eq i32 %and.i.i616.i.i, 0
  br i1 %tobool.i.not.i617.i.i, label %if.end.i618.i.i.if.end29.i.i.i_crit_edge, label %for.cond.preheader.i.i.i

if.end.i618.i.i.if.end29.i.i.i_crit_edge:         ; preds = %if.end.i618.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end29.i.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.end.i618.i.i
  %num_txfifo_entries.i619.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 1
  %683 = ptrtoint ptr %num_txfifo_entries.i619.i.i to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load i32, ptr %num_txfifo_entries.i619.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %684)
  %cmp171.i.i.i = icmp sgt i32 %684, 0
  br i1 %cmp171.i.i.i, label %for.body.lr.ph.i.i.i, label %for.cond.preheader.i.i.i.for.end.i623.i.i_crit_edge

for.cond.preheader.i.i.i.for.end.i623.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i623.i.i

for.body.lr.ph.i.i.i:                             ; preds = %for.cond.preheader.i.i.i
  %lmac.i.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2
  br label %for.body.i.i.i110

for.body.i.i.i110:                                ; preds = %for.body.i.i.i110.for.body.i.i.i110_crit_edge, %for.body.lr.ph.i.i.i
  %i.0172.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i621.i.i, %for.body.i.i.i110.for.body.i.i.i110_crit_edge ]
  %685 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %fwrt, align 8
  %ops.i.i620.i.i = getelementptr inbounds %struct.iwl_trans, ptr %686, i32 0, i32 1
  %687 = ptrtoint ptr %ops.i.i620.i.i to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load ptr, ptr %ops.i.i620.i.i, align 4
  %write_prph.i.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %688, i32 0, i32 25
  %689 = ptrtoint ptr %write_prph.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load ptr, ptr %write_prph.i.i.i.i, align 4
  call void %690(ptr noundef %686, i32 noundef 10486844, i32 noundef %i.0172.i.i.i) #19
  %arrayidx10.i.i.i = getelementptr [15 x i32], ptr %lmac.i.i.i, i32 0, i32 %i.0172.i.i.i
  %691 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load i32, ptr %arrayidx10.i.i.i, align 4
  call fastcc void @iwl_fwrt_dump_txf(ptr noundef %fwrt, ptr noundef nonnull %dump_data.i.i, i32 noundef %692, i32 noundef 0, i32 noundef %i.0172.i.i.i) #19
  %inc.i621.i.i = add nuw nsw i32 %i.0172.i.i.i, 1
  %693 = ptrtoint ptr %num_txfifo_entries.i619.i.i to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load i32, ptr %num_txfifo_entries.i619.i.i, align 4
  %cmp.i622.i.i = icmp slt i32 %inc.i621.i.i, %694
  br i1 %cmp.i622.i.i, label %for.body.i.i.i110.for.body.i.i.i110_crit_edge, label %for.body.i.i.i110.for.end.i623.i.i_crit_edge

for.body.i.i.i110.for.end.i623.i.i_crit_edge:     ; preds = %for.body.i.i.i110
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i623.i.i

for.body.i.i.i110.for.body.i.i.i110_crit_edge:    ; preds = %for.body.i.i.i110
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i.i.i110

for.end.i623.i.i:                                 ; preds = %for.body.i.i.i110.for.end.i623.i.i_crit_edge, %for.cond.preheader.i.i.i.for.end.i623.i.i_crit_edge
  %695 = ptrtoint ptr %smem_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load i32, ptr %smem_cfg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %696)
  %cmp12.i.i.i = icmp sgt i32 %696, 1
  br i1 %cmp12.i.i.i, label %for.cond14.preheader.i.i.i, label %for.end.i623.i.i.if.end29.i.i.i_crit_edge

for.end.i623.i.i.if.end29.i.i.i_crit_edge:        ; preds = %for.end.i623.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end29.i.i.i

for.cond14.preheader.i.i.i:                       ; preds = %for.end.i623.i.i
  %697 = ptrtoint ptr %num_txfifo_entries.i619.i.i to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load i32, ptr %num_txfifo_entries.i619.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %698)
  %cmp17173.i.i.i = icmp sgt i32 %698, 0
  br i1 %cmp17173.i.i.i, label %for.body18.lr.ph.i.i.i, label %for.cond14.preheader.i.i.i.if.end29.i.i.i_crit_edge

for.cond14.preheader.i.i.i.if.end29.i.i.i_crit_edge: ; preds = %for.cond14.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end29.i.i.i

for.body18.lr.ph.i.i.i:                           ; preds = %for.cond14.preheader.i.i.i
  %arrayidx21.i.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 1
  br label %for.body18.i.i.i

for.body18.i.i.i:                                 ; preds = %for.body18.i.i.i.for.body18.i.i.i_crit_edge, %for.body18.lr.ph.i.i.i
  %i.1174.i.i.i = phi i32 [ 0, %for.body18.lr.ph.i.i.i ], [ %inc26.i.i.i, %for.body18.i.i.i.for.body18.i.i.i_crit_edge ]
  %699 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %fwrt, align 8
  %ops.i140.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %700, i32 0, i32 1
  %701 = ptrtoint ptr %ops.i140.i.i.i to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %ops.i140.i.i.i, align 4
  %write_prph.i141.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %702, i32 0, i32 25
  %703 = ptrtoint ptr %write_prph.i141.i.i.i to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load ptr, ptr %write_prph.i141.i.i.i, align 4
  call void %704(ptr noundef %700, i32 noundef 11535420, i32 noundef %i.1174.i.i.i) #19
  %arrayidx23.i.i.i = getelementptr [15 x i32], ptr %arrayidx21.i.i.i, i32 0, i32 %i.1174.i.i.i
  %705 = ptrtoint ptr %arrayidx23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load i32, ptr %arrayidx23.i.i.i, align 4
  %707 = ptrtoint ptr %num_txfifo_entries.i619.i.i to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load i32, ptr %num_txfifo_entries.i619.i.i, align 4
  %add.i624.i.i = add i32 %708, %i.1174.i.i.i
  call fastcc void @iwl_fwrt_dump_txf(ptr noundef %fwrt, ptr noundef nonnull %dump_data.i.i, i32 noundef %706, i32 noundef 1048576, i32 noundef %add.i624.i.i) #19
  %inc26.i.i.i = add nuw nsw i32 %i.1174.i.i.i, 1
  %709 = ptrtoint ptr %num_txfifo_entries.i619.i.i to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load i32, ptr %num_txfifo_entries.i619.i.i, align 4
  %cmp17.i.i.i = icmp slt i32 %inc26.i.i.i, %710
  br i1 %cmp17.i.i.i, label %for.body18.i.i.i.for.body18.i.i.i_crit_edge, label %for.body18.i.i.i.if.end29.i.i.i_crit_edge

for.body18.i.i.i.if.end29.i.i.i_crit_edge:        ; preds = %for.body18.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end29.i.i.i

for.body18.i.i.i.for.body18.i.i.i_crit_edge:      ; preds = %for.body18.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body18.i.i.i

if.end29.i.i.i:                                   ; preds = %for.body18.i.i.i.if.end29.i.i.i_crit_edge, %for.cond14.preheader.i.i.i.if.end29.i.i.i_crit_edge, %for.end.i623.i.i.if.end29.i.i.i_crit_edge, %if.end.i618.i.i.if.end29.i.i.i_crit_edge
  %711 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load ptr, ptr %fw.i, align 4
  %dump_mask.i143.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %712, i32 0, i32 20, i32 7
  %713 = ptrtoint ptr %dump_mask.i143.i.i.i to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load i32, ptr %dump_mask.i143.i.i.i, align 4
  %and.i144.i.i.i = and i32 %714, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i144.i.i.i)
  %tobool.i145.not.i.i.i = icmp eq i32 %and.i144.i.i.i, 0
  br i1 %tobool.i145.not.i.i.i, label %if.end29.i.i.i.if.end74.i.i.i_crit_edge, label %land.lhs.true.i626.i.i

if.end29.i.i.i.if.end74.i.i.i_crit_edge:          ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end74.i.i.i

land.lhs.true.i626.i.i:                           ; preds = %if.end29.i.i.i
  %arrayidx.i.i.i625.i.i = getelementptr %struct.iwl_fw, ptr %712, i32 0, i32 5, i32 8, i32 2
  %715 = ptrtoint ptr %arrayidx.i.i.i625.i.i to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load volatile i32, ptr %arrayidx.i.i.i625.i.i, align 4
  %717 = and i32 %716, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %717)
  %tobool.i146.not.i.i.i = icmp eq i32 %717, 0
  br i1 %tobool.i146.not.i.i.i, label %land.lhs.true.i626.i.i.if.end74.i.i.i_crit_edge, label %for.cond33.preheader.i.i.i

land.lhs.true.i626.i.i.if.end74.i.i.i_crit_edge:  ; preds = %land.lhs.true.i626.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end74.i.i.i

for.cond33.preheader.i.i.i:                       ; preds = %land.lhs.true.i626.i.i
  %num_txfifo_entries46.i.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 1
  br label %for.body35.i.i.i

for.body35.i.i.i:                                 ; preds = %for.inc71.i.i.i.for.body35.i.i.i_crit_edge, %for.cond33.preheader.i.i.i
  %i.2177.i.i.i = phi i32 [ 0, %for.cond33.preheader.i.i.i ], [ %inc72.i.i.i, %for.inc71.i.i.i.for.body35.i.i.i_crit_edge ]
  %718 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %dump_data.i.i, align 4
  %data36.i.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %719, i32 4
  %arrayidx39.i.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 6, i32 %i.2177.i.i.i
  %720 = ptrtoint ptr %arrayidx39.i.i.i to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load i32, ptr %arrayidx39.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %721)
  %cmp40.i.i.i = icmp eq i32 %721, 0
  br i1 %cmp40.i.i.i, label %for.body35.i.i.i.for.inc71.i.i.i_crit_edge, label %if.end42.i.i.i

for.body35.i.i.i.for.inc71.i.i.i_crit_edge:       ; preds = %for.body35.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc71.i.i.i

if.end42.i.i.i:                                   ; preds = %for.body35.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %719, i32 0, i32 2
  %722 = ptrtoint ptr %719 to i32
  call void @__asan_storeN_noabort(i32 %722, i32 4)
  store i32 234881024, ptr %719, align 1
  %add43.i.i.i111 = add i32 %721, 24
  %723 = call i32 @llvm.bswap.i32(i32 %add43.i.i.i111) #19
  %724 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %dump_data.i.i, align 4
  %len.i627.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %725, i32 0, i32 1
  %726 = ptrtoint ptr %len.i627.i.i to i32
  call void @__asan_storeN_noabort(i32 %726, i32 4)
  store i32 %723, ptr %len.i627.i.i, align 1
  %727 = call i32 @llvm.bswap.i32(i32 %i.2177.i.i.i) #19
  %728 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %728, i32 4)
  store i32 %727, ptr %data.i.i.i, align 1
  %729 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load ptr, ptr %fwrt, align 8
  %731 = ptrtoint ptr %num_txfifo_entries46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load i32, ptr %num_txfifo_entries46.i.i.i, align 4
  %add47.i.i.i = add i32 %732, %i.2177.i.i.i
  %ops.i147.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %730, i32 0, i32 1
  %733 = ptrtoint ptr %ops.i147.i.i.i to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load ptr, ptr %ops.i147.i.i.i, align 4
  %write_prph.i148.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %734, i32 0, i32 25
  %735 = ptrtoint ptr %write_prph.i148.i.i.i to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load ptr, ptr %write_prph.i148.i.i.i, align 4
  call void %736(ptr noundef %730, i32 noundef 10487100, i32 noundef %add47.i.i.i) #19
  %737 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load ptr, ptr %fwrt, align 8
  %ops.i149.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %738, i32 0, i32 1
  %739 = ptrtoint ptr %ops.i149.i.i.i to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load ptr, ptr %ops.i149.i.i.i, align 4
  %read_prph.i.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %740, i32 0, i32 24
  %741 = ptrtoint ptr %read_prph.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %741)
  %742 = load ptr, ptr %read_prph.i.i.i.i, align 4
  %call.i.i.i.i112 = call i32 %742(ptr noundef %738, i32 noundef 10487096) #19
  %743 = call i32 @llvm.bswap.i32(i32 %call.i.i.i.i112) #19
  %available_bytes.i.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %719, i32 1, i32 1
  %744 = ptrtoint ptr %available_bytes.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %744, i32 4)
  store i32 %743, ptr %available_bytes.i.i.i, align 1
  %745 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %fwrt, align 8
  %ops.i150.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %746, i32 0, i32 1
  %747 = ptrtoint ptr %ops.i150.i.i.i to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load ptr, ptr %ops.i150.i.i.i, align 4
  %read_prph.i151.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %748, i32 0, i32 24
  %749 = ptrtoint ptr %read_prph.i151.i.i.i to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %read_prph.i151.i.i.i, align 4
  %call.i152.i.i.i = call i32 %750(ptr noundef %746, i32 noundef 10487060) #19
  %751 = call i32 @llvm.bswap.i32(i32 %call.i152.i.i.i) #19
  %wr_ptr.i.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %719, i32 2
  %752 = ptrtoint ptr %wr_ptr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %752, i32 4)
  store i32 %751, ptr %wr_ptr.i.i.i, align 1
  %753 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %fwrt, align 8
  %ops.i153.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %754, i32 0, i32 1
  %755 = ptrtoint ptr %ops.i153.i.i.i to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load ptr, ptr %ops.i153.i.i.i, align 4
  %read_prph.i154.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %756, i32 0, i32 24
  %757 = ptrtoint ptr %read_prph.i154.i.i.i to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load ptr, ptr %read_prph.i154.i.i.i, align 4
  %call.i155.i.i.i = call i32 %758(ptr noundef %754, i32 noundef 10487056) #19
  %759 = call i32 @llvm.bswap.i32(i32 %call.i155.i.i.i) #19
  %rd_ptr.i.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %719, i32 2, i32 1
  %760 = ptrtoint ptr %rd_ptr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %760, i32 4)
  store i32 %759, ptr %rd_ptr.i.i.i, align 1
  %761 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load ptr, ptr %fwrt, align 8
  %ops.i156.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %762, i32 0, i32 1
  %763 = ptrtoint ptr %ops.i156.i.i.i to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load ptr, ptr %ops.i156.i.i.i, align 4
  %read_prph.i157.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %764, i32 0, i32 24
  %765 = ptrtoint ptr %read_prph.i157.i.i.i to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load ptr, ptr %read_prph.i157.i.i.i, align 4
  %call.i158.i.i.i = call i32 %766(ptr noundef %762, i32 noundef 10487064) #19
  %767 = call i32 @llvm.bswap.i32(i32 %call.i158.i.i.i) #19
  %fence_ptr.i.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %719, i32 3
  %768 = ptrtoint ptr %fence_ptr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %768, i32 4)
  store i32 %767, ptr %fence_ptr.i.i.i, align 1
  %769 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %fwrt, align 8
  %ops.i159.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %770, i32 0, i32 1
  %771 = ptrtoint ptr %ops.i159.i.i.i to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load ptr, ptr %ops.i159.i.i.i, align 4
  %read_prph.i160.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %772, i32 0, i32 24
  %773 = ptrtoint ptr %read_prph.i160.i.i.i to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load ptr, ptr %read_prph.i160.i.i.i, align 4
  %call.i161.i.i.i = call i32 %774(ptr noundef %770, i32 noundef 10487076) #19
  %775 = call i32 @llvm.bswap.i32(i32 %call.i161.i.i.i) #19
  %fence_mode.i.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %719, i32 3, i32 1
  %776 = ptrtoint ptr %fence_mode.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %776, i32 4)
  store i32 %775, ptr %fence_mode.i.i.i, align 1
  %777 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load ptr, ptr %fwrt, align 8
  %ops.i162.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %778, i32 0, i32 1
  %779 = ptrtoint ptr %ops.i162.i.i.i to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load ptr, ptr %ops.i162.i.i.i, align 4
  %write_prph.i163.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %780, i32 0, i32 25
  %781 = ptrtoint ptr %write_prph.i163.i.i.i to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load ptr, ptr %write_prph.i163.i.i.i, align 4
  call void %782(ptr noundef %778, i32 noundef 10487116, i32 noundef 10487060) #19
  %783 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load ptr, ptr %fwrt, align 8
  %ops.i164.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %784, i32 0, i32 1
  %785 = ptrtoint ptr %ops.i164.i.i.i to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load ptr, ptr %ops.i164.i.i.i, align 4
  %read_prph.i165.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %786, i32 0, i32 24
  %787 = ptrtoint ptr %read_prph.i165.i.i.i to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load ptr, ptr %read_prph.i165.i.i.i, align 4
  %call.i166.i.i.i = call i32 %788(ptr noundef %784, i32 noundef 10487112) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %721)
  %cmp62175.not.i.i.i = icmp ult i32 %721, 4
  br i1 %cmp62175.not.i.i.i, label %if.end42.i.i.i.for.end69.i.i.i_crit_edge, label %for.body63.preheader.i.i.i

if.end42.i.i.i.for.end69.i.i.i_crit_edge:         ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end69.i.i.i

for.body63.preheader.i.i.i:                       ; preds = %if.end42.i.i.i
  %div139.i.i.i = lshr i32 %721, 2
  br label %for.body63.i.i.i

for.body63.i.i.i:                                 ; preds = %for.body63.i.i.i.for.body63.i.i.i_crit_edge, %for.body63.preheader.i.i.i
  %j.0176.i.i.i = phi i32 [ %inc68.i.i.i, %for.body63.i.i.i.for.body63.i.i.i_crit_edge ], [ 0, %for.body63.preheader.i.i.i ]
  %789 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load ptr, ptr %fwrt, align 8
  %ops.i167.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %790, i32 0, i32 1
  %791 = ptrtoint ptr %ops.i167.i.i.i to i32
  call void @__asan_load4_noabort(i32 %791)
  %792 = load ptr, ptr %ops.i167.i.i.i, align 4
  %read_prph.i168.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %792, i32 0, i32 24
  %793 = ptrtoint ptr %read_prph.i168.i.i.i to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load ptr, ptr %read_prph.i168.i.i.i, align 4
  %call.i169.i.i.i = call i32 %794(ptr noundef %790, i32 noundef 10487112) #19
  %arrayidx66.i.i.i = getelementptr i32, ptr %data36.i.i.i, i32 %j.0176.i.i.i
  %795 = ptrtoint ptr %arrayidx66.i.i.i to i32
  call void @__asan_store4_noabort(i32 %795)
  store i32 %call.i169.i.i.i, ptr %arrayidx66.i.i.i, align 4
  %inc68.i.i.i = add nuw nsw i32 %j.0176.i.i.i, 1
  %exitcond.not.i628.i.i = icmp eq i32 %inc68.i.i.i, %div139.i.i.i
  br i1 %exitcond.not.i628.i.i, label %for.body63.i.i.i.for.end69.i.i.i_crit_edge, label %for.body63.i.i.i.for.body63.i.i.i_crit_edge

for.body63.i.i.i.for.body63.i.i.i_crit_edge:      ; preds = %for.body63.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body63.i.i.i

for.body63.i.i.i.for.end69.i.i.i_crit_edge:       ; preds = %for.body63.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end69.i.i.i

for.end69.i.i.i:                                  ; preds = %for.body63.i.i.i.for.end69.i.i.i_crit_edge, %if.end42.i.i.i.for.end69.i.i.i_crit_edge
  %796 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load ptr, ptr %dump_data.i.i, align 4
  %data1.i.i.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %797, i32 0, i32 2
  %len.i.i.i.i113 = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %797, i32 0, i32 1
  %798 = ptrtoint ptr %len.i.i.i.i113 to i32
  call void @__asan_loadN_noabort(i32 %798, i32 4)
  %799 = load i32, ptr %len.i.i.i.i113, align 1
  %800 = call i32 @llvm.bswap.i32(i32 %799) #19
  %add.ptr.i.i.i.i114 = getelementptr i8, ptr %data1.i.i.i.i, i32 %800
  %801 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_store4_noabort(i32 %801)
  store ptr %add.ptr.i.i.i.i114, ptr %dump_data.i.i, align 4
  br label %for.inc71.i.i.i

for.inc71.i.i.i:                                  ; preds = %for.end69.i.i.i, %for.body35.i.i.i.for.inc71.i.i.i_crit_edge
  %inc72.i.i.i = add nuw nsw i32 %i.2177.i.i.i, 1
  %exitcond178.not.i.i.i = icmp eq i32 %inc72.i.i.i, 6
  br i1 %exitcond178.not.i.i.i, label %for.inc71.i.i.i.if.end74.i.i.i_crit_edge, label %for.inc71.i.i.i.for.body35.i.i.i_crit_edge

for.inc71.i.i.i.for.body35.i.i.i_crit_edge:       ; preds = %for.inc71.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body35.i.i.i

for.inc71.i.i.i.if.end74.i.i.i_crit_edge:         ; preds = %for.inc71.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end74.i.i.i

if.end74.i.i.i:                                   ; preds = %for.inc71.i.i.i.if.end74.i.i.i_crit_edge, %land.lhs.true.i626.i.i.if.end74.i.i.i_crit_edge, %if.end29.i.i.i.if.end74.i.i.i_crit_edge
  %802 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load ptr, ptr %fwrt, align 8
  %ops.i170.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %803, i32 0, i32 1
  %804 = ptrtoint ptr %ops.i170.i.i.i to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load ptr, ptr %ops.i170.i.i.i, align 4
  %release_nic_access.i.i629.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %805, i32 0, i32 33
  %806 = ptrtoint ptr %release_nic_access.i.i629.i.i to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load ptr, ptr %release_nic_access.i.i629.i.i, align 4
  call void %807(ptr noundef %803) #19
  br label %if.end236.i.i

if.end236.i.i:                                    ; preds = %if.end74.i.i.i, %iwl_fw_dump_rxf.exit.i.i.if.end236.i.i_crit_edge, %if.end233.i.i.if.end236.i.i_crit_edge
  br i1 %tobool237.not.i.i, label %if.end236.i.i.if.end239.i.i_crit_edge, label %if.then238.i.i

if.end236.i.i.if.end239.i.i_crit_edge:            ; preds = %if.end236.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end239.i.i

if.then238.i.i:                                   ; preds = %if.end236.i.i
  %808 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load ptr, ptr %dump_data.i.i, align 4
  %810 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load ptr, ptr %dev27, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %811, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_read_radio_regs, ptr noundef nonnull @.str.28) #19
  %812 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load ptr, ptr %fwrt, align 8
  %ops.i631.i.i = getelementptr inbounds %struct.iwl_trans, ptr %813, i32 0, i32 1
  %814 = ptrtoint ptr %ops.i631.i.i to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load ptr, ptr %ops.i631.i.i, align 4
  %grab_nic_access.i632.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %815, i32 0, i32 32
  %816 = ptrtoint ptr %grab_nic_access.i632.i.i to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load ptr, ptr %grab_nic_access.i632.i.i, align 4
  %call.i633.i.i = call zeroext i1 %817(ptr noundef %813) #19
  br i1 %call.i633.i.i, label %if.end.i636.i.i, label %if.then238.i.i.if.end239.i.i_crit_edge, !prof !99

if.then238.i.i.if.end239.i.i_crit_edge:           ; preds = %if.then238.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end239.i.i

if.end.i636.i.i:                                  ; preds = %if.then238.i.i
  %data.i634.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %809, i32 0, i32 2
  %818 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load ptr, ptr %dump_data.i.i, align 4
  %820 = ptrtoint ptr %819 to i32
  call void @__asan_storeN_noabort(i32 %820, i32 4)
  store i32 218103808, ptr %819, align 1
  %821 = load ptr, ptr %dump_data.i.i, align 4
  %len.i635.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %821, i32 0, i32 1
  %822 = ptrtoint ptr %len.i635.i.i to i32
  call void @__asan_storeN_noabort(i32 %822, i32 4)
  store i32 -1392377856, ptr %len.i635.i.i, align 1
  br label %for.body.i639.i.i

for.body.i639.i.i:                                ; preds = %for.body.i639.i.i.for.body.i639.i.i_crit_edge, %if.end.i636.i.i
  %pos.026.i.i.i = phi ptr [ %data.i634.i.i, %if.end.i636.i.i ], [ %incdec.ptr.i.i.i, %for.body.i639.i.i.for.body.i639.i.i_crit_edge ]
  %i.025.i.i.i = phi i32 [ 0, %if.end.i636.i.i ], [ %inc.i637.i.i, %for.body.i639.i.i.for.body.i639.i.i_crit_edge ]
  %shl.i.i.i115 = shl i32 %i.025.i.i.i, 6
  %or.i.i.i = or i32 %shl.i.i.i115, 3
  %823 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load ptr, ptr %fwrt, align 8
  call void @iwl_write_prph_no_grab(ptr noundef %824, i32 noundef 10496004, i32 noundef %or.i.i.i) #19
  %825 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %825)
  %826 = load ptr, ptr %fwrt, align 8
  %call8.i.i.i = call i32 @iwl_read_prph_no_grab(ptr noundef %826, i32 noundef 10496020) #19
  %conv.i.i.i116 = trunc i32 %call8.i.i.i to i8
  %827 = ptrtoint ptr %pos.026.i.i.i to i32
  call void @__asan_store1_noabort(i32 %827)
  store i8 %conv.i.i.i116, ptr %pos.026.i.i.i, align 1
  %incdec.ptr.i.i.i = getelementptr i8, ptr %pos.026.i.i.i, i32 1
  %inc.i637.i.i = add nuw nsw i32 %i.025.i.i.i, 1
  %exitcond.not.i638.i.i = icmp eq i32 %inc.i637.i.i, 685
  br i1 %exitcond.not.i638.i.i, label %for.end.i645.i.i, label %for.body.i639.i.i.for.body.i639.i.i_crit_edge

for.body.i639.i.i.for.body.i639.i.i_crit_edge:    ; preds = %for.body.i639.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i639.i.i

for.end.i645.i.i:                                 ; preds = %for.body.i639.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %828 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %dump_data.i.i, align 4
  %data1.i.i640.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %829, i32 0, i32 2
  %len.i.i641.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %829, i32 0, i32 1
  %830 = ptrtoint ptr %len.i.i641.i.i to i32
  call void @__asan_loadN_noabort(i32 %830, i32 4)
  %831 = load i32, ptr %len.i.i641.i.i, align 1
  %832 = call i32 @llvm.bswap.i32(i32 %831) #19
  %add.ptr.i.i642.i.i = getelementptr i8, ptr %data1.i.i640.i.i, i32 %832
  %833 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_store4_noabort(i32 %833)
  store ptr %add.ptr.i.i642.i.i, ptr %dump_data.i.i, align 4
  %834 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %834)
  %835 = load ptr, ptr %fwrt, align 8
  %ops.i.i643.i.i = getelementptr inbounds %struct.iwl_trans, ptr %835, i32 0, i32 1
  %836 = ptrtoint ptr %ops.i.i643.i.i to i32
  call void @__asan_load4_noabort(i32 %836)
  %837 = load ptr, ptr %ops.i.i643.i.i, align 4
  %release_nic_access.i.i644.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %837, i32 0, i32 33
  %838 = ptrtoint ptr %release_nic_access.i.i644.i.i to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load ptr, ptr %release_nic_access.i.i644.i.i, align 4
  call void %839(ptr noundef %835) #19
  br label %if.end239.i.i

if.end239.i.i:                                    ; preds = %for.end.i645.i.i, %if.then238.i.i.if.end239.i.i_crit_edge, %if.end236.i.i.if.end239.i.i_crit_edge
  %840 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %840)
  %841 = load ptr, ptr %fw.i, align 4
  %dump_mask.i647.i.i = getelementptr inbounds %struct.iwl_fw, ptr %841, i32 0, i32 20, i32 7
  %842 = ptrtoint ptr %dump_mask.i647.i.i to i32
  call void @__asan_load4_noabort(i32 %842)
  %843 = load i32, ptr %dump_mask.i647.i.i, align 4
  %and.i648.i.i = and i32 %843, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i648.i.i)
  %tobool.i649.not.i.i = icmp eq i32 %and.i648.i.i, 0
  br i1 %tobool.i649.not.i.i, label %if.end239.i.i.if.end258.i.i_crit_edge, label %land.lhs.true242.i.i

if.end239.i.i.if.end258.i.i_crit_edge:            ; preds = %if.end239.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end258.i.i

land.lhs.true242.i.i:                             ; preds = %if.end239.i.i
  %844 = ptrtoint ptr %dump_data1 to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load ptr, ptr %dump_data1, align 4
  %tobool244.not.i.i = icmp eq ptr %845, null
  br i1 %tobool244.not.i.i, label %land.lhs.true242.i.i.if.end258.i.i_crit_edge, label %if.then245.i.i

land.lhs.true242.i.i.if.end258.i.i_crit_edge:     ; preds = %land.lhs.true242.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end258.i.i

if.then245.i.i:                                   ; preds = %land.lhs.true242.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %846 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %846)
  %847 = load ptr, ptr %dump_data.i.i, align 4
  %848 = ptrtoint ptr %847 to i32
  call void @__asan_storeN_noabort(i32 %848, i32 4)
  store i32 167772160, ptr %847, align 1
  %849 = ptrtoint ptr %dump_data1 to i32
  call void @__asan_load4_noabort(i32 %849)
  %850 = load ptr, ptr %dump_data1, align 4
  %851 = ptrtoint ptr %850 to i32
  call void @__asan_load4_noabort(i32 %851)
  %852 = load i32, ptr %850, align 4
  %add249.i.i = add i32 %852, 4
  %853 = call i32 @llvm.bswap.i32(i32 %add249.i.i) #19
  %854 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load ptr, ptr %dump_data.i.i, align 4
  %len250.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %855, i32 0, i32 1
  %856 = ptrtoint ptr %len250.i.i to i32
  call void @__asan_storeN_noabort(i32 %856, i32 4)
  store i32 %853, ptr %len250.i.i, align 1
  %data251.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %855, i32 0, i32 2
  %857 = ptrtoint ptr %dump_data1 to i32
  call void @__asan_load4_noabort(i32 %857)
  %858 = load ptr, ptr %dump_data1, align 4
  %trig_desc.i.i = getelementptr inbounds %struct.iwl_fw_dump_desc, ptr %858, i32 0, i32 1
  %859 = ptrtoint ptr %858 to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load i32, ptr %858, align 4
  %add256.i.i = add i32 %860, 4
  %861 = call ptr @memcpy(ptr %data251.i.i, ptr %trig_desc.i.i, i32 %add256.i.i)
  %add.ptr.i652.i.i = getelementptr i8, ptr %data251.i.i, i32 %add249.i.i
  store ptr %add.ptr.i652.i.i, ptr %dump_data.i.i, align 4
  br label %if.end258.i.i

if.end258.i.i:                                    ; preds = %if.then245.i.i, %land.lhs.true242.i.i.if.end258.i.i_crit_edge, %if.end239.i.i.if.end258.i.i_crit_edge
  %862 = ptrtoint ptr %monitor_only.i.i to i32
  call void @__asan_load1_noabort(i32 %862)
  %863 = load i8, ptr %monitor_only.i.i, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %863)
  %tobool260.not.i.i = icmp eq i8 %863, 0
  br i1 %tobool260.not.i.i, label %if.end262.i.i, label %if.end258.i.i.iwl_fw_error_dump_file.exit.i_crit_edge

if.end258.i.i.iwl_fw_error_dump_file.exit.i_crit_edge: ; preds = %if.end258.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_fw_error_dump_file.exit.i

if.end262.i.i:                                    ; preds = %if.end258.i.i
  %864 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %864)
  %865 = load ptr, ptr %fw.i, align 4
  %dump_mask.i654.i.i = getelementptr inbounds %struct.iwl_fw, ptr %865, i32 0, i32 20, i32 7
  %866 = ptrtoint ptr %dump_mask.i654.i.i to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load i32, ptr %dump_mask.i654.i.i, align 4
  %and.i655.i.i = and i32 %867, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i655.i.i)
  %tobool.i656.not.i.i = icmp eq i32 %and.i655.i.i, 0
  br i1 %tobool.i656.not.i.i, label %if.end262.i.i.if.end294.i.i_crit_edge, label %if.then264.i.i

if.end262.i.i.if.end294.i.i_crit_edge:            ; preds = %if.end262.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end294.i.i

if.then264.i.i:                                   ; preds = %if.end262.i.i
  %mem_tlv267.i.i = getelementptr inbounds %struct.iwl_fw, ptr %865, i32 0, i32 20, i32 5
  %868 = ptrtoint ptr %mem_tlv267.i.i to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load ptr, ptr %mem_tlv267.i.i, align 4
  %n_mem_tlv270.i.i = getelementptr inbounds %struct.iwl_fw, ptr %865, i32 0, i32 20, i32 6
  %870 = ptrtoint ptr %n_mem_tlv270.i.i to i32
  call void @__asan_load4_noabort(i32 %870)
  %871 = load i32, ptr %n_mem_tlv270.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %871)
  %tobool271.not.i.i = icmp ne i32 %871, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sram_len.1.i.i)
  %tobool.not.i657.i.i = icmp eq i32 %sram_len.1.i.i, 0
  %or.cond878.i.i = select i1 %tobool271.not.i.i, i1 true, i1 %tobool.not.i657.i.i
  br i1 %or.cond878.i.i, label %if.then264.i.i.if.end273.i.i_crit_edge, label %if.end.i660.i.i

if.then264.i.i.if.end273.i.i_crit_edge:           ; preds = %if.then264.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end273.i.i

if.end.i660.i.i:                                  ; preds = %if.then264.i.i
  %872 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load ptr, ptr %dump_data.i.i, align 4
  %874 = ptrtoint ptr %873 to i32
  call void @__asan_storeN_noabort(i32 %874, i32 4)
  store i32 150994944, ptr %873, align 1
  %add.i658.i.i = add i32 %sram_len.1.i.i, 8
  %875 = call i32 @llvm.bswap.i32(i32 %add.i658.i.i) #19
  %876 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %876)
  %877 = load ptr, ptr %dump_data.i.i, align 4
  %len2.i.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %877, i32 0, i32 1
  %878 = ptrtoint ptr %len2.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %878, i32 4)
  store i32 %875, ptr %len2.i.i.i, align 1
  %data.i659.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %877, i32 0, i32 2
  %879 = ptrtoint ptr %data.i659.i.i to i32
  call void @__asan_store4_noabort(i32 %879)
  store i32 0, ptr %data.i659.i.i, align 4
  %880 = call i32 @llvm.bswap.i32(i32 %sram_ofs.1.i.i) #19
  %offset.i.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %877, i32 1, i32 1
  %881 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %881)
  store i32 %880, ptr %offset.i.i.i, align 4
  %882 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %882)
  %883 = load ptr, ptr %fwrt, align 8
  %data10.i.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %877, i32 2
  %div52.i.i.i = lshr i32 %sram_len.1.i.i, 2
  %ops.i.i662.i.i = getelementptr inbounds %struct.iwl_trans, ptr %883, i32 0, i32 1
  %884 = ptrtoint ptr %ops.i.i662.i.i to i32
  call void @__asan_load4_noabort(i32 %884)
  %885 = load ptr, ptr %ops.i.i662.i.i, align 4
  %read_mem.i.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %885, i32 0, i32 26
  %886 = ptrtoint ptr %read_mem.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %886)
  %887 = load ptr, ptr %read_mem.i.i.i.i, align 4
  %call.i.i663.i.i = call i32 %887(ptr noundef %883, i32 noundef %sram_ofs.1.i.i, ptr noundef %data10.i.i.i, i32 noundef %div52.i.i.i) #19
  %888 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %888)
  %889 = load ptr, ptr %dump_data.i.i, align 4
  %data1.i.i664.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %889, i32 0, i32 2
  %len.i.i665.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %889, i32 0, i32 1
  %890 = ptrtoint ptr %len.i.i665.i.i to i32
  call void @__asan_loadN_noabort(i32 %890, i32 4)
  %891 = load i32, ptr %len.i.i665.i.i, align 1
  %892 = call i32 @llvm.bswap.i32(i32 %891) #19
  %add.ptr.i.i666.i.i = getelementptr i8, ptr %data1.i.i664.i.i, i32 %892
  %893 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_store4_noabort(i32 %893)
  store ptr %add.ptr.i.i666.i.i, ptr %dump_data.i.i, align 4
  %sanitize_ops.i.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 5
  %894 = ptrtoint ptr %sanitize_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %894)
  %895 = load ptr, ptr %sanitize_ops.i.i.i, align 4
  %tobool15.not.i.i.i = icmp eq ptr %895, null
  br i1 %tobool15.not.i.i.i, label %if.end.i660.i.i.do.end27.i.i.i_crit_edge, label %land.lhs.true.i667.i.i

if.end.i660.i.i.do.end27.i.i.i_crit_edge:         ; preds = %if.end.i660.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end27.i.i.i

land.lhs.true.i667.i.i:                           ; preds = %if.end.i660.i.i
  %frob_mem.i.i.i = getelementptr inbounds %struct.iwl_dump_sanitize_ops, ptr %895, i32 0, i32 2
  %896 = ptrtoint ptr %frob_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %896)
  %897 = load ptr, ptr %frob_mem.i.i.i, align 4
  %tobool17.not.i.i.i = icmp eq ptr %897, null
  br i1 %tobool17.not.i.i.i, label %land.lhs.true.i667.i.i.do.end27.i.i.i_crit_edge, label %if.then18.i.i.i

land.lhs.true.i667.i.i.do.end27.i.i.i_crit_edge:  ; preds = %land.lhs.true.i667.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end27.i.i.i

if.then18.i.i.i:                                  ; preds = %land.lhs.true.i667.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %sanitize_ctx.i.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 6
  %898 = ptrtoint ptr %sanitize_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %898)
  %899 = load ptr, ptr %sanitize_ctx.i.i.i, align 8
  call void %897(ptr noundef %899, i32 noundef %sram_ofs.1.i.i, ptr noundef %data10.i.i.i, i32 noundef %sram_len.1.i.i) #19
  br label %do.end27.i.i.i

do.end27.i.i.i:                                   ; preds = %if.then18.i.i.i, %land.lhs.true.i667.i.i.do.end27.i.i.i_crit_edge, %if.end.i660.i.i.do.end27.i.i.i_crit_edge
  %900 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %900)
  %901 = load ptr, ptr %dev27, align 8
  %902 = ptrtoint ptr %data.i659.i.i to i32
  call void @__asan_load4_noabort(i32 %902)
  %903 = load i32, ptr %data.i659.i.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %901, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_fw_dump_mem, ptr noundef nonnull @.str.29, i32 noundef %903) #19
  br label %if.end273.i.i

if.end273.i.i:                                    ; preds = %do.end27.i.i.i, %if.then264.i.i.if.end273.i.i_crit_edge
  %904 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %904)
  %905 = load ptr, ptr %fw.i, align 4
  %n_mem_tlv277890.i.i = getelementptr inbounds %struct.iwl_fw, ptr %905, i32 0, i32 20, i32 6
  %906 = ptrtoint ptr %n_mem_tlv277890.i.i to i32
  call void @__asan_load4_noabort(i32 %906)
  %907 = load i32, ptr %n_mem_tlv277890.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %907)
  %cmp278891.not.i.i = icmp eq i32 %907, 0
  br i1 %cmp278891.not.i.i, label %if.end273.i.i.for.end289.i.i_crit_edge, label %for.body280.lr.ph.i.i

if.end273.i.i.for.end289.i.i_crit_edge:           ; preds = %if.end273.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end289.i.i

for.body280.lr.ph.i.i:                            ; preds = %if.end273.i.i
  %sanitize_ops.i686.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 5
  %sanitize_ctx.i692.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 6
  br label %for.body280.i.i

for.body280.i.i:                                  ; preds = %iwl_fw_dump_mem.exit696.i.i.for.body280.i.i_crit_edge, %for.body280.lr.ph.i.i
  %i.3892.i.i = phi i32 [ 0, %for.body280.lr.ph.i.i ], [ %inc288.i.i, %iwl_fw_dump_mem.exit696.i.i.for.body280.i.i_crit_edge ]
  %len283.i.i = getelementptr %struct.iwl_fw_dbg_mem_seg_tlv, ptr %869, i32 %i.3892.i.i, i32 2
  %908 = ptrtoint ptr %len283.i.i to i32
  call void @__asan_loadN_noabort(i32 %908, i32 4)
  %909 = load i32, ptr %len283.i.i, align 1
  %910 = call i32 @llvm.bswap.i32(i32 %909) #19
  %ofs285.i.i = getelementptr %struct.iwl_fw_dbg_mem_seg_tlv, ptr %869, i32 %i.3892.i.i, i32 1
  %911 = ptrtoint ptr %ofs285.i.i to i32
  call void @__asan_loadN_noabort(i32 %911, i32 4)
  %912 = load i32, ptr %ofs285.i.i, align 1
  %913 = call i32 @llvm.bswap.i32(i32 %912) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %909)
  %tobool.not.i669.i.i = icmp eq i32 %909, 0
  br i1 %tobool.not.i669.i.i, label %for.body280.i.i.iwl_fw_dump_mem.exit696.i.i_crit_edge, label %if.end.i676.i.i

for.body280.i.i.iwl_fw_dump_mem.exit696.i.i_crit_edge: ; preds = %for.body280.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_fw_dump_mem.exit696.i.i

if.end.i676.i.i:                                  ; preds = %for.body280.i.i
  %arrayidx282.i.i = getelementptr %struct.iwl_fw_dbg_mem_seg_tlv, ptr %869, i32 %i.3892.i.i
  %914 = ptrtoint ptr %arrayidx282.i.i to i32
  call void @__asan_loadN_noabort(i32 %914, i32 4)
  %915 = load i32, ptr %arrayidx282.i.i, align 1
  %916 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %916)
  %917 = load ptr, ptr %dump_data.i.i, align 4
  %918 = ptrtoint ptr %917 to i32
  call void @__asan_storeN_noabort(i32 %918, i32 4)
  store i32 150994944, ptr %917, align 1
  %add.i670.i.i = add i32 %910, 8
  %919 = call i32 @llvm.bswap.i32(i32 %add.i670.i.i) #19
  %920 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %920)
  %921 = load ptr, ptr %dump_data.i.i, align 4
  %len2.i671.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %921, i32 0, i32 1
  %922 = ptrtoint ptr %len2.i671.i.i to i32
  call void @__asan_storeN_noabort(i32 %922, i32 4)
  store i32 %919, ptr %len2.i671.i.i, align 1
  %data.i672.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %921, i32 0, i32 2
  %923 = ptrtoint ptr %data.i672.i.i to i32
  call void @__asan_store4_noabort(i32 %923)
  store i32 %915, ptr %data.i672.i.i, align 4
  %offset.i673.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %921, i32 1, i32 1
  %924 = ptrtoint ptr %offset.i673.i.i to i32
  call void @__asan_store4_noabort(i32 %924)
  store i32 %912, ptr %offset.i673.i.i, align 4
  %925 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %925)
  %926 = load ptr, ptr %fwrt, align 8
  %data10.i678.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %921, i32 2
  %div52.i679.i.i = lshr i32 %910, 2
  %ops.i.i680.i.i = getelementptr inbounds %struct.iwl_trans, ptr %926, i32 0, i32 1
  %927 = ptrtoint ptr %ops.i.i680.i.i to i32
  call void @__asan_load4_noabort(i32 %927)
  %928 = load ptr, ptr %ops.i.i680.i.i, align 4
  %read_mem.i.i681.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %928, i32 0, i32 26
  %929 = ptrtoint ptr %read_mem.i.i681.i.i to i32
  call void @__asan_load4_noabort(i32 %929)
  %930 = load ptr, ptr %read_mem.i.i681.i.i, align 4
  %call.i.i682.i.i = call i32 %930(ptr noundef %926, i32 noundef %913, ptr noundef %data10.i678.i.i, i32 noundef %div52.i679.i.i) #19
  %931 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %931)
  %932 = load ptr, ptr %dump_data.i.i, align 4
  %data1.i.i683.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %932, i32 0, i32 2
  %len.i.i684.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %932, i32 0, i32 1
  %933 = ptrtoint ptr %len.i.i684.i.i to i32
  call void @__asan_loadN_noabort(i32 %933, i32 4)
  %934 = load i32, ptr %len.i.i684.i.i, align 1
  %935 = call i32 @llvm.bswap.i32(i32 %934) #19
  %add.ptr.i.i685.i.i = getelementptr i8, ptr %data1.i.i683.i.i, i32 %935
  %936 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_store4_noabort(i32 %936)
  store ptr %add.ptr.i.i685.i.i, ptr %dump_data.i.i, align 4
  %937 = ptrtoint ptr %sanitize_ops.i686.i.i to i32
  call void @__asan_load4_noabort(i32 %937)
  %938 = load ptr, ptr %sanitize_ops.i686.i.i, align 4
  %tobool15.not.i687.i.i = icmp eq ptr %938, null
  br i1 %tobool15.not.i687.i.i, label %if.end.i676.i.i.do.end27.i695.i.i_crit_edge, label %land.lhs.true.i691.i.i

if.end.i676.i.i.do.end27.i695.i.i_crit_edge:      ; preds = %if.end.i676.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end27.i695.i.i

land.lhs.true.i691.i.i:                           ; preds = %if.end.i676.i.i
  %frob_mem.i689.i.i = getelementptr inbounds %struct.iwl_dump_sanitize_ops, ptr %938, i32 0, i32 2
  %939 = ptrtoint ptr %frob_mem.i689.i.i to i32
  call void @__asan_load4_noabort(i32 %939)
  %940 = load ptr, ptr %frob_mem.i689.i.i, align 4
  %tobool17.not.i690.i.i = icmp eq ptr %940, null
  br i1 %tobool17.not.i690.i.i, label %land.lhs.true.i691.i.i.do.end27.i695.i.i_crit_edge, label %if.then18.i693.i.i

land.lhs.true.i691.i.i.do.end27.i695.i.i_crit_edge: ; preds = %land.lhs.true.i691.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end27.i695.i.i

if.then18.i693.i.i:                               ; preds = %land.lhs.true.i691.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %941 = ptrtoint ptr %sanitize_ctx.i692.i.i to i32
  call void @__asan_load4_noabort(i32 %941)
  %942 = load ptr, ptr %sanitize_ctx.i692.i.i, align 8
  call void %940(ptr noundef %942, i32 noundef %913, ptr noundef %data10.i678.i.i, i32 noundef %910) #19
  br label %do.end27.i695.i.i

do.end27.i695.i.i:                                ; preds = %if.then18.i693.i.i, %land.lhs.true.i691.i.i.do.end27.i695.i.i_crit_edge, %if.end.i676.i.i.do.end27.i695.i.i_crit_edge
  %943 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %943)
  %944 = load ptr, ptr %dev27, align 8
  %945 = ptrtoint ptr %data.i672.i.i to i32
  call void @__asan_load4_noabort(i32 %945)
  %946 = load i32, ptr %data.i672.i.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %944, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_fw_dump_mem, ptr noundef nonnull @.str.29, i32 noundef %946) #19
  br label %iwl_fw_dump_mem.exit696.i.i

iwl_fw_dump_mem.exit696.i.i:                      ; preds = %do.end27.i695.i.i, %for.body280.i.i.iwl_fw_dump_mem.exit696.i.i_crit_edge
  %inc288.i.i = add nuw i32 %i.3892.i.i, 1
  %947 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %947)
  %948 = load ptr, ptr %fw.i, align 4
  %n_mem_tlv277.i.i = getelementptr inbounds %struct.iwl_fw, ptr %948, i32 0, i32 20, i32 6
  %949 = ptrtoint ptr %n_mem_tlv277.i.i to i32
  call void @__asan_load4_noabort(i32 %949)
  %950 = load i32, ptr %n_mem_tlv277.i.i, align 4
  %cmp278.i.i = icmp ult i32 %inc288.i.i, %950
  br i1 %cmp278.i.i, label %iwl_fw_dump_mem.exit696.i.i.for.body280.i.i_crit_edge, label %iwl_fw_dump_mem.exit696.i.i.for.end289.i.i_crit_edge

iwl_fw_dump_mem.exit696.i.i.for.end289.i.i_crit_edge: ; preds = %iwl_fw_dump_mem.exit696.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end289.i.i

iwl_fw_dump_mem.exit696.i.i.for.body280.i.i_crit_edge: ; preds = %iwl_fw_dump_mem.exit696.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body280.i.i

for.end289.i.i:                                   ; preds = %iwl_fw_dump_mem.exit696.i.i.for.end289.i.i_crit_edge, %if.end273.i.i.for.end289.i.i_crit_edge
  %951 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %951)
  %952 = load ptr, ptr %fwrt, align 8
  %cfg291.i.i = getelementptr inbounds %struct.iwl_trans, ptr %952, i32 0, i32 4
  %953 = ptrtoint ptr %cfg291.i.i to i32
  call void @__asan_load4_noabort(i32 %953)
  %954 = load ptr, ptr %cfg291.i.i, align 8
  %smem_offset.i.i = getelementptr inbounds %struct.iwl_cfg, ptr %954, i32 0, i32 17
  %955 = ptrtoint ptr %smem_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %955)
  %956 = load i32, ptr %smem_offset.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond873.i.i)
  %tobool.not.i697.i.i = icmp eq i32 %cond873.i.i, 0
  br i1 %tobool.not.i697.i.i, label %for.end289.i.i.iwl_fw_dump_mem.exit724.i.i_crit_edge, label %if.end.i704.i.i

for.end289.i.i.iwl_fw_dump_mem.exit724.i.i_crit_edge: ; preds = %for.end289.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_fw_dump_mem.exit724.i.i

if.end.i704.i.i:                                  ; preds = %for.end289.i.i
  %957 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %957)
  %958 = load ptr, ptr %dump_data.i.i, align 4
  %959 = ptrtoint ptr %958 to i32
  call void @__asan_storeN_noabort(i32 %959, i32 4)
  store i32 150994944, ptr %958, align 1
  %add.i698.i.i = add i32 %cond873.i.i, 8
  %960 = call i32 @llvm.bswap.i32(i32 %add.i698.i.i) #19
  %961 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %961)
  %962 = load ptr, ptr %dump_data.i.i, align 4
  %len2.i699.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %962, i32 0, i32 1
  %963 = ptrtoint ptr %len2.i699.i.i to i32
  call void @__asan_storeN_noabort(i32 %963, i32 4)
  store i32 %960, ptr %len2.i699.i.i, align 1
  %data.i700.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %962, i32 0, i32 2
  %964 = ptrtoint ptr %data.i700.i.i to i32
  call void @__asan_store4_noabort(i32 %964)
  store i32 16777216, ptr %data.i700.i.i, align 4
  %965 = call i32 @llvm.bswap.i32(i32 %956) #19
  %offset.i701.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %962, i32 1, i32 1
  %966 = ptrtoint ptr %offset.i701.i.i to i32
  call void @__asan_store4_noabort(i32 %966)
  store i32 %965, ptr %offset.i701.i.i, align 4
  %967 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %967)
  %968 = load ptr, ptr %fwrt, align 8
  %data10.i706.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %962, i32 2
  %div52.i707.i.i = lshr i32 %cond873.i.i, 2
  %ops.i.i708.i.i = getelementptr inbounds %struct.iwl_trans, ptr %968, i32 0, i32 1
  %969 = ptrtoint ptr %ops.i.i708.i.i to i32
  call void @__asan_load4_noabort(i32 %969)
  %970 = load ptr, ptr %ops.i.i708.i.i, align 4
  %read_mem.i.i709.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %970, i32 0, i32 26
  %971 = ptrtoint ptr %read_mem.i.i709.i.i to i32
  call void @__asan_load4_noabort(i32 %971)
  %972 = load ptr, ptr %read_mem.i.i709.i.i, align 4
  %call.i.i710.i.i = call i32 %972(ptr noundef %968, i32 noundef %956, ptr noundef %data10.i706.i.i, i32 noundef %div52.i707.i.i) #19
  %973 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %973)
  %974 = load ptr, ptr %dump_data.i.i, align 4
  %data1.i.i711.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %974, i32 0, i32 2
  %len.i.i712.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %974, i32 0, i32 1
  %975 = ptrtoint ptr %len.i.i712.i.i to i32
  call void @__asan_loadN_noabort(i32 %975, i32 4)
  %976 = load i32, ptr %len.i.i712.i.i, align 1
  %977 = call i32 @llvm.bswap.i32(i32 %976) #19
  %add.ptr.i.i713.i.i = getelementptr i8, ptr %data1.i.i711.i.i, i32 %977
  %978 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_store4_noabort(i32 %978)
  store ptr %add.ptr.i.i713.i.i, ptr %dump_data.i.i, align 4
  %sanitize_ops.i714.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 5
  %979 = ptrtoint ptr %sanitize_ops.i714.i.i to i32
  call void @__asan_load4_noabort(i32 %979)
  %980 = load ptr, ptr %sanitize_ops.i714.i.i, align 4
  %tobool15.not.i715.i.i = icmp eq ptr %980, null
  br i1 %tobool15.not.i715.i.i, label %if.end.i704.i.i.do.end27.i723.i.i_crit_edge, label %land.lhs.true.i719.i.i

if.end.i704.i.i.do.end27.i723.i.i_crit_edge:      ; preds = %if.end.i704.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end27.i723.i.i

land.lhs.true.i719.i.i:                           ; preds = %if.end.i704.i.i
  %frob_mem.i717.i.i = getelementptr inbounds %struct.iwl_dump_sanitize_ops, ptr %980, i32 0, i32 2
  %981 = ptrtoint ptr %frob_mem.i717.i.i to i32
  call void @__asan_load4_noabort(i32 %981)
  %982 = load ptr, ptr %frob_mem.i717.i.i, align 4
  %tobool17.not.i718.i.i = icmp eq ptr %982, null
  br i1 %tobool17.not.i718.i.i, label %land.lhs.true.i719.i.i.do.end27.i723.i.i_crit_edge, label %if.then18.i721.i.i

land.lhs.true.i719.i.i.do.end27.i723.i.i_crit_edge: ; preds = %land.lhs.true.i719.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end27.i723.i.i

if.then18.i721.i.i:                               ; preds = %land.lhs.true.i719.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %sanitize_ctx.i720.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 6
  %983 = ptrtoint ptr %sanitize_ctx.i720.i.i to i32
  call void @__asan_load4_noabort(i32 %983)
  %984 = load ptr, ptr %sanitize_ctx.i720.i.i, align 8
  call void %982(ptr noundef %984, i32 noundef %956, ptr noundef %data10.i706.i.i, i32 noundef %cond873.i.i) #19
  br label %do.end27.i723.i.i

do.end27.i723.i.i:                                ; preds = %if.then18.i721.i.i, %land.lhs.true.i719.i.i.do.end27.i723.i.i_crit_edge, %if.end.i704.i.i.do.end27.i723.i.i_crit_edge
  %985 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %985)
  %986 = load ptr, ptr %dev27, align 8
  %987 = ptrtoint ptr %data.i700.i.i to i32
  call void @__asan_load4_noabort(i32 %987)
  %988 = load i32, ptr %data.i700.i.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %986, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_fw_dump_mem, ptr noundef nonnull @.str.29, i32 noundef %988) #19
  br label %iwl_fw_dump_mem.exit724.i.i

iwl_fw_dump_mem.exit724.i.i:                      ; preds = %do.end27.i723.i.i, %for.end289.i.i.iwl_fw_dump_mem.exit724.i.i_crit_edge
  %989 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %989)
  %990 = load ptr, ptr %fwrt, align 8
  %cfg293.i.i = getelementptr inbounds %struct.iwl_trans, ptr %990, i32 0, i32 4
  %991 = ptrtoint ptr %cfg293.i.i to i32
  call void @__asan_load4_noabort(i32 %991)
  %992 = load ptr, ptr %cfg293.i.i, align 8
  %dccm2_offset.i.i = getelementptr inbounds %struct.iwl_cfg, ptr %992, i32 0, i32 15
  %993 = ptrtoint ptr %dccm2_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %993)
  %994 = load i32, ptr %dccm2_offset.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond13.i.i)
  %tobool.not.i725.i.i = icmp eq i32 %cond13.i.i, 0
  br i1 %tobool.not.i725.i.i, label %iwl_fw_dump_mem.exit724.i.i.if.end294.i.i_crit_edge, label %if.end.i732.i.i

iwl_fw_dump_mem.exit724.i.i.if.end294.i.i_crit_edge: ; preds = %iwl_fw_dump_mem.exit724.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end294.i.i

if.end.i732.i.i:                                  ; preds = %iwl_fw_dump_mem.exit724.i.i
  %995 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %995)
  %996 = load ptr, ptr %dump_data.i.i, align 4
  %997 = ptrtoint ptr %996 to i32
  call void @__asan_storeN_noabort(i32 %997, i32 4)
  store i32 150994944, ptr %996, align 1
  %add.i726.i.i = add i32 %cond13.i.i, 8
  %998 = call i32 @llvm.bswap.i32(i32 %add.i726.i.i) #19
  %999 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %999)
  %1000 = load ptr, ptr %dump_data.i.i, align 4
  %len2.i727.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1000, i32 0, i32 1
  %1001 = ptrtoint ptr %len2.i727.i.i to i32
  call void @__asan_storeN_noabort(i32 %1001, i32 4)
  store i32 %998, ptr %len2.i727.i.i, align 1
  %data.i728.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1000, i32 0, i32 2
  %1002 = ptrtoint ptr %data.i728.i.i to i32
  call void @__asan_store4_noabort(i32 %1002)
  store i32 0, ptr %data.i728.i.i, align 4
  %1003 = call i32 @llvm.bswap.i32(i32 %994) #19
  %offset.i729.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1000, i32 1, i32 1
  %1004 = ptrtoint ptr %offset.i729.i.i to i32
  call void @__asan_store4_noabort(i32 %1004)
  store i32 %1003, ptr %offset.i729.i.i, align 4
  %1005 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %1005)
  %1006 = load ptr, ptr %fwrt, align 8
  %data10.i734.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1000, i32 2
  %div52.i735.i.i = lshr i32 %cond13.i.i, 2
  %ops.i.i736.i.i = getelementptr inbounds %struct.iwl_trans, ptr %1006, i32 0, i32 1
  %1007 = ptrtoint ptr %ops.i.i736.i.i to i32
  call void @__asan_load4_noabort(i32 %1007)
  %1008 = load ptr, ptr %ops.i.i736.i.i, align 4
  %read_mem.i.i737.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %1008, i32 0, i32 26
  %1009 = ptrtoint ptr %read_mem.i.i737.i.i to i32
  call void @__asan_load4_noabort(i32 %1009)
  %1010 = load ptr, ptr %read_mem.i.i737.i.i, align 4
  %call.i.i738.i.i = call i32 %1010(ptr noundef %1006, i32 noundef %994, ptr noundef %data10.i734.i.i, i32 noundef %div52.i735.i.i) #19
  %1011 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1011)
  %1012 = load ptr, ptr %dump_data.i.i, align 4
  %data1.i.i739.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1012, i32 0, i32 2
  %len.i.i740.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1012, i32 0, i32 1
  %1013 = ptrtoint ptr %len.i.i740.i.i to i32
  call void @__asan_loadN_noabort(i32 %1013, i32 4)
  %1014 = load i32, ptr %len.i.i740.i.i, align 1
  %1015 = call i32 @llvm.bswap.i32(i32 %1014) #19
  %add.ptr.i.i741.i.i = getelementptr i8, ptr %data1.i.i739.i.i, i32 %1015
  %1016 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1016)
  store ptr %add.ptr.i.i741.i.i, ptr %dump_data.i.i, align 4
  %sanitize_ops.i742.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 5
  %1017 = ptrtoint ptr %sanitize_ops.i742.i.i to i32
  call void @__asan_load4_noabort(i32 %1017)
  %1018 = load ptr, ptr %sanitize_ops.i742.i.i, align 4
  %tobool15.not.i743.i.i = icmp eq ptr %1018, null
  br i1 %tobool15.not.i743.i.i, label %if.end.i732.i.i.do.end27.i751.i.i_crit_edge, label %land.lhs.true.i747.i.i

if.end.i732.i.i.do.end27.i751.i.i_crit_edge:      ; preds = %if.end.i732.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end27.i751.i.i

land.lhs.true.i747.i.i:                           ; preds = %if.end.i732.i.i
  %frob_mem.i745.i.i = getelementptr inbounds %struct.iwl_dump_sanitize_ops, ptr %1018, i32 0, i32 2
  %1019 = ptrtoint ptr %frob_mem.i745.i.i to i32
  call void @__asan_load4_noabort(i32 %1019)
  %1020 = load ptr, ptr %frob_mem.i745.i.i, align 4
  %tobool17.not.i746.i.i = icmp eq ptr %1020, null
  br i1 %tobool17.not.i746.i.i, label %land.lhs.true.i747.i.i.do.end27.i751.i.i_crit_edge, label %if.then18.i749.i.i

land.lhs.true.i747.i.i.do.end27.i751.i.i_crit_edge: ; preds = %land.lhs.true.i747.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end27.i751.i.i

if.then18.i749.i.i:                               ; preds = %land.lhs.true.i747.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %sanitize_ctx.i748.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 6
  %1021 = ptrtoint ptr %sanitize_ctx.i748.i.i to i32
  call void @__asan_load4_noabort(i32 %1021)
  %1022 = load ptr, ptr %sanitize_ctx.i748.i.i, align 8
  call void %1020(ptr noundef %1022, i32 noundef %994, ptr noundef %data10.i734.i.i, i32 noundef %cond13.i.i) #19
  br label %do.end27.i751.i.i

do.end27.i751.i.i:                                ; preds = %if.then18.i749.i.i, %land.lhs.true.i747.i.i.do.end27.i751.i.i_crit_edge, %if.end.i732.i.i.do.end27.i751.i.i_crit_edge
  %1023 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %1023)
  %1024 = load ptr, ptr %dev27, align 8
  %1025 = ptrtoint ptr %data.i728.i.i to i32
  call void @__asan_load4_noabort(i32 %1025)
  %1026 = load i32, ptr %data.i728.i.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1024, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_fw_dump_mem, ptr noundef nonnull @.str.29, i32 noundef %1026) #19
  br label %if.end294.i.i

if.end294.i.i:                                    ; preds = %do.end27.i751.i.i, %iwl_fw_dump_mem.exit724.i.i.if.end294.i.i_crit_edge, %if.end262.i.i.if.end294.i.i_crit_edge
  %1027 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %1027)
  %1028 = load ptr, ptr %fw.i, align 4
  %arrayidx.i.i.i754.i.i = getelementptr %struct.iwl_fw, ptr %1028, i32 0, i32 5, i32 8, i32 2
  %1029 = ptrtoint ptr %arrayidx.i.i.i754.i.i to i32
  call void @__asan_load4_noabort(i32 %1029)
  %1030 = load volatile i32, ptr %arrayidx.i.i.i754.i.i, align 4
  %1031 = and i32 %1030, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1031)
  %tobool.i.not.i755.i.i = icmp eq i32 %1031, 0
  br i1 %tobool.i.not.i755.i.i, label %if.end294.i.i.if.end345.i.i_crit_edge, label %land.lhs.true.i759.i.i

if.end294.i.i.if.end345.i.i_crit_edge:            ; preds = %if.end294.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end345.i.i

land.lhs.true.i759.i.i:                           ; preds = %if.end294.i.i
  %1032 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %1032)
  %1033 = load ptr, ptr %fwrt, align 8
  %cfg.i756.i.i = getelementptr inbounds %struct.iwl_trans, ptr %1033, i32 0, i32 4
  %1034 = ptrtoint ptr %cfg.i756.i.i to i32
  call void @__asan_load4_noabort(i32 %1034)
  %1035 = load ptr, ptr %cfg.i756.i.i, align 8
  %d3_debug_data_length.i757.i.i = getelementptr inbounds %struct.iwl_cfg, ptr %1035, i32 0, i32 32
  %1036 = ptrtoint ptr %d3_debug_data_length.i757.i.i to i32
  call void @__asan_load4_noabort(i32 %1036)
  %1037 = load i32, ptr %d3_debug_data_length.i757.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1037)
  %tobool.not.i758.i.i = icmp eq i32 %1037, 0
  br i1 %tobool.not.i758.i.i, label %land.lhs.true.i759.i.i.if.end345.i.i_crit_edge, label %land.lhs.true1.i762.i.i

land.lhs.true.i759.i.i.if.end345.i.i_crit_edge:   ; preds = %land.lhs.true.i759.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end345.i.i

land.lhs.true1.i762.i.i:                          ; preds = %land.lhs.true.i759.i.i
  %ops.i760.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 3
  %1038 = ptrtoint ptr %ops.i760.i.i to i32
  call void @__asan_load4_noabort(i32 %1038)
  %1039 = load ptr, ptr %ops.i760.i.i, align 4
  %tobool2.not.i761.i.i = icmp eq ptr %1039, null
  br i1 %tobool2.not.i761.i.i, label %land.lhs.true1.i762.i.i.if.end345.i.i_crit_edge, label %land.lhs.true3.i765.i.i

land.lhs.true1.i762.i.i.if.end345.i.i_crit_edge:  ; preds = %land.lhs.true1.i762.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end345.i.i

land.lhs.true3.i765.i.i:                          ; preds = %land.lhs.true1.i762.i.i
  %d3_debug_enable.i763.i.i = getelementptr inbounds %struct.iwl_fw_runtime_ops, ptr %1039, i32 0, i32 4
  %1040 = ptrtoint ptr %d3_debug_enable.i763.i.i to i32
  call void @__asan_load4_noabort(i32 %1040)
  %1041 = load ptr, ptr %d3_debug_enable.i763.i.i, align 4
  %tobool5.not.i764.i.i = icmp eq ptr %1041, null
  br i1 %tobool5.not.i764.i.i, label %land.lhs.true3.i765.i.i.if.end345.i.i_crit_edge, label %land.lhs.true6.i768.i.i

land.lhs.true3.i765.i.i.if.end345.i.i_crit_edge:  ; preds = %land.lhs.true3.i765.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end345.i.i

land.lhs.true6.i768.i.i:                          ; preds = %land.lhs.true3.i765.i.i
  %ops_ctx.i766.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 4
  %1042 = ptrtoint ptr %ops_ctx.i766.i.i to i32
  call void @__asan_load4_noabort(i32 %1042)
  %1043 = load ptr, ptr %ops_ctx.i766.i.i, align 8
  %call9.i767.i.i = call zeroext i1 %1041(ptr noundef %1043) #19
  br i1 %call9.i767.i.i, label %iwl_fw_dbg_is_d3_debug_enabled.exit773.i.i, label %land.lhs.true6.i768.i.i.if.end345.i.i_crit_edge

land.lhs.true6.i768.i.i.if.end345.i.i_crit_edge:  ; preds = %land.lhs.true6.i768.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end345.i.i

iwl_fw_dbg_is_d3_debug_enabled.exit773.i.i:       ; preds = %land.lhs.true6.i768.i.i
  %1044 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %1044)
  %1045 = load ptr, ptr %fw.i, align 4
  %dump_mask.i.i769.i.i = getelementptr inbounds %struct.iwl_fw, ptr %1045, i32 0, i32 20, i32 7
  %1046 = ptrtoint ptr %dump_mask.i.i769.i.i to i32
  call void @__asan_load4_noabort(i32 %1046)
  %1047 = load i32, ptr %dump_mask.i.i769.i.i, align 4
  %and.i.i770.i.i = and i32 %1047, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i770.i.i)
  %tobool.i18.i771.not.i.i = icmp eq i32 %and.i.i770.i.i, 0
  br i1 %tobool.i18.i771.not.i.i, label %iwl_fw_dbg_is_d3_debug_enabled.exit773.i.i.if.end345.i.i_crit_edge, label %land.lhs.true297.i.i

iwl_fw_dbg_is_d3_debug_enabled.exit773.i.i.if.end345.i.i_crit_edge: ; preds = %iwl_fw_dbg_is_d3_debug_enabled.exit773.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end345.i.i

land.lhs.true297.i.i:                             ; preds = %iwl_fw_dbg_is_d3_debug_enabled.exit773.i.i
  %d3_debug_data299.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 4
  %1048 = ptrtoint ptr %d3_debug_data299.i.i to i32
  call void @__asan_load4_noabort(i32 %1048)
  %1049 = load ptr, ptr %d3_debug_data299.i.i, align 4
  %tobool300.not.i.i = icmp eq ptr %1049, null
  br i1 %tobool300.not.i.i, label %land.lhs.true297.i.i.if.end345.i.i_crit_edge, label %if.then301.i.i

land.lhs.true297.i.i.if.end345.i.i_crit_edge:     ; preds = %land.lhs.true297.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end345.i.i

if.then301.i.i:                                   ; preds = %land.lhs.true297.i.i
  %1050 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %1050)
  %1051 = load ptr, ptr %fwrt, align 8
  %cfg303.i.i = getelementptr inbounds %struct.iwl_trans, ptr %1051, i32 0, i32 4
  %1052 = ptrtoint ptr %cfg303.i.i to i32
  call void @__asan_load4_noabort(i32 %1052)
  %1053 = load ptr, ptr %cfg303.i.i, align 8
  %d3_debug_data_base_addr.i.i = getelementptr inbounds %struct.iwl_cfg, ptr %1053, i32 0, i32 31
  %1054 = ptrtoint ptr %d3_debug_data_base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %1054)
  %1055 = load i32, ptr %d3_debug_data_base_addr.i.i, align 4
  %d3_debug_data_length306.i.i = getelementptr inbounds %struct.iwl_cfg, ptr %1053, i32 0, i32 32
  %1056 = ptrtoint ptr %d3_debug_data_length306.i.i to i32
  call void @__asan_load4_noabort(i32 %1056)
  %1057 = load i32, ptr %d3_debug_data_length306.i.i, align 8
  %1058 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1058)
  %1059 = load ptr, ptr %dump_data.i.i, align 4
  %1060 = ptrtoint ptr %1059 to i32
  call void @__asan_storeN_noabort(i32 %1060, i32 4)
  store i32 285212672, ptr %1059, align 1
  %mul308.i.i = shl i32 %1057, 1
  %1061 = call i32 @llvm.bswap.i32(i32 %mul308.i.i) #19
  %1062 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1062)
  %1063 = load ptr, ptr %dump_data.i.i, align 4
  %len309.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1063, i32 0, i32 1
  %1064 = ptrtoint ptr %len309.i.i to i32
  call void @__asan_storeN_noabort(i32 %1064, i32 4)
  store i32 %1061, ptr %len309.i.i, align 1
  %data310.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1063, i32 0, i32 2
  %1065 = ptrtoint ptr %d3_debug_data299.i.i to i32
  call void @__asan_load4_noabort(i32 %1065)
  %1066 = load ptr, ptr %d3_debug_data299.i.i, align 4
  %1067 = call ptr @memcpy(ptr %data310.i.i, ptr %1066, i32 %1057)
  %1068 = load ptr, ptr %d3_debug_data299.i.i, align 4
  call void @kfree(ptr noundef %1068) #19
  %1069 = ptrtoint ptr %d3_debug_data299.i.i to i32
  call void @__asan_store4_noabort(i32 %1069)
  store ptr null, ptr %d3_debug_data299.i.i, align 4
  %1070 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %1070)
  %1071 = load ptr, ptr %fwrt, align 8
  %1072 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1072)
  %1073 = load ptr, ptr %dump_data.i.i, align 4
  %data328.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1073, i32 0, i32 2
  %add.ptr.i.i = getelementptr i8, ptr %data328.i.i, i32 %1057
  %div534.i.i = lshr i32 %1057, 2
  %ops.i774.i.i = getelementptr inbounds %struct.iwl_trans, ptr %1071, i32 0, i32 1
  %1074 = ptrtoint ptr %ops.i774.i.i to i32
  call void @__asan_load4_noabort(i32 %1074)
  %1075 = load ptr, ptr %ops.i774.i.i, align 4
  %read_mem.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %1075, i32 0, i32 26
  %1076 = ptrtoint ptr %read_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1076)
  %1077 = load ptr, ptr %read_mem.i.i.i, align 4
  %call.i775.i.i = call i32 %1077(ptr noundef %1071, i32 noundef %1055, ptr noundef %add.ptr.i.i, i32 noundef %div534.i.i) #19
  %sanitize_ops.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 5
  %1078 = ptrtoint ptr %sanitize_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %1078)
  %1079 = load ptr, ptr %sanitize_ops.i.i, align 4
  %tobool333.not.i.i = icmp eq ptr %1079, null
  br i1 %tobool333.not.i.i, label %if.then301.i.i.if.end343.i.i_crit_edge, label %land.lhs.true334.i.i

if.then301.i.i.if.end343.i.i_crit_edge:           ; preds = %if.then301.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end343.i.i

land.lhs.true334.i.i:                             ; preds = %if.then301.i.i
  %frob_mem.i.i = getelementptr inbounds %struct.iwl_dump_sanitize_ops, ptr %1079, i32 0, i32 2
  %1080 = ptrtoint ptr %frob_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %1080)
  %1081 = load ptr, ptr %frob_mem.i.i, align 4
  %tobool336.not.i.i = icmp eq ptr %1081, null
  br i1 %tobool336.not.i.i, label %land.lhs.true334.i.i.if.end343.i.i_crit_edge, label %if.then337.i.i

land.lhs.true334.i.i.if.end343.i.i_crit_edge:     ; preds = %land.lhs.true334.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end343.i.i

if.then337.i.i:                                   ; preds = %land.lhs.true334.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %sanitize_ctx.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 6
  %1082 = ptrtoint ptr %sanitize_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %1082)
  %1083 = load ptr, ptr %sanitize_ctx.i.i, align 8
  %1084 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1084)
  %1085 = load ptr, ptr %dump_data.i.i, align 4
  %data340.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1085, i32 0, i32 2
  %add.ptr342.i.i = getelementptr i8, ptr %data340.i.i, i32 %1057
  call void %1081(ptr noundef %1083, i32 noundef %1055, ptr noundef %add.ptr342.i.i, i32 noundef %1057) #19
  br label %if.end343.i.i

if.end343.i.i:                                    ; preds = %if.then337.i.i, %land.lhs.true334.i.i.if.end343.i.i_crit_edge, %if.then301.i.i.if.end343.i.i_crit_edge
  %1086 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1086)
  %1087 = load ptr, ptr %dump_data.i.i, align 4
  %data1.i776.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1087, i32 0, i32 2
  %len.i777.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1087, i32 0, i32 1
  %1088 = ptrtoint ptr %len.i777.i.i to i32
  call void @__asan_loadN_noabort(i32 %1088, i32 4)
  %1089 = load i32, ptr %len.i777.i.i, align 1
  %1090 = call i32 @llvm.bswap.i32(i32 %1089) #19
  %add.ptr.i778.i.i = getelementptr i8, ptr %data1.i776.i.i, i32 %1090
  %1091 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1091)
  store ptr %add.ptr.i778.i.i, ptr %dump_data.i.i, align 4
  br label %if.end345.i.i

if.end345.i.i:                                    ; preds = %if.end343.i.i, %land.lhs.true297.i.i.if.end345.i.i_crit_edge, %iwl_fw_dbg_is_d3_debug_enabled.exit773.i.i.if.end345.i.i_crit_edge, %land.lhs.true6.i768.i.i.if.end345.i.i_crit_edge, %land.lhs.true3.i765.i.i.if.end345.i.i_crit_edge, %land.lhs.true1.i762.i.i.if.end345.i.i_crit_edge, %land.lhs.true.i759.i.i.if.end345.i.i_crit_edge, %if.end294.i.i.if.end345.i.i_crit_edge
  %1092 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %1092)
  %1093 = load ptr, ptr %fw.i, align 4
  %dump_mask.i.i780.i.i = getelementptr inbounds %struct.iwl_fw, ptr %1093, i32 0, i32 20, i32 7
  %1094 = ptrtoint ptr %dump_mask.i.i780.i.i to i32
  call void @__asan_load4_noabort(i32 %1094)
  %1095 = load i32, ptr %dump_mask.i.i780.i.i, align 4
  %and.i.i781.i.i = and i32 %1095, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i781.i.i)
  %tobool.i.not.i782.i.i = icmp eq i32 %and.i.i781.i.i, 0
  br i1 %tobool.i.not.i782.i.i, label %if.end345.i.i.if.end348.i.i_crit_edge, label %land.lhs.true.i787.i.i

if.end345.i.i.if.end348.i.i_crit_edge:            ; preds = %if.end345.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end348.i.i

land.lhs.true.i787.i.i:                           ; preds = %if.end345.i.i
  %1096 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %1096)
  %1097 = load ptr, ptr %fwrt, align 8
  %trans_cfg.i783.i.i = getelementptr inbounds %struct.iwl_trans, ptr %1097, i32 0, i32 3
  %1098 = ptrtoint ptr %trans_cfg.i783.i.i to i32
  call void @__asan_load4_noabort(i32 %1098)
  %1099 = load ptr, ptr %trans_cfg.i783.i.i, align 4
  %gen2.i784.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1099, i32 0, i32 5
  %1100 = ptrtoint ptr %gen2.i784.i.i to i32
  call void @__asan_load2_noabort(i32 %1100)
  %bf.load.i785.i.i = load i16, ptr %gen2.i784.i.i, align 4
  %1101 = and i16 %bf.load.i785.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1101)
  %tobool.not.i786.i.i = icmp eq i16 %1101, 0
  br i1 %tobool.not.i786.i.i, label %land.lhs.true1.i790.i.i, label %land.lhs.true.i787.i.i.if.end348.i.i_crit_edge

land.lhs.true.i787.i.i.if.end348.i.i_crit_edge:   ; preds = %land.lhs.true.i787.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end348.i.i

land.lhs.true1.i790.i.i:                          ; preds = %land.lhs.true.i787.i.i
  %cur_fw_img.i788.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 10
  %1102 = ptrtoint ptr %cur_fw_img.i788.i.i to i32
  call void @__asan_load4_noabort(i32 %1102)
  %1103 = load i32, ptr %cur_fw_img.i788.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1103)
  %cmp.i789.i.i = icmp ult i32 %1103, 4
  br i1 %cmp.i789.i.i, label %land.lhs.true2.i793.i.i, label %land.lhs.true1.i790.i.i.if.end348.i.i_crit_edge

land.lhs.true1.i790.i.i.if.end348.i.i_crit_edge:  ; preds = %land.lhs.true1.i790.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end348.i.i

land.lhs.true2.i793.i.i:                          ; preds = %land.lhs.true1.i790.i.i
  %paging_mem_size.i791.i.i = getelementptr %struct.iwl_fw, ptr %1093, i32 0, i32 2, i32 %1103, i32 3
  %1104 = ptrtoint ptr %paging_mem_size.i791.i.i to i32
  call void @__asan_load4_noabort(i32 %1104)
  %1105 = load i32, ptr %paging_mem_size.i791.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1105)
  %tobool4.not.i792.i.i = icmp eq i32 %1105, 0
  br i1 %tobool4.not.i792.i.i, label %land.lhs.true2.i793.i.i.if.end348.i.i_crit_edge, label %iwl_fw_dbg_is_paging_enabled.exit797.i.i

land.lhs.true2.i793.i.i.if.end348.i.i_crit_edge:  ; preds = %land.lhs.true2.i793.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end348.i.i

iwl_fw_dbg_is_paging_enabled.exit797.i.i:         ; preds = %land.lhs.true2.i793.i.i
  %fw_paging_block.i794.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 7, i32 0, i32 1
  %1106 = ptrtoint ptr %fw_paging_block.i794.i.i to i32
  call void @__asan_load4_noabort(i32 %1106)
  %1107 = load ptr, ptr %fw_paging_block.i794.i.i, align 4
  %tobool6.i795.not.i.i = icmp eq ptr %1107, null
  br i1 %tobool6.i795.not.i.i, label %iwl_fw_dbg_is_paging_enabled.exit797.i.i.if.end348.i.i_crit_edge, label %if.then347.i.i

iwl_fw_dbg_is_paging_enabled.exit797.i.i.if.end348.i.i_crit_edge: ; preds = %iwl_fw_dbg_is_paging_enabled.exit797.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end348.i.i

if.then347.i.i:                                   ; preds = %iwl_fw_dbg_is_paging_enabled.exit797.i.i
  %1108 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %1108)
  %1109 = load ptr, ptr %dev27, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1109, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dump_paging, ptr noundef nonnull @.str.30) #19
  %num_of_paging_blk.i.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 8
  %1110 = ptrtoint ptr %num_of_paging_blk.i.i.i to i32
  call void @__asan_load2_noabort(i32 %1110)
  %1111 = load i16, ptr %num_of_paging_blk.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1111)
  %cmp.not46.i.i.i = icmp eq i16 %1111, 0
  br i1 %cmp.not46.i.i.i, label %if.then347.i.i.if.end348.i.i_crit_edge, label %for.body.lr.ph.i801.i.i

if.then347.i.i.if.end348.i.i_crit_edge:           ; preds = %if.then347.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end348.i.i

for.body.lr.ph.i801.i.i:                          ; preds = %if.then347.i.i
  %sanitize_ops.i799.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 5
  %sanitize_ctx.i800.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 6
  br label %for.body.i810.i.i

for.body.i810.i.i:                                ; preds = %if.end.i817.i.i.for.body.i810.i.i_crit_edge, %for.body.lr.ph.i801.i.i
  %i.047.i.i.i = phi i32 [ 1, %for.body.lr.ph.i801.i.i ], [ %inc.i815.i.i, %if.end.i817.i.i.for.body.i810.i.i_crit_edge ]
  %arrayidx.i802.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 7, i32 %i.047.i.i.i
  %fw_paging_block.i803.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 7, i32 %i.047.i.i.i, i32 1
  %1112 = ptrtoint ptr %fw_paging_block.i803.i.i to i32
  call void @__asan_load4_noabort(i32 %1112)
  %1113 = load ptr, ptr %fw_paging_block.i803.i.i, align 4
  %1114 = ptrtoint ptr %arrayidx.i802.i.i to i32
  call void @__asan_load4_noabort(i32 %1114)
  %1115 = load i32, ptr %arrayidx.i802.i.i, align 4
  %1116 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1116)
  %1117 = load ptr, ptr %dump_data.i.i, align 4
  %1118 = ptrtoint ptr %1117 to i32
  call void @__asan_storeN_noabort(i32 %1118, i32 4)
  store i32 201326592, ptr %1117, align 1
  %1119 = load ptr, ptr %dump_data.i.i, align 4
  %len.i804.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1119, i32 0, i32 1
  %1120 = ptrtoint ptr %len.i804.i.i to i32
  call void @__asan_storeN_noabort(i32 %1120, i32 4)
  store i32 142606336, ptr %len.i804.i.i, align 1
  %data7.i.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1119, i32 0, i32 2
  %1121 = call i32 @llvm.bswap.i32(i32 %i.047.i.i.i) #19
  %1122 = ptrtoint ptr %data7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1122)
  store i32 %1121, ptr %data7.i.i.i, align 4
  %1123 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %1123)
  %1124 = load ptr, ptr %fwrt, align 8
  %dev8.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %1124, i32 0, i32 8
  %1125 = ptrtoint ptr %dev8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1125)
  %1126 = load ptr, ptr %dev8.i.i.i, align 8
  call void @dma_sync_single_for_cpu(ptr noundef %1126, i32 noundef %1115, i32 noundef 32768, i32 noundef 0) #19
  %data9.i.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1119, i32 2
  %call.i805.i.i = call ptr @page_address(ptr noundef %1113) #19
  %1127 = call ptr @memcpy(ptr %data9.i.i.i, ptr %call.i805.i.i, i32 32768)
  %1128 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %1128)
  %1129 = load ptr, ptr %fwrt, align 8
  %dev12.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %1129, i32 0, i32 8
  %1130 = ptrtoint ptr %dev12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1130)
  %1131 = load ptr, ptr %dev12.i.i.i, align 8
  call void @dma_sync_single_for_device(ptr noundef %1131, i32 noundef %1115, i32 noundef 32768, i32 noundef 0) #19
  %1132 = ptrtoint ptr %len.i804.i.i to i32
  call void @__asan_loadN_noabort(i32 %1132, i32 4)
  %1133 = load i32, ptr %len.i804.i.i, align 1
  %1134 = call i32 @llvm.bswap.i32(i32 %1133) #19
  %add.ptr.i.i808.i.i = getelementptr i8, ptr %data7.i.i.i, i32 %1134
  %1135 = ptrtoint ptr %dump_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1135)
  store ptr %add.ptr.i.i808.i.i, ptr %dump_data.i.i, align 4
  %1136 = ptrtoint ptr %sanitize_ops.i799.i.i to i32
  call void @__asan_load4_noabort(i32 %1136)
  %1137 = load ptr, ptr %sanitize_ops.i799.i.i, align 4
  %tobool.not.i809.i.i = icmp eq ptr %1137, null
  br i1 %tobool.not.i809.i.i, label %for.body.i810.i.i.if.end.i817.i.i_crit_edge, label %land.lhs.true.i813.i.i

for.body.i810.i.i.if.end.i817.i.i_crit_edge:      ; preds = %for.body.i810.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i817.i.i

land.lhs.true.i813.i.i:                           ; preds = %for.body.i810.i.i
  %frob_mem.i811.i.i = getelementptr inbounds %struct.iwl_dump_sanitize_ops, ptr %1137, i32 0, i32 2
  %1138 = ptrtoint ptr %frob_mem.i811.i.i to i32
  call void @__asan_load4_noabort(i32 %1138)
  %1139 = load ptr, ptr %frob_mem.i811.i.i, align 4
  %tobool15.not.i812.i.i = icmp eq ptr %1139, null
  br i1 %tobool15.not.i812.i.i, label %land.lhs.true.i813.i.i.if.end.i817.i.i_crit_edge, label %if.then.i814.i.i

land.lhs.true.i813.i.i.if.end.i817.i.i_crit_edge: ; preds = %land.lhs.true.i813.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i817.i.i

if.then.i814.i.i:                                 ; preds = %land.lhs.true.i813.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %1140 = ptrtoint ptr %sanitize_ctx.i800.i.i to i32
  call void @__asan_load4_noabort(i32 %1140)
  %1141 = load ptr, ptr %sanitize_ctx.i800.i.i, align 8
  %fw_offs.i.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 7, i32 %i.047.i.i.i, i32 3
  %1142 = ptrtoint ptr %fw_offs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1142)
  %1143 = load i32, ptr %fw_offs.i.i.i, align 4
  call void %1139(ptr noundef %1141, i32 noundef %1143, ptr noundef %data9.i.i.i, i32 noundef 32768) #19
  br label %if.end.i817.i.i

if.end.i817.i.i:                                  ; preds = %if.then.i814.i.i, %land.lhs.true.i813.i.i.if.end.i817.i.i_crit_edge, %for.body.i810.i.i.if.end.i817.i.i_crit_edge
  %inc.i815.i.i = add nuw nsw i32 %i.047.i.i.i, 1
  %1144 = ptrtoint ptr %num_of_paging_blk.i.i.i to i32
  call void @__asan_load2_noabort(i32 %1144)
  %1145 = load i16, ptr %num_of_paging_blk.i.i.i, align 4
  %conv.i816.i.i = zext i16 %1145 to i32
  %cmp.not.not.i.i.i = icmp ult i32 %i.047.i.i.i, %conv.i816.i.i
  br i1 %cmp.not.not.i.i.i, label %if.end.i817.i.i.for.body.i810.i.i_crit_edge, label %if.end.i817.i.i.if.end348.i.i_crit_edge

if.end.i817.i.i.if.end348.i.i_crit_edge:          ; preds = %if.end.i817.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end348.i.i

if.end.i817.i.i.for.body.i810.i.i_crit_edge:      ; preds = %if.end.i817.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i810.i.i

if.end348.i.i:                                    ; preds = %if.end.i817.i.i.if.end348.i.i_crit_edge, %if.then347.i.i.if.end348.i.i_crit_edge, %iwl_fw_dbg_is_paging_enabled.exit797.i.i.if.end348.i.i_crit_edge, %land.lhs.true2.i793.i.i.if.end348.i.i_crit_edge, %land.lhs.true1.i790.i.i.if.end348.i.i_crit_edge, %land.lhs.true.i787.i.i.if.end348.i.i_crit_edge, %if.end345.i.i.if.end348.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prph_len.6.i.i)
  %tobool349.not.i.i = icmp eq i32 %prph_len.6.i.i, 0
  br i1 %tobool349.not.i.i, label %if.end348.i.i.iwl_fw_error_dump_file.exit.i_crit_edge, label %if.then350.i.i

if.end348.i.i.iwl_fw_error_dump_file.exit.i_crit_edge: ; preds = %if.end348.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_fw_error_dump_file.exit.i

if.then350.i.i:                                   ; preds = %if.end348.i.i
  %1146 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %1146)
  %1147 = load ptr, ptr %fwrt, align 8
  %trans_cfg.i819.i.i = getelementptr inbounds %struct.iwl_trans, ptr %1147, i32 0, i32 3
  %1148 = ptrtoint ptr %trans_cfg.i819.i.i to i32
  call void @__asan_load4_noabort(i32 %1148)
  %1149 = load ptr, ptr %trans_cfg.i819.i.i, align 4
  %device_family.i820.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1149, i32 0, i32 1
  %1150 = ptrtoint ptr %device_family.i820.i.i to i32
  call void @__asan_load4_noabort(i32 %1150)
  %1151 = load i32, ptr %device_family.i820.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %1151)
  %cmp.i821.i.i = icmp ugt i32 %1151, 18
  br i1 %cmp.i821.i.i, label %if.then.i822.i.i, label %if.else.i824.i.i

if.then.i822.i.i:                                 ; preds = %if.then350.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call fastcc void @iwl_dump_prph(ptr noundef %fwrt, ptr noundef nonnull @iwl_prph_dump_addr_ax210, i32 noundef 3, ptr noundef nonnull %dump_data.i.i) #19, !callees !103
  br label %iwl_fw_error_dump_file.exit.i

if.else.i824.i.i:                                 ; preds = %if.then350.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %1151)
  %cmp4.i823.i.i = icmp eq i32 %1151, 18
  br i1 %cmp4.i823.i.i, label %if.then5.i825.i.i, label %if.else6.i830.i.i

if.then5.i825.i.i:                                ; preds = %if.else.i824.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call fastcc void @iwl_dump_prph(ptr noundef %fwrt, ptr noundef nonnull @iwl_prph_dump_addr_22000, i32 noundef 85, ptr noundef nonnull %dump_data.i.i) #19, !callees !103
  br label %iwl_fw_error_dump_file.exit.i

if.else6.i830.i.i:                                ; preds = %if.else.i824.i.i
  call fastcc void @iwl_dump_prph(ptr noundef %fwrt, ptr noundef nonnull @iwl_prph_dump_addr_comm, i32 noundef 94, ptr noundef nonnull %dump_data.i.i) #19, !callees !103
  %1152 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %1152)
  %1153 = load ptr, ptr %fwrt, align 8
  %trans_cfg8.i826.i.i = getelementptr inbounds %struct.iwl_trans, ptr %1153, i32 0, i32 3
  %1154 = ptrtoint ptr %trans_cfg8.i826.i.i to i32
  call void @__asan_load4_noabort(i32 %1154)
  %1155 = load ptr, ptr %trans_cfg8.i826.i.i, align 4
  %mq_rx_supported.i827.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1155, i32 0, i32 5
  %1156 = ptrtoint ptr %mq_rx_supported.i827.i.i to i32
  call void @__asan_load2_noabort(i32 %1156)
  %bf.load.i828.i.i = load i16, ptr %mq_rx_supported.i827.i.i, align 4
  %1157 = and i16 %bf.load.i828.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1157)
  %tobool.not.i829.i.i = icmp eq i16 %1157, 0
  br i1 %tobool.not.i829.i.i, label %if.else6.i830.i.i.iwl_fw_error_dump_file.exit.i_crit_edge, label %if.then9.i831.i.i

if.else6.i830.i.i.iwl_fw_error_dump_file.exit.i_crit_edge: ; preds = %if.else6.i830.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_fw_error_dump_file.exit.i

if.then9.i831.i.i:                                ; preds = %if.else6.i830.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call fastcc void @iwl_dump_prph(ptr noundef %fwrt, ptr noundef nonnull @iwl_prph_dump_addr_9000, i32 noundef 7, ptr noundef nonnull %dump_data.i.i) #19, !callees !103
  br label %iwl_fw_error_dump_file.exit.i

iwl_fw_error_dump_file.exit.thread.i:             ; preds = %if.end142.i.i.iwl_fw_error_dump_file.exit.thread.i_crit_edge, %if.then.i.i.iwl_fw_error_dump_file.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dump_data.i.i) #19
  br label %do.end47

iwl_fw_error_dump_file.exit.i:                    ; preds = %if.then9.i831.i.i, %if.else6.i830.i.i.iwl_fw_error_dump_file.exit.i_crit_edge, %if.then5.i825.i.i, %if.then.i822.i.i, %if.end348.i.i.iwl_fw_error_dump_file.exit.i_crit_edge, %if.end258.i.i.iwl_fw_error_dump_file.exit.i_crit_edge
  %1158 = call i32 @llvm.bswap.i32(i32 %file_len.8.i.i) #19
  %file_len352.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_file, ptr %call143.i.i, i32 0, i32 1
  %1159 = ptrtoint ptr %file_len352.i.i to i32
  call void @__asan_storeN_noabort(i32 %1159, i32 4)
  store i32 %1158, ptr %file_len352.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dump_data.i.i) #19
  %1160 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %1160)
  %1161 = load ptr, ptr %fwrt, align 8
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %1161, i32 0, i32 1
  %1162 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %1162)
  %1163 = load ptr, ptr %ops.i.i, align 4
  %dump_data.i55.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %1163, i32 0, i32 35
  %1164 = ptrtoint ptr %dump_data.i55.i to i32
  call void @__asan_load4_noabort(i32 %1164)
  %1165 = load ptr, ptr %dump_data.i55.i, align 4
  %tobool.not.i56.i = icmp eq ptr %1165, null
  br i1 %tobool.not.i56.i, label %iwl_fw_error_dump_file.exit.i.if.end12.i_crit_edge, label %iwl_trans_dump_data.exit.i

iwl_fw_error_dump_file.exit.i.if.end12.i_crit_edge: ; preds = %iwl_fw_error_dump_file.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end12.i

iwl_trans_dump_data.exit.i:                       ; preds = %iwl_fw_error_dump_file.exit.i
  %sanitize_ctx.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 6
  %1166 = ptrtoint ptr %sanitize_ctx.i to i32
  call void @__asan_load4_noabort(i32 %1166)
  %1167 = load ptr, ptr %sanitize_ctx.i, align 8
  %sanitize_ops.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 5
  %1168 = ptrtoint ptr %sanitize_ops.i to i32
  call void @__asan_load4_noabort(i32 %1168)
  %1169 = load ptr, ptr %sanitize_ops.i, align 4
  %1170 = ptrtoint ptr %monitor_only.i.i to i32
  call void @__asan_load1_noabort(i32 %1170)
  %1171 = load i8, ptr %monitor_only.i.i, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1171)
  %tobool2.not.i117 = icmp eq i8 %1171, 0
  %and.i118 = and i32 %270, 32
  %spec.select.i = select i1 %tobool2.not.i117, i32 %270, i32 %and.i118
  %call.i.i = call ptr %1165(ptr noundef %1161, i32 noundef %spec.select.i, ptr noundef %1169, ptr noundef %1167) #19
  %1172 = ptrtoint ptr %file_len352.i.i to i32
  call void @__asan_loadN_noabort(i32 %1172, i32 4)
  %1173 = load i32, ptr %file_len352.i.i, align 1
  %1174 = call i32 @llvm.bswap.i32(i32 %1173) #19
  %tobool8.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool8.not.i, label %iwl_trans_dump_data.exit.i.if.end12.i_crit_edge, label %if.then9.i

iwl_trans_dump_data.exit.i.if.end12.i_crit_edge:  ; preds = %iwl_trans_dump_data.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end12.i

if.then9.i:                                       ; preds = %iwl_trans_dump_data.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %1175 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %1175)
  %1176 = load i32, ptr %call.i.i, align 4
  %add.i119 = add i32 %1176, %1174
  %1177 = call i32 @llvm.bswap.i32(i32 %add.i119) #19
  %1178 = ptrtoint ptr %file_len352.i.i to i32
  call void @__asan_storeN_noabort(i32 %1178, i32 4)
  store i32 %1177, ptr %file_len352.i.i, align 1
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %iwl_trans_dump_data.exit.i.if.end12.i_crit_edge, %iwl_fw_error_dump_file.exit.i.if.end12.i_crit_edge
  %tobool8.not68.i = phi i1 [ false, %if.then9.i ], [ true, %iwl_trans_dump_data.exit.i.if.end12.i_crit_edge ], [ true, %iwl_fw_error_dump_file.exit.i.if.end12.i_crit_edge ]
  %1179 = phi i32 [ %1174, %if.then9.i ], [ %1174, %iwl_trans_dump_data.exit.i.if.end12.i_crit_edge ], [ %file_len.8.i.i, %iwl_fw_error_dump_file.exit.i.if.end12.i_crit_edge ]
  %retval.0.i67.i = phi ptr [ %call.i.i, %if.then9.i ], [ null, %iwl_trans_dump_data.exit.i.if.end12.i_crit_edge ], [ null, %iwl_fw_error_dump_file.exit.i.if.end12.i_crit_edge ]
  %file_len.0.i = phi i32 [ %add.i119, %if.then9.i ], [ %1174, %iwl_trans_dump_data.exit.i.if.end12.i_crit_edge ], [ %file_len.8.i.i, %iwl_fw_error_dump_file.exit.i.if.end12.i_crit_edge ]
  %call13.i = call fastcc ptr @alloc_sgtable(i32 noundef %file_len.0.i) #19
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %if.end12.i.if.end30.i_crit_edge, label %if.then15.i

if.end12.i.if.end30.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end30.i

if.then15.i:                                      ; preds = %if.end12.i
  %call16.i = call i32 @sg_nents(ptr noundef nonnull %call13.i) #19
  %call18.i = call i32 @sg_pcopy_from_buffer(ptr noundef nonnull %call13.i, i32 noundef %call16.i, ptr noundef nonnull %call143.i.i, i32 noundef %1179, i32 noundef 0) #19
  br i1 %tobool8.not68.i, label %if.then15.i.if.end28.i_crit_edge, label %if.then21.i

if.then15.i.if.end28.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end28.i

if.then21.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #21
  %call22.i = call i32 @sg_nents(ptr noundef nonnull %call13.i) #19
  %data.i120 = getelementptr inbounds %struct.iwl_trans_dump_data, ptr %retval.0.i67.i, i32 0, i32 1
  %1180 = ptrtoint ptr %retval.0.i67.i to i32
  call void @__asan_load4_noabort(i32 %1180)
  %1181 = load i32, ptr %retval.0.i67.i, align 4
  %call27.i = call i32 @sg_pcopy_from_buffer(ptr noundef nonnull %call13.i, i32 noundef %call22.i, ptr noundef %data.i120, i32 noundef %1181, i32 noundef %1179) #19
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then21.i, %if.then15.i.if.end28.i_crit_edge
  %1182 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %1182)
  %1183 = load ptr, ptr %fwrt, align 8
  %dev.i121 = getelementptr inbounds %struct.iwl_trans, ptr %1183, i32 0, i32 8
  %1184 = ptrtoint ptr %dev.i121 to i32
  call void @__asan_load4_noabort(i32 %1184)
  %1185 = load ptr, ptr %dev.i121, align 8
  call void @dev_coredumpsg(ptr noundef %1185, ptr noundef nonnull %call13.i, i32 noundef %file_len.0.i, i32 noundef 3264) #19
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end28.i, %if.end12.i.if.end30.i_crit_edge
  call void @vfree(ptr noundef nonnull %call143.i.i) #19
  call void @vfree(ptr noundef %retval.0.i67.i) #19
  br label %do.end47

do.end47:                                         ; preds = %if.end30.i, %iwl_fw_error_dump_file.exit.thread.i, %iwl_fw_error_ini_dump.exit
  %1186 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %1186)
  %1187 = load ptr, ptr %dev27, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1187, i32 noundef 65537, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_fw_dbg_collect_sync, ptr noundef nonnull @.str.11) #19
  call void @iwl_fw_dbg_stop_restart_recording(ptr noundef %fwrt, ptr noundef nonnull %params, i1 noundef zeroext false)
  %1188 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %1188)
  %1189 = load ptr, ptr %fwrt, align 8
  %last_tp_resetfw = getelementptr inbounds %struct.iwl_trans, ptr %1189, i32 0, i32 32, i32 25
  %1190 = ptrtoint ptr %last_tp_resetfw to i32
  call void @__asan_load4_noabort(i32 %1190)
  %1191 = load i32, ptr %last_tp_resetfw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1191)
  %cmp = icmp eq i32 %1191, 1
  br i1 %cmp, label %if.then53, label %do.end47.out_crit_edge

do.end47.out_crit_edge:                           ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.then53:                                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #21
  call void @iwl_force_nmi(ptr noundef %1189) #19
  br label %out

out:                                              ; preds = %if.then53, %do.end47.out_crit_edge, %do.end18, %do.end
  %1192 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %1192)
  %1193 = load ptr, ptr %fwrt, align 8
  %internal_ini_cfg.i122 = getelementptr inbounds %struct.iwl_trans, ptr %1193, i32 0, i32 32, i32 10
  %1194 = ptrtoint ptr %internal_ini_cfg.i122 to i32
  call void @__asan_load4_noabort(i32 %1194)
  %1195 = load i32, ptr %internal_ini_cfg.i122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1195)
  %cmp.not.i123 = icmp eq i32 %1195, 0
  br i1 %cmp.not.i123, label %iwl_trans_dbg_ini_valid.exit127, label %out.if.then58_crit_edge

out.if.then58_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then58

iwl_trans_dbg_ini_valid.exit127:                  ; preds = %out
  %external_ini_cfg.i124 = getelementptr inbounds %struct.iwl_trans, ptr %1193, i32 0, i32 32, i32 11
  %1196 = ptrtoint ptr %external_ini_cfg.i124 to i32
  call void @__asan_load4_noabort(i32 %1196)
  %1197 = load i32, ptr %external_ini_cfg.i124, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1197)
  %cmp2.i125.not = icmp eq i32 %1197, 0
  br i1 %cmp2.i125.not, label %if.else59, label %iwl_trans_dbg_ini_valid.exit127.if.then58_crit_edge

iwl_trans_dbg_ini_valid.exit127.if.then58_crit_edge: ; preds = %iwl_trans_dbg_ini_valid.exit127
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then58

if.then58:                                        ; preds = %iwl_trans_dbg_ini_valid.exit127.if.then58_crit_edge, %out.if.then58_crit_edge
  %1198 = ptrtoint ptr %dump_data1 to i32
  call void @__asan_store4_noabort(i32 %1198)
  store ptr null, ptr %dump_data1, align 4
  %fw_pkt.i = getelementptr inbounds %struct.anon.132, ptr %dump_data1, i32 0, i32 1
  %1199 = ptrtoint ptr %fw_pkt.i to i32
  call void @__asan_load4_noabort(i32 %1199)
  %1200 = load ptr, ptr %fw_pkt.i, align 4
  call void @kfree(ptr noundef %1200) #19
  br label %if.end61

if.else59:                                        ; preds = %iwl_trans_dbg_ini_valid.exit127
  %1201 = ptrtoint ptr %dump_data1 to i32
  call void @__asan_load4_noabort(i32 %1201)
  %1202 = load ptr, ptr %dump_data1, align 4
  %tobool.not.i128 = icmp eq ptr %1202, null
  %cmp.not.i129 = icmp eq ptr %1202, @iwl_dump_desc_assert
  %or.cond.i = or i1 %tobool.not.i128, %cmp.not.i129
  br i1 %or.cond.i, label %if.else59.if.end.i130_crit_edge, label %if.then.i

if.else59.if.end.i130_crit_edge:                  ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i130

if.then.i:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #21
  call void @kfree(ptr noundef nonnull %1202) #19
  br label %if.end.i130

if.end.i130:                                      ; preds = %if.then.i, %if.else59.if.end.i130_crit_edge
  %lmac_err_id.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 5
  %1203 = ptrtoint ptr %lmac_err_id.i to i32
  call void @__asan_store4_noabort(i32 %1203)
  store i32 0, ptr %lmac_err_id.i, align 8
  %smem_cfg.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11
  %1204 = ptrtoint ptr %smem_cfg.i to i32
  call void @__asan_load4_noabort(i32 %1204)
  %1205 = load i32, ptr %smem_cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1205)
  %cmp1.i = icmp sgt i32 %1205, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i130.iwl_fw_free_dump_desc.exit_crit_edge

if.end.i130.iwl_fw_free_dump_desc.exit_crit_edge: ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_fw_free_dump_desc.exit

if.then2.i:                                       ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx5.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 5, i32 1
  %1206 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %1206)
  store i32 0, ptr %arrayidx5.i, align 4
  br label %iwl_fw_free_dump_desc.exit

iwl_fw_free_dump_desc.exit:                       ; preds = %if.then2.i, %if.end.i130.iwl_fw_free_dump_desc.exit_crit_edge
  %umac_err_id.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 6
  %1207 = ptrtoint ptr %umac_err_id.i to i32
  call void @__asan_store4_noabort(i32 %1207)
  store i32 0, ptr %umac_err_id.i, align 8
  br label %if.end61

if.end61:                                         ; preds = %iwl_fw_free_dump_desc.exit, %if.then58
  %dump_data1.sink = phi ptr [ %dump_data1, %iwl_fw_free_dump_desc.exit ], [ %fw_pkt.i, %if.then58 ]
  %1208 = ptrtoint ptr %dump_data1.sink to i32
  call void @__asan_store4_noabort(i32 %1208)
  store ptr null, ptr %dump_data1.sink, align 4
  call void @_clear_bit(i32 noundef %idxprom, ptr noundef %active_wks) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %params) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_fw_error_dump_wk(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -112
  %idx.neg = add nsw i32 %.neg, -736
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %ops = getelementptr inbounds %struct.iwl_fw_runtime, ptr %add.ptr3, i32 0, i32 3
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true6

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %ops_ctx = getelementptr inbounds %struct.iwl_fw_runtime, ptr %add.ptr3, i32 0, i32 4
  %6 = ptrtoint ptr %ops_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops_ctx, align 8
  %call = tail call i32 %5(ptr noundef %7) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %land.lhs.true6.if.end_crit_edge, label %land.lhs.true6.cleanup_crit_edge

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end:                                           ; preds = %land.lhs.true6.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr, align 4
  tail call fastcc void @iwl_fw_dbg_collect_sync(ptr noundef %add.ptr3, i8 noundef zeroext %9)
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %if.end.cleanup_crit_edge, label %land.lhs.true13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true13:                                  ; preds = %if.end
  %dump_end = getelementptr inbounds %struct.iwl_fw_runtime_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %dump_end to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dump_end, align 4
  %tobool15.not = icmp eq ptr %13, null
  br i1 %tobool15.not, label %land.lhs.true13.cleanup_crit_edge, label %if.then16

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then16:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #21
  %ops_ctx19 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %add.ptr3, i32 0, i32 4
  %14 = ptrtoint ptr %ops_ctx19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops_ctx19, align 8
  tail call void %13(ptr noundef %15) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %land.lhs.true13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true6.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_fw_dbg_read_d3_debug_data(ptr nocapture noundef %fwrt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwrt, align 8
  %cfg1 = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg1, align 8
  %fw.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 1
  %4 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %5, i32 0, i32 5, i32 8, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %8 = and i32 %7, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i, label %entry.cleanup_crit_edge, label %land.lhs.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %d3_debug_data_length.i = getelementptr inbounds %struct.iwl_cfg, ptr %3, i32 0, i32 32
  %9 = ptrtoint ptr %d3_debug_data_length.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %d3_debug_data_length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true1.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %ops.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 3
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %tobool2.not.i = icmp eq ptr %12, null
  br i1 %tobool2.not.i, label %land.lhs.true1.i.cleanup_crit_edge, label %land.lhs.true3.i

land.lhs.true1.i.cleanup_crit_edge:               ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true3.i:                                 ; preds = %land.lhs.true1.i
  %d3_debug_enable.i = getelementptr inbounds %struct.iwl_fw_runtime_ops, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %d3_debug_enable.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d3_debug_enable.i, align 4
  %tobool5.not.i = icmp eq ptr %14, null
  br i1 %tobool5.not.i, label %land.lhs.true3.i.cleanup_crit_edge, label %land.lhs.true6.i

land.lhs.true3.i.cleanup_crit_edge:               ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true6.i:                                 ; preds = %land.lhs.true3.i
  %ops_ctx.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 4
  %15 = ptrtoint ptr %ops_ctx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops_ctx.i, align 8
  %call9.i64 = tail call zeroext i1 %14(ptr noundef %16) #19
  br i1 %call9.i64, label %iwl_fw_dbg_is_d3_debug_enabled.exit, label %land.lhs.true6.i.cleanup_crit_edge

land.lhs.true6.i.cleanup_crit_edge:               ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

iwl_fw_dbg_is_d3_debug_enabled.exit:              ; preds = %land.lhs.true6.i
  %17 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw.i, align 4
  %dump_mask.i.i = getelementptr inbounds %struct.iwl_fw, ptr %18, i32 0, i32 20, i32 7
  %19 = ptrtoint ptr %dump_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dump_mask.i.i, align 4
  %and.i.i = and i32 %20, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i18.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i18.i.not, label %iwl_fw_dbg_is_d3_debug_enabled.exit.cleanup_crit_edge, label %if.end

iwl_fw_dbg_is_d3_debug_enabled.exit.cleanup_crit_edge: ; preds = %iwl_fw_dbg_is_d3_debug_enabled.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %iwl_fw_dbg_is_d3_debug_enabled.exit
  %d3_debug_data = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 4
  %21 = ptrtoint ptr %d3_debug_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d3_debug_data, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %if.end8.i, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end25

if.end8.i:                                        ; preds = %if.end
  %23 = ptrtoint ptr %d3_debug_data_length.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %d3_debug_data_length.i, align 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3264) #23
  %25 = ptrtoint ptr %d3_debug_data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call9.i, ptr %d3_debug_data, align 4
  %tobool8.not = icmp eq ptr %call9.i, null
  br i1 %tobool8.not, label %do.end, label %if.end8.i.if.end25_crit_edge

if.end8.i.if.end25_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end25

do.end:                                           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #21
  %dev = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %27, i32 noundef 0, ptr noundef nonnull @.str.7) #19
  br label %cleanup

if.end25:                                         ; preds = %if.end8.i.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %28 = ptrtoint ptr %d3_debug_data_length.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %d3_debug_data_length.i, align 8
  %30 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fwrt, align 8
  %d3_debug_data_base_addr = getelementptr inbounds %struct.iwl_cfg, ptr %3, i32 0, i32 31
  %32 = ptrtoint ptr %d3_debug_data_base_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %d3_debug_data_base_addr, align 4
  %34 = ptrtoint ptr %d3_debug_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d3_debug_data, align 4
  %div63 = lshr i32 %29, 2
  %ops.i65 = getelementptr inbounds %struct.iwl_trans, ptr %31, i32 0, i32 1
  %36 = ptrtoint ptr %ops.i65 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i65, align 4
  %read_mem.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %37, i32 0, i32 26
  %38 = ptrtoint ptr %read_mem.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read_mem.i, align 4
  %call.i = tail call i32 %39(ptr noundef %31, i32 noundef %33, ptr noundef %35, i32 noundef %div63) #19
  %sanitize_ops = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 5
  %40 = ptrtoint ptr %sanitize_ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sanitize_ops, align 4
  %tobool33.not = icmp eq ptr %41, null
  br i1 %tobool33.not, label %if.end25.cleanup_crit_edge, label %land.lhs.true

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end25
  %frob_mem = getelementptr inbounds %struct.iwl_dump_sanitize_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %frob_mem to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %frob_mem, align 4
  %tobool35.not = icmp eq ptr %43, null
  br i1 %tobool35.not, label %land.lhs.true.cleanup_crit_edge, label %if.then36

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  %sanitize_ctx = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 6
  %44 = ptrtoint ptr %sanitize_ctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sanitize_ctx, align 8
  %46 = ptrtoint ptr %d3_debug_data_base_addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %d3_debug_data_base_addr, align 4
  %48 = ptrtoint ptr %d3_debug_data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %d3_debug_data, align 4
  %50 = ptrtoint ptr %d3_debug_data_length.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %d3_debug_data_length.i, align 8
  tail call void %43(ptr noundef %45, i32 noundef %47, ptr noundef %49, i32 noundef %51) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %land.lhs.true.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end, %iwl_fw_dbg_is_d3_debug_enabled.exit.cleanup_crit_edge, %land.lhs.true6.i.cleanup_crit_edge, %land.lhs.true3.i.cleanup_crit_edge, %land.lhs.true1.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_fw_dbg_stop_sync(ptr noundef %fwrt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwrt, align 8
  tail call void @iwl_dbg_tlv_del_timers(ptr noundef %1) #19
  tail call fastcc void @iwl_fw_dbg_collect_sync(ptr noundef %fwrt, i8 noundef zeroext 0)
  tail call fastcc void @iwl_fw_dbg_collect_sync(ptr noundef %fwrt, i8 noundef zeroext 1)
  tail call fastcc void @iwl_fw_dbg_collect_sync(ptr noundef %fwrt, i8 noundef zeroext 2)
  tail call fastcc void @iwl_fw_dbg_collect_sync(ptr noundef %fwrt, i8 noundef zeroext 3)
  tail call fastcc void @iwl_fw_dbg_collect_sync(ptr noundef %fwrt, i8 noundef zeroext 4)
  tail call void @iwl_fw_dbg_stop_restart_recording(ptr noundef %fwrt, ptr noundef null, i1 noundef zeroext true)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_dbg_tlv_del_timers(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_fw_dbg_stop_restart_recording(ptr nocapture noundef readonly %fwrt, ptr noundef %params, i1 noundef zeroext %stop) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.iwl_dbg_suspend_resume_cmd, align 4
  %hcmd.i = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwrt, align 8
  %status = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 1
  %5 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw, align 4
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %6, i32 0, i32 5, i32 8, i32 2
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i.i, align 4
  %9 = and i32 %8, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %if.else, label %if.end13

if.else:                                          ; preds = %if.end
  br i1 %stop, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %13)
  %cmp.i = icmp eq i32 %13, 15
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @iwl_set_bits_prph(ptr noundef %1, i32 noundef 10501120, i32 noundef 256) #19
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.then7
  %tobool.not.i = icmp eq ptr %params, null
  br i1 %tobool.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then1.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end3.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %umac_prph_offset.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %umac_prph_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %umac_prph_offset.i.i, align 4
  %add.i.i = add i32 %15, 10501120
  %call.i.i = tail call i32 @iwl_read_prph(ptr noundef %1, i32 noundef %add.i.i) #19
  %16 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call.i.i, ptr %params, align 4
  %17 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %trans_cfg.i, align 4
  %umac_prph_offset.i12.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %umac_prph_offset.i12.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %umac_prph_offset.i12.i, align 4
  %add.i13.i = add i32 %20, 10501132
  %call.i14.i = tail call i32 @iwl_read_prph(ptr noundef %1, i32 noundef %add.i13.i) #19
  %out_ctrl.i = getelementptr inbounds %struct.iwl_fw_dbg_params, ptr %params, i32 0, i32 1
  %21 = ptrtoint ptr %out_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call.i14.i, ptr %out_ctrl.i, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then1.i, %if.end.i.if.end3.i_crit_edge
  %22 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %trans_cfg.i, align 4
  %umac_prph_offset.i16.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %umac_prph_offset.i16.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %umac_prph_offset.i16.i, align 4
  %add.i17.i = add i32 %25, 10501120
  tail call void @iwl_write_prph_delay(ptr noundef %1, i32 noundef %add.i17.i, i32 noundef 0, i32 noundef 0) #19
  tail call void @usleep_range_state(i32 noundef 700, i32 noundef 1000, i32 noundef 2) #19
  %26 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %trans_cfg.i, align 4
  %umac_prph_offset.i19.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %umac_prph_offset.i19.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %umac_prph_offset.i19.i, align 4
  %add.i20.i = add i32 %29, 10501132
  tail call void @iwl_write_prph_delay(ptr noundef %1, i32 noundef %add.i20.i, i32 noundef 0, i32 noundef 0) #19
  br label %cleanup.sink.split

if.else9:                                         ; preds = %if.else
  %tobool.not.i31 = icmp eq ptr %params, null
  br i1 %tobool.not.i31, label %if.else9.cleanup_crit_edge, label %if.end.i35

if.else9.cleanup_crit_edge:                       ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i35:                                       ; preds = %if.else9
  %trans_cfg.i32 = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %trans_cfg.i32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %trans_cfg.i32, align 4
  %device_family.i33 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %device_family.i33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %device_family.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %33)
  %cmp.i34 = icmp eq i32 %33, 15
  br i1 %cmp.i34, label %if.then1.i36, label %if.else.i

if.then1.i36:                                     ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @iwl_clear_bits_prph(ptr noundef %1, i32 noundef 10501120, i32 noundef 256) #19
  tail call void @iwl_clear_bits_prph(ptr noundef %1, i32 noundef 10501120, i32 noundef 1) #19
  tail call void @iwl_set_bits_prph(ptr noundef %1, i32 noundef 10501120, i32 noundef 1) #19
  br label %if.else19

if.else.i:                                        ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #21
  %34 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %params, align 4
  %umac_prph_offset.i.i37 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %31, i32 0, i32 2
  %36 = ptrtoint ptr %umac_prph_offset.i.i37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %umac_prph_offset.i.i37, align 4
  %add.i.i38 = add i32 %37, 10501120
  tail call void @iwl_write_prph_delay(ptr noundef %1, i32 noundef %add.i.i38, i32 noundef %35, i32 noundef 0) #19
  %out_ctrl.i39 = getelementptr inbounds %struct.iwl_fw_dbg_params, ptr %params, i32 0, i32 1
  %38 = ptrtoint ptr %out_ctrl.i39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %out_ctrl.i39, align 4
  %40 = ptrtoint ptr %trans_cfg.i32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %trans_cfg.i32, align 4
  %umac_prph_offset.i11.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %umac_prph_offset.i11.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %umac_prph_offset.i11.i, align 4
  %add.i12.i = add i32 %43, 10501132
  tail call void @iwl_write_prph_delay(ptr noundef %1, i32 noundef %add.i12.i, i32 noundef %39, i32 noundef 0) #19
  br label %if.else19

if.end13:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i) #19
  %cond.i = select i1 %stop, i32 16777216, i32 0
  %44 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %cond.i, ptr %cmd.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd.i) #19
  %45 = getelementptr inbounds i8, ptr %hcmd.i, i32 32
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 65535, ptr %45, align 4, !annotation !100
  %47 = ptrtoint ptr %hcmd.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %cmd.i, ptr %hcmd.i, align 4
  %arrayinit.cur.ptr.i = getelementptr inbounds ptr, ptr %hcmd.i, i32 1
  %id.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i, i32 0, i32 5
  %48 = call ptr @memset(ptr %arrayinit.cur.ptr.i, i32 0, i32 20)
  %49 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3847, ptr %id.i, align 4
  %len.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i, i32 0, i32 6
  %50 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 4, ptr %len.i, align 4
  %arrayinit.start3.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i, i32 0, i32 6, i32 1
  %51 = ptrtoint ptr %arrayinit.start3.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %arrayinit.start3.i, align 2
  %call.i = call i32 @iwl_trans_send_cmd(ptr noundef %1, ptr noundef nonnull %hcmd.i) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %if.then15, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  br i1 %stop, label %if.then15.cleanup.sink.split_crit_edge, label %if.then15.if.else19_crit_edge

if.then15.if.else19_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else19

if.then15.cleanup.sink.split_crit_edge:           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split

if.else19:                                        ; preds = %if.then15.if.else19_crit_edge, %if.else.i, %if.then1.i36
  %cur_fw_img.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 10
  %52 = ptrtoint ptr %cur_fw_img.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cur_fw_img.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i40 = icmp eq i32 %53, 0
  br i1 %cmp.i40, label %land.lhs.true.i, label %if.else19.cleanup_crit_edge

if.else19.cleanup_crit_edge:                      ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.else19
  %54 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fw, align 4
  %dbg.i = getelementptr inbounds %struct.iwl_fw, ptr %55, i32 0, i32 20
  %56 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dbg.i, align 4
  %tobool.not.i41 = icmp eq ptr %57, null
  br i1 %tobool.not.i41, label %lor.lhs.false.i, label %land.lhs.true.i.cleanup.sink.split_crit_edge

land.lhs.true.i.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %58 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fwrt, align 8
  %ini_dest.i = getelementptr inbounds %struct.iwl_trans, ptr %59, i32 0, i32 32, i32 16
  %60 = ptrtoint ptr %ini_dest.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ini_dest.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp2.not.i = icmp eq i32 %61, 0
  br i1 %cmp2.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false.i.cleanup.sink.split_crit_edge

lor.lhs.false.i.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

cleanup.sink.split:                               ; preds = %lor.lhs.false.i.cleanup.sink.split_crit_edge, %land.lhs.true.i.cleanup.sink.split_crit_edge, %if.then15.cleanup.sink.split_crit_edge, %if.end3.i, %if.then.i
  %.sink = phi i8 [ 0, %if.then.i ], [ 0, %if.end3.i ], [ 0, %if.then15.cleanup.sink.split_crit_edge ], [ 1, %lor.lhs.false.i.cleanup.sink.split_crit_edge ], [ 1, %land.lhs.true.i.cleanup.sink.split_crit_edge ]
  %62 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fwrt, align 8
  %rec_on.i = getelementptr inbounds %struct.iwl_trans, ptr %63, i32 0, i32 32, i32 1
  %64 = ptrtoint ptr %rec_on.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %.sink, ptr %rec_on.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.i.cleanup_crit_edge, %if.else19.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.else9.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_iwl_dbg_tlv_time_point(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_sgtable(i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %size, 4095
  %div49 = lshr i32 %sub, 12
  %0 = mul nuw nsw i32 %div49, 20
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef 3520) #23
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @sg_init_table(ptr noundef nonnull %call8.i.i, i32 noundef %div49) #19
  %call157 = tail call i32 @sg_nents(ptr noundef nonnull %call8.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %cmp58 = icmp sgt i32 %call157, 0
  br i1 %cmp58, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %sg_set_page.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %iter.061 = phi ptr [ %call19, %sg_set_page.exit.for.body_crit_edge ], [ %call8.i.i, %if.end.for.body_crit_edge ]
  %i.060 = phi i32 [ %inc18, %sg_set_page.exit.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %size.addr.059 = phi i32 [ %sub16, %sg_set_page.exit.for.body_crit_edge ], [ %size, %if.end.for.body_crit_edge ]
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %tobool3.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool3.not, label %for.cond5.preheader, label %if.end14

for.cond5.preheader:                              ; preds = %for.body
  %call662 = tail call i32 @sg_nents(ptr noundef nonnull %call8.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call662)
  %cmp763 = icmp sgt i32 %call662, 0
  br i1 %cmp763, label %for.cond5.preheader.for.body8_crit_edge, label %for.cond5.preheader.for.end_crit_edge

for.cond5.preheader.for.end_crit_edge:            ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.cond5.preheader.for.body8_crit_edge:          ; preds = %for.cond5.preheader
  br label %for.body8

for.body8:                                        ; preds = %for.inc.for.body8_crit_edge, %for.cond5.preheader.for.body8_crit_edge
  %iter.165 = phi ptr [ %call13, %for.inc.for.body8_crit_edge ], [ %call8.i.i, %for.cond5.preheader.for.body8_crit_edge ]
  %i.164 = phi i32 [ %inc, %for.inc.for.body8_crit_edge ], [ 0, %for.cond5.preheader.for.body8_crit_edge ]
  %1 = ptrtoint ptr %iter.165 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %iter.165, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !99

do.body2.i:                                       ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #19, !srcloc !104
  unreachable

sg_page.exit:                                     ; preds = %for.body8
  %and.i = and i32 %2, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not = icmp eq i32 %and.i, 0
  br i1 %tobool10.not, label %sg_page.exit.for.inc_crit_edge, label %if.then11

sg_page.exit.for.inc_crit_edge:                   ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.then11:                                        ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #21
  %3 = inttoptr i32 %and.i to ptr
  tail call void @__free_pages(ptr noundef nonnull %3, i32 noundef 0) #19
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %sg_page.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.164, 1
  %call13 = tail call ptr @sg_next(ptr noundef %iter.165) #19
  %call6 = tail call i32 @sg_nents(ptr noundef nonnull %call8.i.i) #19
  %cmp7 = icmp slt i32 %inc, %call6
  br i1 %cmp7, label %for.inc.for.body8_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body8

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond5.preheader.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #19
  br label %cleanup

if.end14:                                         ; preds = %for.body
  %4 = tail call i32 @llvm.smin.i32(i32 %size.addr.059, i32 4096)
  %sub16 = add i32 %size.addr.059, -4096
  %5 = ptrtoint ptr %iter.061 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iter.061, align 4
  %7 = ptrtoint ptr %call38.i.i.i to i32
  %and2.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !99

do.body5.i.i:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #19, !srcloc !105
  unreachable

do.body11.i.i:                                    ; preds = %if.end14
  %and.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !99

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #19, !srcloc !106
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i50 = and i32 %6, 3
  %or.i.i = or i32 %and.i.i50, %7
  %8 = ptrtoint ptr %iter.061 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or.i.i, ptr %iter.061, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %iter.061, i32 0, i32 1
  %9 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %iter.061, i32 0, i32 2
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %4, ptr %length.i, align 4
  %inc18 = add nuw nsw i32 %i.060, 1
  %call19 = tail call ptr @sg_next(ptr noundef %iter.061) #19
  %call1 = tail call i32 @sg_nents(ptr noundef nonnull %call8.i.i) #19
  %cmp = icmp slt i32 %inc18, %call1
  br i1 %cmp, label %sg_set_page.exit.for.body_crit_edge, label %sg_set_page.exit.cleanup_crit_edge

sg_set_page.exit.cleanup_crit_edge:               ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sg_set_page.exit.for.body_crit_edge:              ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

cleanup:                                          ; preds = %sg_set_page.exit.cleanup_crit_edge, %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %for.end ], [ null, %entry.cleanup_crit_edge ], [ %call8.i.i, %if.end.cleanup_crit_edge ], [ %call8.i.i, %sg_set_page.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_coredumpsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iwl_dump_ini_single_range(ptr nocapture noundef readnone %fwrt, ptr nocapture noundef readnone %reg_data) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iwl_dump_ini_mon_smem_get_size(ptr nocapture noundef readnone %fwrt, ptr nocapture noundef readonly %reg_data) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %size1 = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 8
  %2 = ptrtoint ptr %size1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %size1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %add = add i32 %4, 72
  %retval.0 = select i1 %tobool.not, i32 0, i32 %add
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @iwl_dump_ini_mon_smem_fill_header(ptr nocapture noundef readonly %fwrt, ptr nocapture noundef readonly %reg_data, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwrt, align 8
  %cfg = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 8
  %mon_smem_regs = getelementptr inbounds %struct.iwl_cfg, ptr %3, i32 0, i32 37
  %call = tail call fastcc ptr @iwl_dump_ini_mon_fill_header(ptr noundef %fwrt, ptr noundef %reg_data, ptr noundef %data, ptr noundef %mon_smem_regs)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dump_ini_mon_smem_iter(ptr nocapture noundef readonly %fwrt, ptr nocapture noundef readonly %reg_data, ptr noundef %range_ptr, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %base_addr = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 7, i32 1
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %base_addr, align 1
  %4 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %3, ptr %4, align 1
  %size = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 8
  %6 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %size, align 1
  %8 = ptrtoint ptr %range_ptr to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %range_ptr, align 1
  %9 = load i32, ptr %size, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = tail call i32 @llvm.bswap.i32(i32 %3)
  %12 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fwrt, align 8
  %data6 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 2
  %div20 = lshr i32 %10, 2
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %read_mem.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %15, i32 0, i32 26
  %16 = ptrtoint ptr %read_mem.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_mem.i, align 4
  %call.i = tail call i32 %17(ptr noundef %13, i32 noundef %11, ptr noundef %data6, i32 noundef %div20) #19
  %18 = ptrtoint ptr %range_ptr to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %range_ptr, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %add = add i32 %20, 12
  ret i32 %add
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dump_ini_mon_dram_ranges(ptr nocapture noundef readonly %fwrt, ptr nocapture noundef readonly %reg_data) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %2 = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 7
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %2, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fwrt, align 8
  %arrayidx = getelementptr %struct.iwl_trans, ptr %7, i32 0, i32 32, i32 13, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp7.not = icmp eq i32 %9, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %frags = getelementptr %struct.iwl_trans, ptr %7, i32 0, i32 32, i32 13, i32 %5, i32 1
  %10 = ptrtoint ptr %frags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %frags, align 4
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc2, %if.end.for.body_crit_edge ]
  %size = getelementptr %struct.iwl_dram_data, ptr %11, i32 %i.09, i32 2
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

if.end:                                           ; preds = %for.body
  %inc2 = add nuw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc2, %9
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %ranges.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.09, %for.body.for.end_crit_edge ], [ %9, %if.end.for.end_crit_edge ]
  ret i32 %ranges.0.lcssa
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dump_ini_mon_dram_get_size(ptr nocapture noundef readonly %fwrt, ptr nocapture noundef readonly %reg_data) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %2 = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 7
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %2, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fwrt, align 8
  %arrayidx = getelementptr %struct.iwl_trans, ptr %7, i32 0, i32 32, i32 13, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp21.not = icmp eq i32 %9, 0
  br i1 %cmp21.not, label %entry.for.end.thread_crit_edge, label %for.body.lr.ph

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %entry
  %frags = getelementptr %struct.iwl_trans, ptr %7, i32 0, i32 32, i32 13, i32 %5, i32 1
  %10 = ptrtoint ptr %frags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %frags, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %size.022 = phi i32 [ 0, %for.body.lr.ph ], [ %add4, %for.inc.for.body_crit_edge ]
  %size2 = getelementptr %struct.iwl_dram_data, ptr %11, i32 %i.023, i32 2
  %12 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.inc:                                          ; preds = %for.body
  %add = add i32 %size.022, 12
  %add4 = add i32 %add, %13
  %inc = add nuw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %size.0.lcssa = phi i32 [ %add4, %for.inc.for.end_crit_edge ], [ %size.022, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0.lcssa)
  %tobool5.not = icmp eq i32 %size.0.lcssa, 0
  %add7 = add i32 %size.0.lcssa, 60
  br i1 %tobool5.not, label %for.end.for.end.thread_crit_edge, label %for.end._crit_edge

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %14

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  br label %14

14:                                               ; preds = %for.end.thread, %for.end._crit_edge
  %15 = phi i32 [ 0, %for.end.thread ], [ %add7, %for.end._crit_edge ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @iwl_dump_ini_mon_dram_fill_header(ptr nocapture noundef readonly %fwrt, ptr nocapture noundef readonly %reg_data, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwrt, align 8
  %cfg = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 8
  %mon_dram_regs = getelementptr inbounds %struct.iwl_cfg, ptr %3, i32 0, i32 36
  %call = tail call fastcc ptr @iwl_dump_ini_mon_fill_header(ptr noundef %fwrt, ptr noundef %reg_data, ptr noundef %data, ptr noundef %mon_dram_regs)
  ret ptr %call
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iwl_dump_ini_mon_dram_iter(ptr nocapture noundef readonly %fwrt, ptr nocapture noundef readonly %reg_data, ptr nocapture noundef writeonly %range_ptr, i32 noundef %idx) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %2 = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 7
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %2, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fwrt, align 8
  %frags = getelementptr %struct.iwl_trans, ptr %7, i32 0, i32 32, i32 13, i32 %5, i32 1
  %8 = ptrtoint ptr %frags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %frags, align 4
  %arrayidx1 = getelementptr %struct.iwl_dram_data, ptr %9, i32 %idx
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1, align 4
  %conv = zext i32 %11 to i64
  %12 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %13 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %12, ptr %13, align 1
  %size = getelementptr %struct.iwl_dram_data, ptr %9, i32 %idx, i32 2
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %range_ptr to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %range_ptr, align 1
  %data2 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 2
  %block = getelementptr %struct.iwl_dram_data, ptr %9, i32 %idx, i32 1
  %19 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %block, align 4
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size, align 4
  %23 = call ptr @memcpy(ptr %data2, ptr %20, i32 %22)
  %add = add i32 %16, 12
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dump_ini_txf_ranges(ptr nocapture noundef %fwrt, ptr nocapture noundef readonly %reg_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %num_of_fifos.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call = tail call fastcc zeroext i1 @iwl_ini_txf_iter(ptr noundef %fwrt, ptr noundef %reg_data, i32 noundef %num_of_fifos.0)
  %inc = add i32 %num_of_fifos.0, 1
  br i1 %call, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #21
  ret i32 %num_of_fifos.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dump_ini_txf_get_size(ptr nocapture noundef %fwrt, ptr nocapture noundef readonly %reg_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %length.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #19
  %rem.i = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.end22.i, label %do.end.i, !prof !99

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 971, i32 noundef 9, ptr noundef null) #19
  br label %_iwl_tlv_array_len.exit

if.end22.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i = shl i32 %4, 1
  %5 = add i32 %sub.i, -128
  %phi.bo = and i32 %5, -8
  %phi.bo20 = add i32 %phi.bo, 12
  br label %_iwl_tlv_array_len.exit

_iwl_tlv_array_len.exit:                          ; preds = %if.end22.i, %do.end.i
  %retval.0.i = phi i32 [ 12, %do.end.i ], [ %phi.bo20, %if.end22.i ]
  %call221 = tail call fastcc zeroext i1 @iwl_ini_txf_iter(ptr noundef %fwrt, ptr noundef %reg_data, i32 noundef 0)
  br i1 %call221, label %while.body.lr.ph, label %_iwl_tlv_array_len.exit.while.end.thread_crit_edge

_iwl_tlv_array_len.exit.while.end.thread_crit_edge: ; preds = %_iwl_tlv_array_len.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end.thread

while.body.lr.ph:                                 ; preds = %_iwl_tlv_array_len.exit
  %hdr_only = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 8
  %fifo_size = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 7, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %size.022 = phi i32 [ 0, %while.body.lr.ph ], [ %size.1, %if.end.while.body_crit_edge ]
  %add3 = add i32 %size.022, %retval.0.i
  %6 = ptrtoint ptr %hdr_only to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %hdr_only, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  %8 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fifo_size, align 4
  %add4 = add i32 %9, %add3
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %size.1 = phi i32 [ %add3, %while.body.if.end_crit_edge ], [ %add4, %if.then ]
  %call2 = tail call fastcc zeroext i1 @iwl_ini_txf_iter(ptr noundef %fwrt, ptr noundef %reg_data, i32 noundef %size.1)
  br i1 %call2, label %if.end.while.body_crit_edge, label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

while.end:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.1)
  %tobool5.not = icmp eq i32 %size.1, 0
  %add8 = add i32 %size.1, 48
  br i1 %tobool5.not, label %while.end.while.end.thread_crit_edge, label %while.end._crit_edge

while.end._crit_edge:                             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %10

while.end.while.end.thread_crit_edge:             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end.thread

while.end.thread:                                 ; preds = %while.end.while.end.thread_crit_edge, %_iwl_tlv_array_len.exit.while.end.thread_crit_edge
  br label %10

10:                                               ; preds = %while.end.thread, %while.end._crit_edge
  %11 = phi i32 [ 0, %while.end.thread ], [ %add8, %while.end._crit_edge ]
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal ptr @iwl_dump_ini_mem_fill_header(ptr nocapture noundef readnone %fwrt, ptr nocapture noundef readnone %reg_data, ptr noundef writeonly %data) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 16777216, ptr %data, align 1
  %data1 = getelementptr inbounds %struct.iwl_fw_ini_error_dump, ptr %data, i32 0, i32 1
  ret ptr %data1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dump_ini_txf_iter(ptr nocapture noundef %fwrt, ptr nocapture noundef readonly %reg_data, ptr noundef %range_ptr, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %txf_iter_data = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 7
  %data1 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 2
  %offset = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 8, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %offset, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %length.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length.i, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #19
  %rem.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.end22.i, label %do.end.i, !prof !99

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 971, i32 noundef 9, ptr noundef null) #19
  br label %_iwl_tlv_array_len.exit

if.end22.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i = add i32 %7, -64
  %div1.i = lshr i32 %sub.i, 2
  br label %_iwl_tlv_array_len.exit

_iwl_tlv_array_len.exit:                          ; preds = %if.end22.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %div1.i, %if.end22.i ]
  %mul = shl i32 %retval.0.i, 3
  %call5 = tail call fastcc zeroext i1 @iwl_ini_txf_iter(ptr noundef %fwrt, ptr noundef %reg_data, i32 noundef %idx)
  br i1 %call5, label %if.end, label %_iwl_tlv_array_len.exit.cleanup_crit_edge

_iwl_tlv_array_len.exit.cleanup_crit_edge:        ; preds = %_iwl_tlv_array_len.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %_iwl_tlv_array_len.exit
  %8 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fwrt, align 8
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %grab_nic_access = getelementptr inbounds %struct.iwl_trans_ops, ptr %11, i32 0, i32 32
  %12 = ptrtoint ptr %grab_nic_access to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %grab_nic_access, align 4
  %call7 = tail call zeroext i1 %13(ptr noundef %9) #19
  br i1 %call7, label %if.end10, label %if.end.cleanup_crit_edge, !prof !99

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %14 = ptrtoint ptr %txf_iter_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %txf_iter_data, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %16, ptr %17, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %num_of_registers = getelementptr inbounds %struct.iwl_fw_ini_fifo_hdr, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %num_of_registers to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %num_of_registers, align 1
  %fifo_size = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 7, i32 2
  %21 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fifo_size, align 4
  %add = add i32 %22, %mul
  %23 = tail call i32 @llvm.bswap.i32(i32 %add)
  %24 = ptrtoint ptr %range_ptr to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %range_ptr, align 1
  %25 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fwrt, align 8
  %add12 = add i32 %4, 10486844
  %27 = ptrtoint ptr %txf_iter_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %txf_iter_data, align 4
  tail call void @iwl_write_prph_no_grab(ptr noundef %26, i32 noundef %add12, i32 noundef %28) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp106.not = icmp eq i32 %retval.0.i, 0
  br i1 %cmp106.not, label %if.end10.for.end_crit_edge, label %for.body.lr.ph

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end10
  %addrs = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0108 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %reg_dump.0107 = phi ptr [ %data1, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x i32], ptr %addrs, i32 0, i32 %i.0108
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %arrayidx, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %add14 = add i32 %31, %4
  %32 = tail call i32 @llvm.bswap.i32(i32 %add14)
  %33 = ptrtoint ptr %reg_dump.0107 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %reg_dump.0107, align 1
  %34 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fwrt, align 8
  %call17 = tail call i32 @iwl_read_prph_no_grab(ptr noundef %35, i32 noundef %add14) #19
  %36 = tail call i32 @llvm.bswap.i32(i32 %call17)
  %data18 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_register, ptr %reg_dump.0107, i32 0, i32 1
  %37 = ptrtoint ptr %data18 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %data18, align 1
  %incdec.ptr = getelementptr %struct.iwl_fw_ini_error_dump_register, ptr %reg_dump.0107, i32 1
  %inc = add nuw nsw i32 %i.0108, 1
  %exitcond.not = icmp eq i32 %inc, %retval.0.i
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end10.for.end_crit_edge
  %reg_dump.0.lcssa = phi ptr [ %data1, %if.end10.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  %hdr_only = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 8
  %38 = ptrtoint ptr %hdr_only to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %hdr_only, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool19.not = icmp eq i32 %39, 0
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  %40 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %41 = ptrtoint ptr %range_ptr to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %range_ptr, align 1
  br label %out

if.end22:                                         ; preds = %for.end
  %42 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fwrt, align 8
  %add24 = add i32 %4, 10486860
  %add25 = add i32 %4, 10486804
  tail call void @iwl_write_prph_no_grab(ptr noundef %43, i32 noundef %add24, i32 noundef %add25) #19
  %44 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fwrt, align 8
  %add27 = add i32 %4, 10486856
  %call28 = tail call i32 @iwl_read_prph_no_grab(ptr noundef %45, i32 noundef %add27) #19
  %46 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp32109.not = icmp eq i32 %47, 0
  br i1 %cmp32109.not, label %if.end22.for.end39_crit_edge, label %if.end22.for.body33_crit_edge

if.end22.for.body33_crit_edge:                    ; preds = %if.end22
  br label %for.body33

if.end22.for.end39_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end39

for.body33:                                       ; preds = %for.body33.for.body33_crit_edge, %if.end22.for.body33_crit_edge
  %i.1111 = phi i32 [ %add38, %for.body33.for.body33_crit_edge ], [ 0, %if.end22.for.body33_crit_edge ]
  %data4.0110 = phi ptr [ %incdec.ptr36, %for.body33.for.body33_crit_edge ], [ %reg_dump.0.lcssa, %if.end22.for.body33_crit_edge ]
  %48 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fwrt, align 8
  %call35 = tail call i32 @iwl_read_prph_no_grab(ptr noundef %49, i32 noundef %add27) #19
  %50 = tail call i32 @llvm.bswap.i32(i32 %call35)
  %incdec.ptr36 = getelementptr i32, ptr %data4.0110, i32 1
  %51 = ptrtoint ptr %data4.0110 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %data4.0110, align 4
  %add38 = add i32 %i.1111, 4
  %52 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fifo_size, align 4
  %cmp32 = icmp ult i32 %add38, %53
  br i1 %cmp32, label %for.body33.for.body33_crit_edge, label %for.body33.for.end39_crit_edge

for.body33.for.end39_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end39

for.body33.for.body33_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body33

for.end39:                                        ; preds = %for.body33.for.end39_crit_edge, %if.end22.for.end39_crit_edge
  %.lcssa = phi i32 [ 0, %if.end22.for.end39_crit_edge ], [ %53, %for.body33.for.end39_crit_edge ]
  %sanitize_ops = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 5
  %54 = ptrtoint ptr %sanitize_ops to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sanitize_ops, align 4
  %tobool40.not = icmp eq ptr %55, null
  br i1 %tobool40.not, label %for.end39.out_crit_edge, label %land.lhs.true

for.end39.out_crit_edge:                          ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

land.lhs.true:                                    ; preds = %for.end39
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %tobool42.not = icmp eq ptr %57, null
  br i1 %tobool42.not, label %land.lhs.true.out_crit_edge, label %if.then43

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.then43:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  %sanitize_ctx = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 6
  %58 = ptrtoint ptr %sanitize_ctx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sanitize_ctx, align 8
  tail call void %57(ptr noundef %59, ptr noundef %reg_dump.0.lcssa, i32 noundef %.lcssa) #19
  br label %out

out:                                              ; preds = %if.then43, %land.lhs.true.out_crit_edge, %for.end39.out_crit_edge, %if.then20
  %60 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fwrt, align 8
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops.i, align 4
  %release_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %63, i32 0, i32 33
  %64 = ptrtoint ptr %release_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %release_nic_access.i, align 4
  tail call void %65(ptr noundef %61) #19
  %66 = ptrtoint ptr %range_ptr to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %range_ptr, align 1
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  %add50 = add i32 %68, 12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %_iwl_tlv_array_len.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %add50, %out ], [ -5, %_iwl_tlv_array_len.exit.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dump_ini_rxf_get_size(ptr nocapture noundef readonly %fwrt, ptr nocapture noundef readonly %reg_data) #0 align 64 {
entry:
  %rx_data = alloca %struct.iwl_ini_rxf_data, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rx_data) #19
  %2 = ptrtoint ptr %rx_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rx_data, align 4, !annotation !100
  %3 = getelementptr inbounds %struct.iwl_ini_rxf_data, ptr %rx_data, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !100
  %5 = getelementptr inbounds %struct.iwl_ini_rxf_data, ptr %rx_data, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !100
  %length.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #19
  %rem.i = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.end22.i, label %do.end.i, !prof !99

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 971, i32 noundef 9, ptr noundef null) #19
  br label %_iwl_tlv_array_len.exit

if.end22.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i = shl i32 %9, 1
  %10 = add i32 %sub.i, -128
  %phi.bo = and i32 %10, -8
  %phi.bo11 = add i32 %phi.bo, 60
  br label %_iwl_tlv_array_len.exit

_iwl_tlv_array_len.exit:                          ; preds = %if.end22.i, %do.end.i
  %retval.0.i = phi i32 [ 60, %do.end.i ], [ %phi.bo11, %if.end22.i ]
  %hdr_only = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 8
  %11 = ptrtoint ptr %hdr_only to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %hdr_only, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end, label %_iwl_tlv_array_len.exit.cleanup_crit_edge

_iwl_tlv_array_len.exit.cleanup_crit_edge:        ; preds = %_iwl_tlv_array_len.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %_iwl_tlv_array_len.exit
  call void @__sanitizer_cov_trace_pc() #21
  call fastcc void @iwl_ini_get_rxf_data(ptr noundef %fwrt, ptr noundef %reg_data, ptr noundef nonnull %rx_data)
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 4
  %add3 = add i32 %14, %retval.0.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %_iwl_tlv_array_len.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %add3, %if.end ], [ %retval.0.i, %_iwl_tlv_array_len.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rx_data) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dump_ini_rxf_iter(ptr nocapture noundef readonly %fwrt, ptr nocapture noundef readonly %reg_data, ptr nocapture noundef %range_ptr, i32 noundef %idx) #0 align 64 {
entry:
  %rxf_data = alloca %struct.iwl_ini_rxf_data, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rxf_data) #19
  %2 = ptrtoint ptr %rxf_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rxf_data, align 4, !annotation !100
  %3 = getelementptr inbounds %struct.iwl_ini_rxf_data, ptr %rxf_data, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !100
  %5 = getelementptr inbounds %struct.iwl_ini_rxf_data, ptr %rxf_data, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !100
  %data1 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 2
  %offset = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 8, i32 1
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %offset, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %length.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #19
  %rem.i = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.end22.i, label %do.end.i, !prof !99

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 971, i32 noundef 9, ptr noundef null) #19
  br label %_iwl_tlv_array_len.exit

if.end22.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i = add i32 %12, -64
  %div1.i = lshr i32 %sub.i, 2
  br label %_iwl_tlv_array_len.exit

_iwl_tlv_array_len.exit:                          ; preds = %if.end22.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %div1.i, %if.end22.i ]
  %mul = shl i32 %retval.0.i, 3
  call fastcc void @iwl_ini_get_rxf_data(ptr noundef %fwrt, ptr noundef %reg_data, ptr noundef nonnull %rxf_data)
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %_iwl_tlv_array_len.exit.cleanup_crit_edge, label %if.end

_iwl_tlv_array_len.exit.cleanup_crit_edge:        ; preds = %_iwl_tlv_array_len.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %_iwl_tlv_array_len.exit
  %15 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fwrt, align 8
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %grab_nic_access = getelementptr inbounds %struct.iwl_trans_ops, ptr %18, i32 0, i32 32
  %19 = ptrtoint ptr %grab_nic_access to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %grab_nic_access, align 4
  %call6 = call zeroext i1 %20(ptr noundef %16) #19
  br i1 %call6, label %if.end10, label %if.end.cleanup_crit_edge, !prof !99

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %21 = ptrtoint ptr %rxf_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rxf_data, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %24 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %23, ptr %24, align 1
  %26 = call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %num_of_registers = getelementptr inbounds %struct.iwl_fw_ini_fifo_hdr, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %num_of_registers to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %num_of_registers, align 1
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %3, align 4
  %add = add i32 %29, %mul
  %30 = call i32 @llvm.bswap.i32(i32 %add)
  %31 = ptrtoint ptr %range_ptr to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %range_ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp85.not = icmp eq i32 %retval.0.i, 0
  br i1 %cmp85.not, label %if.end10.for.end_crit_edge, label %for.body.lr.ph

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end10
  %addrs = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.087 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %reg_dump.086 = phi ptr [ %data1, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x i32], ptr %addrs, i32 0, i32 %i.087
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %arrayidx, align 1
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %add13 = add i32 %34, %9
  %35 = call i32 @llvm.bswap.i32(i32 %add13)
  %36 = ptrtoint ptr %reg_dump.086 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %reg_dump.086, align 1
  %37 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fwrt, align 8
  %call16 = call i32 @iwl_read_prph_no_grab(ptr noundef %38, i32 noundef %add13) #19
  %39 = call i32 @llvm.bswap.i32(i32 %call16)
  %data17 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_register, ptr %reg_dump.086, i32 0, i32 1
  %40 = ptrtoint ptr %data17 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %data17, align 1
  %incdec.ptr = getelementptr %struct.iwl_fw_ini_error_dump_register, ptr %reg_dump.086, i32 1
  %inc = add nuw nsw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, %retval.0.i
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end10.for.end_crit_edge
  %reg_dump.0.lcssa = phi ptr [ %data1, %if.end10.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  %hdr_only = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 8
  %41 = ptrtoint ptr %hdr_only to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %hdr_only, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool18.not = icmp eq i32 %42, 0
  br i1 %tobool18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  %43 = call i32 @llvm.bswap.i32(i32 %mul)
  %44 = ptrtoint ptr %range_ptr to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %range_ptr, align 1
  br label %out

if.end21:                                         ; preds = %for.end
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %5, align 4
  %47 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fwrt, align 8
  %add24 = add i32 %46, 10488852
  call void @iwl_write_prph_no_grab(ptr noundef %48, i32 noundef %add24, i32 noundef 1) #19
  %49 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fwrt, align 8
  %add26 = add i32 %46, 10488860
  call void @iwl_write_prph_no_grab(ptr noundef %50, i32 noundef %add26, i32 noundef 1) #19
  %51 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fwrt, align 8
  %add28 = add i32 %46, 10488848
  call void @iwl_write_prph_no_grab(ptr noundef %52, i32 noundef %add28, i32 noundef 0) #19
  %add29 = add i32 %46, 10488936
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp3288.not = icmp eq i32 %54, 0
  br i1 %cmp3288.not, label %if.end21.out_crit_edge, label %if.end21.for.body33_crit_edge

if.end21.for.body33_crit_edge:                    ; preds = %if.end21
  br label %for.body33

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

for.body33:                                       ; preds = %for.body33.for.body33_crit_edge, %if.end21.for.body33_crit_edge
  %i.190 = phi i32 [ %add38, %for.body33.for.body33_crit_edge ], [ 0, %if.end21.for.body33_crit_edge ]
  %data4.089 = phi ptr [ %incdec.ptr36, %for.body33.for.body33_crit_edge ], [ %reg_dump.0.lcssa, %if.end21.for.body33_crit_edge ]
  %55 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fwrt, align 8
  %call35 = call i32 @iwl_read_prph_no_grab(ptr noundef %56, i32 noundef %add29) #19
  %57 = call i32 @llvm.bswap.i32(i32 %call35)
  %incdec.ptr36 = getelementptr i32, ptr %data4.089, i32 1
  %58 = ptrtoint ptr %data4.089 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %data4.089, align 4
  %add38 = add i32 %i.190, 4
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %3, align 4
  %cmp32 = icmp ult i32 %add38, %60
  br i1 %cmp32, label %for.body33.for.body33_crit_edge, label %for.body33.out_crit_edge

for.body33.out_crit_edge:                         ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

for.body33.for.body33_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body33

out:                                              ; preds = %for.body33.out_crit_edge, %if.end21.out_crit_edge, %if.then19
  %61 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fwrt, align 8
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops.i, align 4
  %release_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %64, i32 0, i32 33
  %65 = ptrtoint ptr %release_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %release_nic_access.i, align 4
  call void %66(ptr noundef %62) #19
  %67 = ptrtoint ptr %range_ptr to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %range_ptr, align 1
  %69 = call i32 @llvm.bswap.i32(i32 %68)
  %add42 = add i32 %69, 12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %_iwl_tlv_array_len.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %add42, %out ], [ -5, %_iwl_tlv_array_len.exit.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rxf_data) #19
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iwl_dump_ini_err_table_get_size(ptr nocapture noundef readnone %fwrt, ptr nocapture noundef readonly %reg_data) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %size1 = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 8
  %2 = ptrtoint ptr %size1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %size1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %add = add i32 %4, 64
  %size.0 = select i1 %tobool.not, i32 0, i32 %add
  ret i32 %size.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @iwl_dump_ini_err_table_fill_header(ptr nocapture noundef readnone %fwrt, ptr nocapture noundef readonly %reg_data, ptr noundef writeonly %data) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 16777216, ptr %data, align 1
  %3 = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %3, align 1
  %version3 = getelementptr inbounds %struct.iwl_fw_ini_err_table_dump, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %version3 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %version3, align 1
  %data4 = getelementptr inbounds %struct.iwl_fw_ini_err_table_dump, ptr %data, i32 0, i32 2
  ret ptr %data4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dump_ini_err_table_iter(ptr nocapture noundef readonly %fwrt, ptr nocapture noundef readonly %reg_data, ptr noundef %range_ptr, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %base_addr = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 7, i32 1
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %base_addr, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %offset = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 8, i32 1
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %offset, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %add = add i32 %7, %4
  %8 = tail call i32 @llvm.bswap.i32(i32 %add)
  %9 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %8, ptr %9, align 1
  %size = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 8
  %11 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %size, align 1
  %13 = ptrtoint ptr %range_ptr to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %range_ptr, align 1
  %14 = load i32, ptr %size, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fwrt, align 8
  %data6 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 2
  %div22 = lshr i32 %15, 2
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %read_mem.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %19, i32 0, i32 26
  %20 = ptrtoint ptr %read_mem.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_mem.i, align 4
  %call.i = tail call i32 %21(ptr noundef %17, i32 noundef %add, ptr noundef %data6, i32 noundef %div22) #19
  %22 = ptrtoint ptr %range_ptr to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %range_ptr, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %add12 = add i32 %24, 12
  ret i32 %add12
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iwl_dump_ini_fw_pkt_get_size(ptr nocapture noundef readnone %fwrt, ptr nocapture noundef readonly %reg_data) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dump_data = getelementptr inbounds %struct.iwl_dump_ini_region_data, ptr %reg_data, i32 0, i32 1
  %0 = ptrtoint ptr %dump_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dump_data, align 4
  %fw_pkt = getelementptr inbounds %struct.anon.132, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fw_pkt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw_pkt, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %3, align 1
  %6 = and i32 %5, -12648448
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %6)
  %tobool3.not = icmp eq i32 %6, 67108864
  %add5 = add nuw nsw i32 %7, 56
  %spec.select = select i1 %tobool3.not, i32 0, i32 %add5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iwl_dump_ini_fw_pkt_iter(ptr nocapture noundef readnone %fwrt, ptr nocapture noundef readonly %reg_data, ptr nocapture noundef writeonly %range_ptr, i32 noundef %idx) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dump_data = getelementptr inbounds %struct.iwl_dump_ini_region_data, ptr %reg_data, i32 0, i32 1
  %0 = ptrtoint ptr %dump_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dump_data, align 4
  %fw_pkt = getelementptr inbounds %struct.anon.132, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fw_pkt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw_pkt, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %3, align 1
  %6 = and i32 %5, -12648448
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #19
  %sub.i = add nsw i32 %7, -4
  %8 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 1
  %hdr = getelementptr inbounds %struct.iwl_rx_packet, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %hdr to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %hdr, align 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %8, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %sub.i)
  %13 = ptrtoint ptr %range_ptr to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %range_ptr, align 1
  %data = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 2
  %data1 = getelementptr inbounds %struct.iwl_rx_packet, ptr %3, i32 0, i32 2
  %14 = call ptr @memcpy(ptr %data, ptr %data1, i32 %sub.i)
  %add = add nuw nsw i32 %7, 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dump_ini_mem_ranges(ptr nocapture noundef readnone %fwrt, ptr nocapture noundef readonly %reg_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %length.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #19
  %rem.i = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.end22.i, label %do.end.i, !prof !99

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 971, i32 noundef 9, ptr noundef null) #19
  br label %_iwl_tlv_array_len.exit

if.end22.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i = add i32 %4, -64
  %div1.i = lshr i32 %sub.i, 2
  br label %_iwl_tlv_array_len.exit

_iwl_tlv_array_len.exit:                          ; preds = %if.end22.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %div1.i, %if.end22.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dump_ini_mem_get_size(ptr nocapture noundef readnone %fwrt, ptr nocapture noundef readonly %reg_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %2 = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 7
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %2, align 1
  %length.i.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length.i.i, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #19
  %rem.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool.not.i.i, label %if.end22.i.i, label %do.end.i.i, !prof !99

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 971, i32 noundef 9, ptr noundef null) #19
  br label %iwl_dump_ini_mem_ranges.exit

if.end22.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i.i = add i32 %7, -64
  %div1.i.i = lshr i32 %sub.i.i, 2
  br label %iwl_dump_ini_mem_ranges.exit

iwl_dump_ini_mem_ranges.exit:                     ; preds = %if.end22.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ 0, %do.end.i.i ], [ %div1.i.i, %if.end22.i.i ]
  %8 = tail call i32 @llvm.bswap.i32(i32 %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool2.not = icmp eq i32 %retval.0.i.i, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  %add = add i32 %8, 12
  %mul = mul i32 %retval.0.i.i, %add
  %add3 = add i32 %mul, 48
  %retval.0 = select i1 %or.cond, i32 0, i32 %add3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dump_ini_dev_mem_iter(ptr nocapture noundef readonly %fwrt, ptr nocapture noundef readonly %reg_data, ptr noundef %range_ptr, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %addrs = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 9
  %arrayidx = getelementptr [0 x i32], ptr %addrs, i32 0, i32 %idx
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %arrayidx, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 7
  %offset = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 7, i32 1
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %offset, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %add = add i32 %8, %4
  %9 = tail call i32 @llvm.bswap.i32(i32 %add)
  %10 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %9, ptr %10, align 1
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %5, align 1
  %14 = ptrtoint ptr %range_ptr to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %range_ptr, align 1
  %15 = load i32, ptr %5, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %data = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fwrt, align 8
  %data6 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 2
  %div42 = lshr i32 %16, 2
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %read_mem.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %20, i32 0, i32 26
  %21 = ptrtoint ptr %read_mem.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_mem.i, align 4
  %call.i = tail call i32 %22(ptr noundef %18, i32 noundef %add, ptr noundef %data6, i32 noundef %div42) #19
  %sub_type = getelementptr inbounds %struct.iwl_fw_ini_region_tlv, ptr %data, i32 0, i32 3
  %23 = ptrtoint ptr %sub_type to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sub_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp = icmp eq i8 %24, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end22

land.lhs.true:                                    ; preds = %entry
  %sanitize_ops = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 5
  %25 = ptrtoint ptr %sanitize_ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sanitize_ops, align 4
  %tobool12.not = icmp eq ptr %26, null
  br i1 %tobool12.not, label %land.lhs.true.if.end22_crit_edge, label %land.lhs.true13

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end22

land.lhs.true13:                                  ; preds = %land.lhs.true
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %tobool15.not = icmp eq ptr %28, null
  br i1 %tobool15.not, label %land.lhs.true13.if.end22_crit_edge, label %if.then16

land.lhs.true13.if.end22_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end22

if.then16:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #21
  %sanitize_ctx = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 6
  %29 = ptrtoint ptr %sanitize_ctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sanitize_ctx, align 8
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %5, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void %28(ptr noundef %30, ptr noundef %data6, i32 noundef %33) #19
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %land.lhs.true13.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %entry.if.end22_crit_edge
  %34 = ptrtoint ptr %range_ptr to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %range_ptr, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %add24 = add i32 %36, 12
  ret i32 %add24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dump_ini_prph_mac_iter(ptr nocapture noundef readonly %fwrt, ptr nocapture noundef readonly %reg_data, ptr nocapture noundef %range_ptr, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %addrs = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 9
  %arrayidx = getelementptr [0 x i32], ptr %addrs, i32 0, i32 %idx
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %arrayidx, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 7
  %offset = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 7, i32 1
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %offset, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %add = add i32 %8, %4
  %9 = tail call i32 @llvm.bswap.i32(i32 %add)
  %10 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %9, ptr %10, align 1
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %5, align 1
  %14 = ptrtoint ptr %range_ptr to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %range_ptr, align 1
  %15 = load i32, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp24.not = icmp eq i32 %15, 0
  br i1 %cmp24.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %data1 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %i.026 = phi i32 [ %add6, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %val.025 = phi ptr [ %incdec.ptr, %if.end.for.body_crit_edge ], [ %data1, %for.body.preheader ]
  %16 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fwrt, align 8
  %add4 = add i32 %i.026, %add
  %call = tail call i32 @iwl_read_prph(ptr noundef %17, i32 noundef %add4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515870810, i32 %call)
  %cmp5 = icmp eq i32 %call, 1515870810
  br i1 %cmp5, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %for.body
  %18 = tail call i32 @llvm.bswap.i32(i32 %call)
  %incdec.ptr = getelementptr i32, ptr %val.025, i32 1
  %19 = ptrtoint ptr %val.025 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %val.025, align 4
  %add6 = add i32 %i.026, 4
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %5, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %cmp = icmp ult i32 %add6, %22
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %23 = ptrtoint ptr %range_ptr to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %range_ptr, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %add8 = add i32 %25, 12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %add8, %for.end ], [ -16, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dump_ini_prph_phy_iter(ptr nocapture noundef readonly %fwrt, ptr nocapture noundef readonly %reg_data, ptr nocapture noundef %range_ptr, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %addrs = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 9
  %arrayidx = getelementptr [0 x i32], ptr %addrs, i32 0, i32 %idx
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %arrayidx, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %3, ptr %5, align 1
  %7 = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 7
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %7, align 1
  %10 = ptrtoint ptr %range_ptr to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %range_ptr, align 1
  %11 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fwrt, align 8
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %16)
  %cmp = icmp ult i32 %16, 19
  %spec.select = select i1 %cmp, i32 11402260, i32 11402564
  %offset = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 7, i32 1
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %offset, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %add = add i32 %spec.select, %19
  %add4 = add i32 %19, 11402272
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %12, i32 0, i32 1
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %grab_nic_access = getelementptr inbounds %struct.iwl_trans_ops, ptr %21, i32 0, i32 32
  %22 = ptrtoint ptr %grab_nic_access to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %grab_nic_access, align 4
  %call = tail call zeroext i1 %23(ptr noundef %12) #19
  br i1 %call, label %if.end9, label %entry.cleanup_crit_edge, !prof !99

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end9:                                          ; preds = %entry
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %offset, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool11.not = icmp eq i32 %25, 0
  %cond = select i1 %tobool11.not, i32 10498944, i32 10499008
  %26 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fwrt, align 8
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %trans_cfg.i, align 4
  %umac_prph_offset.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %umac_prph_offset.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %umac_prph_offset.i, align 4
  %add.i = add i32 %31, %cond
  %call.i = tail call i32 @iwl_read_prph_no_grab(ptr noundef %27, i32 noundef %add.i) #19
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp1560.not = icmp eq i32 %33, 0
  br i1 %cmp1560.not, label %if.end9.for.end_crit_edge, label %for.body.lr.ph

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end9
  %data1 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1515870815, i32 %call.i)
  %cmp16 = icmp ne i32 %call.i, -1515870815
  %and = and i32 %call.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp17.not = icmp eq i32 %and, 5
  %or.cond = and i1 %cmp16, %cmp17.not
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %add26, %for.inc.for.body_crit_edge ]
  %val.061 = phi ptr [ %data1, %for.body.lr.ph ], [ %val.1, %for.inc.for.body_crit_edge ]
  br i1 %or.cond, label %if.end19, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end19:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %34 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fwrt, align 8
  %add21 = add i32 %i.062, %4
  %and22 = and i32 %add21, 1048575
  %or = or i32 %and22, 536870912
  tail call void @iwl_write_prph_no_grab(ptr noundef %35, i32 noundef %add, i32 noundef %or) #19
  %36 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fwrt, align 8
  %call24 = tail call i32 @iwl_read_prph_no_grab(ptr noundef %37, i32 noundef %add4) #19
  %38 = tail call i32 @llvm.bswap.i32(i32 %call24)
  br label %for.inc

for.inc:                                          ; preds = %if.end19, %for.body.for.inc_crit_edge
  %storemerge = phi i32 [ %38, %if.end19 ], [ -15671552, %for.body.for.inc_crit_edge ]
  %val.1 = getelementptr i32, ptr %val.061, i32 1
  %39 = ptrtoint ptr %val.061 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %storemerge, ptr %val.061, align 4
  %add26 = add i32 %i.062, 4
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %7, align 1
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %cmp15 = icmp ult i32 %add26, %42
  br i1 %cmp15, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end9.for.end_crit_edge
  %43 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fwrt, align 8
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i, align 4
  %release_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %46, i32 0, i32 33
  %47 = ptrtoint ptr %release_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %release_nic_access.i, align 4
  tail call void %48(ptr noundef %44) #19
  %49 = ptrtoint ptr %range_ptr to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %range_ptr, align 1
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %add29 = add i32 %51, 12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add29, %for.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iwl_dump_ini_paging_ranges(ptr nocapture noundef readonly %fwrt, ptr nocapture noundef readnone %reg_data) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwrt, align 8
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans_cfg, align 4
  %gen2 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %gen2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %gen2, align 4
  %5 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %paging_cnt = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 33, i32 3
  %6 = ptrtoint ptr %paging_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %paging_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  %sub = add i32 %7, -1
  %spec.select = select i1 %tobool2.not, i32 0, i32 %sub
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %num_of_paging_blk = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 8
  %8 = ptrtoint ptr %num_of_paging_blk to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_of_paging_blk, align 4
  %conv = zext i16 %9 to i32
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.end ], [ %spec.select, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dump_ini_paging_get_size(ptr nocapture noundef readonly %fwrt, ptr nocapture noundef readnone %reg_data) #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %num_of_paging_blk.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 8
  %0 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwrt, align 8
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans_cfg.i, align 4
  %gen2.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %gen2.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %gen2.i, align 4
  %5 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i = icmp eq i16 %5, 0
  %paging_cnt.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 33, i32 3
  %paging = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 33, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %size.0 = phi i32 [ 48, %entry ], [ %size.1, %for.inc ]
  br i1 %tobool.not.i, label %iwl_dump_ini_paging_ranges.exit, label %iwl_dump_ini_paging_ranges.exit.thread

iwl_dump_ini_paging_ranges.exit:                  ; preds = %for.cond
  %6 = ptrtoint ptr %num_of_paging_blk.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_of_paging_blk.i, align 4
  %conv.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %conv.i)
  %cmp.not = icmp ugt i32 %i.0, %conv.i
  br i1 %cmp.not, label %iwl_dump_ini_paging_ranges.exit.for.end_crit_edge, label %if.else

iwl_dump_ini_paging_ranges.exit.for.end_crit_edge: ; preds = %iwl_dump_ini_paging_ranges.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

iwl_dump_ini_paging_ranges.exit.thread:           ; preds = %for.cond
  %8 = ptrtoint ptr %paging_cnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %paging_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not.i = icmp eq i32 %9, 0
  %sub.i = add i32 %9, -1
  %spec.select.i = select i1 %tobool2.not.i, i32 0, i32 %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %spec.select.i)
  %cmp.not16 = icmp ugt i32 %i.0, %spec.select.i
  br i1 %cmp.not16, label %iwl_dump_ini_paging_ranges.exit.thread.for.end_crit_edge, label %if.then

iwl_dump_ini_paging_ranges.exit.thread.for.end_crit_edge: ; preds = %iwl_dump_ini_paging_ranges.exit.thread
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

if.then:                                          ; preds = %iwl_dump_ini_paging_ranges.exit.thread
  call void @__sanitizer_cov_trace_pc() #21
  %10 = ptrtoint ptr %paging to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %paging, align 8
  %size2 = getelementptr %struct.iwl_dram_data, ptr %11, i32 %i.0, i32 2
  br label %for.inc

if.else:                                          ; preds = %iwl_dump_ini_paging_ranges.exit
  call void @__sanitizer_cov_trace_pc() #21
  %fw_paging_size = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 7, i32 %i.0, i32 2
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %.pn.in = phi ptr [ %size2, %if.then ], [ %fw_paging_size, %if.else ]
  %add18 = add i32 %size.0, 12
  %12 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load i32, ptr %.pn.in, align 4
  %size.1 = add i32 %add18, %.pn
  %inc = add i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %iwl_dump_ini_paging_ranges.exit.thread.for.end_crit_edge, %iwl_dump_ini_paging_ranges.exit.for.end_crit_edge
  ret i32 %size.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dump_ini_paging_iter(ptr nocapture noundef readonly %fwrt, ptr nocapture noundef readnone %reg_data, ptr nocapture noundef %range_ptr, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %inc = add i32 %idx, 1
  %0 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwrt, align 8
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans_cfg, align 4
  %gen2 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %gen2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %gen2, align 4
  %5 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 7, i32 %inc
  %fw_paging_block.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 7, i32 %inc, i32 1
  %6 = ptrtoint ptr %fw_paging_block.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw_paging_block.i, align 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %fw_paging_size.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 7, i32 %inc, i32 2
  %10 = ptrtoint ptr %fw_paging_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fw_paging_size.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %inc) #19
  %13 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %12, ptr %13, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %11) #19
  %16 = ptrtoint ptr %range_ptr to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %range_ptr, align 1
  %17 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fwrt, align 8
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 8
  tail call void @dma_sync_single_for_cpu(ptr noundef %20, i32 noundef %9, i32 noundef %11, i32 noundef 0) #19
  %data.i = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 2
  %call.i = tail call ptr @page_address(ptr noundef %7) #19
  %21 = call ptr @memcpy(ptr %data.i, ptr %call.i, i32 %11)
  %22 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fwrt, align 8
  %dev6.i = getelementptr inbounds %struct.iwl_trans, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev6.i, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %25, i32 noundef %9, i32 noundef %11, i32 noundef 0) #19
  %26 = ptrtoint ptr %range_ptr to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %range_ptr, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %paging = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 33, i32 2
  %29 = ptrtoint ptr %paging to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %paging, align 8
  %size = getelementptr %struct.iwl_dram_data, ptr %30, i32 %inc, i32 2
  %31 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %inc)
  %34 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %33, ptr %34, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %32)
  %37 = ptrtoint ptr %range_ptr to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %range_ptr, align 1
  %data = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 2
  %38 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fwrt, align 8
  %paging4 = getelementptr inbounds %struct.iwl_trans, ptr %39, i32 0, i32 33, i32 2
  %40 = ptrtoint ptr %paging4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %paging4, align 8
  %block = getelementptr %struct.iwl_dram_data, ptr %41, i32 %inc, i32 1
  %42 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %block, align 4
  %44 = call ptr @memcpy(ptr %data, ptr %43, i32 %32)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0.in = phi i32 [ %32, %if.end ], [ %28, %if.then ]
  %retval.0 = add i32 %retval.0.in, 12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dump_ini_csr_iter(ptr nocapture noundef readonly %fwrt, ptr nocapture noundef readonly %reg_data, ptr nocapture noundef %range_ptr, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %addrs = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 9
  %arrayidx = getelementptr [0 x i32], ptr %addrs, i32 0, i32 %idx
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %arrayidx, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 7
  %offset = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 7, i32 1
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %offset, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %add = add i32 %8, %4
  %9 = tail call i32 @llvm.bswap.i32(i32 %add)
  %10 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %9, ptr %10, align 1
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %5, align 1
  %14 = ptrtoint ptr %range_ptr to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %range_ptr, align 1
  %15 = load i32, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp17.not = icmp eq i32 %15, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %data1 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.019 = phi i32 [ %add5, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %val.018 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %data1, %for.body.preheader ]
  %16 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fwrt, align 8
  %add4 = add i32 %i.019, %add
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %19, i32 0, i32 23
  %20 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %21(ptr noundef %17, i32 noundef %add4) #19
  %22 = tail call i32 @llvm.bswap.i32(i32 %call.i)
  %incdec.ptr = getelementptr i32, ptr %val.018, i32 1
  %23 = ptrtoint ptr %val.018 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %val.018, align 4
  %add5 = add i32 %i.019, 4
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %5, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %cmp = icmp ult i32 %add5, %26
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %27 = ptrtoint ptr %range_ptr to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %range_ptr, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %add7 = add i32 %29, 12
  ret i32 %add7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dump_ini_config_iter(ptr nocapture noundef readonly %fwrt, ptr nocapture noundef readonly %reg_data, ptr nocapture noundef %range_ptr, i32 noundef %idx) #0 align 64 {
entry:
  %tmp44 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwrt, align 8
  %2 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_data, align 4
  %addrs = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %3, i32 9
  %arrayidx = getelementptr [0 x i32], ptr %addrs, i32 0, i32 %idx
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %arrayidx, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %3, i32 7
  %offset = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %3, i32 7, i32 1
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %offset, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %add = add i32 %10, %6
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %read_config32 = getelementptr inbounds %struct.iwl_trans_ops, ptr %12, i32 0, i32 28
  %13 = ptrtoint ptr %read_config32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_config32, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %land.rhs, label %if.end42

land.rhs:                                         ; preds = %entry
  %.b75 = load i1, ptr @iwl_dump_ini_config_iter.__already_done, align 1
  br i1 %.b75, label %land.rhs.cleanup55_crit_edge, label %if.then, !prof !99

land.rhs.cleanup55_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup55

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @iwl_dump_ini_config_iter.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1135, i32 noundef 9, ptr noundef null) #19
  br label %cleanup55

if.end42:                                         ; preds = %entry
  %15 = tail call i32 @llvm.bswap.i32(i32 %add)
  %16 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %15, ptr %16, align 1
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %7, align 1
  %20 = ptrtoint ptr %range_ptr to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %range_ptr, align 1
  %21 = load i32, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp79.not = icmp eq i32 %21, 0
  br i1 %cmp79.not, label %if.end42.for.end_crit_edge, label %for.body.preheader

if.end42.for.end_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.preheader:                               ; preds = %if.end42
  %data2 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.081 = phi i32 [ %add52, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %val.080 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %data2, %for.body.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp44) #19
  %22 = ptrtoint ptr %tmp44 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %tmp44, align 4, !annotation !100
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %read_config3246 = getelementptr inbounds %struct.iwl_trans_ops, ptr %24, i32 0, i32 28
  %25 = ptrtoint ptr %read_config3246 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_config3246, align 4
  %add47 = add i32 %i.081, %add
  %call = call i32 %26(ptr noundef %1, i32 noundef %add47, ptr noundef nonnull %tmp44) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp48 = icmp slt i32 %call, 0
  br i1 %cmp48, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp44) #19
  br label %cleanup55

for.inc:                                          ; preds = %for.body
  %27 = ptrtoint ptr %tmp44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tmp44, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %incdec.ptr = getelementptr i32, ptr %val.080, i32 1
  %30 = ptrtoint ptr %val.080 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %val.080, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp44) #19
  %add52 = add i32 %i.081, 4
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %7, align 1
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  %cmp = icmp ult i32 %add52, %33
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end42.for.end_crit_edge
  %34 = ptrtoint ptr %range_ptr to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %range_ptr, align 1
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  %add54 = add i32 %36, 12
  br label %cleanup55

cleanup55:                                        ; preds = %for.end, %cleanup.thread, %if.then, %land.rhs.cleanup55_crit_edge
  %retval.2 = phi i32 [ %add54, %for.end ], [ -95, %if.then ], [ -95, %land.rhs.cleanup55_crit_edge ], [ %call, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iwl_dump_ini_special_mem_get_size(ptr nocapture noundef readnone %fwrt, ptr nocapture noundef readonly %reg_data) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %size1 = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 8
  %2 = ptrtoint ptr %size1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %size1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %add = add i32 %4, 64
  %size.0 = select i1 %tobool.not, i32 0, i32 %add
  ret i32 %size.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @iwl_dump_ini_special_mem_fill_header(ptr nocapture noundef readnone %fwrt, ptr nocapture noundef readonly %reg_data, ptr noundef writeonly %data) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 16777216, ptr %data, align 1
  %3 = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %3, align 1
  %type2 = getelementptr inbounds %struct.iwl_fw_ini_special_device_memory, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %type2 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %type2, align 1
  %version3 = getelementptr inbounds %struct.iwl_fw_ini_region_special_device_memory, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %version3 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %version3, align 1
  %version4 = getelementptr inbounds %struct.iwl_fw_ini_special_device_memory, ptr %data, i32 0, i32 2
  %9 = ptrtoint ptr %version4 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %version4, align 1
  %data5 = getelementptr inbounds %struct.iwl_fw_ini_special_device_memory, ptr %data, i32 0, i32 3
  ret ptr %data5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dump_ini_special_mem_iter(ptr nocapture noundef readonly %fwrt, ptr nocapture noundef readonly %reg_data, ptr noundef %range_ptr, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %base_addr = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 7, i32 1
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %base_addr, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %offset = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 8, i32 1
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %offset, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %add = add i32 %7, %4
  %8 = tail call i32 @llvm.bswap.i32(i32 %add)
  %9 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %8, ptr %9, align 1
  %size = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 8
  %11 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %size, align 1
  %13 = ptrtoint ptr %range_ptr to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %range_ptr, align 1
  %14 = load i32, ptr %size, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fwrt, align 8
  %data6 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 2
  %div22 = lshr i32 %15, 2
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %read_mem.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %19, i32 0, i32 26
  %20 = ptrtoint ptr %read_mem.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_mem.i, align 4
  %call.i = tail call i32 %21(ptr noundef %17, i32 noundef %add, ptr noundef %data6, i32 noundef %div22) #19
  %22 = ptrtoint ptr %range_ptr to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %range_ptr, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %add12 = add i32 %24, 12
  ret i32 %add12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dump_ini_dbgi_sram_iter(ptr nocapture noundef readonly %fwrt, ptr nocapture noundef readonly %reg_data, ptr nocapture noundef %range_ptr, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %2 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwrt, align 8
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %grab_nic_access = getelementptr inbounds %struct.iwl_trans_ops, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %grab_nic_access to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %grab_nic_access, align 4
  %call = tail call zeroext i1 %7(ptr noundef %3) #19
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge, !prof !99

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 7
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %8, align 1
  %11 = ptrtoint ptr %range_ptr to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %range_ptr, align 1
  %12 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fwrt, align 8
  tail call void @iwl_write_prph_no_grab(ptr noundef %13, i32 noundef 10674508, i32 noundef 65536) #19
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %8, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp35.not = icmp ult i32 %16, 4
  br i1 %cmp35.not, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %data1 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, ptr %range_ptr, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %for.body.preheader
  %i.037 = phi i32 [ %inc, %if.end13.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %val.036 = phi ptr [ %incdec.ptr, %if.end13.for.body_crit_edge ], [ %data1, %for.body.preheader ]
  %17 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fwrt, align 8
  %19 = and i32 %i.037, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool8.not = icmp eq i32 %19, 0
  %cond = select i1 %tobool8.not, i32 10674516, i32 10674520
  %call9 = tail call i32 @iwl_read_prph_no_grab(ptr noundef %18, i32 noundef %cond) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515870810, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 1515870810
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %20 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fwrt, align 8
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %release_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %23, i32 0, i32 33
  %24 = ptrtoint ptr %release_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %release_nic_access.i, align 4
  tail call void %25(ptr noundef %21) #19
  br label %cleanup

if.end13:                                         ; preds = %for.body
  %26 = tail call i32 @llvm.bswap.i32(i32 %call9)
  %incdec.ptr = getelementptr i32, ptr %val.036, i32 1
  %27 = ptrtoint ptr %val.036 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %val.036, align 4
  %inc = add nuw nsw i32 %i.037, 1
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %8, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %div31 = lshr i32 %30, 2
  %cmp = icmp ult i32 %inc, %div31
  br i1 %cmp, label %if.end13.for.body_crit_edge, label %if.end13.for.end_crit_edge

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %if.end13.for.end_crit_edge, %if.end.for.end_crit_edge
  %31 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fwrt, align 8
  %ops.i32 = getelementptr inbounds %struct.iwl_trans, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %ops.i32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i32, align 4
  %release_nic_access.i33 = getelementptr inbounds %struct.iwl_trans_ops, ptr %34, i32 0, i32 33
  %35 = ptrtoint ptr %release_nic_access.i33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %release_nic_access.i33, align 4
  tail call void %36(ptr noundef %32) #19
  %37 = ptrtoint ptr %range_ptr to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %range_ptr, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %add = add i32 %39, 12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then11 ], [ %add, %for.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @iwl_dump_ini_mon_fill_header(ptr nocapture noundef readonly %fwrt, ptr nocapture noundef readonly %reg_data, ptr noundef writeonly %data, ptr noundef readonly %addrs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %2 = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 7
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %2, align 1
  %5 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fwrt, align 8
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %grab_nic_access = getelementptr inbounds %struct.iwl_trans_ops, ptr %8, i32 0, i32 32
  %9 = ptrtoint ptr %grab_nic_access to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %grab_nic_access, align 4
  %call = tail call zeroext i1 %10(ptr noundef %6) #19
  br i1 %call, label %if.end, label %do.end, !prof !99

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %dev = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %12, i32 noundef 0, ptr noundef nonnull @.str.17) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = tail call i32 @llvm.bswap.i32(i32 %4)
  %sub.i = shl i32 %13, 8
  %mul.i = add i32 %sub.i, -256
  %tobool.not.i = icmp eq ptr %addrs, null
  br i1 %tobool.not.i, label %if.end.iwl_get_mon_reg.exit_crit_edge, label %lor.lhs.false.i

if.end.iwl_get_mon_reg.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_get_mon_reg.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %14 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not.i = icmp eq i32 %15, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.iwl_get_mon_reg.exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.iwl_get_mon_reg.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_get_mon_reg.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %mask.i = getelementptr inbounds %struct.iwl_fw_mon_reg, ptr %addrs, i32 0, i32 1
  %16 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not.i = icmp eq i32 %17, 0
  br i1 %tobool3.not.i, label %lor.lhs.false2.i.iwl_get_mon_reg.exit_crit_edge, label %if.end.i

lor.lhs.false2.i.iwl_get_mon_reg.exit_crit_edge:  ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_get_mon_reg.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #21
  %18 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fwrt, align 8
  %add.i = add i32 %15, %mul.i
  %call.i = tail call i32 @iwl_read_prph_no_grab(ptr noundef %19, i32 noundef %add.i) #19
  %20 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mask.i, align 4
  %and.i.i = and i32 %21, %call.i
  %22 = tail call i32 @llvm.cttz.i32(i32 %21, i1 true) #19, !range !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %iszero.i.i = icmp eq i32 %21, 0
  %sub.i.i = select i1 %iszero.i.i, i32 -1, i32 %22
  %shr.i.i = lshr i32 %and.i.i, %sub.i.i
  %23 = tail call i32 @llvm.bswap.i32(i32 %shr.i.i) #19
  br label %iwl_get_mon_reg.exit

iwl_get_mon_reg.exit:                             ; preds = %if.end.i, %lor.lhs.false2.i.iwl_get_mon_reg.exit_crit_edge, %lor.lhs.false.i.iwl_get_mon_reg.exit_crit_edge, %if.end.iwl_get_mon_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %23, %if.end.i ], [ 0, %lor.lhs.false2.i.iwl_get_mon_reg.exit_crit_edge ], [ 0, %lor.lhs.false.i.iwl_get_mon_reg.exit_crit_edge ], [ 0, %if.end.iwl_get_mon_reg.exit_crit_edge ]
  %write_ptr8 = getelementptr inbounds %struct.iwl_fw_ini_monitor_dump, ptr %data, i32 0, i32 1
  %24 = ptrtoint ptr %write_ptr8 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %retval.0.i, ptr %write_ptr8, align 1
  %25 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fwrt, align 8
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %30)
  %cmp = icmp ugt i32 %30, 18
  br i1 %cmp, label %if.then10, label %iwl_get_mon_reg.exit.if.end13_crit_edge

iwl_get_mon_reg.exit.if.end13_crit_edge:          ; preds = %iwl_get_mon_reg.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13

if.then10:                                        ; preds = %iwl_get_mon_reg.exit
  call void @__sanitizer_cov_trace_pc() #21
  %31 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %shr = lshr i32 %31, 2
  %32 = tail call i32 @llvm.bswap.i32(i32 %shr)
  %33 = ptrtoint ptr %write_ptr8 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %write_ptr8, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %iwl_get_mon_reg.exit.if.end13_crit_edge
  %cycle_cnt = getelementptr inbounds %struct.iwl_fw_mon_regs, ptr %addrs, i32 0, i32 1
  %tobool.not.i41 = icmp eq ptr %cycle_cnt, null
  br i1 %tobool.not.i41, label %if.end13.iwl_get_mon_reg.exit55_crit_edge, label %lor.lhs.false.i43

if.end13.iwl_get_mon_reg.exit55_crit_edge:        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_get_mon_reg.exit55

lor.lhs.false.i43:                                ; preds = %if.end13
  %34 = ptrtoint ptr %cycle_cnt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cycle_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool1.not.i42 = icmp eq i32 %35, 0
  br i1 %tobool1.not.i42, label %lor.lhs.false.i43.iwl_get_mon_reg.exit55_crit_edge, label %lor.lhs.false2.i46

lor.lhs.false.i43.iwl_get_mon_reg.exit55_crit_edge: ; preds = %lor.lhs.false.i43
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_get_mon_reg.exit55

lor.lhs.false2.i46:                               ; preds = %lor.lhs.false.i43
  %mask.i44 = getelementptr inbounds %struct.iwl_fw_mon_regs, ptr %addrs, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %mask.i44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mask.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool3.not.i45 = icmp eq i32 %37, 0
  br i1 %tobool3.not.i45, label %lor.lhs.false2.i46.iwl_get_mon_reg.exit55_crit_edge, label %if.end.i53

lor.lhs.false2.i46.iwl_get_mon_reg.exit55_crit_edge: ; preds = %lor.lhs.false2.i46
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_get_mon_reg.exit55

if.end.i53:                                       ; preds = %lor.lhs.false2.i46
  call void @__sanitizer_cov_trace_pc() #21
  %38 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fwrt, align 8
  %add.i47 = add i32 %35, %mul.i
  %call.i48 = tail call i32 @iwl_read_prph_no_grab(ptr noundef %39, i32 noundef %add.i47) #19
  %40 = ptrtoint ptr %mask.i44 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mask.i44, align 4
  %and.i.i49 = and i32 %41, %call.i48
  %42 = tail call i32 @llvm.cttz.i32(i32 %41, i1 true) #19, !range !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %iszero.i.i50 = icmp eq i32 %41, 0
  %sub.i.i51 = select i1 %iszero.i.i50, i32 -1, i32 %42
  %shr.i.i52 = lshr i32 %and.i.i49, %sub.i.i51
  %43 = tail call i32 @llvm.bswap.i32(i32 %shr.i.i52) #19
  br label %iwl_get_mon_reg.exit55

iwl_get_mon_reg.exit55:                           ; preds = %if.end.i53, %lor.lhs.false2.i46.iwl_get_mon_reg.exit55_crit_edge, %lor.lhs.false.i43.iwl_get_mon_reg.exit55_crit_edge, %if.end13.iwl_get_mon_reg.exit55_crit_edge
  %retval.0.i54 = phi i32 [ %43, %if.end.i53 ], [ 0, %lor.lhs.false2.i46.iwl_get_mon_reg.exit55_crit_edge ], [ 0, %lor.lhs.false.i43.iwl_get_mon_reg.exit55_crit_edge ], [ 0, %if.end13.iwl_get_mon_reg.exit55_crit_edge ]
  %cycle_cnt15 = getelementptr inbounds %struct.iwl_fw_ini_monitor_dump, ptr %data, i32 0, i32 2
  %44 = ptrtoint ptr %cycle_cnt15 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %retval.0.i54, ptr %cycle_cnt15, align 1
  %cur_frag = getelementptr inbounds %struct.iwl_fw_mon_regs, ptr %addrs, i32 0, i32 2
  %tobool.not.i58 = icmp eq ptr %cur_frag, null
  br i1 %tobool.not.i58, label %iwl_get_mon_reg.exit55.iwl_get_mon_reg.exit72_crit_edge, label %lor.lhs.false.i60

iwl_get_mon_reg.exit55.iwl_get_mon_reg.exit72_crit_edge: ; preds = %iwl_get_mon_reg.exit55
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_get_mon_reg.exit72

lor.lhs.false.i60:                                ; preds = %iwl_get_mon_reg.exit55
  %45 = ptrtoint ptr %cur_frag to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cur_frag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool1.not.i59 = icmp eq i32 %46, 0
  br i1 %tobool1.not.i59, label %lor.lhs.false.i60.iwl_get_mon_reg.exit72_crit_edge, label %lor.lhs.false2.i63

lor.lhs.false.i60.iwl_get_mon_reg.exit72_crit_edge: ; preds = %lor.lhs.false.i60
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_get_mon_reg.exit72

lor.lhs.false2.i63:                               ; preds = %lor.lhs.false.i60
  %mask.i61 = getelementptr inbounds %struct.iwl_fw_mon_regs, ptr %addrs, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %mask.i61 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mask.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool3.not.i62 = icmp eq i32 %48, 0
  br i1 %tobool3.not.i62, label %lor.lhs.false2.i63.iwl_get_mon_reg.exit72_crit_edge, label %if.end.i70

lor.lhs.false2.i63.iwl_get_mon_reg.exit72_crit_edge: ; preds = %lor.lhs.false2.i63
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_get_mon_reg.exit72

if.end.i70:                                       ; preds = %lor.lhs.false2.i63
  call void @__sanitizer_cov_trace_pc() #21
  %49 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fwrt, align 8
  %add.i64 = add i32 %46, %mul.i
  %call.i65 = tail call i32 @iwl_read_prph_no_grab(ptr noundef %50, i32 noundef %add.i64) #19
  %51 = ptrtoint ptr %mask.i61 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mask.i61, align 4
  %and.i.i66 = and i32 %52, %call.i65
  %53 = tail call i32 @llvm.cttz.i32(i32 %52, i1 true) #19, !range !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %iszero.i.i67 = icmp eq i32 %52, 0
  %sub.i.i68 = select i1 %iszero.i.i67, i32 -1, i32 %53
  %shr.i.i69 = lshr i32 %and.i.i66, %sub.i.i68
  %54 = tail call i32 @llvm.bswap.i32(i32 %shr.i.i69) #19
  br label %iwl_get_mon_reg.exit72

iwl_get_mon_reg.exit72:                           ; preds = %if.end.i70, %lor.lhs.false2.i63.iwl_get_mon_reg.exit72_crit_edge, %lor.lhs.false.i60.iwl_get_mon_reg.exit72_crit_edge, %iwl_get_mon_reg.exit55.iwl_get_mon_reg.exit72_crit_edge
  %retval.0.i71 = phi i32 [ %54, %if.end.i70 ], [ 0, %lor.lhs.false2.i63.iwl_get_mon_reg.exit72_crit_edge ], [ 0, %lor.lhs.false.i60.iwl_get_mon_reg.exit72_crit_edge ], [ 0, %iwl_get_mon_reg.exit55.iwl_get_mon_reg.exit72_crit_edge ]
  %cur_frag17 = getelementptr inbounds %struct.iwl_fw_ini_monitor_dump, ptr %data, i32 0, i32 3
  %55 = ptrtoint ptr %cur_frag17 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %retval.0.i71, ptr %cur_frag17, align 1
  %56 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fwrt, align 8
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i, align 4
  %release_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %59, i32 0, i32 33
  %60 = ptrtoint ptr %release_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %release_nic_access.i, align 4
  tail call void %61(ptr noundef %57) #19
  %62 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 16777216, ptr %data, align 1
  %data19 = getelementptr inbounds %struct.iwl_fw_ini_monitor_dump, ptr %data, i32 0, i32 4
  br label %cleanup

cleanup:                                          ; preds = %iwl_get_mon_reg.exit72, %do.end
  %retval.0 = phi ptr [ %data19, %iwl_get_mon_reg.exit72 ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read_prph_no_grab(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @iwl_ini_txf_iter(ptr nocapture noundef %fwrt, ptr nocapture noundef readonly %reg_data, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %txf_iter_data = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 7
  %smem_cfg = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11
  %num_txfifo_entries = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %num_txfifo_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_txfifo_entries, align 4
  %4 = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 7
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %4, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %tobool.not = icmp eq i32 %idx, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end12

if.then:                                          ; preds = %entry
  %offset = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 8, i32 1
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %offset, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %11 = ptrtoint ptr %smem_cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %smem_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  %dev = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %14, i32 noundef 0, ptr noundef nonnull @.str.18, i32 noundef %10) #19
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %internal_txf = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 7, i32 3
  %15 = ptrtoint ptr %internal_txf to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %internal_txf, align 4
  %fifo_size = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 7, i32 2
  %16 = ptrtoint ptr %fifo_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %fifo_size, align 4
  %17 = ptrtoint ptr %txf_iter_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %txf_iter_data, align 4
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %offset, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool8.not = icmp ne i32 %19, 0
  %lmac10 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 7, i32 1
  %. = zext i1 %tobool8.not to i32
  %20 = ptrtoint ptr %lmac10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %., ptr %lmac10, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end, %entry.if.end12_crit_edge
  %internal_txf13 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 7, i32 3
  %21 = ptrtoint ptr %internal_txf13 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %internal_txf13, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool14.not = icmp eq i8 %22, 0
  br i1 %tobool14.not, label %for.cond.preheader, label %if.end12.if.end35_crit_edge

if.end12.if.end35_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end35

for.cond.preheader:                               ; preds = %if.end12
  %23 = ptrtoint ptr %txf_iter_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %storemerge.in105 = load i32, ptr %txf_iter_data, align 4
  %storemerge106 = add i32 %storemerge.in105, 1
  store i32 %storemerge106, ptr %txf_iter_data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge106, i32 %3)
  %cmp18107 = icmp slt i32 %storemerge106, %3
  br i1 %cmp18107, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %lmac20 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 7, i32 1
  %24 = ptrtoint ptr %lmac20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lmac20, align 4
  %arrayidx21 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 %25
  %fifo_size24 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 7, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %storemerge108 = phi i32 [ %storemerge106, %for.body.lr.ph ], [ %storemerge, %for.inc.for.body_crit_edge ]
  %arrayidx23 = getelementptr [15 x i32], ptr %arrayidx21, i32 0, i32 %storemerge108
  %26 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx23, align 4
  %28 = ptrtoint ptr %fifo_size24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %fifo_size24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool26.not = icmp eq i32 %27, 0
  br i1 %tobool26.not, label %for.body.for.inc_crit_edge, label %land.lhs.true27

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

land.lhs.true27:                                  ; preds = %for.body
  %shl = shl nuw i32 1, %storemerge108
  %and = and i32 %shl, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %land.lhs.true27.for.inc_crit_edge, label %land.lhs.true27.cleanup_crit_edge

land.lhs.true27.cleanup_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true27.for.inc_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true27.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %29 = ptrtoint ptr %txf_iter_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %storemerge.in = load i32, ptr %txf_iter_data, align 4
  %storemerge = add i32 %storemerge.in, 1
  store i32 %storemerge, ptr %txf_iter_data, align 4
  %cmp18 = icmp slt i32 %storemerge, %3
  br i1 %cmp18, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %storemerge.in.lcssa = phi i32 [ %storemerge.in105, %for.cond.preheader.for.end_crit_edge ], [ %storemerge.in, %for.inc.for.end_crit_edge ]
  %30 = ptrtoint ptr %txf_iter_data to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %storemerge.in.lcssa, ptr %txf_iter_data, align 4
  br label %if.end35

if.end35:                                         ; preds = %for.end, %if.end12.if.end35_crit_edge
  %31 = ptrtoint ptr %internal_txf13 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %internal_txf13, align 4
  %fw = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 1
  %32 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fw, align 4
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %33, i32 0, i32 5, i32 8, i32 2
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %arrayidx.i.i, align 4
  %36 = and i32 %35, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.i.not = icmp eq i32 %36, 0
  br i1 %tobool.i.not, label %if.end35.cleanup_crit_edge, label %for.cond41.preheader

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.cond41.preheader:                             ; preds = %if.end35
  %add = add i32 %3, 6
  %37 = ptrtoint ptr %txf_iter_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %storemerge102.in109 = load i32, ptr %txf_iter_data, align 4
  %storemerge102110 = add i32 %storemerge102.in109, 1
  store i32 %storemerge102110, ptr %txf_iter_data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge102110, i32 %add)
  %cmp43111 = icmp slt i32 %storemerge102110, %add
  br i1 %cmp43111, label %for.body44.lr.ph, label %for.cond41.preheader.cleanup_crit_edge

for.cond41.preheader.cleanup_crit_edge:           ; preds = %for.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body44.lr.ph:                                 ; preds = %for.cond41.preheader
  %fifo_size47 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 7, i32 2
  br label %for.body44

for.body44:                                       ; preds = %for.inc57.for.body44_crit_edge, %for.body44.lr.ph
  %storemerge102112 = phi i32 [ %storemerge102110, %for.body44.lr.ph ], [ %storemerge102, %for.inc57.for.body44_crit_edge ]
  %sub = sub i32 %storemerge102112, %3
  %arrayidx46 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 6, i32 %sub
  %38 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx46, align 4
  %40 = ptrtoint ptr %fifo_size47 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %fifo_size47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool49.not = icmp eq i32 %39, 0
  br i1 %tobool49.not, label %for.body44.for.inc57_crit_edge, label %land.lhs.true50

for.body44.for.inc57_crit_edge:                   ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc57

land.lhs.true50:                                  ; preds = %for.body44
  %shl52 = shl nuw i32 1, %storemerge102112
  %and53 = and i32 %shl52, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %land.lhs.true50.for.inc57_crit_edge, label %land.lhs.true50.cleanup_crit_edge

land.lhs.true50.cleanup_crit_edge:                ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true50.for.inc57_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc57

for.inc57:                                        ; preds = %land.lhs.true50.for.inc57_crit_edge, %for.body44.for.inc57_crit_edge
  %41 = ptrtoint ptr %txf_iter_data to i32
  call void @__asan_load4_noabort(i32 %41)
  %storemerge102.in = load i32, ptr %txf_iter_data, align 4
  %storemerge102 = add i32 %storemerge102.in, 1
  store i32 %storemerge102, ptr %txf_iter_data, align 4
  %cmp43 = icmp slt i32 %storemerge102, %add
  br i1 %cmp43, label %for.inc57.for.body44_crit_edge, label %for.inc57.cleanup_crit_edge

for.inc57.cleanup_crit_edge:                      ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.inc57.for.body44_crit_edge:                   ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body44

cleanup:                                          ; preds = %for.inc57.cleanup_crit_edge, %land.lhs.true50.cleanup_crit_edge, %for.cond41.preheader.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %land.lhs.true27.cleanup_crit_edge, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ false, %if.end35.cleanup_crit_edge ], [ false, %for.cond41.preheader.cleanup_crit_edge ], [ true, %land.lhs.true50.cleanup_crit_edge ], [ false, %for.inc57.cleanup_crit_edge ], [ true, %land.lhs.true27.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write_prph_no_grab(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_ini_get_rxf_data(ptr nocapture noundef readonly %fwrt, ptr nocapture noundef readonly %reg_data, ptr noundef writeonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %2 = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %1, i32 7
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %2, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %arrayidx4 = getelementptr %struct.iwl_ucode_tlv, ptr %1, i32 7, i32 1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %arrayidx4, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup197_crit_edge, label %cond.false.i

entry.cleanup197_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup197

cond.false.i:                                     ; preds = %entry
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %5) #19
  %call.i.i337 = tail call i32 @__sw_hweight32(i32 noundef %8) #19
  %add = add i32 %call.i.i337, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp.not = icmp eq i32 %add, 1
  br i1 %cmp.not, label %if.end45, label %land.rhs

land.rhs:                                         ; preds = %cond.false.i
  %.b239 = load i1, ptr @iwl_ini_get_rxf_data.__already_done, align 1
  br i1 %.b239, label %land.rhs.cleanup197_crit_edge, label %if.then13, !prof !99

land.rhs.cleanup197_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup197

if.then13:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @iwl_ini_get_rxf_data.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1396, i32 noundef 9, ptr noundef nonnull @.str.20, i32 noundef %5, i32 noundef %8) #19
  br label %cleanup197

if.end45:                                         ; preds = %cond.false.i
  %9 = call ptr @memset(ptr %data, i32 0, i32 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool46.not = icmp eq i32 %4, 0
  br i1 %tobool46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %if.end45
  %10 = tail call i32 @llvm.cttz.i32(i32 %5, i1 true), !range !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp50 = icmp ugt i32 %10, 1
  br i1 %cmp50, label %land.rhs59, label %if.end108

land.rhs59:                                       ; preds = %if.then47
  %.b235238 = load i1, ptr @iwl_ini_get_rxf_data.__already_done.21, align 1
  br i1 %.b235238, label %land.rhs59.cleanup197_crit_edge, label %if.then70, !prof !99

land.rhs59.cleanup197_crit_edge:                  ; preds = %land.rhs59
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup197

if.then70:                                        ; preds = %land.rhs59
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @iwl_ini_get_rxf_data.__already_done.21, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1404, i32 noundef 9, ptr noundef nonnull @.str.22, i32 noundef %10) #19
  br label %cleanup197

if.end108:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #21
  %rxfifo1_size = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 %10, i32 1
  %11 = ptrtoint ptr %rxfifo1_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rxfifo1_size, align 4
  %size = getelementptr inbounds %struct.iwl_ini_rxf_data, ptr %data, i32 0, i32 1
  %13 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %size, align 4
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %10, ptr %data, align 4
  br label %cleanup197

if.else:                                          ; preds = %if.end45
  %15 = tail call i32 @llvm.cttz.i32(i32 %8, i1 true), !range !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %iszero111 = icmp eq i32 %7, 0
  %fw = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 1
  %16 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw, align 4
  %call115 = tail call zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef %17, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 0) #19
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %call115)
  %cmp117 = icmp ugt i8 %call115, 3
  %. = zext i1 %cmp117 to i32
  %conv123 = select i1 %iszero111, i32 255, i32 %15
  call void @__sanitizer_cov_trace_cmp4(i32 %conv123, i32 %.)
  %cmp125 = icmp ugt i32 %conv123, %.
  br i1 %cmp125, label %land.rhs134, label %if.end183

land.rhs134:                                      ; preds = %if.else
  %.b236237 = load i1, ptr @iwl_ini_get_rxf_data.__already_done.23, align 1
  br i1 %.b236237, label %land.rhs134.cleanup197_crit_edge, label %if.then145, !prof !99

land.rhs134.cleanup197_crit_edge:                 ; preds = %land.rhs134
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup197

if.then145:                                       ; preds = %land.rhs134
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @iwl_ini_get_rxf_data.__already_done.23, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1420, i32 noundef 9, ptr noundef nonnull @.str.24, i32 noundef %conv123) #19
  br label %cleanup197

if.end183:                                        ; preds = %if.else
  %or = or i32 %conv123, -2147483648
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %data, align 4
  %trunc = trunc i32 %conv123 to i8
  %19 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %if.end183.cleanup197_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb190
  ]

if.end183.cleanup197_crit_edge:                   ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup197

sw.bb:                                            ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #21
  %rxfifo2_size = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 3
  %20 = ptrtoint ptr %rxfifo2_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rxfifo2_size, align 4
  %size188 = getelementptr inbounds %struct.iwl_ini_rxf_data, ptr %data, i32 0, i32 1
  %22 = ptrtoint ptr %size188 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %size188, align 4
  %23 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fwrt, align 8
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trans_cfg.i, align 4
  %umac_prph_offset.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %umac_prph_offset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %umac_prph_offset.i, align 4
  %add.i341 = add i32 %28, 512
  %offset = getelementptr inbounds %struct.iwl_ini_rxf_data, ptr %data, i32 0, i32 2
  %29 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add.i341, ptr %offset, align 4
  br label %cleanup197

sw.bb190:                                         ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #21
  %rxfifo2_control_size = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 4
  %30 = ptrtoint ptr %rxfifo2_control_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rxfifo2_control_size, align 4
  %size192 = getelementptr inbounds %struct.iwl_ini_rxf_data, ptr %data, i32 0, i32 1
  %32 = ptrtoint ptr %size192 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %size192, align 4
  %33 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fwrt, align 8
  %trans_cfg.i342 = getelementptr inbounds %struct.iwl_trans, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %trans_cfg.i342 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %trans_cfg.i342, align 4
  %umac_prph_offset.i343 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %umac_prph_offset.i343 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %umac_prph_offset.i343, align 4
  %add.i344 = add i32 %38, 19968
  %offset195 = getelementptr inbounds %struct.iwl_ini_rxf_data, ptr %data, i32 0, i32 2
  %39 = ptrtoint ptr %offset195 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add.i344, ptr %offset195, align 4
  br label %cleanup197

cleanup197:                                       ; preds = %sw.bb190, %sw.bb, %if.end183.cleanup197_crit_edge, %if.then145, %land.rhs134.cleanup197_crit_edge, %if.end108, %if.then70, %land.rhs59.cleanup197_crit_edge, %if.then13, %land.rhs.cleanup197_crit_edge, %entry.cleanup197_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read_prph(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #18

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_dump_prph(ptr nocapture noundef readonly %fwrt, ptr nocapture noundef readonly %iwl_prph_dump_addr, i32 noundef %range_len, ptr noundef %ptr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwrt, align 8
  %tobool.not = icmp eq ptr %ptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dump_prph, ptr noundef nonnull @.str.31) #19
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %grab_nic_access = getelementptr inbounds %struct.iwl_trans_ops, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %grab_nic_access to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %grab_nic_access, align 4
  %call = tail call zeroext i1 %7(ptr noundef %1) #19
  br i1 %call, label %for.cond.preheader, label %do.end.cleanup_crit_edge, !prof !99

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %range_len)
  %cmp50.not = icmp eq i32 %range_len, 0
  br i1 %cmp50.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body:                                         ; preds = %iwl_read_prph_block.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.051 = phi i32 [ %inc, %iwl_read_prph_block.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iwl_prph_range, ptr %iwl_prph_dump_addr, i32 %i.051
  %end = getelementptr %struct.iwl_prph_range, ptr %iwl_prph_dump_addr, i32 %i.051, i32 1
  %8 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ptr, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 100663296, ptr %13, align 1
  %sub = add i32 %9, 8
  %add10 = sub i32 %sub, %11
  %15 = tail call i32 @llvm.bswap.i32(i32 %add10)
  %16 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ptr, align 4
  %len = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %15, ptr %len, align 1
  %19 = load ptr, ptr %ptr, align 4
  %data11 = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %data11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %data11, align 4
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %26 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end, align 4
  %sub20 = sub i32 %27, %25
  %add21 = add i32 %sub20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add21)
  %cmp4.not.i = icmp eq i32 %add21, 0
  br i1 %cmp4.not.i, label %for.body.iwl_read_prph_block.exit_crit_edge, label %for.body.i.preheader

for.body.iwl_read_prph_block.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_read_prph_block.exit

for.body.i.preheader:                             ; preds = %for.body
  %data22 = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %19, i32 1, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.06.i = phi i32 [ %add1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %data.addr.05.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %data22, %for.body.i.preheader ]
  %add.i = add i32 %i.06.i, %25
  %call.i = tail call i32 @iwl_read_prph_no_grab(ptr noundef %1, i32 noundef %add.i) #19
  %28 = tail call i32 @llvm.bswap.i32(i32 %call.i) #19
  %incdec.ptr.i = getelementptr i32, ptr %data.addr.05.i, i32 1
  %29 = ptrtoint ptr %data.addr.05.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %data.addr.05.i, align 4
  %add1.i = add i32 %i.06.i, 4
  %cmp.i = icmp ult i32 %add1.i, %add21
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.iwl_read_prph_block.exit_crit_edge

for.body.i.iwl_read_prph_block.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %iwl_read_prph_block.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

iwl_read_prph_block.exit:                         ; preds = %for.body.i.iwl_read_prph_block.exit_crit_edge, %for.body.iwl_read_prph_block.exit_crit_edge
  %30 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ptr, align 4
  %data1.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %31, i32 0, i32 2
  %len.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %len.i, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #19
  %add.ptr.i = getelementptr i8, ptr %data1.i, i32 %34
  %35 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr.i, ptr %ptr, align 4
  %inc = add nuw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, %range_len
  br i1 %exitcond.not, label %iwl_read_prph_block.exit.for.end_crit_edge, label %iwl_read_prph_block.exit.for.body_crit_edge

iwl_read_prph_block.exit.for.body_crit_edge:      ; preds = %iwl_read_prph_block.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

iwl_read_prph_block.exit.for.end_crit_edge:       ; preds = %iwl_read_prph_block.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %iwl_read_prph_block.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %36 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops, align 4
  %release_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %37, i32 0, i32 33
  %38 = ptrtoint ptr %release_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %release_nic_access.i, align 4
  tail call void %39(ptr noundef %1) #19
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_fwrt_dump_rxf(ptr nocapture noundef readonly %fwrt, ptr nocapture noundef %dump_data, i32 noundef %size, i32 noundef %offset, i32 noundef %fifo_num) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dump_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dump_data, align 4
  %data1 = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 33554432, ptr %1, align 1
  %add = add i32 %size, 24
  %3 = tail call i32 @llvm.bswap.i32(i32 %add)
  %4 = ptrtoint ptr %dump_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dump_data, align 4
  %len = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %3, ptr %len, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %fifo_num)
  %8 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %data, align 1
  %9 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fwrt, align 8
  %add4 = add i32 %offset, 10488896
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %read_prph.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %12, i32 0, i32 24
  %13 = ptrtoint ptr %read_prph.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_prph.i, align 4
  %call.i = tail call i32 %14(ptr noundef %10, i32 noundef %add4) #19
  %15 = tail call i32 @llvm.bswap.i32(i32 %call.i)
  %available_bytes = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1, i32 1, i32 1
  %16 = ptrtoint ptr %available_bytes to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %available_bytes, align 1
  %17 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fwrt, align 8
  %add6 = add i32 %offset, 10488912
  %ops.i63 = getelementptr inbounds %struct.iwl_trans, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %ops.i63 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i63, align 4
  %read_prph.i64 = getelementptr inbounds %struct.iwl_trans_ops, ptr %20, i32 0, i32 24
  %21 = ptrtoint ptr %read_prph.i64 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_prph.i64, align 4
  %call.i65 = tail call i32 %22(ptr noundef %18, i32 noundef %add6) #19
  %23 = tail call i32 @llvm.bswap.i32(i32 %call.i65)
  %wr_ptr = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1, i32 2
  %24 = ptrtoint ptr %wr_ptr to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %wr_ptr, align 1
  %25 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fwrt, align 8
  %add9 = add i32 %offset, 10488916
  %ops.i66 = getelementptr inbounds %struct.iwl_trans, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %ops.i66 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i66, align 4
  %read_prph.i67 = getelementptr inbounds %struct.iwl_trans_ops, ptr %28, i32 0, i32 24
  %29 = ptrtoint ptr %read_prph.i67 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read_prph.i67, align 4
  %call.i68 = tail call i32 %30(ptr noundef %26, i32 noundef %add9) #19
  %31 = tail call i32 @llvm.bswap.i32(i32 %call.i68)
  %rd_ptr = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1, i32 2, i32 1
  %32 = ptrtoint ptr %rd_ptr to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %rd_ptr, align 1
  %33 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fwrt, align 8
  %add12 = add i32 %offset, 10488908
  %ops.i69 = getelementptr inbounds %struct.iwl_trans, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %ops.i69 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i69, align 4
  %read_prph.i70 = getelementptr inbounds %struct.iwl_trans_ops, ptr %36, i32 0, i32 24
  %37 = ptrtoint ptr %read_prph.i70 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_prph.i70, align 4
  %call.i71 = tail call i32 %38(ptr noundef %34, i32 noundef %add12) #19
  %39 = tail call i32 @llvm.bswap.i32(i32 %call.i71)
  %fence_ptr = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1, i32 3
  %40 = ptrtoint ptr %fence_ptr to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %fence_ptr, align 1
  %41 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fwrt, align 8
  %add15 = add i32 %offset, 10488852
  %ops.i72 = getelementptr inbounds %struct.iwl_trans, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %ops.i72 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i72, align 4
  %read_prph.i73 = getelementptr inbounds %struct.iwl_trans_ops, ptr %44, i32 0, i32 24
  %45 = ptrtoint ptr %read_prph.i73 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read_prph.i73, align 4
  %call.i74 = tail call i32 %46(ptr noundef %42, i32 noundef %add15) #19
  %47 = tail call i32 @llvm.bswap.i32(i32 %call.i74)
  %fence_mode = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1, i32 3, i32 1
  %48 = ptrtoint ptr %fence_mode to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %47, ptr %fence_mode, align 1
  %49 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fwrt, align 8
  %ops.i75 = getelementptr inbounds %struct.iwl_trans, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %ops.i75 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i75, align 4
  %write_prph.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %52, i32 0, i32 25
  %53 = ptrtoint ptr %write_prph.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write_prph.i, align 4
  tail call void %54(ptr noundef %50, i32 noundef %add15, i32 noundef 1) #19
  %55 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fwrt, align 8
  %add20 = add i32 %offset, 10488860
  %ops.i76 = getelementptr inbounds %struct.iwl_trans, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %ops.i76 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i76, align 4
  %write_prph.i77 = getelementptr inbounds %struct.iwl_trans_ops, ptr %58, i32 0, i32 25
  %59 = ptrtoint ptr %write_prph.i77 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write_prph.i77, align 4
  tail call void %60(ptr noundef %56, i32 noundef %add20, i32 noundef 1) #19
  %61 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fwrt, align 8
  %add22 = add i32 %offset, 10488848
  %ops.i78 = getelementptr inbounds %struct.iwl_trans, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %ops.i78 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops.i78, align 4
  %write_prph.i79 = getelementptr inbounds %struct.iwl_trans_ops, ptr %64, i32 0, i32 25
  %65 = ptrtoint ptr %write_prph.i79 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write_prph.i79, align 4
  tail call void %66(ptr noundef %62, i32 noundef %add22, i32 noundef 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp2383.not = icmp ult i32 %size, 4
  br i1 %cmp2383.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %div62 = lshr i32 %size, 2
  %add25 = add i32 %offset, 10488936
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.084 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %67 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fwrt, align 8
  %ops.i80 = getelementptr inbounds %struct.iwl_trans, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %ops.i80 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops.i80, align 4
  %read_prph.i81 = getelementptr inbounds %struct.iwl_trans_ops, ptr %70, i32 0, i32 24
  %71 = ptrtoint ptr %read_prph.i81 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read_prph.i81, align 4
  %call.i82 = tail call i32 %72(ptr noundef %68, i32 noundef %add25) #19
  %arrayidx = getelementptr i32, ptr %data1, i32 %i.084
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call.i82, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc, %div62
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %74 = ptrtoint ptr %dump_data to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dump_data, align 4
  %data1.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %75, i32 0, i32 2
  %len.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %len.i, align 1
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #19
  %add.ptr.i = getelementptr i8, ptr %data1.i, i32 %78
  %79 = ptrtoint ptr %dump_data to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %add.ptr.i, ptr %dump_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_fwrt_dump_txf(ptr nocapture noundef readonly %fwrt, ptr nocapture noundef %dump_data, i32 noundef %size, i32 noundef %offset, i32 noundef %fifo_num) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dump_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dump_data, align 4
  %data1 = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 117440512, ptr %1, align 1
  %add = add i32 %size, 24
  %3 = tail call i32 @llvm.bswap.i32(i32 %add)
  %4 = ptrtoint ptr %dump_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dump_data, align 4
  %len = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %3, ptr %len, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %fifo_num)
  %8 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %data, align 1
  %9 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fwrt, align 8
  %add4 = add i32 %offset, 10486840
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %read_prph.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %12, i32 0, i32 24
  %13 = ptrtoint ptr %read_prph.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_prph.i, align 4
  %call.i = tail call i32 %14(ptr noundef %10, i32 noundef %add4) #19
  %15 = tail call i32 @llvm.bswap.i32(i32 %call.i)
  %available_bytes = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1, i32 1, i32 1
  %16 = ptrtoint ptr %available_bytes to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %available_bytes, align 1
  %17 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fwrt, align 8
  %add6 = add i32 %offset, 10486804
  %ops.i74 = getelementptr inbounds %struct.iwl_trans, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %ops.i74 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i74, align 4
  %read_prph.i75 = getelementptr inbounds %struct.iwl_trans_ops, ptr %20, i32 0, i32 24
  %21 = ptrtoint ptr %read_prph.i75 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_prph.i75, align 4
  %call.i76 = tail call i32 %22(ptr noundef %18, i32 noundef %add6) #19
  %23 = tail call i32 @llvm.bswap.i32(i32 %call.i76)
  %wr_ptr = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1, i32 2
  %24 = ptrtoint ptr %wr_ptr to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %wr_ptr, align 1
  %25 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fwrt, align 8
  %add9 = add i32 %offset, 10486800
  %ops.i77 = getelementptr inbounds %struct.iwl_trans, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %ops.i77 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i77, align 4
  %read_prph.i78 = getelementptr inbounds %struct.iwl_trans_ops, ptr %28, i32 0, i32 24
  %29 = ptrtoint ptr %read_prph.i78 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read_prph.i78, align 4
  %call.i79 = tail call i32 %30(ptr noundef %26, i32 noundef %add9) #19
  %31 = tail call i32 @llvm.bswap.i32(i32 %call.i79)
  %rd_ptr = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1, i32 2, i32 1
  %32 = ptrtoint ptr %rd_ptr to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %rd_ptr, align 1
  %33 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fwrt, align 8
  %add12 = add i32 %offset, 10486808
  %ops.i80 = getelementptr inbounds %struct.iwl_trans, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %ops.i80 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i80, align 4
  %read_prph.i81 = getelementptr inbounds %struct.iwl_trans_ops, ptr %36, i32 0, i32 24
  %37 = ptrtoint ptr %read_prph.i81 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_prph.i81, align 4
  %call.i82 = tail call i32 %38(ptr noundef %34, i32 noundef %add12) #19
  %39 = tail call i32 @llvm.bswap.i32(i32 %call.i82)
  %fence_ptr = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1, i32 3
  %40 = ptrtoint ptr %fence_ptr to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %fence_ptr, align 1
  %41 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fwrt, align 8
  %add15 = add i32 %offset, 10486820
  %ops.i83 = getelementptr inbounds %struct.iwl_trans, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %ops.i83 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i83, align 4
  %read_prph.i84 = getelementptr inbounds %struct.iwl_trans_ops, ptr %44, i32 0, i32 24
  %45 = ptrtoint ptr %read_prph.i84 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read_prph.i84, align 4
  %call.i85 = tail call i32 %46(ptr noundef %42, i32 noundef %add15) #19
  %47 = tail call i32 @llvm.bswap.i32(i32 %call.i85)
  %fence_mode = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %1, i32 3, i32 1
  %48 = ptrtoint ptr %fence_mode to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %47, ptr %fence_mode, align 1
  %49 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fwrt, align 8
  %add18 = add i32 %offset, 10486860
  %ops.i86 = getelementptr inbounds %struct.iwl_trans, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %ops.i86 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i86, align 4
  %write_prph.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %52, i32 0, i32 25
  %53 = ptrtoint ptr %write_prph.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write_prph.i, align 4
  tail call void %54(ptr noundef %50, i32 noundef %add18, i32 noundef %add6) #19
  %55 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fwrt, align 8
  %add21 = add i32 %offset, 10486856
  %ops.i87 = getelementptr inbounds %struct.iwl_trans, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %ops.i87 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i87, align 4
  %read_prph.i88 = getelementptr inbounds %struct.iwl_trans_ops, ptr %58, i32 0, i32 24
  %59 = ptrtoint ptr %read_prph.i88 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read_prph.i88, align 4
  %call.i89 = tail call i32 %60(ptr noundef %56, i32 noundef %add21) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp2393.not = icmp ult i32 %size, 4
  br i1 %cmp2393.not, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %div73 = lshr i32 %size, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.094 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %61 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fwrt, align 8
  %ops.i90 = getelementptr inbounds %struct.iwl_trans, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %ops.i90 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops.i90, align 4
  %read_prph.i91 = getelementptr inbounds %struct.iwl_trans_ops, ptr %64, i32 0, i32 24
  %65 = ptrtoint ptr %read_prph.i91 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read_prph.i91, align 4
  %call.i92 = tail call i32 %66(ptr noundef %62, i32 noundef %add21) #19
  %arrayidx = getelementptr i32, ptr %data1, i32 %i.094
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call.i92, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.094, 1
  %exitcond.not = icmp eq i32 %inc, %div73
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %sanitize_ops = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 5
  %68 = ptrtoint ptr %sanitize_ops to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sanitize_ops, align 4
  %tobool.not = icmp eq ptr %69, null
  br i1 %tobool.not, label %for.end.if.end32_crit_edge, label %land.lhs.true

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end32

land.lhs.true:                                    ; preds = %for.end
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %tobool28.not = icmp eq ptr %71, null
  br i1 %tobool28.not, label %land.lhs.true.if.end32_crit_edge, label %if.then29

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end32

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  %sanitize_ctx = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 6
  %72 = ptrtoint ptr %sanitize_ctx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sanitize_ctx, align 8
  tail call void %71(ptr noundef %73, ptr noundef %data1, i32 noundef %size) #19
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %land.lhs.true.if.end32_crit_edge, %for.end.if.end32_crit_edge
  %74 = ptrtoint ptr %dump_data to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dump_data, align 4
  %data1.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %75, i32 0, i32 2
  %len.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %len.i, align 1
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #19
  %add.ptr.i = getelementptr i8, ptr %data1.i, i32 %78
  %79 = ptrtoint ptr %dump_data to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %add.ptr.i, ptr %dump_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_set_bits_prph(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write_prph_delay(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_clear_bits_prph(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #19

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #20 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #20 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { nounwind }
attributes #20 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #21 = { nomerge }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30, !32, !34, !36, !37, !39, !41, !43, !45, !47, !49, !51, !52, !54, !55, !57, !58, !60, !62, !64, !66, !68, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87}
!llvm.named.register.sp = !{!88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @iwl_dump_desc_assert, !1, !"iwl_dump_desc_assert", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 2471, i32 31}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 2507, i32 6}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 2513, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 2579, i32 4}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 2625, i32 7}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 2647, i32 6}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 2661, i32 3}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 2746, i32 3}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 2776, i32 2}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 2819, i32 4}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 2701, i32 3}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 2707, i32 3}
!25 = !{ptr @__func__.iwl_fw_dbg_collect_sync, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 2713, i32 2}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 2718, i32 2}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 2291, i32 4}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 2303, i32 4}
!34 = !{ptr @__func__.iwl_dump_ini_mem, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 2025, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 2038, i32 3}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 2048, i32 4}
!41 = !{ptr @iwl_dump_ini_region_ops, !42, !"iwl_dump_ini_region_ops", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 2168, i32 42}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 1654, i32 3}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 1268, i32 4}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/file.h", i32 971, i32 6}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 1395, i32 6}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 1403, i32 7}
!54 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 1419, i32 7}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 1135, i32 6}
!60 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!62 = !{ptr @iwl_prph_dump_addr_ax210, !63, !"iwl_prph_dump_addr_ax210", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 508, i32 36}
!64 = !{ptr @iwl_prph_dump_addr_22000, !65, !"iwl_prph_dump_addr_22000", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 420, i32 36}
!66 = !{ptr @iwl_prph_dump_addr_comm, !67, !"iwl_prph_dump_addr_comm", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 313, i32 36}
!68 = !{ptr @iwl_prph_dump_addr_9000, !69, !"iwl_prph_dump_addr_9000", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 410, i32 36}
!70 = !{ptr @__func__.iwl_fw_dump_rxf, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 179, i32 2}
!72 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @__func__.iwl_fw_dump_txf, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 211, i32 2}
!75 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @__func__.iwl_read_radio_regs, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 38, i32 2}
!78 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @__func__.iwl_fw_dump_mem, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 670, i32 2}
!81 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @__func__.iwl_dump_paging, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 742, i32 2}
!84 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @__func__.iwl_dump_prph, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dbg.c", i32 536, i32 2}
!87 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!88 = !{!"sp"}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{i32 0, i32 33}
!99 = !{!"branch_weights", i32 2000, i32 1}
!100 = !{!"auto-init"}
!101 = !{!"branch_weights", i32 1, i32 2000}
!102 = !{i8 0, i8 2}
!103 = distinct !{ptr @iwl_dump_prph, null}
!104 = !{i64 2153846220, i64 2153846712, i64 2153846257, i64 2153846313, i64 2153846347, i64 2153846371, i64 2153846412, i64 2153846433, i64 2153846461, i64 2153846495}
!105 = !{i64 2153842662, i64 2153843154, i64 2153842699, i64 2153842755, i64 2153842789, i64 2153842813, i64 2153842854, i64 2153842875, i64 2153842903, i64 2153842937}
!106 = !{i64 2153844272, i64 2153844764, i64 2153844309, i64 2153844365, i64 2153844399, i64 2153844423, i64 2153844464, i64 2153844485, i64 2153844513, i64 2153844547}
