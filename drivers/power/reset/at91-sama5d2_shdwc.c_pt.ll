; ModuleID = '/llk/IR_all_yes/drivers/power/reset/at91-sama5d2_shdwc.c_pt.bc'
source_filename = "../drivers/power/reset/at91-sama5d2_shdwc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reg_config = type { %struct.shdwc_reg_config, %struct.pmc_reg_config, %struct.ddrc_reg_config }
%struct.shdwc_reg_config = type { i8, i8, i8, i8, i8 }
%struct.pmc_reg_config = type { i8 }
%struct.ddrc_reg_config = type { i32, i32 }
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
%struct.shdwc = type { ptr, ptr, ptr, ptr, ptr }

@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@__initcall__kmod_at91_sama5d2_shdwc__174_453_at91_shdwc_driver_init6 = internal global ptr @at91_shdwc_driver_init, section ".initcall6.init", align 4
@at91_shdwc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.32, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at91_shdwc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_at91_shdwc_driver_exit = internal global ptr @at91_shdwc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author175 = internal constant [66 x i8] c"at91_sama5d2_shdwc.author=Nicolas Ferre <nicolas.ferre@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [64 x i8] c"at91_sama5d2_shdwc.description=Atmel shutdown controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file177 = internal constant [63 x i8] c"at91_sama5d2_shdwc.file=drivers/power/reset/at91-sama5d2_shdwc\00", section ".modinfo", align 1
@__UNIQUE_ID_license178 = internal constant [34 x i8] c"at91_sama5d2_shdwc.license=GPL v2\00", section ".modinfo", align 1
@at91_shdwc = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@at91_shdwc_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-shdwc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d2_reg_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-shdwc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sam9x60_reg_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-shdwc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama7g5_reg_config }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@at91_shdwc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 366, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not enable slow clock\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"at91_shdwc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/power/reset/at91-sama5d2_shdwc.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@at91_shdwc_probe._entry_ptr = internal global ptr @at91_shdwc_probe._entry, section ".printk_index", align 4
@at91_pmc_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atmel,sama5d3-ddramc\00", [43 x i8] zeroinitializer }, align 32
@sama5d2_reg_config = internal constant { %struct.reg_config, [16 x i8] } { %struct.reg_config { %struct.shdwc_reg_config { i8 0, i8 17, i8 32, i8 5, i8 32 }, %struct.pmc_reg_config { i8 48 }, %struct.ddrc_reg_config { i32 32, i32 7 } }, [16 x i8] zeroinitializer }, align 32
@sam9x60_reg_config = internal constant { %struct.reg_config, [16 x i8] } { %struct.reg_config { %struct.shdwc_reg_config { i8 0, i8 17, i8 16, i8 5, i8 4 }, %struct.pmc_reg_config { i8 40 }, %struct.ddrc_reg_config { i32 32, i32 7 } }, [16 x i8] zeroinitializer }, align 32
@sama7g5_reg_config = internal constant { %struct.reg_config, [16 x i8] } { %struct.reg_config { %struct.shdwc_reg_config { i8 0, i8 17, i8 16, i8 5, i8 4 }, %struct.pmc_reg_config { i8 40 }, %struct.ddrc_reg_config zeroinitializer }, [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@at91_wakeup_status.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"at91_sama5d2_shdwc\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"at91_wakeup_status\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: status = %#x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WKUP pin\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RTC\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RTT\00", [28 x i8] zeroinitializer }, align 32
@at91_wakeup_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016AT91: Wake-Up source: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@at91_wakeup_status._entry_ptr = internal global ptr @at91_wakeup_status._entry, section ".printk_index", align 4
@at91_shdwc_dt_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 240, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"device node not found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"at91_shdwc_dt_configure\00", [40 x i8] zeroinitializer }, align 32
@at91_shdwc_dt_configure._entry_ptr = internal global ptr @at91_shdwc_dt_configure._entry, section ".printk_index", align 4
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"debounce-delay-us\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"atmel,wakeup-rtc-timer\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"atmel,wakeup-rtt-timer\00", [41 x i8] zeroinitializer }, align 32
@at91_shdwc_dt_configure.__UNIQUE_ID_ddebug173 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.15, ptr @.str.2, ptr @.str.19, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: mode = %#x\0A\00", [16 x i8] zeroinitializer }, align 32
@sdwc_dbc_period = internal constant { [6 x i64], [48 x i8] } { [6 x i64] [i64 0, i64 3, i64 32, i64 512, i64 4096, i64 32768], [48 x i8] zeroinitializer }, align 32
@at91_shdwc_debouncer_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 183, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"debouncer period %u too big, reduced to %llu us\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"at91_shdwc_debouncer_value\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@at91_shdwc_debouncer_value._entry_ptr = internal global ptr @at91_shdwc_debouncer_value._entry, section ".printk_index", align 4
@at91_shdwc_debouncer_value.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: ref[%d] = %llu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@at91_shdwc_get_wakeup_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 209, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"reg property is missing for %pOF\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"at91_shdwc_get_wakeup_input\00", [36 x i8] zeroinitializer }, align 32
@at91_shdwc_get_wakeup_input._entry_ptr = internal global ptr @at91_shdwc_get_wakeup_input._entry, section ".printk_index", align 4
@at91_shdwc_get_wakeup_input._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 217, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"wake-up input %d out of bounds ignore\0A\00", [57 x i8] zeroinitializer }, align 32
@at91_shdwc_get_wakeup_input._entry_ptr.29 = internal global ptr @at91_shdwc_get_wakeup_input._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"atmel,wakeup-active-high\00", [39 x i8] zeroinitializer }, align 32
@at91_shdwc_get_wakeup_input.__UNIQUE_ID_ddebug172 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.26, ptr @.str.2, ptr @.str.31, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: (child %d) wuir = %#x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"at91-shdwc\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"at91_shdwc_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 446, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant [11 x i8] c"at91_shdwc\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 104, i32 22 }
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c"at91_shdwc_of_match\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 307, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 366, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [13 x i8] c"at91_pmc_ids\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 325, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 390, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant [19 x i8] c"sama5d2_reg_config\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 260, i32 32 }
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c"sam9x60_reg_config\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 277, i32 32 }
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c"sama7g5_reg_config\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 294, i32 32 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 115, i32 17 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 119, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 126, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 128, i32 12 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 130, i32 12 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 132, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 240, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 244, i32 32 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 247, i32 32 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 250, i32 32 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 253, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [16 x i8] c"sdwc_dbc_period\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 106, i32 33 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 181, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 189, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 207, i32 33 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 208, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 215, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 222, i32 34 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 225, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [44 x i8] c"../drivers/power/reset/at91-sama5d2_shdwc.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 449, i32 11 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file177, ptr @__UNIQUE_ID_license178, ptr @__exitcall_at91_shdwc_driver_exit, ptr @__initcall__kmod_at91_sama5d2_shdwc__174_453_at91_shdwc_driver_init6, ptr @at91_shdwc_debouncer_value._entry, ptr @at91_shdwc_debouncer_value._entry_ptr, ptr @at91_shdwc_driver_exit, ptr @at91_shdwc_dt_configure._entry, ptr @at91_shdwc_dt_configure._entry_ptr, ptr @at91_shdwc_get_wakeup_input._entry, ptr @at91_shdwc_get_wakeup_input._entry.27, ptr @at91_shdwc_get_wakeup_input._entry_ptr, ptr @at91_shdwc_get_wakeup_input._entry_ptr.29, ptr @at91_shdwc_probe._entry, ptr @at91_shdwc_probe._entry_ptr, ptr @at91_shdwc_remove, ptr @at91_wakeup_status._entry, ptr @at91_wakeup_status._entry_ptr, ptr @at91_shdwc_driver, ptr @at91_shdwc, ptr @at91_shdwc_of_match, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @at91_pmc_ids, ptr @.str.5, ptr @sama5d2_reg_config, ptr @sam9x60_reg_config, ptr @sama7g5_reg_config, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @sdwc_dbc_period, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_shdwc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_shdwc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_shdwc_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_shdwc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pmc_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d2_reg_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sam9x60_reg_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama7g5_reg_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_wakeup_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_shdwc_dt_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdwc_dbc_period to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_shdwc_debouncer_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_shdwc_get_wakeup_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_shdwc_get_wakeup_input._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_shdwc_remove(ptr nocapture noundef readonly %pdev) #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  %2 = load ptr, ptr @pm_power_off, align 4
  %cmp = icmp eq ptr %2, @at91_poweroff
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr null, ptr @pm_power_off, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %shdwc_base = getelementptr inbounds %struct.shdwc, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %shdwc_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %shdwc_base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %shdwc_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %shdwc_base, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #7, !srcloc !104
  %mpddrc_base = getelementptr inbounds %struct.shdwc, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %mpddrc_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mpddrc_base, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %do.body.if.end8_crit_edge, label %if.then6

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iounmap(ptr noundef nonnull %8) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.body.if.end8_crit_edge
  %pmc_base = getelementptr inbounds %struct.shdwc, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %pmc_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pmc_base, align 4
  tail call void @iounmap(ptr noundef %10) #7
  %sclk = getelementptr inbounds %struct.shdwc, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sclk, align 4
  tail call void @clk_disable(ptr noundef %12) #7
  tail call void @clk_unprepare(ptr noundef %12) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_poweroff() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @at91_shdwc, align 4
  %mpddrc_base = getelementptr inbounds %struct.shdwc, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %mpddrc_base, align 4
  %shdwc_base = getelementptr inbounds %struct.shdwc, ptr %0, i32 0, i32 2
  %2 = load ptr, ptr %shdwc_base, align 4
  %pmc_base = getelementptr inbounds %struct.shdwc, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %pmc_base, align 4
  %4 = load ptr, ptr %0, align 4
  %pmc = getelementptr inbounds %struct.reg_config, ptr %4, i32 0, i32 1
  %5 = load i8, ptr %pmc, align 1
  tail call void asm sideeffect ".balign 32\0A\09\09ldr\09r6, [$2, #0x00]\0A\09\09tst\09$0, #0\0A\09\09beq\091f\0A\09\09str\09$1, [$0, #0x1C]\0A\091:\09ldr\09r6, [$4, $5]\0A\09\09bic\09r6, r6,  #(3 << 0)\0A\09\09str\09r6, [$4, $5]\0A\092:\09ldr\09r6, [$4, #0x68]\0A\09\09tst\09r6, #(1 << 3)\0A\09\09beq\092b\0A\09\09str\09$3, [$2, #0x00]\0A\09\09b\09.\0A\09", "r,r,r,r,r,r,~{r6}"(ptr %1, i32 134217728, ptr %2, i32 16777381, ptr %3, i8 %5) #7, !srcloc !106
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_shdwc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @at91_shdwc_driver, ptr noundef nonnull @at91_shdwc_probe, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @at91_shdwc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @at91_shdwc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_shdwc_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @at91_shdwc, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #7
  store ptr %call.i, ptr @at91_shdwc, align 4
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call8 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call10 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call8) #7
  %4 = load ptr, ptr @at91_shdwc, align 4
  %shdwc_base = getelementptr inbounds %struct.shdwc, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %shdwc_base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call10, ptr %shdwc_base, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call19 = tail call ptr @of_match_node(ptr noundef nonnull @at91_shdwc_of_match, ptr noundef %8) #7
  %data = getelementptr inbounds %struct.of_device_id, ptr %call19, i32 0, i32 3
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = load ptr, ptr @at91_shdwc, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %11, align 4
  %call21 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %13 = load ptr, ptr @at91_shdwc, align 4
  %sclk = getelementptr inbounds %struct.shdwc, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %sclk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call21, ptr %sclk, align 4
  %cmp.i92 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end16
  %call29 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end33, label %do.end

