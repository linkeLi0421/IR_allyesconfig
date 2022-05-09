; ModuleID = '/llk/IR_all_yes/drivers/soc/ti/pm33xx.c_pt.bc'
source_filename = "../drivers/soc/ti/pm33xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.wkup_m3_wakeup_src = type { i32, [10 x i8] }
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
%struct.am33xx_pm_platform_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.am33xx_pm_sram_addr = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.am33xx_pm_ro_sram_data = type { i32, i32, ptr, [4 x i8] }
%struct.wkup_m3_ipc = type { ptr, ptr, ptr, i32, i32, i32, %struct.completion, %struct.mbox_client, ptr, ptr, i32 }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.wkup_m3_ipc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_pm33xx__290_608_am33xx_pm_driver_init6 = internal global ptr @am33xx_pm_driver_init, section ".initcall6.init", align 4
@am33xx_pm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @am33xx_pm_probe, ptr @am33xx_pm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_am33xx_pm_driver_exit = internal global ptr @am33xx_pm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias291 = internal constant [29 x i8] c"pm33xx.alias=platform:pm33xx\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [34 x i8] c"pm33xx.file=drivers/soc/ti/pm33xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [22 x i8] c"pm33xx.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [50 x i8] c"pm33xx.description=am33xx power management driver\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pm33xx\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,am33xx\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti,am43\00", [24 x i8] zeroinitializer }, align 32
@pm_ops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@am33xx_pm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 504, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PM: Cannot get core PM ops!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"am33xx_pm_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/soc/ti/pm33xx.c\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@am33xx_pm_probe._entry_ptr = internal global ptr @am33xx_pm_probe._entry, section ".printk_index", align 4
@am33xx_pm_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013PM: Could not ioremap GIC base\0A\00", [62 x i8] zeroinitializer }, align 32
@am33xx_pm_probe._entry_ptr.10 = internal global ptr @am33xx_pm_probe._entry.8, section ".printk_index", align 4
@pm_sram = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@am33xx_pm_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 516, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"PM: Cannot get PM asm function addresses!!\0A\00", [52 x i8] zeroinitializer }, align 32
@am33xx_pm_probe._entry_ptr.13 = internal global ptr @am33xx_pm_probe._entry.11, section ".printk_index", align 4
@m3_ipc = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@am33xx_pm_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013PM: Cannot get wkup_m3_ipc handle\0A\00", [59 x i8] zeroinitializer }, align 32
@am33xx_pm_probe._entry_ptr.16 = internal global ptr @am33xx_pm_probe._entry.14, section ".printk_index", align 4
@pm33xx_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@am33xx_pm_ops = internal constant { %struct.platform_suspend_ops, [56 x i8] } { %struct.platform_suspend_ops { ptr @am33xx_pm_valid, ptr @am33xx_pm_begin, ptr null, ptr null, ptr @am33xx_pm_enter, ptr null, ptr null, ptr null, ptr @am33xx_pm_end, ptr null }, [56 x i8] zeroinitializer }, align 32
@suspend_wfi_flags = internal global { i32, [28 x i8] } zeroinitializer, align 32
@am33xx_pm_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 566, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to call core pm init!\0A\00", [34 x i8] zeroinitializer }, align 32
@am33xx_pm_probe._entry_ptr.19 = internal global ptr @am33xx_pm_probe._entry.17, section ".printk_index", align 4
@rtc_base_virt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rtc_fck = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@gic_dist_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,omap3-mpu\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,omap4-mpu\00", [19 x i8] zeroinitializer }, align 32
@am33xx_pm_alloc_sram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.5, i32 394, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"PM: %s: Unable to find device node for mpu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"am33xx_pm_alloc_sram\00", [43 x i8] zeroinitializer }, align 32
@am33xx_pm_alloc_sram._entry_ptr = internal global ptr @am33xx_pm_alloc_sram._entry, section ".printk_index", align 4
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pm-sram\00", [24 x i8] zeroinitializer }, align 32
@sram_pool = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@am33xx_pm_alloc_sram._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.5, i32 402, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"PM: %s: Unable to get sram pool for ocmcram\0A\00", [51 x i8] zeroinitializer }, align 32
@am33xx_pm_alloc_sram._entry_ptr.27 = internal global ptr @am33xx_pm_alloc_sram._entry.25, section ".printk_index", align 4
@sram_pool_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@am33xx_pm_alloc_sram._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.23, ptr @.str.5, i32 410, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"PM: %s: Unable to get sram data pool for ocmcram\0A\00", [46 x i8] zeroinitializer }, align 32
@am33xx_pm_alloc_sram._entry_ptr.30 = internal global ptr @am33xx_pm_alloc_sram._entry.28, section ".printk_index", align 4
@ocmcram_location = internal global { i32, [28 x i8] } zeroinitializer, align 32
@am33xx_pm_alloc_sram._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.23, ptr @.str.5, i32 418, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"PM: %s: Unable to allocate memory from ocmcram\0A\00", [48 x i8] zeroinitializer }, align 32
@am33xx_pm_alloc_sram._entry_ptr.33 = internal global ptr @am33xx_pm_alloc_sram._entry.31, section ".printk_index", align 4
@ocmcram_location_data = internal global { i32, [28 x i8] } zeroinitializer, align 32
@am33xx_pm_alloc_sram._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.23, ptr @.str.5, i32 426, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"PM: Unable to allocate memory from ocmcram\0A\00", [52 x i8] zeroinitializer }, align 32
@am33xx_pm_alloc_sram._entry_ptr.36 = internal global ptr @am33xx_pm_alloc_sram._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@am33xx_pm_rtc_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.5, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014PM: could not iomap rtc\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"am33xx_pm_rtc_setup\00", [44 x i8] zeroinitializer }, align 32
@am33xx_pm_rtc_setup._entry_ptr = internal global ptr @am33xx_pm_rtc_setup._entry, section ".printk_index", align 4
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtc0\00", [27 x i8] zeroinitializer }, align 32
@omap_rtc = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@am33xx_pm_rtc_setup._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.40, ptr @.str.5, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014PM: rtc0 not available\00", [39 x i8] zeroinitializer }, align 32
@am33xx_pm_rtc_setup._entry_ptr.44 = internal global ptr @am33xx_pm_rtc_setup._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"omap_rtc_scratch0\00", [46 x i8] zeroinitializer }, align 32
@rtc_magic_val = internal global { i32, [28 x i8] } zeroinitializer, align 32
@am33xx_pm_rtc_setup._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.40, ptr @.str.5, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014PM: bootloader does not support rtc-only!\0A\00", [51 x i8] zeroinitializer }, align 32
@am33xx_pm_rtc_setup._entry_ptr.48 = internal global ptr @am33xx_pm_rtc_setup._entry.46, section ".printk_index", align 4
@am33xx_pm_rtc_setup._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.40, ptr @.str.5, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014PM: no-rtc available, rtc-only mode disabled.\0A\00", [47 x i8] zeroinitializer }, align 32
@am33xx_pm_rtc_setup._entry_ptr.51 = internal global ptr @am33xx_pm_rtc_setup._entry.49, section ".printk_index", align 4
@am33xx_do_wfi_sram_phys = internal global { i32, [28 x i8] } zeroinitializer, align 32
@am33xx_do_wfi_sram = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@am33xx_push_sram_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.5, i32 109, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"PM: %s: am33xx_do_wfi copy to sram failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"am33xx_push_sram_idle\00", [42 x i8] zeroinitializer }, align 32
@am33xx_push_sram_idle._entry_ptr = internal global ptr @am33xx_push_sram_idle._entry, section ".printk_index", align 4
@am33xx_push_sram_idle.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.5, ptr @.str.54, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PM: %s: EMIF function copy failed\0A\00", [61 x i8] zeroinitializer }, align 32
@am33xx_push_sram_idle._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.53, ptr @.str.5, i32 130, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"PM: %s: ro_sram_data copy to sram failed\0A\00", [54 x i8] zeroinitializer }, align 32
@am33xx_push_sram_idle._entry_ptr.57 = internal global ptr @am33xx_push_sram_idle._entry.55, section ".printk_index", align 4
@am33xx_pm_set_ipc_ops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.5, i32 362, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"PM: Cannot determine memory type, no PM available\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"am33xx_pm_set_ipc_ops\00", [42 x i8] zeroinitializer }, align 32
@am33xx_pm_set_ipc_ops._entry_ptr = internal global ptr @am33xx_pm_set_ipc_ops._entry, section ".printk_index", align 4
@rtc_only_idle = internal global { i1, [31 x i8] } zeroinitializer, align 32
@am33xx_pm_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.5, i32 196, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable clock: %i\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"am33xx_pm_suspend\00", [46 x i8] zeroinitializer }, align 32
@am33xx_pm_suspend._entry_ptr = internal global ptr @am33xx_pm_suspend._entry, section ".printk_index", align 4
@am33xx_pm_suspend._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.5, i32 207, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Entering RTC Only mode with DDR in self-refresh\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@am33xx_pm_suspend._entry_ptr.65 = internal global ptr @am33xx_pm_suspend._entry.62, section ".printk_index", align 4
@am33xx_pm_suspend._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.61, ptr @.str.5, i32 221, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PM: Kernel suspend failure\0A\00", [36 x i8] zeroinitializer }, align 32
@am33xx_pm_suspend._entry_ptr.68 = internal global ptr @am33xx_pm_suspend._entry.66, section ".printk_index", align 4
@am33xx_pm_suspend._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.61, ptr @.str.5, i32 228, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"PM: Successfully put all powerdomains to target state\0A\00", [41 x i8] zeroinitializer }, align 32
@am33xx_pm_suspend._entry_ptr.71 = internal global ptr @am33xx_pm_suspend._entry.69, section ".printk_index", align 4
@am33xx_pm_suspend._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.61, ptr @.str.5, i32 232, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"PM: Could not transition all powerdomains to target state\0A\00", [37 x i8] zeroinitializer }, align 32
@am33xx_pm_suspend._entry_ptr.74 = internal global ptr @am33xx_pm_suspend._entry.72, section ".printk_index", align 4
@am33xx_pm_suspend._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.61, ptr @.str.5, i32 237, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PM: CM3 returned unknown result = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@am33xx_pm_suspend._entry_ptr.77 = internal global ptr @am33xx_pm_suspend._entry.75, section ".printk_index", align 4
@wakeup_src = internal global { %struct.wkup_m3_wakeup_src, [16 x i8] } { %struct.wkup_m3_wakeup_src { i32 0, [10 x i8] c"Unknown\00\00\00" }, [16 x i8] zeroinitializer }, align 32
@am33xx_pm_suspend._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.61, ptr @.str.5, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016PM: Wakeup source %s\0A\00", [40 x i8] zeroinitializer }, align 32
@am33xx_pm_suspend._entry_ptr.80 = internal global ptr @am33xx_pm_suspend._entry.78, section ".printk_index", align 4
@am33xx_pm_suspend._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.61, ptr @.str.5, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@am33xx_pm_suspend._entry_ptr.82 = internal global ptr @am33xx_pm_suspend._entry.81, section ".printk_index", align 4
@rtc_alarm_wakeup = internal constant { %struct.wkup_m3_wakeup_src, [16 x i8] } { %struct.wkup_m3_wakeup_src { i32 108, [10 x i8] c"RTC Alarm\00" }, [16 x i8] zeroinitializer }, align 32
@retrigger_irq = internal global { i1, [31 x i8] } zeroinitializer, align 32
@rtc_ext_wakeup = internal constant { %struct.wkup_m3_wakeup_src, [16 x i8] } { %struct.wkup_m3_wakeup_src { i32 0, [10 x i8] c"Ext wakeup" }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"am33xx_pm_driver\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 601, i32 31 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 603, i32 13 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 498, i32 32 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 499, i32 32 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"pm_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 57, i32 40 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 504, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 510, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [8 x i8] c"pm_sram\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 58, i32 36 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 516, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"m3_ipc\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 61, i32 28 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 522, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [11 x i8] c"pm33xx_dev\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 60, i32 23 }
@___asan_gen_.143 = private unnamed_addr constant [14 x i8] c"am33xx_pm_ops\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 347, i32 42 }
@___asan_gen_.146 = private unnamed_addr constant [18 x i8] c"suspend_wfi_flags\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 66, i32 22 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 566, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [14 x i8] c"rtc_base_virt\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 44, i32 22 }
@___asan_gen_.158 = private unnamed_addr constant [8 x i8] c"rtc_fck\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 45, i32 20 }
@___asan_gen_.161 = private unnamed_addr constant [14 x i8] c"gic_dist_base\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 55, i32 22 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 389, i32 43 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 391, i32 44 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 393, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 399, i32 34 }
@___asan_gen_.182 = private unnamed_addr constant [10 x i8] c"sram_pool\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 51, i32 25 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 401, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [15 x i8] c"sram_pool_data\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 51, i32 37 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 409, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"ocmcram_location\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 52, i32 22 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 417, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [22 x i8] c"ocmcram_location_data\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 52, i32 40 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 426, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 443, i32 34 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 447, i32 44 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 453, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 458, i32 29 }
@___asan_gen_.236 = private unnamed_addr constant [9 x i8] c"omap_rtc\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 54, i32 27 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 460, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 466, i32 12 }
@___asan_gen_.248 = private unnamed_addr constant [14 x i8] c"rtc_magic_val\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 46, i32 12 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 471, i32 5 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 480, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant [24 x i8] c"am33xx_do_wfi_sram_phys\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 49, i32 20 }
@___asan_gen_.266 = private unnamed_addr constant [19 x i8] c"am33xx_do_wfi_sram\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 48, i32 14 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 107, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 117, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 128, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 362, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant [14 x i8] c"rtc_only_idle\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 196, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 207, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 221, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 227, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 231, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 236, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant [11 x i8] c"wakeup_src\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 68, i32 34 }
@___asan_gen_.345 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 244, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 246, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant [17 x i8] c"rtc_alarm_wakeup\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 72, i32 34 }
@___asan_gen_.354 = private unnamed_addr constant [14 x i8] c"retrigger_irq\00", align 1
@___asan_gen_.355 = private unnamed_addr constant [15 x i8] c"rtc_ext_wakeup\00", align 1
@___asan_gen_.356 = private constant [27 x i8] c"../drivers/soc/ti/pm33xx.c\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 76, i32 34 }
@llvm.compiler.used = appending global [125 x ptr] [ptr @__UNIQUE_ID_alias291, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_am33xx_pm_driver_exit, ptr @__initcall__kmod_pm33xx__290_608_am33xx_pm_driver_init6, ptr @am33xx_pm_alloc_sram._entry, ptr @am33xx_pm_alloc_sram._entry.25, ptr @am33xx_pm_alloc_sram._entry.28, ptr @am33xx_pm_alloc_sram._entry.31, ptr @am33xx_pm_alloc_sram._entry.34, ptr @am33xx_pm_alloc_sram._entry_ptr, ptr @am33xx_pm_alloc_sram._entry_ptr.27, ptr @am33xx_pm_alloc_sram._entry_ptr.30, ptr @am33xx_pm_alloc_sram._entry_ptr.33, ptr @am33xx_pm_alloc_sram._entry_ptr.36, ptr @am33xx_pm_driver_exit, ptr @am33xx_pm_probe._entry, ptr @am33xx_pm_probe._entry.11, ptr @am33xx_pm_probe._entry.14, ptr @am33xx_pm_probe._entry.17, ptr @am33xx_pm_probe._entry.8, ptr @am33xx_pm_probe._entry_ptr, ptr @am33xx_pm_probe._entry_ptr.10, ptr @am33xx_pm_probe._entry_ptr.13, ptr @am33xx_pm_probe._entry_ptr.16, ptr @am33xx_pm_probe._entry_ptr.19, ptr @am33xx_pm_rtc_setup._entry, ptr @am33xx_pm_rtc_setup._entry.42, ptr @am33xx_pm_rtc_setup._entry.46, ptr @am33xx_pm_rtc_setup._entry.49, ptr @am33xx_pm_rtc_setup._entry_ptr, ptr @am33xx_pm_rtc_setup._entry_ptr.44, ptr @am33xx_pm_rtc_setup._entry_ptr.48, ptr @am33xx_pm_rtc_setup._entry_ptr.51, ptr @am33xx_pm_set_ipc_ops._entry, ptr @am33xx_pm_set_ipc_ops._entry_ptr, ptr @am33xx_pm_suspend._entry, ptr @am33xx_pm_suspend._entry.62, ptr @am33xx_pm_suspend._entry.66, ptr @am33xx_pm_suspend._entry.69, ptr @am33xx_pm_suspend._entry.72, ptr @am33xx_pm_suspend._entry.75, ptr @am33xx_pm_suspend._entry.78, ptr @am33xx_pm_suspend._entry.81, ptr @am33xx_pm_suspend._entry_ptr, ptr @am33xx_pm_suspend._entry_ptr.65, ptr @am33xx_pm_suspend._entry_ptr.68, ptr @am33xx_pm_suspend._entry_ptr.71, ptr @am33xx_pm_suspend._entry_ptr.74, ptr @am33xx_pm_suspend._entry_ptr.77, ptr @am33xx_pm_suspend._entry_ptr.80, ptr @am33xx_pm_suspend._entry_ptr.82, ptr @am33xx_push_sram_idle._entry, ptr @am33xx_push_sram_idle._entry.55, ptr @am33xx_push_sram_idle._entry_ptr, ptr @am33xx_push_sram_idle._entry_ptr.57, ptr @am33xx_pm_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @pm_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @pm_sram, ptr @.str.12, ptr @m3_ipc, ptr @.str.15, ptr @pm33xx_dev, ptr @am33xx_pm_ops, ptr @suspend_wfi_flags, ptr @.str.18, ptr @rtc_base_virt, ptr @rtc_fck, ptr @gic_dist_base, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @sram_pool, ptr @.str.26, ptr @sram_pool_data, ptr @.str.29, ptr @ocmcram_location, ptr @.str.32, ptr @ocmcram_location_data, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @omap_rtc, ptr @.str.43, ptr @.str.45, ptr @rtc_magic_val, ptr @.str.47, ptr @.str.50, ptr @am33xx_do_wfi_sram_phys, ptr @am33xx_do_wfi_sram, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @rtc_only_idle, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @wakeup_src, ptr @.str.79, ptr @rtc_alarm_wakeup, ptr @retrigger_irq, ptr @rtc_ext_wakeup], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pm_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_sram to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pm_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m3_ipc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pm_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm33xx_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_wfi_flags to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pm_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_base_virt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_fck to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_dist_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pm_alloc_sram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_pool to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pm_alloc_sram._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_pool_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pm_alloc_sram._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocmcram_location to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pm_alloc_sram._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocmcram_location_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pm_alloc_sram._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pm_rtc_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rtc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pm_rtc_setup._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_magic_val to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pm_rtc_setup._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pm_rtc_setup._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_do_wfi_sram_phys to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_do_wfi_sram to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_push_sram_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_push_sram_idle._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pm_set_ipc_ops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_only_idle to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pm_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pm_suspend._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pm_suspend._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pm_suspend._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pm_suspend._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pm_suspend._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeup_src to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pm_suspend._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pm_suspend._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_alarm_wakeup to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @retrigger_irq to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_ext_wakeup to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_pm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @am33xx_pm_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @am33xx_pm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @am33xx_pm_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_pm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  store ptr %1, ptr @pm_ops, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i = tail call ptr @ioremap(i32 noundef 1210322944, i32 noundef 4096) #8
  store ptr %call.i, ptr @gic_dist_base, align 4
  %tobool.not.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.not, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %2 = load ptr, ptr @pm_ops, align 4
  %get_sram_addrs = getelementptr inbounds %struct.am33xx_pm_platform_data, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %get_sram_addrs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_sram_addrs, align 4
  %call15 = tail call ptr %4() #8
  store ptr %call15, ptr @pm_sram, align 4
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.end20, label %if.end21

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %call22 = tail call ptr @wkup_m3_ipc_get() #8
  store ptr %call22, ptr @m3_ipc, align 4
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #11
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  store ptr %dev1, ptr @pm33xx_dev, align 4
  %call.i75 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.20) #8
  %tobool.not.i76 = icmp eq ptr %call.i75, null
  br i1 %tobool.not.i76, label %if.then.i, label %if.end30.if.end4.i_crit_edge

