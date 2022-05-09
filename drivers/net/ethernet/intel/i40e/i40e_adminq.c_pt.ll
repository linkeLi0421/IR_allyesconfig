; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/i40e/i40e_adminq.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/i40e/i40e_adminq.c"
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
%struct.anon.3 = type { i32, i32, i32, i32 }
%struct.i40e_asq_cmd_details = type { ptr, i64, i16, i16, i8, i8, ptr }
%struct.i40e_arq_event_info = type { %struct.i40e_aq_desc, i16, i16, ptr }

@i40e_asq_send_command_atomic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016i40e %02x:%02x.%x AQTX: Admin queue not initialized.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"i40e_asq_send_command_atomic\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/intel/i40e/i40e_adminq.c\00", [50 x i8] zeroinitializer }, align 32
@i40e_asq_send_command_atomic._entry_ptr = internal global ptr @i40e_asq_send_command_atomic._entry, section ".printk_index", align 4
@i40e_asq_send_command_atomic._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016i40e %02x:%02x.%x AQTX: head overrun at %d\0A\00", [50 x i8] zeroinitializer }, align 32
@i40e_asq_send_command_atomic._entry_ptr.5 = internal global ptr @i40e_asq_send_command_atomic._entry.3, section ".printk_index", align 4
@i40e_asq_send_command_atomic._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016i40e %02x:%02x.%x AQTX: Invalid buffer size: %d.\0A\00", [44 x i8] zeroinitializer }, align 32
@i40e_asq_send_command_atomic._entry_ptr.8 = internal global ptr @i40e_asq_send_command_atomic._entry.6, section ".printk_index", align 4
@i40e_asq_send_command_atomic._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016i40e %02x:%02x.%x AQTX: Async flag not set along with postpone flag\00", [58 x i8] zeroinitializer }, align 32
@i40e_asq_send_command_atomic._entry_ptr.11 = internal global ptr @i40e_asq_send_command_atomic._entry.9, section ".printk_index", align 4
@i40e_asq_send_command_atomic._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016i40e %02x:%02x.%x AQTX: Error queue is full.\0A\00", [48 x i8] zeroinitializer }, align 32
@i40e_asq_send_command_atomic._entry_ptr.14 = internal global ptr @i40e_asq_send_command_atomic._entry.12, section ".printk_index", align 4
@i40e_asq_send_command_atomic._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016i40e %02x:%02x.%x AQTX: desc and buffer:\0A\00", [52 x i8] zeroinitializer }, align 32
@i40e_asq_send_command_atomic._entry_ptr.17 = internal global ptr @i40e_asq_send_command_atomic._entry.15, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@i40e_asq_send_command_atomic._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016i40e %02x:%02x.%x AQTX: Command completed with error 0x%X.\0A\00", [34 x i8] zeroinitializer }, align 32
@i40e_asq_send_command_atomic._entry_ptr.20 = internal global ptr @i40e_asq_send_command_atomic._entry.18, section ".printk_index", align 4
@i40e_asq_send_command_atomic._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016i40e %02x:%02x.%x AQTX: desc and buffer writeback:\0A\00", [42 x i8] zeroinitializer }, align 32
@i40e_asq_send_command_atomic._entry_ptr.23 = internal global ptr @i40e_asq_send_command_atomic._entry.21, section ".printk_index", align 4
@i40e_asq_send_command_atomic._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016i40e %02x:%02x.%x AQTX: AQ Critical error.\0A\00", [50 x i8] zeroinitializer }, align 32
@i40e_asq_send_command_atomic._entry_ptr.26 = internal global ptr @i40e_asq_send_command_atomic._entry.24, section ".printk_index", align 4
@i40e_asq_send_command_atomic._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 966, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016i40e %02x:%02x.%x AQTX: Writeback timeout.\0A\00", [50 x i8] zeroinitializer }, align 32
@i40e_asq_send_command_atomic._entry_ptr.29 = internal global ptr @i40e_asq_send_command_atomic._entry.27, section ".printk_index", align 4
@i40e_clean_arq_element._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 1032, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016i40e %02x:%02x.%x AQRX: Admin queue not initialized.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i40e_clean_arq_element\00", [41 x i8] zeroinitializer }, align 32
@i40e_clean_arq_element._entry_ptr = internal global ptr @i40e_clean_arq_element._entry, section ".printk_index", align 4
@i40e_clean_arq_element._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 1057, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016i40e %02x:%02x.%x AQRX: Event received with error 0x%X.\0A\00", [37 x i8] zeroinitializer }, align 32
@i40e_clean_arq_element._entry_ptr.34 = internal global ptr @i40e_clean_arq_element._entry.32, section ".printk_index", align 4
@i40e_clean_arq_element._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.2, i32 1067, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016i40e %02x:%02x.%x AQRX: desc and buffer:\0A\00", [52 x i8] zeroinitializer }, align 32
@i40e_clean_arq_element._entry_ptr.37 = internal global ptr @i40e_clean_arq_element._entry.35, section ".printk_index", align 4
@i40e_clean_asq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016i40e %02x:%02x.%x ntc %d head %d.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i40e_clean_asq\00", [17 x i8] zeroinitializer }, align 32
@i40e_clean_asq._entry_ptr = internal global ptr @i40e_clean_asq._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967242]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 800, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 810, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 839, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 848, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 863, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 893, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 931, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 949, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 961, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 965, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1031, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1054, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1067, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private constant [49 x i8] c"../drivers/net/ethernet/intel/i40e/i40e_adminq.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 732, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @i40e_asq_send_command_atomic._entry, ptr @i40e_asq_send_command_atomic._entry.12, ptr @i40e_asq_send_command_atomic._entry.15, ptr @i40e_asq_send_command_atomic._entry.18, ptr @i40e_asq_send_command_atomic._entry.21, ptr @i40e_asq_send_command_atomic._entry.24, ptr @i40e_asq_send_command_atomic._entry.27, ptr @i40e_asq_send_command_atomic._entry.3, ptr @i40e_asq_send_command_atomic._entry.6, ptr @i40e_asq_send_command_atomic._entry.9, ptr @i40e_asq_send_command_atomic._entry_ptr, ptr @i40e_asq_send_command_atomic._entry_ptr.11, ptr @i40e_asq_send_command_atomic._entry_ptr.14, ptr @i40e_asq_send_command_atomic._entry_ptr.17, ptr @i40e_asq_send_command_atomic._entry_ptr.20, ptr @i40e_asq_send_command_atomic._entry_ptr.23, ptr @i40e_asq_send_command_atomic._entry_ptr.26, ptr @i40e_asq_send_command_atomic._entry_ptr.29, ptr @i40e_asq_send_command_atomic._entry_ptr.5, ptr @i40e_asq_send_command_atomic._entry_ptr.8, ptr @i40e_clean_arq_element._entry, ptr @i40e_clean_arq_element._entry.32, ptr @i40e_clean_arq_element._entry.35, ptr @i40e_clean_arq_element._entry_ptr, ptr @i40e_clean_arq_element._entry_ptr.34, ptr @i40e_clean_arq_element._entry_ptr.37, ptr @i40e_clean_asq._entry, ptr @i40e_clean_asq._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_asq_send_command_atomic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_asq_send_command_atomic._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_asq_send_command_atomic._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_asq_send_command_atomic._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_asq_send_command_atomic._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_asq_send_command_atomic._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_asq_send_command_atomic._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_asq_send_command_atomic._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_asq_send_command_atomic._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_asq_send_command_atomic._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_clean_arq_element._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_clean_arq_element._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_clean_arq_element._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_clean_asq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_init_adminq(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %cfg_ptr = alloca i16, align 2
  %oem_hi = alloca i16, align 2
  %oem_lo = alloca i16, align 2
  %eetrack_lo = alloca i16, align 2
  %eetrack_hi = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cfg_ptr) #7
  %0 = ptrtoint ptr %cfg_ptr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %cfg_ptr, align 2, !annotation !69
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %oem_hi) #7
  %1 = ptrtoint ptr %oem_hi to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %oem_hi, align 2, !annotation !69
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %oem_lo) #7
  %2 = ptrtoint ptr %oem_lo to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %oem_lo, align 2, !annotation !69
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %eetrack_lo) #7
  %3 = ptrtoint ptr %eetrack_lo to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %eetrack_lo, align 2, !annotation !69
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %eetrack_hi) #7
  %4 = ptrtoint ptr %eetrack_hi to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %eetrack_hi, align 2, !annotation !69
  %num_arq_entries = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 3
  %5 = ptrtoint ptr %num_arq_entries to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_arq_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp = icmp eq i16 %6, 0
  br i1 %cmp, label %entry.init_adminq_exit_crit_edge, label %lor.lhs.false

entry.init_adminq_exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_adminq_exit

lor.lhs.false:                                    ; preds = %entry
  %num_asq_entries = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 4
  %7 = ptrtoint ptr %num_asq_entries to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_asq_entries, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp4 = icmp eq i16 %8, 0
  br i1 %cmp4, label %lor.lhs.false.init_adminq_exit_crit_edge, label %lor.lhs.false6

lor.lhs.false.init_adminq_exit_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_adminq_exit

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %arq_buf_size = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 5
  %9 = ptrtoint ptr %arq_buf_size to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arq_buf_size, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp9 = icmp eq i16 %10, 0
  br i1 %cmp9, label %lor.lhs.false6.init_adminq_exit_crit_edge, label %lor.lhs.false11

lor.lhs.false6.init_adminq_exit_crit_edge:        ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_adminq_exit

lor.lhs.false11:                                  ; preds = %lor.lhs.false6
  %asq_buf_size = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 6
  %11 = ptrtoint ptr %asq_buf_size to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %asq_buf_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp14 = icmp eq i16 %12, 0
  br i1 %cmp14, label %lor.lhs.false11.init_adminq_exit_crit_edge, label %if.end

lor.lhs.false11.init_adminq_exit_crit_edge:       ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_adminq_exit

if.end:                                           ; preds = %lor.lhs.false11
  %mac.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 3
  %13 = ptrtoint ptr %mac.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mac.i.i, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %if.else.i [
    i32 4, label %if.end.i40e_adminq_init_regs.exit_crit_edge
    i32 2, label %if.end.i40e_adminq_init_regs.exit_crit_edge275
  ]

if.end.i40e_adminq_init_regs.exit_crit_edge275:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %i40e_adminq_init_regs.exit

if.end.i40e_adminq_init_regs.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %i40e_adminq_init_regs.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %i40e_adminq_init_regs.exit

i40e_adminq_init_regs.exit:                       ; preds = %if.else.i, %if.end.i40e_adminq_init_regs.exit_crit_edge, %if.end.i40e_adminq_init_regs.exit_crit_edge275
  %.sink81.i = phi i32 [ 525312, %if.else.i ], [ 33792, %if.end.i40e_adminq_init_regs.exit_crit_edge ], [ 33792, %if.end.i40e_adminq_init_regs.exit_crit_edge275 ]
  %.sink80.i = phi i32 [ 525056, %if.else.i ], [ 25600, %if.end.i40e_adminq_init_regs.exit_crit_edge ], [ 25600, %if.end.i40e_adminq_init_regs.exit_crit_edge275 ]
  %.sink79.i = phi i32 [ 524800, %if.else.i ], [ 26624, %if.end.i40e_adminq_init_regs.exit_crit_edge ], [ 26624, %if.end.i40e_adminq_init_regs.exit_crit_edge275 ]
  %.sink78.i = phi i32 [ 524288, %if.else.i ], [ 31744, %if.end.i40e_adminq_init_regs.exit_crit_edge ], [ 31744, %if.end.i40e_adminq_init_regs.exit_crit_edge275 ]
  %.sink77.i = phi i32 [ 524544, %if.else.i ], [ 30720, %if.end.i40e_adminq_init_regs.exit_crit_edge ], [ 30720, %if.end.i40e_adminq_init_regs.exit_crit_edge275 ]
  %.sink76.i = phi i32 [ 525440, %if.else.i ], [ 28672, %if.end.i40e_adminq_init_regs.exit_crit_edge ], [ 28672, %if.end.i40e_adminq_init_regs.exit_crit_edge275 ]
  %.sink75.i = phi i32 [ 525184, %if.else.i ], [ 29696, %if.end.i40e_adminq_init_regs.exit_crit_edge ], [ 29696, %if.end.i40e_adminq_init_regs.exit_crit_edge275 ]
  %.sink74.i = phi i32 [ 524928, %if.else.i ], [ 32768, %if.end.i40e_adminq_init_regs.exit_crit_edge ], [ 32768, %if.end.i40e_adminq_init_regs.exit_crit_edge275 ]
  %.sink73.i = phi i32 [ 524416, %if.else.i ], [ 27648, %if.end.i40e_adminq_init_regs.exit_crit_edge ], [ 27648, %if.end.i40e_adminq_init_regs.exit_crit_edge275 ]
  %.sink.i = phi i32 [ 524672, %if.else.i ], [ 24576, %if.end.i40e_adminq_init_regs.exit_crit_edge ], [ 24576, %if.end.i40e_adminq_init_regs.exit_crit_edge275 ]
  %tail25.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 9
  %16 = ptrtoint ptr %tail25.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink81.i, ptr %tail25.i, align 4
  %head28.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 8
  %17 = ptrtoint ptr %head28.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink80.i, ptr %head28.i, align 4
  %len31.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 10
  %18 = ptrtoint ptr %len31.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink79.i, ptr %len31.i, align 4
  %bal34.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 12
  %19 = ptrtoint ptr %bal34.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink78.i, ptr %bal34.i, align 4
  %bah37.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 11
  %20 = ptrtoint ptr %bah37.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink77.i, ptr %bah37.i, align 4
  %tail40.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 9
  %21 = ptrtoint ptr %tail40.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink76.i, ptr %tail40.i, align 4
  %head43.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 8
  %22 = ptrtoint ptr %head43.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink75.i, ptr %head43.i, align 8
  %len46.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 10
  %23 = ptrtoint ptr %len46.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink74.i, ptr %len46.i, align 8
  %bal49.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 12
  %24 = ptrtoint ptr %bal49.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink73.i, ptr %bal49.i, align 8
  %bah52.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 11
  %25 = ptrtoint ptr %bah52.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink.i, ptr %bah52.i, align 4
  %asq_cmd_timeout = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 2
  %26 = ptrtoint ptr %asq_cmd_timeout to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 250000, ptr %asq_cmd_timeout, align 8
  %count.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 4
  %27 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp.not.i = icmp eq i16 %28, 0
  br i1 %cmp.not.i, label %if.end11.i, label %i40e_adminq_init_regs.exit.init_adminq_exit_crit_edge

