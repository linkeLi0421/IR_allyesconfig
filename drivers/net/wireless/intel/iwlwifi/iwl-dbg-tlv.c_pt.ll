; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_mod_params = type { i32, i32, i32, i8, i8, i32, i8, i32, i32, ptr, i32, i8, i8, i8, i8 }
%struct.iwl_dbg_tlv_ver_data = type { i32, i32 }
%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.iwl_ucode_tlv = type { i32, i32, [0 x i8] }
%struct.iwl_dbg_tlv_timer_node = type { %struct.list_head, %struct.timer_list, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.firmware = type { i32, ptr, ptr }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.iwl_buf_alloc_cmd = type { i32, i32, i32, [16 x %struct.iwl_buf_alloc_frag] }
%struct.iwl_buf_alloc_frag = type <{ i64, i32 }>
%struct.iwl_dram_info = type { i32, i32, [4 x %struct.iwl_buf_alloc_cmd] }
%struct.iwl_fw_runtime = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [33 x %struct.iwl_fw_paging], i16, i16, i32, %struct.iwl_fwrt_shared_mem_cfg, %struct.anon.134, %struct.anon.139, i8 }
%struct.iwl_fw_paging = type { i32, ptr, i32, i32 }
%struct.iwl_fwrt_shared_mem_cfg = type { i32, i32, [2 x %struct.anon.133], i32, i32, i32, [6 x i32] }
%struct.anon.133 = type { [15 x i32], i32 }
%struct.anon.134 = type { [5 x %struct.iwl_fwrt_wk_data], i32, i8, [27 x i32], ptr, [2 x i32], i32, %struct.iwl_txf_iter_data, %struct.anon.138 }
%struct.iwl_fwrt_wk_data = type { i8, %struct.delayed_work, %struct.iwl_fwrt_dump_data }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.iwl_fwrt_dump_data = type { %union.anon.135 }
%union.anon.135 = type { %struct.anon.136 }
%struct.anon.136 = type { ptr, ptr }
%struct.iwl_txf_iter_data = type { i32, i32, i32, i8 }
%struct.anon.138 = type { i8, i8, i32, i32, i32, i32 }
%struct.anon.139 = type { %struct.delayed_work, i32, i64 }
%struct.iwl_dbg_tlv_node = type { %struct.list_head, %struct.iwl_ucode_tlv }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.iwl_fw_ini_hcmd = type { i8, i8, i16, [0 x i8] }
%struct.iwl_dbgc1_info = type { i32, i32, i32, i32 }
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl_fw_ini_addr_val = type { i32, i32 }
%struct.iwl_fw_ini_trigger_tlv = type <{ %struct.iwl_fw_ini_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, [0 x i32] }>
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }

@__func__.iwl_dbg_tlv_alloc = private unnamed_addr constant [18 x i8] c"iwl_dbg_tlv_alloc\00", align 1
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"WRT: Skipping TLV with disabled domain 0x%0x (0x%0x)\0A\00", [42 x i8] zeroinitializer }, align 32
@dbg_tlv_alloc = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @iwl_dbg_tlv_alloc_debug_info, ptr @iwl_dbg_tlv_alloc_buf_alloc, ptr @iwl_dbg_tlv_alloc_hcmd, ptr @iwl_dbg_tlv_alloc_region, ptr @iwl_dbg_tlv_alloc_trigger, ptr @iwl_dbg_tlv_config_set], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"WRT: Unsupported TLV type 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"WRT: Unsupported TLV 0x%x version %u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"WRT: Failed to allocate TLV 0x%x, ret %d, (ext=%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iwl-debug-yoyo.bin\00", [45 x i8] zeroinitializer }, align 32
@iwlwifi_mod_params = external dso_local local_unnamed_addr global %struct.iwl_mod_params, align 4
@__func__.iwl_dbg_tlv_load_bin = private unnamed_addr constant [21 x i8] c"iwl_dbg_tlv_load_bin\00", align 1
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"didn't load\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"loaded\00", [25 x i8] zeroinitializer }, align 32
@__func__.iwl_dbg_tlv_alloc_debug_info = private unnamed_addr constant [29 x i8] c"iwl_dbg_tlv_alloc_debug_info\00", align 1
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WRT: Loading debug cfg: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"WRT: Invalid allocation id %u and/or location id %u for allocation TLV\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"WRT: Invalid time point %u for host command TLV\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.iwl_dbg_tlv_alloc_region = private unnamed_addr constant [25 x i8] c"iwl_dbg_tlv_alloc_region\00", align 1
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WRT: parsing region: %.*s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WRT: Invalid region id %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"WRT: Invalid region type %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"WRT: Unsupported region type %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"WRT: Overriding region id %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"WRT: Enabling region id %u type %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"WRT: Invalid time point %u for trigger TLV\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.iwl_dbg_tlv_alloc_trigger = private unnamed_addr constant [26 x i8] c"iwl_dbg_tlv_alloc_trigger\00", align 1
@.str.18 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"WRT: time point %u for trigger TLV with reset_fw %u\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.iwl_dbg_tlv_config_set = private unnamed_addr constant [23 x i8] c"iwl_dbg_tlv_config_set\00", align 1
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"WRT: Invalid time point %u for config set TLV\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"WRT: Invalid config set type %u for config set TLV\0A\00", [44 x i8] zeroinitializer }, align 32
@dbg_ver_table = internal constant { [6 x %struct.iwl_dbg_tlv_ver_data], [48 x i8] } { [6 x %struct.iwl_dbg_tlv_ver_data] [%struct.iwl_dbg_tlv_ver_data { i32 1, i32 1 }, %struct.iwl_dbg_tlv_ver_data { i32 1, i32 1 }, %struct.iwl_dbg_tlv_ver_data { i32 1, i32 1 }, %struct.iwl_dbg_tlv_ver_data { i32 1, i32 3 }, %struct.iwl_dbg_tlv_ver_data { i32 1, i32 1 }, %struct.iwl_dbg_tlv_ver_data { i32 1, i32 1 }], [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid TLV len: %zd/%u\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.iwl_dbg_tlv_init_cfg = private unnamed_addr constant [21 x i8] c"iwl_dbg_tlv_init_cfg\00", align 1
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"WRT: Generating active triggers list, domain 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"WRT: Failed to allocate DRAM buffer for allocation id %d, ret=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"WRT: removing allocation id %d from region id %d\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.iwl_dbg_tlv_add_active_trigger = private unnamed_addr constant [31 x i8] c"iwl_dbg_tlv_add_active_trigger\00", align 1
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"WRT: Enabling trigger (time point %u)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/fw/file.h\00", [51 x i8] zeroinitializer }, align 32
@__func__.iwl_dbg_tlv_override_trig_node = private unnamed_addr constant [31 x i8] c"iwl_dbg_tlv_override_trig_node\00", align 1
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"WRT: Appending trigger data (time point %u)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"WRT: Overriding trigger data (time point %u)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"WRT: No memory to override trigger (time point %u)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"WRT: Overriding trigger configuration (time point %u)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"WRT: Overriding trigger regions (time point %u)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"WRT: Appending trigger regions (time point %u)\0A\00", [48 x i8] zeroinitializer }, align 32
@__func__.iwl_dbg_tlv_alloc_fragments = private unnamed_addr constant [28 x i8] c"iwl_dbg_tlv_alloc_fragments\00", align 1
@.str.33 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"WRT: Allocating DRAM buffer (alloc_id=%u, fragment=%u, size=0x%lx)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"WRT: Failed to allocate fragment size %lu\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.iwl_dbg_tlv_apply_config = private unnamed_addr constant [25 x i8] c"iwl_dbg_tlv_apply_config\00", align 1
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"WRT: failed to get nic access\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"WRT: skipping MAC PERIPHERY config\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"WRT:  MAC PERIPHERY config len: len %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"WRT: DEV_MEM: count %u, add: %u val: %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"WRT: CSR: count %u, add: %u val: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"WRT: dram_base_addr 0x%016llx, dram_size 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"WRT: config_list->addr_offset: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to write dram_info to HW_SMEM\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"WRT: Setting HWM debug token config: %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"WRT: Failed to set DRAM buffer for alloc id %d, ret=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.iwl_dbg_tlv_update_drams = private unnamed_addr constant [25 x i8] c"iwl_dbg_tlv_update_drams\00", align 1
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"block data after  %016x\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.iwl_dbg_tlv_update_dram = private unnamed_addr constant [24 x i8] c"iwl_dbg_tlv_update_dram\00", align 1
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DRAM_PATH is not supported alloc_id %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"WRT: DRAM buffer details alloc_id=%u, num_frags=%u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WRT: DRAM fragment details\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"frag=%u, addr=0x%016llx, size=0x%x)\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.iwl_dbg_tlv_tp_trigger = private unnamed_addr constant [23 x i8] c"iwl_dbg_tlv_tp_trigger\00", align 1
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WRT: tp %d, reset_fw %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"WRT: restart_required %d, last_tp_resetfw %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"WRT: FW_ASSERT due to reset_fw_mode-no restart\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"WRT: stop and reload firmware\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"WRT: stop only and no reload firmware\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"WRT: nothing need to be done after debug collection\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WRT: wrong resetfw %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"WRT: Failed to apply DRAM buffer for allocation id %d, ret=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.iwl_dbg_tlv_apply_buffer = private unnamed_addr constant [25 x i8] c"iwl_dbg_tlv_apply_buffer\00", align 1
@.str.58 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"WRT: Applying DRAM destination (alloc_id=%u)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"WRT: Invalid periodic trigger data was not given\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"WRT: Override min interval from %u to %u msec\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"WRT: Failed to allocate periodic trigger\0A\00", [54 x i8] zeroinitializer }, align 32
@iwl_dbg_tlv_set_periodic_trigs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&timer_node->timer)\00", [43 x i8] zeroinitializer }, align 32
@__func__.iwl_dbg_tlv_set_periodic_trigs = private unnamed_addr constant [31 x i8] c"iwl_dbg_tlv_set_periodic_trigs\00", align 1
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"WRT: Enabling periodic trigger\0A\00", [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 7, i64 8, i64 10, i64 18]
@__sancov_gen_cov_switch_values.64 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16777216, i64 33554432]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 16777216]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 325, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"dbg_tlv_alloc\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 295, i32 14 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 332, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 337, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 344, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 484, i32 25 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 492, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 105, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 144, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 165, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 194, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 198, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 204, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 210, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 216, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 225, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 245, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 251, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 280, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 287, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [14 x i8] c"dbg_ver_table\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 58, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 468, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1242, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1273, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1301, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1107, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/fw/file.h\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 971, i32 6 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1023, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1030, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1043, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1061, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1070, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1076, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 600, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 543, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 828, i32 5 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 829, i32 5 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 832, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 846, i32 5 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 856, i32 5 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 869, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 871, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 883, i32 6 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 893, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 783, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 789, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 724, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 746, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 755, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 756, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1196, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1198, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1210, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1213, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1217, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1223, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1226, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 707, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 658, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 945, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 951, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 961, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 968, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.267 = private constant [52 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 974, i32 3 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @.str, ptr @dbg_tlv_alloc, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @dbg_ver_table, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @iwl_dbg_tlv_set_periodic_trigs.__key, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_tlv_alloc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_ver_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbg_tlv_set_periodic_trigs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_dbg_tlv_alloc(ptr noundef %trans, ptr noundef %tlv, i1 noundef zeroext %ext) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %external_ini_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 11
  %internal_ini_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 10
  %cond = select i1 %ext, ptr %external_ini_cfg, ptr %internal_ini_cfg
  %data = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %tlv, i32 0, i32 2
  %length = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %tlv, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp = icmp ult i32 %2, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %tlv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tlv, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %sub = add i32 %5, -16777221
  %domain3 = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %tlv, i32 1, i32 1
  %6 = ptrtoint ptr %domain3 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %domain3, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.not = icmp eq i32 %7, 0
  br i1 %cmp4.not, label %if.end.if.end13_crit_edge, label %land.lhs.true

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %domains_bitmap = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 22
  %9 = ptrtoint ptr %domains_bitmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %domains_bitmap, align 8
  %and = and i32 %10, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.end, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %12, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_alloc, ptr noundef nonnull @.str, i32 noundef %8, i32 noundef %10) #8
  br label %cleanup

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub)
  %cmp14 = icmp ugt i32 %sub, 5
  br i1 %cmp14, label %do.end21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end13
  %arrayidx15 = getelementptr [6 x ptr], ptr @dbg_tlv_alloc, i32 0, i32 %sub
  %13 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %data, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  %arrayidx2.i = getelementptr [6 x %struct.iwl_dbg_tlv_ver_data], ptr @dbg_ver_table, i32 0, i32 %sub
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.i = icmp ult i32 %15, %17
  br i1 %cmp.i, label %lor.lhs.false.do.end30_crit_edge, label %iwl_dbg_tlv_ver_support.exit

lor.lhs.false.do.end30_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

iwl_dbg_tlv_ver_support.exit:                     ; preds = %lor.lhs.false
  %max_ver.i = getelementptr [6 x %struct.iwl_dbg_tlv_ver_data], ptr @dbg_ver_table, i32 0, i32 %sub, i32 1
  %18 = ptrtoint ptr %max_ver.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_ver.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %19)
  %cmp4.i.not = icmp ugt i32 %15, %19
  br i1 %cmp4.i.not, label %iwl_dbg_tlv_ver_support.exit.do.end30_crit_edge, label %if.end34

iwl_dbg_tlv_ver_support.exit.do.end30_crit_edge:  ; preds = %iwl_dbg_tlv_ver_support.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %dev22 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %20 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev22, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %21, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %5) #8
  br label %out_err

do.end30:                                         ; preds = %iwl_dbg_tlv_ver_support.exit.do.end30_crit_edge, %lor.lhs.false.do.end30_crit_edge
  %dev31 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %22 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev31, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %23, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %5, i32 noundef %15) #8
  br label %out_err

if.end34:                                         ; preds = %iwl_dbg_tlv_ver_support.exit
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx15, align 4
  %call36 = tail call i32 %25(ptr noundef %trans, ptr noundef %tlv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end47, label %do.end42

do.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %dev43 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %26 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev43, align 8
  %conv = zext i1 %ext to i32
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %27, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %5, i32 noundef %call36, i32 noundef %conv) #8
  br label %out_err

if.end47:                                         ; preds = %if.end34
  %28 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cond, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp48 = icmp eq i32 %29, 0
  br i1 %cmp48, label %if.then50, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %cond, align 4
  br label %cleanup

out_err:                                          ; preds = %do.end42, %do.end30, %do.end21
  %31 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %cond, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.then50, %if.end47.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_dbg_tlv_del_timers(ptr noundef readonly %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %periodic_trig_list = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 21
  %0 = ptrtoint ptr %periodic_trig_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %periodic_trig_list, align 4
  %cmp.not19 = icmp eq ptr %1, %periodic_trig_list
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %node.020 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %node.020 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %node.020, align 4
  %timer = getelementptr inbounds %struct.iwl_dbg_tlv_timer_node, ptr %node.020, i32 0, i32 1
  %call = tail call i32 @del_timer(ptr noundef %timer) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.020) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %node.020, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %node.020 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %node.020, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %node.020 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %node.020, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %node.020, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %node.020) #8
  %cmp.not = icmp eq ptr %tmp.0, %periodic_trig_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_dbg_tlv_free(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %periodic_trig_list.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 21
  %0 = ptrtoint ptr %periodic_trig_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %periodic_trig_list.i, align 4
  %cmp.not19.i = icmp eq ptr %1, %periodic_trig_list.i
  br i1 %cmp.not19.i, label %entry.for.body.preheader_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %node.020.i = phi ptr [ %tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %node.020.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0.i = load ptr, ptr %node.020.i, align 4
  %timer.i = getelementptr inbounds %struct.iwl_dbg_tlv_timer_node, ptr %node.020.i, i32 0, i32 1
  %call.i = tail call i32 @del_timer(ptr noundef %timer.i) #8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.020.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %node.020.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %node.020.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %node.020.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %node.020.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %node.020.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %node.020.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %node.020.i) #8
  %cmp.not.i = icmp eq ptr %tmp.0.i, %periodic_trig_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.for.body.preheader_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

list_del.exit.i.for.body.preheader_crit_edge:     ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

for.body.preheader:                               ; preds = %list_del.exit.i.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0201 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 18, i32 %i.0201
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %12) #8
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0201, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %debug_info_tlv_list = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 19
  %14 = ptrtoint ptr %debug_info_tlv_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %debug_info_tlv_list, align 8
  %cmp10.not202 = icmp eq ptr %15, %debug_info_tlv_list
  br i1 %cmp10.not202, label %for.end.for.body22.preheader_crit_edge, label %for.end.for.body11_crit_edge

for.end.for.body11_crit_edge:                     ; preds = %for.end
  br label %for.body11

for.end.for.body22.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22.preheader

for.body22.preheader:                             ; preds = %list_del.exit.for.body22.preheader_crit_edge, %for.end.for.body22.preheader_crit_edge
  br label %for.body22

for.body11:                                       ; preds = %list_del.exit.for.body11_crit_edge, %for.end.for.body11_crit_edge
  %tlv_node.0203 = phi ptr [ %tlv_node_tmp.0, %list_del.exit.for.body11_crit_edge ], [ %15, %for.end.for.body11_crit_edge ]
  %16 = ptrtoint ptr %tlv_node.0203 to i32
  call void @__asan_load4_noabort(i32 %16)
  %tlv_node_tmp.0 = load ptr, ptr %tlv_node.0203, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tlv_node.0203) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body11.list_del.exit_crit_edge

for.body11.list_del.exit_crit_edge:               ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i175 = getelementptr inbounds %struct.list_head, ptr %tlv_node.0203, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i175 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i175, align 4
  %19 = ptrtoint ptr %tlv_node.0203 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tlv_node.0203, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body11.list_del.exit_crit_edge
  %23 = ptrtoint ptr %tlv_node.0203 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %tlv_node.0203, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tlv_node.0203, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %tlv_node.0203) #8
  %cmp10.not = icmp eq ptr %tlv_node_tmp.0, %debug_info_tlv_list
  br i1 %cmp10.not, label %list_del.exit.for.body22.preheader_crit_edge, label %list_del.exit.for.body11_crit_edge

list_del.exit.for.body11_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body11

list_del.exit.for.body22.preheader_crit_edge:     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22.preheader

for.cond120.preheader:                            ; preds = %for.end116
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  br label %for.body122

for.body22:                                       ; preds = %for.end116.for.body22_crit_edge, %for.body22.preheader
  %i.1217 = phi i32 [ %inc118, %for.end116.for.body22_crit_edge ], [ 0, %for.body22.preheader ]
  %arrayidx24 = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 20, i32 %i.1217
  %25 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx24, align 4
  %cmp37.not205 = icmp eq ptr %26, %arrayidx24
  br i1 %cmp37.not205, label %for.body22.for.end47_crit_edge, label %for.body22.for.body39_crit_edge

for.body22.for.body39_crit_edge:                  ; preds = %for.body22
  br label %for.body39

for.body22.for.end47_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end47

for.body39:                                       ; preds = %list_del.exit181.for.body39_crit_edge, %for.body22.for.body39_crit_edge
  %tlv_node.1206 = phi ptr [ %tlv_node_tmp.1, %list_del.exit181.for.body39_crit_edge ], [ %26, %for.body22.for.body39_crit_edge ]
  %27 = ptrtoint ptr %tlv_node.1206 to i32
  call void @__asan_load4_noabort(i32 %27)
  %tlv_node_tmp.1 = load ptr, ptr %tlv_node.1206, align 4
  %call.i.i176 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tlv_node.1206) #8
  br i1 %call.i.i176, label %if.end.i.i179, label %for.body39.list_del.exit181_crit_edge

for.body39.list_del.exit181_crit_edge:            ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit181

if.end.i.i179:                                    ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i177 = getelementptr inbounds %struct.list_head, ptr %tlv_node.1206, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i177 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i177, align 4
  %30 = ptrtoint ptr %tlv_node.1206 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tlv_node.1206, align 4
  %prev1.i.i.i178 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i178 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i178, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit181

list_del.exit181:                                 ; preds = %if.end.i.i179, %for.body39.list_del.exit181_crit_edge
  %34 = ptrtoint ptr %tlv_node.1206 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %tlv_node.1206, align 4
  %prev.i180 = getelementptr inbounds %struct.list_head, ptr %tlv_node.1206, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i180 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i180, align 4
  tail call void @kfree(ptr noundef %tlv_node.1206) #8
  %cmp37.not = icmp eq ptr %tlv_node_tmp.1, %arrayidx24
  br i1 %cmp37.not, label %list_del.exit181.for.end47_crit_edge, label %list_del.exit181.for.body39_crit_edge

list_del.exit181.for.body39_crit_edge:            ; preds = %list_del.exit181
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body39

list_del.exit181.for.end47_crit_edge:             ; preds = %list_del.exit181
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end47

for.end47:                                        ; preds = %list_del.exit181.for.end47_crit_edge, %for.body22.for.end47_crit_edge
  %hcmd_list = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 20, i32 %i.1217, i32 2
  %36 = ptrtoint ptr %hcmd_list to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hcmd_list, align 4
  %cmp60.not208 = icmp eq ptr %37, %hcmd_list
  br i1 %cmp60.not208, label %for.end47.for.end70_crit_edge, label %for.end47.for.body62_crit_edge

for.end47.for.body62_crit_edge:                   ; preds = %for.end47
  br label %for.body62

for.end47.for.end70_crit_edge:                    ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end70

for.body62:                                       ; preds = %list_del.exit187.for.body62_crit_edge, %for.end47.for.body62_crit_edge
  %tlv_node.2209 = phi ptr [ %tlv_node_tmp.2, %list_del.exit187.for.body62_crit_edge ], [ %37, %for.end47.for.body62_crit_edge ]
  %38 = ptrtoint ptr %tlv_node.2209 to i32
  call void @__asan_load4_noabort(i32 %38)
  %tlv_node_tmp.2 = load ptr, ptr %tlv_node.2209, align 4
  %call.i.i182 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tlv_node.2209) #8
  br i1 %call.i.i182, label %if.end.i.i185, label %for.body62.list_del.exit187_crit_edge

for.body62.list_del.exit187_crit_edge:            ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit187

if.end.i.i185:                                    ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i183 = getelementptr inbounds %struct.list_head, ptr %tlv_node.2209, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i183 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i183, align 4
  %41 = ptrtoint ptr %tlv_node.2209 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tlv_node.2209, align 4
  %prev1.i.i.i184 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i184 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i184, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del.exit187

list_del.exit187:                                 ; preds = %if.end.i.i185, %for.body62.list_del.exit187_crit_edge
  %45 = ptrtoint ptr %tlv_node.2209 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %tlv_node.2209, align 4
  %prev.i186 = getelementptr inbounds %struct.list_head, ptr %tlv_node.2209, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i186 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i186, align 4
  tail call void @kfree(ptr noundef %tlv_node.2209) #8
  %cmp60.not = icmp eq ptr %tlv_node_tmp.2, %hcmd_list
  br i1 %cmp60.not, label %list_del.exit187.for.end70_crit_edge, label %list_del.exit187.for.body62_crit_edge

list_del.exit187.for.body62_crit_edge:            ; preds = %list_del.exit187
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body62

list_del.exit187.for.end70_crit_edge:             ; preds = %list_del.exit187
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end70

for.end70:                                        ; preds = %list_del.exit187.for.end70_crit_edge, %for.end47.for.end70_crit_edge
  %active_trig_list = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 20, i32 %i.1217, i32 1
  %47 = ptrtoint ptr %active_trig_list to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %active_trig_list, align 4
  %cmp83.not211 = icmp eq ptr %48, %active_trig_list
  br i1 %cmp83.not211, label %for.end70.for.end93_crit_edge, label %for.end70.for.body85_crit_edge

for.end70.for.body85_crit_edge:                   ; preds = %for.end70
  br label %for.body85

for.end70.for.end93_crit_edge:                    ; preds = %for.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end93

for.body85:                                       ; preds = %list_del.exit193.for.body85_crit_edge, %for.end70.for.body85_crit_edge
  %tlv_node.3212 = phi ptr [ %tlv_node_tmp.3, %list_del.exit193.for.body85_crit_edge ], [ %48, %for.end70.for.body85_crit_edge ]
  %49 = ptrtoint ptr %tlv_node.3212 to i32
  call void @__asan_load4_noabort(i32 %49)
  %tlv_node_tmp.3 = load ptr, ptr %tlv_node.3212, align 4
  %call.i.i188 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tlv_node.3212) #8
  br i1 %call.i.i188, label %if.end.i.i191, label %for.body85.list_del.exit193_crit_edge

