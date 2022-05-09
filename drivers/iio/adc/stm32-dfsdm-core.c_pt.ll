; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/stm32-dfsdm-core.c_pt.bc'
source_filename = "../drivers/iio/adc/stm32-dfsdm-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+stm32_dfsdm_start_dfsdm\22, \22a\22\09"
module asm "\09.weak\09__crc_stm32_dfsdm_start_dfsdm\09\09\09\09"
module asm "\09.long\09__crc_stm32_dfsdm_start_dfsdm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stm32_dfsdm_start_dfsdm:\09\09\09\09\09"
module asm "\09.asciz \09\22stm32_dfsdm_start_dfsdm\22\09\09\09\09\09"
module asm "__kstrtabns_stm32_dfsdm_start_dfsdm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+stm32_dfsdm_stop_dfsdm\22, \22a\22\09"
module asm "\09.weak\09__crc_stm32_dfsdm_stop_dfsdm\09\09\09\09"
module asm "\09.long\09__crc_stm32_dfsdm_stop_dfsdm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stm32_dfsdm_stop_dfsdm:\09\09\09\09\09"
module asm "\09.asciz \09\22stm32_dfsdm_stop_dfsdm\22\09\09\09\09\09"
module asm "__kstrtabns_stm32_dfsdm_stop_dfsdm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.stm32_dfsdm_dev_data = type { i32, i32, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.stm32_dfsdm = type { ptr, i32, ptr, ptr, i32, ptr, i32, i32 }
%struct.dfsdm_priv = type { ptr, %struct.stm32_dfsdm, i32, %struct.atomic_t, ptr, ptr }