i40e_adminq_init_regs.exit.init_adminq_exit_crit_edge: ; preds = %i40e_adminq_init_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_adminq_exit

if.end11.i:                                       ; preds = %i40e_adminq_init_regs.exit
  %next_to_use.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 6
  %29 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %next_to_use.i, align 4
  %next_to_clean.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 7
  %30 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %next_to_clean.i, align 2
  %desc_buf.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 1
  %conv.i.i = zext i16 %8 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 5
  %conv2.i.i = zext i32 %mul.i.i to i64
  %call.i.i = tail call i32 @i40e_allocate_dma_mem_d(ptr noundef %hw, ptr noundef %desc_buf.i.i, i64 noundef %conv2.i.i, i32 noundef 4096) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end11.i.init_adminq_exit_crit_edge

if.end11.i.init_adminq_exit_crit_edge:            ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_adminq_exit

if.end.i.i:                                       ; preds = %if.end11.i
  %cmd_buf.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 2
  %31 = ptrtoint ptr %num_asq_entries to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %num_asq_entries, align 2
  %conv7.i.i = zext i16 %32 to i32
  %mul8.i.i = shl nuw nsw i32 %conv7.i.i, 5
  %call9.i.i = tail call i32 @i40e_allocate_virt_mem_d(ptr noundef %hw, ptr noundef %cmd_buf.i.i, i32 noundef %mul8.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end17.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i.i = tail call i32 @i40e_free_dma_mem_d(ptr noundef %hw, ptr noundef %desc_buf.i.i) #7
  br label %init_adminq_exit

if.end17.i:                                       ; preds = %if.end.i.i
  %asq.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1
  %33 = ptrtoint ptr %num_asq_entries to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %num_asq_entries, align 2
  %conv.i45.i = zext i16 %34 to i32
  %mul.i46.i = mul nuw nsw i32 %conv.i45.i, 12
  %call.i47.i = tail call i32 @i40e_allocate_virt_mem_d(ptr noundef %hw, ptr noundef %asq.i.i, i32 noundef %mul.i46.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i)
  %tobool.not.i48.i = icmp eq i32 %call.i47.i, 0
  br i1 %tobool.not.i48.i, label %if.end.i49.i, label %if.end17.i.i40e_init_asq.exit.thread220_crit_edge

if.end17.i.i40e_init_asq.exit.thread220_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i40e_init_asq.exit.thread220

if.end.i49.i:                                     ; preds = %if.end17.i
  %35 = ptrtoint ptr %asq.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %asq.i.i, align 4
  %r.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 3
  %37 = ptrtoint ptr %r.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %r.i.i, align 4
  %38 = ptrtoint ptr %num_asq_entries to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %num_asq_entries, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp61.not.i.i = icmp eq i16 %39, 0
  br i1 %cmp61.not.i.i, label %if.end.i49.i.if.end21.i_crit_edge, label %if.end.i49.i.for.body.i.i_crit_edge

if.end.i49.i.for.body.i.i_crit_edge:              ; preds = %if.end.i49.i
  br label %for.body.i.i

if.end.i49.i.if.end21.i_crit_edge:                ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i49.i.for.body.i.i_crit_edge
  %i.062.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i49.i.for.body.i.i_crit_edge ]
  %40 = ptrtoint ptr %r.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %r.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.i40e_dma_mem, ptr %41, i32 %i.062.i.i
  %42 = ptrtoint ptr %asq_buf_size to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %asq_buf_size, align 2
  %conv15.i.i = zext i16 %43 to i64
  %call16.i.i = tail call i32 @i40e_allocate_dma_mem_d(ptr noundef %hw, ptr noundef %arrayidx.i.i, i64 noundef %conv15.i.i, i32 noundef 4096) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %for.inc.i.i, label %for.cond20.preheader.i.i

for.cond20.preheader.i.i:                         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.062.i.i)
  %cmp2164.not.i.i = icmp eq i32 %i.062.i.i, 0
  br i1 %cmp2164.not.i.i, label %for.cond20.preheader.i.i.i40e_init_asq.exit_crit_edge, label %for.cond20.preheader.i.i.for.body23.i.i_crit_edge

for.cond20.preheader.i.i.for.body23.i.i_crit_edge: ; preds = %for.cond20.preheader.i.i
  br label %for.body23.i.i

for.cond20.preheader.i.i.i40e_init_asq.exit_crit_edge: ; preds = %for.cond20.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i40e_init_asq.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.062.i.i, 1
  %44 = ptrtoint ptr %num_asq_entries to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %num_asq_entries, align 2
  %conv9.i.i = zext i16 %45 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv9.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end21.i_crit_edge

for.inc.i.i.if.end21.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body23.i.i:                                   ; preds = %for.body23.i.i.for.body23.i.i_crit_edge, %for.cond20.preheader.i.i.for.body23.i.i_crit_edge
  %i.165.in.i.i = phi i32 [ %i.165.i.i, %for.body23.i.i.for.body23.i.i_crit_edge ], [ %i.062.i.i, %for.cond20.preheader.i.i.for.body23.i.i_crit_edge ]
  %i.165.i.i = add nsw i32 %i.165.in.i.i, -1
  %46 = ptrtoint ptr %r.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %r.i.i, align 4
  %arrayidx27.i.i = getelementptr %struct.i40e_dma_mem, ptr %47, i32 %i.165.i.i
  %call28.i.i = tail call i32 @i40e_free_dma_mem_d(ptr noundef %hw, ptr noundef %arrayidx27.i.i) #7
  %cmp21.i.i = icmp sgt i32 %i.165.in.i.i, 1
  br i1 %cmp21.i.i, label %for.body23.i.i.for.body23.i.i_crit_edge, label %for.body23.i.i.i40e_init_asq.exit_crit_edge

for.body23.i.i.i40e_init_asq.exit_crit_edge:      ; preds = %for.body23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i40e_init_asq.exit

for.body23.i.i.for.body23.i.i_crit_edge:          ; preds = %for.body23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body23.i.i

if.end21.i:                                       ; preds = %for.inc.i.i.if.end21.i_crit_edge, %if.end.i49.i.if.end21.i_crit_edge
  %call22.i = tail call fastcc i32 @i40e_config_asq_regs(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %i40e_init_asq.exit.thread216, label %if.end21.i.i40e_init_asq.exit.thread220_crit_edge

if.end21.i.i40e_init_asq.exit.thread220_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i40e_init_asq.exit.thread220

i40e_init_asq.exit.thread216:                     ; preds = %if.end21.i
  %48 = ptrtoint ptr %num_asq_entries to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %num_asq_entries, align 2
  %50 = ptrtoint ptr %count.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %count.i, align 4
  %count.i175 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 4
  %51 = ptrtoint ptr %count.i175 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %count.i175, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %cmp.not.i176 = icmp eq i16 %52, 0
  br i1 %cmp.not.i176, label %if.end.i178, label %i40e_init_asq.exit.thread216.init_adminq_free_asq_crit_edge

i40e_init_asq.exit.thread216.init_adminq_free_asq_crit_edge: ; preds = %i40e_init_asq.exit.thread216
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_adminq_free_asq

i40e_init_asq.exit.thread220:                     ; preds = %if.end21.i.i40e_init_asq.exit.thread220_crit_edge, %if.end17.i.i40e_init_asq.exit.thread220_crit_edge
  %ret_code.0.i.ph = phi i32 [ %call.i47.i, %if.end17.i.i40e_init_asq.exit.thread220_crit_edge ], [ %call22.i, %if.end21.i.i40e_init_asq.exit.thread220_crit_edge ]
  %call.i52.i222 = tail call i32 @i40e_free_dma_mem_d(ptr noundef %hw, ptr noundef %desc_buf.i.i) #7
  br label %init_adminq_exit

i40e_init_asq.exit:                               ; preds = %for.body23.i.i.i40e_init_asq.exit_crit_edge, %for.cond20.preheader.i.i.i40e_init_asq.exit_crit_edge
  %call35.i.i = tail call i32 @i40e_free_virt_mem_d(ptr noundef %hw, ptr noundef %asq.i.i) #7
  %call.i52.i = tail call i32 @i40e_free_dma_mem_d(ptr noundef %hw, ptr noundef %desc_buf.i.i) #7
  br label %init_adminq_exit

if.end.i178:                                      ; preds = %i40e_init_asq.exit.thread216
  %53 = ptrtoint ptr %num_arq_entries to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %num_arq_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %cmp4.i177 = icmp eq i16 %54, 0
  br i1 %cmp4.i177, label %if.end.i178.init_adminq_free_asq_crit_edge, label %lor.lhs.false.i180

if.end.i178.init_adminq_free_asq_crit_edge:       ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_adminq_free_asq

lor.lhs.false.i180:                               ; preds = %if.end.i178
  %55 = ptrtoint ptr %arq_buf_size to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arq_buf_size, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %cmp8.i179 = icmp eq i16 %56, 0
  br i1 %cmp8.i179, label %lor.lhs.false.i180.init_adminq_free_asq_crit_edge, label %if.end11.i188

lor.lhs.false.i180.init_adminq_free_asq_crit_edge: ; preds = %lor.lhs.false.i180
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_adminq_free_asq

if.end11.i188:                                    ; preds = %lor.lhs.false.i180
  %next_to_use.i181 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 6
  %57 = ptrtoint ptr %next_to_use.i181 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %next_to_use.i181, align 4
  %next_to_clean.i182 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 7
  %58 = ptrtoint ptr %next_to_clean.i182 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %next_to_clean.i182, align 2
  %desc_buf.i.i183 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 1
  %conv.i.i184 = zext i16 %54 to i32
  %mul.i.i185 = shl nuw nsw i32 %conv.i.i184, 5
  %conv2.i.i186 = zext i32 %mul.i.i185 to i64
  %call.i.i187 = tail call i32 @i40e_allocate_dma_mem_d(ptr noundef %hw, ptr noundef %desc_buf.i.i183, i64 noundef %conv2.i.i186, i32 noundef 4096) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i187)
  %tobool.not.i = icmp eq i32 %call.i.i187, 0
  br i1 %tobool.not.i, label %if.end17.i193, label %if.end11.i188.init_adminq_free_asq_crit_edge

if.end11.i188.init_adminq_free_asq_crit_edge:     ; preds = %if.end11.i188
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_adminq_free_asq

if.end17.i193:                                    ; preds = %if.end11.i188
  %aq.i.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23
  %59 = ptrtoint ptr %num_arq_entries to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %num_arq_entries, align 4
  %conv.i45.i189 = zext i16 %60 to i32
  %mul.i46.i190 = mul nuw nsw i32 %conv.i45.i189, 12
  %call.i47.i191 = tail call i32 @i40e_allocate_virt_mem_d(ptr noundef %hw, ptr noundef %aq.i.i, i32 noundef %mul.i46.i190) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i191)
  %tobool.not.i.i192 = icmp eq i32 %call.i47.i191, 0
  br i1 %tobool.not.i.i192, label %if.end.i.i195, label %if.end17.i193.i40e_init_arq.exit.thread253_crit_edge

if.end17.i193.i40e_init_arq.exit.thread253_crit_edge: ; preds = %if.end17.i193
  call void @__sanitizer_cov_trace_pc() #9
  br label %i40e_init_arq.exit.thread253

if.end.i.i195:                                    ; preds = %if.end17.i193
  %61 = ptrtoint ptr %aq.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %aq.i.i, align 8
  %r.i.i194 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 3
  %63 = ptrtoint ptr %r.i.i194 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %r.i.i194, align 4
  %64 = ptrtoint ptr %num_arq_entries to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %num_arq_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %cmp99.not.i.i = icmp eq i16 %65, 0
  br i1 %cmp99.not.i.i, label %if.end.i.i195.if.end21.i206_crit_edge, label %if.end.i.i195.for.body.i.i200_crit_edge

if.end.i.i195.for.body.i.i200_crit_edge:          ; preds = %if.end.i.i195
  br label %for.body.i.i200

if.end.i.i195.if.end21.i206_crit_edge:            ; preds = %if.end.i.i195
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i206

for.body.i.i200:                                  ; preds = %if.end19.i.i.for.body.i.i200_crit_edge, %if.end.i.i195.for.body.i.i200_crit_edge
  %i.0100.i.i = phi i32 [ %inc.i.i201, %if.end19.i.i.for.body.i.i200_crit_edge ], [ 0, %if.end.i.i195.for.body.i.i200_crit_edge ]
  %66 = ptrtoint ptr %r.i.i194 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %r.i.i194, align 4
  %arrayidx.i.i196 = getelementptr %struct.i40e_dma_mem, ptr %67, i32 %i.0100.i.i
  %68 = ptrtoint ptr %arq_buf_size to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arq_buf_size, align 8
  %conv15.i.i197 = zext i16 %69 to i64
  %call16.i.i198 = tail call i32 @i40e_allocate_dma_mem_d(ptr noundef %hw, ptr noundef %arrayidx.i.i196, i64 noundef %conv15.i.i197, i32 noundef 4096) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i198)
  %tobool17.not.i.i199 = icmp eq i32 %call16.i.i198, 0
  br i1 %tobool17.not.i.i199, label %if.end19.i.i, label %for.cond41.preheader.i.i

for.cond41.preheader.i.i:                         ; preds = %for.body.i.i200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0100.i.i)
  %cmp42102.not.i.i = icmp eq i32 %i.0100.i.i, 0
  br i1 %cmp42102.not.i.i, label %for.cond41.preheader.i.i.i40e_init_arq.exit_crit_edge, label %for.cond41.preheader.i.i.for.body44.i.i_crit_edge

