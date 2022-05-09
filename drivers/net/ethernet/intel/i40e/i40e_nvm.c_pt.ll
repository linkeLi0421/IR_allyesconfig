; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/i40e/i40e_nvm.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/i40e/i40e_nvm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i40e_hw = type { ptr, ptr, %struct.i40e_phy_info, %struct.i40e_mac_info, %struct.i40e_bus_info, %struct.i40e_nvm_info, %struct.i40e_fc_info, i16, i16, i16, i16, i8, i8, i8, %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities, i16, i8, i16, i16, i16, i16, i16, %struct.i40e_adminq_info, i32, %struct.i40e_aq_desc, %struct.i40e_aq_desc, %struct.i40e_virt_mem, i8, i16, %struct.i40e_hmc_info, i16, %struct.i40e_dcbx_config, %struct.i40e_dcbx_config, %struct.i40e_dcbx_config, i64, i16, i16, i16, i32, [16 x i8] }
%struct.i40e_phy_info = type { %struct.i40e_link_status, %struct.i40e_link_status, i8, i32, i64 }
%struct.i40e_link_status = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, [3 x i8] }
%struct.i40e_mac_info = type { i32, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i16 }
%struct.i40e_bus_info = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.i40e_nvm_info = type { i64, i32, i16, i8, i16, i32, i32 }
%struct.i40e_fc_info = type { i32, i32 }
%struct.i40e_hw_capabilities = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, [30 x i8], [30 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i64 }
%struct.i40e_adminq_info = type { %struct.i40e_adminq_ring, %struct.i40e_adminq_ring, i32, i16, i16, i16, i16, i16, i16, i32, i16, i16, %struct.mutex, %struct.mutex, i32, i32 }
%struct.i40e_adminq_ring = type { %struct.i40e_virt_mem, %struct.i40e_dma_mem, %struct.i40e_virt_mem, %union.anon, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.i40e_dma_mem = type { ptr, i32, i32 }
%union.anon = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i40e_aq_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.2 }
%union.anon.2 = type { %struct.anon }
%struct.anon = type { i32, i32, i32, i32 }
%struct.i40e_virt_mem = type { ptr, i32 }
%struct.i40e_hmc_info = type { i32, i8, i16, ptr, %struct.i40e_virt_mem, %struct.i40e_hmc_sd_table }
%struct.i40e_hmc_sd_table = type { %struct.i40e_virt_mem, i32, i32, ptr }
%struct.i40e_dcbx_config = type { i8, i8, i32, i32, %struct.i40e_dcb_ets_config, %struct.i40e_dcb_ets_config, %struct.i40e_dcb_pfc_config, [32 x %struct.i40e_dcb_app_priority_table] }
%struct.i40e_dcb_ets_config = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8] }
%struct.i40e_dcb_pfc_config = type { i8, i8, i8, i8 }
%struct.i40e_dcb_app_priority_table = type { i8, i8, i16 }
%struct.i40e_asq_cmd_details = type { ptr, i64, i16, i16, i8, i8, ptr }
%struct.i40e_nvm_access = type { i32, i32, i32, i32, [1 x i8] }

@i40e_init_nvm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016i40e %02x:%02x.%x NVM init error: unsupported blank mode.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i40e_init_nvm\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/intel/i40e/i40e_nvm.c\00", [53 x i8] zeroinitializer }, align 32
@i40e_init_nvm._entry_ptr = internal global ptr @i40e_init_nvm._entry, section ".printk_index", align 4
@i40e_acquire_nvm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\016i40e %02x:%02x.%x NVM acquire type %d failed time_left=%llu ret=%d aq_err=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i40e_acquire_nvm\00", [47 x i8] zeroinitializer }, align 32
@i40e_acquire_nvm._entry_ptr = internal global ptr @i40e_acquire_nvm._entry, section ".printk_index", align 4
@i40e_acquire_nvm._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\016i40e %02x:%02x.%x NVM acquire timed out, wait %llu ms before trying again. status=%d aq_err=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@i40e_acquire_nvm._entry_ptr.7 = internal global ptr @i40e_acquire_nvm._entry.5, section ".printk_index", align 4
@i40e_read_nvm_module_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016i40e %02x:%02x.%x Reading nvm word failed.Error code: %d.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"i40e_read_nvm_module_data\00", [38 x i8] zeroinitializer }, align 32
@i40e_read_nvm_module_data._entry_ptr = internal global ptr @i40e_read_nvm_module_data._entry, section ".printk_index", align 4
@i40e_read_nvm_module_data._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016i40e %02x:%02x.%x Pointer not initialized.\0A\00", [50 x i8] zeroinitializer }, align 32
@i40e_read_nvm_module_data._entry_ptr.12 = internal global ptr @i40e_read_nvm_module_data._entry.10, section ".printk_index", align 4
@i40e_read_nvm_module_data._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"\016i40e %02x:%02x.%x Reading nvm data failed. Pointer points outside of the Shared RAM mapped area.\0A\00", [60 x i8] zeroinitializer }, align 32
@i40e_read_nvm_module_data._entry_ptr.15 = internal global ptr @i40e_read_nvm_module_data._entry.13, section ".printk_index", align 4
@i40e_read_nvm_module_data._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@i40e_read_nvm_module_data._entry_ptr.17 = internal global ptr @i40e_read_nvm_module_data._entry.16, section ".printk_index", align 4
@i40e_read_nvm_module_data._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.9, ptr @.str.2, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016i40e %02x:%02x.%x Reading nvm buffer failed.Error code: %d.\0A\00", [33 x i8] zeroinitializer }, align 32
@i40e_read_nvm_module_data._entry_ptr.20 = internal global ptr @i40e_read_nvm_module_data._entry.18, section ".printk_index", align 4
@i40e_nvmupd_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [123 x i8], [37 x i8] } { [123 x i8] c"\016i40e %02x:%02x.%x %s state %d nvm_release_on_hold %d opc 0x%04x cmd 0x%08x config 0x%08x offset 0x%08x data_size 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i40e_nvmupd_command\00", [44 x i8] zeroinitializer }, align 32
@i40e_nvmupd_command._entry_ptr = internal global ptr @i40e_nvmupd_command._entry, section ".printk_index", align 4
@i40e_nvm_update_state_str = internal constant { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], [60 x i8] zeroinitializer }, align 32
@i40e_nvmupd_command._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016i40e %02x:%02x.%x i40e_nvmupd_validate_command returns %d errno %d\0A\00", [58 x i8] zeroinitializer }, align 32
@i40e_nvmupd_command._entry_ptr.25 = internal global ptr @i40e_nvmupd_command._entry.23, section ".printk_index", align 4
@i40e_nvmupd_command._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\016i40e %02x:%02x.%x Clearing I40E_NVMUPD_STATE_ERROR state without reading\0A\00", [52 x i8] zeroinitializer }, align 32
@i40e_nvmupd_command._entry_ptr.28 = internal global ptr @i40e_nvmupd_command._entry.26, section ".printk_index", align 4
@i40e_nvmupd_command._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.2, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016i40e %02x:%02x.%x NVMUPD: no such state %d\0A\00", [50 x i8] zeroinitializer }, align 32
@i40e_nvmupd_command._entry_ptr.31 = internal global ptr @i40e_nvmupd_command._entry.29, section ".printk_index", align 4
@i40e_nvmupd_clear_wait_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 1224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016i40e %02x:%02x.%x NVMUPD: clearing wait on opcode 0x%04x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"i40e_nvmupd_clear_wait_state\00", [35 x i8] zeroinitializer }, align 32
@i40e_nvmupd_clear_wait_state._entry_ptr = internal global ptr @i40e_nvmupd_clear_wait_state._entry, section ".printk_index", align 4
@i40e_read_nvm_aq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016i40e %02x:%02x.%x NVM write error: offset %d beyond Shadow RAM limit %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i40e_read_nvm_aq\00", [47 x i8] zeroinitializer }, align 32
@i40e_read_nvm_aq._entry_ptr = internal global ptr @i40e_read_nvm_aq._entry, section ".printk_index", align 4
@i40e_read_nvm_aq._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\016i40e %02x:%02x.%x NVM write fail error: tried to write %d words, limit is %d.\0A\00", [47 x i8] zeroinitializer }, align 32
@i40e_read_nvm_aq._entry_ptr.38 = internal global ptr @i40e_read_nvm_aq._entry.36, section ".printk_index", align 4
@i40e_read_nvm_aq._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"\016i40e %02x:%02x.%x NVM write error: cannot spread over two sectors in a single write offset=%d words=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@i40e_read_nvm_aq._entry_ptr.41 = internal global ptr @i40e_read_nvm_aq._entry.39, section ".printk_index", align 4
@i40e_read_nvm_word_srctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016i40e %02x:%02x.%x NVM read error: offset %d beyond Shadow RAM limit %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"i40e_read_nvm_word_srctl\00", [39 x i8] zeroinitializer }, align 32
@i40e_read_nvm_word_srctl._entry_ptr = internal global ptr @i40e_read_nvm_word_srctl._entry, section ".printk_index", align 4
@i40e_read_nvm_word_srctl._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016i40e %02x:%02x.%x NVM read error: Couldn't access Shadow RAM address: 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@i40e_read_nvm_word_srctl._entry_ptr.46 = internal global ptr @i40e_read_nvm_word_srctl._entry.44, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@i40e_poll_sr_srctl_done_bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016i40e %02x:%02x.%x Done bit in GLNVM_SRCTL not set\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"i40e_poll_sr_srctl_done_bit\00", [36 x i8] zeroinitializer }, align 32
@i40e_poll_sr_srctl_done_bit._entry_ptr = internal global ptr @i40e_poll_sr_srctl_done_bit._entry, section ".printk_index", align 4
@i40e_write_nvm_aq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.49, ptr @.str.2, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i40e_write_nvm_aq\00", [46 x i8] zeroinitializer }, align 32
@i40e_write_nvm_aq._entry_ptr = internal global ptr @i40e_write_nvm_aq._entry, section ".printk_index", align 4
@i40e_write_nvm_aq._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.49, ptr @.str.2, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@i40e_write_nvm_aq._entry_ptr.51 = internal global ptr @i40e_write_nvm_aq._entry.50, section ".printk_index", align 4
@i40e_write_nvm_aq._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.49, ptr @.str.2, i32 576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@i40e_write_nvm_aq._entry_ptr.53 = internal global ptr @i40e_write_nvm_aq._entry.52, section ".printk_index", align 4
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"I40E_NVMUPD_INVALID\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"I40E_NVMUPD_READ_CON\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"I40E_NVMUPD_READ_SNT\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"I40E_NVMUPD_READ_LCB\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"I40E_NVMUPD_READ_SA\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"I40E_NVMUPD_WRITE_ERA\00", [42 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"I40E_NVMUPD_WRITE_CON\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"I40E_NVMUPD_WRITE_SNT\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"I40E_NVMUPD_WRITE_LCB\00", [42 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"I40E_NVMUPD_WRITE_SA\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"I40E_NVMUPD_CSUM_CON\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"I40E_NVMUPD_CSUM_SA\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"I40E_NVMUPD_CSUM_LCB\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"I40E_NVMUPD_STATUS\00", [45 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"I40E_NVMUPD_EXEC_AQ\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"I40E_NVMUPD_GET_AQ_RESULT\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"I40E_NVMUPD_GET_AQ_EVENT\00", [39 x i8] zeroinitializer }, align 32
@i40e_nvmupd_state_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 1046, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016i40e %02x:%02x.%x NVMUPD: bad cmd %s in init state\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i40e_nvmupd_state_init\00", [41 x i8] zeroinitializer }, align 32
@i40e_nvmupd_state_init._entry_ptr = internal global ptr @i40e_nvmupd_state_init._entry, section ".printk_index", align 4
@__const.i40e_aq_rc_to_posix.aq_to_posix = private unnamed_addr constant [23 x i32] [i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 -11, i32 -12, i32 -13, i32 -14, i32 -16, i32 -17, i32 -22, i32 -25, i32 -28, i32 -38, i32 -34, i32 -32, i32 -29, i32 -30, i32 -27], align 4
@i40e_nvmupd_nvm_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 1580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016i40e %02x:%02x.%x i40e_nvmupd_nvm_read mod 0x%x  off 0x%x  len 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"i40e_nvmupd_nvm_read\00", [43 x i8] zeroinitializer }, align 32
@i40e_nvmupd_nvm_read._entry_ptr = internal global ptr @i40e_nvmupd_nvm_read._entry, section ".printk_index", align 4
@i40e_nvmupd_nvm_read._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.2, i32 1583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016i40e %02x:%02x.%x i40e_nvmupd_nvm_read status %d aq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@i40e_nvmupd_nvm_read._entry_ptr.77 = internal global ptr @i40e_nvmupd_nvm_read._entry.75, section ".printk_index", align 4
@i40e_nvmupd_nvm_erase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 1619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016i40e %02x:%02x.%x i40e_nvmupd_nvm_erase mod 0x%x  off 0x%x len 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"i40e_nvmupd_nvm_erase\00", [42 x i8] zeroinitializer }, align 32
@i40e_nvmupd_nvm_erase._entry_ptr = internal global ptr @i40e_nvmupd_nvm_erase._entry, section ".printk_index", align 4
@i40e_nvmupd_nvm_erase._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 1622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016i40e %02x:%02x.%x i40e_nvmupd_nvm_erase status %d aq %d\0A\00", [37 x i8] zeroinitializer }, align 32
@i40e_nvmupd_nvm_erase._entry_ptr.82 = internal global ptr @i40e_nvmupd_nvm_erase._entry.80, section ".printk_index", align 4
@i40e_nvmupd_nvm_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 1662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016i40e %02x:%02x.%x i40e_nvmupd_nvm_write mod 0x%x off 0x%x len 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"i40e_nvmupd_nvm_write\00", [42 x i8] zeroinitializer }, align 32
@i40e_nvmupd_nvm_write._entry_ptr = internal global ptr @i40e_nvmupd_nvm_write._entry, section ".printk_index", align 4
@i40e_nvmupd_nvm_write._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.2, i32 1665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016i40e %02x:%02x.%x i40e_nvmupd_nvm_write status %d aq %d\0A\00", [37 x i8] zeroinitializer }, align 32
@i40e_nvmupd_nvm_write._entry_ptr.87 = internal global ptr @i40e_nvmupd_nvm_write._entry.85, section ".printk_index", align 4
@i40e_nvmupd_exec_aq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 1384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016i40e %02x:%02x.%x NVMUPD: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i40e_nvmupd_exec_aq\00", [44 x i8] zeroinitializer }, align 32
@i40e_nvmupd_exec_aq._entry_ptr = internal global ptr @i40e_nvmupd_exec_aq._entry, section ".printk_index", align 4
@i40e_nvmupd_exec_aq._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 1398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\016i40e %02x:%02x.%x NVMUPD: not enough aq desc bytes for exec, size %d < %d\0A\00", [51 x i8] zeroinitializer }, align 32
@i40e_nvmupd_exec_aq._entry_ptr.92 = internal global ptr @i40e_nvmupd_exec_aq._entry.90, section ".printk_index", align 4
@i40e_nvmupd_exec_aq._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.89, ptr @.str.2, i32 1414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\016i40e %02x:%02x.%x NVMUPD: i40e_allocate_virt_mem for exec buff failed, %d\0A\00", [51 x i8] zeroinitializer }, align 32
@i40e_nvmupd_exec_aq._entry_ptr.95 = internal global ptr @i40e_nvmupd_exec_aq._entry.93, section ".printk_index", align 4
@i40e_nvmupd_exec_aq._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.89, ptr @.str.2, i32 1433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016i40e %02x:%02x.%x i40e_nvmupd_exec_aq err %s aq_err %s\0A\00", [38 x i8] zeroinitializer }, align 32
@i40e_nvmupd_exec_aq._entry_ptr.98 = internal global ptr @i40e_nvmupd_exec_aq._entry.96, section ".printk_index", align 4
@i40e_nvmupd_get_aq_result._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.99, ptr @.str.2, i32 1465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"i40e_nvmupd_get_aq_result\00", [38 x i8] zeroinitializer }, align 32
@i40e_nvmupd_get_aq_result._entry_ptr = internal global ptr @i40e_nvmupd_get_aq_result._entry, section ".printk_index", align 4
@i40e_nvmupd_get_aq_result._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.2, i32 1473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016i40e %02x:%02x.%x %s: offset too big %d > %d\0A\00", [48 x i8] zeroinitializer }, align 32
@i40e_nvmupd_get_aq_result._entry_ptr.102 = internal global ptr @i40e_nvmupd_get_aq_result._entry.100, section ".printk_index", align 4
@i40e_nvmupd_get_aq_result._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.99, ptr @.str.2, i32 1483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016i40e %02x:%02x.%x %s: copy length %d too big, trimming to %d\0A\00", [32 x i8] zeroinitializer }, align 32
@i40e_nvmupd_get_aq_result._entry_ptr.105 = internal global ptr @i40e_nvmupd_get_aq_result._entry.103, section ".printk_index", align 4
@i40e_nvmupd_get_aq_result._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.99, ptr @.str.2, i32 1493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016i40e %02x:%02x.%x %s: aq_desc bytes %d to %d\0A\00", [48 x i8] zeroinitializer }, align 32
@i40e_nvmupd_get_aq_result._entry_ptr.108 = internal global ptr @i40e_nvmupd_get_aq_result._entry.106, section ".printk_index", align 4
@i40e_nvmupd_get_aq_result._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.99, ptr @.str.2, i32 1509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016i40e %02x:%02x.%x %s: databuf bytes %d to %d\0A\00", [48 x i8] zeroinitializer }, align 32
@i40e_nvmupd_get_aq_result._entry_ptr.111 = internal global ptr @i40e_nvmupd_get_aq_result._entry.109, section ".printk_index", align 4
@i40e_nvmupd_get_aq_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.112, ptr @.str.2, i32 1532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"i40e_nvmupd_get_aq_event\00", [39 x i8] zeroinitializer }, align 32
@i40e_nvmupd_get_aq_event._entry_ptr = internal global ptr @i40e_nvmupd_get_aq_event._entry, section ".printk_index", align 4
@i40e_nvmupd_get_aq_event._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.112, ptr @.str.2, i32 1541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@i40e_nvmupd_get_aq_event._entry_ptr.114 = internal global ptr @i40e_nvmupd_get_aq_event._entry.113, section ".printk_index", align 4
@i40e_nvmupd_state_reading._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 1088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016i40e %02x:%02x.%x NVMUPD: bad cmd %s in reading state.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"i40e_nvmupd_state_reading\00", [38 x i8] zeroinitializer }, align 32
@i40e_nvmupd_state_reading._entry_ptr = internal global ptr @i40e_nvmupd_state_reading._entry, section ".printk_index", align 4
@i40e_nvmupd_state_writing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.2, i32 1175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016i40e %02x:%02x.%x NVMUPD: bad cmd %s in writing state.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"i40e_nvmupd_state_writing\00", [38 x i8] zeroinitializer }, align 32
@i40e_nvmupd_state_writing._entry_ptr = internal global ptr @i40e_nvmupd_state_writing._entry, section ".printk_index", align 4
@i40e_nvmupd_state_writing._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.2, i32 1197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\016i40e %02x:%02x.%x NVMUPD: write semaphore expired (%d >= %lld), retrying\0A\00", [52 x i8] zeroinitializer }, align 32
@i40e_nvmupd_state_writing._entry_ptr.121 = internal global ptr @i40e_nvmupd_state_writing._entry.119, section ".printk_index", align 4
@i40e_nvmupd_state_writing._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.118, ptr @.str.2, i32 1203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016i40e %02x:%02x.%x NVMUPD: write semaphore reacquire failed aq_err = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@i40e_nvmupd_state_writing._entry_ptr.124 = internal global ptr @i40e_nvmupd_state_writing._entry.122, section ".printk_index", align 4
@i40e_nvmupd_validate_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.2, i32 1294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016i40e %02x:%02x.%x i40e_nvmupd_validate_command data_size %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"i40e_nvmupd_validate_command\00", [35 x i8] zeroinitializer }, align 32
@i40e_nvmupd_validate_command._entry_ptr = internal global ptr @i40e_nvmupd_validate_command._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 32767, i64 65535]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 13]
@__sancov_gen_cov_switch_values.128 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.129 = internal global [11 x i64] [i64 9, i64 32, i64 2, i64 4, i64 5, i64 7, i64 9, i64 11, i64 14, i64 15, i64 16]
@__sancov_gen_cov_switch_values.130 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.131 = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 8, i64 10, i64 12]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 11, i64 12]
@__sancov_gen_cov_switch_values.133 = internal global [8 x i64] [i64 6, i64 4, i64 0, i64 1, i64 2, i64 3, i64 14, i64 15]
@__sancov_gen_cov_switch_values.134 = internal global [11 x i64] [i64 9, i64 4, i64 0, i64 1, i64 2, i64 3, i64 4, i64 8, i64 10, i64 11, i64 15]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 41, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 74, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 96, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 348, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 360, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 367, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 377, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 389, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 822, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [26 x i8] c"i40e_nvm_update_state_str\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 780, i32 27 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 830, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 860, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 904, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1222, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 236, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 241, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 247, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 175, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 200, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 156, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 563, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 568, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 574, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 781, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 782, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 783, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 784, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 785, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 786, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 787, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 788, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 789, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 790, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 791, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 792, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 793, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 794, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 795, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 796, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 797, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1044, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1578, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1581, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1617, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1620, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1660, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1663, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1384, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1396, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1412, i32 5 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1430, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1465, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1472, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1482, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1492, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1508, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1532, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1539, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1086, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1173, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1195, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1201, i32 5 }
@___asan_gen_.490 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.496 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.497 = private constant [46 x i8] c"../drivers/net/ethernet/intel/i40e/i40e_nvm.c\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1292, i32 3 }
@llvm.compiler.used = appending global [166 x ptr] [ptr @i40e_acquire_nvm._entry, ptr @i40e_acquire_nvm._entry.5, ptr @i40e_acquire_nvm._entry_ptr, ptr @i40e_acquire_nvm._entry_ptr.7, ptr @i40e_init_nvm._entry, ptr @i40e_init_nvm._entry_ptr, ptr @i40e_nvmupd_clear_wait_state._entry, ptr @i40e_nvmupd_clear_wait_state._entry_ptr, ptr @i40e_nvmupd_command._entry, ptr @i40e_nvmupd_command._entry.23, ptr @i40e_nvmupd_command._entry.26, ptr @i40e_nvmupd_command._entry.29, ptr @i40e_nvmupd_command._entry_ptr, ptr @i40e_nvmupd_command._entry_ptr.25, ptr @i40e_nvmupd_command._entry_ptr.28, ptr @i40e_nvmupd_command._entry_ptr.31, ptr @i40e_nvmupd_exec_aq._entry, ptr @i40e_nvmupd_exec_aq._entry.90, ptr @i40e_nvmupd_exec_aq._entry.93, ptr @i40e_nvmupd_exec_aq._entry.96, ptr @i40e_nvmupd_exec_aq._entry_ptr, ptr @i40e_nvmupd_exec_aq._entry_ptr.92, ptr @i40e_nvmupd_exec_aq._entry_ptr.95, ptr @i40e_nvmupd_exec_aq._entry_ptr.98, ptr @i40e_nvmupd_get_aq_event._entry, ptr @i40e_nvmupd_get_aq_event._entry.113, ptr @i40e_nvmupd_get_aq_event._entry_ptr, ptr @i40e_nvmupd_get_aq_event._entry_ptr.114, ptr @i40e_nvmupd_get_aq_result._entry, ptr @i40e_nvmupd_get_aq_result._entry.100, ptr @i40e_nvmupd_get_aq_result._entry.103, ptr @i40e_nvmupd_get_aq_result._entry.106, ptr @i40e_nvmupd_get_aq_result._entry.109, ptr @i40e_nvmupd_get_aq_result._entry_ptr, ptr @i40e_nvmupd_get_aq_result._entry_ptr.102, ptr @i40e_nvmupd_get_aq_result._entry_ptr.105, ptr @i40e_nvmupd_get_aq_result._entry_ptr.108, ptr @i40e_nvmupd_get_aq_result._entry_ptr.111, ptr @i40e_nvmupd_nvm_erase._entry, ptr @i40e_nvmupd_nvm_erase._entry.80, ptr @i40e_nvmupd_nvm_erase._entry_ptr, ptr @i40e_nvmupd_nvm_erase._entry_ptr.82, ptr @i40e_nvmupd_nvm_read._entry, ptr @i40e_nvmupd_nvm_read._entry.75, ptr @i40e_nvmupd_nvm_read._entry_ptr, ptr @i40e_nvmupd_nvm_read._entry_ptr.77, ptr @i40e_nvmupd_nvm_write._entry, ptr @i40e_nvmupd_nvm_write._entry.85, ptr @i40e_nvmupd_nvm_write._entry_ptr, ptr @i40e_nvmupd_nvm_write._entry_ptr.87, ptr @i40e_nvmupd_state_init._entry, ptr @i40e_nvmupd_state_init._entry_ptr, ptr @i40e_nvmupd_state_reading._entry, ptr @i40e_nvmupd_state_reading._entry_ptr, ptr @i40e_nvmupd_state_writing._entry, ptr @i40e_nvmupd_state_writing._entry.119, ptr @i40e_nvmupd_state_writing._entry.122, ptr @i40e_nvmupd_state_writing._entry_ptr, ptr @i40e_nvmupd_state_writing._entry_ptr.121, ptr @i40e_nvmupd_state_writing._entry_ptr.124, ptr @i40e_nvmupd_validate_command._entry, ptr @i40e_nvmupd_validate_command._entry_ptr, ptr @i40e_poll_sr_srctl_done_bit._entry, ptr @i40e_poll_sr_srctl_done_bit._entry_ptr, ptr @i40e_read_nvm_aq._entry, ptr @i40e_read_nvm_aq._entry.36, ptr @i40e_read_nvm_aq._entry.39, ptr @i40e_read_nvm_aq._entry_ptr, ptr @i40e_read_nvm_aq._entry_ptr.38, ptr @i40e_read_nvm_aq._entry_ptr.41, ptr @i40e_read_nvm_module_data._entry, ptr @i40e_read_nvm_module_data._entry.10, ptr @i40e_read_nvm_module_data._entry.13, ptr @i40e_read_nvm_module_data._entry.16, ptr @i40e_read_nvm_module_data._entry.18, ptr @i40e_read_nvm_module_data._entry_ptr, ptr @i40e_read_nvm_module_data._entry_ptr.12, ptr @i40e_read_nvm_module_data._entry_ptr.15, ptr @i40e_read_nvm_module_data._entry_ptr.17, ptr @i40e_read_nvm_module_data._entry_ptr.20, ptr @i40e_read_nvm_word_srctl._entry, ptr @i40e_read_nvm_word_srctl._entry.44, ptr @i40e_read_nvm_word_srctl._entry_ptr, ptr @i40e_read_nvm_word_srctl._entry_ptr.46, ptr @i40e_write_nvm_aq._entry, ptr @i40e_write_nvm_aq._entry.50, ptr @i40e_write_nvm_aq._entry.52, ptr @i40e_write_nvm_aq._entry_ptr, ptr @i40e_write_nvm_aq._entry_ptr.51, ptr @i40e_write_nvm_aq._entry_ptr.53, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @i40e_nvm_update_state_str, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.112, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.123, ptr @.str.125, ptr @.str.126], section "llvm.metadata"
@0 = internal global [121 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_init_nvm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_acquire_nvm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_acquire_nvm._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_read_nvm_module_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_read_nvm_module_data._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_read_nvm_module_data._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_read_nvm_module_data._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_read_nvm_module_data._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 123, i32 160, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvm_update_state_str to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_command._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_command._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_command._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_clear_wait_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_read_nvm_aq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_read_nvm_aq._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_read_nvm_aq._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_read_nvm_word_srctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_read_nvm_word_srctl._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_poll_sr_srctl_done_bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_write_nvm_aq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_write_nvm_aq._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_write_nvm_aq._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_state_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_nvm_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_nvm_read._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_nvm_erase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_nvm_erase._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_nvm_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_nvm_write._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_exec_aq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_exec_aq._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_exec_aq._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_exec_aq._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_get_aq_result._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_get_aq_result._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_get_aq_result._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_get_aq_result._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_get_aq_result._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_get_aq_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_get_aq_event._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_state_reading._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_state_writing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_state_writing._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_state_writing._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_nvmupd_validate_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_init_nvm(ptr nocapture noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 745728
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !238
  %3 = lshr i32 %2, 29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !239
  %mul = shl nuw nsw i32 512, %3
  %conv4 = trunc i32 %mul to i16
  %sr_size5 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %sr_size5 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv4, ptr %sr_size5, align 4
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %add.ptr9 = getelementptr i8, ptr %6, i32 745736
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #5, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !240
  %8 = and i32 %7, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %timeout = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 18000, ptr %timeout, align 8
  %blank_nvm_mode = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 3
  %10 = ptrtoint ptr %blank_nvm_mode to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %blank_nvm_mode, align 2
  br label %if.end28

if.else:                                          ; preds = %entry
  %blank_nvm_mode14 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 3
  %11 = ptrtoint ptr %blank_nvm_mode14 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %blank_nvm_mode14, align 2
  %debug_mask = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %12 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug_mask, align 8
  %and15 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else.if.end28_crit_edge, label %do.end

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %14 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %bus_id, align 2
  %conv20 = zext i16 %15 to i32
  %device = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %device, align 2
  %conv22 = zext i16 %17 to i32
  %func = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %func, align 4
  %conv24 = zext i16 %19 to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv20, i32 noundef %conv22, i32 noundef %conv24) #8
  br label %if.end28

if.end28:                                         ; preds = %do.end, %if.else.if.end28_crit_edge, %if.then
  %ret_code.0 = phi i32 [ 0, %if.then ], [ -59, %do.end ], [ -59, %if.else.if.end28_crit_edge ]
  ret i32 %ret_code.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_acquire_nvm(ptr noundef %hw, i32 noundef %access) local_unnamed_addr #0 align 64 {
entry:
  %time_left = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %time_left) #5
  %0 = ptrtoint ptr %time_left to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %time_left, align 8
  %nvm = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5
  %blank_nvm_mode = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 3
  %1 = ptrtoint ptr %blank_nvm_mode to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %blank_nvm_mode, align 2, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.i40e_i40e_acquire_nvm_exit_crit_edge