if.end30.if.end4.i_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then.i:                                        ; preds = %if.end30
  %call1.i = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.21) #8
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %am33xx_pm_alloc_sram.exit.thread, label %if.then.i.if.end4.i_crit_edge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

am33xx_pm_alloc_sram.exit.thread:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = load ptr, ptr @pm33xx_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #11
  br label %cleanup

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %if.end30.if.end4.i_crit_edge
  %np.0.i = phi ptr [ %call.i75, %if.end30.if.end4.i_crit_edge ], [ %call1.i, %if.then.i.if.end4.i_crit_edge ]
  %call5.i = tail call ptr @of_gen_pool_get(ptr noundef nonnull %np.0.i, ptr noundef nonnull @.str.24, i32 noundef 0) #8
  store ptr %call5.i, ptr @sram_pool, align 4
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %do.end10.i, label %if.end11.i

do.end10.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = load ptr, ptr @pm33xx_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.23) #11
  br label %am33xx_pm_alloc_sram.exit.thread81

if.end11.i:                                       ; preds = %if.end4.i
  %call12.i = tail call ptr @of_gen_pool_get(ptr noundef nonnull %np.0.i, ptr noundef nonnull @.str.24, i32 noundef 1) #8
  store ptr %call12.i, ptr @sram_pool_data, align 4
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %do.end17.i, label %if.end18.i

