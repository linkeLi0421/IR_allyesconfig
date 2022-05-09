; ModuleID = '/llk/IR_all_yes/drivers/misc/habanalabs/goya/goya_coresight.c_pt.bc'
source_filename = "../drivers/misc/habanalabs/goya/goya_coresight.c"
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

@goya_debug_coresight._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 684, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unknown coresight id %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"goya_debug_coresight\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/misc/habanalabs/goya/goya_coresight.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@goya_debug_coresight._entry_ptr = internal global ptr @goya_debug_coresight._entry, section ".printk_index", align 4
@goya_halt_coresight._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 703, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"halt ETF failed, %d/%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"goya_halt_coresight\00", [44 x i8] zeroinitializer }, align 32
@goya_halt_coresight._entry_ptr = internal global ptr @goya_halt_coresight._entry, section ".printk_index", align 4
@goya_halt_coresight._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 708, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"halt ETR failed, %d\0A\00", [43 x i8] zeroinitializer }, align 32
@goya_halt_coresight._entry_ptr.9 = internal global ptr @goya_halt_coresight._entry.7, section ".printk_index", align 4
@goya_config_stm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 237, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid register index in STM\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"goya_config_stm\00", [16 x i8] zeroinitializer }, align 32
@goya_config_stm._entry_ptr = internal global ptr @goya_config_stm._entry, section ".printk_index", align 4
@debug_stm_regs = internal constant { [22 x i64], [48 x i8] } { [22 x i64] [i64 549727002624, i64 549726457856, i64 549726523392, i64 549726588928, i64 549726654464, i64 549726720000, i64 549726851072, i64 549722529792, i64 549723054080, i64 549723381760, i64 549723316224, i64 549727244288, i64 549734846464, i64 549735108608, i64 549739048960, i64 549741146112, i64 549743243264, i64 549745340416, i64 549747437568, i64 549749534720, i64 549751631872, i64 549753729024], [48 x i8] zeroinitializer }, align 32
@goya_config_stm._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 291, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to disable STM on timeout, error %d\0A\00", [52 x i8] zeroinitializer }, align 32
@goya_config_stm._entry_ptr.14 = internal global ptr @goya_config_stm._entry.12, section ".printk_index", align 4
@goya_coresight_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 221, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Timeout while waiting for coresight, addr: 0x%llx, position: %d, up: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"goya_coresight_timeout\00", [41 x i8] zeroinitializer }, align 32
@goya_coresight_timeout._entry_ptr = internal global ptr @goya_coresight_timeout._entry, section ".printk_index", align 4
@goya_config_etf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 310, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid register index in ETF\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"goya_config_etf\00", [16 x i8] zeroinitializer }, align 32
@goya_config_etf._entry_ptr = internal global ptr @goya_config_etf._entry, section ".printk_index", align 4
@debug_etf_regs = internal constant { [24 x i64], [32 x i8] } { [24 x i64] [i64 549726982144, i64 549726986240, i64 549727010816, i64 549726466048, i64 549726531584, i64 549726597120, i64 549726662656, i64 549726728192, i64 549726859264, i64 549722537984, i64 549723062272, i64 549723389952, i64 549723324416, i64 549727252480, i64 549734850560, i64 549735120896, i64 549739044864, i64 549741142016, i64 549743239168, i64 549745336320, i64 549747433472, i64 549749530624, i64 549751627776, i64 549753724928], [32 x i8] zeroinitializer }, align 32
@goya_config_etf._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 328, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to %s ETF on timeout, error %d\0A\00", [57 x i8] zeroinitializer }, align 32
@goya_config_etf._entry_ptr.21 = internal global ptr @goya_config_etf._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@goya_config_etf._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 336, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@goya_config_etf._entry_ptr.25 = internal global ptr @goya_config_etf._entry.24, section ".printk_index", align 4
@goya_config_etr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 403, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to %s ETR on timeout, error %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"goya_config_etr\00", [16 x i8] zeroinitializer }, align 32
@goya_config_etr._entry_ptr = internal global ptr @goya_config_etr._entry, section ".printk_index", align 4
@goya_config_etr._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 410, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@goya_config_etr._entry_ptr.29 = internal global ptr @goya_config_etr._entry.28, section ".printk_index", align 4
@goya_config_etr._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.27, ptr @.str.2, i32 424, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ETR buffer size should be bigger than 0\0A\00", [55 x i8] zeroinitializer }, align 32
@goya_config_etr._entry_ptr.32 = internal global ptr @goya_config_etr._entry.30, section ".printk_index", align 4
@goya_config_etr._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.27, ptr @.str.2, i32 430, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"buffer address is not valid\0A\00", [35 x i8] zeroinitializer }, align 32
@goya_config_etr._entry_ptr.35 = internal global ptr @goya_config_etr._entry.33, section ".printk_index", align 4
@goya_etr_validate_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 370, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ETR buffer size %llu overflow\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"goya_etr_validate_address\00", [38 x i8] zeroinitializer }, align 32
@goya_etr_validate_address._entry_ptr = internal global ptr @goya_etr_validate_address._entry, section ".printk_index", align 4
@goya_config_funnel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 485, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid register index in FUNNEL\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"goya_config_funnel\00", [45 x i8] zeroinitializer }, align 32
@goya_config_funnel._entry_ptr = internal global ptr @goya_config_funnel._entry, section ".printk_index", align 4
@debug_funnel_regs = internal constant { [25 x i64], [56 x i8] } { [25 x i64] [i64 549726998528, i64 549726781440, i64 549726912512, i64 549722263552, i64 549722525696, i64 549722787840, i64 549723049984, i64 549723312128, i64 549723574272, i64 549734866944, i64 549735112704, i64 549739061248, i64 549741158400, i64 549737201664, i64 549743255552, i64 549737463808, i64 549745352704, i64 549737725952, i64 549747449856, i64 549737988096, i64 549749547008, i64 549738250240, i64 549751644160, i64 549738512384, i64 549753741312], [56 x i8] zeroinitializer }, align 32
@goya_config_bmon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 506, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid register index in BMON\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"goya_config_bmon\00", [47 x i8] zeroinitializer }, align 32
@goya_config_bmon._entry_ptr = internal global ptr @goya_config_bmon._entry, section ".printk_index", align 4
@debug_bmon_regs = internal constant { [72 x i64], [128 x i8] } { [72 x i64] [i64 549727019008, i64 549727014912, i64 549726482432, i64 549726486528, i64 549726547968, i64 549726552064, i64 549726613504, i64 549726617600, i64 549726679040, i64 549726683136, i64 549726744576, i64 549726748672, i64 549726875648, i64 549726879744, i64 549726883840, i64 549726887936, i64 549726892032, i64 549726896128, i64 549726900224, i64 549726904320, i64 549722554368, i64 549722558464, i64 549723078656, i64 549723082752, i64 549723406336, i64 549723410432, i64 549723414528, i64 549723340800, i64 549723344896, i64 549723348992, i64 549723353088, i64 549723357184, i64 549723361280, i64 549723365376, i64 549727268864, i64 549727272960, i64 549734875136, i64 549734871040, i64 549734883328, i64 549734879232, i64 549739065344, i64 549739069440, i64 549739073536, i64 549739077632, i64 549741162496, i64 549741166592, i64 549741170688, i64 549741174784, i64 549743259648, i64 549743263744, i64 549743267840, i64 549743271936, i64 549745356800, i64 549745360896, i64 549745364992, i64 549745369088, i64 549747453952, i64 549747458048, i64 549747462144, i64 549747466240, i64 549749551104, i64 549749555200, i64 549749559296, i64 549749563392, i64 549751648256, i64 549751652352, i64 549751656448, i64 549751660544, i64 549753745408, i64 549753749504, i64 549753753600, i64 549753757696], [128 x i8] zeroinitializer }, align 32
@goya_config_spmu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 583, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid register index in SPMU\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"goya_config_spmu\00", [47 x i8] zeroinitializer }, align 32
@goya_config_spmu._entry_ptr = internal global ptr @goya_config_spmu._entry, section ".printk_index", align 4
@debug_spmu_regs = internal constant { [20 x i64], [32 x i8] } { [20 x i64] [i64 549726470144, i64 549726535680, i64 549726601216, i64 549726666752, i64 549726732288, i64 549726863360, i64 549722542080, i64 549723066368, i64 549723394048, i64 549723328512, i64 549727256576, i64 549734858752, i64 549739040768, i64 549741137920, i64 549743235072, i64 549745332224, i64 549747429376, i64 549749526528, i64 549751623680, i64 549753720832], [32 x i8] zeroinitializer }, align 32
@goya_config_spmu._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 597, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"not enough event types values for SPMU enable\0A\00", [49 x i8] zeroinitializer }, align 32
@goya_config_spmu._entry_ptr.46 = internal global ptr @goya_config_spmu._entry.44, section ".printk_index", align 4
@goya_config_spmu._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.2, i32 603, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"too many event types values for SPMU enable\0A\00", [51 x i8] zeroinitializer }, align 32
@goya_config_spmu._entry_ptr.49 = internal global ptr @goya_config_spmu._entry.47, section ".printk_index", align 4
@goya_config_spmu._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.2, i32 628, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"not enough values for SPMU disable\0A\00", [60 x i8] zeroinitializer }, align 32
@goya_config_spmu._entry_ptr.52 = internal global ptr @goya_config_spmu._entry.50, section ".printk_index", align 4
@goya_config_spmu._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.43, ptr @.str.2, i32 634, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"too many events values for SPMU disable\0A\00", [55 x i8] zeroinitializer }, align 32
@goya_config_spmu._entry_ptr.55 = internal global ptr @goya_config_spmu._entry.53, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 684, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 703, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 708, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 237, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [15 x i8] c"debug_stm_regs\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 21, i32 12 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 289, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 219, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 310, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [15 x i8] c"debug_etf_regs\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 46, i32 12 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 326, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 334, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 402, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 409, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 423, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 430, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 369, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 485, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [18 x i8] c"debug_funnel_regs\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 73, i32 12 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 506, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [16 x i8] c"debug_bmon_regs\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 101, i32 12 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 583, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [16 x i8] c"debug_spmu_regs\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 176, i32 12 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 596, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 602, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 627, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.234 = private constant [49 x i8] c"../drivers/misc/habanalabs/goya/goya_coresight.c\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 633, i32 4 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @goya_config_bmon._entry, ptr @goya_config_bmon._entry_ptr, ptr @goya_config_etf._entry, ptr @goya_config_etf._entry.19, ptr @goya_config_etf._entry.24, ptr @goya_config_etf._entry_ptr, ptr @goya_config_etf._entry_ptr.21, ptr @goya_config_etf._entry_ptr.25, ptr @goya_config_etr._entry, ptr @goya_config_etr._entry.28, ptr @goya_config_etr._entry.30, ptr @goya_config_etr._entry.33, ptr @goya_config_etr._entry_ptr, ptr @goya_config_etr._entry_ptr.29, ptr @goya_config_etr._entry_ptr.32, ptr @goya_config_etr._entry_ptr.35, ptr @goya_config_funnel._entry, ptr @goya_config_funnel._entry_ptr, ptr @goya_config_spmu._entry, ptr @goya_config_spmu._entry.44, ptr @goya_config_spmu._entry.47, ptr @goya_config_spmu._entry.50, ptr @goya_config_spmu._entry.53, ptr @goya_config_spmu._entry_ptr, ptr @goya_config_spmu._entry_ptr.46, ptr @goya_config_spmu._entry_ptr.49, ptr @goya_config_spmu._entry_ptr.52, ptr @goya_config_spmu._entry_ptr.55, ptr @goya_config_stm._entry, ptr @goya_config_stm._entry.12, ptr @goya_config_stm._entry_ptr, ptr @goya_config_stm._entry_ptr.14, ptr @goya_coresight_timeout._entry, ptr @goya_coresight_timeout._entry_ptr, ptr @goya_debug_coresight._entry, ptr @goya_debug_coresight._entry_ptr, ptr @goya_etr_validate_address._entry, ptr @goya_etr_validate_address._entry_ptr, ptr @goya_halt_coresight._entry, ptr @goya_halt_coresight._entry.7, ptr @goya_halt_coresight._entry_ptr, ptr @goya_halt_coresight._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @debug_stm_regs, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @debug_etf_regs, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @debug_funnel_regs, ptr @.str.40, ptr @.str.41, ptr @debug_bmon_regs, ptr @.str.42, ptr @.str.43, ptr @debug_spmu_regs, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goya_debug_coresight._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goya_halt_coresight._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goya_halt_coresight._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goya_config_stm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_stm_regs to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goya_config_stm._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goya_coresight_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goya_config_etf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_etf_regs to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goya_config_etf._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goya_config_etf._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goya_config_etr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goya_config_etr._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goya_config_etr._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goya_config_etr._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goya_etr_validate_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goya_config_funnel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_funnel_regs to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goya_config_bmon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_bmon_regs to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goya_config_spmu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_spmu_regs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goya_config_spmu._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goya_config_spmu._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goya_config_spmu._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goya_config_spmu._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @goya_debug_coresight(ptr noundef %hdev, ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %reg_idx.i = getelementptr inbounds %struct.hl_debug_params, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %4)
  %cmp.i = icmp ugt i32 %4, 21
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.10) #8
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %arrayidx.i = getelementptr [22 x i64], ptr @debug_stm_regs, i32 0, i32 %4
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
  tail call void %12(ptr noundef %hdev, i32 noundef %conv.i, i32 noundef -978530731) #5
  %enable.i = getelementptr inbounds %struct.hl_debug_params, ptr %data, i32 0, i32 5
  %14 = ptrtoint ptr %enable.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enable.i, align 4, !range !116
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
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %21(ptr noundef %hdev, i32 noundef %conv10.i, i32 noundef 524292) #5
  %22 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %asic_funcs.i, align 8
  %wreg12.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %23, i32 0, i32 58
  %24 = ptrtoint ptr %wreg12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wreg12.i, align 4
  %conv14.i = add i32 %13, 67112292
  tail call void %25(ptr noundef %hdev, i32 noundef %conv14.i, i32 noundef 7) #5
  %26 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %asic_funcs.i, align 8
  %wreg16.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %27, i32 0, i32 58
  %28 = ptrtoint ptr %wreg16.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wreg16.i, align 4
  %conv18.i = add i32 %13, 67112288
  tail call void %29(ptr noundef %hdev, i32 noundef %conv18.i, i32 noundef 0) #5
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
  tail call void %33(ptr noundef %hdev, i32 noundef %conv22.i, i32 noundef %conv23.i) #5
  %36 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %asic_funcs.i, align 8
  %wreg25.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %37, i32 0, i32 58
  %38 = ptrtoint ptr %wreg25.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wreg25.i, align 4
  %conv27.i = add i32 %13, 67112224
  %sp_mask.i = getelementptr inbounds %struct.hl_debug_params_stm, ptr %17, i32 0, i32 1
  %40 = ptrtoint ptr %sp_mask.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %sp_mask.i, align 8
  %conv29.i = trunc i64 %41 to i32
  tail call void %39(ptr noundef %hdev, i32 noundef %conv27.i, i32 noundef %conv29.i) #5
  %42 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %asic_funcs.i, align 8
  %wreg31.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %43, i32 0, i32 58
  %44 = ptrtoint ptr %wreg31.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wreg31.i, align 4
  tail call void %45(ptr noundef %hdev, i32 noundef %conv18.i, i32 noundef 1) #5
  %46 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %asic_funcs.i, align 8
  %wreg35.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %47, i32 0, i32 58
  %48 = ptrtoint ptr %wreg35.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wreg35.i, align 4
  %50 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %17, align 8
  %shr.i = lshr i64 %51, 32
  %conv40.i = trunc i64 %shr.i to i32
  tail call void %49(ptr noundef %hdev, i32 noundef %conv22.i, i32 noundef %conv40.i) #5
  %52 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %asic_funcs.i, align 8
  %wreg42.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %53, i32 0, i32 58
  %54 = ptrtoint ptr %wreg42.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wreg42.i, align 4
  %56 = ptrtoint ptr %sp_mask.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %sp_mask.i, align 8
  %shr46.i = lshr i64 %57, 32
  %conv48.i = trunc i64 %shr46.i to i32
  tail call void %55(ptr noundef %hdev, i32 noundef %conv27.i, i32 noundef %conv48.i) #5
  %58 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %asic_funcs.i, align 8
  %wreg50.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %59, i32 0, i32 58
  %60 = ptrtoint ptr %wreg50.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %wreg50.i, align 4
  %conv52.i = add i32 %13, 67112560
  tail call void %61(ptr noundef %hdev, i32 noundef %conv52.i, i32 noundef 16) #5
  %62 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %asic_funcs.i, align 8
  %wreg54.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %63, i32 0, i32 58
  %64 = ptrtoint ptr %wreg54.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wreg54.i, align 4
  %conv56.i = add i32 %13, 67112544
  tail call void %65(ptr noundef %hdev, i32 noundef %conv56.i, i32 noundef 0) #5
  %66 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %asic_funcs.i, align 8
  %wreg58.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %67, i32 0, i32 58
  %68 = ptrtoint ptr %wreg58.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wreg58.i, align 4
  %conv60.i = add i32 %13, 67112548
  tail call void %69(ptr noundef %hdev, i32 noundef %conv60.i, i32 noundef 4325376) #5
  %70 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %asic_funcs.i, align 8
  %wreg62.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %71, i32 0, i32 58
  %72 = ptrtoint ptr %wreg62.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %wreg62.i, align 4
  %conv64.i = add i32 %13, 67112448
  tail call void %73(ptr noundef %hdev, i32 noundef %conv64.i, i32 noundef -1) #5
  %74 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %asic_funcs.i, align 8
  %wreg66.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %75, i32 0, i32 58
  %76 = ptrtoint ptr %wreg66.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %wreg66.i, align 4
  %conv68.i = add i32 %13, 67112480
  tail call void %77(ptr noundef %hdev, i32 noundef %conv68.i, i32 noundef -1) #5
  %78 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %asic_funcs.i, align 8
  %wreg70.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %79, i32 0, i32 58
  %80 = ptrtoint ptr %wreg70.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %wreg70.i, align 4
  %conv72.i = add i32 %13, 67112692
  %id.i = getelementptr inbounds %struct.hl_debug_params_stm, ptr %17, i32 0, i32 2
  %82 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %id.i, align 8
  tail call void %81(ptr noundef %hdev, i32 noundef %conv72.i, i32 noundef %83) #5
  %84 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %asic_funcs.i, align 8
  %wreg74.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %85, i32 0, i32 58
  %86 = ptrtoint ptr %wreg74.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %wreg74.i, align 4
  %conv76.i = add i32 %13, 67112436
  tail call void %87(ptr noundef %hdev, i32 noundef %conv76.i, i32 noundef 128) #5
  %psoc_timestamp_frequency.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 44
  %88 = ptrtoint ptr %psoc_timestamp_frequency.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %psoc_timestamp_frequency.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp77.i = icmp eq i32 %89, 0
  br i1 %cmp77.i, label %if.then79.i, label %if.end6.i.if.end81.i_crit_edge