for.body85.list_del.exit193_crit_edge:            ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit193

if.end.i.i191:                                    ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i189 = getelementptr inbounds %struct.list_head, ptr %tlv_node.3212, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i189 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i189, align 4
  %52 = ptrtoint ptr %tlv_node.3212 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tlv_node.3212, align 4
  %prev1.i.i.i190 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i.i190 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev1.i.i.i190, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %51, align 4
  br label %list_del.exit193

list_del.exit193:                                 ; preds = %if.end.i.i191, %for.body85.list_del.exit193_crit_edge
  %56 = ptrtoint ptr %tlv_node.3212 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 256 to ptr), ptr %tlv_node.3212, align 4
  %prev.i192 = getelementptr inbounds %struct.list_head, ptr %tlv_node.3212, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i192 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i192, align 4
  tail call void @kfree(ptr noundef %tlv_node.3212) #8
  %cmp83.not = icmp eq ptr %tlv_node_tmp.3, %active_trig_list
  br i1 %cmp83.not, label %list_del.exit193.for.end93_crit_edge, label %list_del.exit193.for.body85_crit_edge

list_del.exit193.for.body85_crit_edge:            ; preds = %list_del.exit193
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body85

list_del.exit193.for.end93_crit_edge:             ; preds = %list_del.exit193
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end93

for.end93:                                        ; preds = %list_del.exit193.for.end93_crit_edge, %for.end70.for.end93_crit_edge
  %config_list = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 20, i32 %i.1217, i32 3
  %58 = ptrtoint ptr %config_list to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %config_list, align 4
  %cmp106.not214 = icmp eq ptr %59, %config_list
  br i1 %cmp106.not214, label %for.end93.for.end116_crit_edge, label %for.end93.for.body108_crit_edge

for.end93.for.body108_crit_edge:                  ; preds = %for.end93
  br label %for.body108

for.end93.for.end116_crit_edge:                   ; preds = %for.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end116

for.body108:                                      ; preds = %list_del.exit199.for.body108_crit_edge, %for.end93.for.body108_crit_edge
  %tlv_node.4215 = phi ptr [ %tlv_node_tmp.4, %list_del.exit199.for.body108_crit_edge ], [ %59, %for.end93.for.body108_crit_edge ]
  %60 = ptrtoint ptr %tlv_node.4215 to i32
  call void @__asan_load4_noabort(i32 %60)
  %tlv_node_tmp.4 = load ptr, ptr %tlv_node.4215, align 4
  %call.i.i194 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tlv_node.4215) #8
  br i1 %call.i.i194, label %if.end.i.i197, label %for.body108.list_del.exit199_crit_edge

for.body108.list_del.exit199_crit_edge:           ; preds = %for.body108
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit199

if.end.i.i197:                                    ; preds = %for.body108
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i195 = getelementptr inbounds %struct.list_head, ptr %tlv_node.4215, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i.i195 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i195, align 4
  %63 = ptrtoint ptr %tlv_node.4215 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tlv_node.4215, align 4
  %prev1.i.i.i196 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev1.i.i.i196 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev1.i.i.i196, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %64, ptr %62, align 4
  br label %list_del.exit199

list_del.exit199:                                 ; preds = %if.end.i.i197, %for.body108.list_del.exit199_crit_edge
  %67 = ptrtoint ptr %tlv_node.4215 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 256 to ptr), ptr %tlv_node.4215, align 4
  %prev.i198 = getelementptr inbounds %struct.list_head, ptr %tlv_node.4215, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i198 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i198, align 4
  tail call void @kfree(ptr noundef %tlv_node.4215) #8
  %cmp106.not = icmp eq ptr %tlv_node_tmp.4, %config_list
  br i1 %cmp106.not, label %list_del.exit199.for.end116_crit_edge, label %list_del.exit199.for.body108_crit_edge

list_del.exit199.for.body108_crit_edge:           ; preds = %list_del.exit199
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body108

list_del.exit199.for.end116_crit_edge:            ; preds = %list_del.exit199
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end116

for.end116:                                       ; preds = %list_del.exit199.for.end116_crit_edge, %for.end93.for.end116_crit_edge
  %inc118 = add nuw nsw i32 %i.1217, 1
  %exitcond220.not = icmp eq i32 %inc118, 27
  br i1 %exitcond220.not, label %for.cond120.preheader, label %for.end116.for.body22_crit_edge

for.end116.for.body22_crit_edge:                  ; preds = %for.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22

for.body122:                                      ; preds = %iwl_dbg_tlv_fragments_free.exit.for.body122_crit_edge, %for.cond120.preheader
  %i.2218 = phi i32 [ 0, %for.cond120.preheader ], [ %inc124, %iwl_dbg_tlv_fragments_free.exit.for.body122_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2218)
  %cmp.i = icmp eq i32 %i.2218, 0
  br i1 %cmp.i, label %for.body122.iwl_dbg_tlv_fragments_free.exit_crit_edge, label %if.end.i

for.body122.iwl_dbg_tlv_fragments_free.exit_crit_edge: ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_fragments_free.exit

if.end.i:                                         ; preds = %for.body122
  %arrayidx.i = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 13, i32 %i.2218
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp225.not.i = icmp eq i32 %70, 0
  br i1 %cmp225.not.i, label %if.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %frags.i = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 13, i32 %i.2218, i32 1
  br label %for.body.i200

for.body.i200:                                    ; preds = %for.body.i200.for.body.i200_crit_edge, %for.body.lr.ph.i
  %i.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i200.for.body.i200_crit_edge ]
  %71 = ptrtoint ptr %frags.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %frags.i, align 4
  %arrayidx3.i = getelementptr %struct.iwl_dram_data, ptr %72, i32 %i.026.i
  %73 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i, align 8
  %size.i = getelementptr %struct.iwl_dram_data, ptr %72, i32 %i.026.i, i32 2
  %75 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %size.i, align 4
  %block.i = getelementptr %struct.iwl_dram_data, ptr %72, i32 %i.026.i, i32 1
  %77 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %block.i, align 4
  %79 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx3.i, align 4
  tail call void @dma_free_attrs(ptr noundef %74, i32 noundef %76, ptr noundef %78, i32 noundef %80, i32 noundef 0) #8
  %81 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %arrayidx3.i, align 4
  %82 = ptrtoint ptr %block.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %block.i, align 4
  %83 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %size.i, align 4
  %inc.i = add nuw i32 %i.026.i, 1
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.i, align 4
  %cmp2.i = icmp ult i32 %inc.i, %85
  br i1 %cmp2.i, label %for.body.i200.for.body.i200_crit_edge, label %for.body.i200.for.end.i_crit_edge

for.body.i200.for.end.i_crit_edge:                ; preds = %for.body.i200
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i200.for.body.i200_crit_edge:            ; preds = %for.body.i200
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i200

for.end.i:                                        ; preds = %for.body.i200.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %frags7.i = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 13, i32 %i.2218, i32 1
  %86 = ptrtoint ptr %frags7.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %frags7.i, align 4
  tail call void @kfree(ptr noundef %87) #8
  %88 = ptrtoint ptr %frags7.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %frags7.i, align 4
  %89 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %arrayidx.i, align 4
  br label %iwl_dbg_tlv_fragments_free.exit

iwl_dbg_tlv_fragments_free.exit:                  ; preds = %for.end.i, %for.body122.iwl_dbg_tlv_fragments_free.exit_crit_edge
  %inc124 = add nuw nsw i32 %i.2218, 1
  %exitcond221.not = icmp eq i32 %inc124, 5
  br i1 %exitcond221.not, label %for.end125, label %iwl_dbg_tlv_fragments_free.exit.for.body122_crit_edge

iwl_dbg_tlv_fragments_free.exit.for.body122_crit_edge: ; preds = %iwl_dbg_tlv_fragments_free.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body122

for.end125:                                       ; preds = %iwl_dbg_tlv_fragments_free.exit
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_dbg_tlv_load_bin(ptr noundef %dev, ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #8
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !156
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 14) to i32))
  %1 = load i8, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 14), align 1, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %2 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %5)
  %cmp = icmp ult i32 %5, 17
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @firmware_request_nowarn(ptr noundef nonnull %fw, ptr noundef nonnull @.str.4, ptr noundef %dev) #8
  %dev2 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool3.not, ptr @.str.7, ptr @.str.6
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_load_bin, ptr noundef nonnull @.str.5, ptr noundef nonnull %cond, ptr noundef nonnull @.str.4) #8
  br i1 %tobool3.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %11)
  %cmp2.i = icmp ugt i32 %11, 7
  br i1 %cmp2.i, label %while.body.i.preheader, label %if.end8.iwl_dbg_tlv_parse_bin.exit_crit_edge

if.end8.iwl_dbg_tlv_parse_bin.exit_crit_edge:     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_parse_bin.exit

while.body.i.preheader:                           ; preds = %if.end8
  %data = getelementptr inbounds %struct.firmware, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.i.preheader
  %len.addr.04.i = phi i32 [ %sub5.i, %if.end.i.while.body.i_crit_edge ], [ %11, %while.body.i.preheader ]
  %data.addr.03.i = phi ptr [ %add.ptr.i, %if.end.i.while.body.i_crit_edge ], [ %13, %while.body.i.preheader ]
  %sub.i = add i32 %len.addr.04.i, -8
  %length.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %data.addr.03.i, i32 0, i32 1
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %16)
  %cmp1.i = icmp ult i32 %sub.i, %16
  br i1 %cmp1.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev2, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %18, i32 noundef 0, ptr noundef nonnull @.str.21, i32 noundef %sub.i, i32 noundef %16) #8
  br label %iwl_dbg_tlv_parse_bin.exit

if.end.i:                                         ; preds = %while.body.i
  %add.i = add i32 %16, 3
  %and.i = and i32 %add.i, -4
  %sub5.i = sub i32 %sub.i, %and.i
  %add8.i = add i32 %and.i, 8
  %add.ptr.i = getelementptr i8, ptr %data.addr.03.i, i32 %add8.i
  call void @iwl_dbg_tlv_alloc(ptr noundef %trans, ptr noundef %data.addr.03.i, i1 noundef zeroext true) #8
  %cmp.i = icmp ugt i32 %sub5.i, 7
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.iwl_dbg_tlv_parse_bin.exit_crit_edge

if.end.i.iwl_dbg_tlv_parse_bin.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_parse_bin.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

iwl_dbg_tlv_parse_bin.exit:                       ; preds = %if.end.i.iwl_dbg_tlv_parse_bin.exit_crit_edge, %do.end.i, %if.end8.iwl_dbg_tlv_parse_bin.exit_crit_edge
  %19 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %20) #8
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbg_tlv_parse_bin.exit, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @firmware_request_nowarn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_dbg_tlv_init(ptr noundef %trans) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %debug_info_tlv_list = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 19
  %0 = ptrtoint ptr %debug_info_tlv_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %debug_info_tlv_list, ptr %debug_info_tlv_list, align 4
  %prev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 19, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %debug_info_tlv_list, ptr %prev.i, align 4
  %periodic_trig_list = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 21
  %2 = ptrtoint ptr %periodic_trig_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %periodic_trig_list, ptr %periodic_trig_list, align 4
  %prev.i10 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 21, i32 1
  %3 = ptrtoint ptr %prev.i10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %periodic_trig_list, ptr %prev.i10, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.015 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 20, i32 %i.015
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i11 = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx, ptr %prev.i11, align 4
  %hcmd_list = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 20, i32 %i.015, i32 2
  %6 = ptrtoint ptr %hcmd_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %hcmd_list, ptr %hcmd_list, align 4
  %prev.i12 = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 20, i32 %i.015, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %hcmd_list, ptr %prev.i12, align 4
  %active_trig_list = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 20, i32 %i.015, i32 1
  %8 = ptrtoint ptr %active_trig_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %active_trig_list, ptr %active_trig_list, align 4
  %prev.i13 = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 20, i32 %i.015, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %active_trig_list, ptr %prev.i13, align 4
  %config_list = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 20, i32 %i.015, i32 3
  %10 = ptrtoint ptr %config_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %config_list, ptr %config_list, align 4
  %prev.i14 = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 20, i32 %i.015, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %config_list, ptr %prev.i14, align 4
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 27
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_iwl_dbg_tlv_time_point(ptr noundef %fwrt, i32 noundef %tp_id, ptr noundef %tp_data, i1 noundef zeroext %sync) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i171 = alloca %struct.iwl_host_cmd, align 4
  %cmd.i146 = alloca %struct.iwl_host_cmd, align 4
  %cmd.i121 = alloca %struct.iwl_host_cmd, align 4
  %cmd.i = alloca %struct.iwl_host_cmd, align 4
  %data.i.i = alloca %struct.iwl_buf_alloc_cmd, align 4
  %hcmd.i.i = alloca %struct.iwl_host_cmd, align 4
  %dram_info.i = alloca %struct.iwl_dram_info, align 4
  %physical.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwrt, align 8
  %internal_ini_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 10
  %2 = ptrtoint ptr %internal_ini_cfg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %internal_ini_cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %lor.rhs.i, label %entry.iwl_trans_dbg_ini_valid.exit_crit_edge

entry.iwl_trans_dbg_ini_valid.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_trans_dbg_ini_valid.exit

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %external_ini_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 11
  %4 = ptrtoint ptr %external_ini_cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %external_ini_cfg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.i = icmp ne i32 %5, 0
  br label %iwl_trans_dbg_ini_valid.exit

iwl_trans_dbg_ini_valid.exit:                     ; preds = %lor.rhs.i, %entry.iwl_trans_dbg_ini_valid.exit_crit_edge
  %6 = phi i1 [ true, %entry.iwl_trans_dbg_ini_valid.exit_crit_edge ], [ %cmp2.i, %lor.rhs.i ]
  %7 = add i32 %tp_id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %7)
  %8 = icmp ult i32 %7, 26
  %9 = and i1 %8, %6
  br i1 %9, label %if.end, label %iwl_trans_dbg_ini_valid.exit.cleanup_crit_edge

iwl_trans_dbg_ini_valid.exit.cleanup_crit_edge:   ; preds = %iwl_trans_dbg_ini_valid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %iwl_trans_dbg_ini_valid.exit
  %hcmd_list4 = getelementptr %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 20, i32 %tp_id, i32 2
  %active_trig_list = getelementptr %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 20, i32 %tp_id, i32 1
  %config_list = getelementptr %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 20, i32 %tp_id, i32 3
  %10 = zext i32 %tp_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %tp_id, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
    i32 10, label %sw.bb17
    i32 8, label %if.end.sw.bb18_crit_edge
    i32 18, label %if.end.sw.bb18_crit_edge279
    i32 7, label %if.end.sw.bb18_crit_edge280
  ]

if.end.sw.bb18_crit_edge280:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18

if.end.sw.bb18_crit_edge279:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18

if.end.sw.bb18_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18

sw.bb:                                            ; preds = %if.end
  %ini_dest1.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 16
  %11 = ptrtoint ptr %ini_dest1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ini_dest1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i65 = icmp eq i32 %12, 0
  br i1 %cmp.not.i65, label %do.end.i, label %sw.bb.iwl_dbg_tlv_init_cfg.exit_crit_edge

sw.bb.iwl_dbg_tlv_init_cfg.exit_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_init_cfg.exit

do.end.i:                                         ; preds = %sw.bb
  %dev.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  %domains_bitmap.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 22
  %15 = ptrtoint ptr %domains_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %domains_bitmap.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %14, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_init_cfg, ptr noundef nonnull @.str.22, i32 noundef %16) #8
  br label %for.body.i

for.body.i:                                       ; preds = %iwl_dbg_tlv_gen_active_trig_list.exit.i.for.body.i_crit_edge, %do.end.i
  %i.0167.i = phi i32 [ 0, %do.end.i ], [ %inc.i, %iwl_dbg_tlv_gen_active_trig_list.exit.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fwrt, align 8
  %arrayidx.i = getelementptr %struct.iwl_trans, ptr %18, i32 0, i32 32, i32 20, i32 %i.0167.i
  %active_trig_list2.i.i = getelementptr %struct.iwl_trans, ptr %18, i32 0, i32 32, i32 20, i32 %i.0167.i, i32 1
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %node.015.i.i = load ptr, ptr %arrayidx.i, align 4
  %cmp.not16.i.i = icmp eq ptr %node.015.i.i, %arrayidx.i
  br i1 %cmp.not16.i.i, label %for.body.i.iwl_dbg_tlv_gen_active_trig_list.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.body.i.iwl_dbg_tlv_gen_active_trig_list.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_gen_active_trig_list.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.body.i
  %prev.i.i.i.i.i = getelementptr %struct.iwl_trans, ptr %18, i32 0, i32 32, i32 20, i32 %i.0167.i, i32 1, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %iwl_dbg_tlv_add_active_trigger.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %node.017.i.i = phi ptr [ %node.015.i.i, %for.body.lr.ph.i.i ], [ %node.0.i.i, %iwl_dbg_tlv_add_active_trigger.exit.i.i.for.body.i.i_crit_edge ]
  %tlv3.i.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.017.i.i, i32 0, i32 1
  %apply_policy.i.i.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.017.i.i, i32 2
  %20 = ptrtoint ptr %apply_policy.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %apply_policy.i.i.i, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  %and.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %23 = ptrtoint ptr %active_trig_list2.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %node.013.i.i.i = load ptr, ptr %active_trig_list2.i.i, align 4
  %cmp.not14.i.i.i = icmp eq ptr %node.013.i.i.i, %active_trig_list2.i.i
  %or.cond15.i.i.i = select i1 %cmp.not14.i.i.i, i1 true, i1 %tobool.not.i.i.i
  br i1 %or.cond15.i.i.i, label %for.body.i.i.do.end.i.i.i_crit_edge, label %if.end.lr.ph.i.i.i

for.body.i.i.do.end.i.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i.i

if.end.lr.ph.i.i.i:                               ; preds = %for.body.i.i
  %and1.i.i.i = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %and1.i.i.i, 0
  %data3.i.i.i.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.017.i.i, i32 4, i32 0, i32 1
  %length.i.i.i.i.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.017.i.i, i32 0, i32 1, i32 1
  br i1 %tobool2.not.i.i.i, label %if.end.lr.ph.i.i.i.for.end.i.split.i.i_crit_edge, label %if.end.lr.ph.i.i.i.if.end.i.i.i_crit_edge

if.end.lr.ph.i.i.i.if.end.i.i.i_crit_edge:        ; preds = %if.end.lr.ph.i.i.i
  br label %if.end.i.i.i

if.end.lr.ph.i.i.i.for.end.i.split.i.i_crit_edge: ; preds = %if.end.lr.ph.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.split.i.i

if.end.i.i.i:                                     ; preds = %for.cond.backedge.i.i.i.if.end.i.i.i_crit_edge, %if.end.lr.ph.i.i.i.if.end.i.i.i_crit_edge
  %node.016.i.i.i = phi ptr [ %node.0.i.i.i, %for.cond.backedge.i.i.i.if.end.i.i.i_crit_edge ], [ %node.013.i.i.i, %if.end.lr.ph.i.i.i.if.end.i.i.i_crit_edge ]
  %data5.i.i.i.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.016.i.i.i, i32 4, i32 0, i32 1
  %24 = ptrtoint ptr %length.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length.i.i.i.i.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  %rem.i.i.i.i.i = and i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %rem.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end22.i.i.i.i.i, label %do.end.i.i.i.i.i, !prof !158

do.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 971, i32 noundef 9, ptr noundef null) #8
  br label %_iwl_tlv_array_len.exit.i.i.i.i

if.end22.i.i.i.i.i:                               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i.i.i = add i32 %26, -52
  %div1.i.i.i.i.i = lshr i32 %sub.i.i.i.i.i, 2
  br label %_iwl_tlv_array_len.exit.i.i.i.i

_iwl_tlv_array_len.exit.i.i.i.i:                  ; preds = %if.end22.i.i.i.i.i, %do.end.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi i32 [ 0, %do.end.i.i.i.i.i ], [ %div1.i.i.i.i.i, %if.end22.i.i.i.i.i ]
  %length.i32.i.i.i.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.016.i.i.i, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %length.i32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length.i32.i.i.i.i, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  %rem.i33.i.i.i.i = and i32 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i33.i.i.i.i)
  %tobool.not.i34.i.i.i.i = icmp eq i32 %rem.i33.i.i.i.i, 0
  br i1 %tobool.not.i34.i.i.i.i, label %_iwl_tlv_array_len.exit40.i.i.i.i, label %_iwl_tlv_array_len.exit40.i.thread.i.i.i, !prof !158

_iwl_tlv_array_len.exit40.i.i.i.i:                ; preds = %_iwl_tlv_array_len.exit.i.i.i.i
  %sub.i36.i.i.i.i = add i32 %29, -52
  %div1.i37.i.i.i.i = lshr i32 %sub.i36.i.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i.i.i)
  %cmp47.not.i.i.i.i = icmp eq i32 %retval.0.i.i.i.i.i, 0
  br i1 %cmp47.not.i.i.i.i, label %_iwl_tlv_array_len.exit40.i.i.i.i.for.end.i.split.i.i_crit_edge, label %for.cond8.preheader.lr.ph.i.i.i.i

_iwl_tlv_array_len.exit40.i.i.i.i.for.end.i.split.i.i_crit_edge: ; preds = %_iwl_tlv_array_len.exit40.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.split.i.i

_iwl_tlv_array_len.exit40.i.thread.i.i.i:         ; preds = %_iwl_tlv_array_len.exit.i.i.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 971, i32 noundef 9, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i.i.i)
  %cmp47.not.i21.i.i.i = icmp eq i32 %retval.0.i.i.i.i.i, 0
  br i1 %cmp47.not.i21.i.i.i, label %_iwl_tlv_array_len.exit40.i.thread.i.i.i.for.end.i.split.i.i_crit_edge, label %_iwl_tlv_array_len.exit40.i.thread.i.i.i.for.cond.backedge.i.i.i_crit_edge

_iwl_tlv_array_len.exit40.i.thread.i.i.i.for.cond.backedge.i.i.i_crit_edge: ; preds = %_iwl_tlv_array_len.exit40.i.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge.i.i.i

_iwl_tlv_array_len.exit40.i.thread.i.i.i.for.end.i.split.i.i_crit_edge: ; preds = %_iwl_tlv_array_len.exit40.i.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.split.i.i

for.cond8.preheader.lr.ph.i.i.i.i:                ; preds = %_iwl_tlv_array_len.exit40.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i36.i.i.i.i)
  %cmp944.not.i.i.i.i = icmp ult i32 %sub.i36.i.i.i.i, 4
  br i1 %cmp944.not.i.i.i.i, label %for.cond8.preheader.lr.ph.i.i.i.i.for.cond.backedge.i.i.i_crit_edge, label %for.cond8.preheader.lr.ph.i.i.i.i.for.cond8.preheader.i.i.i.i_crit_edge

for.cond8.preheader.lr.ph.i.i.i.i.for.cond8.preheader.i.i.i.i_crit_edge: ; preds = %for.cond8.preheader.lr.ph.i.i.i.i
  br label %for.cond8.preheader.i.i.i.i

for.cond8.preheader.lr.ph.i.i.i.i.for.cond.backedge.i.i.i_crit_edge: ; preds = %for.cond8.preheader.lr.ph.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge.i.i.i