do.end17.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load ptr, ptr @pm33xx_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.23) #11
  br label %am33xx_pm_alloc_sram.exit.thread81

if.end18.i:                                       ; preds = %if.end11.i
  %8 = load ptr, ptr @sram_pool, align 4
  %9 = load ptr, ptr @pm_sram, align 4
  %do_wfi_sz.i = getelementptr inbounds %struct.am33xx_pm_sram_addr, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %do_wfi_sz.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %do_wfi_sz.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %algo.i.i = getelementptr inbounds %struct.gen_pool, ptr %8, i32 0, i32 3
  %14 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %algo.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.gen_pool, ptr %8, i32 0, i32 4
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef %8, i32 noundef %13, ptr noundef %15, ptr noundef %17, ptr noundef null) #8
  store i32 %call.i.i.i, ptr @ocmcram_location, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool20.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool20.not.i, label %do.end24.i, label %if.end25.i

do.end24.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = load ptr, ptr @pm33xx_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.23) #11
  br label %am33xx_pm_alloc_sram.exit.thread81

if.end25.i:                                       ; preds = %if.end18.i
  %19 = load ptr, ptr @sram_pool_data, align 4
  %algo.i39.i = getelementptr inbounds %struct.gen_pool, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %algo.i39.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %algo.i39.i, align 4
  %data.i40.i = getelementptr inbounds %struct.gen_pool, ptr %19, i32 0, i32 4
  %22 = ptrtoint ptr %data.i40.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i40.i, align 4
  %call.i.i41.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef %19, i32 noundef 560, ptr noundef %21, ptr noundef %23, ptr noundef null) #8
  store i32 %call.i.i41.i, ptr @ocmcram_location_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i41.i)
  %tobool27.not.i = icmp eq i32 %call.i.i41.i, 0
  br i1 %tobool27.not.i, label %do.end31.i, label %if.end34

do.end31.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = load ptr, ptr @pm33xx_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.35) #11
  %25 = load ptr, ptr @sram_pool, align 4
  %26 = load i32, ptr @ocmcram_location, align 4
  %27 = load ptr, ptr @pm_sram, align 4
  %do_wfi_sz32.i = getelementptr inbounds %struct.am33xx_pm_sram_addr, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %do_wfi_sz32.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %do_wfi_sz32.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  tail call void @gen_pool_free_owner(ptr noundef %25, i32 noundef %26, i32 noundef %31, ptr noundef null) #8
  br label %am33xx_pm_alloc_sram.exit.thread81