entry.i40e_i40e_acquire_nvm_exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_i40e_acquire_nvm_exit

if.end:                                           ; preds = %entry
  %call = call i32 @i40e_aq_request_resource(ptr noundef %hw, i32 noundef 1, i32 noundef %access, i8 noundef zeroext 0, ptr noundef nonnull %time_left, ptr noundef null) #5
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 557500
  %5 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !238
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !242
  %conv = zext i32 %6 to i64
  %7 = ptrtoint ptr %time_left to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %time_left, align 8
  %mul = mul i64 %8, 1000
  %add = add i64 %mul, %conv
  %9 = ptrtoint ptr %nvm to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %add, ptr %nvm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end.i40e_i40e_acquire_nvm_exit_crit_edge, label %do.body

if.end.i40e_i40e_acquire_nvm_exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_i40e_acquire_nvm_exit

do.body:                                          ; preds = %if.end
  %debug_mask = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %10 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug_mask, align 8
  %and = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body.land.lhs.true_crit_edge, label %do.end

do.body.land.lhs.true_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %12 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bus_id, align 2
  %conv10 = zext i16 %13 to i32
  %device = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %device, align 2
  %conv12 = zext i16 %15 to i32
  %func = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %func, align 4
  %conv14 = zext i16 %17 to i32
  %asq_last_status = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  %18 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %asq_last_status, align 8
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv14, i32 noundef %access, i64 noundef %8, i32 noundef %call, i32 noundef %19) #8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %do.body.land.lhs.true_crit_edge
  %20 = ptrtoint ptr %time_left to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %time_left, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool21.not = icmp eq i64 %21, 0
  br i1 %tobool21.not, label %land.lhs.true.i40e_i40e_acquire_nvm_exit_crit_edge, label %if.then22

land.lhs.true.i40e_i40e_acquire_nvm_exit_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_i40e_acquire_nvm_exit

if.then22:                                        ; preds = %land.lhs.true
  %add23 = add nuw nsw i64 %conv, 18000000
  br label %while.body

while.cond:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp8(i64 %add23, i64 %conv33)
  %cmp = icmp ugt i64 %add23, %conv33
  br i1 %cmp, label %land.rhsthread-pre-split, label %while.cond.if.then43_crit_edge

while.cond.if.then43_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

land.rhsthread-pre-split:                         ; preds = %while.cond
  %22 = ptrtoint ptr %time_left to i32
  call void @__asan_load8_noabort(i32 %22)
  %.pr = load i64, ptr %time_left, align 8
  %tobool25.not = icmp eq i64 %.pr, 0
  br i1 %tobool25.not, label %land.rhsthread-pre-split.if.then43_crit_edge, label %land.rhsthread-pre-split.while.body_crit_edge

land.rhsthread-pre-split.while.body_crit_edge:    ; preds = %land.rhsthread-pre-split
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

land.rhsthread-pre-split.if.then43_crit_edge:     ; preds = %land.rhsthread-pre-split
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

while.body:                                       ; preds = %land.rhsthread-pre-split.while.body_crit_edge, %if.then22
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #5
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 8
  %add.ptr29 = getelementptr i8, ptr %24, i32 557500
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #5, !srcloc !238
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !243
  %conv33 = zext i32 %26 to i64
  %call34 = call i32 @i40e_aq_request_resource(ptr noundef %hw, i32 noundef 1, i32 noundef %access, i8 noundef zeroext 0, ptr noundef nonnull %time_left, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %time_left to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %time_left, align 8
  %mul37 = mul i64 %28, 1000
  %add38 = add i64 %mul37, %conv33
  %29 = ptrtoint ptr %nvm to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %add38, ptr %nvm, align 8
  br label %i40e_i40e_acquire_nvm_exit

if.then43:                                        ; preds = %land.rhsthread-pre-split.if.then43_crit_edge, %while.cond.if.then43_crit_edge
  %30 = ptrtoint ptr %nvm to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %nvm, align 8
  %31 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug_mask, align 8
  %and48 = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.then43.i40e_i40e_acquire_nvm_exit_crit_edge, label %do.end53

if.then43.i40e_i40e_acquire_nvm_exit_crit_edge:   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_i40e_acquire_nvm_exit

do.end53:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id56 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %33 = ptrtoint ptr %bus_id56 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %bus_id56, align 2
  %conv57 = zext i16 %34 to i32
  %device59 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %35 = ptrtoint ptr %device59 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %device59, align 2
  %conv60 = zext i16 %36 to i32
  %func62 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %37 = ptrtoint ptr %func62 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %func62, align 4
  %conv63 = zext i16 %38 to i32
  %39 = ptrtoint ptr %time_left to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %time_left, align 8
  %asq_last_status65 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  %41 = ptrtoint ptr %asq_last_status65 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %asq_last_status65, align 8
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv57, i32 noundef %conv60, i32 noundef %conv63, i64 noundef %40, i32 noundef %call34, i32 noundef %42) #8
  br label %i40e_i40e_acquire_nvm_exit

i40e_i40e_acquire_nvm_exit:                       ; preds = %do.end53, %if.then43.i40e_i40e_acquire_nvm_exit_crit_edge, %while.end, %land.lhs.true.i40e_i40e_acquire_nvm_exit_crit_edge, %if.end.i40e_i40e_acquire_nvm_exit_crit_edge, %entry.i40e_i40e_acquire_nvm_exit_crit_edge
  %ret_code.2 = phi i32 [ 0, %entry.i40e_i40e_acquire_nvm_exit_crit_edge ], [ %call34, %do.end53 ], [ %call34, %if.then43.i40e_i40e_acquire_nvm_exit_crit_edge ], [ 0, %while.end ], [ %call, %land.lhs.true.i40e_i40e_acquire_nvm_exit_crit_edge ], [ 0, %if.end.i40e_i40e_acquire_nvm_exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %time_left) #5
  ret i32 %ret_code.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_request_resource(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_release_nvm(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %blank_nvm_mode = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %blank_nvm_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %blank_nvm_mode, align 2, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #5
  %asq_cmd_timeout = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call)
  %cmp8 = icmp eq i32 %call, -54
  br i1 %cmp8, label %if.end.land.rhs_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %total_delay.09 = phi i32 [ %inc, %while.body.land.rhs_crit_edge ], [ 0, %if.end.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %asq_cmd_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asq_cmd_timeout, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %total_delay.09, i32 %3)
  %cmp1 = icmp ult i32 %total_delay.09, %3
  br i1 %cmp1, label %while.body, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %call2 = tail call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #5
  %inc = add nuw i32 %total_delay.09, 1
  %cmp = icmp eq i32 %call2, -54
  br i1 %cmp, label %while.body.land.rhs_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_release_resource(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_read_nvm_word(ptr noundef %hw, i16 noundef zeroext %offset, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 35
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %flags, align 8
  %and = and i64 %1, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.end

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.end:                                           ; preds = %entry
  %call = tail call i32 @i40e_acquire_nvm(ptr noundef %hw, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.end3:                                          ; preds = %if.end.if.end3_crit_edge, %entry.if.end3_crit_edge
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %flags, align 8
  %and.i = and i64 %3, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i = zext i16 %offset to i32
  %call.i.i = tail call fastcc i32 @i40e_read_nvm_aq(ptr noundef %hw, i32 noundef %conv.i.i, i16 noundef zeroext 1, ptr noundef %data, i1 noundef zeroext true) #5
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %data, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #5
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %data, align 2
  br label %__i40e_read_nvm_word.exit

if.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = tail call fastcc i32 @i40e_read_nvm_word_srctl(ptr noundef %hw, i16 noundef zeroext %offset, ptr noundef %data) #5
  br label %__i40e_read_nvm_word.exit

__i40e_read_nvm_word.exit:                        ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i.i, %if.then.i ], [ %call1.i, %if.end.i ]
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %flags, align 8
  %and6 = and i64 %9, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6)
  %tobool7.not = icmp eq i64 %and6, 0
  br i1 %tobool7.not, label %__i40e_read_nvm_word.exit.cleanup_crit_edge, label %if.then8

__i40e_read_nvm_word.exit.cleanup_crit_edge:      ; preds = %__i40e_read_nvm_word.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %__i40e_read_nvm_word.exit
  %blank_nvm_mode.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 3
  %10 = ptrtoint ptr %blank_nvm_mode.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %blank_nvm_mode.i, align 2, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i16 = icmp eq i8 %11, 0
  br i1 %tobool.not.i16, label %if.end.i17, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i17:                                       ; preds = %if.then8
  %call.i = tail call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #5
  %asq_cmd_timeout.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call.i)
  %cmp8.i = icmp eq i32 %call.i, -54
  br i1 %cmp8.i, label %if.end.i17.land.rhs.i_crit_edge, label %if.end.i17.cleanup_crit_edge

if.end.i17.cleanup_crit_edge:                     ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i17.land.rhs.i_crit_edge:                  ; preds = %if.end.i17
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end.i17.land.rhs.i_crit_edge
  %total_delay.09.i = phi i32 [ %inc.i, %while.body.i.land.rhs.i_crit_edge ], [ 0, %if.end.i17.land.rhs.i_crit_edge ]
  %12 = ptrtoint ptr %asq_cmd_timeout.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %asq_cmd_timeout.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %total_delay.09.i, i32 %13)
  %cmp1.i = icmp ult i32 %total_delay.09.i, %13
  br i1 %cmp1.i, label %while.body.i, label %land.rhs.i.cleanup_crit_edge

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.i:                                     ; preds = %land.rhs.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %call2.i = tail call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #5
  %inc.i = add nuw i32 %total_delay.09.i, 1
  %cmp.i = icmp eq i32 %call2.i, -54
  br i1 %cmp.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.cleanup_crit_edge

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

cleanup:                                          ; preds = %while.body.i.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge, %if.end.i17.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %__i40e_read_nvm_word.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end.cleanup_crit_edge ], [ %retval.0.i, %__i40e_read_nvm_word.exit.cleanup_crit_edge ], [ %retval.0.i, %if.then8.cleanup_crit_edge ], [ %retval.0.i, %if.end.i17.cleanup_crit_edge ], [ %retval.0.i, %land.rhs.i.cleanup_crit_edge ], [ %retval.0.i, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_read_nvm_module_data(ptr noundef %hw, i8 noundef zeroext %module_ptr, i16 noundef zeroext %module_offset, i16 noundef zeroext %data_offset, i16 noundef zeroext %words_data_size, ptr noundef %data_ptr) local_unnamed_addr #0 align 64 {
entry:
  %words_data_size.addr = alloca i16, align 2
  %specific_ptr = alloca i16, align 2
  %ptr_value = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %words_data_size.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %words_data_size, ptr %words_data_size.addr, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %specific_ptr) #5
  %1 = ptrtoint ptr %specific_ptr to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %specific_ptr, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ptr_value) #5
  %2 = ptrtoint ptr %ptr_value to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %ptr_value, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %module_ptr)
  %cmp.not = icmp eq i8 %module_ptr, 0
  br i1 %cmp.not, label %entry.if.else_crit_edge, label %if.then

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then:                                          ; preds = %entry
  %conv2 = zext i8 %module_ptr to i16
  %call = call i32 @i40e_read_nvm_word(ptr noundef %hw, i16 noundef zeroext %conv2, ptr noundef nonnull %ptr_value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end16, label %do.body

do.body:                                          ; preds = %if.then
  %debug_mask = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %3 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %5 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %bus_id, align 2
  %conv7 = zext i16 %6 to i32
  %device = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device, align 2
  %conv9 = zext i16 %8 to i32
  %func = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %func, align 4
  %conv11 = zext i16 %10 to i32
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv7, i32 noundef %conv9, i32 noundef %conv11, i32 noundef %call) #8
  br label %cleanup

if.end16:                                         ; preds = %if.then
  %11 = ptrtoint ptr %ptr_value to i32
  call void @__asan_load2_noabort(i32 %11)
  %.pr = load i16, ptr %ptr_value, align 2
  %12 = zext i16 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i16 %.pr, label %if.end46 [
    i16 32767, label %if.end16.do.body24_crit_edge
    i16 -1, label %if.end16.do.body24_crit_edge171
  ]

if.end16.do.body24_crit_edge171:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body24

if.end16.do.body24_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body24

do.body24:                                        ; preds = %if.end16.do.body24_crit_edge, %if.end16.do.body24_crit_edge171
  %debug_mask25 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %13 = ptrtoint ptr %debug_mask25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug_mask25, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool27.not = icmp eq i32 %14, 0
  br i1 %tobool27.not, label %do.body24.cleanup_crit_edge, label %do.end31

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end31:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id34 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %15 = ptrtoint ptr %bus_id34 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %bus_id34, align 2
  %conv35 = zext i16 %16 to i32
  %device37 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %17 = ptrtoint ptr %device37 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %device37, align 2
  %conv38 = zext i16 %18 to i32
  %func40 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %19 = ptrtoint ptr %func40 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %func40, align 4
  %conv41 = zext i16 %20 to i32
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv35, i32 noundef %conv38, i32 noundef %conv41) #8
  br label %cleanup

if.end46:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %.pr)
  %tobool49.not = icmp sgt i16 %.pr, -1
  br i1 %tobool49.not, label %if.end46.if.else_crit_edge, label %do.body51

if.end46.if.else_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

do.body51:                                        ; preds = %if.end46
  %debug_mask52 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %21 = ptrtoint ptr %debug_mask52 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %debug_mask52, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool54.not = icmp eq i32 %22, 0
  br i1 %tobool54.not, label %do.body51.cleanup_crit_edge, label %do.end58

do.body51.cleanup_crit_edge:                      ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end58:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id61 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %23 = ptrtoint ptr %bus_id61 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %bus_id61, align 2
  %conv62 = zext i16 %24 to i32
  %device64 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %25 = ptrtoint ptr %device64 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %device64, align 2
  %conv65 = zext i16 %26 to i32
  %func67 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %27 = ptrtoint ptr %func67 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %func67, align 4
  %conv68 = zext i16 %28 to i32
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv62, i32 noundef %conv65, i32 noundef %conv68) #8
  br label %cleanup

if.else:                                          ; preds = %if.end46.if.else_crit_edge, %entry.if.else_crit_edge
  %29 = phi i16 [ %.pr, %if.end46.if.else_crit_edge ], [ 0, %entry.if.else_crit_edge ]
  %add = add i16 %29, %module_offset
  %call76 = call i32 @i40e_read_nvm_word(ptr noundef %hw, i16 noundef zeroext %add, ptr noundef nonnull %specific_ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end101, label %do.body79

do.body79:                                        ; preds = %if.else
  %debug_mask80 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %30 = ptrtoint ptr %debug_mask80 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug_mask80, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool82.not = icmp eq i32 %31, 0
  br i1 %tobool82.not, label %do.body79.cleanup_crit_edge, label %do.end86

do.body79.cleanup_crit_edge:                      ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end86:                                         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id89 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %32 = ptrtoint ptr %bus_id89 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %bus_id89, align 2
  %conv90 = zext i16 %33 to i32
  %device92 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %34 = ptrtoint ptr %device92 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %device92, align 2
  %conv93 = zext i16 %35 to i32
  %func95 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %36 = ptrtoint ptr %func95 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %func95, align 4
  %conv96 = zext i16 %37 to i32
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv90, i32 noundef %conv93, i32 noundef %conv96, i32 noundef %call76) #8
  br label %cleanup

if.end101:                                        ; preds = %if.else
  %38 = ptrtoint ptr %ptr_value to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %ptr_value, align 2
  %40 = ptrtoint ptr %specific_ptr to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %specific_ptr, align 2
  %add104 = add i16 %data_offset, %module_offset
  %add106 = add i16 %add104, %39
  %add108 = add i16 %add106, %41
  %call110 = call i32 @i40e_read_nvm_buffer(ptr noundef %hw, i16 noundef zeroext %add108, ptr noundef nonnull %words_data_size.addr, ptr noundef %data_ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end101.cleanup_crit_edge, label %do.body113

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body113:                                       ; preds = %if.end101
  %debug_mask114 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %42 = ptrtoint ptr %debug_mask114 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %debug_mask114, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool116.not = icmp eq i32 %43, 0
  br i1 %tobool116.not, label %do.body113.cleanup_crit_edge, label %do.end120

do.body113.cleanup_crit_edge:                     ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end120:                                        ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id123 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %44 = ptrtoint ptr %bus_id123 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %bus_id123, align 2
  %conv124 = zext i16 %45 to i32
  %device126 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %46 = ptrtoint ptr %device126 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %device126, align 2
  %conv127 = zext i16 %47 to i32
  %func129 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %48 = ptrtoint ptr %func129 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %func129, align 4
  %conv130 = zext i16 %49 to i32
  %call131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv124, i32 noundef %conv127, i32 noundef %conv130, i32 noundef %call110) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end120, %do.body113.cleanup_crit_edge, %if.end101.cleanup_crit_edge, %do.end86, %do.body79.cleanup_crit_edge, %do.end58, %do.body51.cleanup_crit_edge, %do.end31, %do.body24.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.body.cleanup_crit_edge ], [ -19, %do.end31 ], [ -19, %do.body24.cleanup_crit_edge ], [ -5, %do.end58 ], [ -5, %do.body51.cleanup_crit_edge ], [ -1, %do.end86 ], [ -1, %do.body79.cleanup_crit_edge ], [ 0, %if.end101.cleanup_crit_edge ], [ %call110, %do.end120 ], [ %call110, %do.body113.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ptr_value) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %specific_ptr) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_read_nvm_buffer(ptr noundef %hw, i16 noundef zeroext %offset, ptr nocapture noundef %words, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 35
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %flags, align 8
  %and = and i64 %1, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @i40e_acquire_nvm(ptr noundef %hw, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.do.body.i_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then.do.body.i_crit_edge:                      ; preds = %if.then
  br label %do.body.i

do.body.i:                                        ; preds = %if.end33.i.do.body.i_crit_edge, %if.then.do.body.i_crit_edge
  %last_cmd.0.off0.i = phi i1 [ %spec.select.i, %if.end33.i.do.body.i_crit_edge ], [ false, %if.then.do.body.i_crit_edge ]
  %words_read.0.i = phi i16 [ %conv37.i, %if.end33.i.do.body.i_crit_edge ], [ 0, %if.then.do.body.i_crit_edge ]
  %offset.addr.0.i = phi i16 [ %conv41.i, %if.end33.i.do.body.i_crit_edge ], [ %offset, %if.then.do.body.i_crit_edge ]
  %conv.i = zext i16 %offset.addr.0.i to i32
  %rem.i = and i32 %conv.i, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %2 = ptrtoint ptr %words to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %words, align 2
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv3.i = sub nuw nsw i32 2048, %rem.i
  %conv4.i = zext i16 %3 to i32
  %4 = tail call i32 @llvm.umin.i32(i32 %conv3.i, i32 %conv4.i) #5
  %.pre.i = zext i16 %words_read.0.i to i32
  br label %if.end.i

if.else.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv10.i = zext i16 %3 to i32
  %conv11.i = zext i16 %words_read.0.i to i32
  %sub12.i = sub nsw i32 %conv10.i, %conv11.i
  %5 = tail call i32 @llvm.smin.i32(i32 %sub12.i, i32 2048) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %conv23.i.pre-phi = phi i32 [ %conv10.i, %if.else.i ], [ %conv4.i, %if.then.i ]
  %conv21.pre-phi.i = phi i32 [ %conv11.i, %if.else.i ], [ %.pre.i, %if.then.i ]
  %read_size.0.in.i = phi i32 [ %5, %if.else.i ], [ %4, %if.then.i ]
  %read_size.0.i = trunc i32 %read_size.0.in.i to i16
  %conv22.i = and i32 %read_size.0.in.i, 65535
  %add.i = add nuw nsw i32 %conv22.i, %conv21.pre-phi.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv23.i.pre-phi)
  %cmp24.not.i = icmp uge i32 %add.i, %conv23.i.pre-phi
  %spec.select.i = or i1 %last_cmd.0.off0.i, %cmp24.not.i
  %add.ptr.i = getelementptr i16, ptr %data, i32 %conv21.pre-phi.i
  %call.i = tail call fastcc i32 @i40e_read_nvm_aq(ptr noundef %hw, i32 noundef %conv.i, i16 noundef zeroext %read_size.0.i, ptr noundef %add.ptr.i, i1 noundef zeroext %spec.select.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool31.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end.i.i40e_read_nvm_buffer_aq.exit_crit_edge

if.end.i.i40e_read_nvm_buffer_aq.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_read_nvm_buffer_aq.exit

if.end33.i:                                       ; preds = %if.end.i
  %conv37.i = trunc i32 %add.i to i16
  %conv41.i = add i16 %offset.addr.0.i, %read_size.0.i
  %conv42.i = and i32 %add.i, 65535
  %6 = ptrtoint ptr %words to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %words, align 2
  %conv43.i = zext i16 %7 to i32
  %cmp44.i = icmp ult i32 %conv42.i, %conv43.i
  br i1 %cmp44.i, label %if.end33.i.do.body.i_crit_edge, label %for.cond.preheader.i

if.end33.i.do.body.i_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

for.cond.preheader.i:                             ; preds = %if.end33.i
  %conv37.i.le = trunc i32 %add.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp4883.not.i = icmp eq i16 %7, 0
  br i1 %cmp4883.not.i, label %for.cond.preheader.i.i40e_read_nvm_buffer_aq.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.i40e_read_nvm_buffer_aq.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_read_nvm_buffer_aq.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %data, i32 %indvars.iv.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #5
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %arrayidx.i, align 2
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %12 = ptrtoint ptr %words to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %words, align 2
  %14 = zext i16 %13 to i32
  %cmp48.i = icmp ult i32 %indvars.iv.next.i, %14
  br i1 %cmp48.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.i40e_read_nvm_buffer_aq.exit_crit_edge

for.body.i.i40e_read_nvm_buffer_aq.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_read_nvm_buffer_aq.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

i40e_read_nvm_buffer_aq.exit:                     ; preds = %for.body.i.i40e_read_nvm_buffer_aq.exit_crit_edge, %for.cond.preheader.i.i40e_read_nvm_buffer_aq.exit_crit_edge, %if.end.i.i40e_read_nvm_buffer_aq.exit_crit_edge
  %call88.i = phi i32 [ 0, %for.cond.preheader.i.i40e_read_nvm_buffer_aq.exit_crit_edge ], [ 0, %for.body.i.i40e_read_nvm_buffer_aq.exit_crit_edge ], [ %call.i, %if.end.i.i40e_read_nvm_buffer_aq.exit_crit_edge ]
  %words_read.1.i = phi i16 [ %conv37.i.le, %for.cond.preheader.i.i40e_read_nvm_buffer_aq.exit_crit_edge ], [ %conv37.i.le, %for.body.i.i40e_read_nvm_buffer_aq.exit_crit_edge ], [ %words_read.0.i, %if.end.i.i40e_read_nvm_buffer_aq.exit_crit_edge ]
  %15 = ptrtoint ptr %words to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %words_read.1.i, ptr %words, align 2
  %blank_nvm_mode.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %blank_nvm_mode.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %blank_nvm_mode.i, align 2, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i14 = icmp eq i8 %17, 0
  br i1 %tobool.not.i14, label %if.end.i16, label %i40e_read_nvm_buffer_aq.exit.if.end5_crit_edge

i40e_read_nvm_buffer_aq.exit.if.end5_crit_edge:   ; preds = %i40e_read_nvm_buffer_aq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end.i16:                                       ; preds = %i40e_read_nvm_buffer_aq.exit
  %call.i15 = tail call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #5
  %asq_cmd_timeout.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call.i15)
  %cmp8.i = icmp eq i32 %call.i15, -54
  br i1 %cmp8.i, label %if.end.i16.land.rhs.i_crit_edge, label %if.end.i16.if.end5_crit_edge

if.end.i16.if.end5_crit_edge:                     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end.i16.land.rhs.i_crit_edge:                  ; preds = %if.end.i16
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end.i16.land.rhs.i_crit_edge
  %total_delay.09.i = phi i32 [ %inc.i, %while.body.i.land.rhs.i_crit_edge ], [ 0, %if.end.i16.land.rhs.i_crit_edge ]
  %18 = ptrtoint ptr %asq_cmd_timeout.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %asq_cmd_timeout.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %total_delay.09.i, i32 %19)
  %cmp1.i = icmp ult i32 %total_delay.09.i, %19
  br i1 %cmp1.i, label %while.body.i, label %land.rhs.i.if.end5_crit_edge

land.rhs.i.if.end5_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

while.body.i:                                     ; preds = %land.rhs.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %call2.i = tail call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #5
  %inc.i = add nuw i32 %total_delay.09.i, 1
  %cmp.i = icmp eq i32 %call2.i, -54
  br i1 %cmp.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.if.end5_crit_edge

while.body.i.if.end5_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

if.else:                                          ; preds = %entry
  %20 = ptrtoint ptr %words to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %words, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp12.not.i = icmp eq i16 %21, 0
  br i1 %cmp12.not.i, label %if.else.i40e_read_nvm_buffer_srctl.exit_crit_edge, label %if.else.for.body.i22_crit_edge

if.else.for.body.i22_crit_edge:                   ; preds = %if.else
  br label %for.body.i22

if.else.i40e_read_nvm_buffer_srctl.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_read_nvm_buffer_srctl.exit

for.body.i22:                                     ; preds = %for.inc.i.for.body.i22_crit_edge, %if.else.for.body.i22_crit_edge
  %indvars.iv.i17 = phi i32 [ %indvars.iv.next.i23, %for.inc.i.for.body.i22_crit_edge ], [ 0, %if.else.for.body.i22_crit_edge ]
  %word.013.i = phi i16 [ %inc.i24, %for.inc.i.for.body.i22_crit_edge ], [ 0, %if.else.for.body.i22_crit_edge ]
  %22 = trunc i32 %indvars.iv.i17 to i16
  %add.i18 = add i16 %22, %offset
  %arrayidx.i19 = getelementptr i16, ptr %data, i32 %indvars.iv.i17
  %call.i20 = tail call fastcc i32 @i40e_read_nvm_word_srctl(ptr noundef %hw, i16 noundef zeroext %add.i18, ptr noundef %arrayidx.i19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool.not.i21 = icmp eq i32 %call.i20, 0
  br i1 %tobool.not.i21, label %for.inc.i, label %i40e_read_nvm_buffer_srctl.exit.loopexit.split.loop.exit

for.inc.i:                                        ; preds = %for.body.i22
  %indvars.iv.next.i23 = add nuw nsw i32 %indvars.iv.i17, 1
  %inc.i24 = add nuw i16 %word.013.i, 1
  %23 = ptrtoint ptr %words to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %words, align 2
  %25 = zext i16 %24 to i32
  %cmp.i25 = icmp ult i32 %indvars.iv.next.i23, %25
  br i1 %cmp.i25, label %for.inc.i.for.body.i22_crit_edge, label %for.inc.i.i40e_read_nvm_buffer_srctl.exit_crit_edge

for.inc.i.i40e_read_nvm_buffer_srctl.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_read_nvm_buffer_srctl.exit

for.inc.i.for.body.i22_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i22

i40e_read_nvm_buffer_srctl.exit.loopexit.split.loop.exit: ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #7
  %26 = trunc i32 %indvars.iv.i17 to i16
  br label %i40e_read_nvm_buffer_srctl.exit

i40e_read_nvm_buffer_srctl.exit:                  ; preds = %i40e_read_nvm_buffer_srctl.exit.loopexit.split.loop.exit, %for.inc.i.i40e_read_nvm_buffer_srctl.exit_crit_edge, %if.else.i40e_read_nvm_buffer_srctl.exit_crit_edge
  %word.0.lcssa.i = phi i16 [ 0, %if.else.i40e_read_nvm_buffer_srctl.exit_crit_edge ], [ %26, %i40e_read_nvm_buffer_srctl.exit.loopexit.split.loop.exit ], [ %inc.i24, %for.inc.i.i40e_read_nvm_buffer_srctl.exit_crit_edge ]
  %ret_code.1.i = phi i32 [ 0, %if.else.i40e_read_nvm_buffer_srctl.exit_crit_edge ], [ %call.i20, %i40e_read_nvm_buffer_srctl.exit.loopexit.split.loop.exit ], [ 0, %for.inc.i.i40e_read_nvm_buffer_srctl.exit_crit_edge ]
  %27 = ptrtoint ptr %words to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %word.0.lcssa.i, ptr %words, align 2
  br label %if.end5

if.end5:                                          ; preds = %i40e_read_nvm_buffer_srctl.exit, %while.body.i.if.end5_crit_edge, %land.rhs.i.if.end5_crit_edge, %if.end.i16.if.end5_crit_edge, %i40e_read_nvm_buffer_aq.exit.if.end5_crit_edge, %if.then.if.end5_crit_edge
  %ret_code.0 = phi i32 [ %call, %if.then.if.end5_crit_edge ], [ %ret_code.1.i, %i40e_read_nvm_buffer_srctl.exit ], [ %call88.i, %i40e_read_nvm_buffer_aq.exit.if.end5_crit_edge ], [ %call88.i, %if.end.i16.if.end5_crit_edge ], [ %call88.i, %land.rhs.i.if.end5_crit_edge ], [ %call88.i, %while.body.i.if.end5_crit_edge ]
  ret i32 %ret_code.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_update_nvm_checksum(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %cmd_details.i = alloca %struct.i40e_asq_cmd_details, align 8
  %checksum = alloca i16, align 2
  %le_sum = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %checksum) #5
  %0 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %checksum, align 2, !annotation !244
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %le_sum) #5
  %call = call fastcc i32 @i40e_calc_nvm_checksum(ptr noundef %hw, ptr noundef nonnull %checksum)
  %1 = ptrtoint ptr %checksum to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %checksum, align 2
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %4 = ptrtoint ptr %le_sum to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %le_sum, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd_details.i) #5
  %5 = call ptr @memset(ptr %cmd_details.i, i32 0, i32 32)
  %nvm_wb_desc.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 25
  %wb_desc.i = getelementptr inbounds %struct.i40e_asq_cmd_details, ptr %cmd_details.i, i32 0, i32 6
  %6 = ptrtoint ptr %wb_desc.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %nvm_wb_desc.i, ptr %wb_desc.i, align 8
  %sr_size.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 2
  %7 = ptrtoint ptr %sr_size.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sr_size.i, align 4
  %conv1.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %8)
  %cmp.i = icmp ult i16 %8, 64
  br i1 %cmp.i, label %do.body.i, label %if.else74.i