for.cond8.preheader.i.i.i.i:                      ; preds = %for.inc15.critedge.i.i.i.i.for.cond8.preheader.i.i.i.i_crit_edge, %for.cond8.preheader.lr.ph.i.i.i.i.for.cond8.preheader.i.i.i.i_crit_edge
  %cmp49.i.i.i.i = phi i1 [ %cmp.i.i.i.i, %for.inc15.critedge.i.i.i.i.for.cond8.preheader.i.i.i.i_crit_edge ], [ true, %for.cond8.preheader.lr.ph.i.i.i.i.for.cond8.preheader.i.i.i.i_crit_edge ]
  %i.048.i.i.i.i = phi i32 [ %inc16.i.i.i.i, %for.inc15.critedge.i.i.i.i.for.cond8.preheader.i.i.i.i_crit_edge ], [ 0, %for.cond8.preheader.lr.ph.i.i.i.i.for.cond8.preheader.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr i32, ptr %data3.i.i.i.i, i32 %i.048.i.i.i.i
  %30 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i.i.i, align 4
  br label %for.body10.i.i.i.i

for.cond8.i.i.i.i:                                ; preds = %for.body10.i.i.i.i
  %inc.i.i.i.i = add nuw nsw i32 %j.045.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %div1.i37.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %for.cond8.i.i.i.i.is_trig_data_contained.exit.i.i.i_crit_edge, label %for.cond8.i.i.i.i.for.body10.i.i.i.i_crit_edge

for.cond8.i.i.i.i.for.body10.i.i.i.i_crit_edge:   ; preds = %for.cond8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10.i.i.i.i

for.cond8.i.i.i.i.is_trig_data_contained.exit.i.i.i_crit_edge: ; preds = %for.cond8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_trig_data_contained.exit.i.i.i

for.body10.i.i.i.i:                               ; preds = %for.cond8.i.i.i.i.for.body10.i.i.i.i_crit_edge, %for.cond8.preheader.i.i.i.i
  %j.045.i.i.i.i = phi i32 [ 0, %for.cond8.preheader.i.i.i.i ], [ %inc.i.i.i.i, %for.cond8.i.i.i.i.for.body10.i.i.i.i_crit_edge ]
  %arrayidx11.i.i.i.i = getelementptr i32, ptr %data5.i.i.i.i, i32 %j.045.i.i.i.i
  %32 = ptrtoint ptr %arrayidx11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx11.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp12.i.i.i.i = icmp eq i32 %31, %33
  br i1 %cmp12.i.i.i.i, label %for.inc15.critedge.i.i.i.i, label %for.cond8.i.i.i.i

for.inc15.critedge.i.i.i.i:                       ; preds = %for.body10.i.i.i.i
  %inc16.i.i.i.i = add nuw nsw i32 %i.048.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc16.i.i.i.i, i32 %retval.0.i.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %inc16.i.i.i.i, %retval.0.i.i.i.i.i
  %exitcond53.not.i.i.i.i = icmp eq i32 %inc16.i.i.i.i, %retval.0.i.i.i.i.i
  br i1 %exitcond53.not.i.i.i.i, label %for.inc15.critedge.i.i.i.i.is_trig_data_contained.exit.i.i.i_crit_edge, label %for.inc15.critedge.i.i.i.i.for.cond8.preheader.i.i.i.i_crit_edge

for.inc15.critedge.i.i.i.i.for.cond8.preheader.i.i.i.i_crit_edge: ; preds = %for.inc15.critedge.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond8.preheader.i.i.i.i

for.inc15.critedge.i.i.i.i.is_trig_data_contained.exit.i.i.i_crit_edge: ; preds = %for.inc15.critedge.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_trig_data_contained.exit.i.i.i

is_trig_data_contained.exit.i.i.i:                ; preds = %for.inc15.critedge.i.i.i.i.is_trig_data_contained.exit.i.i.i_crit_edge, %for.cond8.i.i.i.i.is_trig_data_contained.exit.i.i.i_crit_edge
  %cmp43.i.i.i.i = phi i1 [ %cmp49.i.i.i.i, %for.cond8.i.i.i.i.is_trig_data_contained.exit.i.i.i_crit_edge ], [ %cmp.i.i.i.i, %for.inc15.critedge.i.i.i.i.is_trig_data_contained.exit.i.i.i_crit_edge ]
  br i1 %cmp43.i.i.i.i, label %is_trig_data_contained.exit.i.i.i.for.cond.backedge.i.i.i_crit_edge, label %is_trig_data_contained.exit.i.i.i.for.end.i.split.i.i_crit_edge

is_trig_data_contained.exit.i.i.i.for.end.i.split.i.i_crit_edge: ; preds = %is_trig_data_contained.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.split.i.i

is_trig_data_contained.exit.i.i.i.for.cond.backedge.i.i.i_crit_edge: ; preds = %is_trig_data_contained.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge.i.i.i

for.cond.backedge.i.i.i:                          ; preds = %is_trig_data_contained.exit.i.i.i.for.cond.backedge.i.i.i_crit_edge, %for.cond8.preheader.lr.ph.i.i.i.i.for.cond.backedge.i.i.i_crit_edge, %_iwl_tlv_array_len.exit40.i.thread.i.i.i.for.cond.backedge.i.i.i_crit_edge
  %34 = ptrtoint ptr %node.016.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %node.0.i.i.i = load ptr, ptr %node.016.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %node.0.i.i.i, %active_trig_list2.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.backedge.i.i.i.do.end.i.i.i_crit_edge, label %for.cond.backedge.i.i.i.if.end.i.i.i_crit_edge

for.cond.backedge.i.i.i.if.end.i.i.i_crit_edge:   ; preds = %for.cond.backedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

for.cond.backedge.i.i.i.do.end.i.i.i_crit_edge:   ; preds = %for.cond.backedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i.i

for.end.i.split.i.i:                              ; preds = %is_trig_data_contained.exit.i.i.i.for.end.i.split.i.i_crit_edge, %_iwl_tlv_array_len.exit40.i.thread.i.i.i.for.end.i.split.i.i_crit_edge, %_iwl_tlv_array_len.exit40.i.i.i.i.for.end.i.split.i.i_crit_edge, %if.end.lr.ph.i.i.i.for.end.i.split.i.i_crit_edge
  %node.016.lcssa.i.split.i.i = phi ptr [ %node.013.i.i.i, %if.end.lr.ph.i.i.i.for.end.i.split.i.i_crit_edge ], [ %node.016.i.i.i, %_iwl_tlv_array_len.exit40.i.i.i.i.for.end.i.split.i.i_crit_edge ], [ %node.016.i.i.i, %_iwl_tlv_array_len.exit40.i.thread.i.i.i.for.end.i.split.i.i_crit_edge ], [ %node.016.i.i.i, %is_trig_data_contained.exit.i.i.i.for.end.i.split.i.i_crit_edge ]
  %tobool10.not.i.i.i = icmp eq ptr %node.016.lcssa.i.split.i.i, null
  br i1 %tobool10.not.i.i.i, label %for.end.i.split.i.i.do.end.i.i.i_crit_edge, label %if.end16.i.i.i

for.end.i.split.i.i.do.end.i.i.i_crit_edge:       ; preds = %for.end.i.split.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %for.end.i.split.i.i.do.end.i.i.i_crit_edge, %for.cond.backedge.i.i.i.do.end.i.i.i_crit_edge, %for.body.i.i.do.end.i.i.i_crit_edge
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 8
  %time_point.i.i.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.017.i.i, i32 1, i32 1
  %37 = ptrtoint ptr %time_point.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %time_point.i.i.i, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %36, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_add_active_trigger, ptr noundef nonnull @.str.25, i32 noundef %39) #8
  %length.i.i.i.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.017.i.i, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %length.i.i.i.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #8
  %add.i.i.i.i = add i32 %42, 16
  %call9.i.i.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i.i.i, i32 noundef 3520) #11
  %tobool.not.i.i.i.i = icmp eq ptr %call9.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %do.end.i.i.i.iwl_dbg_tlv_add_active_trigger.exit.i.i_crit_edge, label %if.end.i.i.i.i

do.end.i.i.i.iwl_dbg_tlv_add_active_trigger.exit.i.i_crit_edge: ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_add_active_trigger.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i
  %tlv1.i.i.i.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %call9.i.i.i.i.i.i, i32 0, i32 1
  %add2.i.i.i.i = add i32 %42, 8
  %43 = call ptr @memcpy(ptr %tlv1.i.i.i.i, ptr %tlv3.i.i, i32 %add2.i.i.i.i)
  %44 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i.i.i.i, ptr noundef %45, ptr noundef %active_trig_list2.i.i) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i9.i.i.i.i, label %if.end.i.i.i.i.iwl_dbg_tlv_add_active_trigger.exit.i.i_crit_edge

if.end.i.i.i.i.iwl_dbg_tlv_add_active_trigger.exit.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_add_active_trigger.exit.i.i

if.end.i.i9.i.i.i.i:                              ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call9.i.i.i.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %47 = ptrtoint ptr %call9.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %active_trig_list2.i.i, ptr %call9.i.i.i.i.i.i, align 128
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i.i.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev3.i.i.i.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %call9.i.i.i.i.i.i, ptr %45, align 4
  br label %iwl_dbg_tlv_add_active_trigger.exit.i.i

if.end16.i.i.i:                                   ; preds = %for.end.i.split.i.i
  %data1.i.i.i.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.017.i.i, i32 1
  %50 = ptrtoint ptr %apply_policy.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %apply_policy.i.i.i, align 1
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #8
  %53 = ptrtoint ptr %length.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %length.i.i.i.i.i, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #8
  %sub.i.i.i.i = add i32 %55, -52
  %and.i.i.i.i = and i32 %52, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i2.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i2.i.i.i, label %if.then.i.i.i.i, label %do.end12.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %length3.i.i.i.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.016.lcssa.i.split.i.i, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %length3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %length3.i.i.i.i, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #8
  %sub4.i.i.i.i = add i32 %58, -52
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 8
  %time_point.i.i.i.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.017.i.i, i32 1, i32 1
  %61 = ptrtoint ptr %time_point.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %time_point.i.i.i.i, align 1
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %60, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_override_trig_node, ptr noundef nonnull @.str.27, i32 noundef %63) #8
  %add8.i.i.i.i = add i32 %sub4.i.i.i.i, %55
  br label %if.end.i3.i.i.i

do.end12.i.i.i.i:                                 ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i, align 8
  %time_point14.i.i.i.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.017.i.i, i32 1, i32 1
  %66 = ptrtoint ptr %time_point14.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %time_point14.i.i.i.i, align 1
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %65, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_override_trig_node, ptr noundef nonnull @.str.28, i32 noundef %68) #8
  br label %if.end.i3.i.i.i

if.end.i3.i.i.i:                                  ; preds = %do.end12.i.i.i.i, %if.then.i.i.i.i
  %size.0.i.i.i.i = phi i32 [ %55, %do.end12.i.i.i.i ], [ %add8.i.i.i.i, %if.then.i.i.i.i ]
  %offset.0.i.i.i.i = phi i32 [ 0, %do.end12.i.i.i.i ], [ %sub4.i.i.i.i, %if.then.i.i.i.i ]
  %length17.i.i.i.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.016.lcssa.i.split.i.i, i32 0, i32 1, i32 1
  %69 = ptrtoint ptr %length17.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %length17.i.i.i.i, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0.i.i.i.i, i32 %71)
  %cmp.not.i.i.i.i = icmp eq i32 %size.0.i.i.i.i, %71
  br i1 %cmp.not.i.i.i.i, label %if.end.i3.i.i.i.if.end39.i.i.i.i_crit_edge, label %if.then18.i.i.i.i

if.end.i3.i.i.i.if.end39.i.i.i.i_crit_edge:       ; preds = %if.end.i3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i.i.i.i

if.then18.i.i.i.i:                                ; preds = %if.end.i3.i.i.i
  %prev19.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %node.016.lcssa.i.split.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %prev19.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev19.i.i.i.i, align 4
  %call.i.i.i4.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %node.016.lcssa.i.split.i.i) #8
  br i1 %call.i.i.i4.i.i.i, label %if.end.i.i.i5.i.i.i, label %if.then18.i.i.i.i.list_del.exit.i.i.i.i_crit_edge

if.then18.i.i.i.i.list_del.exit.i.i.i.i_crit_edge: ; preds = %if.then18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i.i.i.i

if.end.i.i.i5.i.i.i:                              ; preds = %if.then18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %prev19.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev19.i.i.i.i, align 4
  %76 = ptrtoint ptr %node.016.lcssa.i.split.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %node.016.lcssa.i.split.i.i, align 4
  %prev1.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %prev1.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev1.i.i.i.i.i.i.i, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %77, ptr %75, align 4
  br label %list_del.exit.i.i.i.i

list_del.exit.i.i.i.i:                            ; preds = %if.end.i.i.i5.i.i.i, %if.then18.i.i.i.i.list_del.exit.i.i.i.i_crit_edge
  %80 = ptrtoint ptr %node.016.lcssa.i.split.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr inttoptr (i32 256 to ptr), ptr %node.016.lcssa.i.split.i.i, align 4
  %81 = ptrtoint ptr %prev19.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr inttoptr (i32 290 to ptr), ptr %prev19.i.i.i.i, align 4
  %add21.i.i.i.i = add i32 %size.0.i.i.i.i, 16
  %call.i.i.i.i = tail call noalias ptr @krealloc(ptr noundef nonnull %node.016.lcssa.i.split.i.i, i32 noundef %add21.i.i.i.i, i32 noundef 3264) #12
  %tobool22.not.i.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool22.not.i.i.i.i, label %do.end27.i.i.i.i, label %if.end33.i.i.i.i

do.end27.i.i.i.i:                                 ; preds = %list_del.exit.i.i.i.i
  %82 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev.i, align 8
  %time_point29.i.i.i.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.017.i.i, i32 1, i32 1
  %84 = ptrtoint ptr %time_point29.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %time_point29.i.i.i.i, align 1
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #8
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %83, ptr noundef nonnull @.str.29, i32 noundef %86) #8
  %87 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %73, align 4
  %call.i.i126.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %node.016.lcssa.i.split.i.i, ptr noundef %73, ptr noundef %88) #8
  br i1 %call.i.i126.i.i.i.i, label %if.end.i.i127.i.i.i.i, label %do.end27.i.i.i.i.iwl_dbg_tlv_add_active_trigger.exit.i.i_crit_edge

do.end27.i.i.i.i.iwl_dbg_tlv_add_active_trigger.exit.i.i_crit_edge: ; preds = %do.end27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_add_active_trigger.exit.i.i

if.end.i.i127.i.i.i.i:                            ; preds = %do.end27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %node.016.lcssa.i.split.i.i, ptr %prev1.i.i.i.i.i.i, align 4
  %90 = ptrtoint ptr %node.016.lcssa.i.split.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %88, ptr %node.016.lcssa.i.split.i.i, align 4
  %91 = ptrtoint ptr %prev19.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %73, ptr %prev19.i.i.i.i, align 4
  %92 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %node.016.lcssa.i.split.i.i, ptr %73, align 4
  br label %iwl_dbg_tlv_add_active_trigger.exit.i.i

if.end33.i.i.i.i:                                 ; preds = %list_del.exit.i.i.i.i
  %93 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %73, align 4
  %call.i.i128.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i.i.i, ptr noundef %73, ptr noundef %94) #8
  br i1 %call.i.i128.i.i.i.i, label %if.end.i.i131.i.i.i.i, label %if.end33.i.i.i.i.if.end39.i.i.i.i_crit_edge

if.end33.i.i.i.i.if.end39.i.i.i.i_crit_edge:      ; preds = %if.end33.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i.i.i.i

if.end.i.i131.i.i.i.i:                            ; preds = %if.end33.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i129.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %prev1.i.i129.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call.i.i.i.i, ptr %prev1.i.i129.i.i.i.i, align 4
  %96 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %94, ptr %call.i.i.i.i, align 4
  %prev3.i.i130.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i.i.i, i32 0, i32 1
  %97 = ptrtoint ptr %prev3.i.i130.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %73, ptr %prev3.i.i130.i.i.i.i, align 4
  %98 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %call.i.i.i.i, ptr %73, align 4
  br label %if.end39.i.i.i.i

if.end39.i.i.i.i:                                 ; preds = %if.end.i.i131.i.i.i.i, %if.end33.i.i.i.i.if.end39.i.i.i.i_crit_edge, %if.end.i3.i.i.i.if.end39.i.i.i.i_crit_edge
  %call.pn.i.i.i.i = phi ptr [ %node.016.lcssa.i.split.i.i, %if.end.i3.i.i.i.if.end39.i.i.i.i_crit_edge ], [ %call.i.i.i.i, %if.end.i.i131.i.i.i.i ], [ %call.i.i.i.i, %if.end33.i.i.i.i.if.end39.i.i.i.i_crit_edge ]
  %data40.i.i.i.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %call.pn.i.i.i.i, i32 4, i32 0, i32 1
  %add.ptr.i.i.i.i = getelementptr i32, ptr %data40.i.i.i.i, i32 %offset.0.i.i.i.i
  %99 = call ptr @memcpy(ptr %add.ptr.i.i.i.i, ptr %data3.i.i.i.i, i32 %sub.i.i.i.i)
  %100 = tail call i32 @llvm.bswap.i32(i32 %size.0.i.i.i.i) #8
  %length44.i.i.i.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %call.pn.i.i.i.i, i32 0, i32 1, i32 1
  %101 = ptrtoint ptr %length44.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %length44.i.i.i.i, align 4
  %and45.i.i.i.i = and i32 %52, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i.i.i.i)
  %tobool46.not.i.i.i.i = icmp eq i32 %and45.i.i.i.i, 0
  br i1 %tobool46.not.i.i.i.i, label %if.end39.i.i.i.i.if.end56.i.i.i.i_crit_edge, label %do.end51.i.i.i.i

if.end39.i.i.i.i.if.end56.i.i.i.i_crit_edge:      ; preds = %if.end39.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.i.i.i.i

do.end51.i.i.i.i:                                 ; preds = %if.end39.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %node_trig.1.i.i.i.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %call.pn.i.i.i.i, i32 1
  %102 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev.i, align 8
  %time_point53.i.i.i.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.017.i.i, i32 1, i32 1
  %104 = ptrtoint ptr %time_point53.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %time_point53.i.i.i.i, align 1
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %103, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_override_trig_node, ptr noundef nonnull @.str.30, i32 noundef %106) #8
  %107 = call ptr @memcpy(ptr %node_trig.1.i.i.i.i, ptr %data1.i.i.i.i, i32 44)
  br label %if.end56.i.i.i.i

if.end56.i.i.i.i:                                 ; preds = %do.end51.i.i.i.i, %if.end39.i.i.i.i.if.end56.i.i.i.i_crit_edge
  %and57.i.i.i.i = and i32 %52, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i.i.i.i)
  %tobool58.not.i.i.i.i = icmp eq i32 %and57.i.i.i.i, 0
  %108 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i, align 8
  %time_point75.i.i.i.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.017.i.i, i32 1, i32 1
  %110 = ptrtoint ptr %time_point75.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %time_point75.i.i.i.i, align 1
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #8
  br i1 %tobool58.not.i.i.i.i, label %do.end73.i.i.i.i, label %do.end63.i.i.i.i

do.end63.i.i.i.i:                                 ; preds = %if.end56.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %109, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_override_trig_node, ptr noundef nonnull @.str.31, i32 noundef %112) #8
  %regions_mask.i.i.i.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.017.i.i, i32 3, i32 1, i32 1
  %113 = ptrtoint ptr %regions_mask.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %113, i32 8)
  %114 = load i64, ptr %regions_mask.i.i.i.i, align 1
  %regions_mask68.i.i.i.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %call.pn.i.i.i.i, i32 3, i32 1, i32 1
  %115 = ptrtoint ptr %regions_mask68.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %115, i32 8)
  store i64 %114, ptr %regions_mask68.i.i.i.i, align 1
  br label %iwl_dbg_tlv_add_active_trigger.exit.i.i

do.end73.i.i.i.i:                                 ; preds = %if.end56.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %109, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_override_trig_node, ptr noundef nonnull @.str.32, i32 noundef %112) #8
  %regions_mask78.i.i.i.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.017.i.i, i32 3, i32 1, i32 1
  %116 = ptrtoint ptr %regions_mask78.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %116, i32 8)
  %117 = load i64, ptr %regions_mask78.i.i.i.i, align 1
  %regions_mask79.i.i.i.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %call.pn.i.i.i.i, i32 3, i32 1, i32 1
  %118 = ptrtoint ptr %regions_mask79.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 8)
  %119 = load i64, ptr %regions_mask79.i.i.i.i, align 1
  %or.i.i.i.i = or i64 %119, %117
  store i64 %or.i.i.i.i, ptr %regions_mask79.i.i.i.i, align 1
  br label %iwl_dbg_tlv_add_active_trigger.exit.i.i

iwl_dbg_tlv_add_active_trigger.exit.i.i:          ; preds = %do.end73.i.i.i.i, %do.end63.i.i.i.i, %if.end.i.i127.i.i.i.i, %do.end27.i.i.i.i.iwl_dbg_tlv_add_active_trigger.exit.i.i_crit_edge, %if.end.i.i9.i.i.i.i, %if.end.i.i.i.i.iwl_dbg_tlv_add_active_trigger.exit.i.i_crit_edge, %do.end.i.i.i.iwl_dbg_tlv_add_active_trigger.exit.i.i_crit_edge
  %120 = ptrtoint ptr %node.017.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %node.0.i.i = load ptr, ptr %node.017.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %node.0.i.i, %arrayidx.i
  br i1 %cmp.not.i.i, label %iwl_dbg_tlv_add_active_trigger.exit.i.i.iwl_dbg_tlv_gen_active_trig_list.exit.i_crit_edge, label %iwl_dbg_tlv_add_active_trigger.exit.i.i.for.body.i.i_crit_edge

iwl_dbg_tlv_add_active_trigger.exit.i.i.for.body.i.i_crit_edge: ; preds = %iwl_dbg_tlv_add_active_trigger.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

iwl_dbg_tlv_add_active_trigger.exit.i.i.iwl_dbg_tlv_gen_active_trig_list.exit.i_crit_edge: ; preds = %iwl_dbg_tlv_add_active_trigger.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_gen_active_trig_list.exit.i

iwl_dbg_tlv_gen_active_trig_list.exit.i:          ; preds = %iwl_dbg_tlv_add_active_trigger.exit.i.i.iwl_dbg_tlv_gen_active_trig_list.exit.i_crit_edge, %for.body.i.iwl_dbg_tlv_gen_active_trig_list.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0167.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 27
  br i1 %exitcond.not.i, label %for.end.i, label %iwl_dbg_tlv_gen_active_trig_list.exit.i.for.body.i_crit_edge

iwl_dbg_tlv_gen_active_trig_list.exit.i.for.body.i_crit_edge: ; preds = %iwl_dbg_tlv_gen_active_trig_list.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %iwl_dbg_tlv_gen_active_trig_list.exit.i
  %121 = ptrtoint ptr %ini_dest1.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %ini_dest1.i, align 4
  %fw.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 1
  br label %for.body12.i

for.body12.i:                                     ; preds = %cleanup.i.for.body12.i_crit_edge, %for.end.i
  %failed_alloc.0174.i = phi i32 [ 0, %for.end.i ], [ %failed_alloc.2.i, %cleanup.i.for.body12.i_crit_edge ]
  %i.1169.i = phi i32 [ 0, %for.end.i ], [ %inc39.i, %cleanup.i.for.body12.i_crit_edge ]
  %122 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %fwrt, align 8
  %buf_location.i = getelementptr %struct.iwl_trans, ptr %123, i32 0, i32 32, i32 12, i32 %i.1169.i, i32 2
  %124 = ptrtoint ptr %buf_location.i to i32
  call void @__asan_loadN_noabort(i32 %124, i32 4)
  %125 = load i32, ptr %buf_location.i, align 1
  %126 = call i32 @llvm.bswap.i32(i32 %125) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp17.i = icmp eq i32 %125, 0
  br i1 %cmp17.i, label %if.then18.i, label %if.end19.i

if.then18.i:                                      ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i = shl nuw nsw i32 1, %i.1169.i
  %or.i = or i32 %shl.i, %failed_alloc.0174.i
  br label %cleanup.i

if.end19.i:                                       ; preds = %for.body12.i
  %127 = ptrtoint ptr %ini_dest1.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %ini_dest1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp20.i = icmp eq i32 %128, 0
  br i1 %cmp20.i, label %if.then21.i, label %if.end19.i.if.end22.i_crit_edge

if.end19.i.if.end22.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %129 = ptrtoint ptr %ini_dest1.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %126, ptr %ini_dest1.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %if.end19.i.if.end22.i_crit_edge
  %130 = ptrtoint ptr %ini_dest1.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %ini_dest1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %131)
  %cmp23.not.i = icmp eq i32 %126, %131
  br i1 %cmp23.not.i, label %if.end.i.i, label %if.end22.i.cleanup.i_crit_edge

if.end22.i.cleanup.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end.i.i:                                       ; preds = %if.end22.i
  %132 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %fwrt, align 8
  %arrayidx5.i.i = getelementptr %struct.iwl_trans, ptr %133, i32 0, i32 32, i32 13, i32 %i.1169.i
  %134 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool.not.i.i = icmp eq i32 %135, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false7.i.i, label %if.end.i.i.cleanup.i_crit_edge

if.end.i.i.cleanup.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

lor.lhs.false7.i.i:                               ; preds = %if.end.i.i
  %buf_location.i.i = getelementptr %struct.iwl_trans, ptr %133, i32 0, i32 32, i32 12, i32 %i.1169.i, i32 2
  %136 = ptrtoint ptr %buf_location.i.i to i32
  call void @__asan_loadN_noabort(i32 %136, i32 4)
  %137 = load i32, ptr %buf_location.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %137)
  %cmp8.not.i.i = icmp eq i32 %137, 33554432
  br i1 %cmp8.not.i.i, label %if.end10.i.i, label %lor.lhs.false7.i.i.cleanup.i_crit_edge

