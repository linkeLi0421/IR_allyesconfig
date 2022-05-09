; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/dw_mmc-k3.c_pt.bc'
source_filename = "../drivers/mmc/host/dw_mmc-k3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_mci_drv_data = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hs_timing = type { i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.dw_mci = type { %struct.spinlock, %struct.spinlock, ptr, ptr, i32, i8, ptr, %struct.sg_mapping_iter, ptr, ptr, ptr, %struct.mmc_command, i32, i8, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.tasklet_struct, i32, i32, i32, %struct.list_head, i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, %union.anon.85, ptr, ptr, i32, i8, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.fault_attr, %struct.hrtimer }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%union.anon.85 = type { i64 }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.k3_priv = type { i32, i32, ptr }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dw_mci_slot = type { ptr, ptr, i32, ptr, %struct.list_head, i32, i32, i32, i32, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__initcall__kmod_dw_mmc_k3__330_482_dw_mci_k3_pltfm_driver_init6 = internal global ptr @dw_mci_k3_pltfm_driver_init, section ".initcall6.init", align 4
@dw_mci_k3_pltfm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dw_mci_k3_probe, ptr @dw_mci_pltfm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @dw_mci_k3_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_mci_k3_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dw_mci_k3_pltfm_driver_exit = internal global ptr @dw_mci_k3_pltfm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description331 = internal constant [59 x i8] c"dw_mmc_k3.description=K3 Specific DW-MSHC Driver Extension\00", section ".modinfo", align 1
@__UNIQUE_ID_file332 = internal constant [42 x i8] c"dw_mmc_k3.file=drivers/mmc/host/dw_mmc-k3\00", section ".modinfo", align 1
@__UNIQUE_ID_license333 = internal constant [25 x i8] c"dw_mmc_k3.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias334 = internal constant [34 x i8] c"dw_mmc_k3.alias=platform:dwmmc_k3\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dwmmc_k3\00", [23 x i8] zeroinitializer }, align 32
@dw_mci_k3_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3660-dw-mshc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3660_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi4511-dw-mshc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @k3_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi6220-dw-mshc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi6220_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@dw_mci_k3_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_mci_runtime_suspend, ptr @dw_mci_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@hi3660_data = internal constant { %struct.dw_mci_drv_data, [52 x i8] } { %struct.dw_mci_drv_data { ptr null, i32 0, i32 0, ptr @dw_mci_hi3660_init, ptr @dw_mci_hi3660_set_ios, ptr @dw_mci_hi6220_parse_dt, ptr @dw_mci_hi3660_execute_tuning, ptr null, ptr @dw_mci_hi3660_switch_voltage, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@k3_drv_data = internal constant { %struct.dw_mci_drv_data, [52 x i8] } { %struct.dw_mci_drv_data { ptr null, i32 0, i32 0, ptr null, ptr @dw_mci_k3_set_ios, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@hi6220_data = internal constant { %struct.dw_mci_drv_data, [52 x i8] } { %struct.dw_mci_drv_data { ptr @dw_mci_hi6220_caps, i32 3, i32 0, ptr null, ptr @dw_mci_hi6220_set_ios, ptr @dw_mci_hi6220_parse_dt, ptr @dw_mci_hi6220_execute_tuning, ptr null, ptr @dw_mci_hi6220_switch_voltage, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@hs_timing_cfg = internal constant { [3 x [10 x %struct.hs_timing]], [96 x i8] } { [3 x [10 x %struct.hs_timing]] [[10 x %struct.hs_timing] zeroinitializer, [10 x %struct.hs_timing] [%struct.hs_timing { i32 7, i32 0, i32 15, i32 15 }, %struct.hs_timing { i32 6, i32 0, i32 4, i32 4 }, %struct.hs_timing { i32 6, i32 0, i32 3, i32 3 }, %struct.hs_timing { i32 6, i32 0, i32 15, i32 15 }, %struct.hs_timing { i32 6, i32 0, i32 2, i32 2 }, %struct.hs_timing { i32 4, i32 0, i32 11, i32 0 }, %struct.hs_timing { i32 6, i32 4, i32 15, i32 0 }, %struct.hs_timing zeroinitializer, %struct.hs_timing zeroinitializer, %struct.hs_timing zeroinitializer], [10 x %struct.hs_timing] [%struct.hs_timing { i32 7, i32 0, i32 15, i32 15 }, %struct.hs_timing zeroinitializer, %struct.hs_timing { i32 6, i32 0, i32 15, i32 15 }, %struct.hs_timing { i32 6, i32 0, i32 15, i32 15 }, %struct.hs_timing { i32 6, i32 0, i32 0, i32 0 }, %struct.hs_timing { i32 4, i32 0, i32 12, i32 0 }, %struct.hs_timing { i32 5, i32 4, i32 15, i32 0 }, %struct.hs_timing zeroinitializer, %struct.hs_timing zeroinitializer, %struct.hs_timing zeroinitializer]], [96 x i8] zeroinitializer }, align 32
@dw_mci_hi3660_set_ios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 310, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set rate %luHz\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dw_mci_hi3660_set_ios\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mmc/host/dw_mmc-k3.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dw_mci_hi3660_set_ios._entry_ptr = internal global ptr @dw_mci_hi3660_set_ios._entry, section ".printk_index", align 4
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hisilicon,peripheral-syscon\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mshc\00", [27 x i8] zeroinitializer }, align 32
@dw_mci_hi3660_execute_tuning._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 390, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"All phases bad!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dw_mci_hi3660_execute_tuning\00", [35 x i8] zeroinitializer }, align 32
@dw_mci_hi3660_execute_tuning._entry_ptr = internal global ptr @dw_mci_hi3660_execute_tuning._entry, section ".printk_index", align 4
@dw_mci_hi3660_execute_tuning._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 397, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"tuning ok best_clksmpl %u tuning_sample_flag %x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dw_mci_hi3660_execute_tuning._entry_ptr.13 = internal global ptr @dw_mci_hi3660_execute_tuning._entry.10, section ".printk_index", align 4
@dw_mci_hi3660_switch_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 428, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Regulator set error %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dw_mci_hi3660_switch_voltage\00", [35 x i8] zeroinitializer }, align 32
@dw_mci_hi3660_switch_voltage._entry_ptr = internal global ptr @dw_mci_hi3660_switch_voltage._entry, section ".printk_index", align 4
@dw_mci_set_sel18._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 290, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sel18 %u error\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dw_mci_set_sel18\00", [47 x i8] zeroinitializer }, align 32
@dw_mci_set_sel18._entry_ptr = internal global ptr @dw_mci_set_sel18._entry, section ".printk_index", align 4
@dw_mci_k3_set_ios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 108, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to set rate %uHz\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dw_mci_k3_set_ios\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dw_mci_k3_set_ios._entry_ptr = internal global ptr @dw_mci_k3_set_ios._entry, section ".printk_index", align 4
@dw_mci_hi6220_caps = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 1073741824, i32 1073741824, i32 0], [20 x i8] zeroinitializer }, align 32
@dw_mci_hi6220_set_ios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.21, ptr @.str.3, i32 197, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dw_mci_hi6220_set_ios\00", [42 x i8] zeroinitializer }, align 32
@dw_mci_hi6220_set_ios._entry_ptr = internal global ptr @dw_mci_hi6220_set_ios._entry, section ".printk_index", align 4
@dw_mci_hi6220_switch_voltage.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dw_mmc_k3\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dw_mci_hi6220_switch_voltage\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"voltage not supported\0A\00", [41 x i8] zeroinitializer }, align 32
@dw_mci_hi6220_switch_voltage.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.3, ptr @.str.25, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"switch voltage failed\0A\00", [41 x i8] zeroinitializer }, align 32
@dw_mci_hi6220_switch_voltage.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.3, ptr @.str.26, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Regulator set error %d: %d - %d\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.30 = private unnamed_addr constant [23 x i8] c"dw_mci_k3_pltfm_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 471, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 475, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"dw_mci_k3_match\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 444, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"dw_mci_k3_dev_pm_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 463, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant [12 x i8] c"hi3660_data\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 436, i32 37 }
@___asan_gen_.45 = private unnamed_addr constant [12 x i8] c"k3_drv_data\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 113, i32 37 }
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"hi6220_data\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 207, i32 37 }
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"hs_timing_cfg\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 74, i32 25 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 310, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 126, i32 7 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 130, i32 54 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 390, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 396, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 428, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 290, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 108, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [19 x i8] c"dw_mci_hi6220_caps\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 61, i32 22 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 197, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 166, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 171, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [32 x i8] c"../drivers/mmc/host/dw_mmc-k3.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 180, i32 3 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_alias334, ptr @__UNIQUE_ID_description331, ptr @__UNIQUE_ID_file332, ptr @__UNIQUE_ID_license333, ptr @__exitcall_dw_mci_k3_pltfm_driver_exit, ptr @__initcall__kmod_dw_mmc_k3__330_482_dw_mci_k3_pltfm_driver_init6, ptr @dw_mci_hi3660_execute_tuning._entry, ptr @dw_mci_hi3660_execute_tuning._entry.10, ptr @dw_mci_hi3660_execute_tuning._entry_ptr, ptr @dw_mci_hi3660_execute_tuning._entry_ptr.13, ptr @dw_mci_hi3660_set_ios._entry, ptr @dw_mci_hi3660_set_ios._entry_ptr, ptr @dw_mci_hi3660_switch_voltage._entry, ptr @dw_mci_hi3660_switch_voltage._entry_ptr, ptr @dw_mci_hi6220_set_ios._entry, ptr @dw_mci_hi6220_set_ios._entry_ptr, ptr @dw_mci_k3_pltfm_driver_exit, ptr @dw_mci_k3_set_ios._entry, ptr @dw_mci_k3_set_ios._entry_ptr, ptr @dw_mci_set_sel18._entry, ptr @dw_mci_set_sel18._entry_ptr, ptr @dw_mci_k3_pltfm_driver, ptr @.str, ptr @dw_mci_k3_match, ptr @dw_mci_k3_dev_pm_ops, ptr @hi3660_data, ptr @k3_drv_data, ptr @hi6220_data, ptr @hs_timing_cfg, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @dw_mci_hi6220_caps, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_k3_pltfm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_k3_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_k3_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k3_drv_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_timing_cfg to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_hi3660_set_ios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_hi3660_execute_tuning._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_hi3660_execute_tuning._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_hi3660_switch_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_set_sel18._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_k3_set_ios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_hi6220_caps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_hi6220_set_ios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_k3_pltfm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dw_mci_k3_pltfm_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_k3_pltfm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @dw_mci_k3_pltfm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_k3_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @dw_mci_k3_match, ptr noundef %1) #6
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call1 = tail call i32 @dw_mci_pltfm_register(ptr noundef %pdev, ptr noundef %3) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mci_pltfm_remove(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mci_pltfm_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_hi3660_init(ptr nocapture noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777218) #6, !srcloc !90
  %priv1.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 39
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %arrayidx3.i = getelementptr [3 x [10 x %struct.hs_timing]], ptr @hs_timing_cfg, i32 0, i32 %5, i32 0
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3.i, align 4
  %smpl_dly7.i = getelementptr [3 x [10 x %struct.hs_timing]], ptr @hs_timing_cfg, i32 0, i32 %5, i32 0, i32 1
  %8 = ptrtoint ptr %smpl_dly7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smpl_dly7.i, align 4
  %smpl_phase_max.i = getelementptr [3 x [10 x %struct.hs_timing]], ptr @hs_timing_cfg, i32 0, i32 %5, i32 0, i32 2
  %10 = ptrtoint ptr %smpl_phase_max.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %smpl_phase_max.i, align 4
  %smpl_phase_min.i = getelementptr [3 x [10 x %struct.hs_timing]], ptr @hs_timing_cfg, i32 0, i32 %5, i32 0, i32 3
  %12 = ptrtoint ptr %smpl_phase_min.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %smpl_phase_min.i, align 4
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 8
  %add.ptr.i = getelementptr i8, ptr %15, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !90
  tail call void @usleep_range_state(i32 noundef 5, i32 noundef 10, i32 noundef 2) #6
  %add.i = add i32 %13, %11
  %16 = shl i32 %add.i, 15
  %and36.i = and i32 %16, 2031616
  %shl59.i = shl i32 %9, 26
  %and60.i = and i32 %shl59.i, 2080374784
  %shl83.i = shl i32 %7, 21
  %and84.i = and i32 %shl83.i, 65011712
  %or.i = or i32 %and60.i, %and84.i
  %or85.i = or i32 %or.i, %and36.i
  %17 = tail call i32 @llvm.bswap.i32(i32 %or85.i) #6
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 8
  %add.ptr87.i = getelementptr i8, ptr %19, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87.i, i32 %17) #6, !srcloc !90
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 8
  %add.ptr89.i = getelementptr i8, ptr %21, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89.i, i32 0) #6, !srcloc !90
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 8
  %add.ptr133.i = getelementptr i8, ptr %23, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr133.i, i32 459008) #6, !srcloc !90
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %bus_hz = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 32
  %24 = ptrtoint ptr %bus_hz to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bus_hz, align 4
  %div3 = lshr i32 %25, 3
  store i32 %div3, ptr %bus_hz, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_hi3660_set_ios(ptr nocapture noundef %host, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %priv1 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 39
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %cur_speed = getelementptr inbounds %struct.k3_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cur_speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_speed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp = icmp eq i32 %1, %5
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mul = shl i32 %1, 3
  %ciu_clk = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 41
  %6 = ptrtoint ptr %ciu_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ciu_clk, align 8
  %call = tail call i32 @clk_set_rate(ptr noundef %7, i32 noundef %mul) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1, i32 noundef %mul) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %ciu_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ciu_clk, align 8
  %call8 = tail call i32 @clk_get_rate(ptr noundef %11) #6
  %timing = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %12 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %timing, align 4
  %conv = zext i8 %13 to i32
  tail call fastcc void @dw_mci_hs_set_timing(ptr noundef %host, i32 noundef %conv, i32 noundef -1)
  %div26 = lshr i32 %call8, 3
  %bus_hz = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 32
  %14 = ptrtoint ptr %bus_hz to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div26, ptr %bus_hz, align 4
  %current_speed = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 33
  %15 = ptrtoint ptr %current_speed to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %current_speed, align 8
  %16 = ptrtoint ptr %cur_speed to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div26, ptr %cur_speed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_hi6220_parse_dt(ptr nocapture noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 12, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call2 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.6) #6
  %reg = getelementptr inbounds %struct.k3_priv, ptr %call.i, i32 0, i32 2
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i, ptr null, ptr %call2
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spec.store.select, ptr %reg, align 4
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %of_node9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %of_node9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node9, align 8
  %call10 = tail call i32 @of_alias_get_id(ptr noundef %10, ptr noundef nonnull @.str.7) #6
  %11 = tail call i32 @llvm.smax.i32(i32 %call10, i32 0)
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp16 = icmp ugt i32 %11, 2
  br i1 %cmp16, label %if.end.cleanup_crit_edge, label %if.end18

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %priv19 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 39
  %13 = ptrtoint ptr %priv19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %priv19, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_hi3660_execute_tuning(ptr nocapture noundef readonly %slot, i32 noundef %opcode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.dw_mci_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %2 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slot, align 4
  %regs = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 2
  %timing = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 28, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %tuning_sample_flag.044 = phi i32 [ 0, %entry ], [ %tuning_sample_flag.1, %for.body.for.body_crit_edge ]
  %smpl_phase.043 = phi i32 [ 0, %entry ], [ %inc4, %for.body.for.body_crit_edge ]
  %i.042 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %rem = srem i32 %smpl_phase.043, 32
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #6, !srcloc !90
  %6 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %timing, align 4
  %conv = zext i8 %7 to i32
  tail call fastcc void @dw_mci_hs_set_timing(ptr noundef %1, i32 noundef %conv, i32 noundef %rem)
  %call = tail call i32 @mmc_send_tuning(ptr noundef %3, i32 noundef %opcode, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %shl = shl nuw i32 1, %rem
  %neg = xor i32 %shl, -1
  %and = and i32 %tuning_sample_flag.044, %neg
  %or = or i32 %shl, %tuning_sample_flag.044
  %tuning_sample_flag.1 = select i1 %tobool.not, i32 %or, i32 %and
  %inc = add nuw nsw i32 %i.042, 1
  %inc4 = add nsw i32 %rem, 1
  %exitcond.not = icmp eq i32 %inc, 40
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %8 = zext i32 %tuning_sample_flag.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %tuning_sample_flag.1, label %while.body.lr.ph.i [
    i32 0, label %do.end
    i32 -1, label %for.end.if.end9_crit_edge
  ]

for.end.if.end9_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

while.body.lr.ph.i:                               ; preds = %for.end
  %9 = tail call i32 @llvm.cttz.i32(i32 %tuning_sample_flag.1, i1 true) #6, !range !91
  br label %while.body.i

while.body.i:                                     ; preds = %if.end16.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %range_length.048.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %11, %if.end16.i.while.body.i_crit_edge ]
  %range_start.047.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %spec.select.i, %if.end16.i.while.body.i_crit_edge ]
  %i.046.i = phi i32 [ %9, %while.body.lr.ph.i ], [ %add17.i, %if.end16.i.while.body.i_crit_edge ]
  %or.i.i = tail call i32 @llvm.fshr.i32(i32 %tuning_sample_flag.1, i32 %tuning_sample_flag.1, i32 %i.046.i) #6
  %neg4.i = xor i32 %or.i.i, -1
  %10 = tail call i32 @llvm.cttz.i32(i32 %neg4.i, i1 true) #6, !range !91
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %range_length.048.i)
  %cmp8.i = icmp ugt i32 %10, %range_length.048.i
  %spec.select.i = select i1 %cmp8.i, i32 %i.046.i, i32 %range_start.047.i
  %11 = tail call i32 @llvm.umax.i32(i32 %10, i32 %range_length.048.i) #6
  %shr.i = lshr i32 %or.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %iszero11.i = icmp eq i32 %shr.i, 0
  br i1 %iszero11.i, label %while.body.i.while.end.i_crit_edge, label %if.end16.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.end16.i:                                       ; preds = %while.body.i
  %12 = tail call i32 @llvm.cttz.i32(i32 %shr.i, i1 true) #6, !range !91
  %add.i = add i32 %10, %i.046.i
  %add17.i = add i32 %add.i, %12
  %cmp3.i = icmp slt i32 %add17.i, 32
  br i1 %cmp3.i, label %if.end16.i.while.body.i_crit_edge, label %if.end16.i.while.end.i_crit_edge