@stm32_dfsdm_start_dfsdm.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stm32_dfsdm_core\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stm32_dfsdm_start_dfsdm\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/iio/adc/stm32-dfsdm-core.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: n_active_ch %d\0A\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_stm32_dfsdm_start_dfsdm = external dso_local constant [0 x i8], align 1
@__kstrtabns_stm32_dfsdm_start_dfsdm = external dso_local constant [0 x i8], align 1
@__ksymtab_stm32_dfsdm_start_dfsdm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stm32_dfsdm_start_dfsdm to i32), ptr @__kstrtab_stm32_dfsdm_start_dfsdm, ptr @__kstrtabns_stm32_dfsdm_start_dfsdm }, section "___ksymtab_gpl+stm32_dfsdm_start_dfsdm", align 4
@stm32_dfsdm_stop_dfsdm.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.3, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32_dfsdm_stop_dfsdm\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_stm32_dfsdm_stop_dfsdm = external dso_local constant [0 x i8], align 1
@__kstrtabns_stm32_dfsdm_stop_dfsdm = external dso_local constant [0 x i8], align 1
@__ksymtab_stm32_dfsdm_stop_dfsdm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stm32_dfsdm_stop_dfsdm to i32), ptr @__kstrtab_stm32_dfsdm_stop_dfsdm, ptr @__kstrtabns_stm32_dfsdm_stop_dfsdm }, section "___ksymtab_gpl+stm32_dfsdm_stop_dfsdm", align 4
@__initcall__kmod_stm32_dfsdm_core__255_451_stm32_dfsdm_driver_init6 = internal global ptr @stm32_dfsdm_driver_init, section ".initcall6.init", align 4
@stm32_dfsdm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_dfsdm_probe, ptr @stm32_dfsdm_core_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_dfsdm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_dfsdm_core_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_dfsdm_driver_exit = internal global ptr @stm32_dfsdm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author256 = internal constant [67 x i8] c"stm32_dfsdm_core.author=Arnaud Pouliquen <arnaud.pouliquen@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description257 = internal constant [67 x i8] c"stm32_dfsdm_core.description=STMicroelectronics STM32 dfsdm driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file258 = internal constant [55 x i8] c"stm32_dfsdm_core.file=drivers/iio/adc/stm32-dfsdm-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [32 x i8] c"stm32_dfsdm_core.license=GPL v2\00", section ".modinfo", align 1
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stm32-dfsdm\00", [20 x i8] zeroinitializer }, align 32
@stm32_dfsdm_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-dfsdm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32h7_dfsdm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-dfsdm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32mp1_dfsdm_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@stm32_dfsdm_core_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_dfsdm_core_suspend, ptr @stm32_dfsdm_core_resume, ptr @stm32_dfsdm_core_suspend, ptr @stm32_dfsdm_core_resume, ptr @stm32_dfsdm_core_suspend, ptr @stm32_dfsdm_core_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_dfsdm_core_runtime_suspend, ptr @stm32_dfsdm_core_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@stm32_dfsdm_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dfsdm\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"stm32_dfsdm_core:333:(dev_data->regmap_cfg)->lock\00", [46 x i8] zeroinitializer }, align 32
@stm32_dfsdm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 337, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Failed to allocate regmap: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32_dfsdm_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_dfsdm_probe._entry_ptr = internal global ptr @stm32_dfsdm_probe._entry, section ".printk_index", align 4
@stm32_dfsdm_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.2, i32 345, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to start clock\0A\00", [41 x i8] zeroinitializer }, align 32
@stm32_dfsdm_probe._entry_ptr.14 = internal global ptr @stm32_dfsdm_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"audio\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi-max-frequency\00", [46 x i8] zeroinitializer }, align 32
@stm32_dfsdm_parse_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 268, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"spi-max-frequency not achievable\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stm32_dfsdm_parse_of\00", [43 x i8] zeroinitializer }, align 32
@stm32_dfsdm_parse_of._entry_ptr = internal global ptr @stm32_dfsdm_parse_of._entry, section ".printk_index", align 4
@stm32_dfsdm_parse_of._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 277, ptr @.str.22, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SPI clock not accurate\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@stm32_dfsdm_parse_of._entry_ptr.23 = internal global ptr @stm32_dfsdm_parse_of._entry.20, section ".printk_index", align 4
@stm32_dfsdm_parse_of._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.19, ptr @.str.2, i32 279, ptr @.str.22, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%ld = %d * %d + %d\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32_dfsdm_parse_of._entry_ptr.26 = internal global ptr @stm32_dfsdm_parse_of._entry.24, section ".printk_index", align 4
@stm32h7_dfsdm_data = internal constant { %struct.stm32_dfsdm_dev_data, [20 x i8] } { %struct.stm32_dfsdm_dev_data { i32 4, i32 8, ptr @stm32h7_dfsdm_regmap_cfg }, [20 x i8] zeroinitializer }, align 32
@stm32mp1_dfsdm_data = internal constant { %struct.stm32_dfsdm_dev_data, [20 x i8] } { %struct.stm32_dfsdm_dev_data { i32 6, i32 8, ptr @stm32mp1_dfsdm_regmap_cfg }, [20 x i8] zeroinitializer }, align 32
@stm32h7_dfsdm_regmap_cfg = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr @stm32_dfsdm_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 696, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@stm32mp1_dfsdm_regmap_cfg = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr @stm32_dfsdm_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 2044, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 165, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 207, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"stm32_dfsdm_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 441, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 445, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"stm32_dfsdm_of_match\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 285, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant [24 x i8] c"stm32_dfsdm_core_pm_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 433, i32 32 }
@___asan_gen_.54 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 331, i32 18 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 336, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 345, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 242, i32 10 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 244, i32 40 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 254, i32 48 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 268, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 277, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 278, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [19 x i8] c"stm32h7_dfsdm_data\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 62, i32 42 }
@___asan_gen_.120 = private unnamed_addr constant [20 x i8] c"stm32mp1_dfsdm_data\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 77, i32 42 }
@___asan_gen_.123 = private unnamed_addr constant [25 x i8] c"stm32h7_dfsdm_regmap_cfg\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 53, i32 35 }
@___asan_gen_.126 = private unnamed_addr constant [26 x i8] c"stm32mp1_dfsdm_regmap_cfg\00", align 1
@___asan_gen_.127 = private constant [38 x i8] c"../drivers/iio/adc/stm32-dfsdm-core.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 68, i32 35 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_description257, ptr @__UNIQUE_ID_file258, ptr @__UNIQUE_ID_license259, ptr @__exitcall_stm32_dfsdm_driver_exit, ptr @__initcall__kmod_stm32_dfsdm_core__255_451_stm32_dfsdm_driver_init6, ptr @__ksymtab_stm32_dfsdm_start_dfsdm, ptr @__ksymtab_stm32_dfsdm_stop_dfsdm, ptr @stm32_dfsdm_driver_exit, ptr @stm32_dfsdm_parse_of._entry, ptr @stm32_dfsdm_parse_of._entry.20, ptr @stm32_dfsdm_parse_of._entry.24, ptr @stm32_dfsdm_parse_of._entry_ptr, ptr @stm32_dfsdm_parse_of._entry_ptr.23, ptr @stm32_dfsdm_parse_of._entry_ptr.26, ptr @stm32_dfsdm_probe._entry, ptr @stm32_dfsdm_probe._entry.12, ptr @stm32_dfsdm_probe._entry_ptr, ptr @stm32_dfsdm_probe._entry_ptr.14, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @stm32_dfsdm_driver, ptr @.str.5, ptr @stm32_dfsdm_of_match, ptr @stm32_dfsdm_core_pm_ops, ptr @stm32_dfsdm_probe._key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @stm32h7_dfsdm_data, ptr @stm32mp1_dfsdm_data, ptr @stm32h7_dfsdm_regmap_cfg, ptr @stm32mp1_dfsdm_regmap_cfg], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_core_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_parse_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_parse_of._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dfsdm_parse_of._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_dfsdm_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp1_dfsdm_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_dfsdm_regmap_cfg to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp1_dfsdm_regmap_cfg to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stm32_dfsdm_start_dfsdm(ptr noundef %dfsdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dfsdm, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %spi_clk_out_div = getelementptr i8, ptr %dfsdm, i32 32
  %2 = ptrtoint ptr %spi_clk_out_div to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spi_clk_out_div, align 4
  %n_active_ch = getelementptr i8, ptr %dfsdm, i32 36
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_active_ch, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @llvm.prefetch.p0(ptr %n_active_ch, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_active_ch, ptr %n_active_ch, i32 1, ptr elementtype(i32) %n_active_ch) #8, !srcloc !84
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %if.then, label %entry.do.body77_crit_edge