for.cond41.preheader.i.i.for.body44.i.i_crit_edge: ; preds = %for.cond41.preheader.i.i
  br label %for.body44.i.i

for.cond41.preheader.i.i.i40e_init_arq.exit_crit_edge: ; preds = %for.cond41.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i40e_init_arq.exit

if.end19.i.i:                                     ; preds = %for.body.i.i200
  %70 = ptrtoint ptr %desc_buf.i.i183 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %desc_buf.i.i183, align 8
  %arrayidx23.i.i = getelementptr %struct.i40e_aq_desc, ptr %71, i32 %i.0100.i.i
  %72 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 16, ptr %arrayidx23.i.i, align 4
  %73 = ptrtoint ptr %arq_buf_size to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arq_buf_size, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %74)
  %cmp27.i.i = icmp ugt i16 %74, 512
  %spec.store.select.i.i = select i1 %cmp27.i.i, i16 18, i16 16
  %75 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %spec.store.select.i.i, ptr %arrayidx23.i.i, align 4
  %opcode.i.i = getelementptr %struct.i40e_aq_desc, ptr %71, i32 %i.0100.i.i, i32 1
  %76 = ptrtoint ptr %opcode.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %opcode.i.i, align 2
  %size.i.i = getelementptr %struct.i40e_dma_mem, ptr %67, i32 %i.0100.i.i, i32 2
  %77 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %size.i.i, align 4
  %conv34.i.i = trunc i32 %78 to i16
  %79 = tail call i16 @llvm.bswap.i16(i16 %conv34.i.i) #7
  %datalen.i.i = getelementptr %struct.i40e_aq_desc, ptr %71, i32 %i.0100.i.i, i32 2
  %80 = ptrtoint ptr %datalen.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %datalen.i.i, align 4
  %retval35.i.i = getelementptr %struct.i40e_aq_desc, ptr %71, i32 %i.0100.i.i, i32 3
  %81 = ptrtoint ptr %retval35.i.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 0, ptr %retval35.i.i, align 2
  %cookie_high.i.i = getelementptr %struct.i40e_aq_desc, ptr %71, i32 %i.0100.i.i, i32 4
  %82 = ptrtoint ptr %cookie_high.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %cookie_high.i.i, align 4
  %cookie_low.i.i = getelementptr %struct.i40e_aq_desc, ptr %71, i32 %i.0100.i.i, i32 5
  %83 = ptrtoint ptr %cookie_low.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %cookie_low.i.i, align 4
  %pa.i.i = getelementptr %struct.i40e_dma_mem, ptr %67, i32 %i.0100.i.i, i32 1
  %params.i.i = getelementptr %struct.i40e_aq_desc, ptr %71, i32 %i.0100.i.i, i32 6
  %addr_high.i.i = getelementptr inbounds %struct.anon.3, ptr %params.i.i, i32 0, i32 2
  %84 = ptrtoint ptr %addr_high.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %addr_high.i.i, align 4
  %85 = ptrtoint ptr %pa.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pa.i.i, align 4
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #7
  %addr_low.i.i = getelementptr inbounds %struct.anon.3, ptr %params.i.i, i32 0, i32 3
  %88 = ptrtoint ptr %addr_low.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %addr_low.i.i, align 4
  %89 = ptrtoint ptr %params.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %params.i.i, align 4
  %param1.i.i = getelementptr inbounds %struct.anon.3, ptr %params.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %param1.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %param1.i.i, align 4
  %inc.i.i201 = add nuw nsw i32 %i.0100.i.i, 1
  %91 = ptrtoint ptr %num_arq_entries to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %num_arq_entries, align 4
  %conv9.i.i202 = zext i16 %92 to i32
  %cmp.i.i203 = icmp ult i32 %inc.i.i201, %conv9.i.i202
  br i1 %cmp.i.i203, label %if.end19.i.i.for.body.i.i200_crit_edge, label %if.end19.i.i.if.end21.i206_crit_edge

if.end19.i.i.if.end21.i206_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i206

if.end19.i.i.for.body.i.i200_crit_edge:           ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i200

for.body44.i.i:                                   ; preds = %for.body44.i.i.for.body44.i.i_crit_edge, %for.cond41.preheader.i.i.for.body44.i.i_crit_edge
  %i.1103.in.i.i = phi i32 [ %i.1103.i.i, %for.body44.i.i.for.body44.i.i_crit_edge ], [ %i.0100.i.i, %for.cond41.preheader.i.i.for.body44.i.i_crit_edge ]
  %i.1103.i.i = add nsw i32 %i.1103.in.i.i, -1
  %93 = ptrtoint ptr %r.i.i194 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %r.i.i194, align 4
  %arrayidx48.i.i = getelementptr %struct.i40e_dma_mem, ptr %94, i32 %i.1103.i.i
  %call49.i.i = tail call i32 @i40e_free_dma_mem_d(ptr noundef %hw, ptr noundef %arrayidx48.i.i) #7
  %cmp42.i.i = icmp sgt i32 %i.1103.in.i.i, 1
  br i1 %cmp42.i.i, label %for.body44.i.i.for.body44.i.i_crit_edge, label %for.body44.i.i.i40e_init_arq.exit_crit_edge

for.body44.i.i.i40e_init_arq.exit_crit_edge:      ; preds = %for.body44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i40e_init_arq.exit

for.body44.i.i.for.body44.i.i_crit_edge:          ; preds = %for.body44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body44.i.i

if.end21.i206:                                    ; preds = %if.end19.i.i.if.end21.i206_crit_edge, %if.end.i.i195.if.end21.i206_crit_edge
  %call22.i204 = tail call fastcc i32 @i40e_config_arq_regs(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i204)
  %tobool23.not.i205 = icmp eq i32 %call22.i204, 0
  br i1 %tobool23.not.i205, label %i40e_init_arq.exit.thread, label %if.end21.i206.i40e_init_arq.exit.thread253_crit_edge

if.end21.i206.i40e_init_arq.exit.thread253_crit_edge: ; preds = %if.end21.i206
  call void @__sanitizer_cov_trace_pc() #9
  br label %i40e_init_arq.exit.thread253

i40e_init_arq.exit.thread:                        ; preds = %if.end21.i206
  %95 = ptrtoint ptr %num_arq_entries to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %num_arq_entries, align 4
  %97 = ptrtoint ptr %count.i175 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %count.i175, align 8
  %fw_maj_ver = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 7
  %fw_min_ver = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 8
  %fw_build = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 9
  %api_maj_ver = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 10
  %api_min_ver = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 11
  br label %do.body

i40e_init_arq.exit.thread253:                     ; preds = %if.end21.i206.i40e_init_arq.exit.thread253_crit_edge, %if.end17.i193.i40e_init_arq.exit.thread253_crit_edge
  %ret_code.0.i209.ph = phi i32 [ %call.i47.i191, %if.end17.i193.i40e_init_arq.exit.thread253_crit_edge ], [ %call22.i204, %if.end21.i206.i40e_init_arq.exit.thread253_crit_edge ]
  %call.i50.i255 = tail call i32 @i40e_free_dma_mem_d(ptr noundef %hw, ptr noundef %desc_buf.i.i183) #7
  br label %init_adminq_free_asq

i40e_init_arq.exit:                               ; preds = %for.body44.i.i.i40e_init_arq.exit_crit_edge, %for.cond41.preheader.i.i.i40e_init_arq.exit_crit_edge
  %call56.i.i = tail call i32 @i40e_free_virt_mem_d(ptr noundef %hw, ptr noundef %aq.i.i) #7
  %call.i50.i = tail call i32 @i40e_free_dma_mem_d(ptr noundef %hw, ptr noundef %desc_buf.i.i183) #7
  br label %init_adminq_free_asq

do.body:                                          ; preds = %if.end32.do.body_crit_edge, %i40e_init_arq.exit.thread
  %retry.0 = phi i32 [ %inc, %if.end32.do.body_crit_edge ], [ 0, %i40e_init_arq.exit.thread ]
  %call28 = tail call i32 @i40e_aq_get_firmware_version(ptr noundef %hw, ptr noundef %fw_maj_ver, ptr noundef %fw_min_ver, ptr noundef %fw_build, ptr noundef %api_maj_ver, ptr noundef %api_min_ver, ptr noundef null) #7
  %98 = zext i32 %call28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %call28, label %do.body.init_adminq_free_arq_crit_edge [
    i32 -54, label %if.end32
    i32 0, label %if.end38
  ]

do.body.init_adminq_free_arq_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_adminq_free_arq

if.end32:                                         ; preds = %do.body
  %inc = add nuw nsw i32 %retry.0, 1
  tail call void @msleep(i32 noundef 100) #7
  %99 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 0, ptr %next_to_use.i, align 4
  %100 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 0, ptr %next_to_clean.i, align 2
  %call.i = tail call fastcc i32 @i40e_config_asq_regs(ptr noundef %hw) #7
  %101 = ptrtoint ptr %next_to_use.i181 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 0, ptr %next_to_use.i181, align 4
  %102 = ptrtoint ptr %next_to_clean.i182 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 0, ptr %next_to_clean.i182, align 2
  %call8.i = tail call fastcc i32 @i40e_config_arq_regs(ptr noundef %hw) #7
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %if.end32.init_adminq_free_arq_crit_edge, label %if.end32.do.body_crit_edge

if.end32.do.body_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end32.init_adminq_free_arq_crit_edge:          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_adminq_free_arq

if.end38:                                         ; preds = %do.body
  tail call fastcc void @i40e_set_hw_flags(ptr noundef %hw)
  %version = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 4
  %call39 = tail call i32 @i40e_read_nvm_word(ptr noundef %hw, i16 noundef zeroext 24, ptr noundef %version) #7
  %call40 = call i32 @i40e_read_nvm_word(ptr noundef %hw, i16 noundef zeroext 45, ptr noundef nonnull %eetrack_lo) #7
  %call41 = call i32 @i40e_read_nvm_word(ptr noundef %hw, i16 noundef zeroext 46, ptr noundef nonnull %eetrack_hi) #7
  %103 = ptrtoint ptr %eetrack_hi to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %eetrack_hi, align 2
  %conv42 = zext i16 %104 to i32
  %shl = shl nuw i32 %conv42, 16
  %105 = ptrtoint ptr %eetrack_lo to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %eetrack_lo, align 2
  %conv43 = zext i16 %106 to i32
  %or = or i32 %shl, %conv43
  %eetrack = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 5
  %107 = ptrtoint ptr %eetrack to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or, ptr %eetrack, align 4
  %call45 = call i32 @i40e_read_nvm_word(ptr noundef %hw, i16 noundef zeroext 23, ptr noundef nonnull %cfg_ptr) #7
  %108 = ptrtoint ptr %cfg_ptr to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %cfg_ptr, align 2
  %add = add i16 %109, 131
  %call48 = call i32 @i40e_read_nvm_word(ptr noundef %hw, i16 noundef zeroext %add, ptr noundef nonnull %oem_hi) #7
  %110 = ptrtoint ptr %cfg_ptr to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %cfg_ptr, align 2
  %add50 = add i16 %111, 132
  %call52 = call i32 @i40e_read_nvm_word(ptr noundef %hw, i16 noundef zeroext %add50, ptr noundef nonnull %oem_lo) #7
  %112 = ptrtoint ptr %oem_hi to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %oem_hi, align 2
  %conv53 = zext i16 %113 to i32
  %shl54 = shl nuw i32 %conv53, 16
  %114 = ptrtoint ptr %oem_lo to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %oem_lo, align 2
  %conv55 = zext i16 %115 to i32
  %or56 = or i32 %shl54, %conv55
  %oem_ver = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 5, i32 6
  %116 = ptrtoint ptr %oem_ver to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %or56, ptr %oem_ver, align 8
  %117 = ptrtoint ptr %mac.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %mac.i.i, align 8
  %119 = zext i32 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %118, label %if.end38.if.end95thread-pre-split_crit_edge [
    i32 1, label %land.lhs.true
    i32 3, label %land.lhs.true80
  ]

if.end38.if.end95thread-pre-split_crit_edge:      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95thread-pre-split

land.lhs.true:                                    ; preds = %if.end38
  %120 = ptrtoint ptr %api_maj_ver to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %api_maj_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %121)
  %cmp63 = icmp eq i16 %121, 1
  br i1 %cmp63, label %land.lhs.true65, label %land.lhs.true.if.end95thread-pre-split_crit_edge

land.lhs.true.if.end95thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95thread-pre-split

land.lhs.true65:                                  ; preds = %land.lhs.true
  %122 = ptrtoint ptr %api_min_ver to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %api_min_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %123)
  %cmp69 = icmp ugt i16 %123, 6
  br i1 %cmp69, label %land.lhs.true65.if.end95thread-pre-split.sink.split_crit_edge, label %land.lhs.true65.if.end95thread-pre-split_crit_edge

land.lhs.true65.if.end95thread-pre-split_crit_edge: ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95thread-pre-split

land.lhs.true65.if.end95thread-pre-split.sink.split_crit_edge: ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95thread-pre-split.sink.split

land.lhs.true80:                                  ; preds = %if.end38
  %124 = ptrtoint ptr %api_maj_ver to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %api_maj_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %125)
  %cmp84 = icmp eq i16 %125, 1
  br i1 %cmp84, label %land.lhs.true86, label %land.lhs.true80.if.end95_crit_edge

land.lhs.true80.if.end95_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

land.lhs.true86:                                  ; preds = %land.lhs.true80
  %126 = ptrtoint ptr %api_min_ver to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %api_min_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %127)
  %cmp90 = icmp ugt i16 %127, 5
  br i1 %cmp90, label %land.lhs.true86.if.end95thread-pre-split.sink.split_crit_edge, label %land.lhs.true86.if.end123_crit_edge

land.lhs.true86.if.end123_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

land.lhs.true86.if.end95thread-pre-split.sink.split_crit_edge: ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95thread-pre-split.sink.split