if.end16.i.while.end.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.end16.i.while.body.i_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.i:                                      ; preds = %if.end16.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %phi.bo.i = lshr i32 %11, 1
  %13 = add i32 %phi.bo.i, %spec.select.i
  %phi.bo52.i = and i32 %13, 31
  br label %if.end9

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 36
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end9:                                          ; preds = %while.end.i, %for.end.if.end9_crit_edge
  %retval.0.i.ph = phi i32 [ %phi.bo52.i, %while.end.i ], [ 0, %for.end.if.end9_crit_edge ]
  %16 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %timing, align 4
  %conv12 = zext i8 %17 to i32
  tail call fastcc void @dw_mci_hs_set_timing(ptr noundef %1, i32 noundef %conv12, i32 noundef %retval.0.i.ph)
  %dev16 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 36
  %18 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.11, i32 noundef %retval.0.i.ph, i32 noundef %tuning_sample_flag.1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_hi3660_switch_voltage(ptr noundef %mmc, ptr noundef %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %host1 = getelementptr inbounds %struct.dw_mci_slot, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %priv2 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %reg = getelementptr inbounds %struct.k3_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %signal_voltage = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 8
  %8 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %signal_voltage, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %9, label %if.end5.if.end20_crit_edge [
    i8 0, label %if.then8
    i8 1, label %if.then14
  ]

if.end5.if.end20_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then8:                                         ; preds = %if.end5
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %5, i32 noundef 788, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.then8.if.end20_crit_edge, label %do.end.i

if.then8.if.end20_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

do.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 36
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.16, i32 noundef 0) #9
  br label %cleanup