lor.lhs.false7.i.i.cleanup.i_crit_edge:           ; preds = %lor.lhs.false7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end10.i.i:                                     ; preds = %lor.lhs.false7.i.i
  %max_frags_num.i.i = getelementptr %struct.iwl_trans, ptr %133, i32 0, i32 32, i32 12, i32 %i.1169.i, i32 4
  %138 = ptrtoint ptr %max_frags_num.i.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %max_frags_num.i.i, align 1
  %140 = call i32 @llvm.bswap.i32(i32 %139) #8
  %141 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %fw.i.i, align 4
  %arrayidx.i.i.i138.i = getelementptr %struct.iwl_fw, ptr %142, i32 0, i32 5, i32 8, i32 2
  %143 = ptrtoint ptr %arrayidx.i.i.i138.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %arrayidx.i.i.i138.i, align 4
  %145 = and i32 %144, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool.i.not.i.i = icmp eq i32 %145, 0
  br i1 %tobool.i.not.i.i, label %if.then11.i.i, label %if.end10.i.i.if.end15.i.i_crit_edge

if.end10.i.i.if.end15.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i

if.then11.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.1169.i)
  %cmp12.not.i.i = icmp eq i32 %i.1169.i, 1
  br i1 %cmp12.not.i.i, label %if.then11.i.i.if.end15.i.i_crit_edge, label %if.then11.i.i.do.end30.i_crit_edge

if.then11.i.i.do.end30.i_crit_edge:               ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30.i

if.then11.i.i.if.end15.i.i_crit_edge:             ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then11.i.i.if.end15.i.i_crit_edge, %if.end10.i.i.if.end15.i.i_crit_edge
  %num_frags.0.i.i = phi i32 [ %140, %if.end10.i.i.if.end15.i.i_crit_edge ], [ 1, %if.then11.i.i.if.end15.i.i_crit_edge ]
  %req_size.i.i = getelementptr %struct.iwl_trans, ptr %133, i32 0, i32 32, i32 12, i32 %i.1169.i, i32 3
  %146 = ptrtoint ptr %req_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %146, i32 4)
  %147 = load i32, ptr %req_size.i.i, align 1
  %148 = call i32 @llvm.bswap.i32(i32 %147) #8
  %sub.i.i = add i32 %148, 4095
  %div105.i.i = lshr i32 %sub.i.i, 12
  %149 = call i32 @llvm.umin.i32(i32 %num_frags.0.i.i, i32 %div105.i.i) #8
  %150 = call i32 @llvm.umin.i32(i32 %149, i32 16) #8
  %add23.i.i = add nsw i32 %div105.i.i, -1
  %sub24.i.i = add nsw i32 %add23.i.i, %150
  %div25.i.i = udiv i32 %sub24.i.i, %150
  %151 = mul nuw nsw i32 %150, 12
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %151, i32 noundef 3520) #11
  %frags.i.i = getelementptr %struct.iwl_trans, ptr %133, i32 0, i32 32, i32 13, i32 %i.1169.i, i32 1
  %152 = ptrtoint ptr %frags.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call8.i.i.i.i, ptr %frags.i.i, align 4
  %tobool28.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool28.not.i.i, label %if.end15.i.i.do.end30.i_crit_edge, label %for.cond.preheader.i.i

if.end15.i.i.do.end30.i_crit_edge:                ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30.i

for.cond.preheader.i.i:                           ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp31134.not.i.i = icmp eq i32 %150, 0
  br i1 %cmp31134.not.i.i, label %for.cond.preheader.i.i.cleanup.i_crit_edge, label %for.cond.preheader.i.i.for.body.i143.i_crit_edge

for.cond.preheader.i.i.for.body.i143.i_crit_edge: ; preds = %for.cond.preheader.i.i
  br label %for.body.i143.i

for.cond.preheader.i.i.cleanup.i_crit_edge:       ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

for.body.i143.i:                                  ; preds = %for.inc.i.i.for.body.i143.i_crit_edge, %for.cond.preheader.i.i.for.body.i143.i_crit_edge
  %i.0136.i.i = phi i32 [ %inc57.i.i, %for.inc.i.i.for.body.i143.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i143.i_crit_edge ]
  %remain_pages.0135.i.i = phi i32 [ %sub54.i.i, %for.inc.i.i.for.body.i143.i_crit_edge ], [ %div105.i.i, %for.cond.preheader.i.i.for.body.i143.i_crit_edge ]
  %153 = call i32 @llvm.umin.i32(i32 %div25.i.i, i32 %remain_pages.0135.i.i) #8
  %154 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev.i, align 8
  %mul.i.i = shl i32 %153, 12
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %155, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_alloc_fragments, ptr noundef nonnull @.str.33, i32 noundef %i.1169.i, i32 noundef %i.0136.i.i, i32 noundef %mul.i.i) #8
  %156 = ptrtoint ptr %frags.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %frags.i.i, align 4
  %arrayidx42.i.i = getelementptr %struct.iwl_dram_data, ptr %157, i32 %i.0136.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %physical.i.i.i) #8
  %158 = ptrtoint ptr %physical.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 -1, ptr %physical.i.i.i, align 4, !annotation !156
  %tobool.not.i.i142.i = icmp eq ptr %arrayidx42.i.i, null
  br i1 %tobool.not.i.i142.i, label %for.body.i143.i.iwl_dbg_tlv_alloc_fragment.exit.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i

for.body.i143.i.iwl_dbg_tlv_alloc_fragment.exit.thread.i.i_crit_edge: ; preds = %for.body.i143.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_alloc_fragment.exit.thread.i.i

lor.lhs.false.i.i.i:                              ; preds = %for.body.i143.i
  %size.i.i.i = getelementptr %struct.iwl_dram_data, ptr %157, i32 %i.0136.i.i, i32 2
  %159 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool1.not.i.i.i = icmp ne i32 %160, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool3.not.i.i.i = icmp eq i32 %153, 0
  %or.cond.i.i.i = or i1 %tobool3.not.i.i.i, %tobool1.not.i.i.i
  br i1 %or.cond.i.i.i, label %lor.lhs.false.i.i.i.iwl_dbg_tlv_alloc_fragment.exit.thread.i.i_crit_edge, label %while.cond.preheader.i.i.i

lor.lhs.false.i.i.i.iwl_dbg_tlv_alloc_fragment.exit.thread.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_alloc_fragment.exit.thread.i.i

while.cond.preheader.i.i.i:                       ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %153)
  %cmp37.i.i.i = icmp ugt i32 %153, 1
  br i1 %cmp37.i.i.i, label %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge, label %while.cond.preheader.i.i.i.iwl_dbg_tlv_alloc_fragment.exit.thread.i.i_crit_edge

while.cond.preheader.i.i.i.iwl_dbg_tlv_alloc_fragment.exit.thread.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_alloc_fragment.exit.thread.i.i

while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %do.end.i.i145.i.while.body.i.i.i_crit_edge, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge
  %pages.addr.038.i.i.i = phi i32 [ %div33.i.i.i, %do.end.i.i145.i.while.body.i.i.i_crit_edge ], [ %153, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge ]
  %161 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev.i, align 8
  %mul.i.i.i = shl i32 %pages.addr.038.i.i.i, 12
  %call.i.i.i144.i = call ptr @dma_alloc_attrs(ptr noundef %162, i32 noundef %mul.i.i.i, ptr noundef nonnull %physical.i.i.i, i32 noundef 11456, i32 noundef 256) #8
  %tobool4.not.i.i.i = icmp eq ptr %call.i.i.i144.i, null
  br i1 %tobool4.not.i.i.i, label %do.end.i.i145.i, label %iwl_dbg_tlv_alloc_fragment.exit.i.i

do.end.i.i145.i:                                  ; preds = %while.body.i.i.i
  %163 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %164, ptr noundef nonnull @.str.34, i32 noundef %mul.i.i.i) #8
  %sub.i.i.i = add i32 %pages.addr.038.i.i.i, 1
  %div33.i.i.i = lshr i32 %sub.i.i.i, 1
  %cmp.i.i.i = icmp ugt i32 %sub.i.i.i, 3
  br i1 %cmp.i.i.i, label %do.end.i.i145.i.while.body.i.i.i_crit_edge, label %do.end.i.i145.i.iwl_dbg_tlv_alloc_fragment.exit.thread.i.i_crit_edge

do.end.i.i145.i.iwl_dbg_tlv_alloc_fragment.exit.thread.i.i_crit_edge: ; preds = %do.end.i.i145.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_alloc_fragment.exit.thread.i.i

do.end.i.i145.i.while.body.i.i.i_crit_edge:       ; preds = %do.end.i.i145.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i

iwl_dbg_tlv_alloc_fragment.exit.thread.i.i:       ; preds = %do.end.i.i145.i.iwl_dbg_tlv_alloc_fragment.exit.thread.i.i_crit_edge, %while.cond.preheader.i.i.i.iwl_dbg_tlv_alloc_fragment.exit.thread.i.i_crit_edge, %lor.lhs.false.i.i.i.iwl_dbg_tlv_alloc_fragment.exit.thread.i.i_crit_edge, %for.body.i143.i.iwl_dbg_tlv_alloc_fragment.exit.thread.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ -12, %do.end.i.i145.i.iwl_dbg_tlv_alloc_fragment.exit.thread.i.i_crit_edge ], [ -5, %lor.lhs.false.i.i.i.iwl_dbg_tlv_alloc_fragment.exit.thread.i.i_crit_edge ], [ -5, %for.body.i143.i.iwl_dbg_tlv_alloc_fragment.exit.thread.i.i_crit_edge ], [ -12, %while.cond.preheader.i.i.i.iwl_dbg_tlv_alloc_fragment.exit.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %physical.i.i.i) #8
  br label %if.then45.i.i

iwl_dbg_tlv_alloc_fragment.exit.i.i:              ; preds = %while.body.i.i.i
  %165 = ptrtoint ptr %physical.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %physical.i.i.i, align 4
  %167 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %arrayidx42.i.i, align 4
  %block16.i.i.i = getelementptr %struct.iwl_dram_data, ptr %157, i32 %i.0136.i.i, i32 1
  %168 = ptrtoint ptr %block16.i.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %call.i.i.i144.i, ptr %block16.i.i.i, align 4
  %169 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %mul.i.i.i, ptr %size.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %physical.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages.addr.038.i.i.i)
  %cmp44.i.i = icmp slt i32 %pages.addr.038.i.i.i, 0
  br i1 %cmp44.i.i, label %iwl_dbg_tlv_alloc_fragment.exit.i.i.if.then45.i.i_crit_edge, label %for.inc.i.i

iwl_dbg_tlv_alloc_fragment.exit.i.i.if.then45.i.i_crit_edge: ; preds = %iwl_dbg_tlv_alloc_fragment.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45.i.i

if.then45.i.i:                                    ; preds = %iwl_dbg_tlv_alloc_fragment.exit.i.i.if.then45.i.i_crit_edge, %iwl_dbg_tlv_alloc_fragment.exit.thread.i.i
  %retval.0.i114.i.i = phi i32 [ %retval.0.i.ph.i.i, %iwl_dbg_tlv_alloc_fragment.exit.thread.i.i ], [ %pages.addr.038.i.i.i, %iwl_dbg_tlv_alloc_fragment.exit.i.i.if.then45.i.i_crit_edge ]
  %170 = ptrtoint ptr %req_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %170, i32 4)
  %171 = load i32, ptr %req_size.i.i, align 1
  %172 = call i32 @llvm.bswap.i32(i32 %171) #8
  %mul47.neg.i.i = mul i32 %remain_pages.0135.i.i, -4096
  %sub48.i.i = add i32 %172, %mul47.neg.i.i
  %min_size.i.i = getelementptr %struct.iwl_trans, ptr %133, i32 0, i32 32, i32 12, i32 %i.1169.i, i32 5
  %173 = ptrtoint ptr %min_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %173, i32 4)
  %174 = load i32, ptr %min_size.i.i, align 1
  %175 = call i32 @llvm.bswap.i32(i32 %174) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub48.i.i, i32 %175)
  %cmp49.i.i = icmp ult i32 %sub48.i.i, %175
  br i1 %cmp49.i.i, label %if.then50.i.i, label %if.then45.i.i.cleanup.i_crit_edge

if.then45.i.i.cleanup.i_crit_edge:                ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.then50.i.i:                                    ; preds = %if.then45.i.i
  %176 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %fwrt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1169.i)
  %cmp.i106.i.i = icmp eq i32 %i.1169.i, 0
  br i1 %cmp.i106.i.i, label %if.then50.i.i.do.end30.i_crit_edge, label %if.end.i.i146.i

if.then50.i.i.do.end30.i_crit_edge:               ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30.i

if.end.i.i146.i:                                  ; preds = %if.then50.i.i
  %arrayidx.i.i.i = getelementptr %struct.iwl_trans, ptr %177, i32 0, i32 32, i32 13, i32 %i.1169.i
  %178 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %cmp225.not.i.i.i = icmp eq i32 %179, 0
  br i1 %cmp225.not.i.i.i, label %if.end.i.i146.i.iwl_dbg_tlv_alloc_fragments.exit.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end.i.i146.i.iwl_dbg_tlv_alloc_fragments.exit.i_crit_edge: ; preds = %if.end.i.i146.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_alloc_fragments.exit.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i.i146.i
  %frags.i.i.i = getelementptr %struct.iwl_trans, ptr %177, i32 0, i32 32, i32 13, i32 %i.1169.i, i32 1
  %dev.i107.i.i = getelementptr inbounds %struct.iwl_trans, ptr %177, i32 0, i32 8
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.026.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %180 = ptrtoint ptr %frags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %frags.i.i.i, align 4
  %arrayidx3.i.i.i = getelementptr %struct.iwl_dram_data, ptr %181, i32 %i.026.i.i.i
  %182 = ptrtoint ptr %dev.i107.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dev.i107.i.i, align 8
  %size.i108.i.i = getelementptr %struct.iwl_dram_data, ptr %181, i32 %i.026.i.i.i, i32 2
  %184 = ptrtoint ptr %size.i108.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %size.i108.i.i, align 4
  %block.i.i.i = getelementptr %struct.iwl_dram_data, ptr %181, i32 %i.026.i.i.i, i32 1
  %186 = ptrtoint ptr %block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %block.i.i.i, align 4
  %188 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx3.i.i.i, align 4
  call void @dma_free_attrs(ptr noundef %183, i32 noundef %185, ptr noundef %187, i32 noundef %189, i32 noundef 0) #8
  %190 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %arrayidx3.i.i.i, align 4
  %191 = ptrtoint ptr %block.i.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr null, ptr %block.i.i.i, align 4
  %192 = ptrtoint ptr %size.i108.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 0, ptr %size.i108.i.i, align 4
  %inc.i.i.i = add nuw i32 %i.026.i.i.i, 1
  %193 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx.i.i.i, align 4
  %cmp2.i.i.i = icmp ult i32 %inc.i.i.i, %194
  br i1 %cmp2.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.iwl_dbg_tlv_alloc_fragments.exit.i_crit_edge

for.body.i.i.i.iwl_dbg_tlv_alloc_fragments.exit.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_alloc_fragments.exit.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.inc.i.i:                                      ; preds = %iwl_dbg_tlv_alloc_fragment.exit.i.i
  %sub54.i.i = sub i32 %remain_pages.0135.i.i, %pages.addr.038.i.i.i
  %195 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx5.i.i, align 4
  %inc.i.i = add i32 %196, 1
  store i32 %inc.i.i, ptr %arrayidx5.i.i, align 4
  %inc57.i.i = add nuw nsw i32 %i.0136.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc57.i.i, %150
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup.i_crit_edge, label %for.inc.i.i.for.body.i143.i_crit_edge

for.inc.i.i.for.body.i143.i_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i143.i

for.inc.i.i.cleanup.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

iwl_dbg_tlv_alloc_fragments.exit.i:               ; preds = %for.body.i.i.i.iwl_dbg_tlv_alloc_fragments.exit.i_crit_edge, %if.end.i.i146.i.iwl_dbg_tlv_alloc_fragments.exit.i_crit_edge
  %frags7.i.i.i = getelementptr %struct.iwl_trans, ptr %177, i32 0, i32 32, i32 13, i32 %i.1169.i, i32 1
  %197 = ptrtoint ptr %frags7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %frags7.i.i.i, align 4
  call void @kfree(ptr noundef %198) #8
  %199 = ptrtoint ptr %frags7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr null, ptr %frags7.i.i.i, align 4
  %200 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 0, ptr %arrayidx.i.i.i, align 4
  br label %do.end30.i

do.end30.i:                                       ; preds = %iwl_dbg_tlv_alloc_fragments.exit.i, %if.then50.i.i.do.end30.i_crit_edge, %if.end15.i.i.do.end30.i_crit_edge, %if.then11.i.i.do.end30.i_crit_edge
  %retval.3.i153.i = phi i32 [ %retval.0.i114.i.i, %iwl_dbg_tlv_alloc_fragments.exit.i ], [ %retval.0.i114.i.i, %if.then50.i.i.do.end30.i_crit_edge ], [ -12, %if.end15.i.i.do.end30.i_crit_edge ], [ -5, %if.then11.i.i.do.end30.i_crit_edge ]
  %201 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %202, ptr noundef nonnull @.str.23, i32 noundef %i.1169.i, i32 noundef %retval.3.i153.i) #8
  %shl34.i = shl nuw i32 1, %i.1169.i
  %or35.i = or i32 %shl34.i, %failed_alloc.0174.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end30.i, %for.inc.i.i.cleanup.i_crit_edge, %if.then45.i.i.cleanup.i_crit_edge, %for.cond.preheader.i.i.cleanup.i_crit_edge, %lor.lhs.false7.i.i.cleanup.i_crit_edge, %if.end.i.i.cleanup.i_crit_edge, %if.end22.i.cleanup.i_crit_edge, %if.then18.i
  %failed_alloc.2.i = phi i32 [ %or.i, %if.then18.i ], [ %failed_alloc.0174.i, %if.end22.i.cleanup.i_crit_edge ], [ %or35.i, %do.end30.i ], [ %failed_alloc.0174.i, %lor.lhs.false7.i.i.cleanup.i_crit_edge ], [ %failed_alloc.0174.i, %if.end.i.i.cleanup.i_crit_edge ], [ %failed_alloc.0174.i, %if.then45.i.i.cleanup.i_crit_edge ], [ %failed_alloc.0174.i, %for.cond.preheader.i.i.cleanup.i_crit_edge ], [ %failed_alloc.0174.i, %for.inc.i.i.cleanup.i_crit_edge ]
  %inc39.i = add nuw nsw i32 %i.1169.i, 1
  %exitcond196.not.i = icmp eq i32 %inc39.i, 5
  br i1 %exitcond196.not.i, label %for.end40.i, label %cleanup.i.for.body12.i_crit_edge

cleanup.i.for.body12.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body12.i

for.end40.i:                                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %failed_alloc.2.i)
  %tobool41.not.i = icmp eq i32 %failed_alloc.2.i, 0
  br i1 %tobool41.not.i, label %for.end40.i.iwl_dbg_tlv_init_cfg.exit_crit_edge, label %for.end40.i.for.body47.i_crit_edge

for.end40.i.for.body47.i_crit_edge:               ; preds = %for.end40.i
  br label %for.body47.i

for.end40.i.iwl_dbg_tlv_init_cfg.exit_crit_edge:  ; preds = %for.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_init_cfg.exit

for.body47.i:                                     ; preds = %cleanup79.i.for.body47.i_crit_edge, %for.end40.i.for.body47.i_crit_edge
  %failed_alloc.3182.i = phi i32 [ %failed_alloc.4.i, %cleanup79.i.for.body47.i_crit_edge ], [ %failed_alloc.2.i, %for.end40.i.for.body47.i_crit_edge ]
  %i.2180.i = phi i32 [ %inc85.i, %cleanup79.i.for.body47.i_crit_edge ], [ 0, %for.end40.i.for.body47.i_crit_edge ]
  %203 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %fwrt, align 8
  %arrayidx50.i = getelementptr %struct.iwl_trans, ptr %204, i32 0, i32 32, i32 18, i32 %i.2180.i
  %205 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %arrayidx50.i, align 4
  %tobool51.not.i = icmp eq ptr %206, null
  br i1 %tobool51.not.i, label %if.then52.i, label %if.end57.i

if.then52.i:                                      ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl53.i = shl nuw i32 1, %i.2180.i
  %conv.i = zext i32 %shl53.i to i64
  %unsupported_region_msk.i = getelementptr inbounds %struct.iwl_trans, ptr %204, i32 0, i32 32, i32 17
  %207 = ptrtoint ptr %unsupported_region_msk.i to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %unsupported_region_msk.i, align 8
  %or56.i = or i64 %208, %conv.i
  store i64 %or56.i, ptr %unsupported_region_msk.i, align 8
  br label %cleanup79.i

if.end57.i:                                       ; preds = %for.body47.i
  %type.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %206, i32 2, i32 1
  %209 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %210)
  %cmp59.not.i = icmp eq i8 %210, 3
  br i1 %cmp59.not.i, label %lor.lhs.false.i, label %if.end57.i.cleanup79.i_crit_edge

if.end57.i.cleanup79.i_crit_edge:                 ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup79.i

lor.lhs.false.i:                                  ; preds = %if.end57.i
  %211 = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %206, i32 7
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_loadN_noabort(i32 %212, i32 4)
  %213 = load i32, ptr %211, align 1
  %214 = call i32 @llvm.bswap.i32(i32 %213) #8
  %shl61.i = shl nuw i32 1, %214
  %and.i = and i32 %shl61.i, %failed_alloc.3182.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool62.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool62.not.i, label %lor.lhs.false.i.cleanup79.i_crit_edge, label %do.end68.i

lor.lhs.false.i.cleanup79.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup79.i

do.end68.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %215 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dev.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %216, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_init_cfg, ptr noundef nonnull @.str.24, i32 noundef %214, i32 noundef %i.2180.i) #8
  %217 = ptrtoint ptr %211 to i32
  call void @__asan_loadN_noabort(i32 %217, i32 4)
  %218 = load i32, ptr %211, align 1
  %219 = xor i32 %218, -1
  %220 = call i32 @llvm.bswap.i32(i32 %219) #8
  %and72.i = and i32 %220, %failed_alloc.3182.i
  %shl73.i = shl nuw i32 1, %i.2180.i
  %conv74.i = zext i32 %shl73.i to i64
  %221 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %fwrt, align 8
  %unsupported_region_msk77.i = getelementptr inbounds %struct.iwl_trans, ptr %222, i32 0, i32 32, i32 17
  %223 = ptrtoint ptr %unsupported_region_msk77.i to i32
  call void @__asan_load8_noabort(i32 %223)
  %224 = load i64, ptr %unsupported_region_msk77.i, align 8
  %or78.i = or i64 %224, %conv74.i
  store i64 %or78.i, ptr %unsupported_region_msk77.i, align 8
  %225 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %arrayidx50.i, align 4
  call void @kfree(ptr noundef %226) #8
  %227 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr null, ptr %arrayidx50.i, align 4
  br label %cleanup79.i

cleanup79.i:                                      ; preds = %do.end68.i, %lor.lhs.false.i.cleanup79.i_crit_edge, %if.end57.i.cleanup79.i_crit_edge, %if.then52.i
  %failed_alloc.4.i = phi i32 [ %and72.i, %do.end68.i ], [ %failed_alloc.3182.i, %if.then52.i ], [ %failed_alloc.3182.i, %lor.lhs.false.i.cleanup79.i_crit_edge ], [ %failed_alloc.3182.i, %if.end57.i.cleanup79.i_crit_edge ]
  %inc85.i = add nuw nsw i32 %i.2180.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %i.2180.i)
  %cmp45.i = icmp ugt i32 %i.2180.i, 62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %failed_alloc.4.i)
  %tobool46.not.i = icmp eq i32 %failed_alloc.4.i, 0
  %or.cond.i = select i1 %cmp45.i, i1 true, i1 %tobool46.not.i
  br i1 %or.cond.i, label %cleanup79.i.iwl_dbg_tlv_init_cfg.exit_crit_edge, label %cleanup79.i.for.body47.i_crit_edge

cleanup79.i.for.body47.i_crit_edge:               ; preds = %cleanup79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body47.i