if.end95thread-pre-split.sink.split:              ; preds = %land.lhs.true86.if.end95thread-pre-split.sink.split_crit_edge, %land.lhs.true65.if.end95thread-pre-split.sink.split_crit_edge
  %.sink261 = phi i64 [ 20, %land.lhs.true65.if.end95thread-pre-split.sink.split_crit_edge ], [ 16, %land.lhs.true86.if.end95thread-pre-split.sink.split_crit_edge ]
  %flags93 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 35
  %128 = ptrtoint ptr %flags93 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %flags93, align 8
  %or74 = or i64 %129, %.sink261
  store i64 %or74, ptr %flags93, align 8
  br label %if.end95thread-pre-split

if.end95thread-pre-split:                         ; preds = %if.end95thread-pre-split.sink.split, %land.lhs.true65.if.end95thread-pre-split_crit_edge, %land.lhs.true.if.end95thread-pre-split_crit_edge, %if.end38.if.end95thread-pre-split_crit_edge
  %130 = ptrtoint ptr %api_maj_ver to i32
  call void @__asan_load2_noabort(i32 %130)
  %.pr = load i16, ptr %api_maj_ver, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.end95thread-pre-split, %land.lhs.true80.if.end95_crit_edge
  %131 = phi i16 [ %.pr, %if.end95thread-pre-split ], [ %125, %land.lhs.true80.if.end95_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %131)
  %cmp99 = icmp ugt i16 %131, 1
  br i1 %cmp99, label %if.then113.thread, label %lor.lhs.false101

if.then113.thread:                                ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  %flags114239 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 35
  %132 = ptrtoint ptr %flags114239 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %flags114239, align 8
  %or115240 = or i64 %133, 2
  store i64 %or115240, ptr %flags114239, align 8
  br label %init_adminq_free_arq

lor.lhs.false101:                                 ; preds = %if.end95
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %131)
  %cmp105 = icmp eq i16 %131, 1
  br i1 %cmp105, label %land.lhs.true107, label %lor.lhs.false101.if.end123_crit_edge

lor.lhs.false101.if.end123_crit_edge:             ; preds = %lor.lhs.false101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

land.lhs.true107:                                 ; preds = %lor.lhs.false101
  %134 = ptrtoint ptr %api_min_ver to i32
  call void @__asan_load2_noabort(i32 %134)
  %.pr234 = load i16, ptr %api_min_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %.pr234)
  %cmp111 = icmp ugt i16 %.pr234, 6
  br i1 %cmp111, label %if.then113, label %land.lhs.true107.if.end123_crit_edge

land.lhs.true107.if.end123_crit_edge:             ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

if.then113:                                       ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #9
  %flags114 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 35
  %135 = ptrtoint ptr %flags114 to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %flags114, align 8
  %or115 = or i64 %136, 2
  store i64 %or115, ptr %flags114, align 8
  br label %if.end123

if.end123:                                        ; preds = %if.then113, %land.lhs.true107.if.end123_crit_edge, %lor.lhs.false101.if.end123_crit_edge, %land.lhs.true86.if.end123_crit_edge
  %call124 = call i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #7
  %nvm_release_on_done = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 28
  %137 = ptrtoint ptr %nvm_release_on_done to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %nvm_release_on_done, align 4
  %nvmupd_state = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 24
  %138 = ptrtoint ptr %nvmupd_state to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %nvmupd_state, align 8
  br label %init_adminq_exit

init_adminq_free_arq:                             ; preds = %if.then113.thread, %if.end32.init_adminq_free_arq_crit_edge, %do.body.init_adminq_free_arq_crit_edge
  %ret_code.0 = phi i32 [ -65, %if.then113.thread ], [ -54, %if.end32.init_adminq_free_arq_crit_edge ], [ %call28, %do.body.init_adminq_free_arq_crit_edge ]
  call fastcc void @i40e_shutdown_arq(ptr noundef %hw)
  br label %init_adminq_free_asq

init_adminq_free_asq:                             ; preds = %init_adminq_free_arq, %i40e_init_arq.exit, %i40e_init_arq.exit.thread253, %if.end11.i188.init_adminq_free_asq_crit_edge, %lor.lhs.false.i180.init_adminq_free_asq_crit_edge, %if.end.i178.init_adminq_free_asq_crit_edge, %i40e_init_asq.exit.thread216.init_adminq_free_asq_crit_edge
  %ret_code.1 = phi i32 [ %call16.i.i198, %i40e_init_arq.exit ], [ %ret_code.0, %init_adminq_free_arq ], [ -4, %if.end.i178.init_adminq_free_asq_crit_edge ], [ -4, %lor.lhs.false.i180.init_adminq_free_asq_crit_edge ], [ -63, %i40e_init_asq.exit.thread216.init_adminq_free_asq_crit_edge ], [ %call.i.i187, %if.end11.i188.init_adminq_free_asq_crit_edge ], [ %ret_code.0.i209.ph, %i40e_init_arq.exit.thread253 ]
  call fastcc void @i40e_shutdown_asq(ptr noundef %hw)
  br label %init_adminq_exit

init_adminq_exit:                                 ; preds = %init_adminq_free_asq, %if.end123, %i40e_init_asq.exit, %i40e_init_asq.exit.thread220, %if.then11.i.i, %if.end11.i.init_adminq_exit_crit_edge, %i40e_adminq_init_regs.exit.init_adminq_exit_crit_edge, %lor.lhs.false11.init_adminq_exit_crit_edge, %lor.lhs.false6.init_adminq_exit_crit_edge, %lor.lhs.false.init_adminq_exit_crit_edge, %entry.init_adminq_exit_crit_edge
  %ret_code.2 = phi i32 [ %call16.i.i, %i40e_init_asq.exit ], [ %ret_code.1, %init_adminq_free_asq ], [ 0, %if.end123 ], [ -4, %lor.lhs.false11.init_adminq_exit_crit_edge ], [ -4, %lor.lhs.false6.init_adminq_exit_crit_edge ], [ -4, %lor.lhs.false.init_adminq_exit_crit_edge ], [ -4, %entry.init_adminq_exit_crit_edge ], [ %ret_code.0.i.ph, %i40e_init_asq.exit.thread220 ], [ %call9.i.i, %if.then11.i.i ], [ %call.i.i, %if.end11.i.init_adminq_exit_crit_edge ], [ -63, %i40e_adminq_init_regs.exit.init_adminq_exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %eetrack_hi) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %eetrack_lo) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %oem_lo) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %oem_hi) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cfg_ptr) #7
  ret i32 %ret_code.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_get_firmware_version(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @i40e_set_hw_flags(ptr nocapture noundef %hw) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 35
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %flags, align 8
  %mac = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 3
  %1 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mac, align 8
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %2, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb15
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %api_maj_ver = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 10
  %4 = ptrtoint ptr %api_maj_ver to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %api_maj_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp = icmp ugt i16 %5, 1
  br i1 %cmp, label %sw.bb.sw.epilog.sink.split_crit_edge, label %lor.lhs.false

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

lor.lhs.false:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp5 = icmp eq i16 %5, 1
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true:                                    ; preds = %lor.lhs.false
  %api_min_ver = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 11
  %6 = ptrtoint ptr %api_min_ver to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %api_min_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %7)
  %cmp8 = icmp ugt i16 %7, 6
  br i1 %cmp8, label %land.lhs.true.sw.epilog.sink.split_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true.sw.epilog.sink.split_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb15:                                          ; preds = %entry
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 9, ptr %flags, align 8
  %api_maj_ver18 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 10
  %9 = ptrtoint ptr %api_maj_ver18 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %api_maj_ver18, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %10)
  %cmp20 = icmp ugt i16 %10, 1
  br i1 %cmp20, label %if.end53.thread165, label %lor.lhs.false22

if.end53.thread165:                               ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 29, ptr %flags, align 8
  br label %if.then68

lor.lhs.false22:                                  ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %10)
  %cmp25 = icmp eq i16 %10, 1
  br i1 %cmp25, label %land.lhs.true27, label %lor.lhs.false22.sw.epilog_crit_edge

lor.lhs.false22.sw.epilog_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true27:                                  ; preds = %lor.lhs.false22
  %api_min_ver28 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 11
  %12 = ptrtoint ptr %api_min_ver28 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %api_min_ver28, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %13)
  %cmp30 = icmp ugt i16 %13, 5
  br i1 %cmp30, label %land.lhs.true45, label %land.lhs.true27.sw.epilog_crit_edge

land.lhs.true27.sw.epilog_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true45:                                  ; preds = %land.lhs.true27
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 25, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %13)
  %cmp48 = icmp ugt i16 %13, 8
  br i1 %cmp48, label %land.lhs.true63, label %land.lhs.true45.sw.epilog_crit_edge

land.lhs.true45.sw.epilog_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true63:                                  ; preds = %land.lhs.true45
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %flags, align 8
  %or52 = or i64 %16, 4
  store i64 %or52, ptr %flags, align 8
  %17 = ptrtoint ptr %api_min_ver28 to i32
  call void @__asan_load2_noabort(i32 %17)
  %.pr = load i16, ptr %api_min_ver28, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %.pr)
  %cmp66 = icmp ugt i16 %.pr, 9
  br i1 %cmp66, label %land.lhs.true63.if.then68_crit_edge, label %land.lhs.true63.sw.epilog_crit_edge

land.lhs.true63.sw.epilog_crit_edge:              ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true63.if.then68_crit_edge:              ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then68

if.then68:                                        ; preds = %land.lhs.true63.if.then68_crit_edge, %if.end53.thread165
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %flags, align 8
  %or70 = or i64 %19, 256
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then68, %land.lhs.true.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %or70.sink = phi i64 [ %or70, %if.then68 ], [ 22, %land.lhs.true.sw.epilog.sink.split_crit_edge ], [ 22, %sw.bb.sw.epilog.sink.split_crit_edge ]
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %or70.sink, ptr %flags, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %land.lhs.true63.sw.epilog_crit_edge, %land.lhs.true45.sw.epilog_crit_edge, %land.lhs.true27.sw.epilog_crit_edge, %lor.lhs.false22.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %api_maj_ver72 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 10
  %21 = ptrtoint ptr %api_maj_ver72 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %api_maj_ver72, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %22)
  %cmp74 = icmp ugt i16 %22, 1
  br i1 %cmp74, label %if.end109.thread175, label %lor.lhs.false76

if.end109.thread175:                              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %flags, align 8
  %or108176 = or i64 %24, 168
  store i64 %or108176, ptr %flags, align 8
  br label %if.then124

lor.lhs.false76:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %22)
  %cmp79 = icmp eq i16 %22, 1
  br i1 %cmp79, label %land.lhs.true81, label %lor.lhs.false76.if.end127_crit_edge

lor.lhs.false76.if.end127_crit_edge:              ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

land.lhs.true81:                                  ; preds = %lor.lhs.false76
  %api_min_ver82 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 11
  %25 = ptrtoint ptr %api_min_ver82 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %api_min_ver82, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %26)
  %cmp84 = icmp ugt i16 %26, 4
  br i1 %cmp84, label %land.lhs.true99, label %land.lhs.true81.if.end127_crit_edge

land.lhs.true81.if.end127_crit_edge:              ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

land.lhs.true99:                                  ; preds = %land.lhs.true81
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %flags, align 8
  %or88 = or i64 %28, 8
  store i64 %or88, ptr %flags, align 8
  %29 = ptrtoint ptr %api_min_ver82 to i32
  call void @__asan_load2_noabort(i32 %29)
  %.pr182 = load i16, ptr %api_min_ver82, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %.pr182)
  %cmp102 = icmp ugt i16 %.pr182, 7
  br i1 %cmp102, label %land.lhs.true119, label %land.lhs.true99.if.end127_crit_edge

land.lhs.true99.if.end127_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

land.lhs.true119:                                 ; preds = %land.lhs.true99
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %flags, align 8
  %or108 = or i64 %31, 160
  store i64 %or108, ptr %flags, align 8
  %32 = ptrtoint ptr %api_min_ver82 to i32
  call void @__asan_load2_noabort(i32 %32)
  %.pr184 = load i16, ptr %api_min_ver82, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %.pr184)
  %cmp122 = icmp ugt i16 %.pr184, 8
  br i1 %cmp122, label %land.lhs.true119.if.then124_crit_edge, label %land.lhs.true119.if.end127_crit_edge

land.lhs.true119.if.end127_crit_edge:             ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

land.lhs.true119.if.then124_crit_edge:            ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then124

if.then124:                                       ; preds = %land.lhs.true119.if.then124_crit_edge, %if.end109.thread175
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %flags, align 8
  %or126 = or i64 %34, 64
  store i64 %or126, ptr %flags, align 8
  br label %if.end127

