; ModuleID = '/llk/IR_all_yes/drivers/memory/atmel-ebi.c_pt.bc'
source_filename = "../drivers/memory/atmel-ebi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atmel_ebi_caps = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atmel_smc_timing_xlate = type { ptr, ptr, i32 }
%struct.atmel_ebi_dev_config = type { i32, %struct.atmel_smc_cs_conf }
%struct.atmel_smc_cs_conf = type { i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.atmel_ebi = type { ptr, ptr, %struct.anon.43, ptr, ptr, %struct.list_head }
%struct.anon.43 = type { ptr, ptr, ptr }
%struct.atmel_ebi_dev = type { %struct.list_head, ptr, i32, i32, [0 x %struct.atmel_ebi_dev_config] }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }

@__initcall__kmod_atmel_ebi__170_637_atmel_ebi_driver_init6 = internal global ptr @atmel_ebi_driver_init, section ".initcall6.init", align 4
@atmel_ebi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_ebi_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_ebi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"atmel-ebi\00", [22 x i8] zeroinitializer }, align 32
@atmel_ebi_id_table = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-ebi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9260_ebi_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9261-ebi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9261_ebi_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9263-ebi0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9263_ebi0_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9263-ebi1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9263_ebi1_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9rl-ebi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9rl_ebi_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-ebi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9g45_ebi_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-ebi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9x5_ebi_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-ebi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d3_ebi_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-ebi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sam9x60_ebi_caps }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@atmel_ebi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @atmel_ebi_resume, ptr null, ptr @atmel_ebi_resume, ptr null, ptr @atmel_ebi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@at91sam9260_ebi_caps = internal constant { %struct.atmel_ebi_caps, [40 x i8] } { %struct.atmel_ebi_caps { i32 255, i32 284, ptr @.str.1, ptr @at91sam9_ebi_get_config, ptr @atmel_ebi_xslate_smc_config, ptr @at91sam9_ebi_apply_config }, [40 x i8] zeroinitializer }, align 32
@at91sam9261_ebi_caps = internal constant { %struct.atmel_ebi_caps, [40 x i8] } { %struct.atmel_ebi_caps { i32 255, i32 48, ptr @.str.1, ptr @at91sam9_ebi_get_config, ptr @atmel_ebi_xslate_smc_config, ptr @at91sam9_ebi_apply_config }, [40 x i8] zeroinitializer }, align 32
@at91sam9263_ebi0_caps = internal constant { %struct.atmel_ebi_caps, [40 x i8] } { %struct.atmel_ebi_caps { i32 63, i32 288, ptr @.str.1, ptr @at91sam9_ebi_get_config, ptr @atmel_ebi_xslate_smc_config, ptr @at91sam9_ebi_apply_config }, [40 x i8] zeroinitializer }, align 32
@at91sam9263_ebi1_caps = internal constant { %struct.atmel_ebi_caps, [40 x i8] } { %struct.atmel_ebi_caps { i32 7, i32 292, ptr @.str.1, ptr @at91sam9_ebi_get_config, ptr @atmel_ebi_xslate_smc_config, ptr @at91sam9_ebi_apply_config }, [40 x i8] zeroinitializer }, align 32
@at91sam9rl_ebi_caps = internal constant { %struct.atmel_ebi_caps, [40 x i8] } { %struct.atmel_ebi_caps { i32 63, i32 288, ptr @.str.1, ptr @at91sam9_ebi_get_config, ptr @atmel_ebi_xslate_smc_config, ptr @at91sam9_ebi_apply_config }, [40 x i8] zeroinitializer }, align 32
@at91sam9g45_ebi_caps = internal constant { %struct.atmel_ebi_caps, [40 x i8] } { %struct.atmel_ebi_caps { i32 63, i32 296, ptr @.str.1, ptr @at91sam9_ebi_get_config, ptr @atmel_ebi_xslate_smc_config, ptr @at91sam9_ebi_apply_config }, [40 x i8] zeroinitializer }, align 32
@at91sam9x5_ebi_caps = internal constant { %struct.atmel_ebi_caps, [40 x i8] } { %struct.atmel_ebi_caps { i32 63, i32 288, ptr @.str.1, ptr @at91sam9_ebi_get_config, ptr @atmel_ebi_xslate_smc_config, ptr @at91sam9_ebi_apply_config }, [40 x i8] zeroinitializer }, align 32
@sama5d3_ebi_caps = internal constant { %struct.atmel_ebi_caps, [40 x i8] } { %struct.atmel_ebi_caps { i32 15, i32 0, ptr null, ptr @sama5_ebi_get_config, ptr @atmel_ebi_xslate_smc_config, ptr @sama5_ebi_apply_config }, [40 x i8] zeroinitializer }, align 32
@sam9x60_ebi_caps = internal constant { %struct.atmel_ebi_caps, [40 x i8] } { %struct.atmel_ebi_caps { i32 63, i32 4, ptr @.str.33, ptr @at91sam9_ebi_get_config, ptr @atmel_ebi_xslate_smc_config, ptr @at91sam9_ebi_apply_config }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atmel,matrix\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel,smc-bus-width\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atmel,smc-tdf-optimized\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"atmel,smc-byte-access-type\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel,smc-read-mode\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nrd\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atmel,smc-write-mode\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nwe\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel,smc-exnw-mode\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"frozen\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ready\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel,smc-page-mode\00", [44 x i8] zeroinitializer }, align 32
@atmel_ebi_xslate_smc_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.17, i32 275, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"missing atmel,smc- properties in %pOF\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"atmel_ebi_xslate_smc_config\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/memory/atmel-ebi.c\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atmel_ebi_xslate_smc_config._entry_ptr = internal global ptr @atmel_ebi_xslate_smc_config._entry, section ".printk_index", align 4
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atmel,smc-tdf-ns\00", [47 x i8] zeroinitializer }, align 32
@timings_xlate_table = internal constant { [10 x %struct.atmel_smc_timing_xlate], [40 x i8] } { [10 x %struct.atmel_smc_timing_xlate] [%struct.atmel_smc_timing_xlate { ptr @.str.23, ptr @atmel_smc_cs_conf_set_setup, i32 24 }, %struct.atmel_smc_timing_xlate { ptr @.str.24, ptr @atmel_smc_cs_conf_set_setup, i32 8 }, %struct.atmel_smc_timing_xlate { ptr @.str.25, ptr @atmel_smc_cs_conf_set_setup, i32 16 }, %struct.atmel_smc_timing_xlate { ptr @.str.26, ptr @atmel_smc_cs_conf_set_setup, i32 0 }, %struct.atmel_smc_timing_xlate { ptr @.str.27, ptr @atmel_smc_cs_conf_set_pulse, i32 24 }, %struct.atmel_smc_timing_xlate { ptr @.str.28, ptr @atmel_smc_cs_conf_set_pulse, i32 8 }, %struct.atmel_smc_timing_xlate { ptr @.str.29, ptr @atmel_smc_cs_conf_set_pulse, i32 16 }, %struct.atmel_smc_timing_xlate { ptr @.str.30, ptr @atmel_smc_cs_conf_set_pulse, i32 0 }, %struct.atmel_smc_timing_xlate { ptr @.str.31, ptr @atmel_smc_cs_conf_set_cycle, i32 16 }, %struct.atmel_smc_timing_xlate { ptr @.str.32, ptr @atmel_smc_cs_conf_set_cycle, i32 0 }], [40 x i8] zeroinitializer }, align 32
@atmel_ebi_xslate_smc_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.17, i32 164, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"missing or invalid timings definition in %pOF\00", [50 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"atmel_ebi_xslate_smc_timings\00", [35 x i8] zeroinitializer }, align 32
@atmel_ebi_xslate_smc_timings._entry_ptr = internal global ptr @atmel_ebi_xslate_smc_timings._entry, section ".printk_index", align 4
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"atmel,smc-ncs-rd-setup-ns\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"atmel,smc-ncs-wr-setup-ns\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"atmel,smc-nrd-setup-ns\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"atmel,smc-nwe-setup-ns\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"atmel,smc-ncs-rd-pulse-ns\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"atmel,smc-ncs-wr-pulse-ns\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"atmel,smc-nrd-pulse-ns\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"atmel,smc-nwe-pulse-ns\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"atmel,smc-nrd-cycle-ns\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"atmel,smc-nwe-cycle-ns\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"microchip,sfr\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"atmel,smc\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"#address-cells\00", [17 x i8] zeroinitializer }, align 32
@atmel_ebi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.17, i32 579, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"missing #address-cells property\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atmel_ebi_probe\00", [16 x i8] zeroinitializer }, align 32
@atmel_ebi_probe._entry_ptr = internal global ptr @atmel_ebi_probe._entry, section ".printk_index", align 4
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"#size-cells\00", [20 x i8] zeroinitializer }, align 32
@atmel_ebi_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.17, i32 587, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@atmel_ebi_probe._entry_ptr.40 = internal global ptr @atmel_ebi_probe._entry.39, section ".printk_index", align 4
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@atmel_ebi_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.37, ptr @.str.17, i32 600, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"failed to configure EBI bus for %pOF, disabling the device\00", [37 x i8] zeroinitializer }, align 32
@atmel_ebi_probe._entry_ptr.44 = internal global ptr @atmel_ebi_probe._entry.42, section ".printk_index", align 4
@atmel_ebi_dev_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.17, i32 318, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid reg property in %pOF\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel_ebi_dev_setup\00", [44 x i8] zeroinitializer }, align 32
@atmel_ebi_dev_setup._entry_ptr = internal global ptr @atmel_ebi_dev_setup._entry, section ".printk_index", align 4
@atmel_ebi_dev_setup._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.17, i32 327, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@atmel_ebi_dev_setup._entry_ptr.48 = internal global ptr @atmel_ebi_dev_setup._entry.47, section ".printk_index", align 4
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 7]
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"atmel_ebi_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 630, i32 31 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 632, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c"atmel_ebi_id_table\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 452, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"atmel_ebi_pm_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 628, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant [21 x i8] c"at91sam9260_ebi_caps\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 373, i32 36 }
@___asan_gen_.66 = private unnamed_addr constant [21 x i8] c"at91sam9261_ebi_caps\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 382, i32 36 }
@___asan_gen_.69 = private unnamed_addr constant [22 x i8] c"at91sam9263_ebi0_caps\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 391, i32 36 }
@___asan_gen_.72 = private unnamed_addr constant [22 x i8] c"at91sam9263_ebi1_caps\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 400, i32 36 }
@___asan_gen_.75 = private unnamed_addr constant [20 x i8] c"at91sam9rl_ebi_caps\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 409, i32 36 }
@___asan_gen_.78 = private unnamed_addr constant [21 x i8] c"at91sam9g45_ebi_caps\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 418, i32 36 }
@___asan_gen_.81 = private unnamed_addr constant [20 x i8] c"at91sam9x5_ebi_caps\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 427, i32 36 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"sama5d3_ebi_caps\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 436, i32 36 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"sam9x60_ebi_caps\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 443, i32 36 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 376, i32 17 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 181, i32 33 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 203, i32 32 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 209, i32 30 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 210, i32 34 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 216, i32 30 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 217, i32 34 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 223, i32 30 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 224, i32 34 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 230, i32 30 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 232, i32 24 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 234, i32 29 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 236, i32 28 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 242, i32 33 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 274, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 121, i32 33 }
@___asan_gen_.153 = private unnamed_addr constant [20 x i8] c"timings_xlate_table\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 93, i32 44 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 162, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 94, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 96, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 98, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 99, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 100, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 102, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 104, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 105, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 106, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 107, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 446, i32 17 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 544, i32 42 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 577, i32 33 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 579, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 585, i32 33 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 587, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 594, i32 32 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 599, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 318, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 327, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.241 = private constant [30 x i8] c"../drivers/memory/atmel-ebi.c\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 501, i32 36 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__initcall__kmod_atmel_ebi__170_637_atmel_ebi_driver_init6, ptr @atmel_ebi_dev_setup._entry, ptr @atmel_ebi_dev_setup._entry.47, ptr @atmel_ebi_dev_setup._entry_ptr, ptr @atmel_ebi_dev_setup._entry_ptr.48, ptr @atmel_ebi_probe._entry, ptr @atmel_ebi_probe._entry.39, ptr @atmel_ebi_probe._entry.42, ptr @atmel_ebi_probe._entry_ptr, ptr @atmel_ebi_probe._entry_ptr.40, ptr @atmel_ebi_probe._entry_ptr.44, ptr @atmel_ebi_xslate_smc_config._entry, ptr @atmel_ebi_xslate_smc_config._entry_ptr, ptr @atmel_ebi_xslate_smc_timings._entry, ptr @atmel_ebi_xslate_smc_timings._entry_ptr, ptr @atmel_ebi_driver, ptr @.str, ptr @atmel_ebi_id_table, ptr @atmel_ebi_pm_ops, ptr @at91sam9260_ebi_caps, ptr @at91sam9261_ebi_caps, ptr @at91sam9263_ebi0_caps, ptr @at91sam9263_ebi1_caps, ptr @at91sam9rl_ebi_caps, ptr @at91sam9g45_ebi_caps, ptr @at91sam9x5_ebi_caps, ptr @sama5d3_ebi_caps, ptr @sam9x60_ebi_caps, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @timings_xlate_table, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.49], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ebi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ebi_id_table to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ebi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9260_ebi_caps to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9261_ebi_caps to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9263_ebi0_caps to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9263_ebi1_caps to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9rl_ebi_caps to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9g45_ebi_caps to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9x5_ebi_caps to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d3_ebi_caps to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sam9x60_ebi_caps to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ebi_xslate_smc_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timings_xlate_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ebi_xslate_smc_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ebi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ebi_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ebi_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ebi_dev_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ebi_dev_setup._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ebi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @atmel_ebi_driver, ptr noundef nonnull @atmel_ebi_probe, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ebi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %conf.i = alloca %struct.atmel_ebi_dev_config, align 4
  %cslines.i = alloca i32, align 4
  %cs.i = alloca i32, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !134
  %call = tail call ptr @of_match_device(ptr noundef nonnull @atmel_ebi_id_table, ptr noundef %dev1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 36, i32 noundef 3520) #7
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %devs = getelementptr inbounds %struct.atmel_ebi, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %devs to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %devs, ptr %devs, align 4
  %prev.i = getelementptr inbounds %struct.atmel_ebi, ptr %call.i, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %devs, ptr %prev.i, align 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %caps = getelementptr inbounds %struct.atmel_ebi, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %caps, align 4
  %dev8 = getelementptr inbounds %struct.atmel_ebi, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev1, ptr %dev8, align 4
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #7
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9, ptr %call.i, align 4
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %16 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i172 = call i32 @__of_parse_phandle_with_args(ptr noundef %15, ptr noundef nonnull @.str.34, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172)
  %tobool.not.i = icmp eq i32 %call.i172, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.of_parse_phandle.exit_crit_edge