if.end6.i.if.end81.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81.i

if.then79.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %frequency80.i = getelementptr inbounds %struct.hl_debug_params_stm, ptr %17, i32 0, i32 3
  %90 = ptrtoint ptr %frequency80.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %frequency80.i, align 4
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then79.i, %if.end6.i.if.end81.i_crit_edge
  %frequency.0.i = phi i32 [ %91, %if.then79.i ], [ %89, %if.end6.i.if.end81.i_crit_edge ]
  %92 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %asic_funcs.i, align 8
  %wreg83.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %93, i32 0, i32 58
  %94 = ptrtoint ptr %wreg83.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %wreg83.i, align 4
  %conv85.i = add i32 %13, 67112588
  tail call void %95(ptr noundef %hdev, i32 noundef %conv85.i, i32 noundef %frequency.0.i) #5
  %96 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %asic_funcs.i, align 8
  %wreg87.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %97, i32 0, i32 58
  %98 = ptrtoint ptr %wreg87.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %wreg87.i, align 4
  %conv89.i = add i32 %13, 67112592
  tail call void %99(ptr noundef %hdev, i32 noundef %conv89.i, i32 noundef 2047) #5
  %100 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %asic_funcs.i, align 8
  %wreg91.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %101, i32 0, i32 58
  %102 = ptrtoint ptr %wreg91.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %wreg91.i, align 4
  %104 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %id.i, align 8
  %shl.i = shl i32 %105, 16
  %or.i = or i32 %shl.i, 39
  tail call void %103(ptr noundef %hdev, i32 noundef %conv10.i, i32 noundef %or.i) #5
  br label %sw.epilog