entry.do.body77_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body77

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %if.then
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !86
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !87
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.error_ret_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.error_ret_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ret

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !88
  br label %error_ret

if.end:                                           ; preds = %if.then
  %aclk = getelementptr i8, ptr %dfsdm, i32 44
  %6 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aclk, align 4
  %tobool.not.not = icmp eq ptr %7, null
  %regmap = getelementptr inbounds %struct.stm32_dfsdm, ptr %dfsdm, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %shl = select i1 %tobool.not.not, i32 0, i32 1073741824
  %call.i116 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 0, i32 noundef 1073741824, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %cmp23 = icmp slt i32 %call.i116, 0
  br i1 %cmp23, label %if.end.pm_put_crit_edge, label %do.end47

if.end.pm_put_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_put

do.end47:                                         ; preds = %if.end
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %shl49 = shl i32 %3, 16
  %and50 = and i32 %shl49, 16711680
  %call.i117 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef 16711680, i32 noundef %and50, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %cmp52 = icmp slt i32 %call.i117, 0
  br i1 %cmp52, label %do.end47.pm_put_crit_edge, label %if.end54

do.end47.pm_put_crit_edge:                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_put

if.end54:                                         ; preds = %do.end47
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i118 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %cmp73 = icmp slt i32 %call.i118, 0
  br i1 %cmp73, label %if.end54.pm_put_crit_edge, label %if.end54.do.body77_crit_edge

if.end54.do.body77_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body77

if.end54.pm_put_crit_edge:                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_put

do.body77:                                        ; preds = %if.end54.do.body77_crit_edge, %entry.do.body77_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_dfsdm_start_dfsdm.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_dfsdm_start_dfsdm, %if.then83)) #8
          to label %cleanup [label %if.then83], !srcloc !89

if.then83:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i113 = tail call zeroext i1 @__kasan_check_read(ptr noundef %n_active_ch, i32 noundef 4) #8
  %14 = ptrtoint ptr %n_active_ch to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %n_active_ch, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_dfsdm_start_dfsdm.__UNIQUE_ID_ddebug243, ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %15) #8
  br label %cleanup

pm_put:                                           ; preds = %if.end54.pm_put_crit_edge, %do.end47.pm_put_crit_edge, %if.end.pm_put_crit_edge
  %ret.0 = phi i32 [ %call.i116, %if.end.pm_put_crit_edge ], [ %call.i117, %do.end47.pm_put_crit_edge ], [ %call.i118, %if.end54.pm_put_crit_edge ]
  %call.i119 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #8
  br label %error_ret

error_ret:                                        ; preds = %pm_put, %do.end11.i.i.i.i.i, %if.then.i.error_ret_crit_edge
  %ret.1 = phi i32 [ %ret.0, %pm_put ], [ %call.i, %if.then.i.error_ret_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  %call.i.i114 = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_active_ch, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %n_active_ch, i32 1, i32 3, i32 1) #8
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_active_ch, ptr %n_active_ch, i32 1, ptr elementtype(i32) %n_active_ch) #8, !srcloc !90
  br label %cleanup