if.end13.of_parse_phandle.exit_crit_edge:         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %if.end13.of_parse_phandle.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.end.i ], [ null, %if.end13.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %call17 = call ptr @syscon_node_to_regmap(ptr noundef %retval.0.i) #7
  %smc = getelementptr inbounds %struct.atmel_ebi, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %smc to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call17, ptr %smc, align 4
  %cmp.i173 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %if.then21, label %if.end25

if.then21:                                        ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end25:                                         ; preds = %of_parse_phandle.exit
  %call26 = call ptr @atmel_hsmc_get_reg_layout(ptr noundef %retval.0.i) #7
  %layout = getelementptr inbounds %struct.atmel_ebi, ptr %call.i, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %layout to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call26, ptr %layout, align 4
  %cmp.i174 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i174, label %if.then31, label %if.end35

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call26 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end25
  %call36 = call ptr @of_clk_get(ptr noundef %retval.0.i, i32 noundef 0) #7
  %clk38 = getelementptr inbounds %struct.atmel_ebi, ptr %call.i, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %clk38 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call36, ptr %clk38, align 4
  %cmp.i175 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i175, label %if.then42, label %if.end35.if.end53_crit_edge

if.end35.if.end53_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then42:                                        ; preds = %if.end35
  %24 = ptrtoint ptr %call36 to i32
  %cmp.not = icmp eq ptr %call36, inttoptr (i32 -2 to ptr)
  br i1 %cmp.not, label %if.end50, label %if.then42.cleanup_crit_edge

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %clk38 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %clk38, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end50, %if.end35.if.end53_crit_edge
  %26 = ptrtoint ptr %clk38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk38, align 4
  %call.i176 = call i32 @clk_prepare(ptr noundef %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176)
  %tobool.not.i177 = icmp eq i32 %call.i176, 0
  br i1 %tobool.not.i177, label %if.end.i178, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i178:                                      ; preds = %if.end53
  %call1.i = call i32 @clk_enable(ptr noundef %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end59, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %27) #7
  br label %cleanup

if.end59:                                         ; preds = %if.end.i178
  %28 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %caps, align 4
  %ebi_csa_offs = getelementptr inbounds %struct.atmel_ebi_caps, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %ebi_csa_offs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ebi_csa_offs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool61.not = icmp eq i32 %31, 0
  br i1 %tobool61.not, label %if.end59.if.end72_crit_edge, label %if.then62

if.end59.if.end72_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then62:                                        ; preds = %if.end59
  %regmap_name = getelementptr inbounds %struct.atmel_ebi_caps, ptr %29, i32 0, i32 2
  %32 = ptrtoint ptr %regmap_name to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap_name, align 4
  %call64 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef %33) #7
  %regmap65 = getelementptr inbounds %struct.atmel_ebi, ptr %call.i, i32 0, i32 1
  %34 = ptrtoint ptr %regmap65 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call64, ptr %regmap65, align 4
  %cmp.i180 = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i180, label %if.then68, label %if.then62.if.end72_crit_edge