if.else.i:                                        ; preds = %if.end.i
  %106 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %asic_funcs.i, align 8
  %wreg96.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %107, i32 0, i32 58
  %108 = ptrtoint ptr %wreg96.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %wreg96.i, align 4
  %add97.i = add i64 %8, -549688701312
  %conv98.i = trunc i64 %add97.i to i32
  tail call void %109(ptr noundef %hdev, i32 noundef %conv98.i, i32 noundef 4) #5
  %110 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %asic_funcs.i, align 8
  %wreg100.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %111, i32 0, i32 58
  %112 = ptrtoint ptr %wreg100.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %wreg100.i, align 4
  %conv102.i = add i32 %13, 67112292
  tail call void %113(ptr noundef %hdev, i32 noundef %conv102.i, i32 noundef 0) #5
  %114 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %asic_funcs.i, align 8
  %wreg104.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %115, i32 0, i32 58
  %116 = ptrtoint ptr %wreg104.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %wreg104.i, align 4
  %conv106.i = add i32 %13, 67112288
  tail call void %117(ptr noundef %hdev, i32 noundef %conv106.i, i32 noundef 1) #5
  %118 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %asic_funcs.i, align 8
  %wreg108.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %119, i32 0, i32 58
  %120 = ptrtoint ptr %wreg108.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %wreg108.i, align 4
  %conv110.i = add i32 %13, 67112192
  tail call void %121(ptr noundef %hdev, i32 noundef %conv110.i, i32 noundef 0) #5
  %122 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %asic_funcs.i, align 8
  %wreg112.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %123, i32 0, i32 58
  %124 = ptrtoint ptr %wreg112.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %wreg112.i, align 4
  %conv114.i = add i32 %13, 67112224
  tail call void %125(ptr noundef %hdev, i32 noundef %conv114.i, i32 noundef 0) #5
  %126 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %asic_funcs.i, align 8
  %wreg116.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %127, i32 0, i32 58
  %128 = ptrtoint ptr %wreg116.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %wreg116.i, align 4
  tail call void %129(ptr noundef %hdev, i32 noundef %conv106.i, i32 noundef 0) #5
  %130 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %asic_funcs.i, align 8
  %wreg120.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %131, i32 0, i32 58
  %132 = ptrtoint ptr %wreg120.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %wreg120.i, align 4
  %conv122.i = add i32 %13, 67112480
  tail call void %133(ptr noundef %hdev, i32 noundef %conv122.i, i32 noundef 0) #5
  %134 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %asic_funcs.i, align 8
  %wreg124.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %135, i32 0, i32 58
  %136 = ptrtoint ptr %wreg124.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %wreg124.i, align 4
  %conv126.i = add i32 %13, 67112448
  tail call void %137(ptr noundef %hdev, i32 noundef %conv126.i, i32 noundef 0) #5
  %138 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %asic_funcs.i, align 8
  %wreg128.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %139, i32 0, i32 58
  %140 = ptrtoint ptr %wreg128.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %wreg128.i, align 4
  %conv130.i = add i32 %13, 67112436
  tail call void %141(ptr noundef %hdev, i32 noundef %conv130.i, i32 noundef 128) #5
  %142 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %asic_funcs.i, align 8
  %wreg132.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %143, i32 0, i32 58
  %144 = ptrtoint ptr %wreg132.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %wreg132.i, align 4
  %conv134.i = add i32 %13, 67112560
  tail call void %145(ptr noundef %hdev, i32 noundef %conv134.i, i32 noundef 0) #5
  %146 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %asic_funcs.i, align 8
  %wreg136.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %147, i32 0, i32 58
  %148 = ptrtoint ptr %wreg136.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %wreg136.i, align 4
  %conv138.i = add i32 %13, 67112544
  tail call void %149(ptr noundef %hdev, i32 noundef %conv138.i, i32 noundef 0) #5
  %150 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %asic_funcs.i, align 8
  %wreg140.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %151, i32 0, i32 58
  %152 = ptrtoint ptr %wreg140.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %wreg140.i, align 4
  %conv142.i = add i32 %13, 67112548
  tail call void %153(ptr noundef %hdev, i32 noundef %conv142.i, i32 noundef 0) #5
  %154 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %asic_funcs.i, align 8
  %wreg144.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %155, i32 0, i32 58
  %156 = ptrtoint ptr %wreg144.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %wreg144.i, align 4
  %conv146.i = add i32 %13, 67112588
  tail call void %157(ptr noundef %hdev, i32 noundef %conv146.i, i32 noundef 0) #5
  %call.i = tail call fastcc i32 @goya_coresight_timeout(ptr noundef %hdev, i64 noundef %add97.i, i32 noundef 23, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool148.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool148.not.i, label %if.end154.i, label %do.end152.i

do.end152.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev153.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %158 = ptrtoint ptr %dev153.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev153.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %159, ptr noundef nonnull @.str.13, i32 noundef %call.i) #8
  br label %sw.epilog

if.end154.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %160 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %asic_funcs.i, align 8
  %wreg156.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %161, i32 0, i32 58
  %162 = ptrtoint ptr %wreg156.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %wreg156.i, align 4
  tail call void %163(ptr noundef %hdev, i32 noundef %conv98.i, i32 noundef 4) #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call fastcc i32 @goya_config_etf(ptr noundef %hdev, ptr noundef %data)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call fastcc i32 @goya_config_etr(ptr noundef %hdev, ptr noundef %data)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %reg_idx.i29 = getelementptr inbounds %struct.hl_debug_params, ptr %data, i32 0, i32 3
  %164 = ptrtoint ptr %reg_idx.i29 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %reg_idx.i29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %165)
  %cmp.i30 = icmp ugt i32 %165, 24
  br i1 %cmp.i30, label %do.end.i32, label %if.end.i39

do.end.i32:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i31 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %166 = ptrtoint ptr %dev.i31 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dev.i31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.38) #8
  br label %sw.epilog

if.end.i39:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i33 = getelementptr [25 x i64], ptr @debug_funnel_regs, i32 0, i32 %165
  %168 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %arrayidx.i33, align 8
  %asic_funcs.i34 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %170 = ptrtoint ptr %asic_funcs.i34 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %asic_funcs.i34, align 8
  %wreg.i35 = getelementptr inbounds %struct.hl_asic_funcs, ptr %171, i32 0, i32 58
  %172 = ptrtoint ptr %wreg.i35 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %wreg.i35, align 4
  %174 = trunc i64 %169 to i32
  %conv.i36 = add i32 %174, 67112880
  tail call void %173(ptr noundef %hdev, i32 noundef %conv.i36, i32 noundef -978530731) #5
  %175 = ptrtoint ptr %asic_funcs.i34 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %asic_funcs.i34, align 8
  %wreg3.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %176, i32 0, i32 58
  %177 = ptrtoint ptr %wreg3.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %wreg3.i, align 4
  %conv4.i = add i32 %174, 67108864
  %enable.i37 = getelementptr inbounds %struct.hl_debug_params, ptr %data, i32 0, i32 5
  %179 = ptrtoint ptr %enable.i37 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %enable.i37, align 4, !range !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool.not.i38 = icmp eq i8 %180, 0
  %cond.i = select i1 %tobool.not.i38, i32 0, i32 831
  tail call void %178(ptr noundef %hdev, i32 noundef %conv4.i, i32 noundef %cond.i) #5
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %reg_idx.i41 = getelementptr inbounds %struct.hl_debug_params, ptr %data, i32 0, i32 3
  %181 = ptrtoint ptr %reg_idx.i41 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %reg_idx.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %182)
  %cmp.i42 = icmp ugt i32 %182, 71
  br i1 %cmp.i42, label %do.end.i44, label %if.end.i51

do.end.i44:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i43 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %183 = ptrtoint ptr %dev.i43 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev.i43, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %184, ptr noundef nonnull @.str.40) #8
  br label %sw.epilog

if.end.i51:                                       ; preds = %sw.bb7
  %arrayidx.i45 = getelementptr [72 x i64], ptr @debug_bmon_regs, i32 0, i32 %182
  %185 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %arrayidx.i45, align 8
  %asic_funcs.i46 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %187 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg.i47 = getelementptr inbounds %struct.hl_asic_funcs, ptr %188, i32 0, i32 58
  %189 = ptrtoint ptr %wreg.i47 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %wreg.i47, align 4
  %191 = trunc i64 %186 to i32
  %conv.i48 = add i32 %191, 67109124
  tail call void %190(ptr noundef %hdev, i32 noundef %conv.i48, i32 noundef 1) #5
  %enable.i49 = getelementptr inbounds %struct.hl_debug_params, ptr %data, i32 0, i32 5
  %192 = ptrtoint ptr %enable.i49 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %enable.i49, align 4, !range !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %tobool.not.i50 = icmp eq i8 %193, 0
  br i1 %tobool.not.i50, label %if.else.i76, label %if.then2.i53

if.then2.i53:                                     ; preds = %if.end.i51
  %194 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %data, align 4
  %tobool4.not.i52 = icmp eq ptr %195, null
  br i1 %tobool4.not.i52, label %if.then2.i53.sw.epilog_crit_edge, label %if.end6.i75