do.end:                                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  tail call fastcc void @at91_wakeup_status(ptr noundef %pdev) #11
  tail call fastcc void @at91_shdwc_dt_configure(ptr noundef %pdev)
  %call.i93 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @at91_pmc_ids, ptr noundef null) #7
  %tobool35.not = icmp eq ptr %call.i93, null
  br i1 %tobool35.not, label %if.end33.clk_disable_crit_edge, label %if.end37

if.end33.clk_disable_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_disable

if.end37:                                         ; preds = %if.end33
  %call38 = tail call ptr @of_iomap(ptr noundef nonnull %call.i93, i32 noundef 0) #7
  %16 = load ptr, ptr @at91_shdwc, align 4
  %pmc_base = getelementptr inbounds %struct.shdwc, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %pmc_base to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call38, ptr %pmc_base, align 4
  tail call void @of_node_put(ptr noundef nonnull %call.i93) #7
  %18 = load ptr, ptr @at91_shdwc, align 4
  %pmc_base39 = getelementptr inbounds %struct.shdwc, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %pmc_base39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pmc_base39, align 4
  %tobool40.not = icmp eq ptr %20, null
  br i1 %tobool40.not, label %if.end37.clk_disable_crit_edge, label %if.end42

if.end37.clk_disable_crit_edge:                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_disable