if.then62.if.end72_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then68:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %call64 to i32
  br label %cleanup

if.end72:                                         ; preds = %if.then62.if.end72_crit_edge, %if.end59.if.end72_crit_edge
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.35, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool74.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool74.not, label %if.end76, label %do.end

do.end:                                           ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36) #10
  br label %cleanup

if.end76:                                         ; preds = %if.end72
  %36 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val, align 4
  %call.i.i181 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.38, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i181)
  %tobool78.not = icmp sgt i32 %call.i.i181, -1
  br i1 %tobool78.not, label %if.end83, label %do.end82

do.end82:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36) #10
  br label %cleanup

if.end83:                                         ; preds = %if.end76
  %38 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val, align 4
  %add = add i32 %39, %37
  %call84 = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #7
  %cmp85.not192 = icmp eq ptr %call84, null
  br i1 %cmp85.not192, label %if.end83.for.end_crit_edge, label %for.body.lr.ph

if.end83.for.end_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end83
  %mul.i = shl i32 %add, 2
  %regmap.i = getelementptr inbounds %struct.atmel_ebi, ptr %call.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %child.0193 = phi ptr [ %call84, %for.body.lr.ph ], [ %call101, %for.inc.for.body_crit_edge ]
  %call86 = call ptr @of_find_property(ptr noundef nonnull %child.0193, ptr noundef nonnull @.str.41, ptr noundef null) #7
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %for.body.for.inc_crit_edge, label %if.end89

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end89:                                         ; preds = %for.body
  %40 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %caps, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %conf.i) #7
  %42 = call ptr @memset(ptr %conf.i, i32 0, i32 24)
  %43 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cslines.i) #7
  %45 = ptrtoint ptr %cslines.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %cslines.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs.i) #7
  %46 = ptrtoint ptr %cs.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %cs.i, align 4, !annotation !134
  %call.i182 = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %child.0193, ptr noundef nonnull @.str.41, i32 noundef %mul.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %cmp113.i = icmp sgt i32 %call.i182, 0
  br i1 %cmp113.i, label %if.end89.for.body.i_crit_edge, label %if.end89.do.end95.sink.split_crit_edge

if.end89.do.end95.sink.split_crit_edge:           ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end95.sink.split

if.end89.for.body.i_crit_edge:                    ; preds = %if.end89
  br label %for.body.i

for.body.i:                                       ; preds = %if.end9.i.for.body.i_crit_edge, %if.end89.for.body.i_crit_edge
  %i.0115.i = phi i32 [ %inc14.i, %if.end9.i.for.body.i_crit_edge ], [ 0, %if.end89.for.body.i_crit_edge ]
  %numcs.0114.i = phi i32 [ %spec.select.i, %if.end9.i.for.body.i_crit_edge ], [ 0, %if.end89.for.body.i_crit_edge ]
  %mul3.i = mul i32 %i.0115.i, %add
  %call4.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %child.0193, ptr noundef nonnull @.str.41, i32 noundef %mul3.i, ptr noundef nonnull %cs.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i183 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i183, label %if.end.i184, label %for.body.i.do.end95_crit_edge

for.body.i.do.end95_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end95

if.end.i184:                                      ; preds = %for.body.i
  %47 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %48)
  %cmp5.i = icmp ugt i32 %48, 7
  br i1 %cmp5.i, label %if.end.i184.do.end95.sink.split_crit_edge, label %lor.lhs.false.i

if.end.i184.do.end95.sink.split_crit_edge:        ; preds = %if.end.i184
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end95.sink.split

lor.lhs.false.i:                                  ; preds = %if.end.i184
  %49 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %caps, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %shl.i = shl nuw nsw i32 1, %48
  %and.i = and i32 %52, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false.i.do.end95.sink.split_crit_edge, label %if.end9.i

lor.lhs.false.i.do.end95.sink.split_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end95.sink.split

if.end9.i:                                        ; preds = %lor.lhs.false.i
  %call10.i = call i32 @_test_and_set_bit(i32 noundef %48, ptr noundef nonnull %cslines.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  %inc.i = zext i1 %tobool11.not.i to i32
  %spec.select.i = add i32 %numcs.0114.i, %inc.i
  %inc14.i = add nuw nsw i32 %i.0115.i, 1
  %exitcond.not.i = icmp eq i32 %inc14.i, %call.i182
  br i1 %exitcond.not.i, label %for.end.i, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool15.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %tobool15.not.i, label %for.end.i.do.end95.sink.split_crit_edge, label %if.end20.i

for.end.i.do.end95.sink.split_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end95.sink.split

if.end20.i:                                       ; preds = %for.end.i
  %53 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev8, align 4
  %55 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select.i, i32 24) #7
  %56 = extractvalue { i32, i1 } %55, 1
  %57 = extractvalue { i32, i1 } %55, 0
  %spec.select.i.i = call i32 @llvm.uadd.sat.i32(i32 %57, i32 20) #7
  %retval.0.i.i = select i1 %56, i32 -1, i32 %spec.select.i.i
  %call.i.i185 = call noalias ptr @devm_kmalloc(ptr noundef %54, i32 noundef %retval.0.i.i, i32 noundef 3520) #7
  %tobool24.not.i = icmp eq ptr %call.i.i185, null
  br i1 %tobool24.not.i, label %if.end20.i.do.end95_crit_edge, label %if.end26.i