if.then2.i53.sw.epilog_crit_edge:                 ; preds = %if.then2.i53
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end6.i75:                                      ; preds = %if.then2.i53
  call void @__sanitizer_cov_trace_pc() #7
  %196 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg8.i54 = getelementptr inbounds %struct.hl_asic_funcs, ptr %197, i32 0, i32 58
  %198 = ptrtoint ptr %wreg8.i54 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %wreg8.i54, align 4
  %conv10.i55 = add i32 %191, 67109376
  %200 = ptrtoint ptr %195 to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %195, align 8
  %conv11.i = trunc i64 %201 to i32
  tail call void %199(ptr noundef %hdev, i32 noundef %conv10.i55, i32 noundef %conv11.i) #5
  %202 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg13.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %203, i32 0, i32 58
  %204 = ptrtoint ptr %wreg13.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %wreg13.i, align 4
  %conv15.i = add i32 %191, 67109380
  %206 = ptrtoint ptr %195 to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %195, align 8
  %shr.i56 = lshr i64 %207, 32
  %conv18.i57 = trunc i64 %shr.i56 to i32
  tail call void %205(ptr noundef %hdev, i32 noundef %conv15.i, i32 noundef %conv18.i57) #5
  %208 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg20.i58 = getelementptr inbounds %struct.hl_asic_funcs, ptr %209, i32 0, i32 58
  %210 = ptrtoint ptr %wreg20.i58 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %wreg20.i58, align 4
  %conv22.i59 = add i32 %191, 67109384
  %addr_mask0.i = getelementptr inbounds %struct.hl_debug_params_bmon, ptr %195, i32 0, i32 1
  %212 = ptrtoint ptr %addr_mask0.i to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %addr_mask0.i, align 8
  %conv24.i = trunc i64 %213 to i32
  tail call void %211(ptr noundef %hdev, i32 noundef %conv22.i59, i32 noundef %conv24.i) #5
  %214 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg26.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %215, i32 0, i32 58
  %216 = ptrtoint ptr %wreg26.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %wreg26.i, align 4
  %conv28.i = add i32 %191, 67109388
  %218 = ptrtoint ptr %addr_mask0.i to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %addr_mask0.i, align 8
  %shr30.i = lshr i64 %219, 32
  %conv32.i = trunc i64 %shr30.i to i32
  tail call void %217(ptr noundef %hdev, i32 noundef %conv28.i, i32 noundef %conv32.i) #5
  %220 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg34.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %221, i32 0, i32 58
  %222 = ptrtoint ptr %wreg34.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %wreg34.i, align 4
  %conv36.i = add i32 %191, 67109440
  %start_addr1.i = getelementptr inbounds %struct.hl_debug_params_bmon, ptr %195, i32 0, i32 2
  %224 = ptrtoint ptr %start_addr1.i to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %start_addr1.i, align 8
  %conv38.i = trunc i64 %225 to i32
  tail call void %223(ptr noundef %hdev, i32 noundef %conv36.i, i32 noundef %conv38.i) #5
  %226 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg40.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %227, i32 0, i32 58
  %228 = ptrtoint ptr %wreg40.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %wreg40.i, align 4
  %conv42.i = add i32 %191, 67109444
  %230 = ptrtoint ptr %start_addr1.i to i32
  call void @__asan_load8_noabort(i32 %230)
  %231 = load i64, ptr %start_addr1.i, align 8
  %shr44.i = lshr i64 %231, 32
  %conv46.i = trunc i64 %shr44.i to i32
  tail call void %229(ptr noundef %hdev, i32 noundef %conv42.i, i32 noundef %conv46.i) #5
  %232 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg48.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %233, i32 0, i32 58
  %234 = ptrtoint ptr %wreg48.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %wreg48.i, align 4
  %conv50.i = add i32 %191, 67109448
  %addr_mask1.i = getelementptr inbounds %struct.hl_debug_params_bmon, ptr %195, i32 0, i32 3
  %236 = ptrtoint ptr %addr_mask1.i to i32
  call void @__asan_load8_noabort(i32 %236)
  %237 = load i64, ptr %addr_mask1.i, align 8
  %conv52.i60 = trunc i64 %237 to i32
  tail call void %235(ptr noundef %hdev, i32 noundef %conv50.i, i32 noundef %conv52.i60) #5
  %238 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg54.i61 = getelementptr inbounds %struct.hl_asic_funcs, ptr %239, i32 0, i32 58
  %240 = ptrtoint ptr %wreg54.i61 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %wreg54.i61, align 4
  %conv56.i62 = add i32 %191, 67109452
  %242 = ptrtoint ptr %addr_mask1.i to i32
  call void @__asan_load8_noabort(i32 %242)
  %243 = load i64, ptr %addr_mask1.i, align 8
  %shr58.i = lshr i64 %243, 32
  %conv60.i63 = trunc i64 %shr58.i to i32
  tail call void %241(ptr noundef %hdev, i32 noundef %conv56.i62, i32 noundef %conv60.i63) #5
  %244 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg62.i64 = getelementptr inbounds %struct.hl_asic_funcs, ptr %245, i32 0, i32 58
  %246 = ptrtoint ptr %wreg62.i64 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %wreg62.i64, align 4
  %conv64.i65 = add i32 %191, 67109412
  tail call void %247(ptr noundef %hdev, i32 noundef %conv64.i65, i32 noundef 0) #5
  %248 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg66.i66 = getelementptr inbounds %struct.hl_asic_funcs, ptr %249, i32 0, i32 58
  %250 = ptrtoint ptr %wreg66.i66 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %wreg66.i66, align 4
  %conv68.i67 = add i32 %191, 67109428
  tail call void %251(ptr noundef %hdev, i32 noundef %conv68.i67, i32 noundef 0) #5
  %252 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg70.i68 = getelementptr inbounds %struct.hl_asic_funcs, ptr %253, i32 0, i32 58
  %254 = ptrtoint ptr %wreg70.i68 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %wreg70.i68, align 4
  %conv72.i69 = add i32 %191, 67109644
  %bw_win.i = getelementptr inbounds %struct.hl_debug_params_bmon, ptr %195, i32 0, i32 4
  %256 = ptrtoint ptr %bw_win.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %bw_win.i, align 8
  tail call void %255(ptr noundef %hdev, i32 noundef %conv72.i69, i32 noundef %257) #5
  %258 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg74.i70 = getelementptr inbounds %struct.hl_asic_funcs, ptr %259, i32 0, i32 58
  %260 = ptrtoint ptr %wreg74.i70 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %wreg74.i70, align 4
  %conv76.i71 = add i32 %191, 67109640
  %win_capture.i = getelementptr inbounds %struct.hl_debug_params_bmon, ptr %195, i32 0, i32 5
  %262 = ptrtoint ptr %win_capture.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %win_capture.i, align 4
  tail call void %261(ptr noundef %hdev, i32 noundef %conv76.i71, i32 noundef %263) #5
  %264 = ptrtoint ptr %reg_idx.i41 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %reg_idx.i41, align 4
  %266 = and i32 %265, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %266)
  %switch.i = icmp eq i32 %266, 36
  %spec.select.i = select i1 %switch.i, i32 0, i32 167772160
  %267 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg94.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %268, i32 0, i32 58
  %269 = ptrtoint ptr %wreg94.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %wreg94.i, align 4
  %conv96.i = add i32 %191, 67110656
  %id.i72 = getelementptr inbounds %struct.hl_debug_params_bmon, ptr %195, i32 0, i32 6
  %271 = ptrtoint ptr %id.i72 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %id.i72, align 8
  %shl.i73 = shl i32 %272, 12
  %or.i74 = or i32 %spec.select.i, %shl.i73
  %or97.i = or i32 %or.i74, 2816
  tail call void %270(ptr noundef %hdev, i32 noundef %conv96.i, i32 noundef %or97.i) #5
  %273 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg99.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %274, i32 0, i32 58
  %275 = ptrtoint ptr %wreg99.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %wreg99.i, align 4
  %conv101.i = add i32 %191, 67110664
  %277 = ptrtoint ptr %id.i72 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %id.i72, align 8
  %shl104.i = shl i32 %278, 12
  %or102.i = or i32 %spec.select.i, %shl104.i
  %or105.i = or i32 %or102.i, 2560
  tail call void %276(ptr noundef %hdev, i32 noundef %conv101.i, i32 noundef %or105.i) #5
  %279 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg107.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %280, i32 0, i32 58
  %281 = ptrtoint ptr %wreg107.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %wreg107.i, align 4
  %conv109.i = add i32 %191, 67110668
  %283 = ptrtoint ptr %id.i72 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %id.i72, align 8
  %shl112.i = shl i32 %284, 12
  %or110.i = or i32 %spec.select.i, %shl112.i
  %or113.i = or i32 %or110.i, 3072
  tail call void %282(ptr noundef %hdev, i32 noundef %conv109.i, i32 noundef %or113.i) #5
  %285 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg115.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %286, i32 0, i32 58
  %287 = ptrtoint ptr %wreg115.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %wreg115.i, align 4
  %conv117.i = add i32 %191, 67109120
  tail call void %288(ptr noundef %hdev, i32 noundef %conv117.i, i32 noundef 17) #5
  %289 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg119.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %290, i32 0, i32 58
  %291 = ptrtoint ptr %wreg119.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %wreg119.i, align 4
  %conv121.i = add i32 %191, 67109636
  tail call void %292(ptr noundef %hdev, i32 noundef %conv121.i, i32 noundef 1) #5
  br label %sw.epilog

if.else.i76:                                      ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #7
  %293 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg123.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %294, i32 0, i32 58
  %295 = ptrtoint ptr %wreg123.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %wreg123.i, align 4
  %conv125.i = add i32 %191, 67109376
  tail call void %296(ptr noundef %hdev, i32 noundef %conv125.i, i32 noundef 0) #5
  %297 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg127.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %298, i32 0, i32 58
  %299 = ptrtoint ptr %wreg127.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %wreg127.i, align 4
  %conv129.i = add i32 %191, 67109380
  tail call void %300(ptr noundef %hdev, i32 noundef %conv129.i, i32 noundef 0) #5
  %301 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg131.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %302, i32 0, i32 58
  %303 = ptrtoint ptr %wreg131.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %wreg131.i, align 4
  %conv133.i = add i32 %191, 67109384
  tail call void %304(ptr noundef %hdev, i32 noundef %conv133.i, i32 noundef -1) #5
  %305 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg135.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %306, i32 0, i32 58
  %307 = ptrtoint ptr %wreg135.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %wreg135.i, align 4
  %conv137.i = add i32 %191, 67109388
  tail call void %308(ptr noundef %hdev, i32 noundef %conv137.i, i32 noundef -1) #5
  %309 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg139.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %310, i32 0, i32 58
  %311 = ptrtoint ptr %wreg139.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %wreg139.i, align 4
  %conv141.i = add i32 %191, 67109440
  tail call void %312(ptr noundef %hdev, i32 noundef %conv141.i, i32 noundef 0) #5
  %313 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg143.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %314, i32 0, i32 58
  %315 = ptrtoint ptr %wreg143.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %wreg143.i, align 4
  %conv145.i = add i32 %191, 67109444
  tail call void %316(ptr noundef %hdev, i32 noundef %conv145.i, i32 noundef 0) #5
  %317 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg147.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %318, i32 0, i32 58
  %319 = ptrtoint ptr %wreg147.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %wreg147.i, align 4
  %conv149.i = add i32 %191, 67109448
  tail call void %320(ptr noundef %hdev, i32 noundef %conv149.i, i32 noundef -1) #5
  %321 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg151.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %322, i32 0, i32 58
  %323 = ptrtoint ptr %wreg151.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %wreg151.i, align 4
  %conv153.i = add i32 %191, 67109452
  tail call void %324(ptr noundef %hdev, i32 noundef %conv153.i, i32 noundef -1) #5
  %325 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg155.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %326, i32 0, i32 58
  %327 = ptrtoint ptr %wreg155.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %wreg155.i, align 4
  %conv157.i = add i32 %191, 67109412
  tail call void %328(ptr noundef %hdev, i32 noundef %conv157.i, i32 noundef -1) #5
  %329 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg159.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %330, i32 0, i32 58
  %331 = ptrtoint ptr %wreg159.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %wreg159.i, align 4
  %conv161.i = add i32 %191, 67109428
  tail call void %332(ptr noundef %hdev, i32 noundef %conv161.i, i32 noundef 67343) #5
  %333 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg163.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %334, i32 0, i32 58
  %335 = ptrtoint ptr %wreg163.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %wreg163.i, align 4
  %conv165.i = add i32 %191, 67109644
  tail call void %336(ptr noundef %hdev, i32 noundef %conv165.i, i32 noundef 0) #5
  %337 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg167.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %338, i32 0, i32 58
  %339 = ptrtoint ptr %wreg167.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %wreg167.i, align 4
  %conv169.i = add i32 %191, 67109640
  tail call void %340(ptr noundef %hdev, i32 noundef %conv169.i, i32 noundef 65535) #5
  %341 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg171.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %342, i32 0, i32 58
  %343 = ptrtoint ptr %wreg171.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %wreg171.i, align 4
  %conv173.i = add i32 %191, 67110656
  tail call void %344(ptr noundef %hdev, i32 noundef %conv173.i, i32 noundef 167774976) #5
  %345 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg175.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %346, i32 0, i32 58
  %347 = ptrtoint ptr %wreg175.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %wreg175.i, align 4
  %conv177.i = add i32 %191, 67110664
  tail call void %348(ptr noundef %hdev, i32 noundef %conv177.i, i32 noundef 167774720) #5
  %349 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg179.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %350, i32 0, i32 58
  %351 = ptrtoint ptr %wreg179.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %wreg179.i, align 4
  %conv181.i = add i32 %191, 67110668
  tail call void %352(ptr noundef %hdev, i32 noundef %conv181.i, i32 noundef 167775232) #5
  %353 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg183.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %354, i32 0, i32 58
  %355 = ptrtoint ptr %wreg183.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %wreg183.i, align 4
  %conv185.i = add i32 %191, 67109120
  tail call void %356(ptr noundef %hdev, i32 noundef %conv185.i, i32 noundef 1) #5
  %357 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg187.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %358, i32 0, i32 58
  %359 = ptrtoint ptr %wreg187.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %wreg187.i, align 4
  %conv189.i = add i32 %191, 67109636
  tail call void %360(ptr noundef %hdev, i32 noundef %conv189.i, i32 noundef 0) #5
  %361 = ptrtoint ptr %asic_funcs.i46 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %asic_funcs.i46, align 8
  %wreg191.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %362, i32 0, i32 58
  %363 = ptrtoint ptr %wreg191.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %wreg191.i, align 4
  tail call void %364(ptr noundef %hdev, i32 noundef %conv.i48, i32 noundef 0) #5
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %reg_idx.i78 = getelementptr inbounds %struct.hl_debug_params, ptr %data, i32 0, i32 3
  %365 = ptrtoint ptr %reg_idx.i78 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %reg_idx.i78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %366)
  %cmp.i79 = icmp ugt i32 %366, 19
  br i1 %cmp.i79, label %do.end.i81, label %if.end.i85

