; ModuleID = '/llk/IR_all_yes/drivers/misc/habanalabs/gaudi/gaudi_coresight.c_pt.bc'
source_filename = "../drivers/misc/habanalabs/gaudi/gaudi_coresight.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hl_debug_params = type { ptr, ptr, i32, i32, i32, i8 }
%struct.hl_device = type { ptr, [6 x i64], [6 x ptr], ptr, %struct.cdev, %struct.cdev, ptr, ptr, %struct.delayed_work, %struct.hl_device_reset_work, [32 x i8], [5 x [32 x i8]], i32, ptr, ptr, %struct.hl_user_interrupt, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.hl_cb_mgr, %struct.hl_eq, ptr, ptr, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.asic_fixed_properties, ptr, ptr, %struct.hl_vm, ptr, ptr, %struct.hl_dbg_device_entry, %struct.list_head, %struct.spinlock, ptr, i32, ptr, i64, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.hl_cs_counters_atomic, %struct.hl_mmu_priv, [2 x %struct.hl_mmu_funcs], %struct.fw_load_mgr, [4 x %struct.pci_mem_region], %struct.hl_state_dump_specs, [2 x %struct.multi_cs_completion], %struct.hl_clk_throttle, %struct.last_error_session_info, %struct.hl_reset_info, ptr, %struct.atomic64_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hl_device_reset_work = type { ptr, %struct.delayed_work, ptr, i32 }
%struct.hl_user_interrupt = type { ptr, %struct.list_head, %struct.spinlock, i32 }
%struct.hl_cb_mgr = type { %struct.spinlock, %struct.idr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.hl_eq = type { ptr, ptr, i32, i32, i32, i8 }
%struct.asic_fixed_properties = type { ptr, %struct.cpucp_info, [128 x i8], [128 x i8], %struct.hl_mmu_properties, %struct.hl_mmu_properties, %struct.hl_mmu_properties, %struct.hl_hints_range, %struct.hl_hints_range, %struct.hl_hints_range, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x i16], [4 x i16], i16, [4 x i16], i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cpucp_info = type { [128 x %struct.cpucp_sensor], [128 x i8], i32, i32, i32, i32, i32, [128 x i8], [128 x i8], [128 x i8], i32, i64, [16 x i8], i64, i64, i8, i8, i8, i8, i8, [3 x i8], %struct.cpucp_security_info, i32, [16 x i8], i64 }
%struct.cpucp_sensor = type { i32, i32 }
%struct.cpucp_security_info = type { i8, i8, i8, i8 }
%struct.hl_mmu_properties = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i8 }
%struct.hl_hints_range = type { i64, i64 }
%struct.hl_vm = type { ptr, %struct.kref, %struct.spinlock, %struct.idr, i8 }
%struct.hl_dbg_device_entry = type { ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.debugfs_blob_wrapper, [5 x ptr], %struct.rw_semaphore, i64, i64, i64, i32, i32, i8, i8, i8, i8 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hl_cs_counters_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.hl_mmu_priv = type { %struct.hl_mmu_dr_priv, %struct.hl_mmu_hr_priv }
%struct.hl_mmu_dr_priv = type { ptr, ptr }
%struct.hl_mmu_hr_priv = type { ptr, ptr }
%struct.hl_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fw_load_mgr = type { %union.anon.76, %struct.fw_image_props, %struct.fw_image_props, i32, i32, i8, i8, i8, i8 }
%union.anon.76 = type { %struct.dynamic_fw_load_mgr }
%struct.dynamic_fw_load_mgr = type { %struct.fw_response, %struct.lkd_fw_comms_desc, ptr, i32, i32, i8 }
%struct.fw_response = type { i32, i8, i8 }
%struct.lkd_fw_comms_desc = type { %struct.comms_desc_header, %struct.cpu_dyn_regs, [128 x i8], [128 x i8], [128 x i8], i64 }
%struct.comms_desc_header = type { i32, i32, i16, i8, [5 x i8] }
%struct.cpu_dyn_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [22 x i32] }
%struct.fw_image_props = type { ptr, i32, i32 }
%struct.pci_mem_region = type { i64, i64, i64, i64, i8, i8 }
%struct.hl_state_dump_specs = type { [128 x %struct.hlist_head], [128 x %struct.hlist_head], %struct.hl_state_dump_specs_funcs, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.hl_state_dump_specs_funcs = type { ptr, ptr, ptr, ptr }
%struct.multi_cs_completion = type { %struct.completion, %struct.spinlock, i64, i32, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hl_clk_throttle = type { [2 x %struct.hl_clk_throttle_timestamp], %struct.mutex, i32, i32 }
%struct.hl_clk_throttle_timestamp = type { i64, i64 }
%struct.last_error_session_info = type { i64, i64, i64, %struct.atomic_t, %struct.atomic_t, i64, i64, i16, i16, i8, i8 }
%struct.hl_reset_info = type { %struct.spinlock, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.atomic64_t = type { i64 }
%struct.hl_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hl_debug_params_stm = type { i64, i64, i32, i32 }
%struct.hl_debug_params_bmon = type { i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.hl_debug_params_spmu = type { [10 x i64], i32, i32 }
%struct.hl_debug_params_etf = type { i64, i64, i32, i32 }
%struct.hl_debug_params_etr = type { i64, i64, i32, i32 }
%struct.gaudi_device = type { ptr, %struct.spinlock, %struct.mutex, [113 x %struct.gaudi_internal_qman_info], %struct.gaudi_collective_properties, i64, [663 x i32], [663 x i32], [663 x i32], i32, i8, i8 }
%struct.gaudi_internal_qman_info = type { ptr, i32, i32 }
%struct.gaudi_collective_properties = type { [8 x %struct.gaudi_hw_sob_group], [4 x i16], [4 x i8], [2 x i8] }
%struct.gaudi_hw_sob_group = type { ptr, %struct.kref, i32, i32 }

@gaudi_debug_coresight._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 880, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unknown coresight id %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gaudi_debug_coresight\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/misc/habanalabs/gaudi/gaudi_coresight.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gaudi_debug_coresight._entry_ptr = internal global ptr @gaudi_debug_coresight._entry, section ".printk_index", align 4
@gaudi_halt_coresight._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 899, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"halt ETF failed, %d/%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gaudi_halt_coresight\00", [43 x i8] zeroinitializer }, align 32
@gaudi_halt_coresight._entry_ptr = internal global ptr @gaudi_halt_coresight._entry, section ".printk_index", align 4
@gaudi_halt_coresight._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 904, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"halt ETR failed, %d\0A\00", [43 x i8] zeroinitializer }, align 32
@gaudi_halt_coresight._entry_ptr.9 = internal global ptr @gaudi_halt_coresight._entry.7, section ".printk_index", align 4
@gaudi_config_stm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 398, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid register index in STM\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gaudi_config_stm\00", [47 x i8] zeroinitializer }, align 32
@gaudi_config_stm._entry_ptr = internal global ptr @gaudi_config_stm._entry, section ".printk_index", align 4
@debug_stm_regs = internal constant { [46 x i64], [80 x i8] } { [46 x i64] [i64 549722394624, i64 549722525696, i64 549722656768, i64 549722918912, i64 549723049984, i64 549723181056, i64 549723443200, i64 549723574272, i64 549723705344, i64 549723967488, i64 549724098560, i64 549724229632, i64 549726457856, i64 549726588928, i64 549726720000, i64 549726851072, i64 549727002624, i64 549727506432, i64 549727637504, i64 549727768576, i64 549727899648, i64 549728030720, i64 549728161792, i64 549728292864, i64 549728423936, i64 549734846464, i64 549734912000, i64 549735108608, i64 549735632896, i64 549735698432, i64 549735895040, i64 549735960576, i64 549736157184, i64 549736222720, i64 549736419328, i64 549736484864, i64 549736681472, i64 549736747008, i64 549739048960, i64 549741146112, i64 549743243264, i64 549745340416, i64 549747437568, i64 549749534720, i64 549751631872, i64 549753729024], [80 x i8] zeroinitializer }, align 32
@gaudi_config_stm._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 457, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to disable STM on timeout, error %d\0A\00", [52 x i8] zeroinitializer }, align 32
@gaudi_config_stm._entry_ptr.14 = internal global ptr @gaudi_config_stm._entry.12, section ".printk_index", align 4
@gaudi_coresight_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 382, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Timeout while waiting for coresight, addr: 0x%llx, position: %d, up: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gaudi_coresight_timeout\00", [40 x i8] zeroinitializer }, align 32
@gaudi_coresight_timeout._entry_ptr = internal global ptr @gaudi_coresight_timeout._entry, section ".printk_index", align 4
@gaudi_config_etf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 476, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid register index in ETF\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gaudi_config_etf\00", [47 x i8] zeroinitializer }, align 32
@gaudi_config_etf._entry_ptr = internal global ptr @gaudi_config_etf._entry, section ".printk_index", align 4
@debug_etf_regs = internal constant { [48 x i64], [96 x i8] } { [48 x i64] [i64 549722402816, i64 549722533888, i64 549722664960, i64 549722927104, i64 549723058176, i64 549723189248, i64 549723451392, i64 549723582464, i64 549723713536, i64 549723975680, i64 549724106752, i64 549724237824, i64 549726466048, i64 549726597120, i64 549726728192, i64 549726859264, i64 549726982144, i64 549726986240, i64 549727010816, i64 549727514624, i64 549727645696, i64 549727776768, i64 549727907840, i64 549728038912, i64 549728169984, i64 549728301056, i64 549728432128, i64 549734850560, i64 549734920192, i64 549735120896, i64 549735641088, i64 549735706624, i64 549735903232, i64 549735968768, i64 549736165376, i64 549736230912, i64 549736427520, i64 549736493056, i64 549736689664, i64 549736755200, i64 549739044864, i64 549741142016, i64 549743239168, i64 549745336320, i64 549747433472, i64 549749530624, i64 549751627776, i64 549753724928], [96 x i8] zeroinitializer }, align 32
@gaudi_config_etf._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 494, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to %s ETF on timeout, error %d\0A\00", [57 x i8] zeroinitializer }, align 32
@gaudi_config_etf._entry_ptr.21 = internal global ptr @gaudi_config_etf._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@gaudi_config_etf._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 502, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@gaudi_config_etf._entry_ptr.25 = internal global ptr @gaudi_config_etf._entry.24, section ".printk_index", align 4
@gaudi_config_etr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 591, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to %s ETR on timeout, error %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gaudi_config_etr\00", [47 x i8] zeroinitializer }, align 32
@gaudi_config_etr._entry_ptr = internal global ptr @gaudi_config_etr._entry, section ".printk_index", align 4
@gaudi_config_etr._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 598, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@gaudi_config_etr._entry_ptr.29 = internal global ptr @gaudi_config_etr._entry.28, section ".printk_index", align 4
@gaudi_config_etr._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.27, ptr @.str.2, i32 614, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ETR buffer size should be bigger than 0\0A\00", [55 x i8] zeroinitializer }, align 32
@gaudi_config_etr._entry_ptr.32 = internal global ptr @gaudi_config_etr._entry.30, section ".printk_index", align 4
@gaudi_config_etr._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.27, ptr @.str.2, i32 621, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ETR buffer address is invalid\0A\00", [33 x i8] zeroinitializer }, align 32
@gaudi_config_etr._entry_ptr.35 = internal global ptr @gaudi_config_etr._entry.33, section ".printk_index", align 4
@gaudi_etr_validate_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 537, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ETR buffer address shouldn't exceed 50 bits\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gaudi_etr_validate_address\00", [37 x i8] zeroinitializer }, align 32
@gaudi_etr_validate_address._entry_ptr = internal global ptr @gaudi_etr_validate_address._entry, section ".printk_index", align 4
@gaudi_etr_validate_address._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 543, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ETR buffer size %llu overflow\0A\00", [33 x i8] zeroinitializer }, align 32
@gaudi_etr_validate_address._entry_ptr.40 = internal global ptr @gaudi_etr_validate_address._entry.38, section ".printk_index", align 4
@gaudi_etr_validate_address._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.2, i32 567, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ETR buffer should be in SRAM/DRAM\0A\00", [61 x i8] zeroinitializer }, align 32
@gaudi_etr_validate_address._entry_ptr.43 = internal global ptr @gaudi_etr_validate_address._entry.41, section ".printk_index", align 4
@gaudi_config_funnel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 691, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid register index in FUNNEL\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gaudi_config_funnel\00", [44 x i8] zeroinitializer }, align 32
@gaudi_config_funnel._entry_ptr = internal global ptr @gaudi_config_funnel._entry, section ".printk_index", align 4
@debug_funnel_regs = internal constant { [76 x i64], [128 x i8] } { [76 x i64] [i64 549722456064, i64 549722980352, i64 549723504640, i64 549724028928, i64 549724360704, i64 549724393472, i64 549724426240, i64 549724459008, i64 549724491776, i64 549724524544, i64 549724557312, i64 549724590080, i64 549724622848, i64 549724655616, i64 549724688384, i64 549724721152, i64 549724753920, i64 549724786688, i64 549724819456, i64 549724852224, i64 549724884992, i64 549724917760, i64 549724950528, i64 549724983296, i64 549725016064, i64 549725048832, i64 549725081600, i64 549725114368, i64 549725147136, i64 549725179904, i64 549725212672, i64 549725245440, i64 549725278208, i64 549725310976, i64 549725343744, i64 549725376512, i64 549725409280, i64 549725474816, i64 549725540352, i64 549725605888, i64 549725671424, i64 549725736960, i64 549725802496, i64 549725868032, i64 549725933568, i64 549725999104, i64 549726064640, i64 549726130176, i64 549726195712, i64 549726261248, i64 549726326784, i64 549726392320, i64 549726515200, i64 549726646272, i64 549726777344, i64 549726908416, i64 549726998528, i64 549728550912, i64 549729075200, i64 549729599488, i64 549730123776, i64 549734866944, i64 549735112704, i64 549735763968, i64 549736026112, i64 549736288256, i64 549736550400, i64 549736812544, i64 549739061248, i64 549741158400, i64 549743255552, i64 549745352704, i64 549747449856, i64 549749547008, i64 549751644160, i64 549753741312], [128 x i8] zeroinitializer }, align 32
@gaudi_config_bmon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 711, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid register index in BMON\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gaudi_config_bmon\00", [46 x i8] zeroinitializer }, align 32
@gaudi_config_bmon._entry_ptr = internal global ptr @gaudi_config_bmon._entry, section ".printk_index", align 4
@debug_bmon_regs = internal constant { [121 x i64], [248 x i8] } { [121 x i64] [i64 549722419200, i64 549722550272, i64 549722554368, i64 549722681344, i64 549722685440, i64 549722943488, i64 549723074560, i64 549723078656, i64 549723205632, i64 549723209728, i64 549723467776, i64 549723598848, i64 549723602944, i64 549723729920, i64 549723734016, i64 549723992064, i64 549724123136, i64 549724127232, i64 549724254208, i64 549724258304, i64 549726498816, i64 549726482432, i64 549726486528, i64 549726490624, i64 549726494720, i64 549726629888, i64 549726613504, i64 549726617600, i64 549726621696, i64 549726625792, i64 549726760960, i64 549726744576, i64 549726748672, i64 549726752768, i64 549726756864, i64 549726892032, i64 549726875648, i64 549726879744, i64 549726883840, i64 549726887936, i64 549727014912, i64 549727019008, i64 549727531008, i64 549727535104, i64 549727662080, i64 549727666176, i64 549727793152, i64 549727797248, i64 549727924224, i64 549727928320, i64 549728055296, i64 549728059392, i64 549728186368, i64 549728190464, i64 549728317440, i64 549728321536, i64 549728448512, i64 549728452608, i64 549734871040, i64 549734875136, i64 549734879232, i64 549734883328, i64 549734936576, i64 549734940672, i64 549735723008, i64 549735727104, i64 549735731200, i64 549735735296, i64 549735739392, i64 549735985152, i64 549735989248, i64 549735993344, i64 549735997440, i64 549736001536, i64 549736247296, i64 549736251392, i64 549736255488, i64 549736259584, i64 549736263680, i64 549736509440, i64 549736513536, i64 549736517632, i64 549736521728, i64 549736525824, i64 549736771584, i64 549736775680, i64 549736779776, i64 549736783872, i64 549736787968, i64 549739065344, i64 549739069440, i64 549739073536, i64 549739077632, i64 549741162496, i64 549741166592, i64 549741170688, i64 549741174784, i64 549743259648, i64 549743263744, i64 549743267840, i64 549743271936, i64 549745356800, i64 549745360896, i64 549745364992, i64 549745369088, i64 549747453952, i64 549747458048, i64 549747462144, i64 549747466240, i64 549749551104, i64 549749555200, i64 549749559296, i64 549749563392, i64 549751648256, i64 549751652352, i64 549751656448, i64 549751660544, i64 549753745408, i64 549753749504, i64 549753753600, i64 549753757696], [248 x i8] zeroinitializer }, align 32
@gaudi_config_spmu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 779, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid register index in SPMU\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gaudi_config_spmu\00", [46 x i8] zeroinitializer }, align 32
@gaudi_config_spmu._entry_ptr = internal global ptr @gaudi_config_spmu._entry, section ".printk_index", align 4
@debug_spmu_regs = internal constant { [40 x i64], [64 x i8] } { [40 x i64] [i64 549722406912, i64 549722537984, i64 549722669056, i64 549722931200, i64 549723062272, i64 549723193344, i64 549723455488, i64 549723586560, i64 549723717632, i64 549723979776, i64 549724110848, i64 549724241920, i64 549727518720, i64 549727649792, i64 549727780864, i64 549727911936, i64 549728043008, i64 549728174080, i64 549728305152, i64 549728436224, i64 549734858752, i64 549734924288, i64 549735645184, i64 549735710720, i64 549735907328, i64 549735972864, i64 549736169472, i64 549736235008, i64 549736431616, i64 549736497152, i64 549736693760, i64 549736759296, i64 549739040768, i64 549741137920, i64 549743235072, i64 549745332224, i64 549747429376, i64 549749526528, i64 549751623680, i64 549753720832], [64 x i8] zeroinitializer }, align 32
@gaudi_config_spmu._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 793, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"not enough event types values for SPMU enable\0A\00", [49 x i8] zeroinitializer }, align 32
@gaudi_config_spmu._entry_ptr.52 = internal global ptr @gaudi_config_spmu._entry.50, section ".printk_index", align 4
@gaudi_config_spmu._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.2, i32 799, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"too many event types values for SPMU enable\0A\00", [51 x i8] zeroinitializer }, align 32
@gaudi_config_spmu._entry_ptr.55 = internal global ptr @gaudi_config_spmu._entry.53, section ".printk_index", align 4
@gaudi_config_spmu._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.49, ptr @.str.2, i32 824, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"not enough values for SPMU disable\0A\00", [60 x i8] zeroinitializer }, align 32
@gaudi_config_spmu._entry_ptr.58 = internal global ptr @gaudi_config_spmu._entry.56, section ".printk_index", align 4
@gaudi_config_spmu._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.49, ptr @.str.2, i32 830, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"too many events values for SPMU disable\0A\00", [55 x i8] zeroinitializer }, align 32
@gaudi_config_spmu._entry_ptr.61 = internal global ptr @gaudi_config_spmu._entry.59, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 880, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 899, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 904, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 398, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [15 x i8] c"debug_stm_regs\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 19, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 455, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 380, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 476, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [15 x i8] c"debug_etf_regs\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 68, i32 12 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 492, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 500, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 590, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 597, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 613, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 621, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 536, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 542, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 567, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 691, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [18 x i8] c"debug_funnel_regs\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 119, i32 12 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 711, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [16 x i8] c"debug_bmon_regs\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 198, i32 12 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 779, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [16 x i8] c"debug_spmu_regs\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 322, i32 12 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 792, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 798, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 823, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.252 = private constant [51 x i8] c"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 829, i32 4 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @gaudi_config_bmon._entry, ptr @gaudi_config_bmon._entry_ptr, ptr @gaudi_config_etf._entry, ptr @gaudi_config_etf._entry.19, ptr @gaudi_config_etf._entry.24, ptr @gaudi_config_etf._entry_ptr, ptr @gaudi_config_etf._entry_ptr.21, ptr @gaudi_config_etf._entry_ptr.25, ptr @gaudi_config_etr._entry, ptr @gaudi_config_etr._entry.28, ptr @gaudi_config_etr._entry.30, ptr @gaudi_config_etr._entry.33, ptr @gaudi_config_etr._entry_ptr, ptr @gaudi_config_etr._entry_ptr.29, ptr @gaudi_config_etr._entry_ptr.32, ptr @gaudi_config_etr._entry_ptr.35, ptr @gaudi_config_funnel._entry, ptr @gaudi_config_funnel._entry_ptr, ptr @gaudi_config_spmu._entry, ptr @gaudi_config_spmu._entry.50, ptr @gaudi_config_spmu._entry.53, ptr @gaudi_config_spmu._entry.56, ptr @gaudi_config_spmu._entry.59, ptr @gaudi_config_spmu._entry_ptr, ptr @gaudi_config_spmu._entry_ptr.52, ptr @gaudi_config_spmu._entry_ptr.55, ptr @gaudi_config_spmu._entry_ptr.58, ptr @gaudi_config_spmu._entry_ptr.61, ptr @gaudi_config_stm._entry, ptr @gaudi_config_stm._entry.12, ptr @gaudi_config_stm._entry_ptr, ptr @gaudi_config_stm._entry_ptr.14, ptr @gaudi_coresight_timeout._entry, ptr @gaudi_coresight_timeout._entry_ptr, ptr @gaudi_debug_coresight._entry, ptr @gaudi_debug_coresight._entry_ptr, ptr @gaudi_etr_validate_address._entry, ptr @gaudi_etr_validate_address._entry.38, ptr @gaudi_etr_validate_address._entry.41, ptr @gaudi_etr_validate_address._entry_ptr, ptr @gaudi_etr_validate_address._entry_ptr.40, ptr @gaudi_etr_validate_address._entry_ptr.43, ptr @gaudi_halt_coresight._entry, ptr @gaudi_halt_coresight._entry.7, ptr @gaudi_halt_coresight._entry_ptr, ptr @gaudi_halt_coresight._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @debug_stm_regs, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @debug_etf_regs, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @debug_funnel_regs, ptr @.str.46, ptr @.str.47, ptr @debug_bmon_regs, ptr @.str.48, ptr @.str.49, ptr @debug_spmu_regs, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_debug_coresight._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_halt_coresight._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_halt_coresight._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_config_stm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_stm_regs to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_config_stm._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_coresight_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_config_etf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_etf_regs to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_config_etf._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_config_etf._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_config_etr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_config_etr._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_config_etr._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_config_etr._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_etr_validate_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_etr_validate_address._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_etr_validate_address._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_config_funnel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_funnel_regs to i32), i32 608, i32 736, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_config_bmon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_bmon_regs to i32), i32 968, i32 1216, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_config_spmu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_spmu_regs to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_config_spmu._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_config_spmu._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_config_spmu._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_config_spmu._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gaudi_debug_coresight(ptr noundef %hdev, ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %op = getelementptr inbounds %struct.hl_debug_params, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %op, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 0, label %sw.bb3
    i32 3, label %sw.bb5
    i32 4, label %sw.bb7
    i32 5, label %sw.bb9
    i32 6, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %reg_idx.i = getelementptr inbounds %struct.hl_debug_params, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %4)
  %cmp.i = icmp ugt i32 %4, 45
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.10) #7
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %arrayidx.i = getelementptr [46 x i64], ptr @debug_stm_regs, i32 0, i32 %4
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx.i, align 8
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %9 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %asic_funcs.i, align 8
  %wreg.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %10, i32 0, i32 58
  %11 = ptrtoint ptr %wreg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wreg.i, align 4
  %13 = trunc i64 %8 to i32
  %conv.i = add i32 %13, 67112880
  tail call void %12(ptr noundef %hdev, i32 noundef %conv.i, i32 noundef -978530731) #4
  %enable.i = getelementptr inbounds %struct.hl_debug_params, ptr %data, i32 0, i32 5
  %14 = ptrtoint ptr %enable.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enable.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %tobool4.not.i = icmp eq ptr %17, null
  br i1 %tobool4.not.i, label %if.then2.i.sw.epilog_crit_edge, label %if.end6.i