if.end20.i.do.end95_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end95

if.end26.i:                                       ; preds = %if.end20.i
  %ebi27.i = getelementptr inbounds %struct.atmel_ebi_dev, ptr %call.i.i185, i32 0, i32 1
  %58 = ptrtoint ptr %ebi27.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i, ptr %ebi27.i, align 4
  %numcs28.i = getelementptr inbounds %struct.atmel_ebi_dev, ptr %call.i.i185, i32 0, i32 3
  %59 = ptrtoint ptr %numcs28.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %spec.select.i, ptr %numcs28.i, align 4
  %xlate_config.i = getelementptr inbounds %struct.atmel_ebi_caps, ptr %41, i32 0, i32 4
  %60 = ptrtoint ptr %xlate_config.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %xlate_config.i, align 4
  %call29.i = call i32 %61(ptr noundef nonnull %call.i.i185, ptr noundef nonnull %child.0193, ptr noundef nonnull %conf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %if.end26.i.do.end95_crit_edge, label %if.else.i

if.end26.i.do.end95_crit_edge:                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end95

if.else.i:                                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool32.not.i = icmp eq i32 %call29.i, 0
  %call36.i = call i32 @_find_next_bit_be(ptr noundef nonnull %cslines.i, i32 noundef 8, i32 noundef 0) #7
  %62 = ptrtoint ptr %cs.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call36.i, ptr %cs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call36.i)
  %cmp38116.i = icmp ult i32 %call36.i, 8
  br i1 %cmp38116.i, label %for.body39.lr.ph.i, label %if.else.i.for.end59.i_crit_edge

if.else.i.for.end59.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end59.i

for.body39.lr.ph.i:                               ; preds = %if.else.i
  %apply_config.i = getelementptr inbounds %struct.atmel_ebi_caps, ptr %41, i32 0, i32 5
  %get_config.i = getelementptr inbounds %struct.atmel_ebi_caps, ptr %41, i32 0, i32 3
  br label %for.body39.i

for.body39.i:                                     ; preds = %if.end55.i.for.body39.i_crit_edge, %for.body39.lr.ph.i
  %i.1118.i = phi i32 [ 0, %for.body39.lr.ph.i ], [ %inc56.i, %if.end55.i.for.body39.i_crit_edge ]
  %storemerge117.i = phi i32 [ %call36.i, %for.body39.lr.ph.i ], [ %call58.i, %if.end55.i.for.body39.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.atmel_ebi_dev, ptr %call.i.i185, i32 0, i32 4, i32 %i.1118.i
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %storemerge117.i, ptr %arrayidx.i, align 4
  br i1 %tobool32.not.i, label %for.body39.i.if.end44.i_crit_edge, label %if.then42.i

for.body39.i.if.end44.i_crit_edge:                ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

if.then42.i:                                      ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %conf.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %storemerge117.i, ptr %conf.i, align 4
  %65 = ptrtoint ptr %apply_config.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %apply_config.i, align 4
  call void %66(ptr noundef nonnull %call.i.i185, ptr noundef nonnull %conf.i) #7
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then42.i, %for.body39.i.if.end44.i_crit_edge
  %67 = ptrtoint ptr %get_config.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %get_config.i, align 4
  call void %68(ptr noundef nonnull %call.i.i185, ptr noundef %arrayidx.i) #7
  %69 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %caps, align 4
  %ebi_csa_offs.i = getelementptr inbounds %struct.atmel_ebi_caps, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %ebi_csa_offs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ebi_csa_offs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool48.not.i = icmp eq i32 %72, 0
  %brmerge.i = select i1 %tobool48.not.i, i1 true, i1 %tobool32.not.i
  br i1 %brmerge.i, label %if.end44.i.if.end55.i_crit_edge, label %if.then50.i

if.end44.i.if.end55.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

if.then50.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap.i, align 4
  %75 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cs.i, align 4
  %shl53.i = shl nuw i32 1, %76
  %call.i109.i = call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef %72, i32 noundef %shl53.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then50.i, %if.end44.i.if.end55.i_crit_edge
  %inc56.i = add i32 %i.1118.i, 1
  %77 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cs.i, align 4
  %add.i = add i32 %78, 1
  %call58.i = call i32 @_find_next_bit_be(ptr noundef nonnull %cslines.i, i32 noundef 8, i32 noundef %add.i) #7
  %79 = ptrtoint ptr %cs.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %call58.i, ptr %cs.i, align 4
  %cmp38.i = icmp ult i32 %call58.i, 8
  br i1 %cmp38.i, label %if.end55.i.for.body39.i_crit_edge, label %if.end55.i.for.end59.i_crit_edge

if.end55.i.for.end59.i_crit_edge:                 ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end59.i

if.end55.i.for.body39.i_crit_edge:                ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body39.i

for.end59.i:                                      ; preds = %if.end55.i.for.end59.i_crit_edge, %if.else.i.for.end59.i_crit_edge
  %80 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i185, ptr noundef %81, ptr noundef %devs) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end59.i.atmel_ebi_dev_setup.exit_crit_edge

for.end59.i.atmel_ebi_dev_setup.exit_crit_edge:   ; preds = %for.end59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_ebi_dev_setup.exit

if.end.i.i.i:                                     ; preds = %for.end59.i
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i.i185, ptr %prev.i, align 4
  %83 = ptrtoint ptr %call.i.i185 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %devs, ptr %call.i.i185, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i185, i32 0, i32 1
  %84 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %81, ptr %prev3.i.i.i, align 4
  %85 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %call.i.i185, ptr %81, align 4
  br label %atmel_ebi_dev_setup.exit

atmel_ebi_dev_setup.exit:                         ; preds = %if.end.i.i.i, %for.end59.i.atmel_ebi_dev_setup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cslines.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %conf.i) #7
  br label %for.inc

do.end95.sink.split:                              ; preds = %for.end.i.do.end95.sink.split_crit_edge, %lor.lhs.false.i.do.end95.sink.split_crit_edge, %if.end.i184.do.end95.sink.split_crit_edge, %if.end89.do.end95.sink.split_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.45, ptr noundef nonnull %child.0193) #10
  br label %do.end95

do.end95:                                         ; preds = %do.end95.sink.split, %if.end26.i.do.end95_crit_edge, %if.end20.i.do.end95_crit_edge, %for.body.i.do.end95_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cslines.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %conf.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43, ptr noundef nonnull %child.0193) #10
  %call96 = call fastcc i32 @atmel_ebi_dev_disable(ptr noundef nonnull %call.i, ptr noundef nonnull %child.0193)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %do.end95.for.inc_crit_edge, label %if.then98

do.end95.for.inc_crit_edge:                       ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then98:                                        ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef nonnull %child.0193) #7
  br label %cleanup