do.end.i81:                                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i80 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %367 = ptrtoint ptr %dev.i80 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %dev.i80, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %368, ptr noundef nonnull @.str.42) #8
  br label %sw.epilog

if.end.i85:                                       ; preds = %sw.bb9
  %arrayidx.i82 = getelementptr [20 x i64], ptr @debug_spmu_regs, i32 0, i32 %366
  %369 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_load8_noabort(i32 %369)
  %370 = load i64, ptr %arrayidx.i82, align 8
  %enable.i83 = getelementptr inbounds %struct.hl_debug_params, ptr %data, i32 0, i32 5
  %371 = ptrtoint ptr %enable.i83 to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %enable.i83, align 4, !range !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %372)
  %tobool.not.i84 = icmp eq i8 %372, 0
  br i1 %tobool.not.i84, label %if.else.i90, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i85
  %373 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %data, align 4
  %tobool5.not.i = icmp eq ptr %374, null
  br i1 %tobool5.not.i, label %if.then3.i.sw.epilog_crit_edge, label %if.end7.i

if.then3.i.sw.epilog_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end7.i:                                        ; preds = %if.then3.i
  %event_types_num.i = getelementptr inbounds %struct.hl_debug_params_spmu, ptr %374, i32 0, i32 1
  %375 = ptrtoint ptr %event_types_num.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %event_types_num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %376)
  %cmp8.i = icmp ult i32 %376, 3
  br i1 %cmp8.i, label %do.end12.i, label %if.end14.i

do.end12.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev13.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %377 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %dev13.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %378, ptr noundef nonnull @.str.45) #8
  br label %sw.epilog

if.end14.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %376)
  %cmp16.i = icmp ugt i32 %376, 6
  br i1 %cmp16.i, label %do.end20.i, label %if.end22.i

do.end20.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev21.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %379 = ptrtoint ptr %dev21.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %dev21.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %380, ptr noundef nonnull @.str.48) #8
  br label %sw.epilog

if.end22.i:                                       ; preds = %if.end14.i
  %asic_funcs.i86 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %381 = ptrtoint ptr %asic_funcs.i86 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %asic_funcs.i86, align 8
  %wreg.i87 = getelementptr inbounds %struct.hl_asic_funcs, ptr %382, i32 0, i32 58
  %383 = ptrtoint ptr %wreg.i87 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %wreg.i87, align 4
  %385 = trunc i64 %370 to i32
  %conv.i88 = add i32 %385, 67112452
  tail call void %384(ptr noundef %hdev, i32 noundef %conv.i88, i32 noundef 1090596934) #5
  %386 = ptrtoint ptr %asic_funcs.i86 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %asic_funcs.i86, align 8
  %wreg24.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %387, i32 0, i32 58
  %388 = ptrtoint ptr %wreg24.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %wreg24.i, align 4
  tail call void %389(ptr noundef %hdev, i32 noundef %conv.i88, i32 noundef 1090596928) #5
  %390 = ptrtoint ptr %event_types_num.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %event_types_num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %391)
  %cmp28190.not.i = icmp eq i32 %391, 0
  br i1 %cmp28190.not.i, label %if.end22.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end22.i.for.end.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end22.i
  %392 = add i32 %385, 67109888
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0191.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %393 = ptrtoint ptr %asic_funcs.i86 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %asic_funcs.i86, align 8
  %wreg31.i89 = getelementptr inbounds %struct.hl_asic_funcs, ptr %394, i32 0, i32 58
  %395 = ptrtoint ptr %wreg31.i89 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %wreg31.i89, align 4
  %mul.i = shl i32 %i.0191.i, 2
  %conv35.i = add i32 %392, %mul.i
  %arrayidx36.i = getelementptr [10 x i64], ptr %374, i32 0, i32 %i.0191.i
  %397 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load8_noabort(i32 %397)
  %398 = load i64, ptr %arrayidx36.i, align 8
  %conv37.i = trunc i64 %398 to i32
  tail call void %396(ptr noundef %hdev, i32 noundef %conv35.i, i32 noundef %conv37.i) #5
  %inc.i = add nuw i32 %i.0191.i, 1
  %399 = ptrtoint ptr %event_types_num.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %event_types_num.i, align 8
  %cmp28.i = icmp ult i32 %inc.i, %400
  br i1 %cmp28.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end22.i.for.end.i_crit_edge
  %401 = ptrtoint ptr %asic_funcs.i86 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %asic_funcs.i86, align 8
  %wreg39.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %402, i32 0, i32 58
  %403 = ptrtoint ptr %wreg39.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %wreg39.i, align 4
  tail call void %404(ptr noundef %hdev, i32 noundef %conv.i88, i32 noundef 1090596929) #5
  %405 = ptrtoint ptr %asic_funcs.i86 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %asic_funcs.i86, align 8
  %wreg43.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %406, i32 0, i32 58
  %407 = ptrtoint ptr %wreg43.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %wreg43.i, align 4
  %conv45.i = add i32 %385, 67111936
  tail call void %408(ptr noundef %hdev, i32 noundef %conv45.i, i32 noundef -2147483585) #5
  br label %sw.epilog

if.else.i90:                                      ; preds = %if.end.i85
  %output46.i = getelementptr inbounds %struct.hl_debug_params, ptr %data, i32 0, i32 1
  %409 = ptrtoint ptr %output46.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %output46.i, align 4
  %output_size.i = getelementptr inbounds %struct.hl_debug_params, ptr %data, i32 0, i32 2
  %411 = ptrtoint ptr %output_size.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %output_size.i, align 4
  %div188.i = lshr i32 %412, 3
  %sub47.i = add nsw i32 %div188.i, -2
  %sub49.i = add nsw i32 %div188.i, -1
  %tobool50.not.i = icmp eq ptr %410, null
  br i1 %tobool50.not.i, label %if.else.i90.sw.epilog_crit_edge, label %if.end52.i

if.else.i90.sw.epilog_crit_edge:                  ; preds = %if.else.i90
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end52.i:                                       ; preds = %if.else.i90
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %412)
  %cmp53.i = icmp ult i32 %412, 24
  br i1 %cmp53.i, label %do.end58.i, label %if.end60.i

do.end58.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev59.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %413 = ptrtoint ptr %dev59.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %dev59.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %414, ptr noundef nonnull @.str.51) #8
  br label %sw.epilog

if.end60.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub47.i)
  %cmp61.i = icmp ugt i32 %sub47.i, 6
  br i1 %cmp61.i, label %do.end66.i, label %if.end68.i

do.end66.i:                                       ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev67.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %415 = ptrtoint ptr %dev67.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %dev67.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %416, ptr noundef nonnull @.str.54) #8
  br label %sw.epilog

if.end68.i:                                       ; preds = %if.end60.i
  %asic_funcs69.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %417 = ptrtoint ptr %asic_funcs69.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %asic_funcs69.i, align 8
  %wreg70.i91 = getelementptr inbounds %struct.hl_asic_funcs, ptr %418, i32 0, i32 58
  %419 = ptrtoint ptr %wreg70.i91 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %wreg70.i91, align 4
  %421 = trunc i64 %370 to i32
  %conv72.i92 = add i32 %421, 67112452
  tail call void %420(ptr noundef %hdev, i32 noundef %conv72.i92, i32 noundef 1090596928) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub47.i)
  %cmp74192.not.i = icmp eq i32 %sub47.i, 0
  br i1 %cmp74192.not.i, label %if.end68.i.for.end86.i_crit_edge, label %for.body76.lr.ph.i

if.end68.i.for.end86.i_crit_edge:                 ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end86.i

for.body76.lr.ph.i:                               ; preds = %if.end68.i
  %422 = add i32 %421, 67108864
  br label %for.body76.i

for.body76.i:                                     ; preds = %for.body76.i.for.body76.i_crit_edge, %for.body76.lr.ph.i
  %i.1193.i = phi i32 [ 0, %for.body76.lr.ph.i ], [ %inc85.i, %for.body76.i.for.body76.i_crit_edge ]
  %423 = ptrtoint ptr %asic_funcs69.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %asic_funcs69.i, align 8
  %rreg.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %424, i32 0, i32 57
  %425 = ptrtoint ptr %rreg.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %rreg.i, align 4
  %mul78.i = shl i32 %i.1193.i, 3
  %conv81.i = add i32 %422, %mul78.i
  %call.i93 = tail call i32 %426(ptr noundef %hdev, i32 noundef %conv81.i) #5
  %conv82.i = zext i32 %call.i93 to i64
  %arrayidx83.i = getelementptr i64, ptr %410, i32 %i.1193.i
  %427 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store8_noabort(i32 %427)
  store i64 %conv82.i, ptr %arrayidx83.i, align 8
  %inc85.i = add nuw nsw i32 %i.1193.i, 1
  %exitcond.not.i = icmp eq i32 %inc85.i, %sub47.i
  br i1 %exitcond.not.i, label %for.body76.i.for.end86.i_crit_edge, label %for.body76.i.for.body76.i_crit_edge

for.body76.i.for.body76.i_crit_edge:              ; preds = %for.body76.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body76.i

for.body76.i.for.end86.i_crit_edge:               ; preds = %for.body76.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end86.i