if.end42:                                         ; preds = %if.end37
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %type_mask = getelementptr inbounds %struct.reg_config, ptr %22, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %type_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool44.not = icmp eq i32 %24, 0
  br i1 %tobool44.not, label %if.end42.if.end68_crit_edge, label %if.then45

if.end42.if.end68_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then45:                                        ; preds = %if.end42
  %call46 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5) #7
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.then45.unmap_crit_edge, label %if.end49

if.then45.unmap_crit_edge:                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %unmap

if.end49:                                         ; preds = %if.then45
  %call50 = tail call ptr @of_iomap(ptr noundef nonnull %call46, i32 noundef 0) #7
  %25 = load ptr, ptr @at91_shdwc, align 4
  %mpddrc_base = getelementptr inbounds %struct.shdwc, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %mpddrc_base to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call50, ptr %mpddrc_base, align 4
  tail call void @of_node_put(ptr noundef nonnull %call46) #7
  %27 = load ptr, ptr @at91_shdwc, align 4
  %mpddrc_base51 = getelementptr inbounds %struct.shdwc, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %mpddrc_base51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mpddrc_base51, align 4
  %tobool52.not = icmp eq ptr %29, null
  br i1 %tobool52.not, label %if.end49.unmap_crit_edge, label %if.end54