if.then2.i.sw.epilog_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end6.i:                                        ; preds = %if.then2.i
  %18 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %asic_funcs.i, align 8
  %wreg8.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %19, i32 0, i32 58
  %20 = ptrtoint ptr %wreg8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wreg8.i, align 4
  %conv10.i = add i32 %13, 67112576
  tail call void %21(ptr noundef %hdev, i32 noundef %conv10.i, i32 noundef 524292) #4
  %22 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %asic_funcs.i, align 8
  %wreg12.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %23, i32 0, i32 58
  %24 = ptrtoint ptr %wreg12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wreg12.i, align 4
  %conv14.i = add i32 %13, 67112292
  tail call void %25(ptr noundef %hdev, i32 noundef %conv14.i, i32 noundef 7) #4
  %26 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %asic_funcs.i, align 8
  %wreg16.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %27, i32 0, i32 58
  %28 = ptrtoint ptr %wreg16.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wreg16.i, align 4
  %conv18.i = add i32 %13, 67112288
  tail call void %29(ptr noundef %hdev, i32 noundef %conv18.i, i32 noundef 0) #4
  %30 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %asic_funcs.i, align 8
  %wreg20.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %31, i32 0, i32 58
  %32 = ptrtoint ptr %wreg20.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wreg20.i, align 4
  %conv22.i = add i32 %13, 67112192
  %34 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %17, align 8
  %conv23.i = trunc i64 %35 to i32
  tail call void %33(ptr noundef %hdev, i32 noundef %conv22.i, i32 noundef %conv23.i) #4
  %36 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %asic_funcs.i, align 8
  %wreg25.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %37, i32 0, i32 58
  %38 = ptrtoint ptr %wreg25.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wreg25.i, align 4
  tail call void %39(ptr noundef %hdev, i32 noundef %conv18.i, i32 noundef 1) #4
  %40 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %asic_funcs.i, align 8
  %wreg29.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %41, i32 0, i32 58
  %42 = ptrtoint ptr %wreg29.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wreg29.i, align 4
  %44 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %17, align 8
  %shr.i = lshr i64 %45, 32
  %conv34.i = trunc i64 %shr.i to i32
  tail call void %43(ptr noundef %hdev, i32 noundef %conv22.i, i32 noundef %conv34.i) #4
  %46 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %asic_funcs.i, align 8
  %wreg36.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %47, i32 0, i32 58
  %48 = ptrtoint ptr %wreg36.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wreg36.i, align 4
  %conv38.i = add i32 %13, 67112560
  tail call void %49(ptr noundef %hdev, i32 noundef %conv38.i, i32 noundef 16) #4
  %50 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %asic_funcs.i, align 8
  %wreg40.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %51, i32 0, i32 58
  %52 = ptrtoint ptr %wreg40.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wreg40.i, align 4
  %conv42.i = add i32 %13, 67112544
  tail call void %53(ptr noundef %hdev, i32 noundef %conv42.i, i32 noundef 0) #4
  %54 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %asic_funcs.i, align 8
  %wreg44.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %55, i32 0, i32 58
  %56 = ptrtoint ptr %wreg44.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %wreg44.i, align 4
  %conv46.i = add i32 %13, 67112448
  %sp_mask.i = getelementptr inbounds %struct.hl_debug_params_stm, ptr %17, i32 0, i32 1
  %58 = ptrtoint ptr %sp_mask.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %sp_mask.i, align 8
  %conv48.i = trunc i64 %59 to i32
  tail call void %57(ptr noundef %hdev, i32 noundef %conv46.i, i32 noundef %conv48.i) #4
  %60 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %asic_funcs.i, align 8
  %wreg50.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %61, i32 0, i32 58
  %62 = ptrtoint ptr %wreg50.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wreg50.i, align 4
  %conv52.i = add i32 %13, 67112692
  %id.i = getelementptr inbounds %struct.hl_debug_params_stm, ptr %17, i32 0, i32 2
  %64 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %id.i, align 8
  tail call void %63(ptr noundef %hdev, i32 noundef %conv52.i, i32 noundef %65) #4
  %66 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %asic_funcs.i, align 8
  %wreg54.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %67, i32 0, i32 58
  %68 = ptrtoint ptr %wreg54.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wreg54.i, align 4
  %conv56.i = add i32 %13, 67112436
  tail call void %69(ptr noundef %hdev, i32 noundef %conv56.i, i32 noundef 128) #4
  %psoc_timestamp_frequency.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 44
  %70 = ptrtoint ptr %psoc_timestamp_frequency.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %psoc_timestamp_frequency.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp57.i = icmp eq i32 %71, 0
  br i1 %cmp57.i, label %if.then59.i, label %if.end6.i.if.end61.i_crit_edge