do.body.i:                                        ; preds = %if.then
  %debug_mask.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %9 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_mask.i, align 8
  %and.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.i40e_write_nvm_aq.exit_crit_edge, label %do.end.i

do.body.i.i40e_write_nvm_aq.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_write_nvm_aq.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %11 = ptrtoint ptr %bus_id.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bus_id.i, align 2
  %conv5.i = zext i16 %12 to i32
  %device.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %device.i, align 2
  %conv7.i = zext i16 %14 to i32
  %func.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %func.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %func.i, align 4
  %conv9.i = zext i16 %16 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %conv5.i, i32 noundef %conv7.i, i32 noundef %conv9.i, i32 noundef 64, i32 noundef %conv1.i) #8
  br label %i40e_write_nvm_aq.exit

if.else74.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call79.i = call i32 @i40e_aq_update_nvm(ptr noundef %hw, i8 noundef zeroext 0, i32 noundef 126, i16 noundef zeroext 2, ptr noundef nonnull %le_sum, i1 noundef zeroext true, i8 noundef zeroext 0, ptr noundef nonnull %cmd_details.i) #5
  br label %i40e_write_nvm_aq.exit

i40e_write_nvm_aq.exit:                           ; preds = %if.else74.i, %do.end.i, %do.body.i.i40e_write_nvm_aq.exit_crit_edge
  %ret_code.0.i = phi i32 [ -1, %do.end.i ], [ -1, %do.body.i.i40e_write_nvm_aq.exit_crit_edge ], [ %call79.i, %if.else74.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd_details.i) #5
  br label %if.end

if.end:                                           ; preds = %i40e_write_nvm_aq.exit, %entry.if.end_crit_edge
  %ret_code.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %ret_code.0.i, %i40e_write_nvm_aq.exit ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %le_sum) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %checksum) #5
  ret i32 %ret_code.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_calc_nvm_checksum(ptr noundef %hw, ptr nocapture noundef writeonly %checksum) unnamed_addr #0 align 64 {
entry:
  %cmd_details.i102 = alloca %struct.i40e_asq_cmd_details, align 8
  %cmd_details.i = alloca %struct.i40e_asq_cmd_details, align 8
  %vmem = alloca %struct.i40e_virt_mem, align 4
  %pcie_alt_module = alloca i16, align 2
  %vpd_module = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vmem) #5
  %0 = ptrtoint ptr %vmem to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %vmem, align 4, !annotation !244
  %1 = getelementptr inbounds %struct.i40e_virt_mem, ptr %vmem, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !244
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pcie_alt_module) #5
  %3 = ptrtoint ptr %pcie_alt_module to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %pcie_alt_module, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vpd_module) #5
  %4 = ptrtoint ptr %vpd_module to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %vpd_module, align 2
  %call = call i32 @i40e_allocate_virt_mem_d(ptr noundef %hw, ptr noundef nonnull %vmem, i32 noundef 4096) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.i40e_calc_nvm_checksum_exit_crit_edge

entry.i40e_calc_nvm_checksum_exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_calc_nvm_checksum_exit

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %vmem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vmem, align 4
  %flags.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 35
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %flags.i, align 8
  %and.i = and i64 %8, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd_details.i) #5
  %9 = call ptr @memset(ptr %cmd_details.i, i32 0, i32 32)
  %nvm_wb_desc.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 25
  %wb_desc.i = getelementptr inbounds %struct.i40e_asq_cmd_details, ptr %cmd_details.i, i32 0, i32 6
  %10 = ptrtoint ptr %wb_desc.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %nvm_wb_desc.i, ptr %wb_desc.i, align 8
  %sr_size.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %sr_size.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sr_size.i, align 4
  %conv1.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %12)
  %cmp.i = icmp ult i16 %12, 48
  br i1 %cmp.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %if.then.i
  %debug_mask.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %13 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug_mask.i, align 8
  %and.i100 = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i100)
  %tobool.not.i101 = icmp eq i32 %and.i100, 0
  br i1 %tobool.not.i101, label %do.body.i.i40e_read_nvm_aq.exit_crit_edge, label %do.end.i

do.body.i.i40e_read_nvm_aq.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_read_nvm_aq.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %15 = ptrtoint ptr %bus_id.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %bus_id.i, align 2
  %conv5.i = zext i16 %16 to i32
  %device.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %17 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %device.i, align 2
  %conv7.i = zext i16 %18 to i32
  %func.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %19 = ptrtoint ptr %func.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %func.i, align 4
  %conv9.i = zext i16 %20 to i32
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %conv5.i, i32 noundef %conv7.i, i32 noundef %conv9.i, i32 noundef 48, i32 noundef %conv1.i) #8
  br label %i40e_read_nvm_aq.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %call79.i = call i32 @i40e_aq_read_nvm(ptr noundef %hw, i8 noundef zeroext 0, i32 noundef 94, i16 noundef zeroext 2, ptr noundef nonnull %vpd_module, i1 noundef zeroext true, ptr noundef nonnull %cmd_details.i) #5
  br label %i40e_read_nvm_aq.exit

i40e_read_nvm_aq.exit:                            ; preds = %if.else.i, %do.end.i, %do.body.i.i40e_read_nvm_aq.exit_crit_edge
  %ret_code.0.i = phi i32 [ -1, %do.end.i ], [ -1, %do.body.i.i40e_read_nvm_aq.exit_crit_edge ], [ %call79.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd_details.i) #5
  %21 = ptrtoint ptr %vpd_module to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vpd_module, align 2
  %23 = call i16 @llvm.bswap.i16(i16 %22) #5
  %24 = ptrtoint ptr %vpd_module to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %vpd_module, align 2
  br label %__i40e_read_nvm_word.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = call fastcc i32 @i40e_read_nvm_word_srctl(ptr noundef %hw, i16 noundef zeroext 47, ptr noundef nonnull %vpd_module) #5
  br label %__i40e_read_nvm_word.exit

__i40e_read_nvm_word.exit:                        ; preds = %if.end.i, %i40e_read_nvm_aq.exit
  %retval.0.i = phi i32 [ %ret_code.0.i, %i40e_read_nvm_aq.exit ], [ %call1.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool2.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool2.not, label %if.end4, label %__i40e_read_nvm_word.exit.i40e_calc_nvm_checksum_exit_crit_edge

__i40e_read_nvm_word.exit.i40e_calc_nvm_checksum_exit_crit_edge: ; preds = %__i40e_read_nvm_word.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_calc_nvm_checksum_exit

if.end4:                                          ; preds = %__i40e_read_nvm_word.exit
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %flags.i, align 8
  %and.i86 = and i64 %26, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i86)
  %tobool.not.i87 = icmp eq i64 %and.i86, 0
  br i1 %tobool.not.i87, label %if.end.i91, label %if.then.i89

if.then.i89:                                      ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd_details.i102) #5
  %27 = call ptr @memset(ptr %cmd_details.i102, i32 0, i32 32)
  %nvm_wb_desc.i103 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 25
  %wb_desc.i104 = getelementptr inbounds %struct.i40e_asq_cmd_details, ptr %cmd_details.i102, i32 0, i32 6
  %28 = ptrtoint ptr %wb_desc.i104 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %nvm_wb_desc.i103, ptr %wb_desc.i104, align 8
  %sr_size.i105 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 2
  %29 = ptrtoint ptr %sr_size.i105 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sr_size.i105, align 4
  %conv1.i106 = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %30)
  %cmp.i107 = icmp ult i16 %30, 63
  br i1 %cmp.i107, label %do.body.i111, label %if.else.i120

do.body.i111:                                     ; preds = %if.then.i89
  %debug_mask.i108 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %31 = ptrtoint ptr %debug_mask.i108 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug_mask.i108, align 8
  %and.i109 = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i109)
  %tobool.not.i110 = icmp eq i32 %and.i109, 0
  br i1 %tobool.not.i110, label %do.body.i111.i40e_read_nvm_aq.exit123_crit_edge, label %do.end.i119

do.body.i111.i40e_read_nvm_aq.exit123_crit_edge:  ; preds = %do.body.i111
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_read_nvm_aq.exit123

do.end.i119:                                      ; preds = %do.body.i111
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id.i112 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %33 = ptrtoint ptr %bus_id.i112 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %bus_id.i112, align 2
  %conv5.i113 = zext i16 %34 to i32
  %device.i114 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %35 = ptrtoint ptr %device.i114 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %device.i114, align 2
  %conv7.i115 = zext i16 %36 to i32
  %func.i116 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %37 = ptrtoint ptr %func.i116 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %func.i116, align 4
  %conv9.i117 = zext i16 %38 to i32
  %call.i118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %conv5.i113, i32 noundef %conv7.i115, i32 noundef %conv9.i117, i32 noundef 63, i32 noundef %conv1.i106) #8
  br label %i40e_read_nvm_aq.exit123

if.else.i120:                                     ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #7
  %call79.i121 = call i32 @i40e_aq_read_nvm(ptr noundef %hw, i8 noundef zeroext 0, i32 noundef 124, i16 noundef zeroext 2, ptr noundef nonnull %pcie_alt_module, i1 noundef zeroext true, ptr noundef nonnull %cmd_details.i102) #5
  br label %i40e_read_nvm_aq.exit123

i40e_read_nvm_aq.exit123:                         ; preds = %if.else.i120, %do.end.i119, %do.body.i111.i40e_read_nvm_aq.exit123_crit_edge
  %ret_code.0.i122 = phi i32 [ -1, %do.end.i119 ], [ -1, %do.body.i111.i40e_read_nvm_aq.exit123_crit_edge ], [ %call79.i121, %if.else.i120 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd_details.i102) #5
  %39 = ptrtoint ptr %pcie_alt_module to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %pcie_alt_module, align 2
  %41 = call i16 @llvm.bswap.i16(i16 %40) #5
  %42 = ptrtoint ptr %pcie_alt_module to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %pcie_alt_module, align 2
  br label %__i40e_read_nvm_word.exit93

if.end.i91:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i90 = call fastcc i32 @i40e_read_nvm_word_srctl(ptr noundef %hw, i16 noundef zeroext 62, ptr noundef nonnull %pcie_alt_module) #5
  br label %__i40e_read_nvm_word.exit93

__i40e_read_nvm_word.exit93:                      ; preds = %if.end.i91, %i40e_read_nvm_aq.exit123
  %retval.0.i92 = phi i32 [ %ret_code.0.i122, %i40e_read_nvm_aq.exit123 ], [ %call1.i90, %if.end.i91 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i92)
  %tobool6.not = icmp eq i32 %retval.0.i92, 0
  br i1 %tobool6.not, label %for.cond.preheader, label %__i40e_read_nvm_word.exit93.i40e_calc_nvm_checksum_exit_crit_edge

__i40e_read_nvm_word.exit93.i40e_calc_nvm_checksum_exit_crit_edge: ; preds = %__i40e_read_nvm_word.exit93
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_calc_nvm_checksum_exit

for.cond.preheader:                               ; preds = %__i40e_read_nvm_word.exit93
  %sr_size = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 2
  %43 = ptrtoint ptr %sr_size to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %sr_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp135.not = icmp eq i16 %44, 0
  br i1 %cmp135.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %checksum_local.0136 = phi i16 [ %checksum_local.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %rem = and i32 %indvars.iv, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp12 = icmp eq i32 %rem, 0
  br i1 %cmp12, label %if.then14, label %for.body.if.end19_crit_edge

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then14:                                        ; preds = %for.body
  %45 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %flags.i, align 8
  %and.i95 = and i64 %46, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i95)
  %tobool.not.i96 = icmp eq i64 %and.i95, 0
  %47 = trunc i32 %indvars.iv to i16
  br i1 %tobool.not.i96, label %if.then14.for.body.i12.i_crit_edge, label %if.then14.do.body.i.i_crit_edge

if.then14.do.body.i.i_crit_edge:                  ; preds = %if.then14
  br label %do.body.i.i

if.then14.for.body.i12.i_crit_edge:               ; preds = %if.then14
  br label %for.body.i12.i

do.body.i.i:                                      ; preds = %if.end33.i.i.do.body.i.i_crit_edge, %if.then14.do.body.i.i_crit_edge
  %last_cmd.0.off0.i.i = phi i1 [ %spec.select.i.i, %if.end33.i.i.do.body.i.i_crit_edge ], [ false, %if.then14.do.body.i.i_crit_edge ]
  %words_read.0.i.i = phi i32 [ %add.i.i, %if.end33.i.i.do.body.i.i_crit_edge ], [ 0, %if.then14.do.body.i.i_crit_edge ]
  %offset.addr.0.i.i = phi i16 [ %conv41.i.i, %if.end33.i.i.do.body.i.i_crit_edge ], [ %47, %if.then14.do.body.i.i_crit_edge ]
  %conv.i.i = zext i16 %offset.addr.0.i.i to i32
  %rem.i.i = and i32 %conv.i.i, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  %conv11.i.i = and i32 %words_read.0.i.i, 65535
  %read_size.0.in.i.i.v = select i1 %tobool.not.i.i, i32 %conv11.i.i, i32 %rem.i.i
  %read_size.0.in.i.i = sub nsw i32 2048, %read_size.0.in.i.i.v
  %read_size.0.i.i = trunc i32 %read_size.0.in.i.i to i16
  %conv22.i.i = and i32 %read_size.0.in.i.i, 65535
  %add.i.i = add nuw nsw i32 %conv22.i.i, %conv11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %add.i.i)
  %cmp24.not.i.i = icmp ugt i32 %add.i.i, 2047
  %spec.select.i.i = or i1 %last_cmd.0.off0.i.i, %cmp24.not.i.i
  %add.ptr.i.i = getelementptr i16, ptr %6, i32 %conv11.i.i
  %call.i.i97 = call fastcc i32 @i40e_read_nvm_aq(ptr noundef %hw, i32 noundef %conv.i.i, i16 noundef zeroext %read_size.0.i.i, ptr noundef %add.ptr.i.i, i1 noundef zeroext %spec.select.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i97)
  %tobool31.not.i.i = icmp eq i32 %call.i.i97, 0
  br i1 %tobool31.not.i.i, label %if.end33.i.i, label %do.body.i.i.i40e_calc_nvm_checksum_exit_crit_edge

do.body.i.i.i40e_calc_nvm_checksum_exit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_calc_nvm_checksum_exit

if.end33.i.i:                                     ; preds = %do.body.i.i
  %conv41.i.i = add i16 %offset.addr.0.i.i, %read_size.0.i.i
  %conv42.i.i = and i32 %add.i.i, 63488
  %cmp44.i.i = icmp eq i32 %conv42.i.i, 0
  br i1 %cmp44.i.i, label %if.end33.i.i.do.body.i.i_crit_edge, label %if.end33.i.i.for.body.i.i_crit_edge

if.end33.i.i.for.body.i.i_crit_edge:              ; preds = %if.end33.i.i
  br label %for.body.i.i

if.end33.i.i.do.body.i.i_crit_edge:               ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end33.i.i.for.body.i.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end33.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i16, ptr %6, i32 %indvars.iv.i.i
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx.i.i, align 2
  %50 = call i16 @llvm.bswap.i16(i16 %49) #5
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %arrayidx.i.i, align 2
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next.i.i, 2048
  br i1 %exitcond.not, label %for.body.i.i.if.end19_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.body.i.i.if.end19_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

for.body.i12.i:                                   ; preds = %for.inc.i.i.for.body.i12.i_crit_edge, %if.then14.for.body.i12.i_crit_edge
  %indvars.iv.i7.i = phi i32 [ %indvars.iv.next.i13.i, %for.inc.i.i.for.body.i12.i_crit_edge ], [ 0, %if.then14.for.body.i12.i_crit_edge ]
  %52 = trunc i32 %indvars.iv.i7.i to i16
  %add.i8.i = add i16 %47, %52
  %arrayidx.i9.i = getelementptr i16, ptr %6, i32 %indvars.iv.i7.i
  %call.i10.i = call fastcc i32 @i40e_read_nvm_word_srctl(ptr noundef %hw, i16 noundef zeroext %add.i8.i, ptr noundef %arrayidx.i9.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %tobool.not.i11.i = icmp eq i32 %call.i10.i, 0
  br i1 %tobool.not.i11.i, label %for.inc.i.i, label %for.body.i12.i.i40e_calc_nvm_checksum_exit_crit_edge

for.body.i12.i.i40e_calc_nvm_checksum_exit_crit_edge: ; preds = %for.body.i12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_calc_nvm_checksum_exit

for.inc.i.i:                                      ; preds = %for.body.i12.i
  %indvars.iv.next.i13.i = add nuw nsw i32 %indvars.iv.i7.i, 1
  %exitcond143.not = icmp eq i32 %indvars.iv.next.i13.i, 2048
  br i1 %exitcond143.not, label %for.inc.i.i.if.end19_crit_edge, label %for.inc.i.i.for.body.i12.i_crit_edge

for.inc.i.i.for.body.i12.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i12.i

for.inc.i.i.if.end19_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.end19:                                         ; preds = %for.inc.i.i.if.end19_crit_edge, %for.body.i.i.if.end19_crit_edge, %for.body.if.end19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %indvars.iv)
  %cmp21 = icmp eq i32 %indvars.iv, 63
  br i1 %cmp21, label %if.end19.for.inc_crit_edge, label %if.end24

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end24:                                         ; preds = %if.end19
  %53 = ptrtoint ptr %vpd_module to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %vpd_module, align 2
  %55 = zext i16 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %55)
  %cmp27.not = icmp uge i32 %indvars.iv, %55
  %add = add nuw nsw i32 %55, 512
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %indvars.iv)
  %cmp31 = icmp ugt i32 %add, %indvars.iv
  %or.cond = select i1 %cmp27.not, i1 %cmp31, i1 false
  br i1 %or.cond, label %if.end24.for.inc_crit_edge, label %if.end34

if.end24.for.inc_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end34:                                         ; preds = %if.end24
  %56 = ptrtoint ptr %pcie_alt_module to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %pcie_alt_module, align 2
  %58 = zext i16 %57 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %58)
  %cmp37.not = icmp uge i32 %indvars.iv, %58
  %add42 = add nuw nsw i32 %58, 512
  call void @__sanitizer_cov_trace_cmp4(i32 %add42, i32 %indvars.iv)
  %cmp43 = icmp ugt i32 %add42, %indvars.iv
  %or.cond84 = select i1 %cmp37.not, i1 %cmp43, i1 false
  br i1 %or.cond84, label %if.end34.for.inc_crit_edge, label %if.end46

if.end34.for.inc_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end46:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr i16, ptr %6, i32 %rem
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx, align 2
  %add51 = add i16 %60, %checksum_local.0136
  br label %for.inc

for.inc:                                          ; preds = %if.end46, %if.end34.for.inc_crit_edge, %if.end24.for.inc_crit_edge, %if.end19.for.inc_crit_edge
  %checksum_local.1 = phi i16 [ %checksum_local.0136, %if.end19.for.inc_crit_edge ], [ %add51, %if.end46 ], [ %checksum_local.0136, %if.end24.for.inc_crit_edge ], [ %checksum_local.0136, %if.end34.for.inc_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %61 = ptrtoint ptr %sr_size to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %sr_size, align 4
  %63 = zext i16 %62 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %63
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %checksum_local.0.lcssa = phi i16 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %checksum_local.1, %for.inc.for.end_crit_edge ]
  %sub = sub i16 -17734, %checksum_local.0.lcssa
  %64 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %sub, ptr %checksum, align 2
  br label %i40e_calc_nvm_checksum_exit

i40e_calc_nvm_checksum_exit:                      ; preds = %for.end, %for.body.i12.i.i40e_calc_nvm_checksum_exit_crit_edge, %do.body.i.i.i40e_calc_nvm_checksum_exit_crit_edge, %__i40e_read_nvm_word.exit93.i40e_calc_nvm_checksum_exit_crit_edge, %__i40e_read_nvm_word.exit.i40e_calc_nvm_checksum_exit_crit_edge, %entry.i40e_calc_nvm_checksum_exit_crit_edge
  %ret_code.3 = phi i32 [ %call, %entry.i40e_calc_nvm_checksum_exit_crit_edge ], [ 0, %for.end ], [ -2, %__i40e_read_nvm_word.exit.i40e_calc_nvm_checksum_exit_crit_edge ], [ -2, %__i40e_read_nvm_word.exit93.i40e_calc_nvm_checksum_exit_crit_edge ], [ -2, %for.body.i12.i.i40e_calc_nvm_checksum_exit_crit_edge ], [ -2, %do.body.i.i.i40e_calc_nvm_checksum_exit_crit_edge ]
  %call55 = call i32 @i40e_free_virt_mem_d(ptr noundef %hw, ptr noundef nonnull %vmem) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vpd_module) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pcie_alt_module) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vmem) #5
  ret i32 %ret_code.3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_validate_nvm_checksum(ptr noundef %hw, ptr noundef writeonly %checksum) local_unnamed_addr #0 align 64 {
entry:
  %cmd_details.i = alloca %struct.i40e_asq_cmd_details, align 8
  %checksum_sr = alloca i16, align 2
  %checksum_local = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %checksum_sr) #5
  %0 = ptrtoint ptr %checksum_sr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %checksum_sr, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %checksum_local) #5
  %1 = ptrtoint ptr %checksum_local to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %checksum_local, align 2
  %call = tail call i32 @i40e_acquire_nvm(ptr noundef %hw, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @i40e_calc_nvm_checksum(ptr noundef %hw, ptr noundef nonnull %checksum_local)
  %flags.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 35
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %flags.i, align 8
  %and.i = and i64 %3, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd_details.i) #5
  %4 = call ptr @memset(ptr %cmd_details.i, i32 0, i32 32)
  %nvm_wb_desc.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 25
  %wb_desc.i = getelementptr inbounds %struct.i40e_asq_cmd_details, ptr %cmd_details.i, i32 0, i32 6
  %5 = ptrtoint ptr %wb_desc.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %nvm_wb_desc.i, ptr %wb_desc.i, align 8
  %sr_size.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %sr_size.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sr_size.i, align 4
  %conv1.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %7)
  %cmp.i25 = icmp ult i16 %7, 64
  br i1 %cmp.i25, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %if.then.i
  %debug_mask.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %8 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug_mask.i, align 8
  %and.i26 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26)
  %tobool.not.i27 = icmp eq i32 %and.i26, 0
  br i1 %tobool.not.i27, label %do.body.i.i40e_read_nvm_aq.exit_crit_edge, label %do.end.i

do.body.i.i40e_read_nvm_aq.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_read_nvm_aq.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %10 = ptrtoint ptr %bus_id.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bus_id.i, align 2
  %conv5.i = zext i16 %11 to i32
  %device.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %device.i, align 2
  %conv7.i = zext i16 %13 to i32
  %func.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %14 = ptrtoint ptr %func.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %func.i, align 4
  %conv9.i = zext i16 %15 to i32
  %call.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %conv5.i, i32 noundef %conv7.i, i32 noundef %conv9.i, i32 noundef 64, i32 noundef %conv1.i) #8
  br label %i40e_read_nvm_aq.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %call79.i = call i32 @i40e_aq_read_nvm(ptr noundef %hw, i8 noundef zeroext 0, i32 noundef 126, i16 noundef zeroext 2, ptr noundef nonnull %checksum_sr, i1 noundef zeroext true, ptr noundef nonnull %cmd_details.i) #5
  br label %i40e_read_nvm_aq.exit

i40e_read_nvm_aq.exit:                            ; preds = %if.else.i, %do.end.i, %do.body.i.i40e_read_nvm_aq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd_details.i) #5
  %16 = ptrtoint ptr %checksum_sr to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %checksum_sr, align 2
  %18 = call i16 @llvm.bswap.i16(i16 %17) #5
  %19 = ptrtoint ptr %checksum_sr to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %checksum_sr, align 2
  br label %__i40e_read_nvm_word.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = call fastcc i32 @i40e_read_nvm_word_srctl(ptr noundef %hw, i16 noundef zeroext 63, ptr noundef nonnull %checksum_sr) #5
  br label %__i40e_read_nvm_word.exit

__i40e_read_nvm_word.exit:                        ; preds = %if.end.i, %i40e_read_nvm_aq.exit
  %blank_nvm_mode.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 3
  %20 = ptrtoint ptr %blank_nvm_mode.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %blank_nvm_mode.i, align 2, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i23 = icmp eq i8 %21, 0
  br i1 %tobool.not.i23, label %if.end.i24, label %__i40e_read_nvm_word.exit.i40e_release_nvm.exit_crit_edge

__i40e_read_nvm_word.exit.i40e_release_nvm.exit_crit_edge: ; preds = %__i40e_read_nvm_word.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_release_nvm.exit

if.end.i24:                                       ; preds = %__i40e_read_nvm_word.exit
  %call.i = call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #5
  %asq_cmd_timeout.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call.i)
  %cmp8.i = icmp eq i32 %call.i, -54
  br i1 %cmp8.i, label %if.end.i24.land.rhs.i_crit_edge, label %if.end.i24.i40e_release_nvm.exit_crit_edge

if.end.i24.i40e_release_nvm.exit_crit_edge:       ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_release_nvm.exit

if.end.i24.land.rhs.i_crit_edge:                  ; preds = %if.end.i24
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end.i24.land.rhs.i_crit_edge
  %total_delay.09.i = phi i32 [ %inc.i, %while.body.i.land.rhs.i_crit_edge ], [ 0, %if.end.i24.land.rhs.i_crit_edge ]
  %22 = ptrtoint ptr %asq_cmd_timeout.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %asq_cmd_timeout.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %total_delay.09.i, i32 %23)
  %cmp1.i = icmp ult i32 %total_delay.09.i, %23
  br i1 %cmp1.i, label %while.body.i, label %land.rhs.i.i40e_release_nvm.exit_crit_edge

land.rhs.i.i40e_release_nvm.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_release_nvm.exit

while.body.i:                                     ; preds = %land.rhs.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %call2.i = call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #5
  %inc.i = add nuw i32 %total_delay.09.i, 1
  %cmp.i = icmp eq i32 %call2.i, -54
  br i1 %cmp.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.i40e_release_nvm.exit_crit_edge

while.body.i.i40e_release_nvm.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_release_nvm.exit

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

i40e_release_nvm.exit:                            ; preds = %while.body.i.i40e_release_nvm.exit_crit_edge, %land.rhs.i.i40e_release_nvm.exit_crit_edge, %if.end.i24.i40e_release_nvm.exit_crit_edge, %__i40e_read_nvm_word.exit.i40e_release_nvm.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool3.not = icmp eq i32 %call1, 0
  br i1 %tobool3.not, label %if.end5, label %i40e_release_nvm.exit.cleanup_crit_edge

i40e_release_nvm.exit.cleanup_crit_edge:          ; preds = %i40e_release_nvm.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %i40e_release_nvm.exit
  %24 = ptrtoint ptr %checksum_local to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %checksum_local, align 2
  %26 = ptrtoint ptr %checksum_sr to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %checksum_sr, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp.not = icmp eq i16 %25, %27
  %spec.select = select i1 %cmp.not, i32 0, i32 -2
  %tobool10.not = icmp eq ptr %checksum, null
  br i1 %tobool10.not, label %if.end5.cleanup_crit_edge, label %if.then11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %25, ptr %checksum, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end5.cleanup_crit_edge, %i40e_release_nvm.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %i40e_release_nvm.exit.cleanup_crit_edge ], [ %spec.select, %if.then11 ], [ %spec.select, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %checksum_local) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %checksum_sr) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_nvmupd_command(ptr noundef %hw, ptr noundef %cmd, ptr noundef %bytes, ptr noundef writeonly %perrno) local_unnamed_addr #0 align 64 {
entry:
  %cmd_details.i315.i = alloca %struct.i40e_asq_cmd_details, align 8
  %cmd_details.i.i = alloca %struct.i40e_asq_cmd_details, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %perrno to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %perrno, align 4
  %call = tail call fastcc i32 @i40e_nvmupd_validate_command(ptr noundef %hw, ptr noundef %cmd, ptr noundef %perrno)
  %debug_mask = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %1 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %debug_mask, align 8
  %and = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.end

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %3 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %bus_id, align 2
  %conv = zext i16 %4 to i32
  %device = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device, align 2
  %conv3 = zext i16 %6 to i32
  %func = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %func, align 4
  %conv5 = zext i16 %8 to i32
  %arrayidx = getelementptr [17 x ptr], ptr @i40e_nvm_update_state_str, i32 0, i32 %call
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %nvmupd_state = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 24
  %11 = ptrtoint ptr %nvmupd_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nvmupd_state, align 8
  %nvm_release_on_done = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 28
  %13 = ptrtoint ptr %nvm_release_on_done to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nvm_release_on_done, align 4, !range !241
  %15 = zext i8 %14 to i32
  %nvm_wait_opcode = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 29
  %16 = ptrtoint ptr %nvm_wait_opcode to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %nvm_wait_opcode, align 2
  %conv8 = zext i16 %17 to i32
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cmd, align 4
  %config = getelementptr inbounds %struct.i40e_nvm_access, ptr %cmd, i32 0, i32 1
  %20 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %config, align 4
  %offset = getelementptr inbounds %struct.i40e_nvm_access, ptr %cmd, i32 0, i32 2
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset, align 4
  %data_size = getelementptr inbounds %struct.i40e_nvm_access, ptr %cmd, i32 0, i32 3
  %24 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_size, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv5, ptr noundef %10, i32 noundef %12, i32 noundef %15, i32 noundef %conv8, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25) #8
  br label %do.end11