cleanup:                                          ; preds = %error_ret, %if.then83, %do.body77
  %retval.0 = phi i32 [ %ret.1, %error_ret ], [ 0, %if.then83 ], [ 0, %do.body77 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stm32_dfsdm_stop_dfsdm(ptr noundef %dfsdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dfsdm, i32 -4
  %n_active_ch = getelementptr i8, ptr %dfsdm, i32 36
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_active_ch, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void @llvm.prefetch.p0(ptr %n_active_ch, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_active_ch, ptr %n_active_ch, i32 1, ptr elementtype(i32) %n_active_ch) #8, !srcloc !92
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.do.body39_crit_edge

entry.do.body39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body39

if.then:                                          ; preds = %entry
  %regmap = getelementptr inbounds %struct.stm32_dfsdm, ptr %dfsdm, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 0, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call.i62 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 0, i32 noundef 16711680, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %cmp34 = icmp slt i32 %call.i62, 0
  br i1 %cmp34, label %if.end.cleanup_crit_edge, label %if.end36

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %call.i63 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #8
  br label %do.body39

do.body39:                                        ; preds = %if.end36, %entry.do.body39_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_dfsdm_stop_dfsdm.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_dfsdm_stop_dfsdm, %if.then44)) #8
          to label %cleanup [label %if.then44], !srcloc !89

if.then44:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 4
  %dev46 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  %call.i.i61 = tail call zeroext i1 @__kasan_check_read(ptr noundef %n_active_ch, i32 noundef 4) #8
  %9 = ptrtoint ptr %n_active_ch to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %n_active_ch, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_dfsdm_stop_dfsdm.__UNIQUE_ID_ddebug254, ptr noundef %dev46, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %10) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %do.body39, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i62, %if.end.cleanup_crit_edge ], [ 0, %if.then44 ], [ 0, %do.body39 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_dfsdm_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_dfsdm_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_dfsdm_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %res.i = alloca ptr, align 4
  %spi_freq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 52, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %call.i, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %dfsdm4 = getelementptr inbounds %struct.dfsdm_priv, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call3, align 4
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 80) #8
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !94

devm_kcalloc.exit.thread:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %fl_list117 = getelementptr inbounds %struct.dfsdm_priv, ptr %call.i, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %fl_list117 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %fl_list117, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end
  %6 = extractvalue { i32, i1 } %3, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %6, i32 noundef 3520) #8
  %fl_list = getelementptr inbounds %struct.dfsdm_priv, ptr %call.i, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %fl_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5.i.i, ptr %fl_list, align 4
  %tobool8.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool8.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end10

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %devm_kcalloc.exit
  %8 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call3, align 4
  %num_fls = getelementptr inbounds %struct.dfsdm_priv, ptr %call.i, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %num_fls to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %num_fls, align 4
  %num_channels = getelementptr inbounds %struct.stm32_dfsdm_dev_data, ptr %call3, i32 0, i32 1
  %11 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_channels, align 4
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 16) #8
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %devm_kcalloc.exit105.thread, label %devm_kcalloc.exit105, !prof !94

devm_kcalloc.exit105.thread:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %ch_list120 = getelementptr inbounds %struct.dfsdm_priv, ptr %call.i, i32 0, i32 1, i32 5
  %15 = ptrtoint ptr %ch_list120 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %ch_list120, align 4
  br label %cleanup

devm_kcalloc.exit105:                             ; preds = %if.end10
  %16 = extractvalue { i32, i1 } %13, 0
  %call5.i.i102 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %16, i32 noundef 3520) #8
  %ch_list = getelementptr inbounds %struct.dfsdm_priv, ptr %call.i, i32 0, i32 1, i32 5
  %17 = ptrtoint ptr %ch_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i102, ptr %ch_list, align 4
  %tobool15.not = icmp eq ptr %call5.i.i102, null
  br i1 %tobool15.not, label %devm_kcalloc.exit105.cleanup_crit_edge, label %if.end17

devm_kcalloc.exit105.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit105
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %devm_kcalloc.exit105
  %18 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_channels, align 4
  %num_chs = getelementptr inbounds %struct.dfsdm_priv, ptr %call.i, i32 0, i32 1, i32 6
  %20 = ptrtoint ptr %num_chs to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %num_chs, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %21 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res.i) #8
  %23 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 -1 to ptr), ptr %res.i, align 4, !annotation !95
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %spi_freq.i) #8
  %24 = ptrtoint ptr %spi_freq.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %spi_freq.i, align 4, !annotation !95
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end17.stm32_dfsdm_parse_of.exit.thread125_crit_edge, label %if.end.i

if.end17.stm32_dfsdm_parse_of.exit.thread125_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_dfsdm_parse_of.exit.thread125

if.end.i:                                         ; preds = %if.end17
  %call.i106 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res.i) #8
  %25 = ptrtoint ptr %dfsdm4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i106, ptr %dfsdm4, align 4
  %cmp.i.i = icmp ugt ptr %call.i106, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then4.i, label %if.end8.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %call.i106 to i32
  br label %stm32_dfsdm_parse_of.exit