if.end6.i.if.end61.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61.i

if.then59.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  %frequency60.i = getelementptr inbounds %struct.hl_debug_params_stm, ptr %17, i32 0, i32 3
  %72 = ptrtoint ptr %frequency60.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %frequency60.i, align 4
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then59.i, %if.end6.i.if.end61.i_crit_edge
  %frequency.0.i = phi i32 [ %73, %if.then59.i ], [ %71, %if.end6.i.if.end61.i_crit_edge ]
  %74 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %asic_funcs.i, align 8
  %wreg63.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %75, i32 0, i32 58
  %76 = ptrtoint ptr %wreg63.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %wreg63.i, align 4
  %conv65.i = add i32 %13, 67112588
  tail call void %77(ptr noundef %hdev, i32 noundef %conv65.i, i32 noundef %frequency.0.i) #4
  %78 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %asic_funcs.i, align 8
  %wreg67.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %79, i32 0, i32 58
  %80 = ptrtoint ptr %wreg67.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %wreg67.i, align 4
  %conv69.i = add i32 %13, 67112592
  tail call void %81(ptr noundef %hdev, i32 noundef %conv69.i, i32 noundef 7936) #4
  %82 = add nsw i32 %4, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %82)
  %83 = icmp ult i32 %82, 8
  br i1 %83, label %if.then76.i, label %if.end61.i.if.end85.i_crit_edge

if.end61.i.if.end85.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end85.i

if.then76.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #6
  %84 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %asic_funcs.i, align 8
  %wreg78.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %85, i32 0, i32 58
  %86 = ptrtoint ptr %wreg78.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %wreg78.i, align 4
  %conv80.i = add i32 %13, 67112552
  tail call void %87(ptr noundef %hdev, i32 noundef %conv80.i, i32 noundef -32763) #4
  %88 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %asic_funcs.i, align 8
  %wreg82.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %89, i32 0, i32 58
  %90 = ptrtoint ptr %wreg82.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wreg82.i, align 4
  %conv84.i = add i32 %13, 67112556
  tail call void %91(ptr noundef %hdev, i32 noundef %conv84.i, i32 noundef 0) #4
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then76.i, %if.end61.i.if.end85.i_crit_edge
  %92 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %asic_funcs.i, align 8
  %wreg87.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %93, i32 0, i32 58
  %94 = ptrtoint ptr %wreg87.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %wreg87.i, align 4
  %96 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %id.i, align 8
  %shl.i = shl i32 %97, 16
  %or.i = or i32 %shl.i, 35
  tail call void %95(ptr noundef %hdev, i32 noundef %conv10.i, i32 noundef %or.i) #4
  br label %sw.epilog

if.else.i:                                        ; preds = %if.end.i
  %98 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %asic_funcs.i, align 8
  %wreg92.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %99, i32 0, i32 58
  %100 = ptrtoint ptr %wreg92.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %wreg92.i, align 4
  %add93.i = add i64 %8, -549688701312
  %conv94.i = trunc i64 %add93.i to i32
  tail call void %101(ptr noundef %hdev, i32 noundef %conv94.i, i32 noundef 4) #4
  %102 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %asic_funcs.i, align 8
  %wreg96.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %103, i32 0, i32 58
  %104 = ptrtoint ptr %wreg96.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %wreg96.i, align 4
  %conv98.i = add i32 %13, 67112292
  tail call void %105(ptr noundef %hdev, i32 noundef %conv98.i, i32 noundef 0) #4
  %106 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %asic_funcs.i, align 8
  %wreg100.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %107, i32 0, i32 58
  %108 = ptrtoint ptr %wreg100.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %wreg100.i, align 4
  %conv102.i = add i32 %13, 67112288
  tail call void %109(ptr noundef %hdev, i32 noundef %conv102.i, i32 noundef 1) #4
  %110 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %asic_funcs.i, align 8
  %wreg104.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %111, i32 0, i32 58
  %112 = ptrtoint ptr %wreg104.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %wreg104.i, align 4
  %conv106.i = add i32 %13, 67112192
  tail call void %113(ptr noundef %hdev, i32 noundef %conv106.i, i32 noundef 0) #4
  %114 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %asic_funcs.i, align 8
  %wreg108.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %115, i32 0, i32 58
  %116 = ptrtoint ptr %wreg108.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %wreg108.i, align 4
  %conv110.i = add i32 %13, 67112224
  tail call void %117(ptr noundef %hdev, i32 noundef %conv110.i, i32 noundef 0) #4
  %118 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %asic_funcs.i, align 8
  %wreg112.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %119, i32 0, i32 58
  %120 = ptrtoint ptr %wreg112.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %wreg112.i, align 4
  tail call void %121(ptr noundef %hdev, i32 noundef %conv102.i, i32 noundef 0) #4
  %122 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %asic_funcs.i, align 8
  %wreg116.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %123, i32 0, i32 58
  %124 = ptrtoint ptr %wreg116.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %wreg116.i, align 4
  %conv118.i = add i32 %13, 67112480
  tail call void %125(ptr noundef %hdev, i32 noundef %conv118.i, i32 noundef 0) #4
  %126 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %asic_funcs.i, align 8
  %wreg120.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %127, i32 0, i32 58
  %128 = ptrtoint ptr %wreg120.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %wreg120.i, align 4
  %conv122.i = add i32 %13, 67112448
  tail call void %129(ptr noundef %hdev, i32 noundef %conv122.i, i32 noundef 0) #4
  %130 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %asic_funcs.i, align 8
  %wreg124.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %131, i32 0, i32 58
  %132 = ptrtoint ptr %wreg124.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %wreg124.i, align 4
  %conv126.i = add i32 %13, 67112436
  tail call void %133(ptr noundef %hdev, i32 noundef %conv126.i, i32 noundef 128) #4
  %134 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %asic_funcs.i, align 8
  %wreg128.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %135, i32 0, i32 58
  %136 = ptrtoint ptr %wreg128.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %wreg128.i, align 4
  %conv130.i = add i32 %13, 67112560
  tail call void %137(ptr noundef %hdev, i32 noundef %conv130.i, i32 noundef 0) #4
  %138 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %asic_funcs.i, align 8
  %wreg132.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %139, i32 0, i32 58
  %140 = ptrtoint ptr %wreg132.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %wreg132.i, align 4
  %conv134.i = add i32 %13, 67112544
  tail call void %141(ptr noundef %hdev, i32 noundef %conv134.i, i32 noundef 0) #4
  %142 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %asic_funcs.i, align 8
  %wreg136.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %143, i32 0, i32 58
  %144 = ptrtoint ptr %wreg136.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %wreg136.i, align 4
  %conv138.i = add i32 %13, 67112548
  tail call void %145(ptr noundef %hdev, i32 noundef %conv138.i, i32 noundef 0) #4
  %146 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %asic_funcs.i, align 8
  %wreg140.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %147, i32 0, i32 58
  %148 = ptrtoint ptr %wreg140.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %wreg140.i, align 4
  %conv142.i = add i32 %13, 67112588
  tail call void %149(ptr noundef %hdev, i32 noundef %conv142.i, i32 noundef 0) #4
  %call.i = tail call fastcc i32 @gaudi_coresight_timeout(ptr noundef %hdev, i64 noundef %add93.i, i32 noundef 23, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool144.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool144.not.i, label %if.end150.i, label %do.end148.i

do.end148.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev149.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %150 = ptrtoint ptr %dev149.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev149.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.13, i32 noundef %call.i) #7
  br label %sw.epilog

if.end150.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %152 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %asic_funcs.i, align 8
  %wreg152.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %153, i32 0, i32 58
  %154 = ptrtoint ptr %wreg152.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %wreg152.i, align 4
  tail call void %155(ptr noundef %hdev, i32 noundef %conv94.i, i32 noundef 4) #4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call fastcc i32 @gaudi_config_etf(ptr noundef %hdev, ptr noundef %data)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call fastcc i32 @gaudi_config_etr(ptr noundef %hdev, ptr noundef %data)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %reg_idx.i29 = getelementptr inbounds %struct.hl_debug_params, ptr %data, i32 0, i32 3
  %156 = ptrtoint ptr %reg_idx.i29 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %reg_idx.i29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 75, i32 %157)
  %cmp.i30 = icmp ugt i32 %157, 75
  br i1 %cmp.i30, label %do.end.i32, label %if.end.i39

do.end.i32:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i31 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %158 = ptrtoint ptr %dev.i31 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev.i31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %159, ptr noundef nonnull @.str.44) #7
  br label %sw.epilog

if.end.i39:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i33 = getelementptr [76 x i64], ptr @debug_funnel_regs, i32 0, i32 %157
  %160 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %arrayidx.i33, align 8
  %asic_funcs.i34 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %162 = ptrtoint ptr %asic_funcs.i34 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %asic_funcs.i34, align 8
  %wreg.i35 = getelementptr inbounds %struct.hl_asic_funcs, ptr %163, i32 0, i32 58
  %164 = ptrtoint ptr %wreg.i35 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %wreg.i35, align 4
  %166 = trunc i64 %161 to i32
  %conv.i36 = add i32 %166, 67112880
  tail call void %165(ptr noundef %hdev, i32 noundef %conv.i36, i32 noundef -978530731) #4
  %167 = ptrtoint ptr %asic_funcs.i34 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %asic_funcs.i34, align 8
  %wreg3.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %168, i32 0, i32 58
  %169 = ptrtoint ptr %wreg3.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %wreg3.i, align 4
  %conv4.i = add i32 %166, 67108864
  %enable.i37 = getelementptr inbounds %struct.hl_debug_params, ptr %data, i32 0, i32 5
  %171 = ptrtoint ptr %enable.i37 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %enable.i37, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool.not.i38 = icmp eq i8 %172, 0
  %cond.i = select i1 %tobool.not.i38, i32 0, i32 831
  tail call void %170(ptr noundef %hdev, i32 noundef %conv4.i, i32 noundef %cond.i) #4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %reg_idx.i41 = getelementptr inbounds %struct.hl_debug_params, ptr %data, i32 0, i32 3
  %173 = ptrtoint ptr %reg_idx.i41 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %reg_idx.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %174)
  %cmp.i42 = icmp ugt i32 %174, 120
  br i1 %cmp.i42, label %do.end.i44, label %if.end.i51