if.end49.unmap_crit_edge:                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %unmap

if.end54:                                         ; preds = %if.end49
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  %ddrc57 = getelementptr inbounds %struct.reg_config, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %ddrc57 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ddrc57, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 %33
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !107
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  %36 = load ptr, ptr @at91_shdwc, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %type_mask62 = getelementptr inbounds %struct.reg_config, ptr %38, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %type_mask62 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type_mask62, align 4
  %and = and i32 %40, %35
  %41 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.then64 [
    i32 7, label %if.end54.if.end68_crit_edge
    i32 5, label %if.end54.if.end68_crit_edge94
  ]

if.end54.if.end68_crit_edge94:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.end54.if.end68_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then64:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %mpddrc_base65 = getelementptr inbounds %struct.shdwc, ptr %36, i32 0, i32 3
  %42 = ptrtoint ptr %mpddrc_base65 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mpddrc_base65, align 4
  tail call void @iounmap(ptr noundef %43) #7
  %44 = load ptr, ptr @at91_shdwc, align 4
  %mpddrc_base66 = getelementptr inbounds %struct.shdwc, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %mpddrc_base66 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %mpddrc_base66, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then64, %if.end54.if.end68_crit_edge, %if.end54.if.end68_crit_edge94, %if.end42.if.end68_crit_edge
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr @at91_poweroff, ptr @pm_power_off, align 4
  br label %cleanup