for.inc:                                          ; preds = %do.end95.for.inc_crit_edge, %atmel_ebi_dev_setup.exit, %for.body.for.inc_crit_edge
  %call101 = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %child.0193) #7
  %cmp85.not = icmp eq ptr %call101, null
  br i1 %cmp85.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end83.for.end_crit_edge
  %call102 = call i32 @of_platform_populate(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef %dev1) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then98, %do.end82, %do.end, %if.then68, %if.then3.i, %if.end53.cleanup_crit_edge, %if.then42.cleanup_crit_edge, %if.then31, %if.then21, %if.then11, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then11 ], [ %20, %if.then21 ], [ %22, %if.then31 ], [ %35, %if.then68 ], [ %call.i.i, %do.end ], [ %call.i.i181, %do.end82 ], [ %call96, %if.then98 ], [ %call102, %for.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %24, %if.then42.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i176, %if.end53.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91sam9_ebi_get_config(ptr nocapture noundef readonly %ebid, ptr noundef %conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ebi = getelementptr inbounds %struct.atmel_ebi_dev, ptr %ebid, i32 0, i32 1
  %0 = ptrtoint ptr %ebi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ebi, align 4
  %smc = getelementptr inbounds %struct.atmel_ebi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %smc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smc, align 4
  %4 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %conf, align 4
  %smcconf = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %conf, i32 0, i32 1
  tail call void @atmel_smc_cs_conf_get(ptr noundef %3, i32 noundef %5, ptr noundef %smcconf) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ebi_xslate_smc_config(ptr nocapture noundef readonly %ebid, ptr noundef %np, ptr noundef %conf) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %tmp_str = alloca ptr, align 4
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %smcconf1 = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %conf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_str) #7
  %0 = ptrtoint ptr %tmp_str to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmp_str, align 4, !annotation !134
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tmp, align 4, !annotation !134
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.2, ptr noundef nonnull %tmp, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tmp, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.then.cleanup_crit_edge [
    i32 8, label %if.then.if.end_crit_edge
    i32 16, label %if.then.if.end.sink.split_crit_edge
    i32 32, label %sw.bb5
  ]

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb5:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %sw.bb5, %if.then.if.end.sink.split_crit_edge
  %.sink143 = phi i32 [ 8192, %sw.bb5 ], [ 4096, %if.then.if.end.sink.split_crit_edge ]
  %mode6 = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %conf, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %mode6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode6, align 4
  %or4 = or i32 %6, %.sink143
  store i32 %or4, ptr %mode6, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.3, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end.if.end12_crit_edge, label %if.then9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mode10 = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %conf, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %mode10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode10, align 4
  %or11 = or i32 %8, 1048576
  store i32 %or11, ptr %mode10, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  %required.1.off0 = phi i1 [ true, %if.then9 ], [ %tobool.not, %if.end.if.end12_crit_edge ]
  %9 = ptrtoint ptr %tmp_str to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %tmp_str, align 4
  %call13 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.4, ptr noundef nonnull %tmp_str) #7
  %10 = ptrtoint ptr %tmp_str to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tmp_str, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %if.end12.if.end20_crit_edge, label %land.lhs.true

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end12
  %call15 = call i32 @strcmp(ptr noundef nonnull %11, ptr noundef nonnull dereferenceable(6) @.str.5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %mode18 = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %conf, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %mode18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode18, align 4
  %or19 = or i32 %13, 256
  store i32 %or19, ptr %mode18, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %land.lhs.true.if.end20_crit_edge, %if.end12.if.end20_crit_edge
  %required.2.off0 = phi i1 [ %required.1.off0, %land.lhs.true.if.end20_crit_edge ], [ true, %if.then17 ], [ %required.1.off0, %if.end12.if.end20_crit_edge ]
  %14 = ptrtoint ptr %tmp_str to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %tmp_str, align 4
  %call21 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.6, ptr noundef nonnull %tmp_str) #7
  %15 = ptrtoint ptr %tmp_str to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tmp_str, align 4
  %tobool22.not = icmp eq ptr %16, null
  br i1 %tobool22.not, label %if.end20.if.end29_crit_edge, label %land.lhs.true23

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true23:                                  ; preds = %if.end20
  %call24 = call i32 @strcmp(ptr noundef nonnull %16, ptr noundef nonnull dereferenceable(4) @.str.7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %land.lhs.true23.if.end29_crit_edge

land.lhs.true23.if.end29_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then26:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #9
  %mode27 = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %conf, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %mode27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode27, align 4
  %or28 = or i32 %18, 1
  store i32 %or28, ptr %mode27, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %land.lhs.true23.if.end29_crit_edge, %if.end20.if.end29_crit_edge
  %required.3.off0 = phi i1 [ %required.2.off0, %land.lhs.true23.if.end29_crit_edge ], [ true, %if.then26 ], [ %required.2.off0, %if.end20.if.end29_crit_edge ]
  %19 = ptrtoint ptr %tmp_str to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %tmp_str, align 4
  %call30 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.8, ptr noundef nonnull %tmp_str) #7
  %20 = ptrtoint ptr %tmp_str to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tmp_str, align 4
  %tobool31.not = icmp eq ptr %21, null
  br i1 %tobool31.not, label %if.end29.if.end38_crit_edge, label %land.lhs.true32

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

land.lhs.true32:                                  ; preds = %if.end29
  %call33 = call i32 @strcmp(ptr noundef nonnull %21, ptr noundef nonnull dereferenceable(4) @.str.9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then35, label %land.lhs.true32.if.end38_crit_edge

land.lhs.true32.if.end38_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then35:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #9
  %mode36 = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %conf, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %mode36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mode36, align 4
  %or37 = or i32 %23, 2
  store i32 %or37, ptr %mode36, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %land.lhs.true32.if.end38_crit_edge, %if.end29.if.end38_crit_edge
  %required.4.off0 = phi i1 [ %required.3.off0, %land.lhs.true32.if.end38_crit_edge ], [ true, %if.then35 ], [ %required.3.off0, %if.end29.if.end38_crit_edge ]
  %24 = ptrtoint ptr %tmp_str to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %tmp_str, align 4
  %call39 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.10, ptr noundef nonnull %tmp_str) #7
  %25 = ptrtoint ptr %tmp_str to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tmp_str, align 4
  %tobool40.not = icmp eq ptr %26, null
  br i1 %tobool40.not, label %if.end38.if.end59_crit_edge, label %if.then41