do.end.i44:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i43 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %175 = ptrtoint ptr %dev.i43 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dev.i43, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %176, ptr noundef nonnull @.str.46) #7
  br label %sw.epilog

if.end.i51:                                       ; preds = %sw.bb7
  %arrayidx.i45 = getelementptr [121 x i64], ptr @debug_bmon_regs, i32 0, i32 %174
  %177 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %arrayidx.i45, align 8
  %asic_funcs.i46 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %179 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg.i47 = getelementptr inbounds %struct.hl_asic_funcs, ptr %180, i32 0, i32 58
  %181 = ptrtoint ptr %wreg.i47 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %wreg.i47, align 4
  %183 = trunc i64 %178 to i32
  %conv.i48 = add i32 %183, 67109124
  tail call void %182(ptr noundef %hdev, i32 noundef %conv.i48, i32 noundef 1) #4
  %enable.i49 = getelementptr inbounds %struct.hl_debug_params, ptr %data, i32 0, i32 5
  %184 = ptrtoint ptr %enable.i49 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %enable.i49, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool.not.i50 = icmp eq i8 %185, 0
  br i1 %tobool.not.i50, label %if.else.i99, label %if.then2.i53

if.then2.i53:                                     ; preds = %if.end.i51
  %186 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %data, align 4
  %tobool4.not.i52 = icmp eq ptr %187, null
  br i1 %tobool4.not.i52, label %if.then2.i53.sw.epilog_crit_edge, label %if.end6.i78

if.then2.i53.sw.epilog_crit_edge:                 ; preds = %if.then2.i53
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end6.i78:                                      ; preds = %if.then2.i53
  call void @__sanitizer_cov_trace_pc() #6
  %188 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg8.i54 = getelementptr inbounds %struct.hl_asic_funcs, ptr %189, i32 0, i32 58
  %190 = ptrtoint ptr %wreg8.i54 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %wreg8.i54, align 4
  %conv10.i55 = add i32 %183, 67109376
  %192 = ptrtoint ptr %187 to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %187, align 8
  %conv11.i = trunc i64 %193 to i32
  tail call void %191(ptr noundef %hdev, i32 noundef %conv10.i55, i32 noundef %conv11.i) #4
  %194 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg13.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %195, i32 0, i32 58
  %196 = ptrtoint ptr %wreg13.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %wreg13.i, align 4
  %conv15.i = add i32 %183, 67109380
  %198 = ptrtoint ptr %187 to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %187, align 8
  %shr.i56 = lshr i64 %199, 32
  %conv18.i57 = trunc i64 %shr.i56 to i32
  tail call void %197(ptr noundef %hdev, i32 noundef %conv15.i, i32 noundef %conv18.i57) #4
  %200 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg20.i58 = getelementptr inbounds %struct.hl_asic_funcs, ptr %201, i32 0, i32 58
  %202 = ptrtoint ptr %wreg20.i58 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %wreg20.i58, align 4
  %conv22.i59 = add i32 %183, 67109384
  %addr_mask0.i = getelementptr inbounds %struct.hl_debug_params_bmon, ptr %187, i32 0, i32 1
  %204 = ptrtoint ptr %addr_mask0.i to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %addr_mask0.i, align 8
  %conv24.i = trunc i64 %205 to i32
  tail call void %203(ptr noundef %hdev, i32 noundef %conv22.i59, i32 noundef %conv24.i) #4
  %206 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg26.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %207, i32 0, i32 58
  %208 = ptrtoint ptr %wreg26.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %wreg26.i, align 4
  %conv28.i = add i32 %183, 67109388
  %210 = ptrtoint ptr %addr_mask0.i to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %addr_mask0.i, align 8
  %shr30.i = lshr i64 %211, 32
  %conv32.i = trunc i64 %shr30.i to i32
  tail call void %209(ptr noundef %hdev, i32 noundef %conv28.i, i32 noundef %conv32.i) #4
  %212 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg34.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %213, i32 0, i32 58
  %214 = ptrtoint ptr %wreg34.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %wreg34.i, align 4
  %conv36.i = add i32 %183, 67109440
  %start_addr1.i = getelementptr inbounds %struct.hl_debug_params_bmon, ptr %187, i32 0, i32 2
  %216 = ptrtoint ptr %start_addr1.i to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %start_addr1.i, align 8
  %conv38.i60 = trunc i64 %217 to i32
  tail call void %215(ptr noundef %hdev, i32 noundef %conv36.i, i32 noundef %conv38.i60) #4
  %218 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg40.i61 = getelementptr inbounds %struct.hl_asic_funcs, ptr %219, i32 0, i32 58
  %220 = ptrtoint ptr %wreg40.i61 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %wreg40.i61, align 4
  %conv42.i62 = add i32 %183, 67109444
  %222 = ptrtoint ptr %start_addr1.i to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %start_addr1.i, align 8
  %shr44.i = lshr i64 %223, 32
  %conv46.i63 = trunc i64 %shr44.i to i32
  tail call void %221(ptr noundef %hdev, i32 noundef %conv42.i62, i32 noundef %conv46.i63) #4
  %224 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg48.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %225, i32 0, i32 58
  %226 = ptrtoint ptr %wreg48.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %wreg48.i, align 4
  %conv50.i = add i32 %183, 67109448
  %addr_mask1.i = getelementptr inbounds %struct.hl_debug_params_bmon, ptr %187, i32 0, i32 3
  %228 = ptrtoint ptr %addr_mask1.i to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %addr_mask1.i, align 8
  %conv52.i64 = trunc i64 %229 to i32
  tail call void %227(ptr noundef %hdev, i32 noundef %conv50.i, i32 noundef %conv52.i64) #4
  %230 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg54.i65 = getelementptr inbounds %struct.hl_asic_funcs, ptr %231, i32 0, i32 58
  %232 = ptrtoint ptr %wreg54.i65 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %wreg54.i65, align 4
  %conv56.i66 = add i32 %183, 67109452
  %234 = ptrtoint ptr %addr_mask1.i to i32
  call void @__asan_load8_noabort(i32 %234)
  %235 = load i64, ptr %addr_mask1.i, align 8
  %shr58.i = lshr i64 %235, 32
  %conv60.i = trunc i64 %shr58.i to i32
  tail call void %233(ptr noundef %hdev, i32 noundef %conv56.i66, i32 noundef %conv60.i) #4
  %236 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg62.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %237, i32 0, i32 58
  %238 = ptrtoint ptr %wreg62.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %wreg62.i, align 4
  %conv64.i = add i32 %183, 67109412
  tail call void %239(ptr noundef %hdev, i32 noundef %conv64.i, i32 noundef 0) #4
  %240 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg66.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %241, i32 0, i32 58
  %242 = ptrtoint ptr %wreg66.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %wreg66.i, align 4
  %conv68.i = add i32 %183, 67109428
  tail call void %243(ptr noundef %hdev, i32 noundef %conv68.i, i32 noundef 0) #4
  %244 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg70.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %245, i32 0, i32 58
  %246 = ptrtoint ptr %wreg70.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %wreg70.i, align 4
  %conv72.i = add i32 %183, 67109644
  %bw_win.i = getelementptr inbounds %struct.hl_debug_params_bmon, ptr %187, i32 0, i32 4
  %248 = ptrtoint ptr %bw_win.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %bw_win.i, align 8
  tail call void %247(ptr noundef %hdev, i32 noundef %conv72.i, i32 noundef %249) #4
  %250 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg74.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %251, i32 0, i32 58
  %252 = ptrtoint ptr %wreg74.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %wreg74.i, align 4
  %conv76.i = add i32 %183, 67109640
  %win_capture.i = getelementptr inbounds %struct.hl_debug_params_bmon, ptr %187, i32 0, i32 5
  %254 = ptrtoint ptr %win_capture.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %win_capture.i, align 4
  tail call void %253(ptr noundef %hdev, i32 noundef %conv76.i, i32 noundef %255) #4
  %256 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg78.i67 = getelementptr inbounds %struct.hl_asic_funcs, ptr %257, i32 0, i32 58
  %258 = ptrtoint ptr %wreg78.i67 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %wreg78.i67, align 4
  %conv80.i68 = add i32 %183, 67110656
  %id.i69 = getelementptr inbounds %struct.hl_debug_params_bmon, ptr %187, i32 0, i32 6
  %260 = ptrtoint ptr %id.i69 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %id.i69, align 8
  %shl.i70 = shl i32 %261, 12
  %or.i71 = or i32 %shl.i70, 167774976
  tail call void %259(ptr noundef %hdev, i32 noundef %conv80.i68, i32 noundef %or.i71) #4
  %262 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg82.i72 = getelementptr inbounds %struct.hl_asic_funcs, ptr %263, i32 0, i32 58
  %264 = ptrtoint ptr %wreg82.i72 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %wreg82.i72, align 4
  %conv84.i73 = add i32 %183, 67110664
  %266 = ptrtoint ptr %id.i69 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %id.i69, align 8
  %shl86.i = shl i32 %267, 12
  %or87.i = or i32 %shl86.i, 167774720
  tail call void %265(ptr noundef %hdev, i32 noundef %conv84.i73, i32 noundef %or87.i) #4
  %268 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg89.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %269, i32 0, i32 58
  %270 = ptrtoint ptr %wreg89.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %wreg89.i, align 4
  %conv91.i = add i32 %183, 67110668
  %272 = ptrtoint ptr %id.i69 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %id.i69, align 8
  %shl93.i = shl i32 %273, 12
  %or94.i = or i32 %shl93.i, 167775232
  tail call void %271(ptr noundef %hdev, i32 noundef %conv91.i, i32 noundef %or94.i) #4
  %274 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg96.i74 = getelementptr inbounds %struct.hl_asic_funcs, ptr %275, i32 0, i32 58
  %276 = ptrtoint ptr %wreg96.i74 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %wreg96.i74, align 4
  %conv98.i75 = add i32 %183, 67109120
  tail call void %277(ptr noundef %hdev, i32 noundef %conv98.i75, i32 noundef 17) #4
  %278 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg100.i76 = getelementptr inbounds %struct.hl_asic_funcs, ptr %279, i32 0, i32 58
  %280 = ptrtoint ptr %wreg100.i76 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %wreg100.i76, align 4
  %conv102.i77 = add i32 %183, 67109636
  tail call void %281(ptr noundef %hdev, i32 noundef %conv102.i77, i32 noundef 1) #4
  br label %sw.epilog