unmap:                                            ; preds = %if.end49.unmap_crit_edge, %if.then45.unmap_crit_edge
  %ret.0 = phi i32 [ -19, %if.then45.unmap_crit_edge ], [ -12, %if.end49.unmap_crit_edge ]
  %46 = load ptr, ptr @at91_shdwc, align 4
  %pmc_base69 = getelementptr inbounds %struct.shdwc, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %pmc_base69 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pmc_base69, align 4
  tail call void @iounmap(ptr noundef %48) #7
  br label %clk_disable

clk_disable:                                      ; preds = %unmap, %if.end37.clk_disable_crit_edge, %if.end33.clk_disable_crit_edge
  %ret.1 = phi i32 [ %ret.0, %unmap ], [ -19, %if.end33.clk_disable_crit_edge ], [ -12, %if.end37.clk_disable_crit_edge ]
  %49 = load ptr, ptr @at91_shdwc, align 4
  %sclk70 = getelementptr inbounds %struct.shdwc, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %sclk70 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sclk70, align 4
  tail call void @clk_disable(ptr noundef %51) #7
  tail call void @clk_unprepare(ptr noundef %51) #7
  br label %cleanup

cleanup:                                          ; preds = %clk_disable, %if.end68, %do.end, %if.then24, %if.then13, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then13 ], [ %15, %if.then24 ], [ %call29, %do.end ], [ 0, %if.end68 ], [ %ret.1, %clk_disable ], [ -19, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_wakeup_status(ptr noundef %pdev) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %shdwc_base = getelementptr inbounds %struct.shdwc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %shdwc_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shdwc_base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !107
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_wakeup_status.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at91_wakeup_status, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !110

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_wakeup_status.__UNIQUE_ID_ddebug170, ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool8.not = icmp eq i32 %6, 0
  br i1 %tobool8.not, label %do.end.cleanup_crit_edge, label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %3, align 4
  %conv = zext i8 %9 to i32
  %shl11 = shl i32 65536, %conv
  %and12 = and i32 %shl11, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else, label %if.end10.do.end32_crit_edge

if.end10.do.end32_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

if.else:                                          ; preds = %if.end10
  %sr_rtcwk_shift = getelementptr inbounds %struct.shdwc_reg_config, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %sr_rtcwk_shift to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sr_rtcwk_shift, align 1
  %conv16 = zext i8 %11 to i32
  %12 = shl nuw i32 1, %conv16
  %13 = and i32 %12, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool18.not = icmp eq i32 %13, 0
  br i1 %tobool18.not, label %if.else20, label %if.else.do.end32_crit_edge

if.else.do.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

if.else20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %sr_rttwk_shift = getelementptr inbounds %struct.shdwc_reg_config, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %sr_rttwk_shift to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sr_rttwk_shift, align 4
  %conv22 = zext i8 %15 to i32
  %16 = shl nuw i32 1, %conv22
  %17 = and i32 %16, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool25.not = icmp eq i32 %17, 0
  %spec.select = select i1 %tobool25.not, ptr @.str.6, ptr @.str.12
  br label %do.end32

do.end32:                                         ; preds = %if.else20, %if.else.do.end32_crit_edge, %if.end10.do.end32_crit_edge
  %reason.0 = phi ptr [ @.str.10, %if.end10.do.end32_crit_edge ], [ @.str.11, %if.else.do.end32_crit_edge ], [ %spec.select, %if.else20 ]
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %reason.0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_shdwc_dt_configure(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %6 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tmp, align 4, !annotation !111
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.16, ptr noundef nonnull %tmp, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool4.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %if.end
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tmp, align 4
  %conv184.i = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %8)
  %cmp185.i = icmp ugt i32 %8, 1000000
  br i1 %cmp185.i, label %do.end.i, label %if.then5.for.body.i_crit_edge

if.then5.for.body.i_crit_edge:                    ; preds = %if.then5
  br label %for.body.i

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %8, i64 noundef 1000000) #10
  br label %if.end7

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then5.for.body.i_crit_edge
  %i.0613.i = phi i32 [ %dec.i, %for.inc.i.for.body.i_crit_edge ], [ 4, %if.then5.for.body.i_crit_edge ]
  %arrayidx193.i = getelementptr [6 x i64], ptr @sdwc_dbc_period, i32 0, i32 %i.0613.i
  %9 = ptrtoint ptr %arrayidx193.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx193.i, align 8
  %mul194.i = mul i64 %10, 1000000
  %sub196.i = add i64 %mul194.i, 32767
  %shr222.i = lshr i64 %sub196.i, 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_shdwc_debouncer_value.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at91_shdwc_dt_configure, %if.then429.i)) #7
          to label %do.end433.i [label %if.then429.i], !srcloc !110