for.end86.i:                                      ; preds = %for.body76.i.for.end86.i_crit_edge, %if.end68.i.for.end86.i_crit_edge
  %428 = ptrtoint ptr %asic_funcs69.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %asic_funcs69.i, align 8
  %rreg88.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %429, i32 0, i32 57
  %430 = ptrtoint ptr %rreg88.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %rreg88.i, align 4
  %conv90.i = add i32 %421, 67112128
  %call91.i = tail call i32 %431(ptr noundef %hdev, i32 noundef %conv90.i) #5
  %conv92.i = zext i32 %call91.i to i64
  %arrayidx93.i = getelementptr i64, ptr %410, i32 %sub47.i
  %432 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_store8_noabort(i32 %432)
  store i64 %conv92.i, ptr %arrayidx93.i, align 8
  %433 = ptrtoint ptr %asic_funcs69.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %asic_funcs69.i, align 8
  %rreg95.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %434, i32 0, i32 57
  %435 = ptrtoint ptr %rreg95.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %rreg95.i, align 4
  %conv97.i = add i32 %421, 67109116
  %call98.i = tail call i32 %436(ptr noundef %hdev, i32 noundef %conv97.i) #5
  %conv99.i = zext i32 %call98.i to i64
  %arrayidx100.i = getelementptr i64, ptr %410, i32 %sub49.i
  %shl.i94 = shl nuw i64 %conv99.i, 32
  %437 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_store8_noabort(i32 %437)
  store i64 %shl.i94, ptr %arrayidx100.i, align 8
  %438 = ptrtoint ptr %asic_funcs69.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %asic_funcs69.i, align 8
  %rreg103.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %439, i32 0, i32 57
  %440 = ptrtoint ptr %rreg103.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %rreg103.i, align 4
  %conv105.i = add i32 %421, 67109112
  %call106.i = tail call i32 %441(ptr noundef %hdev, i32 noundef %conv105.i) #5
  %conv107.i = zext i32 %call106.i to i64
  %442 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_load8_noabort(i32 %442)
  %443 = load i64, ptr %arrayidx100.i, align 8
  %or.i95 = or i64 %443, %conv107.i
  store i64 %or.i95, ptr %arrayidx100.i, align 8
  %444 = ptrtoint ptr %asic_funcs69.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %asic_funcs69.i, align 8
  %wreg110.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %445, i32 0, i32 58
  %446 = ptrtoint ptr %wreg110.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %wreg110.i, align 4
  tail call void %447(ptr noundef %hdev, i32 noundef %conv90.i, i32 noundef 0) #5
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %448 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %449, ptr noundef nonnull @.str, i32 noundef %1) #8
  br label %cleanup

sw.epilog:                                        ; preds = %for.end86.i, %do.end66.i, %do.end58.i, %if.else.i90.sw.epilog_crit_edge, %for.end.i, %do.end20.i, %do.end12.i, %if.then3.i.sw.epilog_crit_edge, %do.end.i81, %if.else.i76, %if.end6.i75, %if.then2.i53.sw.epilog_crit_edge, %do.end.i44, %if.end.i39, %do.end.i32, %sw.bb3, %sw.bb1, %if.end154.i, %do.end152.i, %if.end81.i, %if.then2.i.sw.epilog_crit_edge, %do.end.i, %entry.sw.epilog_crit_edge
  %rc.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ -22, %do.end.i ], [ %call.i, %do.end152.i ], [ -22, %if.then2.i.sw.epilog_crit_edge ], [ 0, %if.end154.i ], [ 0, %if.end81.i ], [ -22, %do.end.i32 ], [ 0, %if.end.i39 ], [ -22, %do.end.i44 ], [ -22, %if.then2.i53.sw.epilog_crit_edge ], [ 0, %if.else.i76 ], [ 0, %if.end6.i75 ], [ -22, %do.end.i81 ], [ -22, %do.end12.i ], [ -22, %do.end20.i ], [ -22, %do.end58.i ], [ -22, %do.end66.i ], [ -22, %if.then3.i.sw.epilog_crit_edge ], [ -22, %if.else.i90.sw.epilog_crit_edge ], [ 0, %for.end86.i ], [ 0, %for.end.i ]
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %450 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %asic_funcs, align 8
  %rreg = getelementptr inbounds %struct.hl_asic_funcs, ptr %451, i32 0, i32 57
  %452 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %rreg, align 4
  %call12 = tail call i32 %453(ptr noundef %hdev, i32 noundef 12591104) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %rc.0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @goya_config_etf(ptr noundef %hdev, ptr nocapture noundef readonly %params) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_idx = getelementptr inbounds %struct.hl_debug_params, ptr %params, i32 0, i32 3
  %0 = ptrtoint ptr %reg_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %1)
  %cmp = icmp ugt i32 %1, 23
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [24 x i64], ptr @debug_etf_regs, i32 0, i32 %1
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
  tail call void %9(ptr noundef %hdev, i32 noundef %conv, i32 noundef -978530731) #5
  %11 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %asic_funcs, align 8
  %rreg = getelementptr inbounds %struct.hl_asic_funcs, ptr %12, i32 0, i32 57
  %13 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rreg, align 4
  %add3 = add i64 %5, -549688704252
  %conv4 = trunc i64 %add3 to i32
  %call = tail call i32 %14(ptr noundef %hdev, i32 noundef %conv4) #5
  %or = or i32 %call, 4096
  %15 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %asic_funcs, align 8
  %wreg6 = getelementptr inbounds %struct.hl_asic_funcs, ptr %16, i32 0, i32 58
  %17 = ptrtoint ptr %wreg6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wreg6, align 4
  tail call void %18(ptr noundef %hdev, i32 noundef %conv4, i32 noundef %or) #5
  %or9 = or i32 %call, 4160
  %19 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %asic_funcs, align 8
  %wreg11 = getelementptr inbounds %struct.hl_asic_funcs, ptr %20, i32 0, i32 58
  %21 = ptrtoint ptr %wreg11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wreg11, align 4
  tail call void %22(ptr noundef %hdev, i32 noundef %conv4, i32 noundef %or9) #5
  %call15 = tail call fastcc i32 @goya_coresight_timeout(ptr noundef %hdev, i64 noundef %add3, i32 noundef 6, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end23, label %do.end19

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev20 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %23 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev20, align 4
  %enable = getelementptr inbounds %struct.hl_debug_params, ptr %params, i32 0, i32 5
  %25 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %enable, align 4, !range !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool21.not = icmp eq i8 %26, 0
  %cond = select i1 %tobool21.not, ptr @.str.23, ptr @.str.22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.20, ptr noundef nonnull %cond, i32 noundef %call15) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %add24 = add i64 %5, -549688705012
  %call25 = tail call fastcc i32 @goya_coresight_timeout(ptr noundef %hdev, i64 noundef %add24, i32 noundef 2, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end36, label %do.end30

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %dev31 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %27 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev31, align 4
  %enable32 = getelementptr inbounds %struct.hl_debug_params, ptr %params, i32 0, i32 5
  %29 = ptrtoint ptr %enable32 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %enable32, align 4, !range !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool33.not = icmp eq i8 %30, 0
  %cond35 = select i1 %tobool33.not, ptr @.str.23, ptr @.str.22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.20, ptr noundef nonnull %cond35, i32 noundef %call25) #8
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
  tail call void %34(ptr noundef %hdev, i32 noundef %conv40, i32 noundef 0) #5
  %enable41 = getelementptr inbounds %struct.hl_debug_params, ptr %params, i32 0, i32 5
  %35 = ptrtoint ptr %enable41 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %enable41, align 4, !range !116
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end47:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %asic_funcs, align 8
  %wreg49 = getelementptr inbounds %struct.hl_asic_funcs, ptr %40, i32 0, i32 58
  %41 = ptrtoint ptr %wreg49 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wreg49, align 4
  %conv51 = add i32 %10, 67108916
  tail call void %42(ptr noundef %hdev, i32 noundef %conv51, i32 noundef 16380) #5
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
  tail call void %46(ptr noundef %hdev, i32 noundef %conv55, i32 noundef %48) #5
  %49 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %asic_funcs, align 8
  %wreg57 = getelementptr inbounds %struct.hl_asic_funcs, ptr %50, i32 0, i32 58
  %51 = ptrtoint ptr %wreg57 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wreg57, align 4
  tail call void %52(ptr noundef %hdev, i32 noundef %conv4, i32 noundef 16385) #5
  %53 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %asic_funcs, align 8
  %wreg61 = getelementptr inbounds %struct.hl_asic_funcs, ptr %54, i32 0, i32 58
  %55 = ptrtoint ptr %wreg61 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wreg61, align 4
  %conv63 = add i32 %10, 67109640
  tail call void %56(ptr noundef %hdev, i32 noundef %conv63, i32 noundef 10) #5
  %57 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %asic_funcs, align 8
  %wreg65 = getelementptr inbounds %struct.hl_asic_funcs, ptr %58, i32 0, i32 58
  %59 = ptrtoint ptr %wreg65 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wreg65, align 4
  tail call void %60(ptr noundef %hdev, i32 noundef %conv40, i32 noundef 1) #5
  br label %cleanup

if.else:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %asic_funcs, align 8
  %wreg69 = getelementptr inbounds %struct.hl_asic_funcs, ptr %62, i32 0, i32 58
  %63 = ptrtoint ptr %wreg69 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %wreg69, align 4
  %conv71 = add i32 %10, 67108916
  tail call void %64(ptr noundef %hdev, i32 noundef %conv71, i32 noundef 0) #5
  %65 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %asic_funcs, align 8
  %wreg73 = getelementptr inbounds %struct.hl_asic_funcs, ptr %66, i32 0, i32 58
  %67 = ptrtoint ptr %wreg73 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %wreg73, align 4
  %conv75 = add i32 %10, 67108904
  tail call void %68(ptr noundef %hdev, i32 noundef %conv75, i32 noundef 0) #5
  %69 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %asic_funcs, align 8
  %wreg77 = getelementptr inbounds %struct.hl_asic_funcs, ptr %70, i32 0, i32 58
  %71 = ptrtoint ptr %wreg77 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %wreg77, align 4
  tail call void %72(ptr noundef %hdev, i32 noundef %conv4, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end47, %if.then43.cleanup_crit_edge, %do.end30, %do.end19, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call15, %do.end19 ], [ %call25, %do.end30 ], [ -22, %if.then43.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.end47 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @goya_config_etr(ptr noundef %hdev, ptr nocapture noundef readonly %params) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %0 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic_funcs, align 8
  %wreg = getelementptr inbounds %struct.hl_asic_funcs, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %wreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wreg, align 4
  tail call void %3(ptr noundef %hdev, i32 noundef 46415792, i32 noundef -978530731) #5
  %4 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic_funcs, align 8
  %rreg = getelementptr inbounds %struct.hl_asic_funcs, ptr %5, i32 0, i32 57
  %6 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rreg, align 4
  %call = tail call i32 %7(ptr noundef %hdev, i32 noundef 46412548) #5
  %or = or i32 %call, 4096
  %8 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asic_funcs, align 8
  %wreg3 = getelementptr inbounds %struct.hl_asic_funcs, ptr %9, i32 0, i32 58
  %10 = ptrtoint ptr %wreg3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wreg3, align 4
  tail call void %11(ptr noundef %hdev, i32 noundef 46412548, i32 noundef %or) #5
  %or4 = or i32 %call, 4160
  %12 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asic_funcs, align 8
  %wreg6 = getelementptr inbounds %struct.hl_asic_funcs, ptr %13, i32 0, i32 58
  %14 = ptrtoint ptr %wreg6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wreg6, align 4
  tail call void %15(ptr noundef %hdev, i32 noundef 46412548, i32 noundef %or4) #5
  %call7 = tail call fastcc i32 @goya_coresight_timeout(ptr noundef %hdev, i64 noundef 46412548, i32 noundef 6, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %enable = getelementptr inbounds %struct.hl_debug_params, ptr %params, i32 0, i32 5
  %18 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %enable, align 4, !range !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool8.not = icmp eq i8 %19, 0
  %cond = select i1 %tobool8.not, ptr @.str.23, ptr @.str.22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond, i32 noundef %call7) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call9 = tail call fastcc i32 @goya_coresight_timeout(ptr noundef %hdev, i64 noundef 46411788, i32 noundef 2, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end19, label %do.end14

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev15 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %20 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev15, align 4
  %enable16 = getelementptr inbounds %struct.hl_debug_params, ptr %params, i32 0, i32 5
  %22 = ptrtoint ptr %enable16 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %enable16, align 4, !range !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool17.not = icmp eq i8 %23, 0
  %cond18 = select i1 %tobool17.not, ptr @.str.23, ptr @.str.22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond18, i32 noundef %call9) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %24 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %asic_funcs, align 8
  %wreg21 = getelementptr inbounds %struct.hl_asic_funcs, ptr %25, i32 0, i32 58
  %26 = ptrtoint ptr %wreg21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wreg21, align 4
  tail call void %27(ptr noundef %hdev, i32 noundef 46411808, i32 noundef 0) #5
  %enable22 = getelementptr inbounds %struct.hl_debug_params, ptr %params, i32 0, i32 5
  %28 = ptrtoint ptr %enable22 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %enable22, align 4, !range !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool23.not = icmp eq i8 %29, 0
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end19
  %30 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %params, align 4
  %tobool26.not = icmp eq ptr %31, null
  br i1 %tobool26.not, label %if.then24.cleanup_crit_edge, label %if.end28

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28:                                         ; preds = %if.then24
  %buffer_size = getelementptr inbounds %struct.hl_debug_params_etr, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %buffer_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %cmp = icmp eq i64 %33, 0
  br i1 %cmp, label %do.end32, label %if.end34

do.end32:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %dev33 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %34 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.31) #8
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %31, align 8
  %38 = xor i64 %37, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %38)
  %cmp.i = icmp ugt i64 %33, %38
  br i1 %cmp.i, label %goya_etr_validate_address.exit.thread, label %goya_etr_validate_address.exit