am33xx_pm_alloc_sram.exit.thread81:               ; preds = %do.end31.i, %do.end24.i, %do.end17.i, %do.end10.i
  %ret.0.i.ph = phi i32 [ -19, %do.end10.i ], [ -19, %do.end17.i ], [ -12, %do.end24.i ], [ -12, %do.end31.i ]
  tail call void @of_node_put(ptr noundef nonnull %np.0.i) #8
  br label %cleanup

if.end34:                                         ; preds = %if.end25.i
  tail call void @of_node_put(ptr noundef nonnull %np.0.i) #8
  %call35 = tail call fastcc i32 @am33xx_pm_rtc_setup()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.err_free_sram_crit_edge

if.end34.err_free_sram_crit_edge:                 ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_sram

if.end38:                                         ; preds = %if.end34
  %call39 = tail call fastcc i32 @am33xx_push_sram_idle()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.err_unsetup_rtc_crit_edge

if.end38.err_unsetup_rtc_crit_edge:               ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unsetup_rtc

if.end42:                                         ; preds = %if.end38
  tail call fastcc void @am33xx_pm_set_ipc_ops()
  tail call void @suspend_set_ops(ptr noundef nonnull @am33xx_pm_ops) #8
  %32 = load i32, ptr @suspend_wfi_flags, align 4
  %or45 = or i32 %32, 15
  store i32 %or45, ptr @suspend_wfi_flags, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #8
  %call.i77 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %cmp = icmp slt i32 %call.i77, 0
  br i1 %cmp, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev1)
  br label %err_pm_runtime_disable

if.end48:                                         ; preds = %if.end42
  %33 = load ptr, ptr @pm_ops, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %call49 = tail call i32 %35(ptr noundef nonnull @am33xx_do_sram_idle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end48.cleanup_crit_edge, label %do.end54

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #11
  %call.i78 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #8
  br label %err_pm_runtime_disable

err_pm_runtime_disable:                           ; preds = %do.end54, %if.then47
  %ret.0 = phi i32 [ %call.i77, %if.then47 ], [ -19, %do.end54 ]
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  %36 = load ptr, ptr @m3_ipc, align 4
  tail call void @wkup_m3_ipc_put(ptr noundef %36) #8
  br label %err_unsetup_rtc

err_unsetup_rtc:                                  ; preds = %err_pm_runtime_disable, %if.end38.err_unsetup_rtc_crit_edge
  %ret.1 = phi i32 [ %call39, %if.end38.err_unsetup_rtc_crit_edge ], [ %ret.0, %err_pm_runtime_disable ]
  %37 = load ptr, ptr @rtc_base_virt, align 4
  tail call void @iounmap(ptr noundef %37) #8
  %38 = load ptr, ptr @rtc_fck, align 4
  tail call void @clk_put(ptr noundef %38) #8
  br label %err_free_sram

err_free_sram:                                    ; preds = %err_unsetup_rtc, %if.end34.err_free_sram_crit_edge
  %ret.2 = phi i32 [ %call35, %if.end34.err_free_sram_crit_edge ], [ %ret.1, %err_unsetup_rtc ]
  tail call fastcc void @am33xx_pm_free_sram()
  store ptr null, ptr @pm33xx_dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_free_sram, %if.end48.cleanup_crit_edge, %am33xx_pm_alloc_sram.exit.thread81, %am33xx_pm_alloc_sram.exit.thread, %do.end27, %do.end20, %do.end12, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end12 ], [ %ret.2, %err_free_sram ], [ -517, %do.end27 ], [ -19, %do.end20 ], [ -19, %do.end ], [ -19, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end48.cleanup_crit_edge ], [ -19, %am33xx_pm_alloc_sram.exit.thread ], [ %ret.0.i.ph, %am33xx_pm_alloc_sram.exit.thread81 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_pm_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %0 = load ptr, ptr @pm_ops, align 4
  %deinit = getelementptr inbounds %struct.am33xx_pm_platform_data, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %deinit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %deinit, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 %2() #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @suspend_set_ops(ptr noundef null) #8
  %3 = load ptr, ptr @m3_ipc, align 4
  tail call void @wkup_m3_ipc_put(ptr noundef %3) #8
  %4 = load ptr, ptr @sram_pool, align 4
  %5 = load i32, ptr @ocmcram_location, align 4
  %6 = load ptr, ptr @pm_sram, align 4
  %do_wfi_sz.i = getelementptr inbounds %struct.am33xx_pm_sram_addr, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %do_wfi_sz.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %do_wfi_sz.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  tail call void @gen_pool_free_owner(ptr noundef %4, i32 noundef %5, i32 noundef %10, ptr noundef null) #8
  %11 = load ptr, ptr @sram_pool_data, align 4
  %12 = load i32, ptr @ocmcram_location_data, align 4
  tail call void @gen_pool_free_owner(ptr noundef %11, i32 noundef %12, i32 noundef 16, ptr noundef null) #8
  %13 = load ptr, ptr @rtc_base_virt, align 4
  tail call void @iounmap(ptr noundef %13) #8
  %14 = load ptr, ptr @rtc_fck, align 4
  tail call void @clk_put(ptr noundef %14) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wkup_m3_ipc_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @am33xx_pm_rtc_setup() unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %call = tail call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull @.str.37) #8
  %call1 = tail call zeroext i1 @of_device_is_available(ptr noundef %call) #8
  br i1 %call1, label %if.then, label %do.end35

if.then:                                          ; preds = %entry
  %parent = getelementptr inbounds %struct.device_node, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 4
  %call2 = tail call ptr @of_clk_get_by_name(ptr noundef %2, ptr noundef nonnull @.str.38) #8
  store ptr %call2, ptr @rtc_fck, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call6 = tail call ptr @of_iomap(ptr noundef %call, i32 noundef 0) #8
  store ptr %call6, ptr @rtc_base_virt, align 4
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #11
  br label %err_clk_put

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @rtc_class_open(ptr noundef nonnull @.str.41) #8
  store ptr %call10, ptr @omap_rtc, align 4
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #11
  %4 = load ptr, ptr @rtc_base_virt, align 4
  tail call void @iounmap(ptr noundef %4) #8
  br label %err_clk_put

if.end18:                                         ; preds = %if.end9
  %call19 = tail call ptr @devm_nvmem_device_get(ptr noundef nonnull %call10, ptr noundef nonnull @.str.45) #8
  %cmp.i47 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i47, label %if.end18.cleanup_crit_edge, label %if.then21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then21:                                        ; preds = %if.end18
  %call22 = tail call i32 @nvmem_device_read(ptr noundef %call19, i32 noundef 4, i32 noundef 4, ptr noundef nonnull @rtc_magic_val) #8
  %5 = load i32, ptr @rtc_magic_val, align 4
  %and = and i32 %5, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 36048, i32 %and)
  %cmp.not = icmp eq i32 %and, 36048
  br i1 %cmp.not, label %if.then21.if.end29_crit_edge, label %do.end26

if.then21.if.end29_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

do.end26:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #11
  br label %if.end29

if.end29:                                         ; preds = %do.end26, %if.then21.if.end29_crit_edge
  %call30 = call i32 @nvmem_device_write(ptr noundef %call19, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %val) #8
  %6 = load ptr, ptr @pm_sram, align 4
  %resume_address = getelementptr inbounds %struct.am33xx_pm_sram_addr, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %resume_address to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %resume_address, align 4
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val, align 4
  %call31 = call i32 @nvmem_device_write(ptr noundef %call19, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %val) #8
  br label %cleanup

do.end35:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #11
  br label %cleanup

err_clk_put:                                      ; preds = %do.end15, %do.end
  %error.0 = phi i32 [ -517, %do.end15 ], [ -19, %do.end ]
  %10 = load ptr, ptr @rtc_fck, align 4
  tail call void @clk_put(ptr noundef %10) #8
  br label %cleanup