if.then14:                                        ; preds = %if.end5
  %call.i.i47 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %5, i32 noundef 788, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i47)
  %tobool2.not.i48 = icmp eq i32 %call.i.i47, 0
  br i1 %tobool2.not.i48, label %if.then14.if.end20_crit_edge, label %do.end.i50

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

do.end.i50:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i49 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 36
  %13 = ptrtoint ptr %dev.i49 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.16, i32 noundef 4) #9
  br label %cleanup

if.end20:                                         ; preds = %if.then14.if.end20_crit_edge, %if.then8.if.end20_crit_edge, %if.end5.if.end20_crit_edge
  %vqmmc = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54, i32 1
  %15 = ptrtoint ptr %vqmmc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vqmmc, align 4
  %cmp.i = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end20.cleanup_crit_edge, label %if.then22

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then22:                                        ; preds = %if.end20
  %call23 = tail call i32 @mmc_regulator_set_vqmmc(ptr noundef %mmc, ptr noundef %ios) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.end, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 36
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.14, i32 noundef %call23) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then22.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %do.end.i50, %do.end.i, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %do.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then22.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ], [ %call.i.i, %do.end.i ], [ %call.i.i47, %do.end.i50 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_mci_hs_set_timing(ptr nocapture noundef readonly %host, i32 noundef %timing, i32 noundef %smpl_phase) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 39
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %arrayidx3 = getelementptr [3 x [10 x %struct.hs_timing]], ptr @hs_timing_cfg, i32 0, i32 %3, i32 %timing
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %smpl_dly7 = getelementptr [3 x [10 x %struct.hs_timing]], ptr @hs_timing_cfg, i32 0, i32 %3, i32 %timing, i32 1
  %6 = ptrtoint ptr %smpl_dly7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %smpl_dly7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %smpl_phase)
  %cmp = icmp eq i32 %smpl_phase, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %smpl_phase_max = getelementptr [3 x [10 x %struct.hs_timing]], ptr @hs_timing_cfg, i32 0, i32 %3, i32 %timing, i32 2
  %8 = ptrtoint ptr %smpl_phase_max to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smpl_phase_max, align 4
  %smpl_phase_min = getelementptr [3 x [10 x %struct.hs_timing]], ptr @hs_timing_cfg, i32 0, i32 %3, i32 %timing, i32 3
  %10 = ptrtoint ptr %smpl_phase_min to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %smpl_phase_min, align 4
  %add = add i32 %11, %9
  %div159 = lshr i32 %add, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %smpl_phase.addr.0 = phi i32 [ %div159, %if.then ], [ %smpl_phase, %entry.if.end_crit_edge ]
  %12 = zext i32 %timing to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %timing, label %if.end.sw.epilog_crit_edge [
    i32 6, label %sw.bb
    i32 5, label %if.end.sw.bb16_crit_edge
  ]