goya_etr_validate_address.exit.thread:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.36, i64 noundef %33) #8
  br label %do.end41

goya_etr_validate_address.exit:                   ; preds = %if.end34
  %mmu_enable.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 107
  %41 = ptrtoint ptr %mmu_enable.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %mmu_enable.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i = icmp eq i8 %42, 0
  %dmmu.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 4
  %end_addr.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 4, i32 1
  %dram_user_base_address.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 15
  %dram_end_address.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 14
  %range_start.0.in.i = select i1 %tobool.not.i, ptr %dram_user_base_address.i, ptr %dmmu.i
  %range_end.0.in.i = select i1 %tobool.not.i, ptr %dram_end_address.i, ptr %end_addr.i
  %43 = ptrtoint ptr %range_end.0.in.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %range_end.0.i = load i64, ptr %range_end.0.in.i, align 8
  %44 = ptrtoint ptr %range_start.0.in.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %range_start.0.i = load i64, ptr %range_start.0.in.i, align 8
  %add.i.i = add i64 %37, %33
  call void @__sanitizer_cov_trace_cmp8(i64 %range_start.0.i, i64 %37)
  %cmp.not.i.i = icmp ule i64 %range_start.0.i, %37
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %range_end.0.i)
  %cmp1.not.i.i = icmp ule i64 %add.i.i, %range_end.0.i
  %or.cond.not.i.i = and i1 %cmp1.not.i.i, %cmp.not.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %37)
  %cmp3.i.i = icmp ugt i64 %add.i.i, %37
  %or.cond7.i.i = and i1 %cmp3.i.i, %or.cond.not.i.i
  br i1 %or.cond7.i.i, label %if.end43, label %goya_etr_validate_address.exit.do.end41_crit_edge

goya_etr_validate_address.exit.do.end41_crit_edge: ; preds = %goya_etr_validate_address.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end41

do.end41:                                         ; preds = %goya_etr_validate_address.exit.do.end41_crit_edge, %goya_etr_validate_address.exit.thread
  %dev42 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %45 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.34) #8
  br label %cleanup

if.end43:                                         ; preds = %goya_etr_validate_address.exit
  %47 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %asic_funcs, align 8
  %wreg45 = getelementptr inbounds %struct.hl_asic_funcs, ptr %48, i32 0, i32 58
  %49 = ptrtoint ptr %wreg45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wreg45, align 4
  tail call void %50(ptr noundef %hdev, i32 noundef 46411828, i32 noundef 16380) #5
  %51 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %asic_funcs, align 8
  %wreg47 = getelementptr inbounds %struct.hl_asic_funcs, ptr %52, i32 0, i32 58
  %53 = ptrtoint ptr %wreg47 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %wreg47, align 4
  %55 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %buffer_size, align 8
  %conv = trunc i64 %56 to i32
  tail call void %54(ptr noundef %hdev, i32 noundef 46411780, i32 noundef %conv) #5
  %57 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %asic_funcs, align 8
  %wreg50 = getelementptr inbounds %struct.hl_asic_funcs, ptr %58, i32 0, i32 58
  %59 = ptrtoint ptr %wreg50 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wreg50, align 4
  %sink_mode = getelementptr inbounds %struct.hl_debug_params_etr, ptr %31, i32 0, i32 2
  %61 = ptrtoint ptr %sink_mode to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sink_mode, align 8
  tail call void %60(ptr noundef %hdev, i32 noundef 46411816, i32 noundef %62) #5
  %fw_security_enabled = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 68
  %63 = ptrtoint ptr %fw_security_enabled to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %fw_security_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool51.not = icmp eq i8 %64, 0
  br i1 %tobool51.not, label %do.end67, label %if.end43.if.end104_crit_edge

if.end43.if.end104_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

do.end67:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %asic_funcs, align 8
  %wreg103 = getelementptr inbounds %struct.hl_asic_funcs, ptr %66, i32 0, i32 58
  %67 = ptrtoint ptr %wreg103 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %wreg103, align 4
  tail call void %68(ptr noundef %hdev, i32 noundef 46412048, i32 noundef 1794) #5
  br label %if.end104

if.end104:                                        ; preds = %do.end67, %if.end43.if.end104_crit_edge
  %69 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %asic_funcs, align 8
  %wreg106 = getelementptr inbounds %struct.hl_asic_funcs, ptr %70, i32 0, i32 58
  %71 = ptrtoint ptr %wreg106 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %wreg106, align 4
  %73 = ptrtoint ptr %31 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %31, align 8
  %conv108 = trunc i64 %74 to i32
  tail call void %72(ptr noundef %hdev, i32 noundef 46412056, i32 noundef %conv108) #5
  %75 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %asic_funcs, align 8
  %wreg110 = getelementptr inbounds %struct.hl_asic_funcs, ptr %76, i32 0, i32 58
  %77 = ptrtoint ptr %wreg110 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %wreg110, align 4
  %79 = ptrtoint ptr %31 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %31, align 8
  %shr = lshr i64 %80, 32
  %conv113 = trunc i64 %shr to i32
  tail call void %78(ptr noundef %hdev, i32 noundef 46412060, i32 noundef %conv113) #5
  %81 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %asic_funcs, align 8
  %wreg115 = getelementptr inbounds %struct.hl_asic_funcs, ptr %82, i32 0, i32 58
  %83 = ptrtoint ptr %wreg115 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %wreg115, align 4
  tail call void %84(ptr noundef %hdev, i32 noundef 46412548, i32 noundef 3) #5
  %85 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %asic_funcs, align 8
  %wreg117 = getelementptr inbounds %struct.hl_asic_funcs, ptr %86, i32 0, i32 58
  %87 = ptrtoint ptr %wreg117 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %wreg117, align 4
  tail call void %88(ptr noundef %hdev, i32 noundef 46412552, i32 noundef 10) #5
  %89 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %asic_funcs, align 8
  %wreg119 = getelementptr inbounds %struct.hl_asic_funcs, ptr %90, i32 0, i32 58
  %91 = ptrtoint ptr %wreg119 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %wreg119, align 4
  tail call void %92(ptr noundef %hdev, i32 noundef 46411808, i32 noundef 1) #5
  br label %cleanup

if.else:                                          ; preds = %if.end19
  %93 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %asic_funcs, align 8
  %wreg121 = getelementptr inbounds %struct.hl_asic_funcs, ptr %94, i32 0, i32 58
  %95 = ptrtoint ptr %wreg121 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %wreg121, align 4
  tail call void %96(ptr noundef %hdev, i32 noundef 46411828, i32 noundef 0) #5
  %97 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %asic_funcs, align 8
  %wreg123 = getelementptr inbounds %struct.hl_asic_funcs, ptr %98, i32 0, i32 58
  %99 = ptrtoint ptr %wreg123 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %wreg123, align 4
  tail call void %100(ptr noundef %hdev, i32 noundef 46411780, i32 noundef 1024) #5
  %101 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %asic_funcs, align 8
  %wreg125 = getelementptr inbounds %struct.hl_asic_funcs, ptr %102, i32 0, i32 58
  %103 = ptrtoint ptr %wreg125 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %wreg125, align 4
  tail call void %104(ptr noundef %hdev, i32 noundef 46412056, i32 noundef 0) #5
  %105 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %asic_funcs, align 8
  %wreg127 = getelementptr inbounds %struct.hl_asic_funcs, ptr %106, i32 0, i32 58
  %107 = ptrtoint ptr %wreg127 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %wreg127, align 4
  tail call void %108(ptr noundef %hdev, i32 noundef 46412060, i32 noundef 0) #5
  %109 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %asic_funcs, align 8
  %wreg129 = getelementptr inbounds %struct.hl_asic_funcs, ptr %110, i32 0, i32 58
  %111 = ptrtoint ptr %wreg129 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %wreg129, align 4
  tail call void %112(ptr noundef %hdev, i32 noundef 46412552, i32 noundef 0) #5
  %113 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %asic_funcs, align 8
  %wreg131 = getelementptr inbounds %struct.hl_asic_funcs, ptr %114, i32 0, i32 58
  %115 = ptrtoint ptr %wreg131 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %wreg131, align 4
  tail call void %116(ptr noundef %hdev, i32 noundef 46411816, i32 noundef 0) #5
  %117 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %asic_funcs, align 8
  %wreg133 = getelementptr inbounds %struct.hl_asic_funcs, ptr %118, i32 0, i32 58
  %119 = ptrtoint ptr %wreg133 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %wreg133, align 4
  tail call void %120(ptr noundef %hdev, i32 noundef 46412548, i32 noundef 0) #5
  %output_size = getelementptr inbounds %struct.hl_debug_params, ptr %params, i32 0, i32 2
  %121 = ptrtoint ptr %output_size to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %output_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %122)
  %cmp134 = icmp ugt i32 %122, 7
  br i1 %cmp134, label %if.then136, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then136:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %123 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %asic_funcs, align 8
  %rreg138 = getelementptr inbounds %struct.hl_asic_funcs, ptr %124, i32 0, i32 57
  %125 = ptrtoint ptr %rreg138 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rreg138, align 4
  %call139 = tail call i32 %126(ptr noundef %hdev, i32 noundef 46411800) #5
  %127 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %asic_funcs, align 8
  %rreg141 = getelementptr inbounds %struct.hl_asic_funcs, ptr %128, i32 0, i32 57
  %129 = ptrtoint ptr %rreg141 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %rreg141, align 4
  %call142 = tail call i32 %130(ptr noundef %hdev, i32 noundef 46411836) #5
  %and143 = and i32 %call142, 255
  %conv144 = zext i32 %and143 to i64
  %shl = shl nuw nsw i64 %conv144, 32
  %conv145 = zext i32 %call139 to i64
  %or146 = or i64 %shl, %conv145
  %output = getelementptr inbounds %struct.hl_debug_params, ptr %params, i32 0, i32 1
  %131 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %output, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %or146, ptr %132, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then136, %if.else.cleanup_crit_edge, %if.end104, %do.end41, %do.end32, %if.then24.cleanup_crit_edge, %do.end14, %do.end
  %retval.0 = phi i32 [ %call7, %do.end ], [ %call9, %do.end14 ], [ -22, %do.end32 ], [ -22, %do.end41 ], [ -22, %if.then24.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then136 ], [ 0, %if.end104 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @goya_halt_coresight(ptr noundef %hdev, ptr nocapture noundef readnone %ctx) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.hl_debug_params, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %params) #5
  %0 = call ptr @memset(ptr %params, i32 0, i32 24)
  %reg_idx = getelementptr inbounds %struct.hl_debug_params, ptr %params, i32 0, i32 3
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.018 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %1 = ptrtoint ptr %reg_idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %i.018, ptr %reg_idx, align 4
  %call = call fastcc i32 @goya_config_etf(ptr noundef %hdev, ptr noundef nonnull %params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %call, i32 noundef %i.018) #8
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call1 = call fastcc i32 @goya_config_etr(ptr noundef %hdev, ptr noundef nonnull %params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.end.if.end8_crit_edge, label %do.end6

for.end.if.end8_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

do.end6:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef %call1) #8
  br label %if.end8