if.else.i99:                                      ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #6
  %282 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg104.i79 = getelementptr inbounds %struct.hl_asic_funcs, ptr %283, i32 0, i32 58
  %284 = ptrtoint ptr %wreg104.i79 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %wreg104.i79, align 4
  %conv106.i80 = add i32 %183, 67109376
  tail call void %285(ptr noundef %hdev, i32 noundef %conv106.i80, i32 noundef 0) #4
  %286 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg108.i81 = getelementptr inbounds %struct.hl_asic_funcs, ptr %287, i32 0, i32 58
  %288 = ptrtoint ptr %wreg108.i81 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %wreg108.i81, align 4
  %conv110.i82 = add i32 %183, 67109380
  tail call void %289(ptr noundef %hdev, i32 noundef %conv110.i82, i32 noundef 0) #4
  %290 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg112.i83 = getelementptr inbounds %struct.hl_asic_funcs, ptr %291, i32 0, i32 58
  %292 = ptrtoint ptr %wreg112.i83 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %wreg112.i83, align 4
  %conv114.i = add i32 %183, 67109384
  tail call void %293(ptr noundef %hdev, i32 noundef %conv114.i, i32 noundef -1) #4
  %294 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg116.i84 = getelementptr inbounds %struct.hl_asic_funcs, ptr %295, i32 0, i32 58
  %296 = ptrtoint ptr %wreg116.i84 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %wreg116.i84, align 4
  %conv118.i85 = add i32 %183, 67109388
  tail call void %297(ptr noundef %hdev, i32 noundef %conv118.i85, i32 noundef -1) #4
  %298 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg120.i86 = getelementptr inbounds %struct.hl_asic_funcs, ptr %299, i32 0, i32 58
  %300 = ptrtoint ptr %wreg120.i86 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %wreg120.i86, align 4
  %conv122.i87 = add i32 %183, 67109440
  tail call void %301(ptr noundef %hdev, i32 noundef %conv122.i87, i32 noundef 0) #4
  %302 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg124.i88 = getelementptr inbounds %struct.hl_asic_funcs, ptr %303, i32 0, i32 58
  %304 = ptrtoint ptr %wreg124.i88 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %wreg124.i88, align 4
  %conv126.i89 = add i32 %183, 67109444
  tail call void %305(ptr noundef %hdev, i32 noundef %conv126.i89, i32 noundef 0) #4
  %306 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg128.i90 = getelementptr inbounds %struct.hl_asic_funcs, ptr %307, i32 0, i32 58
  %308 = ptrtoint ptr %wreg128.i90 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %wreg128.i90, align 4
  %conv130.i91 = add i32 %183, 67109448
  tail call void %309(ptr noundef %hdev, i32 noundef %conv130.i91, i32 noundef -1) #4
  %310 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg132.i92 = getelementptr inbounds %struct.hl_asic_funcs, ptr %311, i32 0, i32 58
  %312 = ptrtoint ptr %wreg132.i92 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %wreg132.i92, align 4
  %conv134.i93 = add i32 %183, 67109452
  tail call void %313(ptr noundef %hdev, i32 noundef %conv134.i93, i32 noundef -1) #4
  %314 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg136.i94 = getelementptr inbounds %struct.hl_asic_funcs, ptr %315, i32 0, i32 58
  %316 = ptrtoint ptr %wreg136.i94 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %wreg136.i94, align 4
  %conv138.i95 = add i32 %183, 67109412
  tail call void %317(ptr noundef %hdev, i32 noundef %conv138.i95, i32 noundef -1) #4
  %318 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg140.i96 = getelementptr inbounds %struct.hl_asic_funcs, ptr %319, i32 0, i32 58
  %320 = ptrtoint ptr %wreg140.i96 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %wreg140.i96, align 4
  %conv142.i97 = add i32 %183, 67109428
  tail call void %321(ptr noundef %hdev, i32 noundef %conv142.i97, i32 noundef 67343) #4
  %322 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg144.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %323, i32 0, i32 58
  %324 = ptrtoint ptr %wreg144.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %wreg144.i, align 4
  %conv146.i = add i32 %183, 67109644
  tail call void %325(ptr noundef %hdev, i32 noundef %conv146.i, i32 noundef 0) #4
  %326 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg148.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %327, i32 0, i32 58
  %328 = ptrtoint ptr %wreg148.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %wreg148.i, align 4
  %conv150.i = add i32 %183, 67109640
  tail call void %329(ptr noundef %hdev, i32 noundef %conv150.i, i32 noundef 65535) #4
  %330 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg152.i98 = getelementptr inbounds %struct.hl_asic_funcs, ptr %331, i32 0, i32 58
  %332 = ptrtoint ptr %wreg152.i98 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %wreg152.i98, align 4
  %conv154.i = add i32 %183, 67110656
  tail call void %333(ptr noundef %hdev, i32 noundef %conv154.i, i32 noundef 167774976) #4
  %334 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg156.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %335, i32 0, i32 58
  %336 = ptrtoint ptr %wreg156.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %wreg156.i, align 4
  %conv158.i = add i32 %183, 67110664
  tail call void %337(ptr noundef %hdev, i32 noundef %conv158.i, i32 noundef 167774720) #4
  %338 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg160.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %339, i32 0, i32 58
  %340 = ptrtoint ptr %wreg160.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %wreg160.i, align 4
  %conv162.i = add i32 %183, 67110668
  tail call void %341(ptr noundef %hdev, i32 noundef %conv162.i, i32 noundef 167775232) #4
  %342 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg164.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %343, i32 0, i32 58
  %344 = ptrtoint ptr %wreg164.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %wreg164.i, align 4
  %conv166.i = add i32 %183, 67109120
  tail call void %345(ptr noundef %hdev, i32 noundef %conv166.i, i32 noundef 1) #4
  %346 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg168.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %347, i32 0, i32 58
  %348 = ptrtoint ptr %wreg168.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %wreg168.i, align 4
  %conv170.i = add i32 %183, 67109636
  tail call void %349(ptr noundef %hdev, i32 noundef %conv170.i, i32 noundef 0) #4
  %350 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg172.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %351, i32 0, i32 58
  %352 = ptrtoint ptr %wreg172.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %wreg172.i, align 4
  tail call void %353(ptr noundef %hdev, i32 noundef %conv.i48, i32 noundef 0) #4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %reg_idx.i101 = getelementptr inbounds %struct.hl_debug_params, ptr %data, i32 0, i32 3
  %354 = ptrtoint ptr %reg_idx.i101 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %reg_idx.i101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %355)
  %cmp.i102 = icmp ugt i32 %355, 39
  br i1 %cmp.i102, label %do.end.i104, label %if.end.i108

do.end.i104:                                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i103 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %356 = ptrtoint ptr %dev.i103 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %dev.i103, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %357, ptr noundef nonnull @.str.48) #7
  br label %sw.epilog

if.end.i108:                                      ; preds = %sw.bb9
  %arrayidx.i105 = getelementptr [40 x i64], ptr @debug_spmu_regs, i32 0, i32 %355
  %358 = ptrtoint ptr %arrayidx.i105 to i32
  call void @__asan_load8_noabort(i32 %358)
  %359 = load i64, ptr %arrayidx.i105, align 8
  %enable.i106 = getelementptr inbounds %struct.hl_debug_params, ptr %data, i32 0, i32 5
  %360 = ptrtoint ptr %enable.i106 to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %enable.i106, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %361)
  %tobool.not.i107 = icmp eq i8 %361, 0
  br i1 %tobool.not.i107, label %if.else.i112, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i108
  %362 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %data, align 4
  %tobool5.not.i = icmp eq ptr %363, null
  br i1 %tobool5.not.i, label %if.then3.i.sw.epilog_crit_edge, label %if.end7.i

if.then3.i.sw.epilog_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end7.i:                                        ; preds = %if.then3.i
  %event_types_num.i = getelementptr inbounds %struct.hl_debug_params_spmu, ptr %363, i32 0, i32 1
  %364 = ptrtoint ptr %event_types_num.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %event_types_num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %365)
  %cmp8.i = icmp ult i32 %365, 3
  br i1 %cmp8.i, label %do.end12.i, label %if.end14.i

do.end12.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev13.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %366 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %dev13.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %367, ptr noundef nonnull @.str.51) #7
  br label %sw.epilog

if.end14.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %365)
  %cmp16.i = icmp ugt i32 %365, 6
  br i1 %cmp16.i, label %do.end20.i, label %if.end22.i

do.end20.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev21.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %368 = ptrtoint ptr %dev21.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %dev21.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %369, ptr noundef nonnull @.str.54) #7
  br label %sw.epilog

if.end22.i:                                       ; preds = %if.end14.i
  %asic_funcs.i109 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %370 = ptrtoint ptr %asic_funcs.i109 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %asic_funcs.i109, align 8
  %wreg.i110 = getelementptr inbounds %struct.hl_asic_funcs, ptr %371, i32 0, i32 58
  %372 = ptrtoint ptr %wreg.i110 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %wreg.i110, align 4
  %374 = trunc i64 %359 to i32
  %conv.i111 = add i32 %374, 67112452
  tail call void %373(ptr noundef %hdev, i32 noundef %conv.i111, i32 noundef 1090596934) #4
  %375 = ptrtoint ptr %asic_funcs.i109 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %asic_funcs.i109, align 8
  %wreg24.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %376, i32 0, i32 58
  %377 = ptrtoint ptr %wreg24.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %wreg24.i, align 4
  tail call void %378(ptr noundef %hdev, i32 noundef %conv.i111, i32 noundef 1090596928) #4
  %379 = ptrtoint ptr %event_types_num.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %event_types_num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %380)
  %cmp28190.not.i = icmp eq i32 %380, 0
  br i1 %cmp28190.not.i, label %if.end22.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end22.i.for.end.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end22.i
  %381 = add i32 %374, 67109888
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0191.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %382 = ptrtoint ptr %asic_funcs.i109 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %asic_funcs.i109, align 8
  %wreg31.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %383, i32 0, i32 58
  %384 = ptrtoint ptr %wreg31.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %wreg31.i, align 4
  %mul.i = shl i32 %i.0191.i, 2
  %conv35.i = add i32 %381, %mul.i
  %arrayidx36.i = getelementptr [10 x i64], ptr %363, i32 0, i32 %i.0191.i
  %386 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load8_noabort(i32 %386)
  %387 = load i64, ptr %arrayidx36.i, align 8
  %conv37.i = trunc i64 %387 to i32
  tail call void %385(ptr noundef %hdev, i32 noundef %conv35.i, i32 noundef %conv37.i) #4
  %inc.i = add nuw i32 %i.0191.i, 1
  %388 = ptrtoint ptr %event_types_num.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %event_types_num.i, align 8
  %cmp28.i = icmp ult i32 %inc.i, %389
  br i1 %cmp28.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end22.i.for.end.i_crit_edge
  %390 = ptrtoint ptr %asic_funcs.i109 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %asic_funcs.i109, align 8
  %wreg39.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %391, i32 0, i32 58
  %392 = ptrtoint ptr %wreg39.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %wreg39.i, align 4
  tail call void %393(ptr noundef %hdev, i32 noundef %conv.i111, i32 noundef 1090596929) #4
  %394 = ptrtoint ptr %asic_funcs.i109 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %asic_funcs.i109, align 8
  %wreg43.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %395, i32 0, i32 58
  %396 = ptrtoint ptr %wreg43.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %wreg43.i, align 4
  %conv45.i = add i32 %374, 67111936
  tail call void %397(ptr noundef %hdev, i32 noundef %conv45.i, i32 noundef -2147483585) #4
  br label %sw.epilog

if.else.i112:                                     ; preds = %if.end.i108
  %output46.i = getelementptr inbounds %struct.hl_debug_params, ptr %data, i32 0, i32 1
  %398 = ptrtoint ptr %output46.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %output46.i, align 4
  %output_size.i = getelementptr inbounds %struct.hl_debug_params, ptr %data, i32 0, i32 2
  %400 = ptrtoint ptr %output_size.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %output_size.i, align 4
  %div188.i = lshr i32 %401, 3
  %sub47.i = add nsw i32 %div188.i, -2
  %sub49.i = add nsw i32 %div188.i, -1
  %tobool50.not.i = icmp eq ptr %399, null
  br i1 %tobool50.not.i, label %if.else.i112.sw.epilog_crit_edge, label %if.end52.i

if.else.i112.sw.epilog_crit_edge:                 ; preds = %if.else.i112
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end52.i:                                       ; preds = %if.else.i112
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %401)
  %cmp53.i = icmp ult i32 %401, 24
  br i1 %cmp53.i, label %do.end58.i, label %if.end60.i

do.end58.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev59.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %402 = ptrtoint ptr %dev59.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %dev59.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %403, ptr noundef nonnull @.str.57) #7
  br label %sw.epilog

if.end60.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub47.i)
  %cmp61.i = icmp ugt i32 %sub47.i, 6
  br i1 %cmp61.i, label %do.end66.i, label %if.end68.i

do.end66.i:                                       ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev67.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %404 = ptrtoint ptr %dev67.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %dev67.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %405, ptr noundef nonnull @.str.60) #7
  br label %sw.epilog

if.end68.i:                                       ; preds = %if.end60.i
  %asic_funcs69.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %406 = ptrtoint ptr %asic_funcs69.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %asic_funcs69.i, align 8
  %wreg70.i113 = getelementptr inbounds %struct.hl_asic_funcs, ptr %407, i32 0, i32 58
  %408 = ptrtoint ptr %wreg70.i113 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %wreg70.i113, align 4
  %410 = trunc i64 %359 to i32
  %conv72.i114 = add i32 %410, 67112452
  tail call void %409(ptr noundef %hdev, i32 noundef %conv72.i114, i32 noundef 1090596928) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub47.i)
  %cmp74192.not.i = icmp eq i32 %sub47.i, 0
  br i1 %cmp74192.not.i, label %if.end68.i.for.end86.i_crit_edge, label %for.body76.lr.ph.i

if.end68.i.for.end86.i_crit_edge:                 ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end86.i

for.body76.lr.ph.i:                               ; preds = %if.end68.i
  %411 = add i32 %410, 67108864
  br label %for.body76.i

for.body76.i:                                     ; preds = %for.body76.i.for.body76.i_crit_edge, %for.body76.lr.ph.i
  %i.1193.i = phi i32 [ 0, %for.body76.lr.ph.i ], [ %inc85.i, %for.body76.i.for.body76.i_crit_edge ]
  %412 = ptrtoint ptr %asic_funcs69.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %asic_funcs69.i, align 8
  %rreg.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %413, i32 0, i32 57
  %414 = ptrtoint ptr %rreg.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %rreg.i, align 4
  %mul78.i = shl i32 %i.1193.i, 3
  %conv81.i = add i32 %411, %mul78.i
  %call.i115 = tail call i32 %415(ptr noundef %hdev, i32 noundef %conv81.i) #4
  %conv82.i = zext i32 %call.i115 to i64
  %arrayidx83.i = getelementptr i64, ptr %399, i32 %i.1193.i
  %416 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store8_noabort(i32 %416)
  store i64 %conv82.i, ptr %arrayidx83.i, align 8
  %inc85.i = add nuw nsw i32 %i.1193.i, 1
  %exitcond.not.i = icmp eq i32 %inc85.i, %sub47.i
  br i1 %exitcond.not.i, label %for.body76.i.for.end86.i_crit_edge, label %for.body76.i.for.body76.i_crit_edge