if.end38.if.end59_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then41:                                        ; preds = %if.end38
  %call42 = call i32 @strcmp(ptr noundef nonnull %26, ptr noundef nonnull dereferenceable(7) @.str.11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then41.if.end59.sink.split_crit_edge, label %if.else

if.then41.if.end59.sink.split_crit_edge:          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.sink.split

if.else:                                          ; preds = %if.then41
  %call47 = call i32 @strcmp(ptr noundef nonnull %26, ptr noundef nonnull dereferenceable(6) @.str.12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.else.if.end59.sink.split_crit_edge, label %if.else52

if.else.if.end59.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.sink.split

if.else52:                                        ; preds = %if.else
  %call53 = call i32 @strcmp(ptr noundef nonnull %26, ptr noundef nonnull dereferenceable(9) @.str.13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.else52.if.end59_crit_edge, label %if.else52.cleanup_crit_edge

if.else52.cleanup_crit_edge:                      ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else52.if.end59_crit_edge:                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.end59.sink.split:                              ; preds = %if.else.if.end59.sink.split_crit_edge, %if.then41.if.end59.sink.split_crit_edge
  %.sink145 = phi i32 [ 32, %if.then41.if.end59.sink.split_crit_edge ], [ 48, %if.else.if.end59.sink.split_crit_edge ]
  %mode50 = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %conf, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %mode50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mode50, align 4
  %or46 = or i32 %28, %.sink145
  store i32 %or46, ptr %mode50, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.end59.sink.split, %if.else52.if.end59_crit_edge, %if.end38.if.end59_crit_edge
  %required.5.off0 = phi i1 [ %required.4.off0, %if.end38.if.end59_crit_edge ], [ true, %if.else52.if.end59_crit_edge ], [ true, %if.end59.sink.split ]
  %call.i.i138 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.14, ptr noundef nonnull %tmp, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i138)
  %tobool61.not = icmp sgt i32 %call.i.i138, -1
  br i1 %tobool61.not, label %if.then62, label %if.end59.if.end79_crit_edge

if.end59.if.end79_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then62:                                        ; preds = %if.end59
  %29 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tmp, align 4
  %31 = add i32 %30, -4
  %32 = call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 30)
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %32, label %if.then62.cleanup_crit_edge [
    i32 0, label %if.then62.sw.epilog76_crit_edge
    i32 1, label %if.then62.sw.epilog76.sink.split_crit_edge
    i32 3, label %sw.bb69
    i32 7, label %sw.bb72
  ]

if.then62.sw.epilog76.sink.split_crit_edge:       ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog76.sink.split

if.then62.sw.epilog76_crit_edge:                  ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog76

if.then62.cleanup_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb69:                                          ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog76.sink.split

sw.bb72:                                          ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog76.sink.split

sw.epilog76.sink.split:                           ; preds = %sw.bb72, %sw.bb69, %if.then62.sw.epilog76.sink.split_crit_edge
  %.sink147 = phi i32 [ 805306368, %sw.bb72 ], [ 536870912, %sw.bb69 ], [ 268435456, %if.then62.sw.epilog76.sink.split_crit_edge ]
  %mode67 = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %conf, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %mode67 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mode67, align 4
  %or74 = or i32 %35, %.sink147
  store i32 %or74, ptr %mode67, align 4
  br label %sw.epilog76

sw.epilog76:                                      ; preds = %sw.epilog76.sink.split, %if.then62.sw.epilog76_crit_edge
  %mode77 = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %conf, i32 0, i32 1, i32 4
  %36 = ptrtoint ptr %mode77 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mode77, align 4
  %or78 = or i32 %37, 16777216
  store i32 %or78, ptr %mode77, align 4
  br label %if.end79

if.end79:                                         ; preds = %sw.epilog76, %if.end59.if.end79_crit_edge
  %required.6.off0 = phi i1 [ %required.5.off0, %if.end59.if.end79_crit_edge ], [ true, %sw.epilog76 ]
  %ebi.i = getelementptr inbounds %struct.atmel_ebi_dev, ptr %ebid, i32 0, i32 1
  %38 = ptrtoint ptr %ebi.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ebi.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %call.i139 = call i32 @clk_get_rate(ptr noundef %41) #7
  %div.i = udiv i32 1000000000, %call.i139
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %42 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %val.i, align 4, !annotation !134
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.20, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end8_crit_edge.i

entry.if.end8_crit_edge.i:                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i = add nsw i32 %div.i, -1
  br label %if.end8.i

if.then.i:                                        ; preds = %if.end79
  %43 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val.i, align 4
  %add.i = add nsw i32 %div.i, -1
  %sub.i = add i32 %44, %add.i
  %div2.i = udiv i32 %sub.i, %div.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %div2.i)
  %cmp.i = icmp ugt i32 %div2.i, 16
  br i1 %cmp.i, label %if.then.i.atmel_ebi_xslate_smc_timings.exit_crit_edge, label %if.end.i

if.then.i.atmel_ebi_xslate_smc_timings.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_ebi_xslate_smc_timings.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %sub.i)
  %cmp4.i = icmp ugt i32 %div.i, %sub.i
  %div2.op.i = shl nuw nsw i32 %div2.i, 16
  %div2.op.op.i = add nsw i32 %div2.op.i, -65536
  %shl.i = select i1 %cmp4.i, i32 0, i32 %div2.op.op.i
  %mode.i = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %conf, i32 0, i32 1, i32 4
  %45 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mode.i, align 4
  %or.i = or i32 %46, %shl.i
  store i32 %or.i, ptr %mode.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i, %entry.if.end8_crit_edge.i
  %add19.pre-phi.i = phi i32 [ %.pre.i, %entry.if.end8_crit_edge.i ], [ %add.i, %if.end.i ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %if.end8.i
  %i.069.i = phi i32 [ 0, %if.end8.i ], [ %i.069.i.be, %for.body.i.backedge ]
  %arrayidx.i = getelementptr [10 x %struct.atmel_smc_timing_xlate], ptr @timings_xlate_table, i32 0, i32 %i.069.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i60.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef %48, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i60.i)
  %tobool11.not.i = icmp sgt i32 %call.i.i60.i, -1
  br i1 %tobool11.not.i, label %if.end15.i, label %if.then12.i

if.then12.i:                                      ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.069.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %if.then12.i.atmel_ebi_xslate_smc_timings.exit_crit_edge, label %if.then12.i.for.body.i.backedge_crit_edge

if.then12.i.for.body.i.backedge_crit_edge:        ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.backedge

if.then12.i.atmel_ebi_xslate_smc_timings.exit_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_ebi_xslate_smc_timings.exit

if.end15.i:                                       ; preds = %for.body.i
  br i1 %tobool.not.i, label %if.end18.i, label %if.end15.i.atmel_ebi_xslate_smc_timings.exit_crit_edge

if.end15.i.atmel_ebi_xslate_smc_timings.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_ebi_xslate_smc_timings.exit

if.end18.i:                                       ; preds = %if.end15.i
  %49 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val.i, align 4
  %sub20.i = add i32 %50, %add19.pre-phi.i
  %div21.i = udiv i32 %sub20.i, %div.i
  %converter.i = getelementptr [10 x %struct.atmel_smc_timing_xlate], ptr @timings_xlate_table, i32 0, i32 %i.069.i, i32 1
  %51 = ptrtoint ptr %converter.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %converter.i, align 4
  %shift.i = getelementptr [10 x %struct.atmel_smc_timing_xlate], ptr @timings_xlate_table, i32 0, i32 %i.069.i, i32 2
  %53 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %shift.i, align 4
  %call22.i = call i32 %52(ptr noundef %smcconf1, i32 noundef %54, i32 noundef %div21.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %for.inc.thread.i, label %if.end18.i.atmel_ebi_xslate_smc_timings.exit_crit_edge

if.end18.i.atmel_ebi_xslate_smc_timings.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_ebi_xslate_smc_timings.exit

for.inc.thread.i:                                 ; preds = %if.end18.i
  %inc72.i = add nuw nsw i32 %i.069.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc72.i)
  %exitcond.not73.i = icmp eq i32 %inc72.i, 10
  br i1 %exitcond.not73.i, label %atmel_ebi_xslate_smc_timings.exit.thread, label %for.inc.thread.i.for.body.i.backedge_crit_edge

for.inc.thread.i.for.body.i.backedge_crit_edge:   ; preds = %for.inc.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.backedge

for.body.i.backedge:                              ; preds = %for.inc.thread.i.for.body.i.backedge_crit_edge, %if.then12.i.for.body.i.backedge_crit_edge
  %i.069.i.be = phi i32 [ %inc72.i, %for.inc.thread.i.for.body.i.backedge_crit_edge ], [ %inc.i, %if.then12.i.for.body.i.backedge_crit_edge ]
  br label %for.body.i

atmel_ebi_xslate_smc_timings.exit.thread:         ; preds = %for.inc.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = xor i32 %call.i.i.i, -1
  %call.i.i.lobit.not.i = lshr i32 %55, 31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end83