if.end.sw.bb16_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = add i32 %smpl_phase.addr.0, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %14 = icmp ult i32 %13, 4
  %spec.select = select i1 %14, i32 8192, i32 0
  br label %sw.bb16

sw.bb16:                                          ; preds = %sw.bb, %if.end.sw.bb16_crit_edge
  %use_smpl_dly.0 = phi i32 [ 0, %if.end.sw.bb16_crit_edge ], [ %spec.select, %sw.bb ]
  %15 = add i32 %smpl_phase.addr.0, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %15)
  %16 = icmp ult i32 %15, 9
  %spec.select166 = select i1 %16, i32 16777216, i32 0
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb16, %if.end.sw.epilog_crit_edge
  %enable_shift.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ %spec.select166, %sw.bb16 ]
  %use_smpl_dly.1 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ %use_smpl_dly.0, %sw.bb16 ]
  %regs = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %18, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !90
  tail call void @usleep_range_state(i32 noundef 5, i32 noundef 10, i32 noundef 2) #6
  %shl = shl i32 %smpl_phase.addr.0, 16
  %and36 = and i32 %shl, 2031616
  %shl59 = shl i32 %7, 26
  %and60 = and i32 %shl59, 2080374784
  %shl83 = shl i32 %5, 21
  %and84 = and i32 %shl83, 65011712
  %or = or i32 %and60, %and84
  %or85 = or i32 %or, %and36
  %19 = tail call i32 @llvm.bswap.i32(i32 %or85)
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 8
  %add.ptr87 = getelementptr i8, ptr %21, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %19) #6, !srcloc !90
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 8
  %add.ptr89 = getelementptr i8, ptr %23, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 %enable_shift.0) #6, !srcloc !90
  %and129 = and i32 %use_smpl_dly.1, 8192
  %or131 = or i32 %and129, 67328
  %24 = tail call i32 @llvm.bswap.i32(i32 %or131)
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 8
  %add.ptr133 = getelementptr i8, ptr %26, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr133, i32 %24) #6, !srcloc !90
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_tuning(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_vqmmc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_k3_set_ios(ptr nocapture noundef %host, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ciu_clk = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 41
  %0 = ptrtoint ptr %ciu_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ciu_clk, align 8
  %2 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ios, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %1, i32 noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ios, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.18, i32 noundef %7) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %ciu_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ciu_clk, align 8
  %call3 = tail call i32 @clk_get_rate(ptr noundef %9) #6
  %bus_hz = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 32
  %10 = ptrtoint ptr %bus_hz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call3, ptr %bus_hz, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_hi6220_set_ios(ptr nocapture noundef %host, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ios, align 4
  %2 = tail call i32 @llvm.umax.i32(i32 %1, i32 25000000)
  %biu_clk = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 40
  %3 = ptrtoint ptr %biu_clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %biu_clk, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %4, i32 noundef %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.18, i32 noundef %2) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %biu_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %biu_clk, align 4
  %call4 = tail call i32 @clk_get_rate(ptr noundef %8) #6
  %bus_hz = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 32
  %9 = ptrtoint ptr %bus_hz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call4, ptr %bus_hz, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dw_mci_hi6220_execute_tuning(ptr nocapture noundef readnone %slot, i32 noundef %opcode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_hi6220_switch_voltage(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %host1 = getelementptr inbounds %struct.dw_mci_slot, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %priv2 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %reg = getelementptr inbounds %struct.k3_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %signal_voltage = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 8
  %6 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %signal_voltage, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %7, label %do.body [
    i8 0, label %if.end.if.end23_crit_edge
    i8 1, label %if.then12
  ]

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_mci_hi6220_switch_voltage.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_mci_hi6220_switch_voltage, %if.then20)) #6
          to label %cleanup [label %if.then20], !srcloc !92

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 36
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_mci_hi6220_switch_voltage.__UNIQUE_ID_ddebug302, ptr noundef %10, ptr noundef nonnull @.str.24) #6
  br label %cleanup