for.body76.i.for.body76.i_crit_edge:              ; preds = %for.body76.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body76.i

for.body76.i.for.end86.i_crit_edge:               ; preds = %for.body76.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end86.i

for.end86.i:                                      ; preds = %for.body76.i.for.end86.i_crit_edge, %if.end68.i.for.end86.i_crit_edge
  %417 = ptrtoint ptr %asic_funcs69.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %asic_funcs69.i, align 8
  %rreg88.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %418, i32 0, i32 57
  %419 = ptrtoint ptr %rreg88.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %rreg88.i, align 4
  %conv90.i = add i32 %410, 67112128
  %call91.i = tail call i32 %420(ptr noundef %hdev, i32 noundef %conv90.i) #4
  %conv92.i = zext i32 %call91.i to i64
  %arrayidx93.i = getelementptr i64, ptr %399, i32 %sub47.i
  %421 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_store8_noabort(i32 %421)
  store i64 %conv92.i, ptr %arrayidx93.i, align 8
  %422 = ptrtoint ptr %asic_funcs69.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %asic_funcs69.i, align 8
  %rreg95.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %423, i32 0, i32 57
  %424 = ptrtoint ptr %rreg95.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %rreg95.i, align 4
  %conv97.i = add i32 %410, 67109116
  %call98.i = tail call i32 %425(ptr noundef %hdev, i32 noundef %conv97.i) #4
  %conv99.i = zext i32 %call98.i to i64
  %arrayidx100.i = getelementptr i64, ptr %399, i32 %sub49.i
  %shl.i116 = shl nuw i64 %conv99.i, 32
  %426 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_store8_noabort(i32 %426)
  store i64 %shl.i116, ptr %arrayidx100.i, align 8
  %427 = ptrtoint ptr %asic_funcs69.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %asic_funcs69.i, align 8
  %rreg103.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %428, i32 0, i32 57
  %429 = ptrtoint ptr %rreg103.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %rreg103.i, align 4
  %conv105.i = add i32 %410, 67109112
  %call106.i = tail call i32 %430(ptr noundef %hdev, i32 noundef %conv105.i) #4
  %conv107.i = zext i32 %call106.i to i64
  %431 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_load8_noabort(i32 %431)
  %432 = load i64, ptr %arrayidx100.i, align 8
  %or.i117 = or i64 %432, %conv107.i
  store i64 %or.i117, ptr %arrayidx100.i, align 8
  %433 = ptrtoint ptr %asic_funcs69.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %asic_funcs69.i, align 8
  %wreg110.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %434, i32 0, i32 58
  %435 = ptrtoint ptr %wreg110.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %wreg110.i, align 4
  tail call void %436(ptr noundef %hdev, i32 noundef %conv90.i, i32 noundef 0) #4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %437 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %438, ptr noundef nonnull @.str, i32 noundef %1) #7
  br label %cleanup

sw.epilog:                                        ; preds = %for.end86.i, %do.end66.i, %do.end58.i, %if.else.i112.sw.epilog_crit_edge, %for.end.i, %do.end20.i, %do.end12.i, %if.then3.i.sw.epilog_crit_edge, %do.end.i104, %if.else.i99, %if.end6.i78, %if.then2.i53.sw.epilog_crit_edge, %do.end.i44, %if.end.i39, %do.end.i32, %sw.bb3, %sw.bb1, %if.end150.i, %do.end148.i, %if.end85.i, %if.then2.i.sw.epilog_crit_edge, %do.end.i, %entry.sw.epilog_crit_edge
  %rc.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ -22, %do.end.i ], [ %call.i, %do.end148.i ], [ -22, %if.then2.i.sw.epilog_crit_edge ], [ 0, %if.end150.i ], [ 0, %if.end85.i ], [ -22, %do.end.i32 ], [ 0, %if.end.i39 ], [ -22, %do.end.i44 ], [ -22, %if.then2.i53.sw.epilog_crit_edge ], [ 0, %if.else.i99 ], [ 0, %if.end6.i78 ], [ -22, %do.end.i104 ], [ -22, %do.end12.i ], [ -22, %do.end20.i ], [ -22, %do.end58.i ], [ -22, %do.end66.i ], [ -22, %if.then3.i.sw.epilog_crit_edge ], [ -22, %if.else.i112.sw.epilog_crit_edge ], [ 0, %for.end86.i ], [ 0, %for.end.i ]
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %439 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %asic_funcs, align 8
  %rreg = getelementptr inbounds %struct.hl_asic_funcs, ptr %440, i32 0, i32 57
  %441 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %rreg, align 4
  %call12 = tail call i32 %442(ptr noundef %hdev, i32 noundef 12890368) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %rc.0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gaudi_config_etf(ptr noundef %hdev, ptr nocapture noundef readonly %params) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_idx = getelementptr inbounds %struct.hl_debug_params, ptr %params, i32 0, i32 3
  %0 = ptrtoint ptr %reg_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %1)
  %cmp = icmp ugt i32 %1, 47
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [48 x i64], ptr @debug_etf_regs, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx, align 8
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %6 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic_funcs, align 8
  %wreg = getelementptr inbounds %struct.hl_asic_funcs, ptr %7, i32 0, i32 58
  %8 = ptrtoint ptr %wreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wreg, align 4
  %10 = trunc i64 %5 to i32
  %conv = add i32 %10, 67112880
  tail call void %9(ptr noundef %hdev, i32 noundef %conv, i32 noundef -978530731) #4
  %11 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %asic_funcs, align 8
  %rreg = getelementptr inbounds %struct.hl_asic_funcs, ptr %12, i32 0, i32 57
  %13 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rreg, align 4
  %add3 = add i64 %5, -549688704252
  %conv4 = trunc i64 %add3 to i32
  %call = tail call i32 %14(ptr noundef %hdev, i32 noundef %conv4) #4
  %or = or i32 %call, 4096
  %15 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %asic_funcs, align 8
  %wreg6 = getelementptr inbounds %struct.hl_asic_funcs, ptr %16, i32 0, i32 58
  %17 = ptrtoint ptr %wreg6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wreg6, align 4
  tail call void %18(ptr noundef %hdev, i32 noundef %conv4, i32 noundef %or) #4
  %or9 = or i32 %call, 4160
  %19 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %asic_funcs, align 8
  %wreg11 = getelementptr inbounds %struct.hl_asic_funcs, ptr %20, i32 0, i32 58
  %21 = ptrtoint ptr %wreg11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wreg11, align 4
  tail call void %22(ptr noundef %hdev, i32 noundef %conv4, i32 noundef %or9) #4
  %call15 = tail call fastcc i32 @gaudi_coresight_timeout(ptr noundef %hdev, i64 noundef %add3, i32 noundef 6, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end23, label %do.end19

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev20 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %23 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev20, align 4
  %enable = getelementptr inbounds %struct.hl_debug_params, ptr %params, i32 0, i32 5
  %25 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %enable, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool21.not = icmp eq i8 %26, 0
  %cond = select i1 %tobool21.not, ptr @.str.23, ptr @.str.22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.20, ptr noundef nonnull %cond, i32 noundef %call15) #7
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %add24 = add i64 %5, -549688705012
  %call25 = tail call fastcc i32 @gaudi_coresight_timeout(ptr noundef %hdev, i64 noundef %add24, i32 noundef 2, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end36, label %do.end30

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %dev31 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %27 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev31, align 4
  %enable32 = getelementptr inbounds %struct.hl_debug_params, ptr %params, i32 0, i32 5
  %29 = ptrtoint ptr %enable32 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %enable32, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool33.not = icmp eq i8 %30, 0
  %cond35 = select i1 %tobool33.not, ptr @.str.23, ptr @.str.22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.20, ptr noundef nonnull %cond35, i32 noundef %call25) #7
  br label %cleanup

if.end36:                                         ; preds = %if.end23
  %31 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %asic_funcs, align 8
  %wreg38 = getelementptr inbounds %struct.hl_asic_funcs, ptr %32, i32 0, i32 58
  %33 = ptrtoint ptr %wreg38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wreg38, align 4
  %conv40 = add i32 %10, 67108896
  tail call void %34(ptr noundef %hdev, i32 noundef %conv40, i32 noundef 0) #4
  %enable41 = getelementptr inbounds %struct.hl_debug_params, ptr %params, i32 0, i32 5
  %35 = ptrtoint ptr %enable41 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %enable41, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool42.not = icmp eq i8 %36, 0
  br i1 %tobool42.not, label %if.else, label %if.then43

if.then43:                                        ; preds = %if.end36
  %37 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %params, align 4
  %tobool45.not = icmp eq ptr %38, null
  br i1 %tobool45.not, label %if.then43.cleanup_crit_edge, label %if.end47

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end47:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %asic_funcs, align 8
  %wreg49 = getelementptr inbounds %struct.hl_asic_funcs, ptr %40, i32 0, i32 58
  %41 = ptrtoint ptr %wreg49 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wreg49, align 4
  %conv51 = add i32 %10, 67108916
  tail call void %42(ptr noundef %hdev, i32 noundef %conv51, i32 noundef 16380) #4
  %43 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %asic_funcs, align 8
  %wreg53 = getelementptr inbounds %struct.hl_asic_funcs, ptr %44, i32 0, i32 58
  %45 = ptrtoint ptr %wreg53 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wreg53, align 4
  %conv55 = add i32 %10, 67108904
  %sink_mode = getelementptr inbounds %struct.hl_debug_params_etf, ptr %38, i32 0, i32 2
  %47 = ptrtoint ptr %sink_mode to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sink_mode, align 8
  tail call void %46(ptr noundef %hdev, i32 noundef %conv55, i32 noundef %48) #4
  %49 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %asic_funcs, align 8
  %wreg57 = getelementptr inbounds %struct.hl_asic_funcs, ptr %50, i32 0, i32 58
  %51 = ptrtoint ptr %wreg57 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wreg57, align 4
  tail call void %52(ptr noundef %hdev, i32 noundef %conv4, i32 noundef 16385) #4
  %53 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %asic_funcs, align 8
  %wreg61 = getelementptr inbounds %struct.hl_asic_funcs, ptr %54, i32 0, i32 58
  %55 = ptrtoint ptr %wreg61 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wreg61, align 4
  %conv63 = add i32 %10, 67109640
  tail call void %56(ptr noundef %hdev, i32 noundef %conv63, i32 noundef 10) #4
  %57 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %asic_funcs, align 8
  %wreg65 = getelementptr inbounds %struct.hl_asic_funcs, ptr %58, i32 0, i32 58
  %59 = ptrtoint ptr %wreg65 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wreg65, align 4
  tail call void %60(ptr noundef %hdev, i32 noundef %conv40, i32 noundef 1) #4
  br label %cleanup