if.end8.i:                                        ; preds = %if.end.i
  %27 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %res.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %phys_base.i = getelementptr inbounds %struct.dfsdm_priv, ptr %call.i, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %phys_base.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %phys_base.i, align 4
  %call11.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #8
  %clk.i = getelementptr inbounds %struct.dfsdm_priv, ptr %call.i, i32 0, i32 4
  %32 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call11.i, ptr %clk.i, align 4
  %cmp.i102.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i102.i, label %if.then14.i, label %if.end19.i

if.then14.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %call11.i to i32
  %call18.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %33, ptr noundef nonnull @.str.15) #8
  br label %stm32_dfsdm_parse_of.exit

if.end19.i:                                       ; preds = %if.end8.i
  %call21.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.16) #8
  %aclk.i = getelementptr inbounds %struct.dfsdm_priv, ptr %call.i, i32 0, i32 5
  %34 = ptrtoint ptr %aclk.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call21.i, ptr %aclk.i, align 4
  %cmp.i103.i = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103.i, label %if.end26.thread.i, label %if.end26.i

if.end26.thread.i:                                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %aclk.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %aclk.i, align 4
  br label %if.else.i

if.end26.i:                                       ; preds = %if.end19.i
  %tobool28.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool28.not.i, label %if.end26.i.if.else.i_crit_edge, label %if.then29.i

if.end26.i.if.else.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  %call31.i = call i32 @clk_get_rate(ptr noundef nonnull %call21.i) #8
  br label %if.end34.i

if.else.i:                                        ; preds = %if.end26.i.if.else.i_crit_edge, %if.end26.thread.i
  %36 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk.i, align 4
  %call33.i = call i32 @clk_get_rate(ptr noundef %37) #8
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else.i, %if.then29.i
  %clk_freq.0.i = phi i32 [ %call31.i, %if.then29.i ], [ %call33.i, %if.else.i ]
  %38 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %of_node.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %39, ptr noundef nonnull @.str.17, ptr noundef nonnull %spi_freq.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %if.end34.i.stm32_dfsdm_parse_of.exit.thread_crit_edge, label %if.else162.i.i

if.end34.i.stm32_dfsdm_parse_of.exit.thread_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_dfsdm_parse_of.exit.thread

if.else162.i.i:                                   ; preds = %if.end34.i
  %40 = ptrtoint ptr %spi_freq.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %spi_freq.i, align 4
  %clk_freq.0.i.frozen = freeze i32 %clk_freq.0.i
  %.frozen = freeze i32 %41
  %div172.i.i = udiv i32 %clk_freq.0.i.frozen, %.frozen
  %42 = mul i32 %div172.i.i, %.frozen
  %rem170.i.i.decomposed = sub i32 %clk_freq.0.i.frozen, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem170.i.i.decomposed)
  %tobool42.not.i = icmp eq i32 %rem170.i.i.decomposed, 0
  %not.tobool42.not.i = xor i1 %tobool42.not.i, true
  %inc.i = zext i1 %not.tobool42.not.i to i32
  %spec.select.i = add i32 %div172.i.i, %inc.i
  %43 = add i32 %spec.select.i, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %43)
  %44 = icmp ult i32 %43, -255
  br i1 %44, label %do.end.i, label %if.end51.i

do.end.i:                                         ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #11
  br label %stm32_dfsdm_parse_of.exit.thread125

if.end51.i:                                       ; preds = %if.else162.i.i
  %sub.i = add nsw i32 %spec.select.i, -1
  %spi_clk_out_div.i = getelementptr inbounds %struct.dfsdm_priv, ptr %call.i, i32 0, i32 2
  %45 = ptrtoint ptr %spi_clk_out_div.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub.i, ptr %spi_clk_out_div.i, align 4
  %div.i = udiv i32 %clk_freq.0.i, %spec.select.i
  %spi_master_freq.i = getelementptr inbounds %struct.dfsdm_priv, ptr %call.i, i32 0, i32 1, i32 7
  %46 = ptrtoint ptr %spi_master_freq.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %div.i, ptr %spi_master_freq.i, align 4
  br i1 %tobool42.not.i, label %if.end51.i.stm32_dfsdm_parse_of.exit.thread_crit_edge, label %do.end58.i

if.end51.i.stm32_dfsdm_parse_of.exit.thread_crit_edge: ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_dfsdm_parse_of.exit.thread

do.end58.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.21) #11
  %47 = ptrtoint ptr %spi_freq.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %spi_freq.i, align 4
  %49 = ptrtoint ptr %spi_clk_out_div.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %spi_clk_out_div.i, align 4
  %add65.i = add i32 %50, 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %clk_freq.0.i, i32 noundef %48, i32 noundef %add65.i, i32 noundef %rem170.i.i.decomposed) #11
  br label %stm32_dfsdm_parse_of.exit.thread