if.end127:                                        ; preds = %if.then124, %land.lhs.true119.if.end127_crit_edge, %land.lhs.true99.if.end127_crit_edge, %land.lhs.true81.if.end127_crit_edge, %lor.lhs.false76.if.end127_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_read_nvm_word(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_release_resource(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i40e_shutdown_arq(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arq_mutex = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 13
  tail call void @mutex_lock_nested(ptr noundef %arq_mutex, i32 noundef 0) #7
  %count = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 4
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %entry.shutdown_arq_out_crit_edge, label %do.body

entry.shutdown_arq_out_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %shutdown_arq_out

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %head = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 8
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %tail = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 9
  %8 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail, align 4
  %add.ptr11 = getelementptr i8, ptr %7, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %len = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 10
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 8
  %add.ptr18 = getelementptr i8, ptr %11, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 8
  %bal = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 12
  %16 = ptrtoint ptr %bal to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bal, align 8
  %add.ptr25 = getelementptr i8, ptr %15, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 0) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 8
  %bah = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 11
  %20 = ptrtoint ptr %bah to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bah, align 4
  %add.ptr32 = getelementptr i8, ptr %19, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 0) #7, !srcloc !71
  %22 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %count, align 8
  %num_arq_entries.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 3
  %23 = ptrtoint ptr %num_arq_entries.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_arq_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp18.not.i = icmp eq i16 %24, 0
  br i1 %cmp18.not.i, label %do.body.i40e_free_arq_bufs.exit_crit_edge, label %for.body.lr.ph.i

do.body.i40e_free_arq_bufs.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %i40e_free_arq_bufs.exit

for.body.lr.ph.i:                                 ; preds = %do.body
  %r.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.019.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %r.i, align 4
  %arrayidx.i = getelementptr %struct.i40e_dma_mem, ptr %26, i32 %i.019.i
  %call.i = tail call i32 @i40e_free_dma_mem_d(ptr noundef %hw, ptr noundef %arrayidx.i) #7
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %27 = ptrtoint ptr %num_arq_entries.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %num_arq_entries.i, align 4
  %conv.i = zext i16 %28 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.i40e_free_arq_bufs.exit_crit_edge

for.body.i.i40e_free_arq_bufs.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i40e_free_arq_bufs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

i40e_free_arq_bufs.exit:                          ; preds = %for.body.i.i40e_free_arq_bufs.exit_crit_edge, %do.body.i40e_free_arq_bufs.exit_crit_edge
  %aq.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23
  %desc_buf.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 1
  %call5.i = tail call i32 @i40e_free_dma_mem_d(ptr noundef %hw, ptr noundef %desc_buf.i) #7
  %call8.i = tail call i32 @i40e_free_virt_mem_d(ptr noundef %hw, ptr noundef %aq.i) #7
  br label %shutdown_arq_out

shutdown_arq_out:                                 ; preds = %i40e_free_arq_bufs.exit, %entry.shutdown_arq_out_crit_edge
  tail call void @mutex_unlock(ptr noundef %arq_mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i40e_shutdown_asq(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %asq_mutex = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 12
  tail call void @mutex_lock_nested(ptr noundef %asq_mutex, i32 noundef 0) #7
  %count = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 4
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %entry.shutdown_asq_out_crit_edge, label %do.body

entry.shutdown_asq_out_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %shutdown_asq_out

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %head = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 8
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %tail = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 9
  %8 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail, align 4
  %add.ptr11 = getelementptr i8, ptr %7, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %len = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 10
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %add.ptr18 = getelementptr i8, ptr %11, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 8
  %bal = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 12
  %16 = ptrtoint ptr %bal to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bal, align 4
  %add.ptr25 = getelementptr i8, ptr %15, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 0) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 8
  %bah = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 11
  %20 = ptrtoint ptr %bah to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bah, align 4
  %add.ptr32 = getelementptr i8, ptr %19, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 0) #7, !srcloc !71
  %22 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %count, align 4
  %num_asq_entries.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 4
  %23 = ptrtoint ptr %num_asq_entries.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_asq_entries.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp29.not.i = icmp eq i16 %24, 0
  br i1 %cmp29.not.i, label %do.body.i40e_free_asq_bufs.exit_crit_edge, label %for.body.lr.ph.i

do.body.i40e_free_asq_bufs.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %i40e_free_asq_bufs.exit

for.body.lr.ph.i:                                 ; preds = %do.body
  %r.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.030.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %r.i, align 4
  %pa.i = getelementptr %struct.i40e_dma_mem, ptr %26, i32 %i.030.i, i32 1
  %27 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pa.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.i40e_dma_mem, ptr %26, i32 %i.030.i
  %call.i = tail call i32 @i40e_free_dma_mem_d(ptr noundef %hw, ptr noundef %arrayidx.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %29 = ptrtoint ptr %num_asq_entries.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %num_asq_entries.i, align 2
  %conv.i = zext i16 %30 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.i40e_free_asq_bufs.exit_crit_edge

for.inc.i.i40e_free_asq_bufs.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i40e_free_asq_bufs.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

i40e_free_asq_bufs.exit:                          ; preds = %for.inc.i.i40e_free_asq_bufs.exit_crit_edge, %do.body.i40e_free_asq_bufs.exit_crit_edge
  %asq8.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1
  %cmd_buf.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 2
  %call9.i = tail call i32 @i40e_free_virt_mem_d(ptr noundef %hw, ptr noundef %cmd_buf.i) #7
  %desc_buf.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 1
  %call12.i = tail call i32 @i40e_free_dma_mem_d(ptr noundef %hw, ptr noundef %desc_buf.i) #7
  %call15.i = tail call i32 @i40e_free_virt_mem_d(ptr noundef %hw, ptr noundef %asq8.i) #7
  br label %shutdown_asq_out

shutdown_asq_out:                                 ; preds = %i40e_free_asq_bufs.exit, %entry.shutdown_asq_out_crit_edge
  tail call void @mutex_unlock(ptr noundef %asq_mutex) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_shutdown_adminq(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @i40e_check_asq_alive(ptr noundef %hw) #7
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @i40e_aq_queue_shutdown(ptr noundef %hw, i1 noundef zeroext true) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @i40e_shutdown_asq(ptr noundef %hw)
  tail call fastcc void @i40e_shutdown_arq(ptr noundef %hw)
  %nvm_buff = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 27
  %0 = ptrtoint ptr %nvm_buff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvm_buff, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 @i40e_free_virt_mem_d(ptr noundef %hw, ptr noundef %nvm_buff) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @i40e_check_asq_alive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_queue_shutdown(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_free_virt_mem_d(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_asq_send_command_atomic(ptr noundef %hw, ptr noundef %desc, ptr noundef %buff, i16 noundef zeroext %buff_size, ptr noundef readonly %cmd_details, i1 noundef zeroext %is_atomic_context) local_unnamed_addr #0 align 64 {
entry:
  %desc_cb.i = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %asq_mutex = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 12
  tail call void @mutex_lock_nested(ptr noundef %asq_mutex, i32 noundef 0) #7
  %count = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 4
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %do.body, label %if.end13

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %2 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_mask, align 8
  %and = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.asq_send_command_error_crit_edge, label %do.end

do.body.asq_send_command_error_crit_edge:         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %asq_send_command_error

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %bus_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %4 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bus_id, align 2
  %conv6 = zext i16 %5 to i32
  %device = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  %conv8 = zext i16 %7 to i32
  %func = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %func, align 4
  %conv10 = zext i16 %9 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv6, i32 noundef %conv8, i32 noundef %conv10) #10
  br label %asq_send_command_error

if.end13:                                         ; preds = %entry
  %asq_last_status = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  %10 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %asq_last_status, align 8
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 8
  %head = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 8
  %13 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %head, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %14
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !81
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %num_asq_entries = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 4
  %17 = ptrtoint ptr %num_asq_entries to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_asq_entries, align 2
  %conv21 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv21)
  %cmp22.not = icmp ult i32 %16, %conv21
  br i1 %cmp22.not, label %if.end47, label %do.body25

do.body25:                                        ; preds = %if.end13
  %debug_mask26 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %19 = ptrtoint ptr %debug_mask26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug_mask26, align 8
  %and27 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body25.asq_send_command_error_crit_edge, label %do.end32

do.body25.asq_send_command_error_crit_edge:       ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %asq_send_command_error

do.end32:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  %bus_id35 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %21 = ptrtoint ptr %bus_id35 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %bus_id35, align 2
  %conv36 = zext i16 %22 to i32
  %device38 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %23 = ptrtoint ptr %device38 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %device38, align 2
  %conv39 = zext i16 %24 to i32
  %func41 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %25 = ptrtoint ptr %func41 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %func41, align 4
  %conv42 = zext i16 %26 to i32
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv36, i32 noundef %conv39, i32 noundef %conv42, i32 noundef %16) #10
  br label %asq_send_command_error

if.end47:                                         ; preds = %if.end13
  %cmd_buf = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 2
  %27 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cmd_buf, align 4
  %next_to_use = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 6
  %29 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %next_to_use, align 4
  %idxprom = zext i16 %30 to i32
  %arrayidx = getelementptr %struct.i40e_asq_cmd_details, ptr %28, i32 %idxprom
  %tobool52.not = icmp eq ptr %cmd_details, null
  br i1 %tobool52.not, label %if.else, label %if.then53

if.then53:                                        ; preds = %if.end47
  %31 = call ptr @memcpy(ptr %arrayidx, ptr %cmd_details, i32 32)
  %cookie = getelementptr %struct.i40e_asq_cmd_details, ptr %28, i32 %idxprom, i32 1
  %32 = ptrtoint ptr %cookie to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %cookie, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %tobool54.not = icmp eq i64 %33, 0
  br i1 %tobool54.not, label %if.then53.if.end63_crit_edge, label %if.then55

if.then53.if.end63_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then55:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i64 %33, 32
  %conv58 = trunc i64 %shr to i32
  %34 = tail call i32 @llvm.bswap.i32(i32 %conv58)
  %cookie_high = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 4
  %35 = ptrtoint ptr %cookie_high to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %cookie_high, align 4
  %36 = ptrtoint ptr %cookie to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %cookie, align 8
  %conv61 = trunc i64 %37 to i32
  %38 = tail call i32 @llvm.bswap.i32(i32 %conv61)
  %cookie_low = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 5
  %39 = ptrtoint ptr %cookie_low to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %cookie_low, align 4
  br label %if.end63

if.else:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %40 = call ptr @memset(ptr %arrayidx, i32 0, i32 32)
  br label %if.end63

if.end63:                                         ; preds = %if.else, %if.then55, %if.then53.if.end63_crit_edge
  %flags_dis = getelementptr %struct.i40e_asq_cmd_details, ptr %28, i32 %idxprom, i32 3
  %41 = ptrtoint ptr %flags_dis to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %flags_dis, align 2
  %43 = xor i16 %42, -1
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %45 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %desc, align 4
  %and66 = and i16 %46, %44
  store i16 %and66, ptr %desc, align 4
  %flags_ena = getelementptr %struct.i40e_asq_cmd_details, ptr %28, i32 %idxprom, i32 2
  %47 = ptrtoint ptr %flags_ena to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %flags_ena, align 8
  %49 = tail call i16 @llvm.bswap.i16(i16 %48)
  %or530 = or i16 %49, %and66
  %50 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %or530, ptr %desc, align 4
  %conv72 = zext i16 %buff_size to i32
  %asq_buf_size = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 6
  %51 = ptrtoint ptr %asq_buf_size to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %asq_buf_size, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %52, i16 %buff_size)
  %cmp75 = icmp ult i16 %52, %buff_size
  br i1 %cmp75, label %do.body78, label %if.end101

do.body78:                                        ; preds = %if.end63
  %debug_mask79 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %53 = ptrtoint ptr %debug_mask79 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %debug_mask79, align 8
  %and80 = and i32 %54, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %do.body78.asq_send_command_error_crit_edge, label %do.end85

do.body78.asq_send_command_error_crit_edge:       ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #9
  br label %asq_send_command_error

do.end85:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #9
  %bus_id88 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %55 = ptrtoint ptr %bus_id88 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %bus_id88, align 2
  %conv89 = zext i16 %56 to i32
  %device91 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %57 = ptrtoint ptr %device91 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %device91, align 2
  %conv92 = zext i16 %58 to i32
  %func94 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %59 = ptrtoint ptr %func94 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %func94, align 4
  %conv95 = zext i16 %60 to i32
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv89, i32 noundef %conv92, i32 noundef %conv95, i32 noundef %conv72) #10
  br label %asq_send_command_error

if.end101:                                        ; preds = %if.end63
  %postpone = getelementptr %struct.i40e_asq_cmd_details, ptr %28, i32 %idxprom, i32 5
  %61 = ptrtoint ptr %postpone to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %postpone, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool102.not = icmp eq i8 %62, 0
  br i1 %tobool102.not, label %if.end101.if.end128_crit_edge, label %land.lhs.true

if.end101.if.end128_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

land.lhs.true:                                    ; preds = %if.end101
  %async = getelementptr %struct.i40e_asq_cmd_details, ptr %28, i32 %idxprom, i32 4
  %63 = ptrtoint ptr %async to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %async, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool104.not = icmp eq i8 %64, 0
  br i1 %tobool104.not, label %do.body106, label %land.lhs.true.if.end128_crit_edge

land.lhs.true.if.end128_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

do.body106:                                       ; preds = %land.lhs.true
  %debug_mask107 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %65 = ptrtoint ptr %debug_mask107 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %debug_mask107, align 8
  %and108 = and i32 %66, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %do.body106.asq_send_command_error_crit_edge, label %do.end113

do.body106.asq_send_command_error_crit_edge:      ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #9
  br label %asq_send_command_error

do.end113:                                        ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #9
  %bus_id116 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %67 = ptrtoint ptr %bus_id116 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %bus_id116, align 2
  %conv117 = zext i16 %68 to i32
  %device119 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %69 = ptrtoint ptr %device119 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %device119, align 2
  %conv120 = zext i16 %70 to i32
  %func122 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %71 = ptrtoint ptr %func122 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %func122, align 4
  %conv123 = zext i16 %72 to i32
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv117, i32 noundef %conv120, i32 noundef %conv123) #10
  br label %asq_send_command_error

if.end128:                                        ; preds = %land.lhs.true.if.end128_crit_edge, %if.end101.if.end128_crit_edge
  %next_to_clean.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 7
  %73 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %next_to_clean.i, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc_cb.i) #7
  %desc_buf.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 1
  %75 = call ptr @memset(ptr %desc_cb.i, i32 255, i32 32)
  %76 = ptrtoint ptr %desc_buf.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %desc_buf.i, align 4
  %78 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cmd_buf, align 4
  %80 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw, align 8
  %82 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %head, align 4
  %add.ptr93.i = getelementptr i8, ptr %81, i32 %83
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93.i) #7, !srcloc !81
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %conv94.i = zext i16 %74 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %conv94.i)
  %cmp.not95.i = icmp eq i32 %85, %conv94.i
  br i1 %cmp.not95.i, label %if.end128.while.end.i_crit_edge, label %do.body.lr.ph.i

if.end128.while.end.i_crit_edge:                  ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

do.body.lr.ph.i:                                  ; preds = %if.end128
  %arrayidx4.i = getelementptr %struct.i40e_asq_cmd_details, ptr %79, i32 %conv94.i
  %arrayidx.i = getelementptr %struct.i40e_aq_desc, ptr %77, i32 %conv94.i
  %debug_mask.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %bus_id.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %device.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %func.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %if.end33.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %conv99.i = phi i32 [ %conv94.i, %do.body.lr.ph.i ], [ %idxprom42.i, %if.end33.i.do.body.i_crit_edge ]
  %details.098.i = phi ptr [ %arrayidx4.i, %do.body.lr.ph.i ], [ %arrayidx47.i, %if.end33.i.do.body.i_crit_edge ]
  %ntc.097.i = phi i16 [ %74, %do.body.lr.ph.i ], [ %spec.store.select.i, %if.end33.i.do.body.i_crit_edge ]
  %desc.096.i = phi ptr [ %arrayidx.i, %do.body.lr.ph.i ], [ %arrayidx43.i, %if.end33.i.do.body.i_crit_edge ]
  %86 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %debug_mask.i, align 8
  %and.i = and i32 %87, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end29.i_crit_edge, label %do.end.i