if.else:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  %61 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %asic_funcs, align 8
  %wreg69 = getelementptr inbounds %struct.hl_asic_funcs, ptr %62, i32 0, i32 58
  %63 = ptrtoint ptr %wreg69 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %wreg69, align 4
  %conv71 = add i32 %10, 67108916
  tail call void %64(ptr noundef %hdev, i32 noundef %conv71, i32 noundef 0) #4
  %65 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %asic_funcs, align 8
  %wreg73 = getelementptr inbounds %struct.hl_asic_funcs, ptr %66, i32 0, i32 58
  %67 = ptrtoint ptr %wreg73 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %wreg73, align 4
  %conv75 = add i32 %10, 67108904
  tail call void %68(ptr noundef %hdev, i32 noundef %conv75, i32 noundef 0) #4
  %69 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %asic_funcs, align 8
  %wreg77 = getelementptr inbounds %struct.hl_asic_funcs, ptr %70, i32 0, i32 58
  %71 = ptrtoint ptr %wreg77 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %wreg77, align 4
  tail call void %72(ptr noundef %hdev, i32 noundef %conv4, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end47, %if.then43.cleanup_crit_edge, %do.end30, %do.end19, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call15, %do.end19 ], [ %call25, %do.end30 ], [ -22, %if.then43.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.end47 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gaudi_config_etr(ptr noundef %hdev, ptr nocapture noundef readonly %params) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %0 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic_funcs, align 8
  %wreg = getelementptr inbounds %struct.hl_asic_funcs, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %wreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wreg, align 4
  tail call void %3(ptr noundef %hdev, i32 noundef 46415792, i32 noundef -978530731) #4
  %4 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic_funcs, align 8
  %rreg = getelementptr inbounds %struct.hl_asic_funcs, ptr %5, i32 0, i32 57
  %6 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rreg, align 4
  %call = tail call i32 %7(ptr noundef %hdev, i32 noundef 46412548) #4
  %or = or i32 %call, 4096
  %8 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asic_funcs, align 8
  %wreg3 = getelementptr inbounds %struct.hl_asic_funcs, ptr %9, i32 0, i32 58
  %10 = ptrtoint ptr %wreg3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wreg3, align 4
  tail call void %11(ptr noundef %hdev, i32 noundef 46412548, i32 noundef %or) #4
  %or4 = or i32 %call, 4160
  %12 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asic_funcs, align 8
  %wreg6 = getelementptr inbounds %struct.hl_asic_funcs, ptr %13, i32 0, i32 58
  %14 = ptrtoint ptr %wreg6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wreg6, align 4
  tail call void %15(ptr noundef %hdev, i32 noundef 46412548, i32 noundef %or4) #4
  %call7 = tail call fastcc i32 @gaudi_coresight_timeout(ptr noundef %hdev, i64 noundef 46412548, i32 noundef 6, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %enable = getelementptr inbounds %struct.hl_debug_params, ptr %params, i32 0, i32 5
  %18 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %enable, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool8.not = icmp eq i8 %19, 0
  %cond = select i1 %tobool8.not, ptr @.str.23, ptr @.str.22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond, i32 noundef %call7) #7
  br label %cleanup180

if.end:                                           ; preds = %entry
  %call9 = tail call fastcc i32 @gaudi_coresight_timeout(ptr noundef %hdev, i64 noundef 46411788, i32 noundef 2, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end19, label %do.end14

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev15 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %20 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev15, align 4
  %enable16 = getelementptr inbounds %struct.hl_debug_params, ptr %params, i32 0, i32 5
  %22 = ptrtoint ptr %enable16 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %enable16, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool17.not = icmp eq i8 %23, 0
  %cond18 = select i1 %tobool17.not, ptr @.str.23, ptr @.str.22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond18, i32 noundef %call9) #7
  br label %cleanup180

if.end19:                                         ; preds = %if.end
  %24 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %asic_funcs, align 8
  %wreg21 = getelementptr inbounds %struct.hl_asic_funcs, ptr %25, i32 0, i32 58
  %26 = ptrtoint ptr %wreg21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wreg21, align 4
  tail call void %27(ptr noundef %hdev, i32 noundef 46411808, i32 noundef 0) #4
  %enable22 = getelementptr inbounds %struct.hl_debug_params, ptr %params, i32 0, i32 5
  %28 = ptrtoint ptr %enable22 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %enable22, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool23.not = icmp eq i8 %29, 0
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end19
  %30 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %params, align 4
  %tobool26.not = icmp eq ptr %31, null
  br i1 %tobool26.not, label %if.then24.cleanup180_crit_edge, label %if.end28

if.then24.cleanup180_crit_edge:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup180

if.end28:                                         ; preds = %if.then24
  %buffer_size = getelementptr inbounds %struct.hl_debug_params_etr, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %buffer_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %cmp = icmp eq i64 %33, 0
  br i1 %cmp, label %do.end32, label %if.end34

do.end32:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %dev33 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %34 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.31) #7
  br label %cleanup180

if.end34:                                         ; preds = %if.end28
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %31, align 8
  %asic_specific.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 35
  %38 = ptrtoint ptr %asic_specific.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %asic_specific.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 1125899906842624, i64 %37)
  %tobool.not.i = icmp ult i64 %37, 1125899906842624
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.36) #7
  br label %do.end40

if.end.i:                                         ; preds = %if.end34
  %42 = xor i64 %37, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %42)
  %cmp.i = icmp ugt i64 %33, %42
  br i1 %cmp.i, label %do.end4.i, label %if.end6.i

do.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev5.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %43 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev5.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.39, i64 noundef %33) #7
  br label %do.end40

if.end6.i:                                        ; preds = %if.end.i
  %hw_cap_initialized.i = getelementptr inbounds %struct.gaudi_device, ptr %39, i32 0, i32 9
  %45 = ptrtoint ptr %hw_cap_initialized.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hw_cap_initialized.i, align 4
  %and.i = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.end6.if.end10_crit_edge.i, label %land.lhs.true.i

if.end6.if.end10_crit_edge.i:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  %.pre.i = add i64 %37, %33
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.end6.i
  %pmmu.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 5
  %47 = ptrtoint ptr %pmmu.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %pmmu.i, align 8
  %end_addr.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 5, i32 1
  %49 = ptrtoint ptr %end_addr.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %end_addr.i, align 8
  %add.i.i = add i64 %37, %33
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %37)
  %cmp.not.i.i = icmp ule i64 %48, %37
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %50)
  %cmp1.not.i.i = icmp ule i64 %add.i.i, %50
  %or.cond.not.i.i = and i1 %cmp.not.i.i, %cmp1.not.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %37)
  %cmp3.i.i = icmp ugt i64 %add.i.i, %37
  %or.cond7.i.i = and i1 %cmp3.i.i, %or.cond.not.i.i
  br i1 %or.cond7.i.i, label %land.lhs.true.i.if.end42_crit_edge, label %land.lhs.true.i.if.end10.i_crit_edge

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

land.lhs.true.i.if.end42_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.end10.i:                                       ; preds = %land.lhs.true.i.if.end10.i_crit_edge, %if.end6.if.end10_crit_edge.i
  %add.i46.pre-phi.i = phi i64 [ %.pre.i, %if.end6.if.end10_crit_edge.i ], [ %add.i.i, %land.lhs.true.i.if.end10.i_crit_edge ]
  %dram_user_base_address.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 15
  %51 = ptrtoint ptr %dram_user_base_address.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %dram_user_base_address.i, align 8
  %dram_end_address.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 14
  %53 = ptrtoint ptr %dram_end_address.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %dram_end_address.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %37)
  %cmp.not.i47.i = icmp ule i64 %52, %37
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i46.pre-phi.i, i64 %54)
  %cmp1.not.i48.i = icmp ule i64 %add.i46.pre-phi.i, %54
  %or.cond.not.i49.i = and i1 %cmp.not.i47.i, %cmp1.not.i48.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i46.pre-phi.i, i64 %37)
  %cmp3.i50.i = icmp ugt i64 %add.i46.pre-phi.i, %37
  %or.cond7.i51.i = and i1 %cmp3.i50.i, %or.cond.not.i49.i
  br i1 %or.cond7.i51.i, label %if.end10.i.if.end42_crit_edge, label %if.end13.i

if.end10.i.if.end42_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.end13.i:                                       ; preds = %if.end10.i
  %sram_user_base_address.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 12
  %55 = ptrtoint ptr %sram_user_base_address.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %sram_user_base_address.i, align 8
  %sram_end_address.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 11
  %57 = ptrtoint ptr %sram_end_address.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %sram_end_address.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %56, i64 %37)
  %cmp.not.i53.i = icmp ule i64 %56, %37
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i46.pre-phi.i, i64 %58)
  %cmp1.not.i54.i = icmp ule i64 %add.i46.pre-phi.i, %58
  %or.cond.not.i55.i = and i1 %cmp.not.i53.i, %cmp1.not.i54.i
  %or.cond7.i57.i = and i1 %cmp3.i50.i, %or.cond.not.i55.i
  %tobool7.not.not.i = xor i1 %tobool7.not.i, true
  %brmerge.i = select i1 %or.cond7.i57.i, i1 true, i1 %tobool7.not.not.i
  br i1 %brmerge.i, label %gaudi_etr_validate_address.exit, label %do.end23.i

do.end23.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev24.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %59 = ptrtoint ptr %dev24.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev24.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.42) #7
  br label %do.end40

gaudi_etr_validate_address.exit:                  ; preds = %if.end13.i
  br i1 %or.cond7.i57.i, label %gaudi_etr_validate_address.exit.if.end42_crit_edge, label %gaudi_etr_validate_address.exit.do.end40_crit_edge

gaudi_etr_validate_address.exit.do.end40_crit_edge: ; preds = %gaudi_etr_validate_address.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end40

gaudi_etr_validate_address.exit.if.end42_crit_edge: ; preds = %gaudi_etr_validate_address.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

do.end40:                                         ; preds = %gaudi_etr_validate_address.exit.do.end40_crit_edge, %do.end23.i, %do.end4.i, %do.end.i
  %dev41 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %61 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.34) #7
  br label %cleanup180

if.end42:                                         ; preds = %gaudi_etr_validate_address.exit.if.end42_crit_edge, %if.end10.i.if.end42_crit_edge, %land.lhs.true.i.if.end42_crit_edge
  %tobool99.not = phi i32 [ 2, %land.lhs.true.i.if.end42_crit_edge ], [ 1794, %if.end10.i.if.end42_crit_edge ], [ 1794, %gaudi_etr_validate_address.exit.if.end42_crit_edge ]
  %63 = ptrtoint ptr %31 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %31, align 8
  %sum.shift = lshr i64 %64, 40
  %65 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %asic_funcs, align 8
  %wreg48 = getelementptr inbounds %struct.hl_asic_funcs, ptr %66, i32 0, i32 58
  %67 = ptrtoint ptr %wreg48 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %wreg48, align 4
  %69 = trunc i64 %sum.shift to i32
  %conv49 = and i32 %69, 1023
  tail call void %68(ptr noundef %hdev, i32 noundef 12890912, i32 noundef %conv49) #4
  %70 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %asic_funcs, align 8
  %wreg51 = getelementptr inbounds %struct.hl_asic_funcs, ptr %71, i32 0, i32 58
  %72 = ptrtoint ptr %wreg51 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %wreg51, align 4
  tail call void %73(ptr noundef %hdev, i32 noundef 46411828, i32 noundef 16380) #4
  %74 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %asic_funcs, align 8
  %wreg53 = getelementptr inbounds %struct.hl_asic_funcs, ptr %75, i32 0, i32 58
  %76 = ptrtoint ptr %wreg53 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %wreg53, align 4
  %78 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %buffer_size, align 8
  %conv55 = trunc i64 %79 to i32
  tail call void %77(ptr noundef %hdev, i32 noundef 46411780, i32 noundef %conv55) #4
  %80 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %asic_funcs, align 8
  %wreg57 = getelementptr inbounds %struct.hl_asic_funcs, ptr %81, i32 0, i32 58
  %82 = ptrtoint ptr %wreg57 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %wreg57, align 4
  %sink_mode = getelementptr inbounds %struct.hl_debug_params_etr, ptr %31, i32 0, i32 2
  %84 = ptrtoint ptr %sink_mode to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %sink_mode, align 8
  tail call void %83(ptr noundef %hdev, i32 noundef 46411816, i32 noundef %85) #4
  %fw_security_enabled = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 68
  %86 = ptrtoint ptr %fw_security_enabled to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %fw_security_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool58.not = icmp eq i8 %87, 0
  br i1 %tobool58.not, label %do.end74, label %if.end42.if.end125_crit_edge

if.end42.if.end125_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end125

do.end74:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  %88 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %asic_funcs, align 8
  %wreg124 = getelementptr inbounds %struct.hl_asic_funcs, ptr %89, i32 0, i32 58
  %90 = ptrtoint ptr %wreg124 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wreg124, align 4
  tail call void %91(ptr noundef %hdev, i32 noundef 46412048, i32 noundef %tobool99.not) #4
  br label %if.end125

if.end125:                                        ; preds = %do.end74, %if.end42.if.end125_crit_edge
  %92 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %asic_funcs, align 8
  %wreg127 = getelementptr inbounds %struct.hl_asic_funcs, ptr %93, i32 0, i32 58
  %94 = ptrtoint ptr %wreg127 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %wreg127, align 4
  %96 = ptrtoint ptr %31 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %31, align 8
  %conv130 = trunc i64 %97 to i32
  tail call void %95(ptr noundef %hdev, i32 noundef 46412056, i32 noundef %conv130) #4
  %98 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %asic_funcs, align 8
  %wreg132 = getelementptr inbounds %struct.hl_asic_funcs, ptr %99, i32 0, i32 58
  %100 = ptrtoint ptr %wreg132 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %wreg132, align 4
  %102 = ptrtoint ptr %31 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %31, align 8
  %shr134 = lshr i64 %103, 32
  %conv136 = trunc i64 %shr134 to i32
  tail call void %101(ptr noundef %hdev, i32 noundef 46412060, i32 noundef %conv136) #4
  %104 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %asic_funcs, align 8
  %wreg138 = getelementptr inbounds %struct.hl_asic_funcs, ptr %105, i32 0, i32 58
  %106 = ptrtoint ptr %wreg138 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %wreg138, align 4
  tail call void %107(ptr noundef %hdev, i32 noundef 46412548, i32 noundef 3) #4
  %108 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %asic_funcs, align 8
  %wreg140 = getelementptr inbounds %struct.hl_asic_funcs, ptr %109, i32 0, i32 58
  %110 = ptrtoint ptr %wreg140 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %wreg140, align 4
  tail call void %111(ptr noundef %hdev, i32 noundef 46412552, i32 noundef 10) #4
  %112 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %asic_funcs, align 8
  %wreg142 = getelementptr inbounds %struct.hl_asic_funcs, ptr %113, i32 0, i32 58
  %114 = ptrtoint ptr %wreg142 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %wreg142, align 4
  tail call void %115(ptr noundef %hdev, i32 noundef 46411808, i32 noundef 1) #4
  br label %cleanup180