atmel_ebi_xslate_smc_timings.exit:                ; preds = %if.end18.i.atmel_ebi_xslate_smc_timings.exit_crit_edge, %if.end15.i.atmel_ebi_xslate_smc_timings.exit_crit_edge, %if.then12.i.atmel_ebi_xslate_smc_timings.exit_crit_edge, %if.then.i.atmel_ebi_xslate_smc_timings.exit_crit_edge
  %ret.267.i = phi i32 [ -22, %if.then.i.atmel_ebi_xslate_smc_timings.exit_crit_edge ], [ %call22.i, %if.end18.i.atmel_ebi_xslate_smc_timings.exit_crit_edge ], [ -22, %if.end15.i.atmel_ebi_xslate_smc_timings.exit_crit_edge ], [ %call.i.i60.i, %if.then12.i.atmel_ebi_xslate_smc_timings.exit_crit_edge ]
  %56 = ptrtoint ptr %ebi.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ebi.i, align 4
  %dev.i = getelementptr inbounds %struct.atmel_ebi, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.21, ptr noundef %np) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.267.i)
  %cmp = icmp slt i32 %ret.267.i, 0
  br i1 %cmp, label %atmel_ebi_xslate_smc_timings.exit.cleanup_crit_edge, label %atmel_ebi_xslate_smc_timings.exit.if.end83_crit_edge

atmel_ebi_xslate_smc_timings.exit.if.end83_crit_edge: ; preds = %atmel_ebi_xslate_smc_timings.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

atmel_ebi_xslate_smc_timings.exit.cleanup_crit_edge: ; preds = %atmel_ebi_xslate_smc_timings.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end83:                                         ; preds = %atmel_ebi_xslate_smc_timings.exit.if.end83_crit_edge, %atmel_ebi_xslate_smc_timings.exit.thread
  %retval.0.i142 = phi i32 [ %call.i.i.lobit.not.i, %atmel_ebi_xslate_smc_timings.exit.thread ], [ %ret.267.i, %atmel_ebi_xslate_smc_timings.exit.if.end83_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i142)
  %cmp84.not = icmp eq i32 %retval.0.i142, 0
  %brmerge = select i1 %cmp84.not, i1 true, i1 %required.6.off0
  %brmerge.not = xor i1 %brmerge, true
  %60 = select i1 %cmp84.not, i1 %required.6.off0, i1 false
  %or.cond = select i1 %brmerge.not, i1 true, i1 %60
  br i1 %or.cond, label %do.end, label %if.end91

do.end:                                           ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %ebi.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ebi.i, align 4
  %dev = getelementptr inbounds %struct.atmel_ebi, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.15, ptr noundef %np) #10
  br label %cleanup