cleanup79.i.iwl_dbg_tlv_init_cfg.exit_crit_edge:  ; preds = %cleanup79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_init_cfg.exit

iwl_dbg_tlv_init_cfg.exit:                        ; preds = %cleanup79.i.iwl_dbg_tlv_init_cfg.exit_crit_edge, %for.end40.i.iwl_dbg_tlv_init_cfg.exit_crit_edge, %sw.bb.iwl_dbg_tlv_init_cfg.exit_crit_edge
  call fastcc void @iwl_dbg_tlv_apply_config(ptr noundef %fwrt, ptr noundef %config_list)
  call void @llvm.lifetime.start.p0(i64 824, ptr nonnull %dram_info.i) #8
  %228 = getelementptr inbounds i8, ptr %dram_info.i, i32 8
  %229 = call ptr @memset(ptr %228, i32 255, i32 816)
  %230 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %fwrt, align 8
  %frags1.i = getelementptr %struct.iwl_trans, ptr %231, i32 0, i32 32, i32 13, i32 1, i32 1
  %232 = ptrtoint ptr %frags1.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %frags1.i, align 4
  %fw.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 1
  %234 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %fw.i, align 4
  %arrayidx.i.i.i66 = getelementptr %struct.iwl_fw, ptr %235, i32 0, i32 5, i32 8, i32 3
  %236 = ptrtoint ptr %arrayidx.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load volatile i32, ptr %arrayidx.i.i.i66, align 4
  %238 = and i32 %237, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool.i.not.i = icmp eq i32 %238, 0
  br i1 %tobool.i.not.i, label %iwl_dbg_tlv_init_cfg.exit.iwl_dbg_tlv_update_drams.exit_crit_edge, label %if.end.i

iwl_dbg_tlv_init_cfg.exit.iwl_dbg_tlv_update_drams.exit_crit_edge: ; preds = %iwl_dbg_tlv_init_cfg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_update_drams.exit

if.end.i:                                         ; preds = %iwl_dbg_tlv_init_cfg.exit
  %239 = ptrtoint ptr %dram_info.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 271733878, ptr %dram_info.i, align 4
  %second_word.i = getelementptr inbounds %struct.iwl_dram_info, ptr %dram_info.i, i32 0, i32 1
  %240 = ptrtoint ptr %second_word.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 -271733879, ptr %second_word.i, align 4
  %dev.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  br label %for.body.i69

for.body.i69:                                     ; preds = %for.inc.i.for.body.i69_crit_edge, %if.end.i
  %dram_alloc.047.i = phi i32 [ 0, %if.end.i ], [ %dram_alloc.1.i, %for.inc.i.for.body.i69_crit_edge ]
  %i.043.i = phi i32 [ 1, %if.end.i ], [ %inc9.i, %for.inc.i.for.body.i69_crit_edge ]
  %241 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %fwrt, align 8
  %buf_location.i.i67 = getelementptr %struct.iwl_trans, ptr %242, i32 0, i32 32, i32 12, i32 %i.043.i, i32 2
  %243 = ptrtoint ptr %buf_location.i.i67 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %buf_location.i.i67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %244)
  %cmp.not.i.i68 = icmp eq i32 %244, 33554432
  br i1 %cmp.not.i.i68, label %if.end.i.i71, label %do.end.i.i

do.end.i.i:                                       ; preds = %for.body.i69
  call void @__sanitizer_cov_trace_pc() #10
  %245 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %246, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_update_dram, ptr noundef nonnull @.str.46, i32 noundef %i.043.i) #8
  br label %do.end.i77

if.end.i.i71:                                     ; preds = %for.body.i69
  %arrayidx6.i.i = getelementptr %struct.iwl_trans, ptr %242, i32 0, i32 32, i32 13, i32 %i.043.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.043.i)
  %cmp7.i.i = icmp eq i32 %i.043.i, 1
  %spec.select.i.i = zext i1 %cmp7.i.i to i32
  %247 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %248, i32 %spec.select.i.i)
  %tobool.not.i.i70 = icmp eq i32 %248, %spec.select.i.i
  br i1 %tobool.not.i.i70, label %if.end.i.i71.do.end.i77_crit_edge, label %if.end12.i.i

if.end.i.i71.do.end.i77_crit_edge:                ; preds = %if.end.i.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i77

if.end12.i.i:                                     ; preds = %if.end.i.i71
  %sub.i.i72 = sub i32 %248, %spec.select.i.i
  %249 = call i32 @llvm.umin.i32(i32 %sub.i.i72, i32 16) #8
  %sub14.i.i = add nsw i32 %i.043.i, -1
  %arrayidx15.i.i = getelementptr %struct.iwl_dram_info, ptr %dram_info.i, i32 0, i32 2, i32 %sub14.i.i
  %250 = call i32 @llvm.bswap.i32(i32 %i.043.i) #8
  %251 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %250, ptr %arrayidx15.i.i, align 4
  %252 = shl nuw nsw i32 %249, 24
  %num_frags17.i.i = getelementptr %struct.iwl_dram_info, ptr %dram_info.i, i32 0, i32 2, i32 %sub14.i.i, i32 2
  %253 = ptrtoint ptr %num_frags17.i.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %252, ptr %num_frags17.i.i, align 4
  %buf_location18.i.i = getelementptr %struct.iwl_dram_info, ptr %dram_info.i, i32 0, i32 2, i32 %sub14.i.i, i32 1
  %254 = ptrtoint ptr %buf_location18.i.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 33554432, ptr %buf_location18.i.i, align 4
  %255 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %256, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_update_dram, ptr noundef nonnull @.str.47, i32 noundef %250, i32 noundef %252) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %cmp2684.not.i.i = icmp eq i32 %249, 0
  br i1 %cmp2684.not.i.i, label %if.end12.i.i.if.then4.i_crit_edge, label %for.body.lr.ph.i.i73

if.end12.i.i.if.then4.i_crit_edge:                ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

for.body.lr.ph.i.i73:                             ; preds = %if.end12.i.i
  %frags28.i.i = getelementptr %struct.iwl_trans, ptr %242, i32 0, i32 32, i32 13, i32 %i.043.i, i32 1
  br label %for.body.i.i75

for.body.i.i75:                                   ; preds = %for.body.i.i75.for.body.i.i75_crit_edge, %for.body.lr.ph.i.i73
  %fw_mon_idx.186.i.i = phi i32 [ %spec.select.i.i, %for.body.lr.ph.i.i73 ], [ %inc29.i.i, %for.body.i.i75.for.body.i.i75_crit_edge ]
  %j.085.i.i = phi i32 [ 0, %for.body.lr.ph.i.i73 ], [ %inc49.i.i, %for.body.i.i75.for.body.i.i75_crit_edge ]
  %arrayidx27.i.i = getelementptr %struct.iwl_dram_info, ptr %dram_info.i, i32 0, i32 2, i32 %sub14.i.i, i32 3, i32 %j.085.i.i
  %257 = ptrtoint ptr %frags28.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %frags28.i.i, align 4
  %inc29.i.i = add nuw nsw i32 %fw_mon_idx.186.i.i, 1
  %arrayidx30.i.i = getelementptr %struct.iwl_dram_data, ptr %258, i32 %fw_mon_idx.186.i.i
  %259 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %arrayidx30.i.i, align 4
  %conv.i.i = zext i32 %260 to i64
  %261 = call i64 @llvm.bswap.i64(i64 %conv.i.i) #8
  %262 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_storeN_noabort(i32 %262, i32 8)
  store i64 %261, ptr %arrayidx27.i.i, align 4
  %size.i.i = getelementptr %struct.iwl_dram_data, ptr %258, i32 %fw_mon_idx.186.i.i, i32 2
  %263 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %size.i.i, align 4
  %265 = call i32 @llvm.bswap.i32(i32 %264) #8
  %size31.i.i = getelementptr %struct.iwl_dram_info, ptr %dram_info.i, i32 0, i32 2, i32 %sub14.i.i, i32 3, i32 %j.085.i.i, i32 1
  %266 = ptrtoint ptr %size31.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %265, ptr %size31.i.i, align 4
  %267 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %268, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_update_dram, ptr noundef nonnull @.str.48) #8
  %269 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %dev.i.i, align 8
  %271 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %arrayidx30.i.i, align 4
  %conv45.i.i = zext i32 %272 to i64
  %273 = call i64 @llvm.bswap.i64(i64 %conv45.i.i) #8
  %274 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %size.i.i, align 4
  %276 = call i32 @llvm.bswap.i32(i32 %275) #8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %270, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_update_dram, ptr noundef nonnull @.str.49, i32 noundef %j.085.i.i, i64 noundef %273, i32 noundef %276) #8
  %inc49.i.i = add nuw nsw i32 %j.085.i.i, 1
  %exitcond.not.i.i74 = icmp eq i32 %inc49.i.i, %249
  br i1 %exitcond.not.i.i74, label %for.body.i.i75.if.then4.i_crit_edge, label %for.body.i.i75.for.body.i.i75_crit_edge

for.body.i.i75.for.body.i.i75_crit_edge:          ; preds = %for.body.i.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i75

for.body.i.i75.if.then4.i_crit_edge:              ; preds = %for.body.i.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i:                                       ; preds = %for.body.i.i75.if.then4.i_crit_edge, %if.end12.i.i.if.then4.i_crit_edge
  %inc.i76 = add i32 %dram_alloc.047.i, 1
  br label %for.inc.i

do.end.i77:                                       ; preds = %if.end.i.i71.do.end.i77_crit_edge, %do.end.i.i
  %277 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %278, ptr noundef nonnull @.str.44, i32 noundef %i.043.i, i32 noundef -1) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i77, %if.then4.i
  %dram_alloc.1.i = phi i32 [ %dram_alloc.047.i, %do.end.i77 ], [ %inc.i76, %if.then4.i ]
  %inc9.i = add nuw nsw i32 %i.043.i, 1
  %exitcond.not.i78 = icmp eq i32 %inc9.i, 4
  br i1 %exitcond.not.i78, label %for.end.i79, label %for.inc.i.for.body.i69_crit_edge

for.inc.i.for.body.i69_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i69

for.end.i79:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dram_alloc.1.i)
  %tobool10.not.i = icmp eq i32 %dram_alloc.1.i, 0
  br i1 %tobool10.not.i, label %for.end.i79.iwl_dbg_tlv_update_drams.exit_crit_edge, label %if.then11.i

for.end.i79.iwl_dbg_tlv_update_drams.exit_crit_edge: ; preds = %for.end.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_update_drams.exit

if.then11.i:                                      ; preds = %for.end.i79
  call void @__sanitizer_cov_trace_pc() #10
  %block.i = getelementptr inbounds %struct.iwl_dram_data, ptr %233, i32 0, i32 1
  %279 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %block.i, align 4
  %281 = call ptr @memcpy(ptr %280, ptr %dram_info.i, i32 824)
  %282 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %dev.i.i, align 8
  %284 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %fwrt, align 8
  %frags21.i = getelementptr %struct.iwl_trans, ptr %285, i32 0, i32 32, i32 13, i32 1, i32 1
  %286 = ptrtoint ptr %frags21.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %frags21.i, align 4
  %block23.i = getelementptr inbounds %struct.iwl_dram_data, ptr %287, i32 0, i32 1
  %288 = ptrtoint ptr %block23.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %block23.i, align 4
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %289, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %283, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_update_drams, ptr noundef nonnull @.str.45, i32 noundef %291) #8
  br label %iwl_dbg_tlv_update_drams.exit

iwl_dbg_tlv_update_drams.exit:                    ; preds = %if.then11.i, %for.end.i79.iwl_dbg_tlv_update_drams.exit_crit_edge, %iwl_dbg_tlv_init_cfg.exit.iwl_dbg_tlv_update_drams.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 824, ptr nonnull %dram_info.i) #8
  call fastcc void @iwl_dbg_tlv_tp_trigger(ptr noundef %fwrt, i1 noundef zeroext %sync, ptr noundef %active_trig_list, ptr noundef %tp_data, ptr noundef null)
  br label %cleanup

sw.bb14:                                          ; preds = %if.end
  %fw.i81 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 1
  %292 = ptrtoint ptr %fw.i81 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %fw.i81, align 4
  %arrayidx.i.i.i82 = getelementptr %struct.iwl_fw, ptr %293, i32 0, i32 5, i32 8, i32 3
  %294 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %296 = and i32 %295, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %296)
  %tobool.i.not.i83 = icmp eq i32 %296, 0
  br i1 %tobool.i.not.i83, label %for.cond.preheader.i, label %sw.bb14.iwl_dbg_tlv_apply_buffers.exit_crit_edge

sw.bb14.iwl_dbg_tlv_apply_buffers.exit_crit_edge: ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_apply_buffers.exit

for.cond.preheader.i:                             ; preds = %sw.bb14
  %dev.i.i84 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %buf_location23.i.i = getelementptr inbounds %struct.iwl_buf_alloc_cmd, ptr %data.i.i, i32 0, i32 1
  %num_frags24.i.i = getelementptr inbounds %struct.iwl_buf_alloc_cmd, ptr %data.i.i, i32 0, i32 2
  %flags.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i.i, i32 0, i32 4
  %id.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i.i, i32 0, i32 5
  %len.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i.i, i32 0, i32 6
  %arrayinit.start28.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i.i, i32 0, i32 6, i32 1
  %arrayinit.end29.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i.i, i32 0, i32 7
  %297 = getelementptr inbounds i8, ptr %data.i.i, i32 12
  %arrayinit.cur.ptr.i.i = getelementptr inbounds ptr, ptr %hcmd.i.i, i32 1
  br label %for.body.i87

for.body.i87:                                     ; preds = %for.inc.i100.for.body.i87_crit_edge, %for.cond.preheader.i
  %i.017.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i98, %for.inc.i100.for.body.i87_crit_edge ]
  %298 = ptrtoint ptr %fw.i81 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %fw.i81, align 4
  %arrayidx.i.i.i.i85 = getelementptr %struct.iwl_fw, ptr %299, i32 0, i32 5, i32 8, i32 2
  %300 = ptrtoint ptr %arrayidx.i.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load volatile i32, ptr %arrayidx.i.i.i.i85, align 4
  %302 = and i32 %301, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %302)
  %tobool.i.not.i.i86 = icmp eq i32 %302, 0
  br i1 %tobool.i.not.i.i86, label %for.body.i87.for.inc.i100_crit_edge, label %if.end3.i.i

for.body.i87.for.inc.i100_crit_edge:              ; preds = %for.body.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i100

if.end3.i.i:                                      ; preds = %for.body.i87
  %303 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %fwrt, align 8
  %buf_location.i.i88 = getelementptr %struct.iwl_trans, ptr %304, i32 0, i32 32, i32 12, i32 %i.017.i, i32 2
  %305 = ptrtoint ptr %buf_location.i.i88 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %buf_location.i.i88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %306)
  %cmp4.not.i.i = icmp eq i32 %306, 33554432
  br i1 %cmp4.not.i.i, label %if.end6.i.i, label %if.end3.i.i.for.inc.i100_crit_edge

if.end3.i.i.for.inc.i100_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i100

if.end6.i.i:                                      ; preds = %if.end3.i.i
  %arrayidx9.i.i = getelementptr %struct.iwl_trans, ptr %304, i32 0, i32 32, i32 13, i32 %i.017.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.017.i)
  %cmp10.i.i = icmp eq i32 %i.017.i, 1
  %spec.select.i.i89 = zext i1 %cmp10.i.i to i32
  %307 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %arrayidx9.i.i, align 4
  %sub.i.i90 = sub i32 %308, %spec.select.i.i89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i90)
  %tobool.not.i.i91 = icmp eq i32 %sub.i.i90, 0
  br i1 %tobool.not.i.i91, label %if.end6.i.i.for.inc.i100_crit_edge, label %if.end14.i.i

if.end6.i.i.for.inc.i100_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i100

if.end14.i.i:                                     ; preds = %if.end6.i.i
  %sub15.i.i = add i32 %sub.i.i90, 15
  %309 = ptrtoint ptr %dev.i.i84 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %dev.i.i84, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %310, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_apply_buffer, ptr noundef nonnull @.str.58, i32 noundef %i.017.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub15.i.i)
  %cmp1993.not.i.i = icmp ult i32 %sub15.i.i, 16
  br i1 %cmp1993.not.i.i, label %if.end14.i.i.for.inc.i100_crit_edge, label %for.body.lr.ph.i.i92

if.end14.i.i.for.inc.i100_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i100

for.body.lr.ph.i.i92:                             ; preds = %if.end14.i.i
  %div89.i.i = lshr i32 %sub15.i.i, 4
  %311 = call i32 @llvm.bswap.i32(i32 %i.017.i) #8
  %frags39.i.i = getelementptr %struct.iwl_trans, ptr %304, i32 0, i32 32, i32 13, i32 %i.017.i, i32 1
  br label %for.body.i.i93

for.body.i.i93:                                   ; preds = %for.inc54.i.i.for.body.i.i93_crit_edge, %for.body.lr.ph.i.i92
  %remain_frags.096.i.i = phi i32 [ %sub.i.i90, %for.body.lr.ph.i.i92 ], [ %sub49.i.i, %for.inc54.i.i.for.body.i.i93_crit_edge ]
  %fw_mon_idx.195.i.i = phi i32 [ %spec.select.i.i89, %for.body.lr.ph.i.i92 ], [ %fw_mon_idx.2.lcssa.i.i, %for.inc54.i.i.for.body.i.i93_crit_edge ]
  %i.094.i.i = phi i32 [ 0, %for.body.lr.ph.i.i92 ], [ %inc55.i.i, %for.inc54.i.i.for.body.i.i93_crit_edge ]
  %312 = call i32 @llvm.umin.i32(i32 %remain_frags.096.i.i, i32 16) #8
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %data.i.i) #8
  %313 = call ptr @memset(ptr %297, i32 0, i32 192)
  %314 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %311, ptr %data.i.i, align 4
  %315 = ptrtoint ptr %buf_location23.i.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 33554432, ptr %buf_location23.i.i, align 4
  %316 = shl nuw nsw i32 %312, 24
  %317 = ptrtoint ptr %num_frags24.i.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %316, ptr %num_frags24.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd.i.i) #8
  %318 = ptrtoint ptr %arrayinit.end29.i.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 65535, ptr %arrayinit.end29.i.i, align 4, !annotation !156
  %319 = ptrtoint ptr %hcmd.i.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr %data.i.i, ptr %hcmd.i.i, align 4
  %320 = call ptr @memset(ptr %arrayinit.cur.ptr.i.i, i32 0, i32 16)
  %321 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 4, ptr %flags.i.i, align 4
  %322 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 3848, ptr %id.i.i, align 4
  %323 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store2_noabort(i32 %323)
  store i16 204, ptr %len.i.i, align 4
  %324 = ptrtoint ptr %arrayinit.start28.i.i to i32
  call void @__asan_store2_noabort(i32 %324)
  store i16 0, ptr %arrayinit.start28.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %312)
  %cmp3690.not.i.i = icmp eq i32 %312, 0
  br i1 %cmp3690.not.i.i, label %for.body.i.i93.for.end.i.i_crit_edge, label %for.body.i.i93.for.body37.i.i_crit_edge

for.body.i.i93.for.body37.i.i_crit_edge:          ; preds = %for.body.i.i93
  br label %for.body37.i.i

for.body.i.i93.for.end.i.i_crit_edge:             ; preds = %for.body.i.i93
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body37.i.i:                                   ; preds = %for.body37.i.i.for.body37.i.i_crit_edge, %for.body.i.i93.for.body37.i.i_crit_edge
  %j.092.i.i = phi i32 [ %inc43.i.i, %for.body37.i.i.for.body37.i.i_crit_edge ], [ 0, %for.body.i.i93.for.body37.i.i_crit_edge ]
  %fw_mon_idx.291.i.i = phi i32 [ %inc40.i.i, %for.body37.i.i.for.body37.i.i_crit_edge ], [ %fw_mon_idx.195.i.i, %for.body.i.i93.for.body37.i.i_crit_edge ]
  %arrayidx38.i.i = getelementptr %struct.iwl_buf_alloc_cmd, ptr %data.i.i, i32 0, i32 3, i32 %j.092.i.i
  %325 = ptrtoint ptr %frags39.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %frags39.i.i, align 4
  %inc40.i.i = add i32 %fw_mon_idx.291.i.i, 1
  %arrayidx41.i.i = getelementptr %struct.iwl_dram_data, ptr %326, i32 %fw_mon_idx.291.i.i
  %327 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %arrayidx41.i.i, align 4
  %conv.i.i94 = zext i32 %328 to i64
  %329 = call i64 @llvm.bswap.i64(i64 %conv.i.i94) #8
  %330 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_storeN_noabort(i32 %330, i32 8)
  store i64 %329, ptr %arrayidx38.i.i, align 4
  %size.i.i95 = getelementptr %struct.iwl_dram_data, ptr %326, i32 %fw_mon_idx.291.i.i, i32 2
  %331 = ptrtoint ptr %size.i.i95 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %size.i.i95, align 4
  %333 = call i32 @llvm.bswap.i32(i32 %332) #8
  %size42.i.i = getelementptr %struct.iwl_buf_alloc_cmd, ptr %data.i.i, i32 0, i32 3, i32 %j.092.i.i, i32 1
  %334 = ptrtoint ptr %size42.i.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %333, ptr %size42.i.i, align 4
  %inc43.i.i = add nuw nsw i32 %j.092.i.i, 1
  %exitcond.not.i.i96 = icmp eq i32 %inc43.i.i, %312
  br i1 %exitcond.not.i.i96, label %for.body37.i.i.for.end.i.i_crit_edge, label %for.body37.i.i.for.body37.i.i_crit_edge

for.body37.i.i.for.body37.i.i_crit_edge:          ; preds = %for.body37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body37.i.i

for.body37.i.i.for.end.i.i_crit_edge:             ; preds = %for.body37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body37.i.i.for.end.i.i_crit_edge, %for.body.i.i93.for.end.i.i_crit_edge
  %fw_mon_idx.2.lcssa.i.i = phi i32 [ %fw_mon_idx.195.i.i, %for.body.i.i93.for.end.i.i_crit_edge ], [ %inc40.i.i, %for.body37.i.i.for.end.i.i_crit_edge ]
  %335 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %fwrt, align 8
  %call45.i.i = call i32 @iwl_trans_send_cmd(ptr noundef %336, ptr noundef nonnull %hcmd.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i.i)
  %tobool46.not.i.i = icmp eq i32 %call45.i.i, 0
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd.i.i) #8
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %data.i.i) #8
  br i1 %tobool46.not.i.i, label %for.inc54.i.i, label %do.end.i97

for.inc54.i.i:                                    ; preds = %for.end.i.i
  %sub49.i.i = sub i32 %remain_frags.096.i.i, %312
  %inc55.i.i = add nuw nsw i32 %i.094.i.i, 1
  %exitcond99.not.i.i = icmp eq i32 %inc55.i.i, %div89.i.i
  br i1 %exitcond99.not.i.i, label %for.inc54.i.i.for.inc.i100_crit_edge, label %for.inc54.i.i.for.body.i.i93_crit_edge

for.inc54.i.i.for.body.i.i93_crit_edge:           ; preds = %for.inc54.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i93

for.inc54.i.i.for.inc.i100_crit_edge:             ; preds = %for.inc54.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i100

do.end.i97:                                       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %337 = ptrtoint ptr %dev.i.i84 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %dev.i.i84, align 8
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %338, ptr noundef nonnull @.str.57, i32 noundef %i.017.i, i32 noundef %call45.i.i) #8
  br label %for.inc.i100

for.inc.i100:                                     ; preds = %do.end.i97, %for.inc54.i.i.for.inc.i100_crit_edge, %if.end14.i.i.for.inc.i100_crit_edge, %if.end6.i.i.for.inc.i100_crit_edge, %if.end3.i.i.for.inc.i100_crit_edge, %for.body.i87.for.inc.i100_crit_edge
  %inc.i98 = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i99 = icmp eq i32 %inc.i98, 5
  br i1 %exitcond.not.i99, label %for.inc.i100.iwl_dbg_tlv_apply_buffers.exit_crit_edge, label %for.inc.i100.for.body.i87_crit_edge

for.inc.i100.for.body.i87_crit_edge:              ; preds = %for.inc.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i87

for.inc.i100.iwl_dbg_tlv_apply_buffers.exit_crit_edge: ; preds = %for.inc.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_apply_buffers.exit