cleanup:                                          ; preds = %err_clk_put, %do.end35, %if.end29, %if.end18.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ %3, %if.then4 ], [ %error.0, %err_clk_put ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %if.end29 ], [ 0, %do.end35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @am33xx_push_sram_idle() unnamed_addr #2 align 64 {
entry:
  %ro_sram_data = alloca %struct.am33xx_pm_ro_sram_data, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ro_sram_data) #8
  %0 = getelementptr inbounds %struct.am33xx_pm_ro_sram_data, ptr %ro_sram_data, i32 0, i32 1
  %1 = getelementptr inbounds %struct.am33xx_pm_ro_sram_data, ptr %ro_sram_data, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %ro_sram_data, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %2, align 8
  %4 = load i32, ptr @ocmcram_location_data, align 4
  %5 = ptrtoint ptr %ro_sram_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ro_sram_data, align 8
  %6 = load ptr, ptr @sram_pool_data, align 4
  %call = tail call i32 @gen_pool_virt_to_phys(ptr noundef %6, i32 noundef %4) #8
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call, ptr %0, align 4
  %8 = load ptr, ptr @rtc_base_virt, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %1, align 8
  %10 = load ptr, ptr @sram_pool, align 4
  %11 = load i32, ptr @ocmcram_location, align 4
  %call1 = tail call i32 @gen_pool_virt_to_phys(ptr noundef %10, i32 noundef %11) #8
  store i32 %call1, ptr @am33xx_do_wfi_sram_phys, align 4
  %12 = load ptr, ptr @sram_pool, align 4
  %13 = load i32, ptr @ocmcram_location, align 4
  %14 = inttoptr i32 %13 to ptr
  %15 = load ptr, ptr @pm_sram, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %do_wfi_sz = getelementptr inbounds %struct.am33xx_pm_sram_addr, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %do_wfi_sz to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %do_wfi_sz, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %call2 = tail call ptr @sram_exec_copy(ptr noundef %12, ptr noundef %14, ptr noundef %17, i32 noundef %21) #8
  store ptr %call2, ptr @am33xx_do_wfi_sram, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %22 = load ptr, ptr @pm33xx_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %23 = load ptr, ptr @pm_sram, align 4
  %emif_sram_table = getelementptr inbounds %struct.am33xx_pm_sram_addr, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %emif_sram_table to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %emif_sram_table, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = ptrtoint ptr %call2 to i32
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %23, align 4
  %30 = ptrtoint ptr %29 to i32
  %sub.i = add i32 %26, %27
  %add.i = sub i32 %sub.i, %30
  %31 = load ptr, ptr @sram_pool, align 4
  %32 = inttoptr i32 %add.i to ptr
  %call4 = tail call i32 @ti_emif_copy_pm_function_table(ptr noundef %31, ptr noundef %32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end16, label %do.body7

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @am33xx_push_sram_idle.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@am33xx_push_sram_idle, %if.then12)) #8
          to label %cleanup [label %if.then12], !srcloc !197

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %33 = load ptr, ptr @pm33xx_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @am33xx_push_sram_idle.__UNIQUE_ID_ddebug289, ptr noundef %33, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %34 = load ptr, ptr @pm_sram, align 4
  %ro_sram_data17 = getelementptr inbounds %struct.am33xx_pm_sram_addr, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %ro_sram_data17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ro_sram_data17, align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = load ptr, ptr @am33xx_do_wfi_sram, align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %34, align 4
  %42 = ptrtoint ptr %41 to i32
  %sub.i30 = add i32 %39, %37
  %add.i31 = sub i32 %sub.i30, %42
  %43 = load ptr, ptr @sram_pool, align 4
  %44 = inttoptr i32 %add.i31 to ptr
  %call19 = call ptr @sram_exec_copy(ptr noundef %43, ptr noundef %44, ptr noundef nonnull %ro_sram_data, i32 noundef 16) #8
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %do.end24, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %45 = load ptr, ptr @pm33xx_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.53) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %if.end16.cleanup_crit_edge, %if.then12, %do.body7, %do.end
  %retval.0 = phi i32 [ -19, %do.end24 ], [ -19, %do.end ], [ -517, %if.then12 ], [ 0, %if.end16.cleanup_crit_edge ], [ -517, %do.body7 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ro_sram_data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @am33xx_pm_set_ipc_ops() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ti_emif_get_mem_type() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @pm33xx_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.58) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load ptr, ptr @m3_ipc, align 4
  %ops = getelementptr inbounds %struct.wkup_m3_ipc, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %1, i32 noundef %call) #8
  %6 = load i32, ptr @am33xx_do_wfi_sram_phys, align 4
  %7 = load ptr, ptr @pm_sram, align 4
  %resume_offset = getelementptr inbounds %struct.am33xx_pm_sram_addr, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %resume_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resume_offset, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %6, 4
  %add1 = add i32 %add, %11
  %12 = load ptr, ptr @m3_ipc, align 4
  %ops2 = getelementptr inbounds %struct.wkup_m3_ipc, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %ops2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops2, align 4
  %set_resume_address = getelementptr inbounds %struct.wkup_m3_ipc_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %set_resume_address to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_resume_address, align 4
  %17 = inttoptr i32 %add1 to ptr
  tail call void %16(ptr noundef %12, ptr noundef %17) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_set_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #8, !srcloc !199
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !200
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_do_sram_idle(i32 noundef %wfi_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @m3_ipc, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr @pm_ops, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %and = and i32 %wfi_flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ops = getelementptr inbounds %struct.wkup_m3_ipc, ptr %0, i32 0, i32 9
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %prepare_low_power = getelementptr inbounds %struct.wkup_m3_ipc_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %prepare_low_power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prepare_low_power, align 4
  %call = tail call i32 %5(ptr noundef nonnull %0, i32 noundef 3) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %6 = load ptr, ptr @pm_ops, align 4
  %cpu_suspend = getelementptr inbounds %struct.am33xx_pm_platform_data, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu_suspend to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpu_suspend, align 4
  %9 = load ptr, ptr @am33xx_do_wfi_sram, align 4
  %call5 = tail call i32 %8(ptr noundef %9, i32 noundef %wfi_flags) #8
  br label %return

return:                                           ; preds = %if.end4, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wkup_m3_ipc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @am33xx_pm_free_sram() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sram_pool, align 4
  %1 = load i32, ptr @ocmcram_location, align 4
  %2 = load ptr, ptr @pm_sram, align 4
  %do_wfi_sz = getelementptr inbounds %struct.am33xx_pm_sram_addr, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %do_wfi_sz to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %do_wfi_sz, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  tail call void @gen_pool_free_owner(ptr noundef %0, i32 noundef %1, i32 noundef %6, ptr noundef null) #8
  %7 = load ptr, ptr @sram_pool_data, align 4
  %8 = load i32, ptr @ocmcram_location_data, align 4
  tail call void @gen_pool_free_owner(ptr noundef %7, i32 noundef %8, i32 noundef 16, ptr noundef null) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_gen_pool_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtc_class_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_device_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmem_device_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmem_device_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_virt_to_phys(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sram_exec_copy(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_emif_copy_pm_function_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_emif_get_mem_type() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @am33xx_pm_valid(i32 noundef %state) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %state, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %switch = icmp eq i32 %0, 2
  %. = zext i1 %switch to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_pm_begin(i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp = icmp eq i32 %state, 3
  br i1 %cmp, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %entry
  %0 = load ptr, ptr @pm_ops, align 4
  %check_off_mode_enable = getelementptr inbounds %struct.am33xx_pm_platform_data, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %check_off_mode_enable to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %check_off_mode_enable, align 4
  %call = tail call i32 %2() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true.if.end5.thread_crit_edge, label %if.then

land.lhs.true.if.end5.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.thread

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr @omap_rtc, align 4
  %call1 = tail call ptr @devm_nvmem_device_get(ptr noundef %3, ptr noundef nonnull @.str.45) #8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then.if.end5.thread_crit_edge, label %if.then3

if.then.if.end5.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.thread

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @nvmem_device_write(ptr noundef %call1, i32 noundef 4, i32 noundef 4, ptr noundef nonnull @rtc_magic_val) #8
  br label %if.end5.thread

if.end5.thread:                                   ; preds = %if.then3, %if.then.if.end5.thread_crit_edge, %land.lhs.true.if.end5.thread_crit_edge
  %4 = xor i1 %tobool.not, true
  store i1 %4, ptr @rtc_only_idle, align 4
  %5 = load ptr, ptr @pm_ops, align 4
  %begin_suspend14 = getelementptr inbounds %struct.am33xx_pm_platform_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %begin_suspend14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %begin_suspend14, align 4
  tail call void %7() #8
  %8 = load ptr, ptr @m3_ipc, align 4
  %ops = getelementptr inbounds %struct.wkup_m3_ipc, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %prepare_low_power = getelementptr inbounds %struct.wkup_m3_ipc_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %prepare_low_power to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prepare_low_power, align 4
  %call6 = tail call i32 %12(ptr noundef %8, i32 noundef 1) #8
  br label %sw.epilog

if.end5:                                          ; preds = %entry
  store i1 false, ptr @rtc_only_idle, align 4
  %13 = load ptr, ptr @pm_ops, align 4
  %begin_suspend = getelementptr inbounds %struct.am33xx_pm_platform_data, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %begin_suspend to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %begin_suspend, align 4
  tail call void %15() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %state)
  %cond = icmp eq i32 %state, 2
  br i1 %cond, label %sw.bb7, label %if.end5.sw.epilog_crit_edge

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %16 = load ptr, ptr @m3_ipc, align 4
  %ops8 = getelementptr inbounds %struct.wkup_m3_ipc, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %ops8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops8, align 4
  %prepare_low_power9 = getelementptr inbounds %struct.wkup_m3_ipc_ops, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %prepare_low_power9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prepare_low_power9, align 4
  %call10 = tail call i32 %20(ptr noundef %16, i32 noundef 2) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %if.end5.sw.epilog_crit_edge, %if.end5.thread
  %ret.0 = phi i32 [ -22, %if.end5.sw.epilog_crit_edge ], [ %call10, %sw.bb7 ], [ %call6, %if.end5.thread ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_pm_enter(i32 noundef %suspend_state) #2 align 64 {
entry:
  %tmp.i = alloca %struct.wkup_m3_wakeup_src, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %suspend_state, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %switch = icmp eq i32 %0, 2
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %suspend_state)
  %cmp.i = icmp eq i32 %suspend_state, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.if.end15.i_crit_edge

sw.bb.if.end15.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %1 = load ptr, ptr @pm_ops, align 4
  %check_off_mode_enable.i = getelementptr inbounds %struct.am33xx_pm_platform_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %check_off_mode_enable.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %check_off_mode_enable.i, align 4
  %call.i = tail call i32 %3() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end15.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %4 = load ptr, ptr @rtc_fck, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.do.end.i_crit_edge

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %4) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i.i, %if.then.i.do.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.then.i.do.end.i_crit_edge ]
  %5 = load ptr, ptr @pm33xx_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.60, i32 noundef %retval.0.i.ph.i) #11
  br label %sw.epilog