if.end91:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i1 %required.6.off0 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %do.end, %atmel_ebi_xslate_smc_timings.exit.cleanup_crit_edge, %if.then62.cleanup_crit_edge, %if.else52.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end91 ], [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else52.cleanup_crit_edge ], [ -22, %if.then62.cleanup_crit_edge ], [ -22, %atmel_ebi_xslate_smc_timings.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_str) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91sam9_ebi_apply_config(ptr nocapture noundef readonly %ebid, ptr noundef %conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ebi = getelementptr inbounds %struct.atmel_ebi_dev, ptr %ebid, i32 0, i32 1
  %0 = ptrtoint ptr %ebi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ebi, align 4
  %smc = getelementptr inbounds %struct.atmel_ebi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %smc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smc, align 4
  %4 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %conf, align 4
  %smcconf = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %conf, i32 0, i32 1
  tail call void @atmel_smc_cs_conf_apply(ptr noundef %3, i32 noundef %5, ptr noundef %smcconf) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_smc_cs_conf_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_smc_cs_conf_set_setup(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_smc_cs_conf_set_pulse(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_smc_cs_conf_set_cycle(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_smc_cs_conf_apply(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sama5_ebi_get_config(ptr nocapture noundef readonly %ebid, ptr noundef %conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ebi = getelementptr inbounds %struct.atmel_ebi_dev, ptr %ebid, i32 0, i32 1
  %0 = ptrtoint ptr %ebi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ebi, align 4
  %smc = getelementptr inbounds %struct.atmel_ebi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %smc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smc, align 4
  %layout = getelementptr inbounds %struct.atmel_ebi, ptr %1, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %layout, align 4
  %6 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %conf, align 4
  %smcconf = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %conf, i32 0, i32 1
  tail call void @atmel_hsmc_cs_conf_get(ptr noundef %3, ptr noundef %5, i32 noundef %7, ptr noundef %smcconf) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sama5_ebi_apply_config(ptr nocapture noundef readonly %ebid, ptr noundef %conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ebi = getelementptr inbounds %struct.atmel_ebi_dev, ptr %ebid, i32 0, i32 1
  %0 = ptrtoint ptr %ebi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ebi, align 4
  %smc = getelementptr inbounds %struct.atmel_ebi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %smc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smc, align 4
  %layout = getelementptr inbounds %struct.atmel_ebi, ptr %1, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %layout, align 4
  %6 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %conf, align 4
  %smcconf = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %conf, i32 0, i32 1
  tail call void @atmel_hsmc_cs_conf_apply(ptr noundef %3, ptr noundef %5, i32 noundef %7, ptr noundef %smcconf) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_hsmc_cs_conf_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_hsmc_cs_conf_apply(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ebi_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %devs = getelementptr inbounds %struct.atmel_ebi, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %2)
  %ebid.023 = load ptr, ptr %devs, align 4
  %cmp.not24 = icmp eq ptr %ebid.023, %devs
  br i1 %cmp.not24, label %entry.for.end12_crit_edge, label %entry.for.cond2.preheader_crit_edge

entry.for.cond2.preheader_crit_edge:              ; preds = %entry
  br label %for.cond2.preheader

entry.for.end12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end12

for.cond.loopexit:                                ; preds = %for.body4.for.cond.loopexit_crit_edge, %for.cond2.preheader.for.cond.loopexit_crit_edge
  %3 = ptrtoint ptr %ebid.025 to i32
  call void @__asan_load4_noabort(i32 %3)
  %ebid.0 = load ptr, ptr %ebid.025, align 4
  %cmp.not = icmp eq ptr %ebid.0, %devs
  br i1 %cmp.not, label %for.cond.loopexit.for.end12_crit_edge, label %for.cond.loopexit.for.cond2.preheader_crit_edge

for.cond.loopexit.for.cond2.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond2.preheader

for.cond.loopexit.for.end12_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end12

for.cond2.preheader:                              ; preds = %for.cond.loopexit.for.cond2.preheader_crit_edge, %entry.for.cond2.preheader_crit_edge
  %ebid.025 = phi ptr [ %ebid.0, %for.cond.loopexit.for.cond2.preheader_crit_edge ], [ %ebid.023, %entry.for.cond2.preheader_crit_edge ]
  %numcs = getelementptr inbounds %struct.atmel_ebi_dev, ptr %ebid.025, i32 0, i32 3
  %4 = ptrtoint ptr %numcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %numcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp321 = icmp sgt i32 %5, 0
  br i1 %cmp321, label %for.body4.lr.ph, label %for.cond2.preheader.for.cond.loopexit_crit_edge

for.cond2.preheader.for.cond.loopexit_crit_edge:  ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %ebi5 = getelementptr inbounds %struct.atmel_ebi_dev, ptr %ebid.025, i32 0, i32 1
  br label %for.body4

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body4.lr.ph
  %i.022 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %for.body4.for.body4_crit_edge ]
  %6 = ptrtoint ptr %ebi5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ebi5, align 4
  %caps = getelementptr inbounds %struct.atmel_ebi, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %caps, align 4
  %apply_config = getelementptr inbounds %struct.atmel_ebi_caps, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %apply_config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %apply_config, align 4
  %arrayidx = getelementptr %struct.atmel_ebi_dev, ptr %ebid.025, i32 0, i32 4, i32 %i.022
  tail call void %11(ptr noundef %ebid.025, ptr noundef %arrayidx) #7
  %inc = add nuw nsw i32 %i.022, 1
  %12 = ptrtoint ptr %numcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %numcs, align 4
  %cmp3 = icmp slt i32 %inc, %13
  br i1 %cmp3, label %for.body4.for.body4_crit_edge, label %for.body4.for.cond.loopexit_crit_edge

for.body4.for.cond.loopexit_crit_edge:            ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4

for.end12:                                        ; preds = %for.cond.loopexit.for.end12_crit_edge, %entry.for.end12_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atmel_hsmc_get_reg_layout(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_ebi_dev_disable(ptr nocapture noundef readonly %ebi, ptr noundef %np) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.atmel_ebi, ptr %ebi, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 64, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call noalias ptr @devm_kstrdup(ptr noundef %1, ptr noundef nonnull @.str.49, i32 noundef 3264) #7
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %call.i, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call noalias ptr @devm_kstrdup(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef 3264) #7
  %value = getelementptr inbounds %struct.property, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7, ptr %value, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %length = getelementptr inbounds %struct.property, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 9, ptr %length, align 4
  %call12 = tail call i32 @of_update_property(ptr noundef %np, ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_update_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !44, !45, !46, !48, !50, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !103, !104, !106, !108, !109, !111, !113, !114, !115, !117, !118, !119, !120, !122, !123}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @__initcall__kmod_atmel_ebi__170_637_atmel_ebi_driver_init6, !1, !"__initcall__kmod_atmel_ebi__170_637_atmel_ebi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/memory/atmel-ebi.c", i32 637, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/memory/atmel-ebi.c", i32 632, i32 11}
!4 = !{ptr @atmel_ebi_driver, !5, !"atmel_ebi_driver", i1 false, i1 false}
!5 = !{!"../drivers/memory/atmel-ebi.c", i32 630, i32 31}
!6 = !{ptr @atmel_ebi_id_table, !7, !"atmel_ebi_id_table", i1 false, i1 false}
!7 = !{!"../drivers/memory/atmel-ebi.c", i32 452, i32 34}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/memory/atmel-ebi.c", i32 376, i32 17}
!10 = !{ptr @at91sam9260_ebi_caps, !11, !"at91sam9260_ebi_caps", i1 false, i1 false}
!11 = !{!"../drivers/memory/atmel-ebi.c", i32 373, i32 36}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/memory/atmel-ebi.c", i32 181, i32 33}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/memory/atmel-ebi.c", i32 203, i32 32}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/memory/atmel-ebi.c", i32 209, i32 30}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/memory/atmel-ebi.c", i32 210, i32 34}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/memory/atmel-ebi.c", i32 216, i32 30}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/memory/atmel-ebi.c", i32 217, i32 34}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/memory/atmel-ebi.c", i32 223, i32 30}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/memory/atmel-ebi.c", i32 224, i32 34}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/memory/atmel-ebi.c", i32 230, i32 30}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/memory/atmel-ebi.c", i32 232, i32 24}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/memory/atmel-ebi.c", i32 234, i32 29}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/memory/atmel-ebi.c", i32 236, i32 28}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/memory/atmel-ebi.c", i32 242, i32 33}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/memory/atmel-ebi.c", i32 274, i32 3}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @atmel_ebi_xslate_smc_config._entry, !39, !"_entry", i1 false, i1 false}
!45 = !{ptr @atmel_ebi_xslate_smc_config._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/memory/atmel-ebi.c", i32 121, i32 33}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/memory/atmel-ebi.c", i32 162, i32 3}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @atmel_ebi_xslate_smc_timings._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @atmel_ebi_xslate_smc_timings._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/memory/atmel-ebi.c", i32 94, i32 2}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/memory/atmel-ebi.c", i32 96, i32 2}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/memory/atmel-ebi.c", i32 98, i32 2}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/memory/atmel-ebi.c", i32 99, i32 2}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/memory/atmel-ebi.c", i32 100, i32 2}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/memory/atmel-ebi.c", i32 102, i32 2}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/memory/atmel-ebi.c", i32 104, i32 2}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/memory/atmel-ebi.c", i32 105, i32 2}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/memory/atmel-ebi.c", i32 106, i32 2}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/memory/atmel-ebi.c", i32 107, i32 2}
!73 = !{ptr @timings_xlate_table, !74, !"timings_xlate_table", i1 false, i1 false}
!74 = !{!"../drivers/memory/atmel-ebi.c", i32 93, i32 44}
!75 = !{ptr @at91sam9261_ebi_caps, !76, !"at91sam9261_ebi_caps", i1 false, i1 false}
!76 = !{!"../drivers/memory/atmel-ebi.c", i32 382, i32 36}
!77 = !{ptr @at91sam9263_ebi0_caps, !78, !"at91sam9263_ebi0_caps", i1 false, i1 false}
!78 = !{!"../drivers/memory/atmel-ebi.c", i32 391, i32 36}
!79 = !{ptr @at91sam9263_ebi1_caps, !80, !"at91sam9263_ebi1_caps", i1 false, i1 false}
!80 = !{!"../drivers/memory/atmel-ebi.c", i32 400, i32 36}
!81 = !{ptr @at91sam9rl_ebi_caps, !82, !"at91sam9rl_ebi_caps", i1 false, i1 false}
!82 = !{!"../drivers/memory/atmel-ebi.c", i32 409, i32 36}
!83 = !{ptr @at91sam9g45_ebi_caps, !84, !"at91sam9g45_ebi_caps", i1 false, i1 false}
!84 = !{!"../drivers/memory/atmel-ebi.c", i32 418, i32 36}
!85 = !{ptr @at91sam9x5_ebi_caps, !86, !"at91sam9x5_ebi_caps", i1 false, i1 false}
!86 = !{!"../drivers/memory/atmel-ebi.c", i32 427, i32 36}
!87 = !{ptr @sama5d3_ebi_caps, !88, !"sama5d3_ebi_caps", i1 false, i1 false}
!88 = !{!"../drivers/memory/atmel-ebi.c", i32 436, i32 36}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/memory/atmel-ebi.c", i32 446, i32 17}
!91 = !{ptr @sam9x60_ebi_caps, !92, !"sam9x60_ebi_caps", i1 false, i1 false}
!92 = !{!"../drivers/memory/atmel-ebi.c", i32 443, i32 36}
!93 = !{ptr @atmel_ebi_pm_ops, !94, !"atmel_ebi_pm_ops", i1 false, i1 false}
!94 = !{!"../drivers/memory/atmel-ebi.c", i32 628, i32 8}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/memory/atmel-ebi.c", i32 544, i32 42}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/memory/atmel-ebi.c", i32 577, i32 33}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/memory/atmel-ebi.c", i32 579, i32 3}
!101 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @atmel_ebi_probe._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @atmel_ebi_probe._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/memory/atmel-ebi.c", i32 585, i32 33}
!106 = !{ptr @atmel_ebi_probe._entry.39, !107, !"_entry", i1 false, i1 false}
!107 = !{!"../drivers/memory/atmel-ebi.c", i32 587, i32 3}
!108 = !{ptr @atmel_ebi_probe._entry_ptr.40, !107, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/memory/atmel-ebi.c", i32 594, i32 32}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/memory/atmel-ebi.c", i32 599, i32 4}
!113 = !{ptr @atmel_ebi_probe._entry.42, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @atmel_ebi_probe._entry_ptr.44, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/memory/atmel-ebi.c", i32 318, i32 4}
!117 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @atmel_ebi_dev_setup._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @atmel_ebi_dev_setup._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @atmel_ebi_dev_setup._entry.47, !121, !"_entry", i1 false, i1 false}
!121 = !{!"../drivers/memory/atmel-ebi.c", i32 327, i32 3}
!122 = !{ptr @atmel_ebi_dev_setup._entry_ptr.48, !121, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/memory/atmel-ebi.c", i32 501, i32 36}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{!"auto-init"}