iwl_dbg_tlv_apply_buffers.exit:                   ; preds = %for.inc.i100.iwl_dbg_tlv_apply_buffers.exit_crit_edge, %sw.bb14.iwl_dbg_tlv_apply_buffers.exit_crit_edge
  %339 = ptrtoint ptr %hcmd_list4 to i32
  call void @__asan_load4_noabort(i32 %339)
  %node.029.i = load ptr, ptr %hcmd_list4, align 4
  %cmp.not30.i = icmp eq ptr %node.029.i, %hcmd_list4
  br i1 %cmp.not30.i, label %iwl_dbg_tlv_apply_buffers.exit.iwl_dbg_tlv_send_hcmds.exit_crit_edge, label %for.body.lr.ph.i

iwl_dbg_tlv_apply_buffers.exit.iwl_dbg_tlv_send_hcmds.exit_crit_edge: ; preds = %iwl_dbg_tlv_apply_buffers.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_send_hcmds.exit

for.body.lr.ph.i:                                 ; preds = %iwl_dbg_tlv_apply_buffers.exit
  %id.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 5
  %len.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6
  %arrayinit.start11.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6, i32 1
  %arrayinit.end12.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 7
  %arrayinit.cur.ptr.i = getelementptr inbounds ptr, ptr %cmd.i, i32 1
  br label %for.body.i106

for.body.i106:                                    ; preds = %for.body.i106.for.body.i106_crit_edge, %for.body.lr.ph.i
  %node.031.i = phi ptr [ %node.029.i, %for.body.lr.ph.i ], [ %node.0.i, %for.body.i106.for.body.i106_crit_edge ]
  %length.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.031.i, i32 0, i32 1, i32 1
  %340 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %length.i, align 4
  %342 = call i32 @llvm.bswap.i32(i32 %341) #8
  %343 = trunc i32 %342 to i16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i) #8
  %344 = call ptr @memset(ptr %id.i, i32 255, i32 12)
  %data4.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.031.i, i32 2, i32 0, i32 1
  %345 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr %data4.i, ptr %cmd.i, align 4
  %hcmd1.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.031.i, i32 2
  %conv.i102 = add i16 %343, -20
  %group.i = getelementptr inbounds %struct.iwl_fw_ini_hcmd, ptr %hcmd1.i, i32 0, i32 1
  %346 = call ptr @memset(ptr %arrayinit.cur.ptr.i, i32 0, i32 20)
  %347 = ptrtoint ptr %group.i to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %group.i, align 1
  %conv7.i = zext i8 %348 to i32
  %shl.i103 = shl nuw nsw i32 %conv7.i, 8
  %349 = ptrtoint ptr %hcmd1.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %hcmd1.i, align 1
  %conv9.i = zext i8 %350 to i32
  %or.i104 = or i32 %shl.i103, %conv9.i
  %351 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %or.i104, ptr %id.i, align 4
  %352 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %352)
  store i16 %conv.i102, ptr %len.i, align 4
  %353 = ptrtoint ptr %arrayinit.start11.i to i32
  call void @__asan_store2_noabort(i32 %353)
  store i16 0, ptr %arrayinit.start11.i, align 2
  %354 = ptrtoint ptr %arrayinit.end12.i to i32
  call void @__asan_store2_noabort(i32 %354)
  store i16 0, ptr %arrayinit.end12.i, align 4
  %355 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %fwrt, align 8
  %call.i = call i32 @iwl_trans_send_cmd(ptr noundef %356, ptr noundef nonnull %cmd.i) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #8
  %357 = ptrtoint ptr %node.031.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %node.0.i = load ptr, ptr %node.031.i, align 4
  %cmp.not.i105 = icmp eq ptr %node.0.i, %hcmd_list4
  br i1 %cmp.not.i105, label %for.body.i106.iwl_dbg_tlv_send_hcmds.exit_crit_edge, label %for.body.i106.for.body.i106_crit_edge

for.body.i106.for.body.i106_crit_edge:            ; preds = %for.body.i106
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i106

for.body.i106.iwl_dbg_tlv_send_hcmds.exit_crit_edge: ; preds = %for.body.i106
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_send_hcmds.exit

iwl_dbg_tlv_send_hcmds.exit:                      ; preds = %for.body.i106.iwl_dbg_tlv_send_hcmds.exit_crit_edge, %iwl_dbg_tlv_apply_buffers.exit.iwl_dbg_tlv_send_hcmds.exit_crit_edge
  call fastcc void @iwl_dbg_tlv_apply_config(ptr noundef %fwrt, ptr noundef %config_list)
  call fastcc void @iwl_dbg_tlv_tp_trigger(ptr noundef %fwrt, i1 noundef zeroext %sync, ptr noundef %active_trig_list, ptr noundef %tp_data, ptr noundef null)
  br label %cleanup

sw.bb17:                                          ; preds = %if.end
  %active_trig_list.i = getelementptr %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 20, i32 10, i32 1
  %358 = ptrtoint ptr %active_trig_list.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %node.086.i = load ptr, ptr %active_trig_list.i, align 4
  %cmp.not87.i = icmp eq ptr %node.086.i, %active_trig_list.i
  br i1 %cmp.not87.i, label %sw.bb17.iwl_dbg_tlv_set_periodic_trigs.exit_crit_edge, label %for.body.lr.ph.i108

sw.bb17.iwl_dbg_tlv_set_periodic_trigs.exit_crit_edge: ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_set_periodic_trigs.exit

for.body.lr.ph.i108:                              ; preds = %sw.bb17
  %dev16.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  br label %for.body.i109

for.body.i109:                                    ; preds = %cleanup.i119.for.body.i109_crit_edge, %for.body.lr.ph.i108
  %node.088.i = phi ptr [ %node.086.i, %for.body.lr.ph.i108 ], [ %node.0.i117, %cleanup.i119.for.body.i109_crit_edge ]
  %tlv.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.088.i, i32 0, i32 1
  %occurrences.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.088.i, i32 2, i32 1
  %359 = ptrtoint ptr %occurrences.i to i32
  call void @__asan_loadN_noabort(i32 %359, i32 4)
  %360 = load i32, ptr %occurrences.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %360)
  %tobool.not.i = icmp eq i32 %360, 0
  br i1 %tobool.not.i, label %for.body.i109.cleanup.i119_crit_edge, label %if.end.i112

for.body.i109.cleanup.i119_crit_edge:             ; preds = %for.body.i109
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i119

if.end.i112:                                      ; preds = %for.body.i109
  %length.i110 = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.088.i, i32 0, i32 1, i32 1
  %361 = ptrtoint ptr %length.i110 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %length.i110, align 4
  %363 = tail call i32 @llvm.bswap.i32(i32 %362) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %363)
  %cmp2.i111 = icmp ult i32 %363, 56
  br i1 %cmp2.i111, label %do.end.i113, label %if.end7.i

do.end.i113:                                      ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #10
  %364 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %dev16.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %365, i32 noundef 0, ptr noundef nonnull @.str.59) #8
  br label %cleanup.i119

if.end7.i:                                        ; preds = %if.end.i112
  %data8.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.088.i, i32 4, i32 0, i32 1
  %366 = ptrtoint ptr %data8.i to i32
  call void @__asan_loadN_noabort(i32 %366, i32 4)
  %367 = load i32, ptr %data8.i, align 1
  %368 = tail call i32 @llvm.bswap.i32(i32 %367) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %368)
  %cmp10.i = icmp ult i32 %368, 100
  br i1 %cmp10.i, label %do.end15.i, label %if.end7.i.if.end23.i_crit_edge

if.end7.i.if.end23.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

do.end15.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %369 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %dev16.i, align 8
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %370, ptr noundef nonnull @.str.60, i32 noundef %368, i32 noundef 100) #8
  %371 = ptrtoint ptr %data8.i to i32
  call void @__asan_storeN_noabort(i32 %371, i32 4)
  store i32 1677721600, ptr %data8.i, align 1
  br label %if.end23.i

if.end23.i:                                       ; preds = %do.end15.i, %if.end7.i.if.end23.i_crit_edge
  %372 = ptrtoint ptr %data8.i to i32
  call void @__asan_loadN_noabort(i32 %372, i32 4)
  %373 = load i32, ptr %data8.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %374 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %374, i32 noundef 3520, i32 noundef 64) #13
  %tobool26.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool26.not.i, label %do.end31.i, label %if.end35.i

do.end31.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %375 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %dev16.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %376, i32 noundef 0, ptr noundef nonnull @.str.61) #8
  br label %cleanup.i119

if.end35.i:                                       ; preds = %if.end23.i
  %377 = tail call i32 @llvm.bswap.i32(i32 %373) #8
  %fwrt36.i = getelementptr inbounds %struct.iwl_dbg_tlv_timer_node, ptr %call7.i.i.i, i32 0, i32 2
  %378 = ptrtoint ptr %fwrt36.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store ptr %fwrt, ptr %fwrt36.i, align 8
  %tlv38.i = getelementptr inbounds %struct.iwl_dbg_tlv_timer_node, ptr %call7.i.i.i, i32 0, i32 3
  %379 = ptrtoint ptr %tlv38.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr %tlv.i, ptr %tlv38.i, align 4
  %timer.i = getelementptr inbounds %struct.iwl_dbg_tlv_timer_node, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @iwl_dbg_tlv_periodic_trig_handler, i32 noundef 0, ptr noundef nonnull @.str.62, ptr noundef nonnull @iwl_dbg_tlv_set_periodic_trigs.__key) #8
  %380 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %fwrt, align 8
  %periodic_trig_list.i = getelementptr inbounds %struct.iwl_trans, ptr %381, i32 0, i32 32, i32 21
  %prev.i.i = getelementptr inbounds %struct.iwl_trans, ptr %381, i32 0, i32 32, i32 21, i32 1
  %382 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %383, ptr noundef %periodic_trig_list.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i114, label %if.end35.i.list_add_tail.exit.i_crit_edge

if.end35.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i.i114:                                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  %384 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %384)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %385 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %385)
  store ptr %periodic_trig_list.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %386 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %386)
  store ptr %383, ptr %prev3.i.i.i, align 4
  %387 = ptrtoint ptr %383 to i32
  call void @__asan_store4_noabort(i32 %387)
  store volatile ptr %call7.i.i.i, ptr %383, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i114, %if.end35.i.list_add_tail.exit.i_crit_edge
  %388 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %dev16.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %389, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_set_periodic_trigs, ptr noundef nonnull @.str.63) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %390 = load volatile i32, ptr @jiffies, align 128
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %377) #8
  %add.i = add i32 %call2.i.i, %390
  %call54.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #8
  br label %cleanup.i119

cleanup.i119:                                     ; preds = %list_add_tail.exit.i, %do.end31.i, %do.end.i113, %for.body.i109.cleanup.i119_crit_edge
  %391 = ptrtoint ptr %node.088.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %node.0.i117 = load ptr, ptr %node.088.i, align 4
  %cmp.not.i118 = icmp eq ptr %node.0.i117, %active_trig_list.i
  br i1 %cmp.not.i118, label %cleanup.i119.iwl_dbg_tlv_set_periodic_trigs.exit_crit_edge, label %cleanup.i119.for.body.i109_crit_edge

cleanup.i119.for.body.i109_crit_edge:             ; preds = %cleanup.i119
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i109

cleanup.i119.iwl_dbg_tlv_set_periodic_trigs.exit_crit_edge: ; preds = %cleanup.i119
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_set_periodic_trigs.exit

iwl_dbg_tlv_set_periodic_trigs.exit:              ; preds = %cleanup.i119.iwl_dbg_tlv_set_periodic_trigs.exit_crit_edge, %sw.bb17.iwl_dbg_tlv_set_periodic_trigs.exit_crit_edge
  %392 = ptrtoint ptr %hcmd_list4 to i32
  call void @__asan_load4_noabort(i32 %392)
  %node.029.i122 = load ptr, ptr %hcmd_list4, align 4
  %cmp.not30.i123 = icmp eq ptr %node.029.i122, %hcmd_list4
  br i1 %cmp.not30.i123, label %iwl_dbg_tlv_set_periodic_trigs.exit.cleanup_crit_edge, label %for.body.lr.ph.i129

iwl_dbg_tlv_set_periodic_trigs.exit.cleanup_crit_edge: ; preds = %iwl_dbg_tlv_set_periodic_trigs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i129:                              ; preds = %iwl_dbg_tlv_set_periodic_trigs.exit
  %id.i124 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i121, i32 0, i32 5
  %len.i125 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i121, i32 0, i32 6
  %arrayinit.start11.i126 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i121, i32 0, i32 6, i32 1
  %arrayinit.end12.i127 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i121, i32 0, i32 7
  %arrayinit.cur.ptr.i128 = getelementptr inbounds ptr, ptr %cmd.i121, i32 1
  br label %for.body.i143

for.body.i143:                                    ; preds = %for.body.i143.for.body.i143_crit_edge, %for.body.lr.ph.i129
  %node.031.i130 = phi ptr [ %node.029.i122, %for.body.lr.ph.i129 ], [ %node.0.i141, %for.body.i143.for.body.i143_crit_edge ]
  %length.i131 = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.031.i130, i32 0, i32 1, i32 1
  %393 = ptrtoint ptr %length.i131 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %length.i131, align 4
  %395 = call i32 @llvm.bswap.i32(i32 %394) #8
  %396 = trunc i32 %395 to i16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i121) #8
  %397 = call ptr @memset(ptr %id.i124, i32 255, i32 12)
  %data4.i132 = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.031.i130, i32 2, i32 0, i32 1
  %398 = ptrtoint ptr %cmd.i121 to i32
  call void @__asan_store4_noabort(i32 %398)
  store ptr %data4.i132, ptr %cmd.i121, align 4
  %hcmd1.i133 = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.031.i130, i32 2
  %conv.i134 = add i16 %396, -20
  %group.i135 = getelementptr inbounds %struct.iwl_fw_ini_hcmd, ptr %hcmd1.i133, i32 0, i32 1
  %399 = call ptr @memset(ptr %arrayinit.cur.ptr.i128, i32 0, i32 20)
  %400 = ptrtoint ptr %group.i135 to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %group.i135, align 1
  %conv7.i136 = zext i8 %401 to i32
  %shl.i137 = shl nuw nsw i32 %conv7.i136, 8
  %402 = ptrtoint ptr %hcmd1.i133 to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %hcmd1.i133, align 1
  %conv9.i138 = zext i8 %403 to i32
  %or.i139 = or i32 %shl.i137, %conv9.i138
  %404 = ptrtoint ptr %id.i124 to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 %or.i139, ptr %id.i124, align 4
  %405 = ptrtoint ptr %len.i125 to i32
  call void @__asan_store2_noabort(i32 %405)
  store i16 %conv.i134, ptr %len.i125, align 4
  %406 = ptrtoint ptr %arrayinit.start11.i126 to i32
  call void @__asan_store2_noabort(i32 %406)
  store i16 0, ptr %arrayinit.start11.i126, align 2
  %407 = ptrtoint ptr %arrayinit.end12.i127 to i32
  call void @__asan_store2_noabort(i32 %407)
  store i16 0, ptr %arrayinit.end12.i127, align 4
  %408 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %fwrt, align 8
  %call.i140 = call i32 @iwl_trans_send_cmd(ptr noundef %409, ptr noundef nonnull %cmd.i121) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i121) #8
  %410 = ptrtoint ptr %node.031.i130 to i32
  call void @__asan_load4_noabort(i32 %410)
  %node.0.i141 = load ptr, ptr %node.031.i130, align 4
  %cmp.not.i142 = icmp eq ptr %node.0.i141, %hcmd_list4
  br i1 %cmp.not.i142, label %for.body.i143.cleanup_crit_edge, label %for.body.i143.for.body.i143_crit_edge

for.body.i143.for.body.i143_crit_edge:            ; preds = %for.body.i143
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i143

for.body.i143.cleanup_crit_edge:                  ; preds = %for.body.i143
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb18:                                          ; preds = %if.end.sw.bb18_crit_edge, %if.end.sw.bb18_crit_edge279, %if.end.sw.bb18_crit_edge280
  %411 = ptrtoint ptr %hcmd_list4 to i32
  call void @__asan_load4_noabort(i32 %411)
  %node.029.i147 = load ptr, ptr %hcmd_list4, align 4
  %cmp.not30.i148 = icmp eq ptr %node.029.i147, %hcmd_list4
  br i1 %cmp.not30.i148, label %sw.bb18.iwl_dbg_tlv_send_hcmds.exit170_crit_edge, label %for.body.lr.ph.i154

sw.bb18.iwl_dbg_tlv_send_hcmds.exit170_crit_edge: ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_send_hcmds.exit170

for.body.lr.ph.i154:                              ; preds = %sw.bb18
  %id.i149 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i146, i32 0, i32 5
  %len.i150 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i146, i32 0, i32 6
  %arrayinit.start11.i151 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i146, i32 0, i32 6, i32 1
  %arrayinit.end12.i152 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i146, i32 0, i32 7
  %arrayinit.cur.ptr.i153 = getelementptr inbounds ptr, ptr %cmd.i146, i32 1
  br label %for.body.i168

for.body.i168:                                    ; preds = %for.body.i168.for.body.i168_crit_edge, %for.body.lr.ph.i154
  %node.031.i155 = phi ptr [ %node.029.i147, %for.body.lr.ph.i154 ], [ %node.0.i166, %for.body.i168.for.body.i168_crit_edge ]
  %length.i156 = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.031.i155, i32 0, i32 1, i32 1
  %412 = ptrtoint ptr %length.i156 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %length.i156, align 4
  %414 = call i32 @llvm.bswap.i32(i32 %413) #8
  %415 = trunc i32 %414 to i16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i146) #8
  %416 = call ptr @memset(ptr %id.i149, i32 255, i32 12)
  %data4.i157 = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.031.i155, i32 2, i32 0, i32 1
  %417 = ptrtoint ptr %cmd.i146 to i32
  call void @__asan_store4_noabort(i32 %417)
  store ptr %data4.i157, ptr %cmd.i146, align 4
  %hcmd1.i158 = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.031.i155, i32 2
  %conv.i159 = add i16 %415, -20
  %group.i160 = getelementptr inbounds %struct.iwl_fw_ini_hcmd, ptr %hcmd1.i158, i32 0, i32 1
  %418 = call ptr @memset(ptr %arrayinit.cur.ptr.i153, i32 0, i32 20)
  %419 = ptrtoint ptr %group.i160 to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %group.i160, align 1
  %conv7.i161 = zext i8 %420 to i32
  %shl.i162 = shl nuw nsw i32 %conv7.i161, 8
  %421 = ptrtoint ptr %hcmd1.i158 to i32
  call void @__asan_load1_noabort(i32 %421)
  %422 = load i8, ptr %hcmd1.i158, align 1
  %conv9.i163 = zext i8 %422 to i32
  %or.i164 = or i32 %shl.i162, %conv9.i163
  %423 = ptrtoint ptr %id.i149 to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 %or.i164, ptr %id.i149, align 4
  %424 = ptrtoint ptr %len.i150 to i32
  call void @__asan_store2_noabort(i32 %424)
  store i16 %conv.i159, ptr %len.i150, align 4
  %425 = ptrtoint ptr %arrayinit.start11.i151 to i32
  call void @__asan_store2_noabort(i32 %425)
  store i16 0, ptr %arrayinit.start11.i151, align 2
  %426 = ptrtoint ptr %arrayinit.end12.i152 to i32
  call void @__asan_store2_noabort(i32 %426)
  store i16 0, ptr %arrayinit.end12.i152, align 4
  %427 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %fwrt, align 8
  %call.i165 = call i32 @iwl_trans_send_cmd(ptr noundef %428, ptr noundef nonnull %cmd.i146) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i146) #8
  %429 = ptrtoint ptr %node.031.i155 to i32
  call void @__asan_load4_noabort(i32 %429)
  %node.0.i166 = load ptr, ptr %node.031.i155, align 4
  %cmp.not.i167 = icmp eq ptr %node.0.i166, %hcmd_list4
  br i1 %cmp.not.i167, label %for.body.i168.iwl_dbg_tlv_send_hcmds.exit170_crit_edge, label %for.body.i168.for.body.i168_crit_edge

for.body.i168.for.body.i168_crit_edge:            ; preds = %for.body.i168
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i168

for.body.i168.iwl_dbg_tlv_send_hcmds.exit170_crit_edge: ; preds = %for.body.i168
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_send_hcmds.exit170

iwl_dbg_tlv_send_hcmds.exit170:                   ; preds = %for.body.i168.iwl_dbg_tlv_send_hcmds.exit170_crit_edge, %sw.bb18.iwl_dbg_tlv_send_hcmds.exit170_crit_edge
  call fastcc void @iwl_dbg_tlv_apply_config(ptr noundef %fwrt, ptr noundef %config_list)
  call fastcc void @iwl_dbg_tlv_tp_trigger(ptr noundef %fwrt, i1 noundef zeroext %sync, ptr noundef %active_trig_list, ptr noundef %tp_data, ptr noundef nonnull @iwl_dbg_tlv_check_fw_pkt)
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %430 = ptrtoint ptr %hcmd_list4 to i32
  call void @__asan_load4_noabort(i32 %430)
  %node.029.i172 = load ptr, ptr %hcmd_list4, align 4
  %cmp.not30.i173 = icmp eq ptr %node.029.i172, %hcmd_list4
  br i1 %cmp.not30.i173, label %sw.default.iwl_dbg_tlv_send_hcmds.exit195_crit_edge, label %for.body.lr.ph.i179

sw.default.iwl_dbg_tlv_send_hcmds.exit195_crit_edge: ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_send_hcmds.exit195

for.body.lr.ph.i179:                              ; preds = %sw.default
  %id.i174 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i171, i32 0, i32 5
  %len.i175 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i171, i32 0, i32 6
  %arrayinit.start11.i176 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i171, i32 0, i32 6, i32 1
  %arrayinit.end12.i177 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i171, i32 0, i32 7
  %arrayinit.cur.ptr.i178 = getelementptr inbounds ptr, ptr %cmd.i171, i32 1
  br label %for.body.i193

for.body.i193:                                    ; preds = %for.body.i193.for.body.i193_crit_edge, %for.body.lr.ph.i179
  %node.031.i180 = phi ptr [ %node.029.i172, %for.body.lr.ph.i179 ], [ %node.0.i191, %for.body.i193.for.body.i193_crit_edge ]
  %length.i181 = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.031.i180, i32 0, i32 1, i32 1
  %431 = ptrtoint ptr %length.i181 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %length.i181, align 4
  %433 = call i32 @llvm.bswap.i32(i32 %432) #8
  %434 = trunc i32 %433 to i16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i171) #8
  %435 = call ptr @memset(ptr %id.i174, i32 255, i32 12)
  %data4.i182 = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.031.i180, i32 2, i32 0, i32 1
  %436 = ptrtoint ptr %cmd.i171 to i32
  call void @__asan_store4_noabort(i32 %436)
  store ptr %data4.i182, ptr %cmd.i171, align 4
  %hcmd1.i183 = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.031.i180, i32 2
  %conv.i184 = add i16 %434, -20
  %group.i185 = getelementptr inbounds %struct.iwl_fw_ini_hcmd, ptr %hcmd1.i183, i32 0, i32 1
  %437 = call ptr @memset(ptr %arrayinit.cur.ptr.i178, i32 0, i32 20)
  %438 = ptrtoint ptr %group.i185 to i32
  call void @__asan_load1_noabort(i32 %438)
  %439 = load i8, ptr %group.i185, align 1
  %conv7.i186 = zext i8 %439 to i32
  %shl.i187 = shl nuw nsw i32 %conv7.i186, 8
  %440 = ptrtoint ptr %hcmd1.i183 to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %hcmd1.i183, align 1
  %conv9.i188 = zext i8 %441 to i32
  %or.i189 = or i32 %shl.i187, %conv9.i188
  %442 = ptrtoint ptr %id.i174 to i32
  call void @__asan_store4_noabort(i32 %442)
  store i32 %or.i189, ptr %id.i174, align 4
  %443 = ptrtoint ptr %len.i175 to i32
  call void @__asan_store2_noabort(i32 %443)
  store i16 %conv.i184, ptr %len.i175, align 4
  %444 = ptrtoint ptr %arrayinit.start11.i176 to i32
  call void @__asan_store2_noabort(i32 %444)
  store i16 0, ptr %arrayinit.start11.i176, align 2
  %445 = ptrtoint ptr %arrayinit.end12.i177 to i32
  call void @__asan_store2_noabort(i32 %445)
  store i16 0, ptr %arrayinit.end12.i177, align 4
  %446 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %fwrt, align 8
  %call.i190 = call i32 @iwl_trans_send_cmd(ptr noundef %447, ptr noundef nonnull %cmd.i171) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i171) #8
  %448 = ptrtoint ptr %node.031.i180 to i32
  call void @__asan_load4_noabort(i32 %448)
  %node.0.i191 = load ptr, ptr %node.031.i180, align 4
  %cmp.not.i192 = icmp eq ptr %node.0.i191, %hcmd_list4
  br i1 %cmp.not.i192, label %for.body.i193.iwl_dbg_tlv_send_hcmds.exit195_crit_edge, label %for.body.i193.for.body.i193_crit_edge