if.end.i:                                         ; preds = %if.end.i.i
  %6 = load ptr, ptr @pm_ops, align 4
  %save_context.i = getelementptr inbounds %struct.am33xx_pm_platform_data, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %save_context.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %save_context.i, align 4
  tail call void %8() #8
  %9 = load i32, ptr @suspend_wfi_flags, align 4
  %or.i = or i32 %9, 16
  store i32 %or.i, ptr @suspend_wfi_flags, align 4
  %call4.i = tail call i32 @clk_save_context() #8
  %10 = load ptr, ptr @pm_ops, align 4
  %soc_suspend.i = getelementptr inbounds %struct.am33xx_pm_platform_data, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %soc_suspend.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %soc_suspend.i, align 4
  %13 = load i32, ptr @suspend_wfi_flags, align 4
  %call5.i = tail call i32 %12(i32 noundef 3, ptr noundef nonnull @am33xx_rtc_only_idle, i32 noundef %13) #8
  %14 = load i32, ptr @suspend_wfi_flags, align 4
  %and.i = and i32 %14, -17
  store i32 %and.i, ptr @suspend_wfi_flags, align 4
  %15 = load ptr, ptr @pm33xx_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.63) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool9.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool9.not.i, label %if.end15.thread.i, label %if.end.i.do.end20.i_crit_edge

if.end.i.do.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20.i

if.end15.thread.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_restore_context() #8
  %16 = load ptr, ptr @pm_ops, align 4
  %restore_context.i = getelementptr inbounds %struct.am33xx_pm_platform_data, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %restore_context.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %restore_context.i, align 4
  tail call void %18() #8
  %19 = load ptr, ptr @m3_ipc, align 4
  %ops.i = getelementptr inbounds %struct.wkup_m3_ipc, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %set_rtc_only.i = getelementptr inbounds %struct.wkup_m3_ipc_ops, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %set_rtc_only.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_rtc_only.i, align 4
  tail call void %23(ptr noundef %19) #8
  %call11.i = tail call fastcc i32 @am33xx_push_sram_idle() #8
  br label %if.else21.i

if.end15.i:                                       ; preds = %land.lhs.true.i.if.end15.i_crit_edge, %sw.bb.if.end15.i_crit_edge
  %24 = load ptr, ptr @pm_ops, align 4
  %soc_suspend13.i = getelementptr inbounds %struct.am33xx_pm_platform_data, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %soc_suspend13.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %soc_suspend13.i, align 4
  %27 = load ptr, ptr @am33xx_do_wfi_sram, align 4
  %28 = load i32, ptr @suspend_wfi_flags, align 4
  %call14.i = tail call i32 %26(i32 noundef %suspend_state, ptr noundef %27, i32 noundef %28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool16.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.else21.i_crit_edge, label %if.end15.i.do.end20.i_crit_edge

if.end15.i.do.end20.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20.i

if.end15.i.if.else21.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else21.i

do.end20.i:                                       ; preds = %if.end15.i.do.end20.i_crit_edge, %if.end.i.do.end20.i_crit_edge
  %ret.078.i = phi i32 [ %call14.i, %if.end15.i.do.end20.i_crit_edge ], [ %call5.i, %if.end.i.do.end20.i_crit_edge ]
  %29 = load ptr, ptr @pm33xx_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.67) #11
  br label %if.end50.i

if.else21.i:                                      ; preds = %if.end15.i.if.else21.i_crit_edge, %if.end15.thread.i
  %30 = load ptr, ptr @m3_ipc, align 4
  %ops22.i = getelementptr inbounds %struct.wkup_m3_ipc, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %ops22.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops22.i, align 4
  %request_pm_status.i = getelementptr inbounds %struct.wkup_m3_ipc_ops, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %request_pm_status.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %request_pm_status.i, align 4
  %call23.i = tail call i32 %34(ptr noundef %30) #8
  %35 = zext i32 %call23.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call23.i, label %do.end33.i [
    i32 0, label %do.end26.i
    i32 1, label %do.end30.i
  ]

do.end26.i:                                       ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = load ptr, ptr @pm33xx_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.70) #11
  br label %sw.epilog.i

do.end30.i:                                       ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = load ptr, ptr @pm33xx_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.73) #11
  br label %sw.epilog.i

do.end33.i:                                       ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = load ptr, ptr @pm33xx_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.76, i32 noundef %call23.i) #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end33.i, %do.end30.i, %do.end26.i
  %ret.1.i = phi i32 [ -1, %do.end33.i ], [ -1, %do.end30.i ], [ 0, %do.end26.i ]
  %.b.i = load i1, ptr @rtc_only_idle, align 4
  br i1 %.b.i, label %if.then35.i, label %do.end44.i

if.then35.i:                                      ; preds = %sw.epilog.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i)
  %39 = load ptr, ptr @rtc_base_virt, align 4, !noalias !201
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 68
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !noalias !201, !srcloc !204
  %and.i.i = and i32 %40, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i68.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i68.i, label %if.end.i69.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @retrigger_irq, align 4, !noalias !201
  %41 = call ptr @memcpy(ptr %tmp.i, ptr @rtc_alarm_wakeup, i32 16)
  br label %rtc_wake_src.exit.i

if.end.i69.i:                                     ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 false, ptr @retrigger_irq, align 4, !noalias !201
  %42 = call ptr @memcpy(ptr %tmp.i, ptr @rtc_ext_wakeup, i32 16)
  br label %rtc_wake_src.exit.i

rtc_wake_src.exit.i:                              ; preds = %if.end.i69.i, %if.then.i.i
  %43 = call ptr @memcpy(ptr @wakeup_src, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i)
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef getelementptr inbounds (%struct.wkup_m3_wakeup_src, ptr @wakeup_src, i32 0, i32 1)) #11
  br label %if.end50.i