do.end11:                                         ; preds = %do.end, %entry.do.end11_crit_edge
  %26 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %call, label %do.end11.if.end61_crit_edge [
    i32 0, label %if.then13
    i32 13, label %if.then39
  ]

do.end11.if.end61_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then13:                                        ; preds = %do.end11
  %27 = ptrtoint ptr %perrno to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -14, ptr %perrno, align 4
  %28 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %debug_mask, align 8
  %and16 = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then13.if.end61_crit_edge, label %do.end21

if.then13.if.end61_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

do.end21:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id24 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %30 = ptrtoint ptr %bus_id24 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %bus_id24, align 2
  %conv25 = zext i16 %31 to i32
  %device27 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %32 = ptrtoint ptr %device27 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %device27, align 2
  %conv28 = zext i16 %33 to i32
  %func30 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %34 = ptrtoint ptr %func30 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %func30, align 4
  %conv31 = zext i16 %35 to i32
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %conv25, i32 noundef %conv28, i32 noundef %conv31, i32 noundef 0, i32 noundef -14) #8
  br label %if.end61

if.then39:                                        ; preds = %do.end11
  %data_size40 = getelementptr inbounds %struct.i40e_nvm_access, ptr %cmd, i32 0, i32 3
  %36 = ptrtoint ptr %data_size40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_size40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool41.not = icmp eq i32 %37, 0
  br i1 %tobool41.not, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %perrno to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -14, ptr %perrno, align 4
  br label %cleanup

if.end43:                                         ; preds = %if.then39
  %nvmupd_state44 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 24
  %39 = ptrtoint ptr %nvmupd_state44 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nvmupd_state44, align 8
  %conv45 = trunc i32 %40 to i8
  %41 = ptrtoint ptr %bytes to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv45, ptr %bytes, align 1
  %42 = ptrtoint ptr %data_size40 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_size40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %cmp48 = icmp ugt i32 %43, 3
  br i1 %cmp48, label %if.then50, label %if.end43.if.end54_crit_edge

if.end43.if.end54_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

if.then50:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx51 = getelementptr i8, ptr %bytes, i32 1
  %44 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayidx51, align 1
  %nvm_wait_opcode52 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 29
  %45 = ptrtoint ptr %nvm_wait_opcode52 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %nvm_wait_opcode52, align 2
  %arrayidx53 = getelementptr i8, ptr %bytes, i32 2
  %47 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %arrayidx53, align 2
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.end43.if.end54_crit_edge
  %48 = ptrtoint ptr %nvmupd_state44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nvmupd_state44, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %49)
  %cmp56 = icmp eq i32 %49, 5
  br i1 %cmp56, label %if.then58, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %nvmupd_state44 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %nvmupd_state44, align 8
  br label %cleanup

if.end61:                                         ; preds = %do.end21, %if.then13.if.end61_crit_edge, %do.end11.if.end61_crit_edge
  %nvmupd_state62 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 24
  %51 = ptrtoint ptr %nvmupd_state62 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nvmupd_state62, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %52)
  %cmp63 = icmp eq i32 %52, 5
  br i1 %cmp63, label %do.body66, label %if.end61.if.end89_crit_edge

if.end61.if.end89_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

do.body66:                                        ; preds = %if.end61
  %53 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %debug_mask, align 8
  %and68 = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.body66.do.end87_crit_edge, label %do.end73

do.body66.do.end87_crit_edge:                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end87

do.end73:                                         ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id76 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %55 = ptrtoint ptr %bus_id76 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %bus_id76, align 2
  %conv77 = zext i16 %56 to i32
  %device79 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %57 = ptrtoint ptr %device79 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %device79, align 2
  %conv80 = zext i16 %58 to i32
  %func82 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %59 = ptrtoint ptr %func82 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %func82, align 4
  %conv83 = zext i16 %60 to i32
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %conv77, i32 noundef %conv80, i32 noundef %conv83) #8
  br label %do.end87

do.end87:                                         ; preds = %do.end73, %do.body66.do.end87_crit_edge
  %61 = ptrtoint ptr %nvmupd_state62 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %nvmupd_state62, align 8
  br label %if.end89

if.end89:                                         ; preds = %do.end87, %if.end61.if.end89_crit_edge
  %arq_mutex = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 13
  tail call void @mutex_lock_nested(ptr noundef %arq_mutex, i32 noundef 0) #5
  %62 = ptrtoint ptr %nvmupd_state62 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nvmupd_state62, align 8
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %63, label %do.body102 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb92
    i32 2, label %sw.bb94
    i32 3, label %if.end89.sw.bb96_crit_edge
    i32 4, label %if.end89.sw.bb96_crit_edge301
  ]

if.end89.sw.bb96_crit_edge301:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb96

if.end89.sw.bb96_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb96

sw.bb:                                            ; preds = %if.end89
  %call.i = tail call fastcc i32 @i40e_nvmupd_validate_command(ptr noundef %hw, ptr noundef %cmd, ptr noundef %perrno) #5
  %65 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %call.i, label %do.body.i [
    i32 4, label %sw.bb.i
    i32 2, label %sw.bb4.i
    i32 5, label %sw.bb18.i
    i32 9, label %sw.bb33.i
    i32 7, label %sw.bb50.i
    i32 11, label %sw.bb66.i
    i32 14, label %sw.bb89.i
    i32 15, label %sw.bb91.i
    i32 16, label %sw.bb93.i
  ]

sw.bb.i:                                          ; preds = %sw.bb
  %call1.i = tail call i32 @i40e_acquire_nvm(ptr noundef %hw, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb.i
  %asq_last_status.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  %66 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %asq_last_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call1.i)
  %cmp.i.i = icmp eq i32 %call1.i, -54
  br i1 %cmp.i.i, label %if.then.i.i40e_aq_rc_to_posix.exit.i_crit_edge, label %if.end.i.i

if.then.i.i40e_aq_rc_to_posix.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_aq_rc_to_posix.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %67)
  %cmp1.i.i = icmp ult i32 %67, 23
  br i1 %cmp1.i.i, label %if.end3.i.i, label %if.end.i.i.i40e_aq_rc_to_posix.exit.i_crit_edge

if.end.i.i.i40e_aq_rc_to_posix.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_aq_rc_to_posix.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i = getelementptr [23 x i32], ptr @__const.i40e_aq_rc_to_posix.aq_to_posix, i32 0, i32 %67
  %68 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i.i, align 4
  br label %i40e_aq_rc_to_posix.exit.i

i40e_aq_rc_to_posix.exit.i:                       ; preds = %if.end3.i.i, %if.end.i.i.i40e_aq_rc_to_posix.exit.i_crit_edge, %if.then.i.i40e_aq_rc_to_posix.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %69, %if.end3.i.i ], [ -11, %if.then.i.i40e_aq_rc_to_posix.exit.i_crit_edge ], [ -34, %if.end.i.i.i40e_aq_rc_to_posix.exit.i_crit_edge ]
  %70 = ptrtoint ptr %perrno to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %retval.0.i.i, ptr %perrno, align 4
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.bb.i
  %call3.i = tail call fastcc i32 @i40e_nvmupd_nvm_read(ptr noundef %hw, ptr noundef %cmd, ptr noundef %bytes, ptr noundef %perrno) #5
  %blank_nvm_mode.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 3
  %71 = ptrtoint ptr %blank_nvm_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %blank_nvm_mode.i.i, align 2, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i.i = icmp eq i8 %72, 0
  br i1 %tobool.not.i.i, label %if.end.i200.i, label %if.else.i.sw.epilog_crit_edge

if.else.i.sw.epilog_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i200.i:                                    ; preds = %if.else.i
  %call.i.i = tail call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #5
  %asq_cmd_timeout.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call.i.i)
  %cmp8.i.i = icmp eq i32 %call.i.i, -54
  br i1 %cmp8.i.i, label %if.end.i200.i.land.rhs.i.i_crit_edge, label %if.end.i200.i.sw.epilog_crit_edge

if.end.i200.i.sw.epilog_crit_edge:                ; preds = %if.end.i200.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i200.i.land.rhs.i.i_crit_edge:             ; preds = %if.end.i200.i
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %if.end.i200.i.land.rhs.i.i_crit_edge
  %total_delay.09.i.i = phi i32 [ %inc.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ 0, %if.end.i200.i.land.rhs.i.i_crit_edge ]
  %73 = ptrtoint ptr %asq_cmd_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %asq_cmd_timeout.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %total_delay.09.i.i, i32 %74)
  %cmp1.i201.i = icmp ult i32 %total_delay.09.i.i, %74
  br i1 %cmp1.i201.i, label %while.body.i.i, label %land.rhs.i.i.sw.epilog_crit_edge

land.rhs.i.i.sw.epilog_crit_edge:                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body.i.i:                                   ; preds = %land.rhs.i.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %call2.i.i = tail call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #5
  %inc.i.i = add nuw i32 %total_delay.09.i.i, 1
  %cmp.i202.i = icmp eq i32 %call2.i.i, -54
  br i1 %cmp.i202.i, label %while.body.i.i.land.rhs.i.i_crit_edge, label %while.body.i.i.sw.epilog_crit_edge

while.body.i.i.sw.epilog_crit_edge:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i.i

sw.bb4.i:                                         ; preds = %sw.bb
  %call5.i = tail call i32 @i40e_acquire_nvm(ptr noundef %hw, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.else11.i, label %if.then7.i

if.then7.i:                                       ; preds = %sw.bb4.i
  %asq_last_status9.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  %75 = ptrtoint ptr %asq_last_status9.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %asq_last_status9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call5.i)
  %cmp.i203.i = icmp eq i32 %call5.i, -54
  br i1 %cmp.i203.i, label %if.then7.i.i40e_aq_rc_to_posix.exit209.i_crit_edge, label %if.end.i205.i

if.then7.i.i40e_aq_rc_to_posix.exit209.i_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_aq_rc_to_posix.exit209.i

if.end.i205.i:                                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %76)
  %cmp1.i204.i = icmp ult i32 %76, 23
  br i1 %cmp1.i204.i, label %if.end3.i207.i, label %if.end.i205.i.i40e_aq_rc_to_posix.exit209.i_crit_edge

if.end.i205.i.i40e_aq_rc_to_posix.exit209.i_crit_edge: ; preds = %if.end.i205.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_aq_rc_to_posix.exit209.i

if.end3.i207.i:                                   ; preds = %if.end.i205.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i206.i = getelementptr [23 x i32], ptr @__const.i40e_aq_rc_to_posix.aq_to_posix, i32 0, i32 %76
  %77 = ptrtoint ptr %arrayidx.i206.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i206.i, align 4
  br label %i40e_aq_rc_to_posix.exit209.i

i40e_aq_rc_to_posix.exit209.i:                    ; preds = %if.end3.i207.i, %if.end.i205.i.i40e_aq_rc_to_posix.exit209.i_crit_edge, %if.then7.i.i40e_aq_rc_to_posix.exit209.i_crit_edge
  %retval.0.i208.i = phi i32 [ %78, %if.end3.i207.i ], [ -11, %if.then7.i.i40e_aq_rc_to_posix.exit209.i_crit_edge ], [ -34, %if.end.i205.i.i40e_aq_rc_to_posix.exit209.i_crit_edge ]
  %79 = ptrtoint ptr %perrno to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %retval.0.i208.i, ptr %perrno, align 4
  br label %sw.epilog

if.else11.i:                                      ; preds = %sw.bb4.i
  %call12.i = tail call fastcc i32 @i40e_nvmupd_nvm_read(ptr noundef %hw, ptr noundef %cmd, ptr noundef %bytes, ptr noundef %perrno) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.else15.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.else11.i
  %blank_nvm_mode.i210.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 3
  %80 = ptrtoint ptr %blank_nvm_mode.i210.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %blank_nvm_mode.i210.i, align 2, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i211.i = icmp eq i8 %81, 0
  br i1 %tobool.not.i211.i, label %if.end.i215.i, label %if.then14.i.sw.epilog_crit_edge

if.then14.i.sw.epilog_crit_edge:                  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i215.i:                                    ; preds = %if.then14.i
  %call.i212.i = tail call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #5
  %asq_cmd_timeout.i213.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call.i212.i)
  %cmp8.i214.i = icmp eq i32 %call.i212.i, -54
  br i1 %cmp8.i214.i, label %if.end.i215.i.land.rhs.i218.i_crit_edge, label %if.end.i215.i.sw.epilog_crit_edge

if.end.i215.i.sw.epilog_crit_edge:                ; preds = %if.end.i215.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i215.i.land.rhs.i218.i_crit_edge:          ; preds = %if.end.i215.i
  br label %land.rhs.i218.i

land.rhs.i218.i:                                  ; preds = %while.body.i222.i.land.rhs.i218.i_crit_edge, %if.end.i215.i.land.rhs.i218.i_crit_edge
  %total_delay.09.i216.i = phi i32 [ %inc.i220.i, %while.body.i222.i.land.rhs.i218.i_crit_edge ], [ 0, %if.end.i215.i.land.rhs.i218.i_crit_edge ]
  %82 = ptrtoint ptr %asq_cmd_timeout.i213.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %asq_cmd_timeout.i213.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %total_delay.09.i216.i, i32 %83)
  %cmp1.i217.i = icmp ult i32 %total_delay.09.i216.i, %83
  br i1 %cmp1.i217.i, label %while.body.i222.i, label %land.rhs.i218.i.sw.epilog_crit_edge

land.rhs.i218.i.sw.epilog_crit_edge:              ; preds = %land.rhs.i218.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body.i222.i:                                ; preds = %land.rhs.i218.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %call2.i219.i = tail call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #5
  %inc.i220.i = add nuw i32 %total_delay.09.i216.i, 1
  %cmp.i221.i = icmp eq i32 %call2.i219.i, -54
  br i1 %cmp.i221.i, label %while.body.i222.i.land.rhs.i218.i_crit_edge, label %while.body.i222.i.sw.epilog_crit_edge

while.body.i222.i.sw.epilog_crit_edge:            ; preds = %while.body.i222.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body.i222.i.land.rhs.i218.i_crit_edge:      ; preds = %while.body.i222.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i218.i

if.else15.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %nvmupd_state62 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %nvmupd_state62, align 8
  br label %sw.epilog

sw.bb18.i:                                        ; preds = %sw.bb
  %call19.i = tail call i32 @i40e_acquire_nvm(ptr noundef %hw, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.else25.i, label %if.then21.i

if.then21.i:                                      ; preds = %sw.bb18.i
  %asq_last_status23.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  %85 = ptrtoint ptr %asq_last_status23.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %asq_last_status23.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call19.i)
  %cmp.i224.i = icmp eq i32 %call19.i, -54
  br i1 %cmp.i224.i, label %if.then21.i.i40e_aq_rc_to_posix.exit230.i_crit_edge, label %if.end.i226.i

if.then21.i.i40e_aq_rc_to_posix.exit230.i_crit_edge: ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_aq_rc_to_posix.exit230.i

if.end.i226.i:                                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %86)
  %cmp1.i225.i = icmp ult i32 %86, 23
  br i1 %cmp1.i225.i, label %if.end3.i228.i, label %if.end.i226.i.i40e_aq_rc_to_posix.exit230.i_crit_edge

if.end.i226.i.i40e_aq_rc_to_posix.exit230.i_crit_edge: ; preds = %if.end.i226.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_aq_rc_to_posix.exit230.i

if.end3.i228.i:                                   ; preds = %if.end.i226.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i227.i = getelementptr [23 x i32], ptr @__const.i40e_aq_rc_to_posix.aq_to_posix, i32 0, i32 %86
  %87 = ptrtoint ptr %arrayidx.i227.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.i227.i, align 4
  br label %i40e_aq_rc_to_posix.exit230.i

i40e_aq_rc_to_posix.exit230.i:                    ; preds = %if.end3.i228.i, %if.end.i226.i.i40e_aq_rc_to_posix.exit230.i_crit_edge, %if.then21.i.i40e_aq_rc_to_posix.exit230.i_crit_edge
  %retval.0.i229.i = phi i32 [ %88, %if.end3.i228.i ], [ -11, %if.then21.i.i40e_aq_rc_to_posix.exit230.i_crit_edge ], [ -34, %if.end.i226.i.i40e_aq_rc_to_posix.exit230.i_crit_edge ]
  %89 = ptrtoint ptr %perrno to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %retval.0.i229.i, ptr %perrno, align 4
  br label %sw.epilog

if.else25.i:                                      ; preds = %sw.bb18.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd_details.i.i) #5
  %config.i.i = getelementptr inbounds %struct.i40e_nvm_access, ptr %cmd, i32 0, i32 1
  %90 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %config.i.i, align 4
  %conv.i68.i.i = trunc i32 %91 to i8
  %92 = and i32 %91, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.i.i = icmp ne i32 %92, 0
  %93 = call ptr @memset(ptr %cmd_details.i.i, i32 0, i32 32)
  %nvm_wb_desc.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 25
  %wb_desc.i.i = getelementptr inbounds %struct.i40e_asq_cmd_details, ptr %cmd_details.i.i, i32 0, i32 6
  %94 = ptrtoint ptr %wb_desc.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %nvm_wb_desc.i.i, ptr %wb_desc.i.i, align 8
  %offset.i.i = getelementptr inbounds %struct.i40e_nvm_access, ptr %cmd, i32 0, i32 2
  %95 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %offset.i.i, align 4
  %data_size.i.i = getelementptr inbounds %struct.i40e_nvm_access, ptr %cmd, i32 0, i32 3
  %97 = ptrtoint ptr %data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %data_size.i.i, align 4
  %conv3.i.i = trunc i32 %98 to i16
  %call5.i.i = call i32 @i40e_aq_erase_nvm(ptr noundef %hw, i8 noundef zeroext %conv.i68.i.i, i32 noundef %96, i16 noundef zeroext %conv3.i.i, i1 noundef zeroext %tobool.i.i, ptr noundef nonnull %cmd_details.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.else29.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.else25.i
  %99 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %debug_mask, align 8
  %and7.i.i = and i32 %100, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %do.body.i.i.do.body22.i.i_crit_edge, label %do.end.i.i

do.body.i.i.do.body22.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body22.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %101 = ptrtoint ptr %bus_id.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %bus_id.i.i, align 2
  %conv11.i.i = zext i16 %102 to i32
  %device.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %103 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %device.i.i, align 2
  %conv13.i.i = zext i16 %104 to i32
  %func.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %105 = ptrtoint ptr %func.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %func.i.i, align 4
  %conv15.i.i = zext i16 %106 to i32
  %conv16.i.i = and i32 %91, 255
  %107 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %offset.i.i, align 4
  %109 = ptrtoint ptr %data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %data_size.i.i, align 4
  %call19.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %conv11.i.i, i32 noundef %conv13.i.i, i32 noundef %conv15.i.i, i32 noundef %conv16.i.i, i32 noundef %108, i32 noundef %110) #8
  br label %do.body22.i.i

do.body22.i.i:                                    ; preds = %do.end.i.i, %do.body.i.i.do.body22.i.i_crit_edge
  %111 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %debug_mask, align 8
  %and24.i.i = and i32 %112, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %do.body22.i.i.do.end43.i.i_crit_edge, label %do.end29.i.i

do.body22.i.i.do.end43.i.i_crit_edge:             ; preds = %do.body22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end43.i.i

do.end29.i.i:                                     ; preds = %do.body22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id32.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %113 = ptrtoint ptr %bus_id32.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %bus_id32.i.i, align 2
  %conv33.i.i = zext i16 %114 to i32
  %device35.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %115 = ptrtoint ptr %device35.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %device35.i.i, align 2
  %conv36.i.i = zext i16 %116 to i32
  %func38.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %117 = ptrtoint ptr %func38.i.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %func38.i.i, align 4
  %conv39.i.i = zext i16 %118 to i32
  %asq_last_status.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  %119 = ptrtoint ptr %asq_last_status.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %asq_last_status.i.i, align 8
  %call40.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %conv33.i.i, i32 noundef %conv36.i.i, i32 noundef %conv39.i.i, i32 noundef %call5.i.i, i32 noundef %120) #8
  br label %do.end43.i.i

do.end43.i.i:                                     ; preds = %do.end29.i.i, %do.body22.i.i.do.end43.i.i_crit_edge
  %asq_last_status45.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  %121 = ptrtoint ptr %asq_last_status45.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %asq_last_status45.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call5.i.i)
  %cmp.i.i.i = icmp eq i32 %call5.i.i, -54
  br i1 %cmp.i.i.i, label %do.end43.i.i.if.then28.i_crit_edge, label %if.end.i.i.i

do.end43.i.i.if.then28.i_crit_edge:               ; preds = %do.end43.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then28.i

if.end.i.i.i:                                     ; preds = %do.end43.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %122)
  %cmp1.i.i.i = icmp ult i32 %122, 23
  br i1 %cmp1.i.i.i, label %if.end3.i.i.i, label %if.end.i.i.i.if.then28.i_crit_edge

if.end.i.i.i.if.then28.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then28.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i.i = getelementptr [23 x i32], ptr @__const.i40e_aq_rc_to_posix.aq_to_posix, i32 0, i32 %122
  %123 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx.i.i.i, align 4
  br label %if.then28.i

if.then28.i:                                      ; preds = %if.end3.i.i.i, %if.end.i.i.i.if.then28.i_crit_edge, %do.end43.i.i.if.then28.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %124, %if.end3.i.i.i ], [ -11, %do.end43.i.i.if.then28.i_crit_edge ], [ -34, %if.end.i.i.i.if.then28.i_crit_edge ]
  %125 = ptrtoint ptr %perrno to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %retval.0.i.i.i, ptr %perrno, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd_details.i.i) #5
  %blank_nvm_mode.i231.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 3
  %126 = ptrtoint ptr %blank_nvm_mode.i231.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %blank_nvm_mode.i231.i, align 2, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool.not.i232.i = icmp eq i8 %127, 0
  br i1 %tobool.not.i232.i, label %if.end.i236.i, label %if.then28.i.sw.epilog_crit_edge

if.then28.i.sw.epilog_crit_edge:                  ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i236.i:                                    ; preds = %if.then28.i
  %call.i233.i = call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #5
  %asq_cmd_timeout.i234.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call.i233.i)
  %cmp8.i235.i = icmp eq i32 %call.i233.i, -54
  br i1 %cmp8.i235.i, label %if.end.i236.i.land.rhs.i239.i_crit_edge, label %if.end.i236.i.sw.epilog_crit_edge

if.end.i236.i.sw.epilog_crit_edge:                ; preds = %if.end.i236.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i236.i.land.rhs.i239.i_crit_edge:          ; preds = %if.end.i236.i
  br label %land.rhs.i239.i

land.rhs.i239.i:                                  ; preds = %while.body.i243.i.land.rhs.i239.i_crit_edge, %if.end.i236.i.land.rhs.i239.i_crit_edge
  %total_delay.09.i237.i = phi i32 [ %inc.i241.i, %while.body.i243.i.land.rhs.i239.i_crit_edge ], [ 0, %if.end.i236.i.land.rhs.i239.i_crit_edge ]
  %128 = ptrtoint ptr %asq_cmd_timeout.i234.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %asq_cmd_timeout.i234.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %total_delay.09.i237.i, i32 %129)
  %cmp1.i238.i = icmp ult i32 %total_delay.09.i237.i, %129
  br i1 %cmp1.i238.i, label %while.body.i243.i, label %land.rhs.i239.i.sw.epilog_crit_edge

land.rhs.i239.i.sw.epilog_crit_edge:              ; preds = %land.rhs.i239.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body.i243.i:                                ; preds = %land.rhs.i239.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %call2.i240.i = call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #5
  %inc.i241.i = add nuw i32 %total_delay.09.i237.i, 1
  %cmp.i242.i = icmp eq i32 %call2.i240.i, -54
  br i1 %cmp.i242.i, label %while.body.i243.i.land.rhs.i239.i_crit_edge, label %while.body.i243.i.sw.epilog_crit_edge

while.body.i243.i.sw.epilog_crit_edge:            ; preds = %while.body.i243.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body.i243.i.land.rhs.i239.i_crit_edge:      ; preds = %while.body.i243.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i239.i

if.else29.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd_details.i.i) #5
  %nvm_release_on_done.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 28
  %130 = ptrtoint ptr %nvm_release_on_done.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 1, ptr %nvm_release_on_done.i, align 4
  %nvm_wait_opcode.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 29
  %131 = ptrtoint ptr %nvm_wait_opcode.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 1794, ptr %nvm_wait_opcode.i, align 2
  %132 = ptrtoint ptr %nvmupd_state62 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 3, ptr %nvmupd_state62, align 8
  br label %sw.epilog

sw.bb33.i:                                        ; preds = %sw.bb
  %call34.i = tail call i32 @i40e_acquire_nvm(ptr noundef %hw, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.else40.i, label %if.then36.i

if.then36.i:                                      ; preds = %sw.bb33.i
  %asq_last_status38.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  %133 = ptrtoint ptr %asq_last_status38.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %asq_last_status38.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call34.i)
  %cmp.i245.i = icmp eq i32 %call34.i, -54
  br i1 %cmp.i245.i, label %if.then36.i.i40e_aq_rc_to_posix.exit251.i_crit_edge, label %if.end.i247.i

if.then36.i.i40e_aq_rc_to_posix.exit251.i_crit_edge: ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_aq_rc_to_posix.exit251.i

if.end.i247.i:                                    ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %134)
  %cmp1.i246.i = icmp ult i32 %134, 23
  br i1 %cmp1.i246.i, label %if.end3.i249.i, label %if.end.i247.i.i40e_aq_rc_to_posix.exit251.i_crit_edge

if.end.i247.i.i40e_aq_rc_to_posix.exit251.i_crit_edge: ; preds = %if.end.i247.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_aq_rc_to_posix.exit251.i

if.end3.i249.i:                                   ; preds = %if.end.i247.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i248.i = getelementptr [23 x i32], ptr @__const.i40e_aq_rc_to_posix.aq_to_posix, i32 0, i32 %134
  %135 = ptrtoint ptr %arrayidx.i248.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx.i248.i, align 4
  br label %i40e_aq_rc_to_posix.exit251.i

i40e_aq_rc_to_posix.exit251.i:                    ; preds = %if.end3.i249.i, %if.end.i247.i.i40e_aq_rc_to_posix.exit251.i_crit_edge, %if.then36.i.i40e_aq_rc_to_posix.exit251.i_crit_edge
  %retval.0.i250.i = phi i32 [ %136, %if.end3.i249.i ], [ -11, %if.then36.i.i40e_aq_rc_to_posix.exit251.i_crit_edge ], [ -34, %if.end.i247.i.i40e_aq_rc_to_posix.exit251.i_crit_edge ]
  %137 = ptrtoint ptr %perrno to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %retval.0.i250.i, ptr %perrno, align 4
  br label %sw.epilog

if.else40.i:                                      ; preds = %sw.bb33.i
  %call41.i = tail call fastcc i32 @i40e_nvmupd_nvm_write(ptr noundef %hw, ptr noundef %cmd, ptr noundef %bytes, ptr noundef %perrno) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.else44.i, label %if.then43.i

if.then43.i:                                      ; preds = %if.else40.i
  %blank_nvm_mode.i252.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 3
  %138 = ptrtoint ptr %blank_nvm_mode.i252.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %blank_nvm_mode.i252.i, align 2, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool.not.i253.i = icmp eq i8 %139, 0
  br i1 %tobool.not.i253.i, label %if.end.i257.i, label %if.then43.i.sw.epilog_crit_edge

if.then43.i.sw.epilog_crit_edge:                  ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i257.i:                                    ; preds = %if.then43.i
  %call.i254.i = tail call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #5
  %asq_cmd_timeout.i255.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call.i254.i)
  %cmp8.i256.i = icmp eq i32 %call.i254.i, -54
  br i1 %cmp8.i256.i, label %if.end.i257.i.land.rhs.i260.i_crit_edge, label %if.end.i257.i.sw.epilog_crit_edge

if.end.i257.i.sw.epilog_crit_edge:                ; preds = %if.end.i257.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i257.i.land.rhs.i260.i_crit_edge:          ; preds = %if.end.i257.i
  br label %land.rhs.i260.i

land.rhs.i260.i:                                  ; preds = %while.body.i264.i.land.rhs.i260.i_crit_edge, %if.end.i257.i.land.rhs.i260.i_crit_edge
  %total_delay.09.i258.i = phi i32 [ %inc.i262.i, %while.body.i264.i.land.rhs.i260.i_crit_edge ], [ 0, %if.end.i257.i.land.rhs.i260.i_crit_edge ]
  %140 = ptrtoint ptr %asq_cmd_timeout.i255.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %asq_cmd_timeout.i255.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %total_delay.09.i258.i, i32 %141)
  %cmp1.i259.i = icmp ult i32 %total_delay.09.i258.i, %141
  br i1 %cmp1.i259.i, label %while.body.i264.i, label %land.rhs.i260.i.sw.epilog_crit_edge

land.rhs.i260.i.sw.epilog_crit_edge:              ; preds = %land.rhs.i260.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body.i264.i:                                ; preds = %land.rhs.i260.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %call2.i261.i = tail call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #5
  %inc.i262.i = add nuw i32 %total_delay.09.i258.i, 1
  %cmp.i263.i = icmp eq i32 %call2.i261.i, -54
  br i1 %cmp.i263.i, label %while.body.i264.i.land.rhs.i260.i_crit_edge, label %while.body.i264.i.sw.epilog_crit_edge

while.body.i264.i.sw.epilog_crit_edge:            ; preds = %while.body.i264.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body.i264.i.land.rhs.i260.i_crit_edge:      ; preds = %while.body.i264.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i260.i