do.body.i.do.end29.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %bus_id.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %bus_id.i, align 2
  %conv11.i = zext i16 %89 to i32
  %90 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %device.i, align 2
  %conv13.i = zext i16 %91 to i32
  %92 = ptrtoint ptr %func.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %func.i, align 4
  %conv15.i = zext i16 %93 to i32
  %94 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hw, align 8
  %96 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %head, align 4
  %add.ptr23.i = getelementptr i8, ptr %95, i32 %97
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #7, !srcloc !81
  %99 = call i32 @llvm.bswap.i32(i32 %98) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv11.i, i32 noundef %conv13.i, i32 noundef %conv15.i, i32 noundef %conv99.i, i32 noundef %99) #10
  br label %do.end29.i

do.end29.i:                                       ; preds = %do.end.i, %do.body.i.do.end29.i_crit_edge
  %100 = ptrtoint ptr %details.098.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %details.098.i, align 8
  %tobool30.not.i = icmp eq ptr %101, null
  br i1 %tobool30.not.i, label %do.end29.i.if.end33.i_crit_edge, label %if.then31.i

do.end29.i.if.end33.i_crit_edge:                  ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

if.then31.i:                                      ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %102 = call ptr @memcpy(ptr %desc_cb.i, ptr %desc.096.i, i32 32)
  call void %101(ptr noundef %hw, ptr noundef nonnull %desc_cb.i) #7
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then31.i, %do.end29.i.if.end33.i_crit_edge
  %103 = call ptr @memset(ptr %desc.096.i, i32 0, i32 32)
  %104 = call ptr @memset(ptr %details.098.i, i32 0, i32 32)
  %inc.i = add i16 %ntc.097.i, 1
  %105 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %106)
  %cmp36.i = icmp eq i16 %inc.i, %106
  %spec.store.select.i = select i1 %cmp36.i, i16 0, i16 %inc.i
  %107 = ptrtoint ptr %desc_buf.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %desc_buf.i, align 4
  %idxprom42.i = zext i16 %spec.store.select.i to i32
  %arrayidx43.i = getelementptr %struct.i40e_aq_desc, ptr %108, i32 %idxprom42.i
  %109 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cmd_buf, align 4
  %arrayidx47.i = getelementptr %struct.i40e_asq_cmd_details, ptr %110, i32 %idxprom42.i
  %111 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hw, align 8
  %113 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %head, align 4
  %add.ptr.i = getelementptr i8, ptr %112, i32 %114
  %115 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !81
  %116 = call i32 @llvm.bswap.i32(i32 %115) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %cmp.not.i = icmp eq i32 %116, %idxprom42.i
  br i1 %cmp.not.i, label %if.end33.i.while.end.i_crit_edge, label %if.end33.i.do.body.i_crit_edge

if.end33.i.do.body.i_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end33.i.while.end.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %if.end33.i.while.end.i_crit_edge, %if.end128.while.end.i_crit_edge
  %ntc.0.lcssa.i = phi i16 [ %74, %if.end128.while.end.i_crit_edge ], [ %spec.store.select.i, %if.end33.i.while.end.i_crit_edge ]
  %117 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %ntc.0.lcssa.i, ptr %next_to_clean.i, align 2
  %118 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %next_to_use, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %ntc.0.lcssa.i, i16 %119)
  %cmp52.i = icmp ugt i16 %ntc.0.lcssa.i, %119
  br i1 %cmp52.i, label %while.end.i.i40e_clean_asq.exit_crit_edge, label %cond.false.i

while.end.i.i40e_clean_asq.exit_crit_edge:        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i40e_clean_asq.exit

cond.false.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %120 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %count, align 4
  br label %i40e_clean_asq.exit

i40e_clean_asq.exit:                              ; preds = %cond.false.i, %while.end.i.i40e_clean_asq.exit_crit_edge
  %cond.i = phi i16 [ %121, %cond.false.i ], [ 0, %while.end.i.i40e_clean_asq.exit_crit_edge ]
  %122 = xor i16 %119, -1
  %add.i = add i16 %ntc.0.lcssa.i, %122
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc_cb.i) #7
  %sub60.i = sub i16 0, %cond.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i, i16 %sub60.i)
  %cmp131 = icmp eq i16 %add.i, %sub60.i
  br i1 %cmp131, label %do.body134, label %if.end156

do.body134:                                       ; preds = %i40e_clean_asq.exit
  %debug_mask135 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %123 = ptrtoint ptr %debug_mask135 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %debug_mask135, align 8
  %and136 = and i32 %124, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %do.body134.asq_send_command_error_crit_edge, label %do.end141

do.body134.asq_send_command_error_crit_edge:      ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #9
  br label %asq_send_command_error

do.end141:                                        ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #9
  %bus_id144 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %125 = ptrtoint ptr %bus_id144 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %bus_id144, align 2
  %conv145 = zext i16 %126 to i32
  %device147 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %127 = ptrtoint ptr %device147 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %device147, align 2
  %conv148 = zext i16 %128 to i32
  %func150 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %129 = ptrtoint ptr %func150 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %func150, align 4
  %conv151 = zext i16 %130 to i32
  %call152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv145, i32 noundef %conv148, i32 noundef %conv151) #10
  br label %asq_send_command_error

if.end156:                                        ; preds = %i40e_clean_asq.exit
  %131 = ptrtoint ptr %desc_buf.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %desc_buf.i, align 4
  %idxprom163 = zext i16 %119 to i32
  %arrayidx164 = getelementptr %struct.i40e_aq_desc, ptr %132, i32 %idxprom163
  %133 = call ptr @memcpy(ptr %arrayidx164, ptr %desc, i32 32)
  %cmp165.not = icmp eq ptr %buff, null
  br i1 %cmp165.not, label %if.end156.do.body183_crit_edge, label %if.then167

if.end156.do.body183_crit_edge:                   ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body183

if.then167:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  %r = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 3
  %134 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %r, align 4
  %136 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %next_to_use, align 4
  %idxprom173 = zext i16 %137 to i32
  %arrayidx174 = getelementptr %struct.i40e_dma_mem, ptr %135, i32 %idxprom173
  %138 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx174, align 4
  %140 = call ptr @memcpy(ptr %139, ptr %buff, i32 %conv72)
  %141 = call i16 @llvm.bswap.i16(i16 %buff_size)
  %datalen = getelementptr %struct.i40e_aq_desc, ptr %132, i32 %idxprom163, i32 2
  %142 = ptrtoint ptr %datalen to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %141, ptr %datalen, align 4
  %pa = getelementptr %struct.i40e_dma_mem, ptr %135, i32 %idxprom173, i32 1
  %params = getelementptr %struct.i40e_aq_desc, ptr %132, i32 %idxprom163, i32 6
  %addr_high = getelementptr inbounds %struct.anon.3, ptr %params, i32 0, i32 2
  %143 = ptrtoint ptr %addr_high to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %addr_high, align 4
  %144 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %pa, align 4
  %146 = call i32 @llvm.bswap.i32(i32 %145)
  %addr_low = getelementptr inbounds %struct.anon.3, ptr %params, i32 0, i32 3
  %147 = ptrtoint ptr %addr_low to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %addr_low, align 4
  br label %do.body183

do.body183:                                       ; preds = %if.then167, %if.end156.do.body183_crit_edge
  %dma_buff.0 = phi ptr [ %arrayidx174, %if.then167 ], [ null, %if.end156.do.body183_crit_edge ]
  %debug_mask184 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %148 = ptrtoint ptr %debug_mask184 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %debug_mask184, align 8
  %and185 = and i32 %149, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %do.body183.do.end204_crit_edge, label %do.end190

do.body183.do.end204_crit_edge:                   ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end204

do.end190:                                        ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #9
  %bus_id193 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %150 = ptrtoint ptr %bus_id193 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %bus_id193, align 2
  %conv194 = zext i16 %151 to i32
  %device196 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %152 = ptrtoint ptr %device196 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %device196, align 2
  %conv197 = zext i16 %153 to i32
  %func199 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %154 = ptrtoint ptr %func199 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %func199, align 4
  %conv200 = zext i16 %155 to i32
  %call201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv194, i32 noundef %conv197, i32 noundef %conv200) #10
  br label %do.end204

do.end204:                                        ; preds = %do.end190, %do.body183.do.end204_crit_edge
  call void @i40e_debug_aq(ptr noundef %hw, i32 noundef 100663296, ptr noundef %arrayidx164, ptr noundef %buff, i16 noundef zeroext %buff_size) #7
  %156 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %next_to_use, align 4
  %inc = add i16 %157, 1
  %158 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %159)
  %cmp216 = icmp eq i16 %inc, %159
  %spec.store.select = select i1 %cmp216, i16 0, i16 %inc
  %160 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %spec.store.select, ptr %next_to_use, align 4
  %161 = ptrtoint ptr %postpone to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %postpone, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool224.not = icmp eq i8 %162, 0
  br i1 %tobool224.not, label %do.body226, label %do.end204.if.end237_crit_edge

do.end204.if.end237_crit_edge:                    ; preds = %do.end204
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end237

do.body226:                                       ; preds = %do.end204
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  call void @arm_heavy_mb() #7
  %163 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %next_to_use, align 4
  %conv232 = zext i16 %164 to i32
  %165 = call i32 @llvm.bswap.i32(i32 %conv232)
  %166 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %hw, align 8
  %tail = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 9
  %168 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %tail, align 4
  %add.ptr236 = getelementptr i8, ptr %167, i32 %169
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr236, i32 %165) #7, !srcloc !71
  br label %if.end237

if.end237:                                        ; preds = %do.body226, %do.end204.if.end237_crit_edge
  %async238 = getelementptr %struct.i40e_asq_cmd_details, ptr %28, i32 %idxprom, i32 4
  %170 = ptrtoint ptr %async238 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %async238, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool239.not = icmp eq i8 %171, 0
  br i1 %tobool239.not, label %land.lhs.true240, label %if.end237.if.end257_crit_edge

if.end237.if.end257_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end257

land.lhs.true240:                                 ; preds = %if.end237
  %172 = ptrtoint ptr %postpone to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %postpone, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool242.not = icmp eq i8 %173, 0
  br i1 %tobool242.not, label %do.body244.preheader, label %land.lhs.true240.if.end257_crit_edge

land.lhs.true240.if.end257_crit_edge:             ; preds = %land.lhs.true240
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end257

do.body244.preheader:                             ; preds = %land.lhs.true240
  %asq_cmd_timeout = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 2
  br label %do.body244

do.body244:                                       ; preds = %if.end251.do.body244_crit_edge, %do.body244.preheader
  %total_delay.0 = phi i32 [ %add, %if.end251.do.body244_crit_edge ], [ 0, %do.body244.preheader ]
  %174 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %hw, align 8
  %176 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %head, align 4
  %add.ptr.i534 = getelementptr i8, ptr %175, i32 %177
  %178 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i534) #7, !srcloc !81
  %179 = call i32 @llvm.bswap.i32(i32 %178) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %180 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %next_to_use, align 4
  %conv.i = zext i16 %181 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %179, i32 %conv.i)
  %cmp.i = icmp eq i32 %179, %conv.i
  br i1 %cmp.i, label %do.body244.if.end257_crit_edge, label %if.end247

do.body244.if.end257_crit_edge:                   ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end257

if.end247:                                        ; preds = %do.body244
  br i1 %is_atomic_context, label %if.then249, label %if.else250

if.then249:                                       ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %182 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %182(i32 noundef 10737400) #7
  br label %if.end251

if.else250:                                       ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #9
  call void @usleep_range_state(i32 noundef 40, i32 noundef 60, i32 noundef 2) #7
  br label %if.end251

if.end251:                                        ; preds = %if.else250, %if.then249
  %add = add i32 %total_delay.0, 50
  %183 = ptrtoint ptr %asq_cmd_timeout to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %asq_cmd_timeout, align 8
  %cmp254 = icmp ult i32 %add, %184
  br i1 %cmp254, label %if.end251.do.body244_crit_edge, label %if.end251.if.end257_crit_edge

if.end251.if.end257_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end257

if.end251.do.body244_crit_edge:                   ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body244

if.end257:                                        ; preds = %if.end251.if.end257_crit_edge, %do.body244.if.end257_crit_edge, %land.lhs.true240.if.end257_crit_edge, %if.end237.if.end257_crit_edge
  %185 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %hw, align 8
  %187 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %head, align 4
  %add.ptr.i537 = getelementptr i8, ptr %186, i32 %188
  %189 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i537) #7, !srcloc !81
  %190 = call i32 @llvm.bswap.i32(i32 %189) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %191 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %next_to_use, align 4
  %conv.i539 = zext i16 %192 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %190, i32 %conv.i539)
  %cmp.i540 = icmp eq i32 %190, %conv.i539
  br i1 %cmp.i540, label %if.then259, label %if.end257.do.body314_crit_edge

if.end257.do.body314_crit_edge:                   ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body314

if.then259:                                       ; preds = %if.end257
  %193 = call ptr @memcpy(ptr %desc, ptr %arrayidx164, i32 32)
  br i1 %cmp165.not, label %if.then259.if.end265_crit_edge, label %if.then262

if.then259.if.end265_crit_edge:                   ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end265

if.then262:                                       ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #9
  %194 = ptrtoint ptr %dma_buff.0 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dma_buff.0, align 4
  %196 = call ptr @memcpy(ptr %buff, ptr %195, i32 %conv72)
  br label %if.end265

if.end265:                                        ; preds = %if.then262, %if.then259.if.end265_crit_edge
  %retval266 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 3
  %197 = ptrtoint ptr %retval266 to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %retval266, align 2
  %199 = call i16 @llvm.bswap.i16(i16 %198)
  %conv267 = zext i16 %199 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %198)
  %cmp268.not = icmp eq i16 %198, 0
  br i1 %cmp268.not, label %if.end265.if.end297_crit_edge, label %do.body271