do.end44.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = load ptr, ptr @m3_ipc, align 4
  %ops46.i = getelementptr inbounds %struct.wkup_m3_ipc, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %ops46.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops46.i, align 4
  %request_wake_src.i = getelementptr inbounds %struct.wkup_m3_ipc_ops, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %request_wake_src.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %request_wake_src.i, align 4
  %call47.i = tail call ptr %48(ptr noundef %44) #8
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %call47.i) #11
  br label %if.end50.i

if.end50.i:                                       ; preds = %do.end44.i, %rtc_wake_src.exit.i, %do.end20.i
  %ret.2.i = phi i32 [ %ret.078.i, %do.end20.i ], [ %ret.1.i, %rtc_wake_src.exit.i ], [ %ret.1.i, %do.end44.i ]
  br i1 %cmp.i, label %land.lhs.true52.i, label %if.end50.i.sw.epilog_crit_edge

if.end50.i.sw.epilog_crit_edge:                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true52.i:                                ; preds = %if.end50.i
  %49 = load ptr, ptr @pm_ops, align 4
  %check_off_mode_enable53.i = getelementptr inbounds %struct.am33xx_pm_platform_data, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %check_off_mode_enable53.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %check_off_mode_enable53.i, align 4
  %call54.i = tail call i32 %51() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %land.lhs.true52.i.sw.epilog_crit_edge, label %if.then56.i

land.lhs.true52.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then56.i:                                      ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = load ptr, ptr @rtc_fck, align 4
  tail call void @clk_disable(ptr noundef %52) #8
  tail call void @clk_unprepare(ptr noundef %52) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then56.i, %land.lhs.true52.i.sw.epilog_crit_edge, %if.end50.i.sw.epilog_crit_edge, %do.end.i, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ %retval.0.i.ph.i, %do.end.i ], [ %ret.2.i, %if.then56.i ], [ %ret.2.i, %land.lhs.true52.i.sw.epilog_crit_edge ], [ %ret.2.i, %if.end50.i.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @am33xx_pm_end() #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %1 = load ptr, ptr @omap_rtc, align 4
  %call = tail call ptr @devm_nvmem_device_get(ptr noundef %1, ptr noundef nonnull @.str.45) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @m3_ipc, align 4
  %ops = getelementptr inbounds %struct.wkup_m3_ipc, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %finish_low_power = getelementptr inbounds %struct.wkup_m3_ipc_ops, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %finish_low_power to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %finish_low_power, align 4
  %call2 = tail call i32 %6(ptr noundef %2) #8
  %.b = load i1, ptr @rtc_only_idle, align 4
  br i1 %.b, label %if.then3, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %.b12 = load i1, ptr @retrigger_irq, align 4
  br i1 %.b12, label %if.then5, label %if.then3.if.end7_crit_edge

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load ptr, ptr @gic_dist_base, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 1048576) #8, !srcloc !205
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then3.if.end7_crit_edge
  %call8 = call i32 @nvmem_device_write(ptr noundef %call, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %val) #8
  br label %if.end9