if.then429.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_shdwc_debouncer_value.__UNIQUE_ID_ddebug171, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef %i.0613.i, i64 noundef %shr222.i) #7
  br label %do.end433.i

do.end433.i:                                      ; preds = %if.then429.i, %for.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr222.i, i64 %conv184.i)
  %cmp435.i = icmp ult i64 %shr222.i, %conv184.i
  br i1 %cmp435.i, label %do.end433.i.for.end.i_crit_edge, label %for.inc.i

do.end433.i.for.end.i_crit_edge:                  ; preds = %do.end433.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i:                                        ; preds = %do.end433.i
  %dec.i = add nsw i32 %i.0613.i, -1
  %cmp190.i = icmp ugt i32 %i.0613.i, 1
  br i1 %cmp190.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end433.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.0613.i, %do.end433.i.for.end.i_crit_edge ], [ 0, %for.inc.i.for.end.i_crit_edge ]
  %add439.i = shl i32 %i.0.lcssa.i, 24
  %phi.bo = add i32 %add439.i, 16777216
  %phi.bo65 = and i32 %phi.bo, 117440512
  br label %if.end7

if.end7:                                          ; preds = %for.end.i, %do.end.i, %if.end.if.end7_crit_edge
  %mode.0 = phi i32 [ 0, %if.end.if.end7_crit_edge ], [ 83886080, %do.end.i ], [ %phi.bo65, %for.end.i ]
  %call.i = call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.17, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end7.if.end12_crit_edge, label %if.then9

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %mr_rtcwk_shift = getelementptr inbounds %struct.shdwc_reg_config, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %mr_rtcwk_shift to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mr_rtcwk_shift, align 1
  %conv = zext i8 %12 to i32
  %shl10 = shl nuw i32 1, %conv
  %or11 = or i32 %shl10, %mode.0
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7.if.end12_crit_edge
  %mode.1 = phi i32 [ %or11, %if.then9 ], [ %mode.0, %if.end7.if.end12_crit_edge ]
  %call.i62 = call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.18, ptr noundef null) #7
  %tobool.i63.not = icmp eq ptr %call.i62, null
  br i1 %tobool.i63.not, label %if.end12.do.body20_crit_edge, label %if.then14

if.end12.do.body20_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %mr_rttwk_shift = getelementptr inbounds %struct.shdwc_reg_config, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %mr_rttwk_shift to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mr_rttwk_shift, align 2
  %conv16 = zext i8 %14 to i32
  %shl17 = shl nuw i32 1, %conv16
  %or18 = or i32 %shl17, %mode.1
  br label %do.body20

do.body20:                                        ; preds = %if.then14, %if.end12.do.body20_crit_edge
  %mode.2 = phi i32 [ %or18, %if.then14 ], [ %mode.1, %if.end12.do.body20_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_shdwc_dt_configure.__UNIQUE_ID_ddebug173, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at91_shdwc_dt_configure, %if.then26)) #7
          to label %do.body31 [label %if.then26], !srcloc !110

if.then26:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_shdwc_dt_configure.__UNIQUE_ID_ddebug173, ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.15, i32 noundef %mode.2) #7
  br label %do.body31