if.else44.i:                                      ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #7
  %nvm_release_on_done45.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 28
  %142 = ptrtoint ptr %nvm_release_on_done45.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 1, ptr %nvm_release_on_done45.i, align 4
  %nvm_wait_opcode46.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 29
  %143 = ptrtoint ptr %nvm_wait_opcode46.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 1795, ptr %nvm_wait_opcode46.i, align 2
  %144 = ptrtoint ptr %nvmupd_state62 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 3, ptr %nvmupd_state62, align 8
  br label %sw.epilog

sw.bb50.i:                                        ; preds = %sw.bb
  %call51.i = tail call i32 @i40e_acquire_nvm(ptr noundef %hw, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.else57.i, label %if.then53.i

if.then53.i:                                      ; preds = %sw.bb50.i
  %asq_last_status55.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  %145 = ptrtoint ptr %asq_last_status55.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %asq_last_status55.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call51.i)
  %cmp.i266.i = icmp eq i32 %call51.i, -54
  br i1 %cmp.i266.i, label %if.then53.i.i40e_aq_rc_to_posix.exit272.i_crit_edge, label %if.end.i268.i

if.then53.i.i40e_aq_rc_to_posix.exit272.i_crit_edge: ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_aq_rc_to_posix.exit272.i

if.end.i268.i:                                    ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %146)
  %cmp1.i267.i = icmp ult i32 %146, 23
  br i1 %cmp1.i267.i, label %if.end3.i270.i, label %if.end.i268.i.i40e_aq_rc_to_posix.exit272.i_crit_edge

if.end.i268.i.i40e_aq_rc_to_posix.exit272.i_crit_edge: ; preds = %if.end.i268.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_aq_rc_to_posix.exit272.i

if.end3.i270.i:                                   ; preds = %if.end.i268.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i269.i = getelementptr [23 x i32], ptr @__const.i40e_aq_rc_to_posix.aq_to_posix, i32 0, i32 %146
  %147 = ptrtoint ptr %arrayidx.i269.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx.i269.i, align 4
  br label %i40e_aq_rc_to_posix.exit272.i

i40e_aq_rc_to_posix.exit272.i:                    ; preds = %if.end3.i270.i, %if.end.i268.i.i40e_aq_rc_to_posix.exit272.i_crit_edge, %if.then53.i.i40e_aq_rc_to_posix.exit272.i_crit_edge
  %retval.0.i271.i = phi i32 [ %148, %if.end3.i270.i ], [ -11, %if.then53.i.i40e_aq_rc_to_posix.exit272.i_crit_edge ], [ -34, %if.end.i268.i.i40e_aq_rc_to_posix.exit272.i_crit_edge ]
  %149 = ptrtoint ptr %perrno to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %retval.0.i271.i, ptr %perrno, align 4
  br label %sw.epilog

if.else57.i:                                      ; preds = %sw.bb50.i
  %call58.i = tail call fastcc i32 @i40e_nvmupd_nvm_write(ptr noundef %hw, ptr noundef %cmd, ptr noundef %bytes, ptr noundef %perrno) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.else61.i, label %if.then60.i

if.then60.i:                                      ; preds = %if.else57.i
  %blank_nvm_mode.i273.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 3
  %150 = ptrtoint ptr %blank_nvm_mode.i273.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %blank_nvm_mode.i273.i, align 2, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool.not.i274.i = icmp eq i8 %151, 0
  br i1 %tobool.not.i274.i, label %if.end.i278.i, label %if.then60.i.sw.epilog_crit_edge

if.then60.i.sw.epilog_crit_edge:                  ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i278.i:                                    ; preds = %if.then60.i
  %call.i275.i = tail call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #5
  %asq_cmd_timeout.i276.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call.i275.i)
  %cmp8.i277.i = icmp eq i32 %call.i275.i, -54
  br i1 %cmp8.i277.i, label %if.end.i278.i.land.rhs.i281.i_crit_edge, label %if.end.i278.i.sw.epilog_crit_edge

if.end.i278.i.sw.epilog_crit_edge:                ; preds = %if.end.i278.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i278.i.land.rhs.i281.i_crit_edge:          ; preds = %if.end.i278.i
  br label %land.rhs.i281.i

land.rhs.i281.i:                                  ; preds = %while.body.i285.i.land.rhs.i281.i_crit_edge, %if.end.i278.i.land.rhs.i281.i_crit_edge
  %total_delay.09.i279.i = phi i32 [ %inc.i283.i, %while.body.i285.i.land.rhs.i281.i_crit_edge ], [ 0, %if.end.i278.i.land.rhs.i281.i_crit_edge ]
  %152 = ptrtoint ptr %asq_cmd_timeout.i276.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %asq_cmd_timeout.i276.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %total_delay.09.i279.i, i32 %153)
  %cmp1.i280.i = icmp ult i32 %total_delay.09.i279.i, %153
  br i1 %cmp1.i280.i, label %while.body.i285.i, label %land.rhs.i281.i.sw.epilog_crit_edge

land.rhs.i281.i.sw.epilog_crit_edge:              ; preds = %land.rhs.i281.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body.i285.i:                                ; preds = %land.rhs.i281.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %call2.i282.i = tail call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #5
  %inc.i283.i = add nuw i32 %total_delay.09.i279.i, 1
  %cmp.i284.i = icmp eq i32 %call2.i282.i, -54
  br i1 %cmp.i284.i, label %while.body.i285.i.land.rhs.i281.i_crit_edge, label %while.body.i285.i.sw.epilog_crit_edge

while.body.i285.i.sw.epilog_crit_edge:            ; preds = %while.body.i285.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body.i285.i.land.rhs.i281.i_crit_edge:      ; preds = %while.body.i285.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i281.i

if.else61.i:                                      ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #7
  %nvm_wait_opcode62.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 29
  %154 = ptrtoint ptr %nvm_wait_opcode62.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 1795, ptr %nvm_wait_opcode62.i, align 2
  %155 = ptrtoint ptr %nvmupd_state62 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 4, ptr %nvmupd_state62, align 8
  br label %sw.epilog

sw.bb66.i:                                        ; preds = %sw.bb
  %call67.i = tail call i32 @i40e_acquire_nvm(ptr noundef %hw, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %if.else73.i, label %if.then69.i

if.then69.i:                                      ; preds = %sw.bb66.i
  %asq_last_status71.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  %156 = ptrtoint ptr %asq_last_status71.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %asq_last_status71.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call67.i)
  %cmp.i287.i = icmp eq i32 %call67.i, -54
  br i1 %cmp.i287.i, label %if.then69.i.i40e_aq_rc_to_posix.exit293.i_crit_edge, label %if.end.i289.i

if.then69.i.i40e_aq_rc_to_posix.exit293.i_crit_edge: ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_aq_rc_to_posix.exit293.i

if.end.i289.i:                                    ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %157)
  %cmp1.i288.i = icmp ult i32 %157, 23
  br i1 %cmp1.i288.i, label %if.end3.i291.i, label %if.end.i289.i.i40e_aq_rc_to_posix.exit293.i_crit_edge

if.end.i289.i.i40e_aq_rc_to_posix.exit293.i_crit_edge: ; preds = %if.end.i289.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_aq_rc_to_posix.exit293.i

if.end3.i291.i:                                   ; preds = %if.end.i289.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i290.i = getelementptr [23 x i32], ptr @__const.i40e_aq_rc_to_posix.aq_to_posix, i32 0, i32 %157
  %158 = ptrtoint ptr %arrayidx.i290.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx.i290.i, align 4
  br label %i40e_aq_rc_to_posix.exit293.i

i40e_aq_rc_to_posix.exit293.i:                    ; preds = %if.end3.i291.i, %if.end.i289.i.i40e_aq_rc_to_posix.exit293.i_crit_edge, %if.then69.i.i40e_aq_rc_to_posix.exit293.i_crit_edge
  %retval.0.i292.i = phi i32 [ %159, %if.end3.i291.i ], [ -11, %if.then69.i.i40e_aq_rc_to_posix.exit293.i_crit_edge ], [ -34, %if.end.i289.i.i40e_aq_rc_to_posix.exit293.i_crit_edge ]
  %160 = ptrtoint ptr %perrno to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %retval.0.i292.i, ptr %perrno, align 4
  br label %sw.epilog

if.else73.i:                                      ; preds = %sw.bb66.i
  %call74.i = tail call i32 @i40e_update_nvm_checksum(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %if.else83.i, label %if.then76.i

if.then76.i:                                      ; preds = %if.else73.i
  %asq_last_status78.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  %161 = ptrtoint ptr %asq_last_status78.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %asq_last_status78.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool79.not.i = icmp eq i32 %162, 0
  br i1 %tobool79.not.i, label %if.then76.i.cond.end.i_crit_edge, label %cond.true.i

if.then76.i.cond.end.i_crit_edge:                 ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call74.i)
  %cmp.i294.i = icmp eq i32 %call74.i, -54
  br i1 %cmp.i294.i, label %cond.true.i.cond.end.i_crit_edge, label %if.end.i296.i

cond.true.i.cond.end.i_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

if.end.i296.i:                                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %162)
  %cmp1.i295.i = icmp ult i32 %162, 23
  br i1 %cmp1.i295.i, label %if.end3.i298.i, label %if.end.i296.i.cond.end.i_crit_edge

if.end.i296.i.cond.end.i_crit_edge:               ; preds = %if.end.i296.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

if.end3.i298.i:                                   ; preds = %if.end.i296.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i297.i = getelementptr [23 x i32], ptr @__const.i40e_aq_rc_to_posix.aq_to_posix, i32 0, i32 %162
  %163 = ptrtoint ptr %arrayidx.i297.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx.i297.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.end3.i298.i, %if.end.i296.i.cond.end.i_crit_edge, %cond.true.i.cond.end.i_crit_edge, %if.then76.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ -5, %if.then76.i.cond.end.i_crit_edge ], [ %164, %if.end3.i298.i ], [ -11, %cond.true.i.cond.end.i_crit_edge ], [ -34, %if.end.i296.i.cond.end.i_crit_edge ]
  %165 = ptrtoint ptr %perrno to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %cond.i, ptr %perrno, align 4
  %blank_nvm_mode.i301.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 3
  %166 = ptrtoint ptr %blank_nvm_mode.i301.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %blank_nvm_mode.i301.i, align 2, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool.not.i302.i = icmp eq i8 %167, 0
  br i1 %tobool.not.i302.i, label %if.end.i306.i, label %cond.end.i.sw.epilog_crit_edge

cond.end.i.sw.epilog_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i306.i:                                    ; preds = %cond.end.i
  %call.i303.i = tail call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #5
  %asq_cmd_timeout.i304.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call.i303.i)
  %cmp8.i305.i = icmp eq i32 %call.i303.i, -54
  br i1 %cmp8.i305.i, label %if.end.i306.i.land.rhs.i309.i_crit_edge, label %if.end.i306.i.sw.epilog_crit_edge

if.end.i306.i.sw.epilog_crit_edge:                ; preds = %if.end.i306.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i306.i.land.rhs.i309.i_crit_edge:          ; preds = %if.end.i306.i
  br label %land.rhs.i309.i

land.rhs.i309.i:                                  ; preds = %while.body.i313.i.land.rhs.i309.i_crit_edge, %if.end.i306.i.land.rhs.i309.i_crit_edge
  %total_delay.09.i307.i = phi i32 [ %inc.i311.i, %while.body.i313.i.land.rhs.i309.i_crit_edge ], [ 0, %if.end.i306.i.land.rhs.i309.i_crit_edge ]
  %168 = ptrtoint ptr %asq_cmd_timeout.i304.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %asq_cmd_timeout.i304.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %total_delay.09.i307.i, i32 %169)
  %cmp1.i308.i = icmp ult i32 %total_delay.09.i307.i, %169
  br i1 %cmp1.i308.i, label %while.body.i313.i, label %land.rhs.i309.i.sw.epilog_crit_edge

land.rhs.i309.i.sw.epilog_crit_edge:              ; preds = %land.rhs.i309.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body.i313.i:                                ; preds = %land.rhs.i309.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %call2.i310.i = tail call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #5
  %inc.i311.i = add nuw i32 %total_delay.09.i307.i, 1
  %cmp.i312.i = icmp eq i32 %call2.i310.i, -54
  br i1 %cmp.i312.i, label %while.body.i313.i.land.rhs.i309.i_crit_edge, label %while.body.i313.i.sw.epilog_crit_edge

while.body.i313.i.sw.epilog_crit_edge:            ; preds = %while.body.i313.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body.i313.i.land.rhs.i309.i_crit_edge:      ; preds = %while.body.i313.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i309.i

if.else83.i:                                      ; preds = %if.else73.i
  call void @__sanitizer_cov_trace_pc() #7
  %nvm_release_on_done84.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 28
  %170 = ptrtoint ptr %nvm_release_on_done84.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 1, ptr %nvm_release_on_done84.i, align 4
  %nvm_wait_opcode85.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 29
  %171 = ptrtoint ptr %nvm_wait_opcode85.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 1795, ptr %nvm_wait_opcode85.i, align 2
  %172 = ptrtoint ptr %nvmupd_state62 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 3, ptr %nvmupd_state62, align 8
  br label %sw.epilog

sw.bb89.i:                                        ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd_details.i315.i) #5
  %173 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %debug_mask, align 8
  %and.i.i = and i32 %174, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i317.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i317.i, label %sw.bb89.i.do.end7.i.i_crit_edge, label %do.end.i323.i

sw.bb89.i.do.end7.i.i_crit_edge:                  ; preds = %sw.bb89.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i.i

do.end.i323.i:                                    ; preds = %sw.bb89.i
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id.i318.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %175 = ptrtoint ptr %bus_id.i318.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %bus_id.i318.i, align 2
  %conv.i.i = zext i16 %176 to i32
  %device.i319.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %177 = ptrtoint ptr %device.i319.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %device.i319.i, align 2
  %conv3.i320.i = zext i16 %178 to i32
  %func.i321.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %179 = ptrtoint ptr %func.i321.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %func.i321.i, align 4
  %conv5.i.i = zext i16 %180 to i32
  %call.i322.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %conv.i.i, i32 noundef %conv3.i320.i, i32 noundef %conv5.i.i, ptr noundef nonnull @.str.89) #8
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %do.end.i323.i, %sw.bb89.i.do.end7.i.i_crit_edge
  %offset.i324.i = getelementptr inbounds %struct.i40e_nvm_access, ptr %cmd, i32 0, i32 2
  %181 = ptrtoint ptr %offset.i324.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %offset.i324.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %182)
  %cmp.i325.i = icmp eq i32 %182, 65535
  br i1 %cmp.i325.i, label %do.end7.i.i.i40e_nvmupd_exec_aq.exit.i_crit_edge, label %if.end10.i.i

do.end7.i.i.i40e_nvmupd_exec_aq.exit.i_crit_edge: ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_nvmupd_exec_aq.exit.i

if.end10.i.i:                                     ; preds = %do.end7.i.i
  %183 = call ptr @memset(ptr %cmd_details.i315.i, i32 0, i32 32)
  %nvm_wb_desc.i326.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 25
  %wb_desc.i327.i = getelementptr inbounds %struct.i40e_asq_cmd_details, ptr %cmd_details.i315.i, i32 0, i32 6
  %184 = ptrtoint ptr %wb_desc.i327.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %nvm_wb_desc.i326.i, ptr %wb_desc.i327.i, align 8
  %185 = call ptr @memset(ptr %nvm_wb_desc.i326.i, i32 0, i32 32)
  %data_size.i328.i = getelementptr inbounds %struct.i40e_nvm_access, ptr %cmd, i32 0, i32 3
  %186 = ptrtoint ptr %data_size.i328.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %data_size.i328.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %187)
  %cmp12.i.i = icmp ult i32 %187, 32
  br i1 %cmp12.i.i, label %do.body15.i.i, label %if.end38.i.i

do.body15.i.i:                                    ; preds = %if.end10.i.i
  %188 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %debug_mask, align 8
  %and17.i.i = and i32 %189, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %tobool18.not.i.i, label %do.body15.i.i.do.end37.i.i_crit_edge, label %do.end22.i.i

do.body15.i.i.do.end37.i.i_crit_edge:             ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end37.i.i

do.end22.i.i:                                     ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id25.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %190 = ptrtoint ptr %bus_id25.i.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %bus_id25.i.i, align 2
  %conv26.i.i = zext i16 %191 to i32
  %device28.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %192 = ptrtoint ptr %device28.i.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %device28.i.i, align 2
  %conv29.i.i = zext i16 %193 to i32
  %func31.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %194 = ptrtoint ptr %func31.i.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %func31.i.i, align 4
  %conv32.i.i = zext i16 %195 to i32
  %call34.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i32 noundef %conv26.i.i, i32 noundef %conv29.i.i, i32 noundef %conv32.i.i, i32 noundef %187, i32 noundef 32) #8
  br label %do.end37.i.i

do.end37.i.i:                                     ; preds = %do.end22.i.i, %do.body15.i.i.do.end37.i.i_crit_edge
  %196 = ptrtoint ptr %perrno to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 -22, ptr %perrno, align 4
  br label %i40e_nvmupd_exec_aq.exit.i

if.end38.i.i:                                     ; preds = %if.end10.i.i
  %sub.i.i = add i32 %187, -32
  %datalen.i.i = getelementptr inbounds %struct.i40e_aq_desc, ptr %bytes, i32 0, i32 2
  %197 = ptrtoint ptr %datalen.i.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %datalen.i.i, align 4
  %199 = tail call i16 @llvm.bswap.i16(i16 %198) #5
  %conv40.i.i = zext i16 %199 to i32
  %200 = tail call i32 @llvm.umax.i32(i32 %sub.i.i, i32 %conv40.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool44.not.i.i = icmp eq i32 %200, 0
  br i1 %tobool44.not.i.i, label %if.end38.i.i.if.end84.i.i_crit_edge, label %if.then45.i.i

if.end38.i.i.if.end84.i.i_crit_edge:              ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84.i.i

if.then45.i.i:                                    ; preds = %if.end38.i.i
  %nvm_buff.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 27
  %201 = ptrtoint ptr %nvm_buff.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %nvm_buff.i.i, align 4
  %tobool46.not.i.i = icmp eq ptr %202, null
  br i1 %tobool46.not.i.i, label %if.then47.i.i, label %if.then45.i.i.if.then80.i.i_crit_edge

if.then45.i.i.if.then80.i.i_crit_edge:            ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then80.i.i

if.then47.i.i:                                    ; preds = %if.then45.i.i
  %asq_buf_size.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 6
  %203 = ptrtoint ptr %asq_buf_size.i.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %asq_buf_size.i.i, align 2
  %conv49.i.i = zext i16 %204 to i32
  %call50.i.i = tail call i32 @i40e_allocate_virt_mem_d(ptr noundef %hw, ptr noundef %nvm_buff.i.i, i32 noundef %conv49.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool51.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool51.not.i.i, label %if.then47.i.i.if.end76.i.i_crit_edge, label %do.body53.i.i

if.then47.i.i.if.end76.i.i_crit_edge:             ; preds = %if.then47.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76.i.i

do.body53.i.i:                                    ; preds = %if.then47.i.i
  %205 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %debug_mask, align 8
  %and55.i.i = and i32 %206, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i)
  %tobool56.not.i.i = icmp eq i32 %and55.i.i, 0
  br i1 %tobool56.not.i.i, label %do.body53.i.i.if.end76.i.i_crit_edge, label %do.end60.i.i

do.body53.i.i.if.end76.i.i_crit_edge:             ; preds = %do.body53.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76.i.i

do.end60.i.i:                                     ; preds = %do.body53.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id63.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %207 = ptrtoint ptr %bus_id63.i.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %bus_id63.i.i, align 2
  %conv64.i.i = zext i16 %208 to i32
  %device66.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %209 = ptrtoint ptr %device66.i.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %device66.i.i, align 2
  %conv67.i.i = zext i16 %210 to i32
  %func69.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %211 = ptrtoint ptr %func69.i.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %func69.i.i, align 4
  %conv70.i.i = zext i16 %212 to i32
  %call71.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %conv64.i.i, i32 noundef %conv67.i.i, i32 noundef %conv70.i.i, i32 noundef %call50.i.i) #8
  br label %if.end76.i.i

if.end76.i.i:                                     ; preds = %do.end60.i.i, %do.body53.i.i.if.end76.i.i_crit_edge, %if.then47.i.i.if.end76.i.i_crit_edge
  %213 = ptrtoint ptr %nvm_buff.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %.pr.i.i = load ptr, ptr %nvm_buff.i.i, align 4
  %tobool79.not.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %tobool79.not.i.i, label %if.end76.i.i.if.end84.i.i_crit_edge, label %if.end76.i.i.if.then80.i.i_crit_edge

if.end76.i.i.if.then80.i.i_crit_edge:             ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then80.i.i

if.end76.i.i.if.end84.i.i_crit_edge:              ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84.i.i

if.then80.i.i:                                    ; preds = %if.end76.i.i.if.then80.i.i_crit_edge, %if.then45.i.i.if.then80.i.i_crit_edge
  %214 = phi ptr [ %.pr.i.i, %if.end76.i.i.if.then80.i.i_crit_edge ], [ %202, %if.then45.i.i.if.then80.i.i_crit_edge ]
  %arrayidx.i329.i = getelementptr i8, ptr %bytes, i32 32
  %215 = call ptr @memcpy(ptr %214, ptr %arrayidx.i329.i, i32 %sub.i.i)
  br label %if.end84.i.i

if.end84.i.i:                                     ; preds = %if.then80.i.i, %if.end76.i.i.if.end84.i.i_crit_edge, %if.end38.i.i.if.end84.i.i_crit_edge
  %buff.0.i.i = phi ptr [ %214, %if.then80.i.i ], [ null, %if.end76.i.i.if.end84.i.i_crit_edge ], [ null, %if.end38.i.i.if.end84.i.i_crit_edge ]
  %216 = ptrtoint ptr %offset.i324.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %offset.i324.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool86.not.i.i = icmp eq i32 %217, 0
  br i1 %tobool86.not.i.i, label %if.end84.i.i.if.end88.i.i_crit_edge, label %if.then87.i.i

if.end84.i.i.if.end88.i.i_crit_edge:              ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88.i.i

if.then87.i.i:                                    ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %nvm_aq_event_desc.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 26
  %218 = call ptr @memset(ptr %nvm_aq_event_desc.i.i, i32 0, i32 32)
  br label %if.end88.i.i

if.end88.i.i:                                     ; preds = %if.then87.i.i, %if.end84.i.i.if.end88.i.i_crit_edge
  %conv89.i.i = trunc i32 %200 to i16
  %call90.i.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef %bytes, ptr noundef %buff.0.i.i, i16 noundef zeroext %conv89.i.i, ptr noundef nonnull %cmd_details.i315.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i.i)
  %tobool91.not.i.i = icmp eq i32 %call90.i.i, 0
  br i1 %tobool91.not.i.i, label %if.end121.i.i, label %do.body93.i.i

do.body93.i.i:                                    ; preds = %if.end88.i.i
  %219 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %debug_mask, align 8
  %and95.i.i = and i32 %220, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i.i)
  %tobool96.not.i.i = icmp eq i32 %and95.i.i, 0
  br i1 %tobool96.not.i.i, label %do.body93.i.i.do.end117.i.i_crit_edge, label %do.end100.i.i

do.body93.i.i.do.end117.i.i_crit_edge:            ; preds = %do.body93.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end117.i.i

do.end100.i.i:                                    ; preds = %do.body93.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id103.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %221 = ptrtoint ptr %bus_id103.i.i to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %bus_id103.i.i, align 2
  %conv104.i.i = zext i16 %222 to i32
  %device106.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %223 = ptrtoint ptr %device106.i.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %device106.i.i, align 2
  %conv107.i.i = zext i16 %224 to i32
  %func109.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %225 = ptrtoint ptr %func109.i.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %func109.i.i, align 4
  %conv110.i.i = zext i16 %226 to i32
  %call111.i.i = call ptr @i40e_stat_str(ptr noundef %hw, i32 noundef %call90.i.i) #5
  %asq_last_status.i330.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  %227 = ptrtoint ptr %asq_last_status.i330.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %asq_last_status.i330.i, align 8
  %call113.i.i = call ptr @i40e_aq_str(ptr noundef %hw, i32 noundef %228) #5
  %call114.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %conv104.i.i, i32 noundef %conv107.i.i, i32 noundef %conv110.i.i, ptr noundef %call111.i.i, ptr noundef %call113.i.i) #8
  br label %do.end117.i.i

do.end117.i.i:                                    ; preds = %do.end100.i.i, %do.body93.i.i.do.end117.i.i_crit_edge
  %asq_last_status119.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  %229 = ptrtoint ptr %asq_last_status119.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %asq_last_status119.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call90.i.i)
  %cmp.i.i331.i = icmp eq i32 %call90.i.i, -54
  br i1 %cmp.i.i331.i, label %do.end117.i.i.i40e_aq_rc_to_posix.exit.i337.i_crit_edge, label %if.end.i.i333.i

do.end117.i.i.i40e_aq_rc_to_posix.exit.i337.i_crit_edge: ; preds = %do.end117.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_aq_rc_to_posix.exit.i337.i

if.end.i.i333.i:                                  ; preds = %do.end117.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %230)
  %cmp1.i.i332.i = icmp ult i32 %230, 23
  br i1 %cmp1.i.i332.i, label %if.end3.i.i335.i, label %if.end.i.i333.i.i40e_aq_rc_to_posix.exit.i337.i_crit_edge

if.end.i.i333.i.i40e_aq_rc_to_posix.exit.i337.i_crit_edge: ; preds = %if.end.i.i333.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_aq_rc_to_posix.exit.i337.i

if.end3.i.i335.i:                                 ; preds = %if.end.i.i333.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i334.i = getelementptr [23 x i32], ptr @__const.i40e_aq_rc_to_posix.aq_to_posix, i32 0, i32 %230
  %231 = ptrtoint ptr %arrayidx.i.i334.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx.i.i334.i, align 4
  br label %i40e_aq_rc_to_posix.exit.i337.i

i40e_aq_rc_to_posix.exit.i337.i:                  ; preds = %if.end3.i.i335.i, %if.end.i.i333.i.i40e_aq_rc_to_posix.exit.i337.i_crit_edge, %do.end117.i.i.i40e_aq_rc_to_posix.exit.i337.i_crit_edge
  %retval.0.i.i336.i = phi i32 [ %232, %if.end3.i.i335.i ], [ -11, %do.end117.i.i.i40e_aq_rc_to_posix.exit.i337.i_crit_edge ], [ -34, %if.end.i.i333.i.i40e_aq_rc_to_posix.exit.i337.i_crit_edge ]
  %233 = ptrtoint ptr %perrno to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %retval.0.i.i336.i, ptr %perrno, align 4
  br label %i40e_nvmupd_exec_aq.exit.i

if.end121.i.i:                                    ; preds = %if.end88.i.i
  %234 = ptrtoint ptr %offset.i324.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %offset.i324.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %tobool123.not.i.i = icmp eq i32 %235, 0
  br i1 %tobool123.not.i.i, label %if.end121.i.i.i40e_nvmupd_exec_aq.exit.i_crit_edge, label %if.then124.i.i

if.end121.i.i.i40e_nvmupd_exec_aq.exit.i_crit_edge: ; preds = %if.end121.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_nvmupd_exec_aq.exit.i

if.then124.i.i:                                   ; preds = %if.end121.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv126.i.i = trunc i32 %235 to i16
  %nvm_wait_opcode.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 29
  %236 = ptrtoint ptr %nvm_wait_opcode.i.i to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 %conv126.i.i, ptr %nvm_wait_opcode.i.i, align 2
  %237 = ptrtoint ptr %nvmupd_state62 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 3, ptr %nvmupd_state62, align 8
  br label %i40e_nvmupd_exec_aq.exit.i

i40e_nvmupd_exec_aq.exit.i:                       ; preds = %if.then124.i.i, %if.end121.i.i.i40e_nvmupd_exec_aq.exit.i_crit_edge, %i40e_aq_rc_to_posix.exit.i337.i, %do.end37.i.i, %do.end7.i.i.i40e_nvmupd_exec_aq.exit.i_crit_edge
  %retval.0.i338.i = phi i32 [ -5, %do.end37.i.i ], [ %call90.i.i, %i40e_aq_rc_to_posix.exit.i337.i ], [ 0, %do.end7.i.i.i40e_nvmupd_exec_aq.exit.i_crit_edge ], [ 0, %if.then124.i.i ], [ 0, %if.end121.i.i.i40e_nvmupd_exec_aq.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd_details.i315.i) #5
  br label %sw.epilog

sw.bb91.i:                                        ; preds = %sw.bb
  %238 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %debug_mask, align 8
  %and.i340.i = and i32 %239, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i340.i)
  %tobool.not.i341.i = icmp eq i32 %and.i340.i, 0
  br i1 %tobool.not.i341.i, label %sw.bb91.i.do.end7.i354.i_crit_edge, label %do.end.i349.i

sw.bb91.i.do.end7.i354.i_crit_edge:               ; preds = %sw.bb91.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i354.i

do.end.i349.i:                                    ; preds = %sw.bb91.i
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id.i342.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %240 = ptrtoint ptr %bus_id.i342.i to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %bus_id.i342.i, align 2
  %conv.i343.i = zext i16 %241 to i32
  %device.i344.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %242 = ptrtoint ptr %device.i344.i to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %device.i344.i, align 2
  %conv3.i345.i = zext i16 %243 to i32
  %func.i346.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %244 = ptrtoint ptr %func.i346.i to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %func.i346.i, align 4
  %conv5.i347.i = zext i16 %245 to i32
  %call.i348.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %conv.i343.i, i32 noundef %conv3.i345.i, i32 noundef %conv5.i347.i, ptr noundef nonnull @.str.99) #8
  br label %do.end7.i354.i