if.else:                                          ; preds = %if.end19
  %116 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %asic_funcs, align 8
  %wreg144 = getelementptr inbounds %struct.hl_asic_funcs, ptr %117, i32 0, i32 58
  %118 = ptrtoint ptr %wreg144 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %wreg144, align 4
  tail call void %119(ptr noundef %hdev, i32 noundef 46411828, i32 noundef 0) #4
  %120 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %asic_funcs, align 8
  %wreg146 = getelementptr inbounds %struct.hl_asic_funcs, ptr %121, i32 0, i32 58
  %122 = ptrtoint ptr %wreg146 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %wreg146, align 4
  tail call void %123(ptr noundef %hdev, i32 noundef 46411780, i32 noundef 1024) #4
  %124 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %asic_funcs, align 8
  %wreg148 = getelementptr inbounds %struct.hl_asic_funcs, ptr %125, i32 0, i32 58
  %126 = ptrtoint ptr %wreg148 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %wreg148, align 4
  tail call void %127(ptr noundef %hdev, i32 noundef 46412056, i32 noundef 0) #4
  %128 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %asic_funcs, align 8
  %wreg150 = getelementptr inbounds %struct.hl_asic_funcs, ptr %129, i32 0, i32 58
  %130 = ptrtoint ptr %wreg150 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %wreg150, align 4
  tail call void %131(ptr noundef %hdev, i32 noundef 46412060, i32 noundef 0) #4
  %132 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %asic_funcs, align 8
  %wreg152 = getelementptr inbounds %struct.hl_asic_funcs, ptr %133, i32 0, i32 58
  %134 = ptrtoint ptr %wreg152 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %wreg152, align 4
  tail call void %135(ptr noundef %hdev, i32 noundef 46412552, i32 noundef 0) #4
  %136 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %asic_funcs, align 8
  %wreg154 = getelementptr inbounds %struct.hl_asic_funcs, ptr %137, i32 0, i32 58
  %138 = ptrtoint ptr %wreg154 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %wreg154, align 4
  tail call void %139(ptr noundef %hdev, i32 noundef 46411816, i32 noundef 0) #4
  %140 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %asic_funcs, align 8
  %wreg156 = getelementptr inbounds %struct.hl_asic_funcs, ptr %141, i32 0, i32 58
  %142 = ptrtoint ptr %wreg156 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %wreg156, align 4
  tail call void %143(ptr noundef %hdev, i32 noundef 46412548, i32 noundef 0) #4
  %output_size = getelementptr inbounds %struct.hl_debug_params, ptr %params, i32 0, i32 2
  %144 = ptrtoint ptr %output_size to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %output_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %145)
  %cmp157 = icmp ugt i32 %145, 7
  br i1 %cmp157, label %if.then159, label %if.else.cleanup180_crit_edge

if.else.cleanup180_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup180

if.then159:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %146 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %asic_funcs, align 8
  %rreg161 = getelementptr inbounds %struct.hl_asic_funcs, ptr %147, i32 0, i32 57
  %148 = ptrtoint ptr %rreg161 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %rreg161, align 4
  %call162 = tail call i32 %149(ptr noundef %hdev, i32 noundef 46411800) #4
  %150 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %asic_funcs, align 8
  %rreg164 = getelementptr inbounds %struct.hl_asic_funcs, ptr %151, i32 0, i32 57
  %152 = ptrtoint ptr %rreg164 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %rreg164, align 4
  %call165 = tail call i32 %153(ptr noundef %hdev, i32 noundef 46411836) #4
  %and166 = and i32 %call165, 255
  %154 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %asic_funcs, align 8
  %rreg168 = getelementptr inbounds %struct.hl_asic_funcs, ptr %155, i32 0, i32 57
  %156 = ptrtoint ptr %rreg168 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %rreg168, align 4
  %call169 = tail call i32 %157(ptr noundef %hdev, i32 noundef 12890912) #4
  %and170 = and i32 %call169, 1023
  %conv171 = zext i32 %and170 to i64
  %shl172 = shl nuw nsw i64 %conv171, 40
  %conv173 = zext i32 %and166 to i64
  %shl174 = shl nuw nsw i64 %conv173, 32
  %or175 = or i64 %shl172, %shl174
  %conv176 = zext i32 %call162 to i64
  %or177 = or i64 %or175, %conv176
  %output = getelementptr inbounds %struct.hl_debug_params, ptr %params, i32 0, i32 1
  %158 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %output, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 %or177, ptr %159, align 8
  br label %cleanup180

cleanup180:                                       ; preds = %if.then159, %if.else.cleanup180_crit_edge, %if.end125, %do.end40, %do.end32, %if.then24.cleanup180_crit_edge, %do.end14, %do.end
  %retval.1 = phi i32 [ %call7, %do.end ], [ %call9, %do.end14 ], [ 0, %if.end125 ], [ 0, %if.else.cleanup180_crit_edge ], [ 0, %if.then159 ], [ -22, %if.then24.cleanup180_crit_edge ], [ -22, %do.end40 ], [ -22, %do.end32 ]
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gaudi_halt_coresight(ptr noundef %hdev, ptr nocapture noundef readnone %ctx) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.hl_debug_params, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %params) #4
  %0 = call ptr @memset(ptr %params, i32 0, i32 24)
  %reg_idx = getelementptr inbounds %struct.hl_debug_params, ptr %params, i32 0, i32 3
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.018 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %1 = ptrtoint ptr %reg_idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %i.018, ptr %reg_idx, align 4
  %call = call fastcc i32 @gaudi_config_etf(ptr noundef %hdev, ptr noundef nonnull %params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %call, i32 noundef %i.018) #7
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, 48
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call1 = call fastcc i32 @gaudi_config_etr(ptr noundef %hdev, ptr noundef nonnull %params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.end.if.end8_crit_edge, label %do.end6

for.end.if.end8_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

do.end6:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef %call1) #7
  br label %if.end8

if.end8:                                          ; preds = %do.end6, %for.end.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %params) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gaudi_coresight_timeout(ptr noundef %hdev, i64 noundef %addr, i32 noundef %position, i1 noundef zeroext %up) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %tobool.not = icmp eq ptr %1, null
  %call2 = tail call i64 @ktime_get() #4
  %. = select i1 %tobool.not, i64 1000000000, i64 100000000
  %add.i65 = add i64 %call2, %.
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 377) #4
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %conv = trunc i64 %addr to i32
  %shl14 = shl nuw i32 1, %position
  br label %for.cond

for.cond:                                         ; preds = %if.end27, %entry
  %2 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic_funcs, align 8
  %rreg = getelementptr inbounds %struct.hl_asic_funcs, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rreg, align 4
  %call10 = tail call i32 %5(ptr noundef %hdev, i32 noundef %conv) #4
  %and = and i32 %call10, %shl14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %up, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br i1 %tobool13.not, label %cond.true.if.end18_crit_edge, label %cond.true.cleanup_crit_edge

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cond.true.if.end18_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

cond.false:                                       ; preds = %for.cond
  br i1 %tobool13.not, label %cond.false.cond.false33_crit_edge, label %cond.false.if.end18_crit_edge

cond.false.if.end18_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

cond.false.cond.false33_crit_edge:                ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false33

if.end18:                                         ; preds = %cond.false.if.end18_crit_edge, %cond.true.if.end18_crit_edge
  %call19 = tail call i64 @ktime_get() #4
  %cmp3.i = icmp sgt i64 %call19, %add.i65
  br i1 %cmp3.i, label %for.end, label %if.end27

if.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #4
  br label %for.cond

for.end:                                          ; preds = %if.end18
  %6 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic_funcs, align 8
  %rreg24 = getelementptr inbounds %struct.hl_asic_funcs, ptr %7, i32 0, i32 57
  %8 = ptrtoint ptr %rreg24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rreg24, align 4
  %call26 = tail call i32 %9(ptr noundef %hdev, i32 noundef %conv) #4
  br i1 %up, label %for.end.cond.true30_crit_edge, label %for.end.cond.false33_crit_edge

for.end.cond.false33_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false33

for.end.cond.true30_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %.pre = and i32 %call26, %shl14
  br label %cond.end

cond.false33:                                     ; preds = %for.end.cond.false33_crit_edge, %cond.false.cond.false33_crit_edge
  %val.070 = phi i32 [ %call26, %for.end.cond.false33_crit_edge ], [ %call10, %cond.false.cond.false33_crit_edge ]
  %10 = xor i32 %val.070, -1
  %11 = lshr i32 %10, %position
  %12 = and i32 %11, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false33, %for.end.cond.true30_crit_edge
  %cond = phi i32 [ %12, %cond.false33 ], [ %.pre, %for.end.cond.true30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool38.not = icmp eq i32 %cond, 0
  br i1 %tobool38.not, label %do.end44, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end44:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %conv46 = zext i1 %up to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.15, i64 noundef %addr, i32 noundef %position, i32 noundef %conv46) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %cond.end.cleanup_crit_edge, %cond.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %do.end44 ], [ 0, %cond.end.cleanup_crit_edge ], [ 0, %cond.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !44, !46, !47, !49, !51, !52, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !87, !88, !89, !90, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 880, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gaudi_debug_coresight._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gaudi_debug_coresight._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 899, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @gaudi_halt_coresight._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @gaudi_halt_coresight._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 904, i32 3}
!15 = !{ptr @gaudi_halt_coresight._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @gaudi_halt_coresight._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 398, i32 3}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @gaudi_config_stm._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @gaudi_config_stm._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 455, i32 4}
!24 = !{ptr @gaudi_config_stm._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @gaudi_config_stm._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @debug_stm_regs, !27, !"debug_stm_regs", i1 false, i1 false}
!27 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 19, i32 12}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 380, i32 3}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @gaudi_coresight_timeout._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @gaudi_coresight_timeout._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 476, i32 3}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @gaudi_config_etf._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @gaudi_config_etf._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 492, i32 3}
!40 = !{ptr @gaudi_config_etf._entry.19, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @gaudi_config_etf._entry_ptr.21, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @gaudi_config_etf._entry.24, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 500, i32 3}
!46 = !{ptr @gaudi_config_etf._entry_ptr.25, !45, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @debug_etf_regs, !48, !"debug_etf_regs", i1 false, i1 false}
!48 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 68, i32 12}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 590, i32 3}
!51 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @gaudi_config_etr._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @gaudi_config_etr._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @gaudi_config_etr._entry.28, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 597, i32 3}
!56 = !{ptr @gaudi_config_etr._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 613, i32 4}
!59 = !{ptr @gaudi_config_etr._entry.30, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @gaudi_config_etr._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 621, i32 4}
!63 = !{ptr @gaudi_config_etr._entry.33, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @gaudi_config_etr._entry_ptr.35, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 536, i32 3}
!67 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @gaudi_etr_validate_address._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @gaudi_etr_validate_address._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 542, i32 3}
!72 = !{ptr @gaudi_etr_validate_address._entry.38, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @gaudi_etr_validate_address._entry_ptr.40, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 567, i32 3}
!76 = !{ptr @gaudi_etr_validate_address._entry.41, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @gaudi_etr_validate_address._entry_ptr.43, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 691, i32 3}
!80 = !{ptr @.str.45, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @gaudi_config_funnel._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @gaudi_config_funnel._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @debug_funnel_regs, !84, !"debug_funnel_regs", i1 false, i1 false}
!84 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 119, i32 12}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 711, i32 3}
!87 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @gaudi_config_bmon._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @gaudi_config_bmon._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @debug_bmon_regs, !91, !"debug_bmon_regs", i1 false, i1 false}
!91 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 198, i32 12}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 779, i32 3}
!94 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @gaudi_config_spmu._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @gaudi_config_spmu._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 792, i32 4}
!99 = !{ptr @gaudi_config_spmu._entry.50, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @gaudi_config_spmu._entry_ptr.52, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 798, i32 4}
!103 = !{ptr @gaudi_config_spmu._entry.53, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @gaudi_config_spmu._entry_ptr.55, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.57, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 823, i32 4}
!107 = !{ptr @gaudi_config_spmu._entry.56, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @gaudi_config_spmu._entry_ptr.58, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.60, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 829, i32 4}
!111 = !{ptr @gaudi_config_spmu._entry.59, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @gaudi_config_spmu._entry_ptr.61, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @debug_spmu_regs, !114, !"debug_spmu_regs", i1 false, i1 false}
!114 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_coresight.c", i32 322, i32 12}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{i8 0, i8 2}