for.body.i193.for.body.i193_crit_edge:            ; preds = %for.body.i193
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i193

for.body.i193.iwl_dbg_tlv_send_hcmds.exit195_crit_edge: ; preds = %for.body.i193
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_send_hcmds.exit195

iwl_dbg_tlv_send_hcmds.exit195:                   ; preds = %for.body.i193.iwl_dbg_tlv_send_hcmds.exit195_crit_edge, %sw.default.iwl_dbg_tlv_send_hcmds.exit195_crit_edge
  call fastcc void @iwl_dbg_tlv_apply_config(ptr noundef %fwrt, ptr noundef %config_list)
  call fastcc void @iwl_dbg_tlv_tp_trigger(ptr noundef %fwrt, i1 noundef zeroext %sync, ptr noundef %active_trig_list, ptr noundef %tp_data, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbg_tlv_send_hcmds.exit195, %iwl_dbg_tlv_send_hcmds.exit170, %for.body.i143.cleanup_crit_edge, %iwl_dbg_tlv_set_periodic_trigs.exit.cleanup_crit_edge, %iwl_dbg_tlv_send_hcmds.exit, %iwl_dbg_tlv_update_drams.exit, %iwl_trans_dbg_ini_valid.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_dbg_tlv_apply_config(ptr nocapture noundef readonly %fwrt, ptr noundef readonly %config_list) unnamed_addr #0 align 64 {
entry:
  %val.addr.i = alloca i32, align 4
  %dram_info = alloca %struct.iwl_dbgc1_info, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.0231 = load ptr, ptr %config_list, align 4
  %cmp.not232 = icmp eq ptr %node.0231, %config_list
  br i1 %cmp.not232, label %entry.for.end150_crit_edge, label %for.body.lr.ph

entry.for.end150_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end150

for.body.lr.ph:                                   ; preds = %entry
  %dev133 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %dbgc1_add_lsb = getelementptr inbounds %struct.iwl_dbgc1_info, ptr %dram_info, i32 0, i32 1
  %dbgc1_add_msb = getelementptr inbounds %struct.iwl_dbgc1_info, ptr %dram_info, i32 0, i32 2
  %dbgc1_size = getelementptr inbounds %struct.iwl_dbgc1_info, ptr %dram_info, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %node.0233 = phi ptr [ %node.0231, %for.body.lr.ph ], [ %node.0, %cleanup.for.body_crit_edge ]
  %length = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.0233, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %length, align 4
  %3 = call i32 @llvm.bswap.i32(i32 %2)
  %sub = add i32 %3, -20
  %div219 = lshr i32 %sub, 3
  %set_type = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.0233, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %set_type to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %set_type, align 1
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %addr_offset = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.0233, i32 2
  %7 = ptrtoint ptr %addr_offset to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %addr_offset, align 1
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %10 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %6, label %for.body.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %for.cond33.preheader
    i32 5, label %for.cond56.preheader
    i32 6, label %sw.bb77
    i32 7, label %sw.bb125
  ]

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond56.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp57225.not = icmp ult i32 %sub, 8
  br i1 %cmp57225.not, label %for.cond56.preheader.cleanup_crit_edge, label %for.body58.lr.ph

for.cond56.preheader.cleanup_crit_edge:           ; preds = %for.cond56.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body58.lr.ph:                                 ; preds = %for.cond56.preheader
  %addr_val59 = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.0233, i32 2, i32 0, i32 1
  %umax235 = call i32 @llvm.umax.i32(i32 %div219, i32 1)
  br label %for.body58

for.cond33.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp34227.not = icmp ult i32 %sub, 8
  br i1 %cmp34227.not, label %for.cond33.preheader.cleanup_crit_edge, label %for.body35.lr.ph

for.cond33.preheader.cleanup_crit_edge:           ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body35.lr.ph:                                 ; preds = %for.cond33.preheader
  %addr_val36 = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.0233, i32 2, i32 0, i32 1
  %umax237 = call i32 @llvm.umax.i32(i32 %div219, i32 1)
  br label %for.body35

sw.bb:                                            ; preds = %for.body
  %11 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fwrt, align 8
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %grab_nic_access = getelementptr inbounds %struct.iwl_trans_ops, ptr %14, i32 0, i32 32
  %15 = ptrtoint ptr %grab_nic_access to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %grab_nic_access, align 4
  %call = call zeroext i1 %16(ptr noundef %12) #8
  %17 = ptrtoint ptr %dev133 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev133, align 8
  br i1 %call, label %do.end19, label %do.end, !prof !158

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %18, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_apply_config, ptr noundef nonnull @.str.35) #8
  %19 = ptrtoint ptr %dev133 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev133, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %20, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_apply_config, ptr noundef nonnull @.str.36) #8
  br label %cleanup

do.end19:                                         ; preds = %sw.bb
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %18, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_apply_config, ptr noundef nonnull @.str.37, i32 noundef %div219) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp24229.not = icmp ult i32 %sub, 8
  br i1 %cmp24229.not, label %do.end19.for.end_crit_edge, label %for.body25.lr.ph

do.end19.for.end_crit_edge:                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body25.lr.ph:                                 ; preds = %do.end19
  %addr_val = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.0233, i32 2, i32 0, i32 1
  %umax239 = call i32 @llvm.umax.i32(i32 %div219, i32 1)
  br label %for.body25

for.body25:                                       ; preds = %for.body25.for.body25_crit_edge, %for.body25.lr.ph
  %count.0230 = phi i32 [ 0, %for.body25.lr.ph ], [ %inc, %for.body25.for.body25_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.iwl_fw_ini_addr_val], ptr %addr_val, i32 0, i32 %count.0230
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %arrayidx, align 1
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %value29 = getelementptr [0 x %struct.iwl_fw_ini_addr_val], ptr %addr_val, i32 0, i32 %count.0230, i32 1
  %24 = ptrtoint ptr %value29 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %value29, align 1
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fwrt, align 8
  %add = add i32 %23, %9
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i, align 4
  %write_prph.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %30, i32 0, i32 25
  %31 = ptrtoint ptr %write_prph.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_prph.i, align 4
  call void %32(ptr noundef %28, i32 noundef %add, i32 noundef %26) #8
  %inc = add nuw nsw i32 %count.0230, 1
  %exitcond240.not = icmp eq i32 %inc, %umax239
  br i1 %exitcond240.not, label %for.body25.for.end_crit_edge, label %for.body25.for.body25_crit_edge

for.body25.for.body25_crit_edge:                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body25

for.body25.for.end_crit_edge:                     ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body25.for.end_crit_edge, %do.end19.for.end_crit_edge
  %33 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fwrt, align 8
  %ops.i220 = getelementptr inbounds %struct.iwl_trans, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %ops.i220 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i220, align 4
  %release_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %36, i32 0, i32 33
  %37 = ptrtoint ptr %release_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %release_nic_access.i, align 4
  call void %38(ptr noundef %34) #8
  br label %cleanup

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %for.body35.lr.ph
  %count.1228 = phi i32 [ 0, %for.body35.lr.ph ], [ %inc53, %for.body35.for.body35_crit_edge ]
  %arrayidx37 = getelementptr [0 x %struct.iwl_fw_ini_addr_val], ptr %addr_val36, i32 0, i32 %count.1228
  %39 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %arrayidx37, align 1
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %value41 = getelementptr [0 x %struct.iwl_fw_ini_addr_val], ptr %addr_val36, i32 0, i32 %count.1228, i32 1
  %42 = ptrtoint ptr %value41 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %value41, align 1
  %44 = call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fwrt, align 8
  %add43 = add i32 %41, %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i)
  %47 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %44, ptr %val.addr.i, align 4
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %46, i32 0, i32 1
  %48 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i.i, align 4
  %write_mem.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %49, i32 0, i32 27
  %50 = ptrtoint ptr %write_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_mem.i.i, align 4
  %call.i.i = call i32 %51(ptr noundef %46, i32 noundef %add43, ptr noundef nonnull %val.addr.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i)
  %52 = ptrtoint ptr %dev133 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev133, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %53, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_apply_config, ptr noundef nonnull @.str.38, i32 noundef %count.1228, i32 noundef %41, i32 noundef %44) #8
  %inc53 = add nuw nsw i32 %count.1228, 1
  %exitcond238.not = icmp eq i32 %inc53, %umax237
  br i1 %exitcond238.not, label %for.body35.cleanup_crit_edge, label %for.body35.for.body35_crit_edge

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35

for.body35.cleanup_crit_edge:                     ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body58:                                       ; preds = %for.body58.for.body58_crit_edge, %for.body58.lr.ph
  %count.2226 = phi i32 [ 0, %for.body58.lr.ph ], [ %inc75, %for.body58.for.body58_crit_edge ]
  %arrayidx60 = getelementptr [0 x %struct.iwl_fw_ini_addr_val], ptr %addr_val59, i32 0, i32 %count.2226
  %54 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %arrayidx60, align 1
  %56 = call i32 @llvm.bswap.i32(i32 %55)
  %value64 = getelementptr [0 x %struct.iwl_fw_ini_addr_val], ptr %addr_val59, i32 0, i32 %count.2226, i32 1
  %57 = ptrtoint ptr %value64 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %value64, align 1
  %59 = call i32 @llvm.bswap.i32(i32 %58)
  %60 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fwrt, align 8
  %add66 = add i32 %56, %9
  call void @iwl_write32(ptr noundef %61, i32 noundef %add66, i32 noundef %59) #8
  %62 = ptrtoint ptr %dev133 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev133, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %63, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_apply_config, ptr noundef nonnull @.str.39, i32 noundef %count.2226, i32 noundef %56, i32 noundef %59) #8
  %inc75 = add nuw nsw i32 %count.2226, 1
  %exitcond236.not = icmp eq i32 %inc75, %umax235
  br i1 %exitcond236.not, label %for.body58.cleanup_crit_edge, label %for.body58.for.body58_crit_edge

for.body58.for.body58_crit_edge:                  ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body58

for.body58.cleanup_crit_edge:                     ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb77:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dram_info) #8
  %64 = call ptr @memset(ptr %dram_info, i32 0, i32 16)
  %65 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fwrt, align 8
  %frags80 = getelementptr %struct.iwl_trans, ptr %66, i32 0, i32 32, i32 13, i32 1, i32 1
  %67 = ptrtoint ptr %frags80 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %frags80, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %conv = zext i32 %70 to i64
  %71 = call i64 @llvm.bswap.i64(i64 %conv)
  %size = getelementptr inbounds %struct.iwl_dram_data, ptr %68, i32 0, i32 2
  %72 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %size, align 4
  %74 = call i32 @llvm.bswap.i32(i32 %73)
  %75 = ptrtoint ptr %dev133 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev133, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %76, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_apply_config, ptr noundef nonnull @.str.40, i64 noundef %71, i32 noundef %74) #8
  %77 = ptrtoint ptr %dev133 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev133, align 8
  %79 = ptrtoint ptr %addr_offset to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %addr_offset, align 1
  %81 = call i32 @llvm.bswap.i32(i32 %80)
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %78, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_apply_config, ptr noundef nonnull @.str.41, i32 noundef %81) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp98223.not = icmp ult i32 %sub, 8
  br i1 %cmp98223.not, label %sw.bb77.for.end124_crit_edge, label %for.body100.lr.ph

sw.bb77.for.end124_crit_edge:                     ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end124

for.body100.lr.ph:                                ; preds = %sw.bb77
  %addr_val101 = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.0233, i32 2, i32 0, i32 1
  %add104 = add i32 %70, 1024
  %82 = call i32 @llvm.bswap.i32(i32 %add104)
  %sub108 = add i32 %73, -1024
  %83 = call i32 @llvm.bswap.i32(i32 %sub108)
  %umax = call i32 @llvm.umax.i32(i32 %div219, i32 1)
  br label %for.body100

for.cond97:                                       ; preds = %for.body100
  %inc123 = add nuw nsw i32 %count.3224, 1
  %exitcond.not = icmp eq i32 %inc123, %umax
  br i1 %exitcond.not, label %for.cond97.for.end124_crit_edge, label %for.cond97.for.body100_crit_edge

for.cond97.for.body100_crit_edge:                 ; preds = %for.cond97
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body100

for.cond97.for.end124_crit_edge:                  ; preds = %for.cond97
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end124

for.body100:                                      ; preds = %for.cond97.for.body100_crit_edge, %for.body100.lr.ph
  %count.3224 = phi i32 [ 0, %for.body100.lr.ph ], [ %inc123, %for.cond97.for.body100_crit_edge ]
  %arrayidx102 = getelementptr [0 x %struct.iwl_fw_ini_addr_val], ptr %addr_val101, i32 0, i32 %count.3224
  %84 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %arrayidx102, align 1
  %86 = call i32 @llvm.bswap.i32(i32 %85)
  %87 = ptrtoint ptr %dbgc1_add_lsb to i32
  call void @__asan_storeN_noabort(i32 %87, i32 4)
  store i32 %82, ptr %dbgc1_add_lsb, align 1
  %88 = ptrtoint ptr %dbgc1_add_msb to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 0, ptr %dbgc1_add_msb, align 1
  %89 = ptrtoint ptr %dbgc1_size to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 %83, ptr %dbgc1_size, align 1
  %90 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %fwrt, align 8
  %add110 = add i32 %86, %9
  %ops.i221 = getelementptr inbounds %struct.iwl_trans, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %ops.i221 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ops.i221, align 4
  %write_mem.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %93, i32 0, i32 27
  %94 = ptrtoint ptr %write_mem.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write_mem.i, align 4
  %call.i = call i32 %95(ptr noundef %91, i32 noundef %add110, ptr noundef nonnull %dram_info, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool112.not = icmp eq i32 %call.i, 0
  br i1 %tobool112.not, label %for.cond97, label %do.end117

do.end117:                                        ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %dev133 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev133, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %97, i32 noundef 0, ptr noundef nonnull @.str.42) #8
  br label %for.end124

for.end124:                                       ; preds = %do.end117, %for.cond97.for.end124_crit_edge, %sw.bb77.for.end124_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dram_info) #8
  br label %cleanup

sw.bb125:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %value128 = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.0233, i32 2, i32 1
  %98 = ptrtoint ptr %value128 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %value128, align 1
  %100 = call i32 @llvm.bswap.i32(i32 %99)
  %101 = ptrtoint ptr %dev133 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev133, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %102, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_apply_config, ptr noundef nonnull @.str.43, i32 noundef %100) #8
  %103 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %fwrt, align 8
  %ucode_preset = getelementptr inbounds %struct.iwl_trans, ptr %104, i32 0, i32 32, i32 23
  %105 = ptrtoint ptr %ucode_preset to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %100, ptr %ucode_preset, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb125, %for.end124, %for.body58.cleanup_crit_edge, %for.body35.cleanup_crit_edge, %for.end, %do.end, %for.cond33.preheader.cleanup_crit_edge, %for.cond56.preheader.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %106 = ptrtoint ptr %node.0233 to i32
  call void @__asan_load4_noabort(i32 %106)
  %node.0 = load ptr, ptr %node.0233, align 4
  %cmp.not = icmp eq ptr %node.0, %config_list
  br i1 %cmp.not, label %cleanup.for.end150_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end150_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end150

for.end150:                                       ; preds = %cleanup.for.end150_crit_edge, %entry.for.end150_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_dbg_tlv_tp_trigger(ptr noundef %fwrt, i1 noundef zeroext %sync, ptr noundef readonly %active_trig_list, ptr noundef %tp_data, ptr noundef readonly %data_check) unnamed_addr #0 align 64 {
entry:
  %dump_data = alloca %struct.iwl_fwrt_dump_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %active_trig_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.09 = load ptr, ptr %active_trig_list, align 4
  %cmp.not10 = icmp eq ptr %node.09, %active_trig_list
  br i1 %cmp.not10, label %entry.cleanup143_crit_edge, label %for.body.lr.ph

entry.cleanup143_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup143

for.body.lr.ph:                                   ; preds = %entry
  %1 = getelementptr inbounds %struct.anon.136, ptr %dump_data, i32 0, i32 1
  %tobool11.not = icmp eq ptr %data_check, null
  %dev = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %node.011 = phi ptr [ %node.09, %for.body.lr.ph ], [ %node.0, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dump_data) #8
  %data = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.011, i32 1
  %2 = ptrtoint ptr %dump_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %dump_data, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %1, align 4
  %length.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %node.011, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length.i, align 4
  %6 = call i32 @llvm.bswap.i32(i32 %5) #8
  %rem.i = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %_iwl_tlv_array_len.exit, label %_iwl_tlv_array_len.exit.thread, !prof !158

_iwl_tlv_array_len.exit.thread:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 971, i32 noundef 9, ptr noundef null) #8
  %7 = ptrtoint ptr %dump_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dump_data, align 4
  %time_point3 = getelementptr inbounds %struct.iwl_fw_ini_trigger_tlv, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %time_point3 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %time_point3, align 1
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  br label %if.then

_iwl_tlv_array_len.exit:                          ; preds = %for.body
  %sub.i = add i32 %6, -52
  %div1.i = lshr i32 %sub.i, 2
  %12 = ptrtoint ptr %dump_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dump_data, align 4
  %time_point = getelementptr inbounds %struct.iwl_fw_ini_trigger_tlv, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %time_point to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %time_point, align 1
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %tobool.not = icmp ult i32 %sub.i, 4
  br i1 %tobool.not, label %_iwl_tlv_array_len.exit.if.then_crit_edge, label %for.body10.lr.ph

_iwl_tlv_array_len.exit.if.then_crit_edge:        ; preds = %_iwl_tlv_array_len.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %_iwl_tlv_array_len.exit.if.then_crit_edge, %_iwl_tlv_array_len.exit.thread
  %17 = phi i32 [ %11, %_iwl_tlv_array_len.exit.thread ], [ %16, %_iwl_tlv_array_len.exit.if.then_crit_edge ]
  %18 = phi i32 [ %10, %_iwl_tlv_array_len.exit.thread ], [ %15, %_iwl_tlv_array_len.exit.if.then_crit_edge ]
  %call4 = call i32 @iwl_fw_dbg_ini_collect(ptr noundef %fwrt, ptr noundef nonnull %dump_data, i1 noundef zeroext %sync) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.for.end_crit_edge, label %cleanup143.critedge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body10.lr.ph:                                 ; preds = %_iwl_tlv_array_len.exit
  br i1 %tobool11.not, label %for.body10.lr.ph.if.then15.split_crit_edge, label %for.body10.lr.ph.for.body10_crit_edge

for.body10.lr.ph.for.body10_crit_edge:            ; preds = %for.body10.lr.ph
  br label %for.body10

for.body10.lr.ph.if.then15.split_crit_edge:       ; preds = %for.body10.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15.split

for.cond8:                                        ; preds = %for.body10
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, %div1.i
  br i1 %exitcond.not, label %for.cond8.for.end_crit_edge, label %for.cond8.for.body10_crit_edge

for.cond8.for.body10_crit_edge:                   ; preds = %for.cond8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10

for.cond8.for.end_crit_edge:                      ; preds = %for.cond8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body10:                                       ; preds = %for.cond8.for.body10_crit_edge, %for.body10.lr.ph.for.body10_crit_edge
  %i.08 = phi i32 [ %inc, %for.cond8.for.body10_crit_edge ], [ 0, %for.body10.lr.ph.for.body10_crit_edge ]
  %19 = ptrtoint ptr %dump_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dump_data, align 4
  %arrayidx = getelementptr %struct.iwl_fw_ini_trigger_tlv, ptr %20, i32 0, i32 11, i32 %i.08
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %arrayidx, align 1
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %call14 = call zeroext i1 %data_check(ptr noundef %fwrt, ptr noundef nonnull %dump_data, ptr noundef %tp_data, i32 noundef %23) #8, !callees !159
  br i1 %call14, label %for.body10.if.then15.split_crit_edge, label %for.cond8

for.body10.if.then15.split_crit_edge:             ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15.split

if.then15.split:                                  ; preds = %for.body10.if.then15.split_crit_edge, %for.body10.lr.ph.if.then15.split_crit_edge
  %call17 = call i32 @iwl_fw_dbg_ini_collect(ptr noundef %fwrt, ptr noundef nonnull %dump_data, i1 noundef zeroext %sync) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then15.split.for.end_crit_edge, label %cleanup143.critedge1

if.then15.split.for.end_crit_edge:                ; preds = %if.then15.split
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.then15.split.for.end_crit_edge, %for.cond8.for.end_crit_edge, %if.then.for.end_crit_edge
  %24 = phi i32 [ %15, %if.then15.split.for.end_crit_edge ], [ %18, %if.then.for.end_crit_edge ], [ %15, %for.cond8.for.end_crit_edge ]
  %25 = phi i32 [ %16, %if.then15.split.for.end_crit_edge ], [ %17, %if.then.for.end_crit_edge ], [ %16, %for.cond8.for.end_crit_edge ]
  %26 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fwrt, align 8
  %restart_required = getelementptr inbounds %struct.iwl_trans, ptr %27, i32 0, i32 32, i32 24
  %28 = ptrtoint ptr %restart_required to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %restart_required, align 8
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  %31 = ptrtoint ptr %dump_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dump_data, align 4
  %reset_fw = getelementptr inbounds %struct.iwl_fw_ini_trigger_tlv, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %reset_fw to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %reset_fw, align 1
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %30, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_tp_trigger, ptr noundef nonnull @.str.50, i32 noundef %25, i32 noundef %34) #8
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 8
  %37 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fwrt, align 8
  %restart_required33 = getelementptr inbounds %struct.iwl_trans, ptr %38, i32 0, i32 32, i32 24
  %39 = ptrtoint ptr %restart_required33 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %restart_required33, align 8, !range !157
  %41 = zext i8 %40 to i32
  %last_tp_resetfw = getelementptr inbounds %struct.iwl_trans, ptr %38, i32 0, i32 32, i32 25
  %42 = ptrtoint ptr %last_tp_resetfw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %last_tp_resetfw, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %36, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_tp_trigger, ptr noundef nonnull @.str.51, i32 noundef %41, i32 noundef %43) #8
  %44 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fwrt, align 8
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %49)
  %cmp40 = icmp eq i32 %49, 17
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %restart_required45 = getelementptr inbounds %struct.iwl_trans, ptr %45, i32 0, i32 32, i32 24
  %50 = ptrtoint ptr %restart_required45 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %restart_required45, align 8
  br label %cleanup

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %24)
  %cmp46 = icmp eq i32 %24, 67108864
  br i1 %cmp46, label %land.lhs.true, label %if.else.if.else67_crit_edge

if.else.if.else67_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else67

land.lhs.true:                                    ; preds = %if.else
  %last_tp_resetfw50 = getelementptr inbounds %struct.iwl_trans, ptr %45, i32 0, i32 32, i32 25
  %51 = ptrtoint ptr %last_tp_resetfw50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %last_tp_resetfw50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp51 = icmp eq i32 %52, 1
  br i1 %cmp51, label %if.then53, label %land.lhs.true.if.else67_crit_edge

land.lhs.true.if.else67_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else67

if.then53:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %restart_required56 = getelementptr inbounds %struct.iwl_trans, ptr %45, i32 0, i32 32, i32 24
  %53 = ptrtoint ptr %restart_required56 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %restart_required56, align 8
  %54 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fwrt, align 8
  %last_tp_resetfw59 = getelementptr inbounds %struct.iwl_trans, ptr %55, i32 0, i32 32, i32 25
  %56 = ptrtoint ptr %last_tp_resetfw59 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 255, ptr %last_tp_resetfw59, align 4
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %58, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_tp_trigger, ptr noundef nonnull @.str.52) #8
  br label %cleanup

if.else67:                                        ; preds = %land.lhs.true.if.else67_crit_edge, %if.else.if.else67_crit_edge
  %59 = ptrtoint ptr %dump_data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dump_data, align 4
  %reset_fw69 = getelementptr inbounds %struct.iwl_fw_ini_trigger_tlv, ptr %60, i32 0, i32 8
  %61 = ptrtoint ptr %reset_fw69 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %reset_fw69, align 1
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %62, label %do.end121 [
    i32 33554432, label %do.end76
    i32 16777216, label %do.end92
    i32 0, label %do.end113
  ]