if.end265.if.end297_crit_edge:                    ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end297

do.body271:                                       ; preds = %if.end265
  %200 = ptrtoint ptr %debug_mask184 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %debug_mask184, align 8
  %and273 = and i32 %201, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and273)
  %tobool274.not = icmp eq i32 %and273, 0
  br i1 %tobool274.not, label %do.body271.do.end293_crit_edge, label %do.end278

do.body271.do.end293_crit_edge:                   ; preds = %do.body271
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end293

do.end278:                                        ; preds = %do.body271
  call void @__sanitizer_cov_trace_pc() #9
  %bus_id281 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %202 = ptrtoint ptr %bus_id281 to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %bus_id281, align 2
  %conv282 = zext i16 %203 to i32
  %device284 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %204 = ptrtoint ptr %device284 to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %device284, align 2
  %conv285 = zext i16 %205 to i32
  %func287 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %206 = ptrtoint ptr %func287 to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %func287, align 4
  %conv288 = zext i16 %207 to i32
  %call290 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv282, i32 noundef %conv285, i32 noundef %conv288, i32 noundef %conv267) #10
  br label %do.end293

do.end293:                                        ; preds = %do.end278, %do.body271.do.end293_crit_edge
  %and295 = and i16 %199, 255
  %.pre = zext i16 %and295 to i32
  br label %if.end297

if.end297:                                        ; preds = %do.end293, %if.end265.if.end297_crit_edge
  %conv298.pre-phi = phi i32 [ %.pre, %do.end293 ], [ %conv267, %if.end265.if.end297_crit_edge ]
  %retval1.0 = phi i16 [ %and295, %do.end293 ], [ %199, %if.end265.if.end297_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %retval1.0)
  %switch.selectcmp = icmp eq i16 %retval1.0, 12
  %switch.select = select i1 %switch.selectcmp, i32 -63, i32 -53
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval1.0)
  %switch.selectcmp531 = icmp eq i16 %retval1.0, 0
  %switch.select532 = select i1 %switch.selectcmp531, i32 0, i32 %switch.select
  %208 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %conv298.pre-phi, ptr %asq_last_status, align 8
  br label %do.body314

do.body314:                                       ; preds = %if.end297, %if.end257.do.body314_crit_edge
  %status.1 = phi i32 [ %switch.select532, %if.end297 ], [ 0, %if.end257.do.body314_crit_edge ]
  %209 = ptrtoint ptr %debug_mask184 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %debug_mask184, align 8
  %and316 = and i32 %210, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and316)
  %tobool317.not = icmp eq i32 %and316, 0
  br i1 %tobool317.not, label %do.body314.do.end335_crit_edge, label %do.end321

do.body314.do.end335_crit_edge:                   ; preds = %do.body314
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end335

do.end321:                                        ; preds = %do.body314
  call void @__sanitizer_cov_trace_pc() #9
  %bus_id324 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %211 = ptrtoint ptr %bus_id324 to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %bus_id324, align 2
  %conv325 = zext i16 %212 to i32
  %device327 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %213 = ptrtoint ptr %device327 to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %device327, align 2
  %conv328 = zext i16 %214 to i32
  %func330 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %215 = ptrtoint ptr %func330 to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %func330, align 4
  %conv331 = zext i16 %216 to i32
  %call332 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %conv325, i32 noundef %conv328, i32 noundef %conv331) #10
  br label %do.end335

do.end335:                                        ; preds = %do.end321, %do.body314.do.end335_crit_edge
  call void @i40e_debug_aq(ptr noundef %hw, i32 noundef 100663296, ptr noundef %desc, ptr noundef %buff, i16 noundef zeroext %buff_size) #7
  %wb_desc = getelementptr %struct.i40e_asq_cmd_details, ptr %28, i32 %idxprom, i32 6
  %217 = ptrtoint ptr %wb_desc to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %wb_desc, align 8
  %tobool336.not = icmp eq ptr %218, null
  br i1 %tobool336.not, label %do.end335.if.end339_crit_edge, label %if.then337

do.end335.if.end339_crit_edge:                    ; preds = %do.end335
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end339

if.then337:                                       ; preds = %do.end335
  call void @__sanitizer_cov_trace_pc() #9
  %219 = call ptr @memcpy(ptr %218, ptr %arrayidx164, i32 32)
  br label %if.end339

if.end339:                                        ; preds = %if.then337, %do.end335.if.end339_crit_edge
  br i1 %cmp.i540, label %if.end339.asq_send_command_error_crit_edge, label %land.lhs.true341

if.end339.asq_send_command_error_crit_edge:       ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #9
  br label %asq_send_command_error

land.lhs.true341:                                 ; preds = %if.end339
  %220 = ptrtoint ptr %async238 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %async238, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %tobool343.not = icmp eq i8 %221, 0
  br i1 %tobool343.not, label %land.lhs.true344, label %land.lhs.true341.asq_send_command_error_crit_edge

land.lhs.true341.asq_send_command_error_crit_edge: ; preds = %land.lhs.true341
  call void @__sanitizer_cov_trace_pc() #9
  br label %asq_send_command_error

land.lhs.true344:                                 ; preds = %land.lhs.true341
  %222 = ptrtoint ptr %postpone to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %postpone, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %tobool346.not = icmp eq i8 %223, 0
  br i1 %tobool346.not, label %if.then347, label %land.lhs.true344.asq_send_command_error_crit_edge

land.lhs.true344.asq_send_command_error_crit_edge: ; preds = %land.lhs.true344
  call void @__sanitizer_cov_trace_pc() #9
  br label %asq_send_command_error

if.then347:                                       ; preds = %land.lhs.true344
  %224 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %hw, align 8
  %len = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 10
  %226 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %len, align 4
  %add.ptr353 = getelementptr i8, ptr %225, i32 %227
  %228 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr353) #7, !srcloc !81
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  %229 = and i32 %228, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %tobool358.not = icmp eq i32 %229, 0
  %230 = ptrtoint ptr %debug_mask184 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %debug_mask184, align 8
  %and385 = and i32 %231, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and385)
  %tobool386.not = icmp eq i32 %and385, 0
  br i1 %tobool358.not, label %do.body383, label %do.body360

do.body360:                                       ; preds = %if.then347
  br i1 %tobool386.not, label %do.body360.asq_send_command_error_crit_edge, label %do.end367

do.body360.asq_send_command_error_crit_edge:      ; preds = %do.body360
  call void @__sanitizer_cov_trace_pc() #9
  br label %asq_send_command_error

do.end367:                                        ; preds = %do.body360
  call void @__sanitizer_cov_trace_pc() #9
  %bus_id370 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %232 = ptrtoint ptr %bus_id370 to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %bus_id370, align 2
  %conv371 = zext i16 %233 to i32
  %device373 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %234 = ptrtoint ptr %device373 to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %device373, align 2
  %conv374 = zext i16 %235 to i32
  %func376 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %236 = ptrtoint ptr %func376 to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %func376, align 4
  %conv377 = zext i16 %237 to i32
  %call378 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %conv371, i32 noundef %conv374, i32 noundef %conv377) #10
  br label %asq_send_command_error

do.body383:                                       ; preds = %if.then347
  br i1 %tobool386.not, label %do.body383.asq_send_command_error_crit_edge, label %do.end390

do.body383.asq_send_command_error_crit_edge:      ; preds = %do.body383
  call void @__sanitizer_cov_trace_pc() #9
  br label %asq_send_command_error

do.end390:                                        ; preds = %do.body383
  call void @__sanitizer_cov_trace_pc() #9
  %bus_id393 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %238 = ptrtoint ptr %bus_id393 to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %bus_id393, align 2
  %conv394 = zext i16 %239 to i32
  %device396 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %240 = ptrtoint ptr %device396 to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %device396, align 2
  %conv397 = zext i16 %241 to i32
  %func399 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %242 = ptrtoint ptr %func399 to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %func399, align 4
  %conv400 = zext i16 %243 to i32
  %call401 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv394, i32 noundef %conv397, i32 noundef %conv400) #10
  br label %asq_send_command_error

asq_send_command_error:                           ; preds = %do.end390, %do.body383.asq_send_command_error_crit_edge, %do.end367, %do.body360.asq_send_command_error_crit_edge, %land.lhs.true344.asq_send_command_error_crit_edge, %land.lhs.true341.asq_send_command_error_crit_edge, %if.end339.asq_send_command_error_crit_edge, %do.end141, %do.body134.asq_send_command_error_crit_edge, %do.end113, %do.body106.asq_send_command_error_crit_edge, %do.end85, %do.body78.asq_send_command_error_crit_edge, %do.end32, %do.body25.asq_send_command_error_crit_edge, %do.end, %do.body.asq_send_command_error_crit_edge
  %status.2 = phi i32 [ %status.1, %if.end339.asq_send_command_error_crit_edge ], [ %status.1, %land.lhs.true341.asq_send_command_error_crit_edge ], [ %status.1, %land.lhs.true344.asq_send_command_error_crit_edge ], [ -32, %do.end ], [ -32, %do.body.asq_send_command_error_crit_edge ], [ -56, %do.end32 ], [ -56, %do.body25.asq_send_command_error_crit_edge ], [ -26, %do.end85 ], [ -26, %do.body78.asq_send_command_error_crit_edge ], [ -5, %do.end113 ], [ -5, %do.body106.asq_send_command_error_crit_edge ], [ -56, %do.end141 ], [ -56, %do.body134.asq_send_command_error_crit_edge ], [ -66, %do.end367 ], [ -66, %do.body360.asq_send_command_error_crit_edge ], [ -54, %do.end390 ], [ -54, %do.body383.asq_send_command_error_crit_edge ]
  call void @mutex_unlock(ptr noundef %asq_mutex) #7
  ret i32 %status.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_debug_aq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef %desc, ptr noundef %buff, i16 noundef zeroext %buff_size, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i40e_asq_send_command_atomic(ptr noundef %hw, ptr noundef %desc, ptr noundef %buff, i16 noundef zeroext %buff_size, ptr noundef %cmd_details, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @i40e_fill_default_direct_cmd_desc(ptr nocapture noundef writeonly %desc, i16 noundef zeroext %opcode) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %desc, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %2 = tail call i16 @llvm.bswap.i16(i16 %opcode)
  %opcode1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 1
  %3 = ptrtoint ptr %opcode1 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %opcode1, align 2
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 32, ptr %desc, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_clean_arq_element(ptr noundef %hw, ptr noundef %e, ptr noundef writeonly %pending) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_clean = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 7
  %0 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_clean, align 2
  %2 = call ptr @memset(ptr %e, i32 0, i32 32)
  %arq_mutex = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 13
  tail call void @mutex_lock_nested(ptr noundef %arq_mutex, i32 noundef 0) #7
  %count = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 4
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp = icmp eq i16 %4, 0
  br i1 %cmp, label %do.body, label %if.end15

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %5 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_mask, align 8
  %and = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.clean_arq_element_err_crit_edge, label %do.end

do.body.clean_arq_element_err_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %clean_arq_element_err

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %bus_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %7 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %bus_id, align 2
  %conv8 = zext i16 %8 to i32
  %device = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device, align 2
  %conv10 = zext i16 %10 to i32
  %func = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %func, align 4
  %conv12 = zext i16 %12 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %conv12) #10
  br label %clean_arq_element_err

if.end15:                                         ; preds = %entry
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 8
  %head = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 8
  %15 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %head, align 8
  %add.ptr = getelementptr i8, ptr %14, i32 %16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %18 = and i32 %17, -16580608
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %conv22 = trunc i32 %19 to i16
  %conv24 = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv24)
  %cmp25 = icmp eq i32 %19, %conv24
  br i1 %cmp25, label %if.end15.clean_arq_element_out_crit_edge, label %if.end28

if.end15.clean_arq_element_out_crit_edge:         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %clean_arq_element_out

if.end28:                                         ; preds = %if.end15
  %desc_buf = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 1
  %20 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc_buf, align 8
  %arrayidx = getelementptr %struct.i40e_aq_desc, ptr %21, i32 %conv24
  %retval31 = getelementptr %struct.i40e_aq_desc, ptr %21, i32 %conv24, i32 3
  %22 = ptrtoint ptr %retval31 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %retval31, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %conv32 = zext i16 %24 to i32
  %arq_last_status = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 15
  %25 = ptrtoint ptr %arq_last_status to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv32, ptr %arq_last_status, align 4
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx, align 4
  %28 = and i16 %27, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool37.not = icmp eq i16 %28, 0
  br i1 %tobool37.not, label %if.end28.if.end63_crit_edge, label %if.then38

if.end28.if.end63_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then38:                                        ; preds = %if.end28
  %debug_mask40 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %29 = ptrtoint ptr %debug_mask40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %debug_mask40, align 8
  %and41 = and i32 %30, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.then38.if.end63_crit_edge, label %do.end46

if.then38.if.end63_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

do.end46:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  %bus_id49 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %31 = ptrtoint ptr %bus_id49 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %bus_id49, align 2
  %conv50 = zext i16 %32 to i32
  %device52 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %33 = ptrtoint ptr %device52 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %device52, align 2
  %conv53 = zext i16 %34 to i32
  %func55 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %35 = ptrtoint ptr %func55 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %func55, align 4
  %conv56 = zext i16 %36 to i32
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv50, i32 noundef %conv53, i32 noundef %conv56, i32 noundef %conv32) #10
  br label %if.end63