do.body31:                                        ; preds = %if.then26, %do.body20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  call void @arm_heavy_mb() #7
  %15 = call i32 @llvm.bswap.i32(i32 %mode.2)
  %shdwc_base = getelementptr inbounds %struct.shdwc, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %shdwc_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %shdwc_base, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %15) #7, !srcloc !104
  %call34 = call fastcc i32 @at91_shdwc_get_wakeup_input(ptr noundef %pdev, ptr noundef nonnull %5)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  call void @arm_heavy_mb() #7
  %18 = call i32 @llvm.bswap.i32(i32 %call34)
  %19 = ptrtoint ptr %shdwc_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %shdwc_base, align 4
  %add.ptr39 = getelementptr i8, ptr %20, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %18) #7, !srcloc !104
  br label %cleanup

cleanup:                                          ; preds = %do.body31, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at91_shdwc_get_wakeup_input(ptr noundef %pdev, ptr noundef %np) unnamed_addr #2 align 64 {
entry:
  %wk_input = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wk_input) #7
  %0 = ptrtoint ptr %wk_input to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wk_input, align 4, !annotation !111
  %call = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #7
  %cmp.not39 = icmp eq ptr %call, null
  br i1 %cmp.not39, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cnp.041 = phi ptr [ %call, %for.body.lr.ph ], [ %call26, %for.inc.for.body_crit_edge ]
  %wuir.040 = phi i32 [ 0, %for.body.lr.ph ], [ %wuir.2, %for.inc.for.body_crit_edge ]
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %cnp.041, ptr noundef nonnull @.str.24, ptr noundef nonnull %wk_input, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull %cnp.041) #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %1 = ptrtoint ptr %wk_input to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %wk_input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %2)
  %tobool2.not = icmp ugt i32 %2, 15
  br i1 %tobool2.not, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %2) #10
  br label %for.inc

if.end8:                                          ; preds = %if.end
  %shl = shl nuw nsw i32 1, %2
  %or = or i32 %shl, %wuir.040
  %call.i = call ptr @of_find_property(ptr noundef nonnull %cnp.041, ptr noundef nonnull @.str.30, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end8.do.body16_crit_edge, label %if.then10

if.end8.do.body16_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %wk_input to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wk_input, align 4
  %shl12 = shl i32 65536, %4
  %or14 = or i32 %shl12, %or
  br label %do.body16

do.body16:                                        ; preds = %if.then10, %if.end8.do.body16_crit_edge
  %wuir.1 = phi i32 [ %or14, %if.then10 ], [ %or, %if.end8.do.body16_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_shdwc_get_wakeup_input.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at91_shdwc_get_wakeup_input, %if.then21)) #7
          to label %for.inc [label %if.then21], !srcloc !110

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %wk_input to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wk_input, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_shdwc_get_wakeup_input.__UNIQUE_ID_ddebug172, ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.26, i32 noundef %6, i32 noundef %wuir.1) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %do.body16, %do.end6, %do.end
  %wuir.2 = phi i32 [ %wuir.040, %do.end ], [ %wuir.1, %if.then21 ], [ %wuir.040, %do.end6 ], [ %wuir.1, %do.body16 ]
  %call26 = call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %cnp.041) #7
  %cmp.not = icmp eq ptr %call26, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %wuir.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %wuir.2, %for.inc.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wk_input) #7
  ret i32 %wuir.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !39, !41, !43, !45, !46, !47, !49, !50, !51, !52, !54, !56, !58, !60, !61, !63, !64, !65, !66, !67, !69, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !87, !88, !90, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__initcall__kmod_at91_sama5d2_shdwc__174_453_at91_shdwc_driver_init6, !1, !"__initcall__kmod_at91_sama5d2_shdwc__174_453_at91_shdwc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 453, i32 1}