if.end9:                                          ; preds = %if.end7, %if.end.if.end9_crit_edge
  store i1 false, ptr @rtc_only_idle, align 4
  %8 = load ptr, ptr @pm_ops, align 4
  %finish_suspend = getelementptr inbounds %struct.am33xx_pm_platform_data, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %finish_suspend to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %finish_suspend, align 4
  call void %10() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_save_context() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_rtc_only_idle(i32 noundef %wfi_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @omap_rtc, align 4
  %call = tail call i32 @omap_rtc_power_off_program(ptr noundef %0) #8
  %1 = load ptr, ptr @am33xx_do_wfi_sram, align 4
  %call1 = tail call i32 %1(i32 noundef %wfi_flags) #8
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_restore_context() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rtc_power_off_program(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !83, !85, !87, !89, !91, !93, !94, !95, !96, !98, !100, !101, !102, !104, !106, !107, !108, !110, !111, !112, !114, !116, !118, !119, !120, !121, !123, !124, !126, !127, !128, !130, !132, !134, !135, !136, !137, !139, !141, !143, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !176, !178, !180, !182, !184, !186}
!llvm.module.flags = !{!188, !189, !190, !191, !192, !193, !194, !195}
!llvm.ident = !{!196}

!0 = !{ptr @__initcall__kmod_pm33xx__290_608_am33xx_pm_driver_init6, !1, !"__initcall__kmod_pm33xx__290_608_am33xx_pm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/ti/pm33xx.c", i32 608, i32 1}
!2 = !{ptr @__exitcall_am33xx_pm_driver_exit, !1, !"__exitcall_am33xx_pm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias291, !4, !"__UNIQUE_ID_alias291", i1 false, i1 false}
!4 = !{!"../drivers/soc/ti/pm33xx.c", i32 610, i32 1}
!5 = !{ptr @__UNIQUE_ID_file292, !6, !"__UNIQUE_ID_file292", i1 false, i1 false}
!6 = !{!"../drivers/soc/ti/pm33xx.c", i32 611, i32 1}
!7 = !{ptr @__UNIQUE_ID_license293, !6, !"__UNIQUE_ID_license293", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description294, !9, !"__UNIQUE_ID_description294", i1 false, i1 false}
!9 = !{!"../drivers/soc/ti/pm33xx.c", i32 612, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/ti/pm33xx.c", i32 603, i32 13}
!12 = !{ptr @am33xx_pm_driver, !13, !"am33xx_pm_driver", i1 false, i1 false}
!13 = !{!"../drivers/soc/ti/pm33xx.c", i32 601, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/ti/pm33xx.c", i32 498, i32 32}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/ti/pm33xx.c", i32 499, i32 32}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/soc/ti/pm33xx.c", i32 504, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @am33xx_pm_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @am33xx_pm_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/soc/ti/pm33xx.c", i32 510, i32 3}
!28 = !{ptr @am33xx_pm_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @am33xx_pm_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/soc/ti/pm33xx.c", i32 516, i32 3}
!32 = !{ptr @am33xx_pm_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @am33xx_pm_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/soc/ti/pm33xx.c", i32 522, i32 3}
!36 = !{ptr @am33xx_pm_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @am33xx_pm_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/soc/ti/pm33xx.c", i32 566, i32 3}
!40 = !{ptr @am33xx_pm_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @am33xx_pm_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @pm_ops, !43, !"pm_ops", i1 false, i1 false}
!43 = !{!"../drivers/soc/ti/pm33xx.c", i32 57, i32 40}
!44 = !{ptr @gic_dist_base, !45, !"gic_dist_base", i1 false, i1 false}
!45 = !{!"../drivers/soc/ti/pm33xx.c", i32 55, i32 22}
!46 = !{ptr @pm_sram, !47, !"pm_sram", i1 false, i1 false}
!47 = !{!"../drivers/soc/ti/pm33xx.c", i32 58, i32 36}
!48 = !{ptr @m3_ipc, !49, !"m3_ipc", i1 false, i1 false}
!49 = !{!"../drivers/soc/ti/pm33xx.c", i32 61, i32 28}
!50 = !{ptr @pm33xx_dev, !51, !"pm33xx_dev", i1 false, i1 false}
!51 = !{!"../drivers/soc/ti/pm33xx.c", i32 60, i32 23}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/soc/ti/pm33xx.c", i32 389, i32 43}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/soc/ti/pm33xx.c", i32 391, i32 44}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/soc/ti/pm33xx.c", i32 393, i32 4}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @am33xx_pm_alloc_sram._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @am33xx_pm_alloc_sram._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/soc/ti/pm33xx.c", i32 399, i32 34}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/soc/ti/pm33xx.c", i32 401, i32 3}
!65 = !{ptr @am33xx_pm_alloc_sram._entry.25, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @am33xx_pm_alloc_sram._entry_ptr.27, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/soc/ti/pm33xx.c", i32 409, i32 3}
!69 = !{ptr @am33xx_pm_alloc_sram._entry.28, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @am33xx_pm_alloc_sram._entry_ptr.30, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/soc/ti/pm33xx.c", i32 417, i32 3}
!73 = !{ptr @am33xx_pm_alloc_sram._entry.31, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @am33xx_pm_alloc_sram._entry_ptr.33, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/soc/ti/pm33xx.c", i32 426, i32 3}
!77 = !{ptr @am33xx_pm_alloc_sram._entry.34, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @am33xx_pm_alloc_sram._entry_ptr.36, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @sram_pool, !80, !"sram_pool", i1 false, i1 false}
!80 = !{!"../drivers/soc/ti/pm33xx.c", i32 51, i32 25}
!81 = !{ptr @sram_pool_data, !82, !"sram_pool_data", i1 false, i1 false}
!82 = !{!"../drivers/soc/ti/pm33xx.c", i32 51, i32 37}
!83 = !{ptr @ocmcram_location, !84, !"ocmcram_location", i1 false, i1 false}
!84 = !{!"../drivers/soc/ti/pm33xx.c", i32 52, i32 22}
!85 = !{ptr @ocmcram_location_data, !86, !"ocmcram_location_data", i1 false, i1 false}
!86 = !{!"../drivers/soc/ti/pm33xx.c", i32 52, i32 40}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/soc/ti/pm33xx.c", i32 443, i32 34}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/soc/ti/pm33xx.c", i32 447, i32 44}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/soc/ti/pm33xx.c", i32 453, i32 4}
!93 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @am33xx_pm_rtc_setup._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @am33xx_pm_rtc_setup._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/soc/ti/pm33xx.c", i32 458, i32 29}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/soc/ti/pm33xx.c", i32 460, i32 4}
!100 = !{ptr @am33xx_pm_rtc_setup._entry.42, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @am33xx_pm_rtc_setup._entry_ptr.44, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/soc/ti/pm33xx.c", i32 466, i32 12}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/soc/ti/pm33xx.c", i32 471, i32 5}
!106 = !{ptr @am33xx_pm_rtc_setup._entry.46, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @am33xx_pm_rtc_setup._entry_ptr.48, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/soc/ti/pm33xx.c", i32 480, i32 3}
!110 = !{ptr @am33xx_pm_rtc_setup._entry.49, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @am33xx_pm_rtc_setup._entry_ptr.51, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @omap_rtc, !113, !"omap_rtc", i1 false, i1 false}
!113 = !{!"../drivers/soc/ti/pm33xx.c", i32 54, i32 27}
!114 = !{ptr @rtc_magic_val, !115, !"rtc_magic_val", i1 false, i1 false}
!115 = !{!"../drivers/soc/ti/pm33xx.c", i32 46, i32 12}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/soc/ti/pm33xx.c", i32 107, i32 3}
!118 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @am33xx_push_sram_idle._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @am33xx_push_sram_idle._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/soc/ti/pm33xx.c", i32 117, i32 3}
!123 = !{ptr @am33xx_push_sram_idle.__UNIQUE_ID_ddebug289, !122, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/soc/ti/pm33xx.c", i32 128, i32 3}
!126 = !{ptr @am33xx_push_sram_idle._entry.55, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @am33xx_push_sram_idle._entry_ptr.57, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @am33xx_do_wfi_sram_phys, !129, !"am33xx_do_wfi_sram_phys", i1 false, i1 false}
!129 = !{!"../drivers/soc/ti/pm33xx.c", i32 49, i32 20}
!130 = !{ptr @am33xx_do_wfi_sram, !131, !"am33xx_do_wfi_sram", i1 false, i1 false}
!131 = !{!"../drivers/soc/ti/pm33xx.c", i32 48, i32 14}
!132 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/soc/ti/pm33xx.c", i32 362, i32 3}
!134 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @am33xx_pm_set_ipc_ops._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @am33xx_pm_set_ipc_ops._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @am33xx_pm_ops, !138, !"am33xx_pm_ops", i1 false, i1 false}
!138 = !{!"../drivers/soc/ti/pm33xx.c", i32 347, i32 42}
!139 = distinct !{null, !140, !"rtc_only_idle", i1 false, i1 false}
!140 = !{!"../drivers/soc/ti/pm33xx.c", i32 64, i32 12}
!141 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/soc/ti/pm33xx.c", i32 196, i32 4}
!143 = !{ptr @.str.61, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @am33xx_pm_suspend._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @am33xx_pm_suspend._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/soc/ti/pm33xx.c", i32 207, i32 3}
!148 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @am33xx_pm_suspend._entry.62, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @am33xx_pm_suspend._entry_ptr.65, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.67, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/soc/ti/pm33xx.c", i32 221, i32 3}
!153 = !{ptr @am33xx_pm_suspend._entry.66, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @am33xx_pm_suspend._entry_ptr.68, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/soc/ti/pm33xx.c", i32 227, i32 4}
!157 = !{ptr @am33xx_pm_suspend._entry.69, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @am33xx_pm_suspend._entry_ptr.71, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/soc/ti/pm33xx.c", i32 231, i32 4}
!161 = !{ptr @am33xx_pm_suspend._entry.72, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @am33xx_pm_suspend._entry_ptr.74, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.76, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/soc/ti/pm33xx.c", i32 236, i32 4}
!165 = !{ptr @am33xx_pm_suspend._entry.75, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @am33xx_pm_suspend._entry_ptr.77, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.79, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/soc/ti/pm33xx.c", i32 244, i32 4}
!169 = !{ptr @am33xx_pm_suspend._entry.78, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @am33xx_pm_suspend._entry_ptr.80, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @am33xx_pm_suspend._entry.81, !172, !"_entry", i1 false, i1 false}
!172 = !{!"../drivers/soc/ti/pm33xx.c", i32 246, i32 4}
!173 = !{ptr @am33xx_pm_suspend._entry_ptr.82, !172, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @wakeup_src, !175, !"wakeup_src", i1 false, i1 false}
!175 = !{!"../drivers/soc/ti/pm33xx.c", i32 68, i32 34}
!176 = !{ptr @rtc_alarm_wakeup, !177, !"rtc_alarm_wakeup", i1 false, i1 false}
!177 = !{!"../drivers/soc/ti/pm33xx.c", i32 72, i32 34}
!178 = distinct !{null, !179, !"retrigger_irq", i1 false, i1 false}
!179 = !{!"../drivers/soc/ti/pm33xx.c", i32 65, i32 12}
!180 = !{ptr @rtc_ext_wakeup, !181, !"rtc_ext_wakeup", i1 false, i1 false}
!181 = !{!"../drivers/soc/ti/pm33xx.c", i32 76, i32 34}
!182 = !{ptr @suspend_wfi_flags, !183, !"suspend_wfi_flags", i1 false, i1 false}
!183 = !{!"../drivers/soc/ti/pm33xx.c", i32 66, i32 22}
!184 = !{ptr @rtc_base_virt, !185, !"rtc_base_virt", i1 false, i1 false}
!185 = !{!"../drivers/soc/ti/pm33xx.c", i32 44, i32 22}
!186 = !{ptr @rtc_fck, !187, !"rtc_fck", i1 false, i1 false}
!187 = !{!"../drivers/soc/ti/pm33xx.c", i32 45, i32 20}
!188 = !{i32 1, !"wchar_size", i32 2}
!189 = !{i32 1, !"min_enum_size", i32 4}
!190 = !{i32 8, !"branch-target-enforcement", i32 0}
!191 = !{i32 8, !"sign-return-address", i32 0}
!192 = !{i32 8, !"sign-return-address-all", i32 0}
!193 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!194 = !{i32 7, !"uwtable", i32 1}
!195 = !{i32 7, !"frame-pointer", i32 2}
!196 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!197 = !{i64 2148734237, i64 2148734242, i64 2148734255, i64 2148734299, i64 2148734333, i64 2148734354}
!198 = !{i64 2148251841}
!199 = !{i64 736664, i64 736689, i64 736711, i64 736727, i64 736739, i64 736759, i64 736783, i64 736799, i64 736811}
!200 = !{i64 2148252029}
!201 = !{!202}
!202 = distinct !{!202, !203, !"rtc_wake_src: %agg.result"}
!203 = distinct !{!203, !"rtc_wake_src"}
!204 = !{i64 4859604}
!205 = !{i64 4859186}