if.end63:                                         ; preds = %do.end46, %if.then38.if.end63_crit_edge, %if.end28.if.end63_crit_edge
  %ret_code.0 = phi i32 [ -53, %do.end46 ], [ -53, %if.then38.if.end63_crit_edge ], [ 0, %if.end28.if.end63_crit_edge ]
  %37 = call ptr @memcpy(ptr %e, ptr %arrayidx, i32 32)
  %datalen65 = getelementptr %struct.i40e_aq_desc, ptr %21, i32 %conv24, i32 2
  %38 = ptrtoint ptr %datalen65 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %datalen65, align 4
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %buf_len = getelementptr inbounds %struct.i40e_arq_event_info, ptr %e, i32 0, i32 2
  %41 = ptrtoint ptr %buf_len to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %buf_len, align 2
  %43 = tail call i16 @llvm.umin.i16(i16 %40, i16 %42)
  %msg_len = getelementptr inbounds %struct.i40e_arq_event_info, ptr %e, i32 0, i32 1
  %44 = ptrtoint ptr %msg_len to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %msg_len, align 4
  %msg_buf = getelementptr inbounds %struct.i40e_arq_event_info, ptr %e, i32 0, i32 3
  %45 = ptrtoint ptr %msg_buf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %msg_buf, align 4
  %cmp74.not = icmp eq ptr %46, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp78.not = icmp eq i16 %43, 0
  %or.cond = select i1 %cmp74.not, i1 true, i1 %cmp78.not
  br i1 %or.cond, label %if.end63.do.body90_crit_edge, label %if.then80

if.end63.do.body90_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body90

if.then80:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %conv77 = zext i16 %43 to i32
  %r = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 3
  %47 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %r, align 4
  %arrayidx85 = getelementptr %struct.i40e_dma_mem, ptr %48, i32 %conv24
  %49 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx85, align 4
  %51 = call ptr @memcpy(ptr %46, ptr %50, i32 %conv77)
  br label %do.body90

do.body90:                                        ; preds = %if.then80, %if.end63.do.body90_crit_edge
  %debug_mask91 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %52 = ptrtoint ptr %debug_mask91 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %debug_mask91, align 8
  %and92 = and i32 %53, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %do.body90.do.end111_crit_edge, label %do.end97

do.body90.do.end111_crit_edge:                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end111

do.end97:                                         ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #9
  %bus_id100 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %54 = ptrtoint ptr %bus_id100 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %bus_id100, align 2
  %conv101 = zext i16 %55 to i32
  %device103 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %56 = ptrtoint ptr %device103 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %device103, align 2
  %conv104 = zext i16 %57 to i32
  %func106 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %58 = ptrtoint ptr %func106 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %func106, align 4
  %conv107 = zext i16 %59 to i32
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv101, i32 noundef %conv104, i32 noundef %conv107) #10
  br label %do.end111

do.end111:                                        ; preds = %do.end97, %do.body90.do.end111_crit_edge
  %60 = ptrtoint ptr %msg_buf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %msg_buf, align 4
  %arq_buf_size = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 5
  %62 = ptrtoint ptr %arq_buf_size to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arq_buf_size, align 8
  tail call void @i40e_debug_aq(ptr noundef %hw, i32 noundef 100663296, ptr noundef %arrayidx, ptr noundef %61, i16 noundef zeroext %63) #7
  %r116 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 3
  %64 = ptrtoint ptr %r116 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %r116, align 4
  %66 = getelementptr inbounds i8, ptr %arrayidx, i32 2
  %67 = call ptr @memset(ptr %66, i32 0, i32 30)
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 16, ptr %arrayidx, align 4
  %69 = ptrtoint ptr %arq_buf_size to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arq_buf_size, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %70)
  %cmp123 = icmp ugt i16 %70, 512
  %spec.store.select247 = select i1 %cmp123, i16 18, i16 16
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %spec.store.select247, ptr %arrayidx, align 4
  %size = getelementptr %struct.i40e_dma_mem, ptr %65, i32 %conv24, i32 2
  %72 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %size, align 4
  %conv130 = trunc i32 %73 to i16
  %74 = tail call i16 @llvm.bswap.i16(i16 %conv130)
  %75 = ptrtoint ptr %datalen65 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %datalen65, align 4
  %pa = getelementptr %struct.i40e_dma_mem, ptr %65, i32 %conv24, i32 1
  %params = getelementptr %struct.i40e_aq_desc, ptr %21, i32 %conv24, i32 6
  %addr_high = getelementptr inbounds %struct.anon.3, ptr %params, i32 0, i32 2
  %76 = ptrtoint ptr %addr_high to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %addr_high, align 4
  %77 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pa, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  %addr_low = getelementptr inbounds %struct.anon.3, ptr %params, i32 0, i32 3
  %80 = ptrtoint ptr %addr_low to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %addr_low, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %81 = tail call i32 @llvm.bswap.i32(i32 %conv24)
  %82 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw, align 8
  %tail = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 9
  %84 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tail, align 4
  %add.ptr143 = getelementptr i8, ptr %83, i32 %85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143, i32 %81) #7, !srcloc !71
  %inc = add i16 %1, 1
  %num_arq_entries = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 3
  %86 = ptrtoint ptr %num_arq_entries to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %num_arq_entries, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %87)
  %cmp147 = icmp eq i16 %inc, %87
  %spec.store.select = select i1 %cmp147, i16 0, i16 %inc
  %88 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %spec.store.select, ptr %next_to_clean, align 2
  %next_to_use = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 6
  %89 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv22, ptr %next_to_use, align 4
  %opcode = getelementptr inbounds %struct.i40e_aq_desc, ptr %e, i32 0, i32 1
  %90 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %opcode, align 2
  %92 = tail call i16 @llvm.bswap.i16(i16 %91)
  tail call void @i40e_nvmupd_check_wait_event(ptr noundef %hw, i16 noundef zeroext %92, ptr noundef %e) #7
  br label %clean_arq_element_out

clean_arq_element_out:                            ; preds = %do.end111, %if.end15.clean_arq_element_out_crit_edge
  %ntc.0 = phi i16 [ %spec.store.select, %do.end111 ], [ %1, %if.end15.clean_arq_element_out_crit_edge ]
  %ret_code.1 = phi i32 [ %ret_code.0, %do.end111 ], [ -57, %if.end15.clean_arq_element_out_crit_edge ]
  %tobool158.not = icmp eq ptr %pending, null
  br i1 %tobool158.not, label %clean_arq_element_out.clean_arq_element_err_crit_edge, label %if.then159

clean_arq_element_out.clean_arq_element_err_crit_edge: ; preds = %clean_arq_element_out
  call void @__sanitizer_cov_trace_pc() #9
  br label %clean_arq_element_err

if.then159:                                       ; preds = %clean_arq_element_out
  %conv160 = zext i16 %ntc.0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv160)
  %cmp162 = icmp ult i32 %19, %conv160
  br i1 %cmp162, label %cond.true164, label %if.then159.cond.end170_crit_edge

if.then159.cond.end170_crit_edge:                 ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end170

cond.true164:                                     ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %count, align 8
  %conv168 = zext i16 %94 to i32
  br label %cond.end170

cond.end170:                                      ; preds = %cond.true164, %if.then159.cond.end170_crit_edge
  %cond171 = phi i32 [ %conv168, %cond.true164 ], [ 0, %if.then159.cond.end170_crit_edge ]
  %sub = sub nsw i32 %19, %conv160
  %add = add nsw i32 %sub, %cond171
  %conv174 = trunc i32 %add to i16
  %95 = ptrtoint ptr %pending to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv174, ptr %pending, align 2
  br label %clean_arq_element_err

clean_arq_element_err:                            ; preds = %cond.end170, %clean_arq_element_out.clean_arq_element_err_crit_edge, %do.end, %do.body.clean_arq_element_err_crit_edge
  %ret_code.2 = phi i32 [ %ret_code.1, %cond.end170 ], [ %ret_code.1, %clean_arq_element_out.clean_arq_element_err_crit_edge ], [ -32, %do.end ], [ -32, %do.body.clean_arq_element_err_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %arq_mutex) #7
  ret i32 %ret_code.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_nvmupd_check_wait_event(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_config_asq_regs(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %head = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 8
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %tail = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 9
  %6 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail, align 4
  %add.ptr7 = getelementptr i8, ptr %5, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void @arm_heavy_mb() #7
  %num_asq_entries = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 4
  %8 = ptrtoint ptr %num_asq_entries to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_asq_entries, align 2
  %conv = zext i16 %9 to i32
  %or = or i32 %conv, -2147483648
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 8
  %len = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 10
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %add.ptr15 = getelementptr i8, ptr %12, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %10) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %pa = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 1, i32 1
  %15 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pa, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 8
  %bal = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 12
  %20 = ptrtoint ptr %bal to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bal, align 4
  %add.ptr24 = getelementptr i8, ptr %19, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %17) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 8
  %bah = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 11
  %24 = ptrtoint ptr %bah to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bah, align 4
  %add.ptr36 = getelementptr i8, ptr %23, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 0) #7, !srcloc !71
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 8
  %28 = ptrtoint ptr %bal to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bal, align 4
  %add.ptr41 = getelementptr i8, ptr %27, i32 %29
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #7, !srcloc !81
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  %32 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pa, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp.not = icmp eq i32 %31, %33
  %spec.select = select i1 %cmp.not, i32 0, i32 -53
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_allocate_dma_mem_d(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_allocate_virt_mem_d(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_free_dma_mem_d(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_config_arq_regs(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  tail call void @arm_heavy_mb() #7
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %head = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 8
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %tail = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 9
  %6 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail, align 4
  %add.ptr7 = getelementptr i8, ptr %5, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %num_arq_entries = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 3
  %8 = ptrtoint ptr %num_arq_entries to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_arq_entries, align 4
  %conv = zext i16 %9 to i32
  %or = or i32 %conv, -2147483648
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 8
  %len = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 10
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 8
  %add.ptr15 = getelementptr i8, ptr %12, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %10) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  %pa = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pa, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 8
  %bal = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 12
  %20 = ptrtoint ptr %bal to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bal, align 8
  %add.ptr24 = getelementptr i8, ptr %19, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %17) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 8
  %bah = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 0, i32 11
  %24 = ptrtoint ptr %bah to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bah, align 4
  %add.ptr36 = getelementptr i8, ptr %23, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 0) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %num_arq_entries to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_arq_entries, align 4
  %conv42 = zext i16 %27 to i32
  %sub = add nsw i32 %conv42, -1
  %28 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 8
  %31 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tail, align 4
  %add.ptr47 = getelementptr i8, ptr %30, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %28) #7, !srcloc !71
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 8
  %35 = ptrtoint ptr %bal to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bal, align 8
  %add.ptr52 = getelementptr i8, ptr %34, i32 %36
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #7, !srcloc !81
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  %39 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pa, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp.not = icmp eq i32 %38, %40
  %spec.select = select i1 %cmp.not, i32 0, i32 -53
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/i40e/i40e_adminq.c", i32 800, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @i40e_asq_send_command_atomic._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @i40e_asq_send_command_atomic._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/i40e/i40e_adminq.c", i32 810, i32 3}
!8 = !{ptr @i40e_asq_send_command_atomic._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @i40e_asq_send_command_atomic._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/i40e/i40e_adminq.c", i32 839, i32 3}
!12 = !{ptr @i40e_asq_send_command_atomic._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @i40e_asq_send_command_atomic._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/i40e/i40e_adminq.c", i32 848, i32 3}
!16 = !{ptr @i40e_asq_send_command_atomic._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @i40e_asq_send_command_atomic._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/i40e/i40e_adminq.c", i32 863, i32 3}
!20 = !{ptr @i40e_asq_send_command_atomic._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @i40e_asq_send_command_atomic._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/i40e/i40e_adminq.c", i32 893, i32 2}
!24 = !{ptr @i40e_asq_send_command_atomic._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @i40e_asq_send_command_atomic._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/i40e/i40e_adminq.c", i32 931, i32 4}
!28 = !{ptr @i40e_asq_send_command_atomic._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @i40e_asq_send_command_atomic._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.22, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/i40e/i40e_adminq.c", i32 949, i32 2}
!32 = !{ptr @i40e_asq_send_command_atomic._entry.21, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @i40e_asq_send_command_atomic._entry_ptr.23, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.25, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/i40e/i40e_adminq.c", i32 961, i32 4}
!36 = !{ptr @i40e_asq_send_command_atomic._entry.24, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @i40e_asq_send_command_atomic._entry_ptr.26, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.28, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/i40e/i40e_adminq.c", i32 965, i32 4}
!40 = !{ptr @i40e_asq_send_command_atomic._entry.27, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @i40e_asq_send_command_atomic._entry_ptr.29, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.30, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/i40e/i40e_adminq.c", i32 1031, i32 3}
!44 = !{ptr @.str.31, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @i40e_clean_arq_element._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @i40e_clean_arq_element._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.33, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/intel/i40e/i40e_adminq.c", i32 1054, i32 3}
!49 = !{ptr @i40e_clean_arq_element._entry.32, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @i40e_clean_arq_element._entry_ptr.34, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.36, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/intel/i40e/i40e_adminq.c", i32 1067, i32 2}
!53 = !{ptr @i40e_clean_arq_element._entry.35, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @i40e_clean_arq_element._entry_ptr.37, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.38, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/intel/i40e/i40e_adminq.c", i32 732, i32 3}
!57 = !{ptr @.str.39, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @i40e_clean_asq._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @i40e_clean_asq._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"auto-init"}
!70 = !{i64 2157779692}
!71 = !{i64 6103010}
!72 = !{i64 2157780194}
!73 = !{i64 2157780694}
!74 = !{i64 2157781193}
!75 = !{i64 2157781692}
!76 = !{i64 2157777146}
!77 = !{i64 2157777648}
!78 = !{i64 2157778148}
!79 = !{i64 2157778647}
!80 = !{i64 2157779146}
!81 = !{i64 6103428}
!82 = !{i64 2157790880}
!83 = !{i8 0, i8 2}
!84 = !{i64 2157784307}
!85 = !{i64 2157787109}
!86 = !{i64 2157803645}
!87 = !{i64 2157787977}
!88 = !{i64 2157809747}
!89 = !{i64 2157817357}
!90 = !{i64 2157825215}
!91 = !{i64 2157768322}
!92 = !{i64 2157768824}
!93 = !{i64 2157769512}
!94 = !{i64 2157770310}
!95 = !{i64 2157771096}
!96 = !{i64 2157772050}
!97 = !{i64 2157772398}
!98 = !{i64 2157772900}
!99 = !{i64 2157773588}
!100 = !{i64 2157774386}
!101 = !{i64 2157775172}
!102 = !{i64 2157775867}
!103 = !{i64 2157776753}