do.end7.i354.i:                                   ; preds = %do.end.i349.i, %sw.bb91.i.do.end7.i354.i_crit_edge
  %nvm_wb_desc.i350.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 25
  %datalen.i351.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 25, i32 2
  %246 = ptrtoint ptr %datalen.i351.i to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %datalen.i351.i, align 4
  %248 = tail call i16 @llvm.bswap.i16(i16 %247) #5
  %conv8.i.i = zext i16 %248 to i32
  %add.i.i = add nuw nsw i32 %conv8.i.i, 32
  %offset.i352.i = getelementptr inbounds %struct.i40e_nvm_access, ptr %cmd, i32 0, i32 2
  %249 = ptrtoint ptr %offset.i352.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %offset.i352.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %250)
  %cmp.i353.i = icmp ult i32 %add.i.i, %250
  br i1 %cmp.i353.i, label %do.body11.i.i, label %if.end34.i.i

do.body11.i.i:                                    ; preds = %do.end7.i354.i
  %251 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %debug_mask, align 8
  %and13.i.i = and i32 %252, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  br i1 %tobool14.not.i.i, label %do.body11.i.i.do.end33.i.i_crit_edge, label %do.end18.i.i

do.body11.i.i.do.end33.i.i_crit_edge:             ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end33.i.i

do.end18.i.i:                                     ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id21.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %253 = ptrtoint ptr %bus_id21.i.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %bus_id21.i.i, align 2
  %conv22.i.i = zext i16 %254 to i32
  %device24.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %255 = ptrtoint ptr %device24.i.i to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %device24.i.i, align 2
  %conv25.i.i = zext i16 %256 to i32
  %func27.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %257 = ptrtoint ptr %func27.i.i to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %func27.i.i, align 4
  %conv28.i.i = zext i16 %258 to i32
  %call30.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %conv22.i.i, i32 noundef %conv25.i.i, i32 noundef %conv28.i.i, ptr noundef nonnull @.str.99, i32 noundef %250, i32 noundef %add.i.i) #8
  br label %do.end33.i.i

do.end33.i.i:                                     ; preds = %do.end18.i.i, %do.body11.i.i.do.end33.i.i_crit_edge
  %259 = ptrtoint ptr %perrno to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 -22, ptr %perrno, align 4
  br label %sw.epilog

if.end34.i.i:                                     ; preds = %do.end7.i354.i
  %data_size.i355.i = getelementptr inbounds %struct.i40e_nvm_access, ptr %cmd, i32 0, i32 3
  %260 = ptrtoint ptr %data_size.i355.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %data_size.i355.i, align 4
  %sub.i356.i = sub i32 %add.i.i, %250
  call void @__sanitizer_cov_trace_cmp4(i32 %261, i32 %sub.i356.i)
  %cmp36.i.i = icmp ugt i32 %261, %sub.i356.i
  br i1 %cmp36.i.i, label %if.then38.i.i, label %if.end34.i.i.if.end65.i.i_crit_edge

if.end34.i.i.if.end65.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65.i.i

if.then38.i.i:                                    ; preds = %if.end34.i.i
  %262 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %debug_mask, align 8
  %and43.i.i = and i32 %263, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i.i)
  %tobool44.not.i357.i = icmp eq i32 %and43.i.i, 0
  br i1 %tobool44.not.i357.i, label %if.then38.i.i.do.end63.i.i_crit_edge, label %do.end48.i.i

if.then38.i.i.do.end63.i.i_crit_edge:             ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end63.i.i

do.end48.i.i:                                     ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id51.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %264 = ptrtoint ptr %bus_id51.i.i to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %bus_id51.i.i, align 2
  %conv52.i.i = zext i16 %265 to i32
  %device54.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %266 = ptrtoint ptr %device54.i.i to i32
  call void @__asan_load2_noabort(i32 %266)
  %267 = load i16, ptr %device54.i.i, align 2
  %conv55.i.i = zext i16 %267 to i32
  %func57.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %268 = ptrtoint ptr %func57.i.i to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %func57.i.i, align 4
  %conv58.i.i = zext i16 %269 to i32
  %call60.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %conv52.i.i, i32 noundef %conv55.i.i, i32 noundef %conv58.i.i, ptr noundef nonnull @.str.99, i32 noundef %261, i32 noundef %sub.i356.i) #8
  br label %do.end63.i.i

do.end63.i.i:                                     ; preds = %do.end48.i.i, %if.then38.i.i.do.end63.i.i_crit_edge
  %270 = ptrtoint ptr %data_size.i355.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %sub.i356.i, ptr %data_size.i355.i, align 4
  br label %if.end65.i.i

if.end65.i.i:                                     ; preds = %do.end63.i.i, %if.end34.i.i.if.end65.i.i_crit_edge
  %271 = ptrtoint ptr %data_size.i355.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %data_size.i355.i, align 4
  %273 = ptrtoint ptr %offset.i352.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %offset.i352.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %274)
  %cmp68.i.i = icmp ult i32 %274, 32
  br i1 %cmp68.i.i, label %if.then70.i.i, label %if.else.i.i

if.then70.i.i:                                    ; preds = %if.end65.i.i
  %sub72.i.i = sub nuw nsw i32 32, %274
  %275 = tail call i32 @llvm.umin.i32(i32 %sub72.i.i, i32 %272) #5
  %276 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %debug_mask, align 8
  %and79.i.i = and i32 %277, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i.i)
  %tobool80.not.i.i = icmp eq i32 %and79.i.i, 0
  br i1 %tobool80.not.i.i, label %if.then70.i.i.do.end101.i.i_crit_edge, label %do.end84.i.i

if.then70.i.i.do.end101.i.i_crit_edge:            ; preds = %if.then70.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end101.i.i

do.end84.i.i:                                     ; preds = %if.then70.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id87.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %278 = ptrtoint ptr %bus_id87.i.i to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %bus_id87.i.i, align 2
  %conv88.i.i = zext i16 %279 to i32
  %device90.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %280 = ptrtoint ptr %device90.i.i to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %device90.i.i, align 2
  %conv91.i.i = zext i16 %281 to i32
  %func93.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %282 = ptrtoint ptr %func93.i.i to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %func93.i.i, align 4
  %conv94.i.i = zext i16 %283 to i32
  %add97.i.i = add nuw nsw i32 %275, %274
  %call98.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %conv88.i.i, i32 noundef %conv91.i.i, i32 noundef %conv94.i.i, ptr noundef nonnull @.str.99, i32 noundef %274, i32 noundef %add97.i.i) #8
  br label %do.end101.i.i

do.end101.i.i:                                    ; preds = %do.end84.i.i, %if.then70.i.i.do.end101.i.i_crit_edge
  %284 = ptrtoint ptr %offset.i352.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %offset.i352.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %nvm_wb_desc.i350.i, i32 %285
  %286 = call ptr @memcpy(ptr %bytes, ptr %add.ptr.i.i, i32 %275)
  %add.ptr104.i.i = getelementptr i8, ptr %bytes, i32 %275
  %sub105.i.i = sub i32 %272, %275
  %nvm_buff.i358.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 27
  %287 = ptrtoint ptr %nvm_buff.i358.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %nvm_buff.i358.i, align 4
  br label %if.end111.i.i

if.else.i.i:                                      ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %nvm_buff106.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 27
  %289 = ptrtoint ptr %nvm_buff106.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %nvm_buff106.i.i, align 4
  %sub109.i.i = add i32 %274, -32
  %add.ptr110.i.i = getelementptr i8, ptr %290, i32 %sub109.i.i
  br label %if.end111.i.i

if.end111.i.i:                                    ; preds = %if.else.i.i, %do.end101.i.i
  %buff.0.i359.i = phi ptr [ %288, %do.end101.i.i ], [ %add.ptr110.i.i, %if.else.i.i ]
  %remainder.0.i.i = phi i32 [ %sub105.i.i, %do.end101.i.i ], [ %272, %if.else.i.i ]
  %bytes.addr.0.i.i = phi ptr [ %add.ptr104.i.i, %do.end101.i.i ], [ %bytes, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remainder.0.i.i)
  %cmp112.i.i = icmp sgt i32 %remainder.0.i.i, 0
  br i1 %cmp112.i.i, label %if.then114.i.i, label %if.end111.i.i.sw.epilog_crit_edge

if.end111.i.i.sw.epilog_crit_edge:                ; preds = %if.end111.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then114.i.i:                                   ; preds = %if.end111.i.i
  %291 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %debug_mask, align 8
  %and119.i.i = and i32 %292, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119.i.i)
  %tobool120.not.i.i = icmp eq i32 %and119.i.i, 0
  br i1 %tobool120.not.i.i, label %if.then114.i.i.do.end139.i.i_crit_edge, label %do.end124.i.i

if.then114.i.i.do.end139.i.i_crit_edge:           ; preds = %if.then114.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end139.i.i

do.end124.i.i:                                    ; preds = %if.then114.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %buff.0.i359.i to i32
  %nvm_buff115.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 27
  %293 = ptrtoint ptr %nvm_buff115.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %nvm_buff115.i.i, align 4
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %294 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %bus_id127.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %295 = ptrtoint ptr %bus_id127.i.i to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %bus_id127.i.i, align 2
  %conv128.i.i = zext i16 %296 to i32
  %device130.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %297 = ptrtoint ptr %device130.i.i to i32
  call void @__asan_load2_noabort(i32 %297)
  %298 = load i16, ptr %device130.i.i, align 2
  %conv131.i.i = zext i16 %298 to i32
  %func133.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %299 = ptrtoint ptr %func133.i.i to i32
  call void @__asan_load2_noabort(i32 %299)
  %300 = load i16, ptr %func133.i.i, align 4
  %conv134.i.i = zext i16 %300 to i32
  %add135.i.i = add i32 %sub.ptr.sub.i.i, %remainder.0.i.i
  %call136.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i32 noundef %conv128.i.i, i32 noundef %conv131.i.i, i32 noundef %conv134.i.i, ptr noundef nonnull @.str.99, i32 noundef %sub.ptr.sub.i.i, i32 noundef %add135.i.i) #8
  br label %do.end139.i.i

do.end139.i.i:                                    ; preds = %do.end124.i.i, %if.then114.i.i.do.end139.i.i_crit_edge
  %301 = call ptr @memcpy(ptr %bytes.addr.0.i.i, ptr %buff.0.i359.i, i32 %remainder.0.i.i)
  br label %sw.epilog

sw.bb93.i:                                        ; preds = %sw.bb
  %302 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %debug_mask, align 8
  %and.i362.i = and i32 %303, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i362.i)
  %tobool.not.i363.i = icmp eq i32 %and.i362.i, 0
  br i1 %tobool.not.i363.i, label %sw.bb93.i.do.end7.i377.i_crit_edge, label %do.end.i371.i

sw.bb93.i.do.end7.i377.i_crit_edge:               ; preds = %sw.bb93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i377.i

do.end.i371.i:                                    ; preds = %sw.bb93.i
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id.i364.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %304 = ptrtoint ptr %bus_id.i364.i to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %bus_id.i364.i, align 2
  %conv.i365.i = zext i16 %305 to i32
  %device.i366.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %306 = ptrtoint ptr %device.i366.i to i32
  call void @__asan_load2_noabort(i32 %306)
  %307 = load i16, ptr %device.i366.i, align 2
  %conv3.i367.i = zext i16 %307 to i32
  %func.i368.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %308 = ptrtoint ptr %func.i368.i to i32
  call void @__asan_load2_noabort(i32 %308)
  %309 = load i16, ptr %func.i368.i, align 4
  %conv5.i369.i = zext i16 %309 to i32
  %call.i370.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %conv.i365.i, i32 noundef %conv3.i367.i, i32 noundef %conv5.i369.i, ptr noundef nonnull @.str.112) #8
  br label %do.end7.i377.i

do.end7.i377.i:                                   ; preds = %do.end.i371.i, %sw.bb93.i.do.end7.i377.i_crit_edge
  %datalen.i372.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 26, i32 2
  %310 = ptrtoint ptr %datalen.i372.i to i32
  call void @__asan_load2_noabort(i32 %310)
  %311 = load i16, ptr %datalen.i372.i, align 4
  %312 = tail call i16 @llvm.bswap.i16(i16 %311) #5
  %conv8.i373.i = zext i16 %312 to i32
  %add.i374.i = add nuw nsw i32 %conv8.i373.i, 32
  %data_size.i375.i = getelementptr inbounds %struct.i40e_nvm_access, ptr %cmd, i32 0, i32 3
  %313 = ptrtoint ptr %data_size.i375.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %data_size.i375.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %314, i32 %add.i374.i)
  %cmp.i376.i = icmp ugt i32 %314, %add.i374.i
  br i1 %cmp.i376.i, label %do.body11.i380.i, label %do.end7.i377.i.i40e_nvmupd_get_aq_event.exit.i_crit_edge

do.end7.i377.i.i40e_nvmupd_get_aq_event.exit.i_crit_edge: ; preds = %do.end7.i377.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_nvmupd_get_aq_event.exit.i

do.body11.i380.i:                                 ; preds = %do.end7.i377.i
  %315 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %debug_mask, align 8
  %and13.i378.i = and i32 %316, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i378.i)
  %tobool14.not.i379.i = icmp eq i32 %and13.i378.i, 0
  br i1 %tobool14.not.i379.i, label %do.body11.i380.i.do.end33.i389.i_crit_edge, label %do.end18.i388.i

do.body11.i380.i.do.end33.i389.i_crit_edge:       ; preds = %do.body11.i380.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end33.i389.i

do.end18.i388.i:                                  ; preds = %do.body11.i380.i
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id21.i381.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %317 = ptrtoint ptr %bus_id21.i381.i to i32
  call void @__asan_load2_noabort(i32 %317)
  %318 = load i16, ptr %bus_id21.i381.i, align 2
  %conv22.i382.i = zext i16 %318 to i32
  %device24.i383.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %319 = ptrtoint ptr %device24.i383.i to i32
  call void @__asan_load2_noabort(i32 %319)
  %320 = load i16, ptr %device24.i383.i, align 2
  %conv25.i384.i = zext i16 %320 to i32
  %func27.i385.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %321 = ptrtoint ptr %func27.i385.i to i32
  call void @__asan_load2_noabort(i32 %321)
  %322 = load i16, ptr %func27.i385.i, align 4
  %conv28.i386.i = zext i16 %322 to i32
  %call30.i387.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %conv22.i382.i, i32 noundef %conv25.i384.i, i32 noundef %conv28.i386.i, ptr noundef nonnull @.str.112, i32 noundef %314, i32 noundef %add.i374.i) #8
  br label %do.end33.i389.i

do.end33.i389.i:                                  ; preds = %do.end18.i388.i, %do.body11.i380.i.do.end33.i389.i_crit_edge
  %323 = ptrtoint ptr %data_size.i375.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %add.i374.i, ptr %data_size.i375.i, align 4
  br label %i40e_nvmupd_get_aq_event.exit.i

i40e_nvmupd_get_aq_event.exit.i:                  ; preds = %do.end33.i389.i, %do.end7.i377.i.i40e_nvmupd_get_aq_event.exit.i_crit_edge
  %nvm_aq_event_desc.i390.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 26
  %324 = ptrtoint ptr %data_size.i375.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %data_size.i375.i, align 4
  %326 = call ptr @memcpy(ptr %bytes, ptr %nvm_aq_event_desc.i390.i, i32 %325)
  br label %sw.epilog

do.body.i:                                        ; preds = %sw.bb
  %327 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %debug_mask, align 8
  %and.i = and i32 %328, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool95.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool95.not.i, label %do.body.i.do.end105.i_crit_edge, label %do.end.i

do.body.i.do.end105.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end105.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %329 = ptrtoint ptr %bus_id.i to i32
  call void @__asan_load2_noabort(i32 %329)
  %330 = load i16, ptr %bus_id.i, align 2
  %conv.i = zext i16 %330 to i32
  %device.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %331 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %331)
  %332 = load i16, ptr %device.i, align 2
  %conv99.i = zext i16 %332 to i32
  %func.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %333 = ptrtoint ptr %func.i to i32
  call void @__asan_load2_noabort(i32 %333)
  %334 = load i16, ptr %func.i, align 4
  %conv101.i = zext i16 %334 to i32
  %arrayidx.i = getelementptr [17 x ptr], ptr @i40e_nvm_update_state_str, i32 0, i32 %call.i
  %335 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %arrayidx.i, align 4
  %call102.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %conv.i, i32 noundef %conv99.i, i32 noundef %conv101.i, ptr noundef %336) #8
  br label %do.end105.i

do.end105.i:                                      ; preds = %do.end.i, %do.body.i.do.end105.i_crit_edge
  %337 = ptrtoint ptr %perrno to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 -3, ptr %perrno, align 4
  br label %sw.epilog

sw.bb92:                                          ; preds = %if.end89
  %call.i188 = tail call fastcc i32 @i40e_nvmupd_validate_command(ptr noundef %hw, ptr noundef %cmd, ptr noundef %perrno) #5
  %338 = zext i32 %call.i188 to i64
  call void @__sanitizer_cov_trace_switch(i64 %338, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %call.i188, label %do.body.i209 [
    i32 4, label %sw.bb92.sw.bb.i190_crit_edge
    i32 1, label %sw.bb92.sw.bb.i190_crit_edge302
    i32 3, label %sw.bb2.i
  ]

sw.bb92.sw.bb.i190_crit_edge302:                  ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i190

sw.bb92.sw.bb.i190_crit_edge:                     ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i190

sw.bb.i190:                                       ; preds = %sw.bb92.sw.bb.i190_crit_edge, %sw.bb92.sw.bb.i190_crit_edge302
  %call1.i189 = tail call fastcc i32 @i40e_nvmupd_nvm_read(ptr noundef %hw, ptr noundef %cmd, ptr noundef %bytes, ptr noundef %perrno) #5
  br label %sw.epilog

sw.bb2.i:                                         ; preds = %sw.bb92
  %call3.i191 = tail call fastcc i32 @i40e_nvmupd_nvm_read(ptr noundef %hw, ptr noundef %cmd, ptr noundef %bytes, ptr noundef %perrno) #5
  %blank_nvm_mode.i.i192 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 3
  %339 = ptrtoint ptr %blank_nvm_mode.i.i192 to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %blank_nvm_mode.i.i192, align 2, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %340)
  %tobool.not.i.i193 = icmp eq i8 %340, 0
  br i1 %tobool.not.i.i193, label %if.end.i.i197, label %sw.bb2.i.i40e_release_nvm.exit.i_crit_edge

sw.bb2.i.i40e_release_nvm.exit.i_crit_edge:       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_release_nvm.exit.i

if.end.i.i197:                                    ; preds = %sw.bb2.i
  %call.i.i194 = tail call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #5
  %asq_cmd_timeout.i.i195 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call.i.i194)
  %cmp8.i.i196 = icmp eq i32 %call.i.i194, -54
  br i1 %cmp8.i.i196, label %if.end.i.i197.land.rhs.i.i200_crit_edge, label %if.end.i.i197.i40e_release_nvm.exit.i_crit_edge

if.end.i.i197.i40e_release_nvm.exit.i_crit_edge:  ; preds = %if.end.i.i197
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_release_nvm.exit.i

if.end.i.i197.land.rhs.i.i200_crit_edge:          ; preds = %if.end.i.i197
  br label %land.rhs.i.i200

land.rhs.i.i200:                                  ; preds = %while.body.i.i204.land.rhs.i.i200_crit_edge, %if.end.i.i197.land.rhs.i.i200_crit_edge
  %total_delay.09.i.i198 = phi i32 [ %inc.i.i202, %while.body.i.i204.land.rhs.i.i200_crit_edge ], [ 0, %if.end.i.i197.land.rhs.i.i200_crit_edge ]
  %341 = ptrtoint ptr %asq_cmd_timeout.i.i195 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %asq_cmd_timeout.i.i195, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %total_delay.09.i.i198, i32 %342)
  %cmp1.i.i199 = icmp ult i32 %total_delay.09.i.i198, %342
  br i1 %cmp1.i.i199, label %while.body.i.i204, label %land.rhs.i.i200.i40e_release_nvm.exit.i_crit_edge

land.rhs.i.i200.i40e_release_nvm.exit.i_crit_edge: ; preds = %land.rhs.i.i200
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_release_nvm.exit.i

while.body.i.i204:                                ; preds = %land.rhs.i.i200
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %call2.i.i201 = tail call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #5
  %inc.i.i202 = add nuw i32 %total_delay.09.i.i198, 1
  %cmp.i.i203 = icmp eq i32 %call2.i.i201, -54
  br i1 %cmp.i.i203, label %while.body.i.i204.land.rhs.i.i200_crit_edge, label %while.body.i.i204.i40e_release_nvm.exit.i_crit_edge

while.body.i.i204.i40e_release_nvm.exit.i_crit_edge: ; preds = %while.body.i.i204
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_release_nvm.exit.i

while.body.i.i204.land.rhs.i.i200_crit_edge:      ; preds = %while.body.i.i204
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i.i200

i40e_release_nvm.exit.i:                          ; preds = %while.body.i.i204.i40e_release_nvm.exit.i_crit_edge, %land.rhs.i.i200.i40e_release_nvm.exit.i_crit_edge, %if.end.i.i197.i40e_release_nvm.exit.i_crit_edge, %sw.bb2.i.i40e_release_nvm.exit.i_crit_edge
  %343 = ptrtoint ptr %nvmupd_state62 to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 0, ptr %nvmupd_state62, align 8
  br label %sw.epilog

do.body.i209:                                     ; preds = %sw.bb92
  %344 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %debug_mask, align 8
  %and.i207 = and i32 %345, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i207)
  %tobool.not.i208 = icmp eq i32 %and.i207, 0
  br i1 %tobool.not.i208, label %do.body.i209.do.end11.i_crit_edge, label %do.end.i215

do.body.i209.do.end11.i_crit_edge:                ; preds = %do.body.i209
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end11.i

do.end.i215:                                      ; preds = %do.body.i209
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id.i210 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %346 = ptrtoint ptr %bus_id.i210 to i32
  call void @__asan_load2_noabort(i32 %346)
  %347 = load i16, ptr %bus_id.i210, align 2
  %conv.i211 = zext i16 %347 to i32
  %device.i212 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %348 = ptrtoint ptr %device.i212 to i32
  call void @__asan_load2_noabort(i32 %348)
  %349 = load i16, ptr %device.i212, align 2
  %conv6.i = zext i16 %349 to i32
  %func.i213 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %350 = ptrtoint ptr %func.i213 to i32
  call void @__asan_load2_noabort(i32 %350)
  %351 = load i16, ptr %func.i213, align 4
  %conv8.i = zext i16 %351 to i32
  %arrayidx.i214 = getelementptr [17 x ptr], ptr @i40e_nvm_update_state_str, i32 0, i32 %call.i188
  %352 = ptrtoint ptr %arrayidx.i214 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %arrayidx.i214, align 4
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %conv.i211, i32 noundef %conv6.i, i32 noundef %conv8.i, ptr noundef %353) #8
  br label %do.end11.i

do.end11.i:                                       ; preds = %do.end.i215, %do.body.i209.do.end11.i_crit_edge
  %354 = ptrtoint ptr %perrno to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 -3, ptr %perrno, align 4
  br label %sw.epilog

sw.bb94:                                          ; preds = %if.end89
  %call.i217 = tail call fastcc i32 @i40e_nvmupd_validate_command(ptr noundef %hw, ptr noundef %cmd, ptr noundef %perrno) #5
  %asq_last_status38.i218 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  %bus_id.i221 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %device.i222 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %func.i223 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %arrayidx.i224 = getelementptr [17 x ptr], ptr @i40e_nvm_update_state_str, i32 0, i32 %call.i217
  %nvm.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5
  %blank_nvm_mode.i.i225 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 3
  %asq_cmd_timeout.i.i226 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 2
  br label %retry.i

retry.i:                                          ; preds = %i40e_release_nvm.exit.i264.retry.i_crit_edge, %sw.bb94
  %retry_attempt.0.off0.i = phi i1 [ false, %sw.bb94 ], [ true, %i40e_release_nvm.exit.i264.retry.i_crit_edge ]
  %355 = zext i32 %call.i217 to i64
  call void @__sanitizer_cov_trace_switch(i64 %355, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %call.i217, label %do.body.i252 [
    i32 6, label %sw.bb.i229
    i32 8, label %sw.bb2.i233
    i32 10, label %sw.bb14.i
    i32 12, label %sw.bb33.i249
  ]

sw.bb.i229:                                       ; preds = %retry.i
  %call1.i227 = tail call fastcc i32 @i40e_nvmupd_nvm_write(ptr noundef %hw, ptr noundef %cmd, ptr noundef %bytes, ptr noundef %perrno) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i227)
  %tobool.not.i228 = icmp eq i32 %call1.i227, 0
  br i1 %tobool.not.i228, label %if.then.i231, label %sw.bb.i229.land.lhs.true.i_crit_edge

sw.bb.i229.land.lhs.true.i_crit_edge:             ; preds = %sw.bb.i229
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

if.then.i231:                                     ; preds = %sw.bb.i229
  call void @__sanitizer_cov_trace_pc() #7
  %nvm_wait_opcode.i230 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 29
  %356 = ptrtoint ptr %nvm_wait_opcode.i230 to i32
  call void @__asan_store2_noabort(i32 %356)
  store i16 1795, ptr %nvm_wait_opcode.i230, align 2
  %357 = ptrtoint ptr %nvmupd_state62 to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 4, ptr %nvmupd_state62, align 8
  br label %sw.epilog

sw.bb2.i233:                                      ; preds = %retry.i
  %call3.i232 = tail call fastcc i32 @i40e_nvmupd_nvm_write(ptr noundef %hw, ptr noundef %cmd, ptr noundef %bytes, ptr noundef %perrno) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i232)
  %tobool4.not.i = icmp eq i32 %call3.i232, 0
  br i1 %tobool4.not.i, label %if.else.i244, label %if.then5.i

if.then5.i:                                       ; preds = %sw.bb2.i233
  %358 = ptrtoint ptr %asq_last_status38.i218 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %asq_last_status38.i218, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %359)
  %tobool6.not.i234 = icmp eq i32 %359, 0
  br i1 %tobool6.not.i234, label %if.then5.i.cond.end.i242_crit_edge, label %cond.true.i236

if.then5.i.cond.end.i242_crit_edge:               ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i242

cond.true.i236:                                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call3.i232)
  %cmp.i.i235 = icmp eq i32 %call3.i232, -54
  br i1 %cmp.i.i235, label %cond.true.i236.cond.end.i242_crit_edge, label %if.end.i.i238

cond.true.i236.cond.end.i242_crit_edge:           ; preds = %cond.true.i236
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i242

if.end.i.i238:                                    ; preds = %cond.true.i236
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %359)
  %cmp1.i.i237 = icmp ult i32 %359, 23
  br i1 %cmp1.i.i237, label %if.end3.i.i240, label %if.end.i.i238.cond.end.i242_crit_edge

if.end.i.i238.cond.end.i242_crit_edge:            ; preds = %if.end.i.i238
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i242

if.end3.i.i240:                                   ; preds = %if.end.i.i238
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i239 = getelementptr [23 x i32], ptr @__const.i40e_aq_rc_to_posix.aq_to_posix, i32 0, i32 %359
  %360 = ptrtoint ptr %arrayidx.i.i239 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %arrayidx.i.i239, align 4
  br label %cond.end.i242

cond.end.i242:                                    ; preds = %if.end3.i.i240, %if.end.i.i238.cond.end.i242_crit_edge, %cond.true.i236.cond.end.i242_crit_edge, %if.then5.i.cond.end.i242_crit_edge
  %cond.i241 = phi i32 [ -5, %if.then5.i.cond.end.i242_crit_edge ], [ %361, %if.end3.i.i240 ], [ -11, %cond.true.i236.cond.end.i242_crit_edge ], [ -34, %if.end.i.i238.cond.end.i242_crit_edge ]
  %362 = ptrtoint ptr %perrno to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 %cond.i241, ptr %perrno, align 4
  %363 = ptrtoint ptr %nvmupd_state62 to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 0, ptr %nvmupd_state62, align 8
  br label %land.lhs.true.i

if.else.i244:                                     ; preds = %sw.bb2.i233
  call void @__sanitizer_cov_trace_pc() #7
  %nvm_release_on_done.i243 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 28
  %364 = ptrtoint ptr %nvm_release_on_done.i243 to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 1, ptr %nvm_release_on_done.i243, align 4
  %nvm_wait_opcode11.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 29
  %365 = ptrtoint ptr %nvm_wait_opcode11.i to i32
  call void @__asan_store2_noabort(i32 %365)
  store i16 1795, ptr %nvm_wait_opcode11.i, align 2
  %366 = ptrtoint ptr %nvmupd_state62 to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 3, ptr %nvmupd_state62, align 8
  br label %sw.epilog

sw.bb14.i:                                        ; preds = %retry.i
  %call15.i = tail call i32 @i40e_update_nvm_checksum(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.else29.i246, label %if.then17.i

if.then17.i:                                      ; preds = %sw.bb14.i
  %367 = ptrtoint ptr %asq_last_status38.i218 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %asq_last_status38.i218, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %368)
  %tobool20.not.i245 = icmp eq i32 %368, 0
  br i1 %tobool20.not.i245, label %if.then17.i.cond.end26.i_crit_edge, label %cond.true21.i

if.then17.i.cond.end26.i_crit_edge:               ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end26.i

cond.true21.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call15.i)
  %cmp.i212.i = icmp eq i32 %call15.i, -54
  br i1 %cmp.i212.i, label %cond.true21.i.cond.end26.i_crit_edge, label %if.end.i214.i

cond.true21.i.cond.end26.i_crit_edge:             ; preds = %cond.true21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end26.i

if.end.i214.i:                                    ; preds = %cond.true21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %368)
  %cmp1.i213.i = icmp ult i32 %368, 23
  br i1 %cmp1.i213.i, label %if.end3.i216.i, label %if.end.i214.i.cond.end26.i_crit_edge

if.end.i214.i.cond.end26.i_crit_edge:             ; preds = %if.end.i214.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end26.i