if.end23:                                         ; preds = %if.then12, %if.end.if.end23_crit_edge
  %.sink = phi i32 [ 1024, %if.then12 ], [ 0, %if.end.if.end23_crit_edge ]
  %min_uv.0 = phi i32 [ 1800000, %if.then12 ], [ 3000000, %if.end.if.end23_crit_edge ]
  %call.i97 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %5, i32 noundef 1036, i32 noundef 1024, i32 noundef %.sink, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool24.not = icmp eq i32 %call.i97, 0
  br i1 %tobool24.not, label %if.end43, label %do.body26

do.body26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_mci_hi6220_switch_voltage.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_mci_hi6220_switch_voltage, %if.then38)) #6
          to label %cleanup [label %if.then38], !srcloc !92

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  %dev39 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 36
  %11 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev39, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_mci_hi6220_switch_voltage.__UNIQUE_ID_ddebug303, ptr noundef %12, ptr noundef nonnull @.str.25) #6
  br label %cleanup

if.end43:                                         ; preds = %if.end23
  %vqmmc = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54, i32 1
  %13 = ptrtoint ptr %vqmmc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vqmmc, align 4
  %tobool.not.i = icmp eq ptr %14, null
  %cmp.i = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end43.cleanup_crit_edge, label %if.end46

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end46:                                         ; preds = %if.end43
  %call49 = tail call i32 @regulator_set_voltage(ptr noundef nonnull %14, i32 noundef %min_uv.0, i32 noundef %min_uv.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end46.cleanup_crit_edge, label %do.body52

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body52:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_mci_hi6220_switch_voltage.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_mci_hi6220_switch_voltage, %if.then64)) #6
          to label %cleanup [label %if.then64], !srcloc !92

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  %dev65 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 36
  %15 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev65, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_mci_hi6220_switch_voltage.__UNIQUE_ID_ddebug304, ptr noundef %16, ptr noundef nonnull @.str.26, i32 noundef %call49, i32 noundef %min_uv.0, i32 noundef %min_uv.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %do.body52, %if.end46.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.then38, %do.body26, %if.then20, %do.body, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.then20 ], [ %call.i97, %if.then38 ], [ 0, %if.end43.cleanup_crit_edge ], [ %call49, %if.then64 ], [ 0, %if.end46.cleanup_crit_edge ], [ -22, %do.body ], [ %call.i97, %do.body26 ], [ %call49, %do.body52 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mci_runtime_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mci_runtime_resume(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshr.i32(i32, i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !56, !57, !58, !59, !60, !62, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !78, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__initcall__kmod_dw_mmc_k3__330_482_dw_mci_k3_pltfm_driver_init6, !1, !"__initcall__kmod_dw_mmc_k3__330_482_dw_mci_k3_pltfm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/dw_mmc-k3.c", i32 482, i32 1}
!2 = !{ptr @__exitcall_dw_mci_k3_pltfm_driver_exit, !1, !"__exitcall_dw_mci_k3_pltfm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description331, !4, !"__UNIQUE_ID_description331", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/dw_mmc-k3.c", i32 484, i32 1}
!5 = !{ptr @__UNIQUE_ID_file332, !6, !"__UNIQUE_ID_file332", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/dw_mmc-k3.c", i32 485, i32 1}
!7 = !{ptr @__UNIQUE_ID_license333, !6, !"__UNIQUE_ID_license333", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias334, !9, !"__UNIQUE_ID_alias334", i1 false, i1 false}
!9 = !{!"../drivers/mmc/host/dw_mmc-k3.c", i32 486, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/dw_mmc-k3.c", i32 475, i32 12}
!12 = !{ptr @dw_mci_k3_pltfm_driver, !13, !"dw_mci_k3_pltfm_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/dw_mmc-k3.c", i32 471, i32 31}
!14 = !{ptr @dw_mci_k3_match, !15, !"dw_mci_k3_match", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/dw_mmc-k3.c", i32 444, i32 34}
!16 = !{ptr @hi3660_data, !17, !"hi3660_data", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/dw_mmc-k3.c", i32 436, i32 37}
!18 = !{ptr @hs_timing_cfg, !19, !"hs_timing_cfg", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/dw_mmc-k3.c", i32 74, i32 25}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mmc/host/dw_mmc-k3.c", i32 310, i32 3}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @dw_mci_hi3660_set_ios._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @dw_mci_hi3660_set_ios._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mmc/host/dw_mmc-k3.c", i32 126, i32 7}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/dw_mmc-k3.c", i32 130, i32 54}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mmc/host/dw_mmc-k3.c", i32 390, i32 3}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @dw_mci_hi3660_execute_tuning._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @dw_mci_hi3660_execute_tuning._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mmc/host/dw_mmc-k3.c", i32 396, i32 2}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @dw_mci_hi3660_execute_tuning._entry.10, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @dw_mci_hi3660_execute_tuning._entry_ptr.13, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mmc/host/dw_mmc-k3.c", i32 428, i32 4}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @dw_mci_hi3660_switch_voltage._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @dw_mci_hi3660_switch_voltage._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mmc/host/dw_mmc-k3.c", i32 290, i32 3}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @dw_mci_set_sel18._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @dw_mci_set_sel18._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @k3_drv_data, !53, !"k3_drv_data", i1 false, i1 false}
!53 = !{!"../drivers/mmc/host/dw_mmc-k3.c", i32 113, i32 37}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mmc/host/dw_mmc-k3.c", i32 108, i32 3}
!56 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @dw_mci_k3_set_ios._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @dw_mci_k3_set_ios._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @hi6220_data, !61, !"hi6220_data", i1 false, i1 false}
!61 = !{!"../drivers/mmc/host/dw_mmc-k3.c", i32 207, i32 37}
!62 = !{ptr @dw_mci_hi6220_caps, !63, !"dw_mci_hi6220_caps", i1 false, i1 false}
!63 = !{!"../drivers/mmc/host/dw_mmc-k3.c", i32 61, i32 22}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mmc/host/dw_mmc-k3.c", i32 197, i32 3}
!66 = !{ptr @dw_mci_hi6220_set_ios._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @dw_mci_hi6220_set_ios._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mmc/host/dw_mmc-k3.c", i32 166, i32 3}
!70 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @dw_mci_hi6220_switch_voltage.__UNIQUE_ID_ddebug302, !69, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mmc/host/dw_mmc-k3.c", i32 171, i32 3}
!75 = !{ptr @dw_mci_hi6220_switch_voltage.__UNIQUE_ID_ddebug303, !74, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mmc/host/dw_mmc-k3.c", i32 180, i32 3}
!78 = !{ptr @dw_mci_hi6220_switch_voltage.__UNIQUE_ID_ddebug304, !77, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!79 = !{ptr @dw_mci_k3_dev_pm_ops, !80, !"dw_mci_k3_dev_pm_ops", i1 false, i1 false}
!80 = !{!"../drivers/mmc/host/dw_mmc-k3.c", i32 463, i32 32}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i64 6516643}
!91 = !{i32 0, i32 33}
!92 = !{i64 2148762918, i64 2148762923, i64 2148762936, i64 2148762980, i64 2148763014, i64 2148763035}