!2 = !{ptr @__exitcall_at91_shdwc_driver_exit, !1, !"__exitcall_at91_shdwc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author175, !4, !"__UNIQUE_ID_author175", i1 false, i1 false}
!4 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 455, i32 1}
!5 = !{ptr @__UNIQUE_ID_description176, !6, !"__UNIQUE_ID_description176", i1 false, i1 false}
!6 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 456, i32 1}
!7 = !{ptr @__UNIQUE_ID_file177, !8, !"__UNIQUE_ID_file177", i1 false, i1 false}
!8 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 457, i32 1}
!9 = !{ptr @__UNIQUE_ID_license178, !8, !"__UNIQUE_ID_license178", i1 false, i1 false}
!10 = !{ptr @at91_shdwc, !11, !"at91_shdwc", i1 false, i1 false}
!11 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 104, i32 22}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 366, i32 3}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @at91_shdwc_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @at91_shdwc_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 390, i32 11}
!22 = !{ptr @at91_shdwc_of_match, !23, !"at91_shdwc_of_match", i1 false, i1 false}
!23 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 307, i32 34}
!24 = !{ptr @sama5d2_reg_config, !25, !"sama5d2_reg_config", i1 false, i1 false}
!25 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 260, i32 32}
!26 = !{ptr @sam9x60_reg_config, !27, !"sam9x60_reg_config", i1 false, i1 false}
!27 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 277, i32 32}
!28 = !{ptr @sama7g5_reg_config, !29, !"sama7g5_reg_config", i1 false, i1 false}
!29 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 294, i32 32}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 115, i32 17}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 119, i32 2}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @at91_wakeup_status.__UNIQUE_ID_ddebug170, !33, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 126, i32 12}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 128, i32 12}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 130, i32 12}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 132, i32 2}
!45 = !{ptr @at91_wakeup_status._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @at91_wakeup_status._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 240, i32 3}
!49 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @at91_shdwc_dt_configure._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @at91_shdwc_dt_configure._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 244, i32 32}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 247, i32 32}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 250, i32 32}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 253, i32 2}
!60 = !{ptr @at91_shdwc_dt_configure.__UNIQUE_ID_ddebug173, !59, !"__UNIQUE_ID_ddebug173", i1 false, i1 false}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 181, i32 3}
!63 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @at91_shdwc_debouncer_value._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @at91_shdwc_debouncer_value._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 189, i32 3}
!69 = !{ptr @at91_shdwc_debouncer_value.__UNIQUE_ID_ddebug171, !68, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!70 = !{ptr @sdwc_dbc_period, !71, !"sdwc_dbc_period", i1 false, i1 false}
!71 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 106, i32 33}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 207, i32 33}
!74 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 208, i32 4}
!76 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @at91_shdwc_get_wakeup_input._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @at91_shdwc_get_wakeup_input._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 215, i32 4}
!81 = !{ptr @at91_shdwc_get_wakeup_input._entry.27, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @at91_shdwc_get_wakeup_input._entry_ptr.29, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 222, i32 34}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 225, i32 3}
!87 = !{ptr @at91_shdwc_get_wakeup_input.__UNIQUE_ID_ddebug172, !86, !"__UNIQUE_ID_ddebug172", i1 false, i1 false}
!88 = !{ptr @at91_pmc_ids, !89, !"at91_pmc_ids", i1 false, i1 false}
!89 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 325, i32 34}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 449, i32 11}
!92 = !{ptr @at91_shdwc_driver, !93, !"at91_shdwc_driver", i1 false, i1 false}
!93 = !{!"../drivers/power/reset/at91-sama5d2_shdwc.c", i32 446, i32 31}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i64 2152552850}
!104 = !{i64 2052453}
!105 = !{i64 2152553248}
!106 = !{i64 3792, i64 3805, i64 3916, i64 3963, i64 3979, i64 4037, i64 4120, i64 4173, i64 4199, i64 4285, i64 4340, i64 4356, i64 4432, i64 4446}
!107 = !{i64 2052871}
!108 = !{i64 2152552379}
!109 = !{i64 2152515507}
!110 = !{i64 2148731207, i64 2148731212, i64 2148731225, i64 2148731269, i64 2148731303, i64 2148731324}
!111 = !{!"auto-init"}
!112 = !{i64 2152548959}
!113 = !{i64 2152549370}