if.end3.i216.i:                                   ; preds = %if.end.i214.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i215.i = getelementptr [23 x i32], ptr @__const.i40e_aq_rc_to_posix.aq_to_posix, i32 0, i32 %368
  %369 = ptrtoint ptr %arrayidx.i215.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %arrayidx.i215.i, align 4
  br label %cond.end26.i

cond.end26.i:                                     ; preds = %if.end3.i216.i, %if.end.i214.i.cond.end26.i_crit_edge, %cond.true21.i.cond.end26.i_crit_edge, %if.then17.i.cond.end26.i_crit_edge
  %cond27.i = phi i32 [ -5, %if.then17.i.cond.end26.i_crit_edge ], [ %370, %if.end3.i216.i ], [ -11, %cond.true21.i.cond.end26.i_crit_edge ], [ -34, %if.end.i214.i.cond.end26.i_crit_edge ]
  %371 = ptrtoint ptr %perrno to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 %cond27.i, ptr %perrno, align 4
  %372 = ptrtoint ptr %nvmupd_state62 to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 0, ptr %nvmupd_state62, align 8
  br label %land.lhs.true.i

if.else29.i246:                                   ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #7
  %nvm_wait_opcode30.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 29
  %373 = ptrtoint ptr %nvm_wait_opcode30.i to i32
  call void @__asan_store2_noabort(i32 %373)
  store i16 1795, ptr %nvm_wait_opcode30.i, align 2
  %374 = ptrtoint ptr %nvmupd_state62 to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 4, ptr %nvmupd_state62, align 8
  br label %sw.epilog

sw.bb33.i249:                                     ; preds = %retry.i
  %call34.i247 = tail call i32 @i40e_update_nvm_checksum(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i247)
  %tobool35.not.i248 = icmp eq i32 %call34.i247, 0
  br i1 %tobool35.not.i248, label %if.else48.i, label %if.then36.i250

if.then36.i250:                                   ; preds = %sw.bb33.i249
  %375 = ptrtoint ptr %asq_last_status38.i218 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %asq_last_status38.i218, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %376)
  %tobool39.not.i = icmp eq i32 %376, 0
  br i1 %tobool39.not.i, label %if.then36.i250.cond.end45.i_crit_edge, label %cond.true40.i

if.then36.i250.cond.end45.i_crit_edge:            ; preds = %if.then36.i250
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end45.i

cond.true40.i:                                    ; preds = %if.then36.i250
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call34.i247)
  %cmp.i219.i = icmp eq i32 %call34.i247, -54
  br i1 %cmp.i219.i, label %cond.true40.i.cond.end45.i_crit_edge, label %if.end.i221.i

cond.true40.i.cond.end45.i_crit_edge:             ; preds = %cond.true40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end45.i

if.end.i221.i:                                    ; preds = %cond.true40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %376)
  %cmp1.i220.i = icmp ult i32 %376, 23
  br i1 %cmp1.i220.i, label %if.end3.i223.i, label %if.end.i221.i.cond.end45.i_crit_edge

if.end.i221.i.cond.end45.i_crit_edge:             ; preds = %if.end.i221.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end45.i

if.end3.i223.i:                                   ; preds = %if.end.i221.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i222.i = getelementptr [23 x i32], ptr @__const.i40e_aq_rc_to_posix.aq_to_posix, i32 0, i32 %376
  %377 = ptrtoint ptr %arrayidx.i222.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %arrayidx.i222.i, align 4
  br label %cond.end45.i

cond.end45.i:                                     ; preds = %if.end3.i223.i, %if.end.i221.i.cond.end45.i_crit_edge, %cond.true40.i.cond.end45.i_crit_edge, %if.then36.i250.cond.end45.i_crit_edge
  %cond46.i = phi i32 [ -5, %if.then36.i250.cond.end45.i_crit_edge ], [ %378, %if.end3.i223.i ], [ -11, %cond.true40.i.cond.end45.i_crit_edge ], [ -34, %if.end.i221.i.cond.end45.i_crit_edge ]
  %379 = ptrtoint ptr %perrno to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 %cond46.i, ptr %perrno, align 4
  %380 = ptrtoint ptr %nvmupd_state62 to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 0, ptr %nvmupd_state62, align 8
  br label %land.lhs.true.i

if.else48.i:                                      ; preds = %sw.bb33.i249
  call void @__sanitizer_cov_trace_pc() #7
  %nvm_release_on_done49.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 28
  %381 = ptrtoint ptr %nvm_release_on_done49.i to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 1, ptr %nvm_release_on_done49.i, align 4
  %nvm_wait_opcode50.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 29
  %382 = ptrtoint ptr %nvm_wait_opcode50.i to i32
  call void @__asan_store2_noabort(i32 %382)
  store i16 1795, ptr %nvm_wait_opcode50.i, align 2
  %383 = ptrtoint ptr %nvmupd_state62 to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 3, ptr %nvmupd_state62, align 8
  br label %sw.epilog

do.body.i252:                                     ; preds = %retry.i
  %384 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %debug_mask, align 8
  %and.i251 = and i32 %385, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i251)
  %tobool53.not.i = icmp eq i32 %and.i251, 0
  br i1 %tobool53.not.i, label %do.body.i252.do.end63.i_crit_edge, label %do.end.i254

do.body.i252.do.end63.i_crit_edge:                ; preds = %do.body.i252
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end63.i

do.end.i254:                                      ; preds = %do.body.i252
  call void @__sanitizer_cov_trace_pc() #7
  %386 = ptrtoint ptr %bus_id.i221 to i32
  call void @__asan_load2_noabort(i32 %386)
  %387 = load i16, ptr %bus_id.i221, align 2
  %conv.i253 = zext i16 %387 to i32
  %388 = ptrtoint ptr %device.i222 to i32
  call void @__asan_load2_noabort(i32 %388)
  %389 = load i16, ptr %device.i222, align 2
  %conv57.i = zext i16 %389 to i32
  %390 = ptrtoint ptr %func.i223 to i32
  call void @__asan_load2_noabort(i32 %390)
  %391 = load i16, ptr %func.i223, align 4
  %conv59.i = zext i16 %391 to i32
  %392 = ptrtoint ptr %arrayidx.i224 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %arrayidx.i224, align 4
  %call60.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %conv.i253, i32 noundef %conv57.i, i32 noundef %conv59.i, ptr noundef %393) #8
  br label %do.end63.i

do.end63.i:                                       ; preds = %do.end.i254, %do.body.i252.do.end63.i_crit_edge
  %394 = ptrtoint ptr %perrno to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 -3, ptr %perrno, align 4
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end63.i, %cond.end45.i, %cond.end26.i, %cond.end.i242, %sw.bb.i229.land.lhs.true.i_crit_edge
  %status.0.ph.i = phi i32 [ %call1.i227, %sw.bb.i229.land.lhs.true.i_crit_edge ], [ %call3.i232, %cond.end.i242 ], [ %call15.i, %cond.end26.i ], [ %call34.i247, %cond.end45.i ], [ -64, %do.end63.i ]
  %395 = ptrtoint ptr %asq_last_status38.i218 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %asq_last_status38.i218, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %396)
  %cmp.i = icmp ne i32 %396, 12
  %brmerge.i = or i1 %retry_attempt.0.off0.i, %cmp.i
  br i1 %brmerge.i, label %land.lhs.true.i.sw.epilog_crit_edge, label %if.then70.i

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then70.i:                                      ; preds = %land.lhs.true.i
  %397 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %398, i32 557500
  %399 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !238
  %400 = tail call i32 @llvm.bswap.i32(i32 %399) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !245
  %conv76.i = zext i32 %400 to i64
  %401 = ptrtoint ptr %nvm.i to i32
  call void @__asan_load8_noabort(i32 %401)
  %402 = load i64, ptr %nvm.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %402, i64 %conv76.i)
  %cmp77.not.i = icmp ugt i64 %402, %conv76.i
  br i1 %cmp77.not.i, label %if.then70.i.sw.epilog_crit_edge, label %do.body80.i

if.then70.i.sw.epilog_crit_edge:                  ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body80.i:                                      ; preds = %if.then70.i
  %403 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %debug_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %404)
  %tobool83.not.i = icmp eq i32 %404, 0
  br i1 %tobool83.not.i, label %do.body80.i.do.end103.i_crit_edge, label %do.end87.i

do.body80.i.do.end103.i_crit_edge:                ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end103.i

do.end87.i:                                       ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #7
  %405 = ptrtoint ptr %bus_id.i221 to i32
  call void @__asan_load2_noabort(i32 %405)
  %406 = load i16, ptr %bus_id.i221, align 2
  %conv91.i = zext i16 %406 to i32
  %407 = ptrtoint ptr %device.i222 to i32
  call void @__asan_load2_noabort(i32 %407)
  %408 = load i16, ptr %device.i222, align 2
  %conv94.i = zext i16 %408 to i32
  %409 = ptrtoint ptr %func.i223 to i32
  call void @__asan_load2_noabort(i32 %409)
  %410 = load i16, ptr %func.i223, align 4
  %conv97.i = zext i16 %410 to i32
  %call100.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i32 noundef %conv91.i, i32 noundef %conv94.i, i32 noundef %conv97.i, i32 noundef %400, i64 noundef %402) #8
  br label %do.end103.i

do.end103.i:                                      ; preds = %do.end87.i, %do.body80.i.do.end103.i_crit_edge
  %411 = ptrtoint ptr %blank_nvm_mode.i.i225 to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %blank_nvm_mode.i.i225, align 2, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %412)
  %tobool.not.i.i255 = icmp eq i8 %412, 0
  br i1 %tobool.not.i.i255, label %if.end.i226.i258, label %do.end103.i.i40e_release_nvm.exit.i264_crit_edge

do.end103.i.i40e_release_nvm.exit.i264_crit_edge: ; preds = %do.end103.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_release_nvm.exit.i264

if.end.i226.i258:                                 ; preds = %do.end103.i
  %call.i.i256 = tail call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call.i.i256)
  %cmp8.i.i257 = icmp eq i32 %call.i.i256, -54
  br i1 %cmp8.i.i257, label %if.end.i226.i258.land.rhs.i.i260_crit_edge, label %if.end.i226.i258.i40e_release_nvm.exit.i264_crit_edge

if.end.i226.i258.i40e_release_nvm.exit.i264_crit_edge: ; preds = %if.end.i226.i258
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_release_nvm.exit.i264

if.end.i226.i258.land.rhs.i.i260_crit_edge:       ; preds = %if.end.i226.i258
  br label %land.rhs.i.i260

land.rhs.i.i260:                                  ; preds = %while.body.i.i263.land.rhs.i.i260_crit_edge, %if.end.i226.i258.land.rhs.i.i260_crit_edge
  %total_delay.09.i.i259 = phi i32 [ %inc.i.i262, %while.body.i.i263.land.rhs.i.i260_crit_edge ], [ 0, %if.end.i226.i258.land.rhs.i.i260_crit_edge ]
  %413 = ptrtoint ptr %asq_cmd_timeout.i.i226 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %asq_cmd_timeout.i.i226, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %total_delay.09.i.i259, i32 %414)
  %cmp1.i227.i = icmp ult i32 %total_delay.09.i.i259, %414
  br i1 %cmp1.i227.i, label %while.body.i.i263, label %land.rhs.i.i260.i40e_release_nvm.exit.i264_crit_edge

land.rhs.i.i260.i40e_release_nvm.exit.i264_crit_edge: ; preds = %land.rhs.i.i260
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_release_nvm.exit.i264

while.body.i.i263:                                ; preds = %land.rhs.i.i260
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %call2.i.i261 = tail call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #5
  %inc.i.i262 = add nuw i32 %total_delay.09.i.i259, 1
  %cmp.i228.i = icmp eq i32 %call2.i.i261, -54
  br i1 %cmp.i228.i, label %while.body.i.i263.land.rhs.i.i260_crit_edge, label %while.body.i.i263.i40e_release_nvm.exit.i264_crit_edge

while.body.i.i263.i40e_release_nvm.exit.i264_crit_edge: ; preds = %while.body.i.i263
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_release_nvm.exit.i264

while.body.i.i263.land.rhs.i.i260_crit_edge:      ; preds = %while.body.i.i263
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i.i260

i40e_release_nvm.exit.i264:                       ; preds = %while.body.i.i263.i40e_release_nvm.exit.i264_crit_edge, %land.rhs.i.i260.i40e_release_nvm.exit.i264_crit_edge, %if.end.i226.i258.i40e_release_nvm.exit.i264_crit_edge, %do.end103.i.i40e_release_nvm.exit.i264_crit_edge
  %call104.i = tail call i32 @i40e_acquire_nvm(ptr noundef %hw, i32 noundef 2) #5
  %tobool105.not.i = icmp eq i32 %call104.i, 0
  br i1 %tobool105.not.i, label %i40e_release_nvm.exit.i264.retry.i_crit_edge, label %do.body107.i

i40e_release_nvm.exit.i264.retry.i_crit_edge:     ; preds = %i40e_release_nvm.exit.i264
  call void @__sanitizer_cov_trace_pc() #7
  br label %retry.i

do.body107.i:                                     ; preds = %i40e_release_nvm.exit.i264
  %415 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %debug_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %416)
  %tobool110.not.i = icmp eq i32 %416, 0
  br i1 %tobool110.not.i, label %do.body107.i.do.end130.i_crit_edge, label %do.end114.i

do.body107.i.do.end130.i_crit_edge:               ; preds = %do.body107.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end130.i

do.end114.i:                                      ; preds = %do.body107.i
  call void @__sanitizer_cov_trace_pc() #7
  %417 = ptrtoint ptr %bus_id.i221 to i32
  call void @__asan_load2_noabort(i32 %417)
  %418 = load i16, ptr %bus_id.i221, align 2
  %conv118.i = zext i16 %418 to i32
  %419 = ptrtoint ptr %device.i222 to i32
  call void @__asan_load2_noabort(i32 %419)
  %420 = load i16, ptr %device.i222, align 2
  %conv121.i = zext i16 %420 to i32
  %421 = ptrtoint ptr %func.i223 to i32
  call void @__asan_load2_noabort(i32 %421)
  %422 = load i16, ptr %func.i223, align 4
  %conv124.i = zext i16 %422 to i32
  %423 = ptrtoint ptr %asq_last_status38.i218 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %asq_last_status38.i218, align 8
  %call127.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %conv118.i, i32 noundef %conv121.i, i32 noundef %conv124.i, i32 noundef %424) #8
  br label %do.end130.i

do.end130.i:                                      ; preds = %do.end114.i, %do.body107.i.do.end130.i_crit_edge
  %425 = ptrtoint ptr %asq_last_status38.i218 to i32
  call void @__asan_store4_noabort(i32 %425)
  store i32 12, ptr %asq_last_status38.i218, align 8
  br label %sw.epilog

sw.bb96:                                          ; preds = %if.end89.sw.bb96_crit_edge, %if.end89.sw.bb96_crit_edge301
  %offset97 = getelementptr inbounds %struct.i40e_nvm_access, ptr %cmd, i32 0, i32 2
  %426 = ptrtoint ptr %offset97 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %offset97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %427)
  %cmp98 = icmp eq i32 %427, 65535
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i40e_nvmupd_clear_wait_state(ptr noundef %hw)
  br label %sw.epilog

if.end101:                                        ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #7
  %428 = ptrtoint ptr %perrno to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 -16, ptr %perrno, align 4
  br label %sw.epilog

do.body102:                                       ; preds = %if.end89
  %429 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %debug_mask, align 8
  %and104 = and i32 %430, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %do.body102.do.end124_crit_edge, label %do.end109

do.body102.do.end124_crit_edge:                   ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end124

do.end109:                                        ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id112 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %431 = ptrtoint ptr %bus_id112 to i32
  call void @__asan_load2_noabort(i32 %431)
  %432 = load i16, ptr %bus_id112, align 2
  %conv113 = zext i16 %432 to i32
  %device115 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %433 = ptrtoint ptr %device115 to i32
  call void @__asan_load2_noabort(i32 %433)
  %434 = load i16, ptr %device115, align 2
  %conv116 = zext i16 %434 to i32
  %func118 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %435 = ptrtoint ptr %func118 to i32
  call void @__asan_load2_noabort(i32 %435)
  %436 = load i16, ptr %func118, align 4
  %conv119 = zext i16 %436 to i32
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv113, i32 noundef %conv116, i32 noundef %conv119, i32 noundef %63) #8
  br label %do.end124

do.end124:                                        ; preds = %do.end109, %do.body102.do.end124_crit_edge
  %437 = ptrtoint ptr %perrno to i32
  call void @__asan_store4_noabort(i32 %437)
  store i32 -3, ptr %perrno, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end124, %if.end101, %if.then100, %do.end130.i, %if.then70.i.sw.epilog_crit_edge, %land.lhs.true.i.sw.epilog_crit_edge, %if.else48.i, %if.else29.i246, %if.else.i244, %if.then.i231, %do.end11.i, %i40e_release_nvm.exit.i, %sw.bb.i190, %do.end105.i, %i40e_nvmupd_get_aq_event.exit.i, %do.end139.i.i, %if.end111.i.i.sw.epilog_crit_edge, %do.end33.i.i, %i40e_nvmupd_exec_aq.exit.i, %if.else83.i, %while.body.i313.i.sw.epilog_crit_edge, %land.rhs.i309.i.sw.epilog_crit_edge, %if.end.i306.i.sw.epilog_crit_edge, %cond.end.i.sw.epilog_crit_edge, %i40e_aq_rc_to_posix.exit293.i, %if.else61.i, %while.body.i285.i.sw.epilog_crit_edge, %land.rhs.i281.i.sw.epilog_crit_edge, %if.end.i278.i.sw.epilog_crit_edge, %if.then60.i.sw.epilog_crit_edge, %i40e_aq_rc_to_posix.exit272.i, %if.else44.i, %while.body.i264.i.sw.epilog_crit_edge, %land.rhs.i260.i.sw.epilog_crit_edge, %if.end.i257.i.sw.epilog_crit_edge, %if.then43.i.sw.epilog_crit_edge, %i40e_aq_rc_to_posix.exit251.i, %if.else29.i, %while.body.i243.i.sw.epilog_crit_edge, %land.rhs.i239.i.sw.epilog_crit_edge, %if.end.i236.i.sw.epilog_crit_edge, %if.then28.i.sw.epilog_crit_edge, %i40e_aq_rc_to_posix.exit230.i, %if.else15.i, %while.body.i222.i.sw.epilog_crit_edge, %land.rhs.i218.i.sw.epilog_crit_edge, %if.end.i215.i.sw.epilog_crit_edge, %if.then14.i.sw.epilog_crit_edge, %i40e_aq_rc_to_posix.exit209.i, %while.body.i.i.sw.epilog_crit_edge, %land.rhs.i.i.sw.epilog_crit_edge, %if.end.i200.i.sw.epilog_crit_edge, %if.else.i.sw.epilog_crit_edge, %i40e_aq_rc_to_posix.exit.i
  %status.0 = phi i32 [ -64, %do.end124 ], [ 0, %if.then100 ], [ -63, %if.end101 ], [ -1, %do.end105.i ], [ 0, %i40e_nvmupd_get_aq_event.exit.i ], [ %retval.0.i338.i, %i40e_nvmupd_exec_aq.exit.i ], [ %call67.i, %i40e_aq_rc_to_posix.exit293.i ], [ 0, %if.else83.i ], [ %call51.i, %i40e_aq_rc_to_posix.exit272.i ], [ 0, %if.else61.i ], [ %call34.i, %i40e_aq_rc_to_posix.exit251.i ], [ 0, %if.else44.i ], [ %call19.i, %i40e_aq_rc_to_posix.exit230.i ], [ 0, %if.else29.i ], [ %call5.i, %i40e_aq_rc_to_posix.exit209.i ], [ 0, %if.else15.i ], [ %call1.i, %i40e_aq_rc_to_posix.exit.i ], [ %call3.i, %if.else.i.sw.epilog_crit_edge ], [ %call3.i, %if.end.i200.i.sw.epilog_crit_edge ], [ %call12.i, %if.then14.i.sw.epilog_crit_edge ], [ %call12.i, %if.end.i215.i.sw.epilog_crit_edge ], [ %call5.i.i, %if.then28.i.sw.epilog_crit_edge ], [ %call5.i.i, %if.end.i236.i.sw.epilog_crit_edge ], [ %call41.i, %if.then43.i.sw.epilog_crit_edge ], [ %call41.i, %if.end.i257.i.sw.epilog_crit_edge ], [ %call58.i, %if.then60.i.sw.epilog_crit_edge ], [ %call58.i, %if.end.i278.i.sw.epilog_crit_edge ], [ %call74.i, %cond.end.i.sw.epilog_crit_edge ], [ %call74.i, %if.end.i306.i.sw.epilog_crit_edge ], [ -5, %do.end33.i.i ], [ 0, %do.end139.i.i ], [ 0, %if.end111.i.i.sw.epilog_crit_edge ], [ -64, %do.end11.i ], [ %call3.i191, %i40e_release_nvm.exit.i ], [ %call1.i189, %sw.bb.i190 ], [ 0, %if.else48.i ], [ 0, %if.else29.i246 ], [ 0, %if.else.i244 ], [ 0, %if.then.i231 ], [ %status.0.ph.i, %do.end130.i ], [ %call3.i, %land.rhs.i.i.sw.epilog_crit_edge ], [ %call3.i, %while.body.i.i.sw.epilog_crit_edge ], [ %call12.i, %land.rhs.i218.i.sw.epilog_crit_edge ], [ %call12.i, %while.body.i222.i.sw.epilog_crit_edge ], [ %call5.i.i, %land.rhs.i239.i.sw.epilog_crit_edge ], [ %call5.i.i, %while.body.i243.i.sw.epilog_crit_edge ], [ %call41.i, %land.rhs.i260.i.sw.epilog_crit_edge ], [ %call41.i, %while.body.i264.i.sw.epilog_crit_edge ], [ %call58.i, %land.rhs.i281.i.sw.epilog_crit_edge ], [ %call58.i, %while.body.i285.i.sw.epilog_crit_edge ], [ %call74.i, %land.rhs.i309.i.sw.epilog_crit_edge ], [ %call74.i, %while.body.i313.i.sw.epilog_crit_edge ], [ %status.0.ph.i, %land.lhs.true.i.sw.epilog_crit_edge ], [ %status.0.ph.i, %if.then70.i.sw.epilog_crit_edge ]
  call void @mutex_unlock(ptr noundef %arq_mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then58, %if.end54.cleanup_crit_edge, %if.then42
  %retval.0 = phi i32 [ -55, %if.then42 ], [ %status.0, %sw.epilog ], [ 0, %if.then58 ], [ 0, %if.end54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_nvmupd_validate_command(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %cmd, ptr nocapture noundef writeonly %perrno) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.i40e_nvm_access, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = lshr i32 %1, 8
  %2 = trunc i32 %and.i to i4
  %conv.i66 = trunc i32 %1 to i8
  %data_size = getelementptr inbounds %struct.i40e_nvm_access, ptr %cmd, i32 0, i32 3
  %3 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_size, align 4
  %5 = add i32 %4, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %5)
  %6 = icmp ult i32 %5, -4096
  br i1 %6, label %do.body, label %if.end15

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %7 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug_mask, align 8
  %and = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end14_crit_edge, label %do.end

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %9 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %bus_id, align 2
  %conv = zext i16 %10 to i32
  %device = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %device, align 2
  %conv8 = zext i16 %12 to i32
  %func = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %func, align 4
  %conv10 = zext i16 %14 to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i32 noundef %conv, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %4) #8
  br label %do.end14

do.end14:                                         ; preds = %do.end, %do.body.do.end14_crit_edge
  %15 = ptrtoint ptr %perrno to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -14, ptr %perrno, align 4
  br label %cleanup

if.end15:                                         ; preds = %entry
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cmd, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %17, label %if.end15.cleanup_crit_edge [
    i32 11, label %sw.bb
    i32 12, label %sw.bb33
  ]

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end15
  %19 = zext i4 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.133)
  switch i4 %2, label %sw.bb.cleanup_crit_edge [
    i4 0, label %sw.bb17
    i4 1, label %sw.bb18
    i4 2, label %sw.bb19
    i4 3, label %sw.bb20
    i4 -1, label %sw.bb21
    i4 -2, label %sw.bb32
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb17:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb18:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb19:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb20:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb21:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i66)
  %switch.selectcmp = icmp eq i8 %conv.i66, 0
  %switch.select = select i1 %switch.selectcmp, i32 15, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %conv.i66)
  %switch.selectcmp64 = icmp eq i8 %conv.i66, 15
  %switch.select65 = select i1 %switch.selectcmp64, i32 13, i32 %switch.select
  br label %cleanup

sw.bb32:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb33:                                          ; preds = %if.end15
  %20 = zext i4 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.134)
  switch i4 %2, label %sw.bb33.cleanup_crit_edge [
    i4 0, label %sw.bb35
    i4 1, label %sw.bb36
    i4 2, label %sw.bb37
    i4 3, label %sw.bb38
    i4 4, label %sw.bb39
    i4 -8, label %sw.bb40
    i4 -5, label %sw.bb41
    i4 -6, label %sw.bb42
    i4 -1, label %sw.bb43
  ]

sw.bb33.cleanup_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb35:                                          ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb36:                                          ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb37:                                          ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb38:                                          ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb39:                                          ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb40:                                          ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb41:                                          ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb42:                                          ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb43:                                          ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i66)
  %cmp45 = icmp eq i8 %conv.i66, 0
  %spec.select = select i1 %cmp45, i32 14, i32 0
  br label %cleanup

cleanup:                                          ; preds = %sw.bb43, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb33.cleanup_crit_edge, %sw.bb32, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %do.end14
  %retval.0 = phi i32 [ 0, %do.end14 ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %sw.bb33.cleanup_crit_edge ], [ 12, %sw.bb42 ], [ 11, %sw.bb41 ], [ 10, %sw.bb40 ], [ 5, %sw.bb39 ], [ 9, %sw.bb38 ], [ 8, %sw.bb37 ], [ 7, %sw.bb36 ], [ 6, %sw.bb35 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 16, %sw.bb32 ], [ 4, %sw.bb20 ], [ 3, %sw.bb19 ], [ 2, %sw.bb18 ], [ 1, %sw.bb17 ], [ %spec.select, %sw.bb43 ], [ %switch.select65, %sw.bb21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_nvmupd_clear_wait_state(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %debug_mask = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %0 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug_mask, align 8
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bus_id, align 2
  %conv = zext i16 %3 to i32
  %device = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  %conv3 = zext i16 %5 to i32
  %func = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %func, align 4
  %conv5 = zext i16 %7 to i32
  %nvm_wait_opcode = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 29
  %8 = ptrtoint ptr %nvm_wait_opcode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nvm_wait_opcode, align 2
  %conv6 = zext i16 %9 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv5, i32 noundef %conv6) #8
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %nvm_release_on_done = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 28
  %10 = ptrtoint ptr %nvm_release_on_done to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nvm_release_on_done, align 4, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool8.not = icmp eq i8 %11, 0
  br i1 %tobool8.not, label %do.end7.if.end11_crit_edge, label %if.then9

do.end7.if.end11_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then9:                                         ; preds = %do.end7
  %blank_nvm_mode.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 3
  %12 = ptrtoint ptr %blank_nvm_mode.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %blank_nvm_mode.i, align 2, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then9.i40e_release_nvm.exit_crit_edge

if.then9.i40e_release_nvm.exit_crit_edge:         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_release_nvm.exit

if.end.i:                                         ; preds = %if.then9
  %call.i = tail call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #5
  %asq_cmd_timeout.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call.i)
  %cmp8.i = icmp eq i32 %call.i, -54
  br i1 %cmp8.i, label %if.end.i.land.rhs.i_crit_edge, label %if.end.i.i40e_release_nvm.exit_crit_edge

if.end.i.i40e_release_nvm.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_release_nvm.exit

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end.i.land.rhs.i_crit_edge
  %total_delay.09.i = phi i32 [ %inc.i, %while.body.i.land.rhs.i_crit_edge ], [ 0, %if.end.i.land.rhs.i_crit_edge ]
  %14 = ptrtoint ptr %asq_cmd_timeout.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %asq_cmd_timeout.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %total_delay.09.i, i32 %15)
  %cmp1.i = icmp ult i32 %total_delay.09.i, %15
  br i1 %cmp1.i, label %while.body.i, label %land.rhs.i.i40e_release_nvm.exit_crit_edge

land.rhs.i.i40e_release_nvm.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_release_nvm.exit

while.body.i:                                     ; preds = %land.rhs.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %call2.i = tail call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #5
  %inc.i = add nuw i32 %total_delay.09.i, 1
  %cmp.i = icmp eq i32 %call2.i, -54
  br i1 %cmp.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.i40e_release_nvm.exit_crit_edge

while.body.i.i40e_release_nvm.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_release_nvm.exit

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

i40e_release_nvm.exit:                            ; preds = %while.body.i.i40e_release_nvm.exit_crit_edge, %land.rhs.i.i40e_release_nvm.exit_crit_edge, %if.end.i.i40e_release_nvm.exit_crit_edge, %if.then9.i40e_release_nvm.exit_crit_edge
  %16 = ptrtoint ptr %nvm_release_on_done to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %nvm_release_on_done, align 4
  br label %if.end11

if.end11:                                         ; preds = %i40e_release_nvm.exit, %do.end7.if.end11_crit_edge
  %nvm_wait_opcode12 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 29
  %17 = ptrtoint ptr %nvm_wait_opcode12 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %nvm_wait_opcode12, align 2
  %arq_last_status = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 15
  %18 = ptrtoint ptr %arq_last_status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arq_last_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool13.not = icmp eq i32 %19, 0
  %nvmupd_state16 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 24
  br i1 %tobool13.not, label %if.end15, label %if.end11.sw.epilog.sink.split_crit_edge