stm32_dfsdm_parse_of.exit.thread:                 ; preds = %do.end58.i, %if.end51.i.stm32_dfsdm_parse_of.exit.thread_crit_edge, %if.end34.i.stm32_dfsdm_parse_of.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spi_freq.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #8
  br label %if.end21

stm32_dfsdm_parse_of.exit.thread125:              ; preds = %do.end.i, %if.end17.stm32_dfsdm_parse_of.exit.thread125_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spi_freq.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #8
  br label %cleanup

stm32_dfsdm_parse_of.exit:                        ; preds = %if.then14.i, %if.then4.i
  %retval.0.i = phi i32 [ %26, %if.then4.i ], [ %call18.i, %if.then14.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spi_freq.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %stm32_dfsdm_parse_of.exit.cleanup_crit_edge, label %stm32_dfsdm_parse_of.exit.if.end21_crit_edge

stm32_dfsdm_parse_of.exit.if.end21_crit_edge:     ; preds = %stm32_dfsdm_parse_of.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

stm32_dfsdm_parse_of.exit.cleanup_crit_edge:      ; preds = %stm32_dfsdm_parse_of.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %stm32_dfsdm_parse_of.exit.if.end21_crit_edge, %stm32_dfsdm_parse_of.exit.thread
  %51 = ptrtoint ptr %dfsdm4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dfsdm4, align 4
  %regmap_cfg = getelementptr inbounds %struct.stm32_dfsdm_dev_data, ptr %call3, i32 0, i32 2
  %53 = ptrtoint ptr %regmap_cfg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap_cfg, align 4
  %call23 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %52, ptr noundef %54, ptr noundef nonnull @stm32_dfsdm_probe._key, ptr noundef nonnull @.str.7) #8
  %regmap = getelementptr inbounds %struct.dfsdm_priv, ptr %call.i, i32 0, i32 1, i32 2
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call23, ptr %regmap, align 4
  %cmp.i107 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i107, label %if.then26, label %if.end30

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %call23 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %56) #11
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %57 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %dfsdm4, ptr %driver_data.i.i, align 4
  %call31 = call fastcc i32 @stm32_dfsdm_clk_prepare_enable(ptr noundef %dfsdm4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end38, label %do.end36

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end38:                                         ; preds = %if.end30
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i108 = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %58 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !96
  %call.i109 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #8
  call void @pm_runtime_enable(ptr noundef %dev) #8
  %59 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %of_node.i, align 8
  %call45 = call i32 @of_platform_populate(ptr noundef %60, ptr noundef null, ptr noundef null, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %pm_put

if.end48:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %call.i110 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #8
  br label %cleanup

pm_put:                                           ; preds = %if.end38
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %call.i111 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #8
  %call.i.i.i113 = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !86
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %61 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !87
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %pm_put.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

pm_put.pm_runtime_put_noidle.exit_crit_edge:      ; preds = %pm_put
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %pm_put
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !88
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %pm_put.pm_runtime_put_noidle.exit_crit_edge
  %aclk.i114 = getelementptr %struct.dfsdm_priv, ptr %call.i, i32 0, i32 5
  %62 = ptrtoint ptr %aclk.i114 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %aclk.i114, align 4
  call void @clk_disable(ptr noundef %63) #8
  call void @clk_unprepare(ptr noundef %63) #8
  %clk.i115 = getelementptr %struct.dfsdm_priv, ptr %call.i, i32 0, i32 4
  %64 = ptrtoint ptr %clk.i115 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clk.i115, align 4
  call void @clk_disable(ptr noundef %65) #8
  call void @clk_unprepare(ptr noundef %65) #8
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit, %if.end48, %do.end36, %if.then26, %stm32_dfsdm_parse_of.exit.cleanup_crit_edge, %stm32_dfsdm_parse_of.exit.thread125, %devm_kcalloc.exit105.cleanup_crit_edge, %devm_kcalloc.exit105.thread, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %56, %if.then26 ], [ %call31, %do.end36 ], [ %call45, %pm_runtime_put_noidle.exit ], [ 0, %if.end48 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit105.cleanup_crit_edge ], [ %retval.0.i, %stm32_dfsdm_parse_of.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit105.thread ], [ -22, %stm32_dfsdm_parse_of.exit.thread125 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_core_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  tail call void @of_platform_depopulate(ptr noundef %dev) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %call.i12 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #8
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !86
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !87
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !88
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  %aclk.i = getelementptr i8, ptr %1, i32 44
  %3 = ptrtoint ptr %aclk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aclk.i, align 4
  tail call void @clk_disable(ptr noundef %4) #8
  tail call void @clk_unprepare(ptr noundef %4) #8
  %clk.i = getelementptr i8, ptr %1, i32 40
  %5 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %6) #8
  tail call void @clk_unprepare(ptr noundef %6) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_dfsdm_clk_prepare_enable(ptr nocapture noundef readonly %dfsdm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr i8, ptr %dfsdm, i32 40
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end.i
  %aclk = getelementptr i8, ptr %dfsdm, i32 44
  %2 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aclk, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i16 = tail call i32 @clk_prepare(ptr noundef nonnull %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool.not.i17 = icmp eq i32 %call.i16, 0
  br i1 %tobool.not.i17, label %if.end.i20, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.end.i20:                                       ; preds = %if.end
  %call1.i18 = tail call i32 @clk_enable(ptr noundef nonnull %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool2.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool2.not.i19, label %if.end.i20.cleanup_crit_edge, label %if.then3.i21

if.end.i20.cleanup_crit_edge:                     ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i21:                                     ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef nonnull %3) #8
  br label %if.then6

if.then6:                                         ; preds = %if.then3.i21, %if.end.if.then6_crit_edge
  %retval.0.i22.ph = phi i32 [ %call1.i18, %if.then3.i21 ], [ %call.i16, %if.end.if.then6_crit_edge ]
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then6, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %5, %if.then6 ], [ %1, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %retval.0.i22.ph, %if.then6 ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i20.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.i20.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stm32_dfsdm_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %reg)
  %cmp = icmp ult i32 %reg, 256
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %and = lshr i32 %reg, 2
  %0 = and i32 %and, 31
  %1 = shl i32 %reg, 30
  %2 = or i32 %0, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %3 = icmp ult i32 %2, 8
  br i1 %3, label %switch.lookup, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %switch.cast = trunc i32 %0 to i8
  %switch.downshift = lshr i8 -59, %switch.cast
  %4 = and i8 %switch.downshift, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %switch.masked = icmp ne i8 %4, 0
  br label %return

return:                                           ; preds = %switch.lookup, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ %switch.masked, %switch.lookup ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_core_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %clk = getelementptr i8, ptr %1, i32 40
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %3) #8
  %call3 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_core_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr i8, ptr %1, i32 40
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call3 = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ %call2, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_core_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %aclk.i = getelementptr i8, ptr %1, i32 44
  %2 = ptrtoint ptr %aclk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aclk.i, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %clk.i = getelementptr i8, ptr %1, i32 40
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_core_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @stm32_dfsdm_clk_prepare_enable(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !15, !16, !18, !20, !22, !23, !25, !27, !29, !30, !31, !33, !34, !35, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !66, !68, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/stm32-dfsdm-core.c", i32 165, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @stm32_dfsdm_start_dfsdm.__UNIQUE_ID_ddebug243, !1, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!6 = !{ptr @__ksymtab_stm32_dfsdm_start_dfsdm, !7, !"__ksymtab_stm32_dfsdm_start_dfsdm", i1 false, i1 false}
!7 = !{!"../drivers/iio/adc/stm32-dfsdm-core.c", i32 177, i32 1}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/iio/adc/stm32-dfsdm-core.c", i32 207, i32 2}
!10 = !{ptr @stm32_dfsdm_stop_dfsdm.__UNIQUE_ID_ddebug254, !9, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!11 = !{ptr @__ksymtab_stm32_dfsdm_stop_dfsdm, !12, !"__ksymtab_stm32_dfsdm_stop_dfsdm", i1 false, i1 false}
!12 = !{!"../drivers/iio/adc/stm32-dfsdm-core.c", i32 212, i32 1}
!13 = !{ptr @__initcall__kmod_stm32_dfsdm_core__255_451_stm32_dfsdm_driver_init6, !14, !"__initcall__kmod_stm32_dfsdm_core__255_451_stm32_dfsdm_driver_init6", i1 false, i1 false}
!14 = !{!"../drivers/iio/adc/stm32-dfsdm-core.c", i32 451, i32 1}
!15 = !{ptr @__exitcall_stm32_dfsdm_driver_exit, !14, !"__exitcall_stm32_dfsdm_driver_exit", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_author256, !17, !"__UNIQUE_ID_author256", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/stm32-dfsdm-core.c", i32 453, i32 1}
!18 = !{ptr @__UNIQUE_ID_description257, !19, !"__UNIQUE_ID_description257", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/stm32-dfsdm-core.c", i32 454, i32 1}
!20 = !{ptr @__UNIQUE_ID_file258, !21, !"__UNIQUE_ID_file258", i1 false, i1 false}
!21 = !{!"../drivers/iio/adc/stm32-dfsdm-core.c", i32 455, i32 1}
!22 = !{ptr @__UNIQUE_ID_license259, !21, !"__UNIQUE_ID_license259", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/adc/stm32-dfsdm-core.c", i32 445, i32 11}
!25 = !{ptr @stm32_dfsdm_driver, !26, !"stm32_dfsdm_driver", i1 false, i1 false}
!26 = !{!"../drivers/iio/adc/stm32-dfsdm-core.c", i32 441, i32 31}
!27 = !{ptr @stm32_dfsdm_probe._key, !28, !"_key", i1 false, i1 false}
!28 = !{!"../drivers/iio/adc/stm32-dfsdm-core.c", i32 331, i32 18}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/adc/stm32-dfsdm-core.c", i32 336, i32 3}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @stm32_dfsdm_probe._entry, !32, !"_entry", i1 false, i1 false}
!37 = !{ptr @stm32_dfsdm_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/adc/stm32-dfsdm-core.c", i32 345, i32 3}
!40 = !{ptr @stm32_dfsdm_probe._entry.12, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @stm32_dfsdm_probe._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/stm32-dfsdm-core.c", i32 242, i32 10}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/adc/stm32-dfsdm-core.c", i32 244, i32 40}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/adc/stm32-dfsdm-core.c", i32 254, i32 48}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/adc/stm32-dfsdm-core.c", i32 268, i32 3}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @stm32_dfsdm_parse_of._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @stm32_dfsdm_parse_of._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/adc/stm32-dfsdm-core.c", i32 277, i32 3}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @stm32_dfsdm_parse_of._entry.20, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @stm32_dfsdm_parse_of._entry_ptr.23, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/adc/stm32-dfsdm-core.c", i32 278, i32 3}
!60 = !{ptr @stm32_dfsdm_parse_of._entry.24, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @stm32_dfsdm_parse_of._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @stm32_dfsdm_of_match, !63, !"stm32_dfsdm_of_match", i1 false, i1 false}
!63 = !{!"../drivers/iio/adc/stm32-dfsdm-core.c", i32 285, i32 34}
!64 = !{ptr @stm32h7_dfsdm_data, !65, !"stm32h7_dfsdm_data", i1 false, i1 false}
!65 = !{!"../drivers/iio/adc/stm32-dfsdm-core.c", i32 62, i32 42}
!66 = !{ptr @stm32h7_dfsdm_regmap_cfg, !67, !"stm32h7_dfsdm_regmap_cfg", i1 false, i1 false}
!67 = !{!"../drivers/iio/adc/stm32-dfsdm-core.c", i32 53, i32 35}
!68 = !{ptr @stm32mp1_dfsdm_data, !69, !"stm32mp1_dfsdm_data", i1 false, i1 false}
!69 = !{!"../drivers/iio/adc/stm32-dfsdm-core.c", i32 77, i32 42}
!70 = !{ptr @stm32mp1_dfsdm_regmap_cfg, !71, !"stm32mp1_dfsdm_regmap_cfg", i1 false, i1 false}
!71 = !{!"../drivers/iio/adc/stm32-dfsdm-core.c", i32 68, i32 35}
!72 = !{ptr @stm32_dfsdm_core_pm_ops, !73, !"stm32_dfsdm_core_pm_ops", i1 false, i1 false}
!73 = !{!"../drivers/iio/adc/stm32-dfsdm-core.c", i32 433, i32 32}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 2148335029}
!84 = !{i64 2148250338, i64 2148250370, i64 2148250399, i64 2148250433, i64 2148250464, i64 2148250487}
!85 = !{i64 2148335258}
!86 = !{i64 2148249037}
!87 = !{i64 733860, i64 733885, i64 733907, i64 733923, i64 733935, i64 733955, i64 733979, i64 733995, i64 734007}
!88 = !{i64 2148249225}
!89 = !{i64 2148731433, i64 2148731438, i64 2148731451, i64 2148731495, i64 2148731529, i64 2148731550}
!90 = !{i64 2148252083, i64 2148252109, i64 2148252138, i64 2148252172, i64 2148252203, i64 2148252226}
!91 = !{i64 2148338070}
!92 = !{i64 2148252803, i64 2148252835, i64 2148252864, i64 2148252898, i64 2148252929, i64 2148252952}
!93 = !{i64 2148338299}
!94 = !{!"branch_weights", i32 1, i32 2000}
!95 = !{!"auto-init"}
!96 = !{i64 2148249618, i64 2148249644, i64 2148249673, i64 2148249707, i64 2148249738, i64 2148249761}