if.end8:                                          ; preds = %do.end6, %for.end.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %params) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @goya_coresight_timeout(ptr noundef %hdev, i64 noundef %addr, i32 noundef %position, i1 noundef zeroext %up) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pldm = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 111
  %0 = ptrtoint ptr %pldm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pldm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %. = select i1 %tobool.not, i32 100000, i32 10000000
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 8
  %tobool1.not = icmp eq ptr %3, null
  %call5 = tail call i64 @ktime_get() #5
  %mul = mul nuw nsw i32 %., 10
  %4 = tail call i32 @llvm.umin.i32(i32 %mul, i32 10000000)
  %.sink = select i1 %tobool1.not, i32 %4, i32 %.
  %cond = zext i32 %.sink to i64
  %mul.i85 = mul nuw nsw i64 %cond, 1000
  %add.i86 = add i64 %call5, %mul.i85
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 216) #5
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %conv16 = trunc i64 %addr to i32
  %shl23 = shl nuw i32 1, %position
  br label %for.cond

for.cond:                                         ; preds = %if.end38, %entry
  %5 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %asic_funcs, align 8
  %rreg = getelementptr inbounds %struct.hl_asic_funcs, ptr %6, i32 0, i32 57
  %7 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rreg, align 4
  %call17 = tail call i32 %8(ptr noundef %hdev, i32 noundef %conv16) #5
  %and = and i32 %call17, %shl23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %up, label %cond.true20, label %cond.false22

cond.true20:                                      ; preds = %for.cond
  br i1 %tobool21.not, label %cond.true20.land.lhs.true_crit_edge, label %cond.true20.cleanup_crit_edge

cond.true20.cleanup_crit_edge:                    ; preds = %cond.true20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.true20.land.lhs.true_crit_edge:              ; preds = %cond.true20
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

cond.false22:                                     ; preds = %for.cond
  br i1 %tobool21.not, label %cond.false22.cond.false45_crit_edge, label %cond.false22.land.lhs.true_crit_edge

cond.false22.land.lhs.true_crit_edge:             ; preds = %cond.false22
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

cond.false22.cond.false45_crit_edge:              ; preds = %cond.false22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false45

land.lhs.true:                                    ; preds = %cond.false22.land.lhs.true_crit_edge, %cond.true20.land.lhs.true_crit_edge
  %call29 = tail call i64 @ktime_get() #5
  %cmp3.i = icmp sgt i64 %call29, %add.i86
  br i1 %cmp3.i, label %for.end, label %if.end38

if.end38:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #5
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %9 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %asic_funcs, align 8
  %rreg35 = getelementptr inbounds %struct.hl_asic_funcs, ptr %10, i32 0, i32 57
  %11 = ptrtoint ptr %rreg35 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rreg35, align 4
  %call37 = tail call i32 %12(ptr noundef %hdev, i32 noundef %conv16) #5
  br i1 %up, label %for.end.cond.true42_crit_edge, label %for.end.cond.false45_crit_edge

for.end.cond.false45_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false45

for.end.cond.true42_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = and i32 %call37, %shl23
  br label %cond.end50

cond.false45:                                     ; preds = %for.end.cond.false45_crit_edge, %cond.false22.cond.false45_crit_edge
  %val.091 = phi i32 [ %call37, %for.end.cond.false45_crit_edge ], [ %call17, %cond.false22.cond.false45_crit_edge ]
  %13 = xor i32 %val.091, -1
  %14 = lshr i32 %13, %position
  %15 = and i32 %14, 1
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false45, %for.end.cond.true42_crit_edge
  %cond51 = phi i32 [ %15, %cond.false45 ], [ %.pre, %for.end.cond.true42_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond51)
  %tobool52.not = icmp eq i32 %cond51, 0
  br i1 %tobool52.not, label %do.end58, label %cond.end50.cleanup_crit_edge

cond.end50.cleanup_crit_edge:                     ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end58:                                         ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %conv60 = zext i1 %up to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.15, i64 noundef %addr, i32 noundef %position, i32 noundef %conv60) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end58, %cond.end50.cleanup_crit_edge, %cond.true20.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %do.end58 ], [ 0, %cond.end50.cleanup_crit_edge ], [ 0, %cond.true20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !44, !46, !47, !49, !51, !52, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !79, !80, !81, !82, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/habanalabs/goya/goya_coresight.c", i32 684, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @goya_debug_coresight._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @goya_debug_coresight._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/misc/habanalabs/goya/goya_coresight.c", i32 703, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @goya_halt_coresight._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @goya_halt_coresight._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/misc/habanalabs/goya/goya_coresight.c", i32 708, i32 3}
!15 = !{ptr @goya_halt_coresight._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @goya_halt_coresight._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/misc/habanalabs/goya/goya_coresight.c", i32 237, i32 3}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @goya_config_stm._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @goya_config_stm._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/misc/habanalabs/goya/goya_coresight.c", i32 289, i32 4}
!24 = !{ptr @goya_config_stm._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @goya_config_stm._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @debug_stm_regs, !27, !"debug_stm_regs", i1 false, i1 false}
!27 = !{!"../drivers/misc/habanalabs/goya/goya_coresight.c", i32 21, i32 12}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/misc/habanalabs/goya/goya_coresight.c", i32 219, i32 3}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @goya_coresight_timeout._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @goya_coresight_timeout._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/misc/habanalabs/goya/goya_coresight.c", i32 310, i32 3}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @goya_config_etf._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @goya_config_etf._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/misc/habanalabs/goya/goya_coresight.c", i32 326, i32 3}
!40 = !{ptr @goya_config_etf._entry.19, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @goya_config_etf._entry_ptr.21, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @goya_config_etf._entry.24, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../drivers/misc/habanalabs/goya/goya_coresight.c", i32 334, i32 3}
!46 = !{ptr @goya_config_etf._entry_ptr.25, !45, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @debug_etf_regs, !48, !"debug_etf_regs", i1 false, i1 false}
!48 = !{!"../drivers/misc/habanalabs/goya/goya_coresight.c", i32 46, i32 12}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/misc/habanalabs/goya/goya_coresight.c", i32 402, i32 3}
!51 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @goya_config_etr._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @goya_config_etr._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @goya_config_etr._entry.28, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../drivers/misc/habanalabs/goya/goya_coresight.c", i32 409, i32 3}
!56 = !{ptr @goya_config_etr._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/misc/habanalabs/goya/goya_coresight.c", i32 423, i32 4}
!59 = !{ptr @goya_config_etr._entry.30, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @goya_config_etr._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/misc/habanalabs/goya/goya_coresight.c", i32 430, i32 4}
!63 = !{ptr @goya_config_etr._entry.33, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @goya_config_etr._entry_ptr.35, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/misc/habanalabs/goya/goya_coresight.c", i32 369, i32 3}
!67 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @goya_etr_validate_address._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @goya_etr_validate_address._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/misc/habanalabs/goya/goya_coresight.c", i32 485, i32 3}
!72 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @goya_config_funnel._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @goya_config_funnel._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @debug_funnel_regs, !76, !"debug_funnel_regs", i1 false, i1 false}
!76 = !{!"../drivers/misc/habanalabs/goya/goya_coresight.c", i32 73, i32 12}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/misc/habanalabs/goya/goya_coresight.c", i32 506, i32 3}
!79 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @goya_config_bmon._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @goya_config_bmon._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @debug_bmon_regs, !83, !"debug_bmon_regs", i1 false, i1 false}
!83 = !{!"../drivers/misc/habanalabs/goya/goya_coresight.c", i32 101, i32 12}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/misc/habanalabs/goya/goya_coresight.c", i32 583, i32 3}
!86 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @goya_config_spmu._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @goya_config_spmu._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/misc/habanalabs/goya/goya_coresight.c", i32 596, i32 4}
!91 = !{ptr @goya_config_spmu._entry.44, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @goya_config_spmu._entry_ptr.46, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/misc/habanalabs/goya/goya_coresight.c", i32 602, i32 4}
!95 = !{ptr @goya_config_spmu._entry.47, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @goya_config_spmu._entry_ptr.49, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/misc/habanalabs/goya/goya_coresight.c", i32 627, i32 4}
!99 = !{ptr @goya_config_spmu._entry.50, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @goya_config_spmu._entry_ptr.52, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/misc/habanalabs/goya/goya_coresight.c", i32 633, i32 4}
!103 = !{ptr @goya_config_spmu._entry.53, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @goya_config_spmu._entry_ptr.55, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @debug_spmu_regs, !106, !"debug_spmu_regs", i1 false, i1 false}
!106 = !{!"../drivers/misc/habanalabs/goya/goya_coresight.c", i32 176, i32 12}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{i8 0, i8 2}