if.end11.sw.epilog.sink.split_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.end15:                                         ; preds = %if.end11
  %20 = ptrtoint ptr %nvmupd_state16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nvmupd_state16, align 8
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %21, label %if.end15.sw.epilog_crit_edge [
    i32 3, label %if.end15.sw.epilog.sink.split_crit_edge
    i32 4, label %sw.bb18
  ]

if.end15.sw.epilog.sink.split_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb18, %if.end15.sw.epilog.sink.split_crit_edge, %if.end11.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 2, %sw.bb18 ], [ 5, %if.end11.sw.epilog.sink.split_crit_edge ], [ 0, %if.end15.sw.epilog.sink.split_crit_edge ]
  %23 = ptrtoint ptr %nvmupd_state16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %nvmupd_state16, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end15.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_nvmupd_check_wait_event(ptr noundef %hw, i16 noundef zeroext %opcode, ptr nocapture noundef readonly %desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm_wait_opcode = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 29
  %0 = ptrtoint ptr %nvm_wait_opcode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nvm_wait_opcode, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %opcode)
  %cmp = icmp eq i16 %1, %opcode
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %nvm_aq_event_desc = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 26
  %2 = call ptr @memcpy(ptr %nvm_aq_event_desc, ptr %desc, i32 32)
  tail call void @i40e_nvmupd_clear_wait_state(ptr noundef %hw)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_read_nvm_word_srctl(ptr noundef readonly %hw, i16 noundef zeroext %offset, ptr nocapture noundef writeonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %offset to i32
  %sr_size = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %sr_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sr_size, align 4
  %conv1 = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %offset)
  %cmp.not = icmp ugt i16 %1, %offset
  br i1 %cmp.not, label %entry.for.body.i_crit_edge, label %do.body

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %2 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_mask, align 8
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.read_nvm_exit_crit_edge, label %do.end

do.body.read_nvm_exit_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_nvm_exit

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %4 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bus_id, align 2
  %conv5 = zext i16 %5 to i32
  %device = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  %conv7 = zext i16 %7 to i32
  %func = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %func, align 4
  %conv9 = zext i16 %9 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv5, i32 noundef %conv7, i32 noundef %conv9, i32 noundef %conv, i32 noundef %conv1) #8
  br label %read_nvm_exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %wait_cnt.026.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 745744
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !246
  %.mask.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then19

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 1073740) #5
  %inc.i = add nuw nsw i32 %wait_cnt.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100000
  br i1 %exitcond.not.i, label %do.body.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.body.i:                                        ; preds = %if.end.i
  %debug_mask.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %14 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug_mask.i, align 8
  %and4.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %do.body.i.do.body38_crit_edge, label %do.body.i.do.body38.sink.split_crit_edge

do.body.i.do.body38.sink.split_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body38.sink.split

do.body.i.do.body38_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body38

if.then19:                                        ; preds = %for.body.i
  %shl = shl nuw nsw i32 %conv, 14
  %or = or i32 %shl, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !247
  tail call void @arm_heavy_mb() #5
  %16 = tail call i32 @llvm.bswap.i32(i32 %or)
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %18, i32 745744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %16) #5, !srcloc !248
  br label %for.body.i86

for.body.i86:                                     ; preds = %if.end.i89.for.body.i86_crit_edge, %if.then19
  %wait_cnt.026.i82 = phi i32 [ 0, %if.then19 ], [ %inc.i87, %if.end.i89.for.body.i86_crit_edge ]
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 8
  %add.ptr.i83 = getelementptr i8, ptr %20, i32 745744
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i83) #5, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !246
  %.mask.i84 = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i84)
  %tobool.not.i85 = icmp eq i32 %.mask.i84, 0
  br i1 %tobool.not.i85, label %if.end.i89, label %if.end35

if.end.i89:                                       ; preds = %for.body.i86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 1073740) #5
  %inc.i87 = add nuw nsw i32 %wait_cnt.026.i82, 1
  %exitcond.not.i88 = icmp eq i32 %inc.i87, 100000
  br i1 %exitcond.not.i88, label %do.body.i93, label %if.end.i89.for.body.i86_crit_edge

if.end.i89.for.body.i86_crit_edge:                ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i86

do.body.i93:                                      ; preds = %if.end.i89
  %debug_mask.i90 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %23 = ptrtoint ptr %debug_mask.i90 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug_mask.i90, align 8
  %and4.i91 = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i91)
  %tobool5.not.i92 = icmp eq i32 %and4.i91, 0
  br i1 %tobool5.not.i92, label %do.body.i93.do.body38_crit_edge, label %do.body.i93.do.body38.sink.split_crit_edge

do.body.i93.do.body38.sink.split_crit_edge:       ; preds = %do.body.i93
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body38.sink.split

do.body.i93.do.body38_crit_edge:                  ; preds = %do.body.i93
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body38

if.end35:                                         ; preds = %for.body.i86
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 8
  %add.ptr28 = getelementptr i8, ptr %26, i32 745748
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #5, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !249
  %28 = and i32 %27, 65535
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %shr = lshr exact i32 %29, 16
  %conv33 = trunc i32 %shr to i16
  %30 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv33, ptr %data, align 2
  br label %read_nvm_exit

do.body38.sink.split:                             ; preds = %do.body.i93.do.body38.sink.split_crit_edge, %do.body.i.do.body38.sink.split_crit_edge
  %bus_id.i94 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %31 = ptrtoint ptr %bus_id.i94 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %bus_id.i94, align 2
  %conv.i95 = zext i16 %32 to i32
  %device.i96 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %33 = ptrtoint ptr %device.i96 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %device.i96, align 2
  %conv10.i97 = zext i16 %34 to i32
  %func.i98 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %35 = ptrtoint ptr %func.i98 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %func.i98, align 4
  %conv12.i99 = zext i16 %36 to i32
  %call13.i100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %conv.i95, i32 noundef %conv10.i97, i32 noundef %conv12.i99) #8
  br label %do.body38

do.body38:                                        ; preds = %do.body38.sink.split, %do.body.i93.do.body38_crit_edge, %do.body.i.do.body38_crit_edge
  %debug_mask39 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %37 = ptrtoint ptr %debug_mask39 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %debug_mask39, align 8
  %and40 = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body38.read_nvm_exit_crit_edge, label %do.end45

do.body38.read_nvm_exit_crit_edge:                ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_nvm_exit

do.end45:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id48 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %39 = ptrtoint ptr %bus_id48 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %bus_id48, align 2
  %conv49 = zext i16 %40 to i32
  %device51 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %41 = ptrtoint ptr %device51 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %device51, align 2
  %conv52 = zext i16 %42 to i32
  %func54 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %43 = ptrtoint ptr %func54 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %func54, align 4
  %conv55 = zext i16 %44 to i32
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %conv49, i32 noundef %conv52, i32 noundef %conv55, i32 noundef %conv) #8
  br label %read_nvm_exit

read_nvm_exit:                                    ; preds = %do.end45, %do.body38.read_nvm_exit_crit_edge, %if.end35, %do.end, %do.body.read_nvm_exit_crit_edge
  %ret_code.1 = phi i32 [ -37, %do.end45 ], [ -37, %do.body38.read_nvm_exit_crit_edge ], [ 0, %if.end35 ], [ -5, %do.end ], [ -5, %do.body.read_nvm_exit_crit_edge ]
  ret i32 %ret_code.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_read_nvm_aq(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %words, ptr noundef %data, i1 noundef zeroext %last_command) unnamed_addr #0 align 64 {
entry:
  %cmd_details = alloca %struct.i40e_asq_cmd_details, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd_details) #5
  %0 = call ptr @memset(ptr %cmd_details, i32 0, i32 32)
  %nvm_wb_desc = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 25
  %wb_desc = getelementptr inbounds %struct.i40e_asq_cmd_details, ptr %cmd_details, i32 0, i32 6
  %1 = ptrtoint ptr %wb_desc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %nvm_wb_desc, ptr %wb_desc, align 8
  %conv = zext i16 %words to i32
  %add = add i32 %conv, %offset
  %sr_size = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %sr_size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sr_size, align 4
  %conv1 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv1)
  %cmp = icmp ugt i32 %add, %conv1
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %4 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_mask, align 8
  %and = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.if.end82_crit_edge, label %do.end

do.body.if.end82_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %6 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bus_id, align 2
  %conv5 = zext i16 %7 to i32
  %device = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device, align 2
  %conv7 = zext i16 %9 to i32
  %func = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %func, align 4
  %conv9 = zext i16 %11 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %conv5, i32 noundef %conv7, i32 noundef %conv9, i32 noundef %add, i32 noundef %conv1) #8
  br label %if.end82

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %words)
  %cmp18 = icmp ugt i16 %words, 2048
  br i1 %cmp18, label %do.body21, label %if.else44

do.body21:                                        ; preds = %if.else
  %debug_mask22 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %12 = ptrtoint ptr %debug_mask22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug_mask22, align 8
  %and23 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body21.if.end82_crit_edge, label %do.end28

do.body21.if.end82_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

do.end28:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id31 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %14 = ptrtoint ptr %bus_id31 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %bus_id31, align 2
  %conv32 = zext i16 %15 to i32
  %device34 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %16 = ptrtoint ptr %device34 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %device34, align 2
  %conv35 = zext i16 %17 to i32
  %func37 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %func37 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %func37, align 4
  %conv38 = zext i16 %19 to i32
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %conv32, i32 noundef %conv35, i32 noundef %conv38, i32 noundef %conv, i32 noundef 2048) #8
  br label %if.end82

if.else44:                                        ; preds = %if.else
  %add46 = add i32 %add, -1
  %cmp48.not.unshifted = xor i32 %add46, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %cmp48.not.unshifted)
  %cmp48.not = icmp ult i32 %cmp48.not.unshifted, 2048
  br i1 %cmp48.not, label %if.else74, label %do.body51

do.body51:                                        ; preds = %if.else44
  %debug_mask52 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %20 = ptrtoint ptr %debug_mask52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %debug_mask52, align 8
  %and53 = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body51.if.end82_crit_edge, label %do.end58

do.body51.if.end82_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

do.end58:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id61 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %22 = ptrtoint ptr %bus_id61 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %bus_id61, align 2
  %conv62 = zext i16 %23 to i32
  %device64 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %24 = ptrtoint ptr %device64 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %device64, align 2
  %conv65 = zext i16 %25 to i32
  %func67 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %26 = ptrtoint ptr %func67 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %func67, align 4
  %conv68 = zext i16 %27 to i32
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv62, i32 noundef %conv65, i32 noundef %conv68, i32 noundef %offset, i32 noundef %conv) #8
  br label %if.end82

if.else74:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #7
  %mul = shl i32 %offset, 1
  %mul76 = shl nuw nsw i16 %words, 1
  %call79 = call i32 @i40e_aq_read_nvm(ptr noundef %hw, i8 noundef zeroext 0, i32 noundef %mul, i16 noundef zeroext %mul76, ptr noundef %data, i1 noundef zeroext %last_command, ptr noundef nonnull %cmd_details) #5
  br label %if.end82

if.end82:                                         ; preds = %if.else74, %do.end58, %do.body51.if.end82_crit_edge, %do.end28, %do.body21.if.end82_crit_edge, %do.end, %do.body.if.end82_crit_edge
  %ret_code.0 = phi i32 [ -1, %do.end ], [ -1, %do.body.if.end82_crit_edge ], [ -1, %do.end28 ], [ -1, %do.body21.if.end82_crit_edge ], [ -1, %do.end58 ], [ -1, %do.body51.if.end82_crit_edge ], [ %call79, %if.else74 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd_details) #5
  ret i32 %ret_code.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_read_nvm(ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_allocate_virt_mem_d(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_free_virt_mem_d(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_update_nvm(ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_nvmupd_nvm_read(ptr noundef %hw, ptr nocapture noundef readonly %cmd, ptr noundef %bytes, ptr nocapture noundef writeonly %perrno) unnamed_addr #0 align 64 {
entry:
  %cmd_details = alloca %struct.i40e_asq_cmd_details, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd_details) #5
  %config = getelementptr inbounds %struct.i40e_nvm_access, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %conv.i71 = trunc i32 %1 to i8
  %2 = and i32 %1, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %2)
  %3 = icmp eq i32 %2, 512
  %4 = call ptr @memset(ptr %cmd_details, i32 0, i32 32)
  %nvm_wb_desc = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 25
  %wb_desc = getelementptr inbounds %struct.i40e_asq_cmd_details, ptr %cmd_details, i32 0, i32 6
  %5 = ptrtoint ptr %wb_desc to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %nvm_wb_desc, ptr %wb_desc, align 8
  %offset = getelementptr inbounds %struct.i40e_nvm_access, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %data_size = getelementptr inbounds %struct.i40e_nvm_access, ptr %cmd, i32 0, i32 3
  %8 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_size, align 4
  %conv7 = trunc i32 %9 to i16
  %call8 = call i32 @i40e_aq_read_nvm(ptr noundef %hw, i8 noundef zeroext %conv.i71, i32 noundef %7, i16 noundef zeroext %conv7, ptr noundef %bytes, i1 noundef zeroext %3, ptr noundef nonnull %cmd_details) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %entry.if.end49_crit_edge, label %do.body

entry.if.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %10 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug_mask, align 8
  %and = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body.do.body24_crit_edge, label %do.end

do.body.do.body24_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body24

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %12 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bus_id, align 2
  %conv13 = zext i16 %13 to i32
  %device = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %device, align 2
  %conv15 = zext i16 %15 to i32
  %func = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %func, align 4
  %conv17 = zext i16 %17 to i32
  %conv18 = and i32 %1, 255
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset, align 4
  %20 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_size, align 4
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %conv13, i32 noundef %conv15, i32 noundef %conv17, i32 noundef %conv18, i32 noundef %19, i32 noundef %21) #8
  br label %do.body24

do.body24:                                        ; preds = %do.end, %do.body.do.body24_crit_edge
  %22 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug_mask, align 8
  %and26 = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body24.do.end45_crit_edge, label %do.end31

do.body24.do.end45_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end45

do.end31:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id34 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %24 = ptrtoint ptr %bus_id34 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %bus_id34, align 2
  %conv35 = zext i16 %25 to i32
  %device37 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %26 = ptrtoint ptr %device37 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %device37, align 2
  %conv38 = zext i16 %27 to i32
  %func40 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %28 = ptrtoint ptr %func40 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %func40, align 4
  %conv41 = zext i16 %29 to i32
  %asq_last_status = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  %30 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %asq_last_status, align 8
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %conv35, i32 noundef %conv38, i32 noundef %conv41, i32 noundef %call8, i32 noundef %31) #8
  br label %do.end45

do.end45:                                         ; preds = %do.end31, %do.body24.do.end45_crit_edge
  %asq_last_status47 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  %32 = ptrtoint ptr %asq_last_status47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %asq_last_status47, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call8)
  %cmp.i = icmp eq i32 %call8, -54
  br i1 %cmp.i, label %do.end45.i40e_aq_rc_to_posix.exit_crit_edge, label %if.end.i

do.end45.i40e_aq_rc_to_posix.exit_crit_edge:      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_aq_rc_to_posix.exit

if.end.i:                                         ; preds = %do.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %33)
  %cmp1.i = icmp ult i32 %33, 23
  br i1 %cmp1.i, label %if.end3.i, label %if.end.i.i40e_aq_rc_to_posix.exit_crit_edge

if.end.i.i40e_aq_rc_to_posix.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_aq_rc_to_posix.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr [23 x i32], ptr @__const.i40e_aq_rc_to_posix.aq_to_posix, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  br label %i40e_aq_rc_to_posix.exit

i40e_aq_rc_to_posix.exit:                         ; preds = %if.end3.i, %if.end.i.i40e_aq_rc_to_posix.exit_crit_edge, %do.end45.i40e_aq_rc_to_posix.exit_crit_edge
  %retval.0.i = phi i32 [ %35, %if.end3.i ], [ -11, %do.end45.i40e_aq_rc_to_posix.exit_crit_edge ], [ -34, %if.end.i.i40e_aq_rc_to_posix.exit_crit_edge ]
  %36 = ptrtoint ptr %perrno to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.i, ptr %perrno, align 4
  br label %if.end49

if.end49:                                         ; preds = %i40e_aq_rc_to_posix.exit, %entry.if.end49_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd_details) #5
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_nvmupd_nvm_write(ptr noundef %hw, ptr nocapture noundef readonly %cmd, ptr noundef %bytes, ptr nocapture noundef writeonly %perrno) unnamed_addr #0 align 64 {
entry:
  %cmd_details = alloca %struct.i40e_asq_cmd_details, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd_details) #5
  %config = getelementptr inbounds %struct.i40e_nvm_access, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %conv.i71 = trunc i32 %1 to i8
  %2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  %and.i72 = lshr i32 %1, 12
  %3 = trunc i32 %and.i72 to i8
  %conv.i73 = and i8 %3, 3
  %4 = call ptr @memset(ptr %cmd_details, i32 0, i32 32)
  %nvm_wb_desc = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 25
  %wb_desc = getelementptr inbounds %struct.i40e_asq_cmd_details, ptr %cmd_details, i32 0, i32 6
  %5 = ptrtoint ptr %wb_desc to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %nvm_wb_desc, ptr %wb_desc, align 8
  %offset = getelementptr inbounds %struct.i40e_nvm_access, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %data_size = getelementptr inbounds %struct.i40e_nvm_access, ptr %cmd, i32 0, i32 3
  %8 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_size, align 4
  %conv5 = trunc i32 %9 to i16
  %call7 = call i32 @i40e_aq_update_nvm(ptr noundef %hw, i8 noundef zeroext %conv.i71, i32 noundef %7, i16 noundef zeroext %conv5, ptr noundef %bytes, i1 noundef zeroext %tobool, i8 noundef zeroext %conv.i73, ptr noundef nonnull %cmd_details) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %entry.if.end49_crit_edge, label %do.body

entry.if.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %10 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug_mask, align 8
  %and9 = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body.do.body24_crit_edge, label %do.end

do.body.do.body24_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body24

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %12 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bus_id, align 2
  %conv13 = zext i16 %13 to i32
  %device = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %device, align 2
  %conv15 = zext i16 %15 to i32
  %func = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %func, align 4
  %conv17 = zext i16 %17 to i32
  %conv18 = and i32 %1, 255
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset, align 4
  %20 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_size, align 4
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %conv13, i32 noundef %conv15, i32 noundef %conv17, i32 noundef %conv18, i32 noundef %19, i32 noundef %21) #8
  br label %do.body24

do.body24:                                        ; preds = %do.end, %do.body.do.body24_crit_edge
  %22 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug_mask, align 8
  %and26 = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body24.do.end45_crit_edge, label %do.end31

do.body24.do.end45_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end45

do.end31:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  %bus_id34 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %24 = ptrtoint ptr %bus_id34 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %bus_id34, align 2
  %conv35 = zext i16 %25 to i32
  %device37 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %26 = ptrtoint ptr %device37 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %device37, align 2
  %conv38 = zext i16 %27 to i32
  %func40 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %28 = ptrtoint ptr %func40 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %func40, align 4
  %conv41 = zext i16 %29 to i32
  %asq_last_status = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  %30 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %asq_last_status, align 8
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %conv35, i32 noundef %conv38, i32 noundef %conv41, i32 noundef %call7, i32 noundef %31) #8
  br label %do.end45

do.end45:                                         ; preds = %do.end31, %do.body24.do.end45_crit_edge
  %asq_last_status47 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  %32 = ptrtoint ptr %asq_last_status47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %asq_last_status47, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -54, i32 %call7)
  %cmp.i = icmp eq i32 %call7, -54
  br i1 %cmp.i, label %do.end45.i40e_aq_rc_to_posix.exit_crit_edge, label %if.end.i

do.end45.i40e_aq_rc_to_posix.exit_crit_edge:      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_aq_rc_to_posix.exit

if.end.i:                                         ; preds = %do.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %33)
  %cmp1.i = icmp ult i32 %33, 23
  br i1 %cmp1.i, label %if.end3.i, label %if.end.i.i40e_aq_rc_to_posix.exit_crit_edge

if.end.i.i40e_aq_rc_to_posix.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_aq_rc_to_posix.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr [23 x i32], ptr @__const.i40e_aq_rc_to_posix.aq_to_posix, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  br label %i40e_aq_rc_to_posix.exit

i40e_aq_rc_to_posix.exit:                         ; preds = %if.end3.i, %if.end.i.i40e_aq_rc_to_posix.exit_crit_edge, %do.end45.i40e_aq_rc_to_posix.exit_crit_edge
  %retval.0.i = phi i32 [ %35, %if.end3.i ], [ -11, %do.end45.i40e_aq_rc_to_posix.exit_crit_edge ], [ -34, %if.end.i.i40e_aq_rc_to_posix.exit_crit_edge ]
  %36 = ptrtoint ptr %perrno to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.i, ptr %perrno, align 4
  br label %if.end49

if.end49:                                         ; preds = %i40e_aq_rc_to_posix.exit, %entry.if.end49_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd_details) #5
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_erase_nvm(ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_asq_send_command(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i40e_stat_str(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i40e_aq_str(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !93, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !208, !209, !210, !211, !213, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228}
!llvm.module.flags = !{!229, !230, !231, !232, !233, !234, !235, !236}
!llvm.ident = !{!237}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 41, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @i40e_init_nvm._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @i40e_init_nvm._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 74, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @i40e_acquire_nvm._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @i40e_acquire_nvm._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 96, i32 4}
!13 = !{ptr @i40e_acquire_nvm._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @i40e_acquire_nvm._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 348, i32 4}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @i40e_read_nvm_module_data._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @i40e_read_nvm_module_data._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 360, i32 3}
!22 = !{ptr @i40e_read_nvm_module_data._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @i40e_read_nvm_module_data._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 367, i32 3}
!26 = !{ptr @i40e_read_nvm_module_data._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @i40e_read_nvm_module_data._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @i40e_read_nvm_module_data._entry.16, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 377, i32 4}
!30 = !{ptr @i40e_read_nvm_module_data._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 389, i32 4}
!33 = !{ptr @i40e_read_nvm_module_data._entry.18, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @i40e_read_nvm_module_data._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 822, i32 2}
!37 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @i40e_nvmupd_command._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @i40e_nvmupd_command._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 830, i32 3}
!42 = !{ptr @i40e_nvmupd_command._entry.23, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @i40e_nvmupd_command._entry_ptr.25, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 860, i32 3}
!46 = !{ptr @i40e_nvmupd_command._entry.26, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @i40e_nvmupd_command._entry_ptr.28, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.30, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 904, i32 3}
!50 = !{ptr @i40e_nvmupd_command._entry.29, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @i40e_nvmupd_command._entry_ptr.31, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 1222, i32 2}
!54 = !{ptr @.str.33, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @i40e_nvmupd_clear_wait_state._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @i40e_nvmupd_clear_wait_state._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 236, i32 3}
!59 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @i40e_read_nvm_aq._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @i40e_read_nvm_aq._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 241, i32 3}
!64 = !{ptr @i40e_read_nvm_aq._entry.36, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @i40e_read_nvm_aq._entry_ptr.38, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.40, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 247, i32 3}
!68 = !{ptr @i40e_read_nvm_aq._entry.39, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @i40e_read_nvm_aq._entry_ptr.41, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.42, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 175, i32 3}
!72 = !{ptr @.str.43, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @i40e_read_nvm_word_srctl._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @i40e_read_nvm_word_srctl._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.45, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 200, i32 3}
!77 = !{ptr @i40e_read_nvm_word_srctl._entry.44, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @i40e_read_nvm_word_srctl._entry_ptr.46, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 156, i32 3}
!81 = !{ptr @.str.48, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @i40e_poll_sr_srctl_done_bit._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @i40e_poll_sr_srctl_done_bit._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.49, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 563, i32 3}
!86 = !{ptr @i40e_write_nvm_aq._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @i40e_write_nvm_aq._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @i40e_write_nvm_aq._entry.50, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 568, i32 3}
!90 = !{ptr @i40e_write_nvm_aq._entry_ptr.51, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @i40e_write_nvm_aq._entry.52, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 574, i32 3}
!93 = !{ptr @i40e_write_nvm_aq._entry_ptr.53, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 781, i32 2}
!96 = !{ptr @.str.55, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 782, i32 2}
!98 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 783, i32 2}
!100 = !{ptr @.str.57, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 784, i32 2}
!102 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 785, i32 2}
!104 = !{ptr @.str.59, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 786, i32 2}
!106 = !{ptr @.str.60, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 787, i32 2}
!108 = !{ptr @.str.61, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 788, i32 2}
!110 = !{ptr @.str.62, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 789, i32 2}
!112 = !{ptr @.str.63, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 790, i32 2}
!114 = !{ptr @.str.64, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 791, i32 2}
!116 = !{ptr @.str.65, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 792, i32 2}
!118 = !{ptr @.str.66, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 793, i32 2}
!120 = !{ptr @.str.67, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 794, i32 2}
!122 = !{ptr @.str.68, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 795, i32 2}
!124 = !{ptr @.str.69, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 796, i32 2}
!126 = !{ptr @.str.70, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 797, i32 2}
!128 = !{ptr @i40e_nvm_update_state_str, !129, !"i40e_nvm_update_state_str", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 780, i32 27}
!130 = !{ptr @.str.71, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 1044, i32 3}
!132 = !{ptr @.str.72, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @i40e_nvmupd_state_init._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @i40e_nvmupd_state_init._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.73, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 1578, i32 3}
!137 = !{ptr @.str.74, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @i40e_nvmupd_nvm_read._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @i40e_nvmupd_nvm_read._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.76, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 1581, i32 3}
!142 = !{ptr @i40e_nvmupd_nvm_read._entry.75, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @i40e_nvmupd_nvm_read._entry_ptr.77, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.78, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 1617, i32 3}
!146 = !{ptr @.str.79, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @i40e_nvmupd_nvm_erase._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @i40e_nvmupd_nvm_erase._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.81, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 1620, i32 3}
!151 = !{ptr @i40e_nvmupd_nvm_erase._entry.80, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @i40e_nvmupd_nvm_erase._entry_ptr.82, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.83, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 1660, i32 3}
!155 = !{ptr @.str.84, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @i40e_nvmupd_nvm_write._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @i40e_nvmupd_nvm_write._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.86, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 1663, i32 3}
!160 = !{ptr @i40e_nvmupd_nvm_write._entry.85, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @i40e_nvmupd_nvm_write._entry_ptr.87, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.88, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 1384, i32 2}
!164 = !{ptr @.str.89, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @i40e_nvmupd_exec_aq._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @i40e_nvmupd_exec_aq._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.91, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 1396, i32 3}
!169 = !{ptr @i40e_nvmupd_exec_aq._entry.90, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @i40e_nvmupd_exec_aq._entry_ptr.92, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.94, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 1412, i32 5}
!173 = !{ptr @i40e_nvmupd_exec_aq._entry.93, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @i40e_nvmupd_exec_aq._entry_ptr.95, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.97, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 1430, i32 3}
!177 = !{ptr @i40e_nvmupd_exec_aq._entry.96, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @i40e_nvmupd_exec_aq._entry_ptr.98, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.99, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 1465, i32 2}
!181 = !{ptr @i40e_nvmupd_get_aq_result._entry, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @i40e_nvmupd_get_aq_result._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.101, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 1472, i32 3}
!185 = !{ptr @i40e_nvmupd_get_aq_result._entry.100, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @i40e_nvmupd_get_aq_result._entry_ptr.102, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.104, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 1482, i32 3}
!189 = !{ptr @i40e_nvmupd_get_aq_result._entry.103, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @i40e_nvmupd_get_aq_result._entry_ptr.105, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.107, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 1492, i32 3}
!193 = !{ptr @i40e_nvmupd_get_aq_result._entry.106, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @i40e_nvmupd_get_aq_result._entry_ptr.108, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.110, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 1508, i32 3}
!197 = !{ptr @i40e_nvmupd_get_aq_result._entry.109, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @i40e_nvmupd_get_aq_result._entry_ptr.111, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.112, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 1532, i32 2}
!201 = !{ptr @i40e_nvmupd_get_aq_event._entry, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @i40e_nvmupd_get_aq_event._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @i40e_nvmupd_get_aq_event._entry.113, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 1539, i32 3}
!205 = !{ptr @i40e_nvmupd_get_aq_event._entry_ptr.114, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.115, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 1086, i32 3}
!208 = !{ptr @.str.116, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @i40e_nvmupd_state_reading._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @i40e_nvmupd_state_reading._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.117, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 1173, i32 3}
!213 = !{ptr @.str.118, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @i40e_nvmupd_state_writing._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @i40e_nvmupd_state_writing._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.120, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 1195, i32 4}
!218 = !{ptr @i40e_nvmupd_state_writing._entry.119, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @i40e_nvmupd_state_writing._entry_ptr.121, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.123, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 1201, i32 5}
!222 = !{ptr @i40e_nvmupd_state_writing._entry.122, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @i40e_nvmupd_state_writing._entry_ptr.124, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.125, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/intel/i40e/i40e_nvm.c", i32 1292, i32 3}
!226 = !{ptr @.str.126, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @i40e_nvmupd_validate_command._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @i40e_nvmupd_validate_command._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{i32 1, !"wchar_size", i32 2}
!230 = !{i32 1, !"min_enum_size", i32 4}
!231 = !{i32 8, !"branch-target-enforcement", i32 0}
!232 = !{i32 8, !"sign-return-address", i32 0}
!233 = !{i32 8, !"sign-return-address-all", i32 0}
!234 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!235 = !{i32 7, !"uwtable", i32 1}
!236 = !{i32 7, !"frame-pointer", i32 2}
!237 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!238 = !{i64 6142368}
!239 = !{i64 2157783599}
!240 = !{i64 2157784364}
!241 = !{i8 0, i8 2}
!242 = !{i64 2157787325}
!243 = !{i64 2157790627}
!244 = !{!"auto-init"}
!245 = !{i64 2157853935}
!246 = !{i64 2157794074}
!247 = !{i64 2157799745}
!248 = !{i64 6141950}
!249 = !{i64 2157800557}