do.end76:                                         ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %65, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_tp_trigger, ptr noundef nonnull @.str.53) #8
  %66 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fwrt, align 8
  %restart_required82 = getelementptr inbounds %struct.iwl_trans, ptr %67, i32 0, i32 32, i32 24
  %68 = ptrtoint ptr %restart_required82 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %restart_required82, align 8
  br label %cleanup

do.end92:                                         ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %70, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_tp_trigger, ptr noundef nonnull @.str.54) #8
  %71 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %fwrt, align 8
  %restart_required98 = getelementptr inbounds %struct.iwl_trans, ptr %72, i32 0, i32 32, i32 24
  %73 = ptrtoint ptr %restart_required98 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %restart_required98, align 8
  %74 = ptrtoint ptr %dump_data to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dump_data, align 4
  %reset_fw100 = getelementptr inbounds %struct.iwl_fw_ini_trigger_tlv, ptr %75, i32 0, i32 8
  %76 = ptrtoint ptr %reset_fw100 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %reset_fw100, align 1
  %78 = call i32 @llvm.bswap.i32(i32 %77)
  %79 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fwrt, align 8
  %last_tp_resetfw103 = getelementptr inbounds %struct.iwl_trans, ptr %80, i32 0, i32 32, i32 25
  %81 = ptrtoint ptr %last_tp_resetfw103 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %78, ptr %last_tp_resetfw103, align 4
  br label %cleanup

do.end113:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %83, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_tp_trigger, ptr noundef nonnull @.str.55) #8
  br label %cleanup

do.end121:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #10
  %84 = call i32 @llvm.bswap.i32(i32 %62)
  %85 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %86, i32 noundef 0, ptr noundef nonnull @.str.56, i32 noundef %84) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end121, %do.end113, %do.end92, %do.end76, %if.then53, %if.then42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dump_data) #8
  %87 = ptrtoint ptr %node.011 to i32
  call void @__asan_load4_noabort(i32 %87)
  %node.0 = load ptr, ptr %node.011, align 4
  %cmp.not = icmp eq ptr %node.0, %active_trig_list
  br i1 %cmp.not, label %cleanup.cleanup143_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.cleanup143_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup143

cleanup143.critedge:                              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dump_data) #8
  br label %cleanup143

cleanup143.critedge1:                             ; preds = %if.then15.split
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dump_data) #8
  br label %cleanup143

cleanup143:                                       ; preds = %cleanup143.critedge1, %cleanup143.critedge, %cleanup.cleanup143_crit_edge, %entry.cleanup143_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @iwl_dbg_tlv_check_fw_pkt(ptr nocapture noundef readnone %fwrt, ptr nocapture noundef writeonly %dump_data, ptr nocapture noundef readonly %tp_data, i32 noundef %trig_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %trig_data.addr.sroa.2.0.extract.shift = lshr i32 %trig_data, 16
  %0 = ptrtoint ptr %tp_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tp_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup16_crit_edge, label %land.lhs.true

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup16

land.lhs.true:                                    ; preds = %entry
  %trig_data.addr.sroa.0.0.extract.shift = lshr i32 %trig_data, 24
  %hdr = getelementptr inbounds %struct.iwl_rx_packet, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hdr, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %trig_data.addr.sroa.0.0.extract.shift, i32 %conv)
  %cmp = icmp eq i32 %trig_data.addr.sroa.0.0.extract.shift, %conv
  br i1 %cmp, label %land.lhs.true4, label %land.lhs.true.cleanup16_crit_edge

land.lhs.true.cleanup16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup16

land.lhs.true4:                                   ; preds = %land.lhs.true
  %group_id = getelementptr inbounds %struct.iwl_rx_packet, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %group_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %group_id, align 1
  %6 = trunc i32 %trig_data.addr.sroa.2.0.extract.shift to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp9 = icmp eq i8 %5, %6
  br i1 %cmp9, label %if.then, label %land.lhs.true4.cleanup16_crit_edge

land.lhs.true4.cleanup16_crit_edge:               ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup16

if.then:                                          ; preds = %land.lhs.true4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %1, align 1
  %9 = and i32 %8, -12648448
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %add = add nuw nsw i32 %10, 4
  %call11 = tail call ptr @kmemdup(ptr noundef nonnull %1, i32 noundef %add, i32 noundef 2592) #8
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %fw_pkt14 = getelementptr inbounds %struct.anon.136, ptr %dump_data, i32 0, i32 1
  %11 = ptrtoint ptr %fw_pkt14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call11, ptr %fw_pkt14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge
  %12 = xor i1 %tobool12.not, true
  br label %cleanup16

cleanup16:                                        ; preds = %cleanup, %land.lhs.true4.cleanup16_crit_edge, %land.lhs.true.cleanup16_crit_edge, %entry.cleanup16_crit_edge
  %retval.1 = phi i1 [ %12, %cleanup ], [ false, %land.lhs.true4.cleanup16_crit_edge ], [ false, %land.lhs.true.cleanup16_crit_edge ], [ false, %entry.cleanup16_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbg_tlv_alloc_debug_info(ptr noundef %trans, ptr noundef %tlv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %tlv, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1275068416, i32 %1)
  %cmp.not = icmp eq i32 %1, 1275068416
  br i1 %cmp.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %debug_cfg_name = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %tlv, i32 2, i32 1
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_alloc_debug_info, ptr noundef nonnull @.str.8, ptr noundef %debug_cfg_name) #8
  %debug_info_tlv_list = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 19
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  %add.i = add i32 %6, 16
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #11
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %if.end.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %do.end
  %tlv1.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %call9.i.i.i, i32 0, i32 1
  %add2.i = add i32 %6, 8
  %7 = call ptr @memcpy(ptr %tlv1.i, ptr %tlv, i32 %add2.i)
  %prev.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 19, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i, ptr noundef %9, ptr noundef %debug_info_tlv_list) #8
  br i1 %call.i.i.i, label %if.end.i.i9.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i9.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9.i.i.i, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %debug_info_tlv_list, ptr %call9.i.i.i, align 128
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call9.i.i.i, ptr %9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i9.i, %if.end.i.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end.i.i9.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbg_tlv_alloc_buf_alloc(ptr nocapture noundef %trans, ptr nocapture noundef readonly %tlv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %tlv, i32 0, i32 2
  %length = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %tlv, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 469762048, i32 %1)
  %cmp.not = icmp eq i32 %1, 469762048
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf_location1 = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %tlv, i32 2, i32 1
  %2 = ptrtoint ptr %buf_location1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %buf_location1, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %alloc_id2 = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %tlv, i32 2
  %5 = ptrtoint ptr %alloc_id2 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %alloc_id2, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3 = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp4 = icmp ugt i32 %4, 3
  %or.cond = select i1 %cmp3, i1 true, i1 %cmp4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp7 = icmp eq i32 %6, 0
  %or.cond40 = select i1 %or.cond, i1 true, i1 %cmp7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp9 = icmp ugt i32 %7, 4
  %or.cond41 = select i1 %or.cond40, i1 true, i1 %cmp9
  br i1 %or.cond41, label %if.end.do.end_crit_edge, label %if.end11

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %3)
  %cmp12 = icmp ne i32 %3, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %6)
  %cmp13.not = icmp eq i32 %6, 16777216
  %or.cond42 = select i1 %cmp12, i1 true, i1 %cmp13.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %3)
  %cmp16 = icmp ne i32 %3, 16777216
  %or.cond43 = select i1 %cmp16, i1 true, i1 %cmp13.not
  %or.cond44 = select i1 %or.cond42, i1 %or.cond43, i1 false
  br i1 %or.cond44, label %if.end20, label %if.end11.do.end_crit_edge

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end20:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 12, i32 %7
  %8 = call ptr @memcpy(ptr %arrayidx, ptr %data, i32 28)
  br label %cleanup

do.end:                                           ; preds = %if.end11.do.end_crit_edge, %if.end.do.end_crit_edge
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %10, i32 noundef 0, ptr noundef nonnull @.str.9, i32 noundef %7, i32 noundef %4) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end20 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbg_tlv_alloc_hcmd(ptr noundef %trans, ptr nocapture noundef readonly %tlv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %time_point = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %tlv, i32 2
  %0 = ptrtoint ptr %time_point to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %time_point, align 1
  %length = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %tlv, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %4)
  %cmp = icmp ult i32 %4, 21
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = tail call i32 @llvm.bswap.i32(i32 %1)
  %.fr = freeze i32 %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %.fr)
  %cmp2 = icmp ugt i32 %.fr, 26
  br i1 %cmp2, label %if.end.do.end_crit_edge, label %switch.early.test

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

switch.early.test:                                ; preds = %if.end
  %6 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %1, label %if.end9 [
    i32 16777216, label %switch.early.test.do.end_crit_edge
    i32 0, label %switch.early.test.do.end_crit_edge20
  ]

switch.early.test.do.end_crit_edge20:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

switch.early.test.do.end_crit_edge:               ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %switch.early.test.do.end_crit_edge, %switch.early.test.do.end_crit_edge20, %if.end.do.end_crit_edge
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %8, i32 noundef 0, ptr noundef nonnull @.str.10, i32 noundef %.fr) #8
  br label %cleanup

if.end9:                                          ; preds = %switch.early.test
  %hcmd_list = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 20, i32 %.fr, i32 2
  %add.i = add i32 %4, 16
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #11
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end9.cleanup_crit_edge, label %if.end.i

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end9
  %tlv1.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %call9.i.i.i, i32 0, i32 1
  %add2.i = add i32 %4, 8
  %9 = call ptr @memcpy(ptr %tlv1.i, ptr %tlv, i32 %add2.i)
  %prev.i.i = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 20, i32 %.fr, i32 2, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i, ptr noundef %11, ptr noundef %hcmd_list) #8
  br i1 %call.i.i.i, label %if.end.i.i9.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i9.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i.i.i, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %hcmd_list, ptr %call9.i.i.i, align 128
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call9.i.i.i, ptr %11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i9.i, %if.end.i.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end.i.i9.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbg_tlv_alloc_region(ptr nocapture noundef %trans, ptr noundef %tlv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %tlv, i32 0, i32 2
  %id1 = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %tlv, i32 2
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %id1, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %type2 = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %tlv, i32 2, i32 1
  %3 = ptrtoint ptr %type2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %type2, align 1
  %length = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %tlv, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %add = add i32 %7, 8
  %8 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %data, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp ugt i32 %10, 1
  %and = and i32 %2, 65535
  %spec.select = select i1 %cmp, i32 %and, i32 %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %7)
  %cmp4 = icmp ult i32 %7, 64
  br i1 %cmp4, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %tlv, i32 3
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %12, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_alloc_region, ptr noundef nonnull @.str.11, i32 noundef 32, ptr noundef %name) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %spec.select)
  %cmp11 = icmp ugt i32 %spec.select, 63
  br i1 %cmp11, label %do.end16, label %if.end20

do.end16:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %14, i32 noundef 0, ptr noundef nonnull @.str.12, i32 noundef %spec.select) #8
  br label %cleanup

if.end20:                                         ; preds = %do.end
  %conv = zext i8 %4 to i32
  %15 = add i8 %4, -19
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %15)
  %16 = icmp ult i8 %15, -18
  br i1 %16, label %do.end30, label %if.end35

do.end30:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %18, i32 noundef 0, ptr noundef nonnull @.str.13, i32 noundef %conv) #8
  br label %cleanup

if.end35:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %4)
  %cmp37 = icmp eq i8 %4, 16
  br i1 %cmp37, label %land.lhs.true, label %if.end35.if.end48_crit_edge

if.end35.if.end48_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end35
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %read_config32 = getelementptr inbounds %struct.iwl_trans_ops, ptr %20, i32 0, i32 28
  %21 = ptrtoint ptr %read_config32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_config32, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %do.end43, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

do.end43:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %24, i32 noundef 0, ptr noundef nonnull @.str.14, i32 noundef 16) #8
  br label %cleanup

if.end48:                                         ; preds = %land.lhs.true.if.end48_crit_edge, %if.end35.if.end48_crit_edge
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 18, i32 %spec.select
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %tobool49.not = icmp eq ptr %26, null
  br i1 %tobool49.not, label %if.end48.if.end58_crit_edge, label %do.end54

if.end48.if.end58_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %28, ptr noundef nonnull @.str.15, i32 noundef %spec.select) #8
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %30) #8
  br label %if.end58

if.end58:                                         ; preds = %do.end54, %if.end48.if.end58_crit_edge
  %call = tail call ptr @kmemdup(ptr noundef %tlv, i32 noundef %add, i32 noundef 3264) #8
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call, ptr %arrayidx, align 4
  %tobool59.not = icmp eq ptr %call, null
  br i1 %tobool59.not, label %if.end58.cleanup_crit_edge, label %do.end65

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end65:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %33, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_alloc_region, ptr noundef nonnull @.str.16, i32 noundef %spec.select, i32 noundef %conv) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end65, %if.end58.cleanup_crit_edge, %do.end43, %do.end30, %do.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end16 ], [ -22, %do.end30 ], [ 0, %do.end65 ], [ -95, %do.end43 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbg_tlv_alloc_trigger(ptr noundef %trans, ptr noundef %tlv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %time_point = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %tlv, i32 2
  %0 = ptrtoint ptr %time_point to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %time_point, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %reset_fw = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %tlv, i32 5, i32 1
  %3 = ptrtoint ptr %reset_fw to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %reset_fw, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %length = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %tlv, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %8)
  %cmp = icmp ult i32 %8, 52
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %2)
  %cmp2 = icmp ugt i32 %2, 26
  %or.cond = select i1 %cmp1, i1 true, i1 %cmp2
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  br i1 %or.cond, label %do.end, label %do.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %10, i32 noundef 0, ptr noundef nonnull @.str.17, i32 noundef %2) #8
  br label %cleanup

do.end11:                                         ; preds = %if.end
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %10, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_alloc_trigger, ptr noundef nonnull @.str.18, i32 noundef %2, i32 noundef %5) #8
  %last_tp_resetfw = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 25
  %11 = ptrtoint ptr %last_tp_resetfw to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 255, ptr %last_tp_resetfw, align 4
  %occurrences = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %tlv, i32 4
  %12 = ptrtoint ptr %occurrences to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %occurrences, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.then15, label %do.end11.if.end23_crit_edge

do.end11.if.end23_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then15:                                        ; preds = %do.end11
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %add = add i32 %16, 8
  %call = tail call ptr @kmemdup(ptr noundef %tlv, i32 noundef %add, i32 noundef 3264) #8
  %tobool17.not = icmp eq ptr %call, null
  br i1 %tobool17.not, label %if.then15.cleanup_crit_edge, label %if.end19

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %occurrences22 = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %call, i32 4
  %17 = ptrtoint ptr %occurrences22 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 -1, ptr %occurrences22, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.end19, %do.end11.if.end23_crit_edge
  %tlv.addr.0 = phi ptr [ %tlv, %do.end11.if.end23_crit_edge ], [ %call, %if.end19 ]
  %dup.0 = phi ptr [ null, %do.end11.if.end23_crit_edge ], [ %call, %if.end19 ]
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 20, i32 %2
  %length.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %tlv.addr.0, i32 0, i32 1
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  %add.i = add i32 %20, 16
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #11
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end23.iwl_dbg_tlv_add.exit_crit_edge, label %if.end.i

if.end23.iwl_dbg_tlv_add.exit_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_add.exit

if.end.i:                                         ; preds = %if.end23
  %tlv1.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %call9.i.i.i, i32 0, i32 1
  %add2.i = add i32 %20, 8
  %21 = call ptr @memcpy(ptr %tlv1.i, ptr %tlv.addr.0, i32 %add2.i)
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i, ptr noundef %23, ptr noundef %arrayidx) #8
  br i1 %call.i.i.i, label %if.end.i.i9.i, label %if.end.i.iwl_dbg_tlv_add.exit_crit_edge

if.end.i.iwl_dbg_tlv_add.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbg_tlv_add.exit

if.end.i.i9.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9.i.i.i, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx, ptr %call9.i.i.i, align 128
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call9.i.i.i, ptr %23, align 4
  br label %iwl_dbg_tlv_add.exit

iwl_dbg_tlv_add.exit:                             ; preds = %if.end.i.i9.i, %if.end.i.iwl_dbg_tlv_add.exit_crit_edge, %if.end23.iwl_dbg_tlv_add.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %if.end23.iwl_dbg_tlv_add.exit_crit_edge ], [ 0, %if.end.i.iwl_dbg_tlv_add.exit_crit_edge ], [ 0, %if.end.i.i9.i ]
  tail call void @kfree(ptr noundef %dup.0) #8
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbg_tlv_add.exit, %if.then15.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.0.i, %iwl_dbg_tlv_add.exit ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.then15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbg_tlv_config_set(ptr noundef %trans, ptr nocapture noundef readonly %tlv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %time_point = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %tlv, i32 2
  %0 = ptrtoint ptr %time_point to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %time_point, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %set_type = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %tlv, i32 2, i32 1
  %3 = ptrtoint ptr %set_type to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %set_type, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %2)
  %cmp1 = icmp ugt i32 %2, 26
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_config_set, ptr noundef nonnull @.str.19, i32 noundef %2) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp5 = icmp eq i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp7 = icmp ugt i32 %5, 7
  %or.cond30 = select i1 %cmp5, i1 true, i1 %cmp7
  br i1 %or.cond30, label %do.end12, label %if.end16

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev13 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %8 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev13, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %9, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbg_tlv_config_set, ptr noundef nonnull @.str.20, i32 noundef %5) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %config_list = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 20, i32 %2, i32 3
  %length.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %tlv, i32 0, i32 1
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  %add.i = add i32 %12, 16
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #11
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end16.cleanup_crit_edge, label %if.end.i

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end16
  %tlv1.i = getelementptr inbounds %struct.iwl_dbg_tlv_node, ptr %call9.i.i.i, i32 0, i32 1
  %add2.i = add i32 %12, 8
  %13 = call ptr @memcpy(ptr %tlv1.i, ptr %tlv, i32 %add2.i)
  %prev.i.i = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 20, i32 %2, i32 3, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i, ptr noundef %15, ptr noundef %config_list) #8
  br i1 %call.i.i.i, label %if.end.i.i9.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i9.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9.i.i.i, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %config_list, ptr %call9.i.i.i, align 128
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call9.i.i.i, ptr %15, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i9.i, %if.end.i.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %do.end12, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end12 ], [ -12, %if.end16.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end.i.i9.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_fw_dbg_ini_collect(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_trans_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_dbg_tlv_periodic_trig_handler(ptr noundef %t) #0 align 64 {
entry:
  %dump_data = alloca %struct.iwl_fwrt_dump_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dump_data) #8
  %0 = getelementptr inbounds %struct.anon.136, ptr %dump_data, i32 0, i32 1
  %tlv = getelementptr i8, ptr %t, i32 52
  %1 = ptrtoint ptr %tlv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tlv, align 4
  %data = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %dump_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %data, ptr %dump_data, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %0, align 4
  %fwrt = getelementptr i8, ptr %t, i32 48
  %5 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fwrt, align 4
  %call = call i32 @iwl_fw_dbg_ini_collect(ptr noundef %6, ptr noundef nonnull %dump_data, i1 noundef zeroext false) #8
  %7 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %call, label %entry.cleanup10_crit_edge [
    i32 0, label %entry.if.then_crit_edge
    i32 -16, label %entry.if.then_crit_edge18
  ]

entry.if.then_crit_edge18:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup10

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge18
  %8 = ptrtoint ptr %dump_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dump_data, align 4
  %occurrences = getelementptr inbounds %struct.iwl_fw_ini_trigger_tlv, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %occurrences to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %occurrences, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %if.then.cleanup10_crit_edge, label %if.end

if.then.cleanup10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup10

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %data3 = getelementptr inbounds %struct.iwl_fw_ini_trigger_tlv, ptr %9, i32 0, i32 11
  %12 = ptrtoint ptr %data3 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %data3, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %15 = call i32 @llvm.bswap.i32(i32 %13)
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %15) #8
  %add = add i32 %call2.i, %14
  %call7 = call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #8
  br label %cleanup10

cleanup10:                                        ; preds = %if.end, %if.then.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dump_data) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(1) }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !18, !20, !21, !23, !25, !27, !28, !30, !32, !34, !36, !38, !40, !42, !43, !45, !46, !48, !50, !52, !54, !55, !57, !59, !61, !62, !64, !66, !67, !69, !71, !73, !75, !77, !79, !80, !82, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !106, !108, !109, !111, !113, !115, !117, !118, !120, !122, !124, !126, !128, !130, !132, !134, !135, !137, !139, !141, !143, !144, !146}
!llvm.module.flags = !{!147, !148, !149, !150, !151, !152, !153, !154}
!llvm.ident = !{!155}

!0 = !{ptr @__func__.iwl_dbg_tlv_alloc, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 325, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 332, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 337, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 344, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 484, i32 25}
!11 = !{ptr @__func__.iwl_dbg_tlv_load_bin, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 492, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @dbg_tlv_alloc, !17, !"dbg_tlv_alloc", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 295, i32 14}
!18 = !{ptr @__func__.iwl_dbg_tlv_alloc_debug_info, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 105, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 144, i32 2}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 165, i32 3}
!25 = !{ptr @__func__.iwl_dbg_tlv_alloc_region, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 194, i32 2}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 198, i32 3}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 204, i32 3}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 210, i32 3}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 216, i32 3}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 225, i32 2}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 245, i32 3}
!40 = !{ptr @__func__.iwl_dbg_tlv_alloc_trigger, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 251, i32 2}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @__func__.iwl_dbg_tlv_config_set, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 280, i32 3}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 287, i32 3}
!48 = !{ptr @dbg_ver_table, !49, !"dbg_ver_table", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 58, i32 1}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 468, i32 4}
!52 = !{ptr @__func__.iwl_dbg_tlv_init_cfg, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 1242, i32 2}
!54 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 1273, i32 4}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 1301, i32 3}
!59 = !{ptr @__func__.iwl_dbg_tlv_add_active_trigger, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 1107, i32 3}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/file.h", i32 971, i32 6}
!64 = !{ptr @__func__.iwl_dbg_tlv_override_trig_node, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 1023, i32 3}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 1030, i32 3}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 1043, i32 4}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 1061, i32 3}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 1070, i32 3}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 1076, i32 3}
!77 = !{ptr @__func__.iwl_dbg_tlv_alloc_fragments, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 600, i32 3}
!79 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 543, i32 3}
!82 = !{ptr @__func__.iwl_dbg_tlv_apply_config, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 828, i32 5}
!84 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 829, i32 5}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 832, i32 4}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 846, i32 5}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 856, i32 5}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 869, i32 4}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 871, i32 4}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 883, i32 6}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 893, i32 4}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 783, i32 4}
!103 = !{ptr @__func__.iwl_dbg_tlv_update_drams, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 789, i32 3}
!105 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @__func__.iwl_dbg_tlv_update_dram, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 724, i32 3}
!108 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 746, i32 2}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 755, i32 3}
!113 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 756, i32 3}
!115 = !{ptr @__func__.iwl_dbg_tlv_tp_trigger, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 1196, i32 3}
!117 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 1198, i32 3}
!120 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 1210, i32 4}
!122 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 1213, i32 4}
!124 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 1217, i32 4}
!126 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 1223, i32 4}
!128 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 1226, i32 4}
!130 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 707, i32 4}
!132 = !{ptr @__func__.iwl_dbg_tlv_apply_buffer, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 658, i32 2}
!134 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 945, i32 4}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 951, i32 4}
!139 = !{ptr @.str.61, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 961, i32 4}
!141 = !{ptr @iwl_dbg_tlv_set_periodic_trigs.__key, !142, !"__key", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 968, i32 3}
!143 = !{ptr @.str.62, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @__func__.iwl_dbg_tlv_set_periodic_trigs, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c", i32 974, i32 3}
!146 = !{ptr @.str.63, !145, !"<string literal>", i1 false, i1 false}
!147 = !{i32 1, !"wchar_size", i32 2}
!148 = !{i32 1, !"min_enum_size", i32 4}
!149 = !{i32 8, !"branch-target-enforcement", i32 0}
!150 = !{i32 8, !"sign-return-address", i32 0}
!151 = !{i32 8, !"sign-return-address-all", i32 0}
!152 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!153 = !{i32 7, !"uwtable", i32 1}
!154 = !{i32 7, !"frame-pointer", i32 2}
!155 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!156 = !{!"auto-init"}
!157 = !{i8 0, i8 2}
!158 = !{!"branch_weights", i32 2000, i32 1}
!159 = !{ptr @iwl_dbg_tlv_check_fw_pkt}
