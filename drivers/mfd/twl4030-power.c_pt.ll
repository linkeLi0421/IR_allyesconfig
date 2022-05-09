; ModuleID = '/llk/IR_all_yes/drivers/mfd/twl4030-power.c_pt.bc'
source_filename = "../drivers/mfd/twl4030-power.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.twl4030_power_data = type { ptr, i32, ptr, ptr, i8, i8 }
%struct.twl4030_resconfig = type { i8, i8, i8, i8, i8, i8 }
%struct.twl4030_script = type { ptr, i32, i8 }
%struct.twl4030_ins = type { i16, i8 }
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

@twl4030_remove_script._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013twl4030: unable to unlock PROTECT_KEY\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"twl4030_remove_script\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mfd/twl4030-power.c\00", [36 x i8] zeroinitializer }, align 32
@twl4030_remove_script._entry_ptr = internal global ptr @twl4030_remove_script._entry, section ".printk_index", align 4
@twl4030_remove_script._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl4030_remove_script._entry_ptr.4 = internal global ptr @twl4030_remove_script._entry.3, section ".printk_index", align 4
@twl4030_remove_script._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013TWL4030 Unable to relock registers\0A\00", [58 x i8] zeroinitializer }, align 32
@twl4030_remove_script._entry_ptr.7 = internal global ptr @twl4030_remove_script._entry.5, section ".printk_index", align 4
@twl4030_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013TWL4030 Unable to configure start-up\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"twl4030_power_off\00", [46 x i8] zeroinitializer }, align 32
@twl4030_power_off._entry_ptr = internal global ptr @twl4030_power_off._entry, section ".printk_index", align 4
@twl4030_power_off._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013TWL4030 Unable to power off\0A\00", [33 x i8] zeroinitializer }, align 32
@twl4030_power_off._entry_ptr.12 = internal global ptr @twl4030_power_off._entry.10, section ".printk_index", align 4
@__initcall__kmod_twl4030_power__210_970_twl4030_power_driver_init6 = internal global ptr @twl4030_power_driver_init, section ".initcall6.init", align 4
@twl4030_power_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @twl4030_power_probe, ptr @twl4030_power_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.15, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @twl4030_power_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_twl4030_power_driver_exit = internal global ptr @twl4030_power_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author211 = internal constant [39 x i8] c"twl4030_power.author=Nokia Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_author212 = internal constant [45 x i8] c"twl4030_power.author=Texas Instruments, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description213 = internal constant [55 x i8] c"twl4030_power.description=Power management for TWL4030\00", section ".modinfo", align 1
@__UNIQUE_ID_file214 = internal constant [45 x i8] c"twl4030_power.file=drivers/mfd/twl4030-power\00", section ".modinfo", align 1
@__UNIQUE_ID_license215 = internal constant [26 x i8] c"twl4030_power.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias216 = internal constant [43 x i8] c"twl4030_power.alias=platform:twl4030_power\00", section ".modinfo", align 1
@twl4030_starton_mask_and_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013TWL4030 Register access failed: %i\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"twl4030_starton_mask_and_set\00", [35 x i8] zeroinitializer }, align 32
@twl4030_starton_mask_and_set._entry_ptr = internal global ptr @twl4030_starton_mask_and_set._entry, section ".printk_index", align 4
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"twl4030_power\00", [18 x i8] zeroinitializer }, align 32
@twl4030_power_of_match = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-power\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-power-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3_reset }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-power-idle\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3_idle }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-power-idle-osc-off\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @osc_off_idle }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-power-omap3-sdp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3_idle_ac_quirk }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-power-omap3-ldp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3_idle_ac_quirk_osc_off }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-power-omap3-evm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3_idle_ac_quirk }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@twl4030_power_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 892, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Platform data is missing\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"twl4030_power_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@twl4030_power_probe._entry_ptr = internal global ptr @twl4030_power_probe._entry, section ".printk_index", align 4
@twl4030_power_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.17, ptr @.str.2, i32 903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013TWL4030 Unable to unlock registers\0A\00", [58 x i8] zeroinitializer }, align 32
@twl4030_power_probe._entry_ptr.22 = internal global ptr @twl4030_power_probe._entry.20, section ".printk_index", align 4
@twl4030_power_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.17, ptr @.str.2, i32 915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013TWL4030 failed to load scripts\0A\00", [62 x i8] zeroinitializer }, align 32
@twl4030_power_probe._entry_ptr.25 = internal global ptr @twl4030_power_probe._entry.23, section ".printk_index", align 4
@twl4030_power_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.17, ptr @.str.2, i32 920, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013TWL4030 failed to configure resource\0A\00", [56 x i8] zeroinitializer }, align 32
@twl4030_power_probe._entry_ptr.28 = internal global ptr @twl4030_power_probe._entry.26, section ".printk_index", align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@twl4030_power_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.17, ptr @.str.2, i32 931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014TWL4030 Unable to read registers\0A\00", [60 x i8] zeroinitializer }, align 32
@twl4030_power_probe._entry_ptr.31 = internal global ptr @twl4030_power_probe._entry.29, section ".printk_index", align 4
@twl4030_power_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.17, ptr @.str.2, i32 937, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013TWL4030 Unable to setup SEQ_OFFSYNC\0A\00", [57 x i8] zeroinitializer }, align 32
@twl4030_power_probe._entry_ptr.34 = internal global ptr @twl4030_power_probe._entry.32, section ".printk_index", align 4
@twl4030_power_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.17, ptr @.str.2, i32 949, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl4030_power_probe._entry_ptr.36 = internal global ptr @twl4030_power_probe._entry.35, section ".printk_index", align 4
@load_twl4030_script.order = internal global { i1, [31 x i8] } zeroinitializer, align 32
@load_twl4030_script._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013TWL4030 scripts too big error\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"load_twl4030_script\00", [44 x i8] zeroinitializer }, align 32
@load_twl4030_script._entry_ptr = internal global ptr @load_twl4030_script._entry, section ".printk_index", align 4
@load_twl4030_script._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"\014TWL4030: Bad order of scripts (sleep script before wakeup) Leads to boot failure on some boards\0A\00", [61 x i8] zeroinitializer }, align 32
@load_twl4030_script._entry_ptr.41 = internal global ptr @load_twl4030_script._entry.39, section ".printk_index", align 4
@twl4030_config_warmreset_sequence._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013TWL4030 warmreset seq config error\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"twl4030_config_warmreset_sequence\00", [62 x i8] zeroinitializer }, align 32
@twl4030_config_warmreset_sequence._entry_ptr = internal global ptr @twl4030_config_warmreset_sequence._entry, section ".printk_index", align 4
@twl4030_config_wakeup12_sequence._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013TWL4030 wakeup sequence for P1 and P2config error\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"twl4030_config_wakeup12_sequence\00", [63 x i8] zeroinitializer }, align 32
@twl4030_config_wakeup12_sequence._entry_ptr = internal global ptr @twl4030_config_wakeup12_sequence._entry, section ".printk_index", align 4
@twl4030_config_wakeup3_sequence._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013TWL4030 wakeup sequence for P3 config error\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"twl4030_config_wakeup3_sequence\00", [32 x i8] zeroinitializer }, align 32
@twl4030_config_wakeup3_sequence._entry_ptr = internal global ptr @twl4030_config_wakeup3_sequence._entry, section ".printk_index", align 4
@twl4030_config_sleep_sequence._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013TWL4030 sleep sequence config error\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"twl4030_config_sleep_sequence\00", [34 x i8] zeroinitializer }, align 32
@twl4030_config_sleep_sequence._entry_ptr = internal global ptr @twl4030_config_sleep_sequence._entry, section ".printk_index", align 4
@twl4030_configure_resource._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013TWL4030 Resource %d does not exist\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"twl4030_configure_resource\00", [37 x i8] zeroinitializer }, align 32
@twl4030_configure_resource._entry_ptr = internal global ptr @twl4030_configure_resource._entry, section ".printk_index", align 4
@res_config_addrs = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\00\17\1B\1F#'+/37;?CGKUcqtwz\7F\82\85\88\8B\8E\91\94", [35 x i8] zeroinitializer }, align 32
@twl4030_configure_resource._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013TWL4030 Resource %d group could not be read\0A\00", [49 x i8] zeroinitializer }, align 32
@twl4030_configure_resource._entry_ptr.54 = internal global ptr @twl4030_configure_resource._entry.52, section ".printk_index", align 4
@twl4030_configure_resource._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.2, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013TWL4030 failed to program devgroup\0A\00", [58 x i8] zeroinitializer }, align 32
@twl4030_configure_resource._entry_ptr.57 = internal global ptr @twl4030_configure_resource._entry.55, section ".printk_index", align 4
@twl4030_configure_resource._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.51, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013TWL4030 Resource %d type could not be read\0A\00", [50 x i8] zeroinitializer }, align 32
@twl4030_configure_resource._entry_ptr.60 = internal global ptr @twl4030_configure_resource._entry.58, section ".printk_index", align 4
@twl4030_configure_resource._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.51, ptr @.str.2, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013TWL4030 failed to program resource type\0A\00", [53 x i8] zeroinitializer }, align 32
@twl4030_configure_resource._entry_ptr.63 = internal global ptr @twl4030_configure_resource._entry.61, section ".printk_index", align 4
@twl4030_configure_resource._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.51, ptr @.str.2, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013TWL4030 Resource %d remap could not be read\0A\00", [49 x i8] zeroinitializer }, align 32
@twl4030_configure_resource._entry_ptr.66 = internal global ptr @twl4030_configure_resource._entry.64, section ".printk_index", align 4
@twl4030_configure_resource._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.51, ptr @.str.2, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013TWL4030 failed to program remap\0A\00", [61 x i8] zeroinitializer }, align 32
@twl4030_configure_resource._entry_ptr.69 = internal global ptr @twl4030_configure_resource._entry.67, section ".printk_index", align 4
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ti,system-power-controller\00", [37 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,use_poweroff\00", [16 x i8] zeroinitializer }, align 32
@omap3_reset = internal global { %struct.twl4030_power_data, [44 x i8] } { %struct.twl4030_power_data { ptr @omap3_reset_scripts, i32 1, ptr @omap3_rconfig, ptr null, i8 0, i8 0 }, [44 x i8] zeroinitializer }, align 32
@omap3_idle = internal global { %struct.twl4030_power_data, [44 x i8] } { %struct.twl4030_power_data { ptr @omap3_idle_scripts, i32 4, ptr @omap3_idle_rconfig, ptr null, i8 0, i8 0 }, [44 x i8] zeroinitializer }, align 32
@osc_off_idle = internal global { %struct.twl4030_power_data, [44 x i8] } { %struct.twl4030_power_data { ptr @omap3_idle_scripts, i32 4, ptr @omap3_idle_rconfig, ptr @osc_off_rconfig, i8 0, i8 0 }, [44 x i8] zeroinitializer }, align 32
@omap3_idle_ac_quirk = internal global { %struct.twl4030_power_data, [44 x i8] } { %struct.twl4030_power_data { ptr @omap3_idle_scripts, i32 4, ptr @omap3_idle_rconfig, ptr null, i8 0, i8 1 }, [44 x i8] zeroinitializer }, align 32
@omap3_idle_ac_quirk_osc_off = internal global { %struct.twl4030_power_data, [44 x i8] } { %struct.twl4030_power_data { ptr @omap3_idle_scripts, i32 4, ptr @omap3_idle_rconfig, ptr @osc_off_rconfig, i8 0, i8 1 }, [44 x i8] zeroinitializer }, align 32
@omap3_reset_scripts = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @omap3_wrst_script], [28 x i8] zeroinitializer }, align 32
@omap3_rconfig = internal global { [4 x %struct.twl4030_resconfig], [40 x i8] } { [4 x %struct.twl4030_resconfig] [%struct.twl4030_resconfig { i8 25, i8 4, i8 -1, i8 -1, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 15, i8 1, i8 -1, i8 -1, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 16, i8 1, i8 -1, i8 -1, i8 0, i8 8 }, %struct.twl4030_resconfig zeroinitializer], [40 x i8] zeroinitializer }, align 32
@omap3_wrst_script = internal global { %struct.twl4030_script, [20 x i8] } { %struct.twl4030_script { ptr @omap3_wrst_seq, i32 10, i8 1 }, [20 x i8] zeroinitializer }, align 32
@omap3_wrst_seq = internal global { [10 x %struct.twl4030_ins], [56 x i8] } { [10 x %struct.twl4030_ins] [%struct.twl4030_ins { i16 352, i8 2 }, %struct.twl4030_ins { i16 432, i8 2 }, %struct.twl4030_ins { i16 463, i8 2 }, %struct.twl4030_ins { i16 7951, i8 2 }, %struct.twl4030_ins { i16 319, i8 2 }, %struct.twl4030_ins { i16 95, i8 2 }, %struct.twl4030_ins { i16 7823, i8 2 }, %struct.twl4030_ins { i16 5247, i8 2 }, %struct.twl4030_ins { i16 446, i8 2 }, %struct.twl4030_ins { i16 366, i8 2 }], [56 x i8] zeroinitializer }, align 32
@omap3_idle_scripts = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @omap3_idle_wakeup_p12_script, ptr @omap3_idle_wakeup_p3_script, ptr @omap3_wrst_script, ptr @omap3_idle_sleep_on_script], [16 x i8] zeroinitializer }, align 32
@omap3_idle_rconfig = internal global { [28 x %struct.twl4030_resconfig], [56 x i8] } { [28 x %struct.twl4030_resconfig] [%struct.twl4030_resconfig { i8 1, i8 -1, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 2, i8 -1, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 3, i8 -1, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 4, i8 -1, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 5, i8 -1, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 6, i8 -1, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 7, i8 1, i8 3, i8 1, i8 0, i8 0 }, %struct.twl4030_resconfig { i8 8, i8 1, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 9, i8 -1, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 10, i8 -1, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 11, i8 7, i8 1, i8 2, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 12, i8 7, i8 0, i8 2, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 13, i8 7, i8 1, i8 2, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 14, i8 7, i8 2, i8 2, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 15, i8 1, i8 4, i8 1, i8 0, i8 0 }, %struct.twl4030_resconfig { i8 16, i8 1, i8 3, i8 1, i8 0, i8 0 }, %struct.twl4030_resconfig { i8 17, i8 -1, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 18, i8 -1, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 19, i8 7, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 21, i8 7, i8 2, i8 1, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 22, i8 7, i8 0, i8 1, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 23, i8 7, i8 3, i8 2, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 24, i8 7, i8 6, i8 1, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 25, i8 4, i8 0, i8 2, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 26, i8 7, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 27, i8 7, i8 6, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 28, i8 7, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig zeroinitializer], [56 x i8] zeroinitializer }, align 32
@omap3_idle_wakeup_p12_script = internal global { %struct.twl4030_script, [20 x i8] } { %struct.twl4030_script { ptr @omap3_idle_wakeup_p12_seq, i32 1, i8 2 }, [20 x i8] zeroinitializer }, align 32
@omap3_idle_wakeup_p3_script = internal global { %struct.twl4030_script, [20 x i8] } { %struct.twl4030_script { ptr @omap3_idle_wakeup_p3_seq, i32 2, i8 4 }, [20 x i8] zeroinitializer }, align 32
@omap3_idle_sleep_on_script = internal global { %struct.twl4030_script, [20 x i8] } { %struct.twl4030_script { ptr @omap3_idle_sleep_on_seq, i32 1, i8 8 }, [20 x i8] zeroinitializer }, align 32
@omap3_idle_wakeup_p12_seq = internal global { [1 x %struct.twl4030_ins], [28 x i8] } { [1 x %struct.twl4030_ins] [%struct.twl4030_ins { i16 7806, i8 2 }], [28 x i8] zeroinitializer }, align 32
@omap3_idle_wakeup_p3_seq = internal global { [2 x %struct.twl4030_ins], [24 x i8] } { [2 x %struct.twl4030_ins] [%struct.twl4030_ins { i16 382, i8 55 }, %struct.twl4030_ins { i16 7806, i8 2 }], [24 x i8] zeroinitializer }, align 32
@omap3_idle_sleep_on_seq = internal global { [1 x %struct.twl4030_ins], [28 x i8] } { [1 x %struct.twl4030_ins] [%struct.twl4030_ins { i16 7800, i8 2 }], [28 x i8] zeroinitializer }, align 32
@osc_off_rconfig = internal global { [2 x %struct.twl4030_resconfig], [20 x i8] } { [2 x %struct.twl4030_resconfig] [%struct.twl4030_resconfig { i8 23, i8 5, i8 3, i8 2, i8 0, i8 0 }, %struct.twl4030_resconfig zeroinitializer], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 519, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 526, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 558, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 669, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 674, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [21 x i8] c"twl4030_power_driver\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 961, i32 31 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 650, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 963, i32 11 }
@___asan_gen_.123 = private unnamed_addr constant [23 x i8] c"twl4030_power_of_match\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 849, i32 34 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 892, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 903, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 915, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 920, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 931, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 937, i32 5 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 949, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [26 x i8] c"load_twl4030_script.order\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 473, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 505, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 368, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 313, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 262, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 326, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 381, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant [17 x i8] c"res_config_addrs\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 109, i32 11 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 392, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 403, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 412, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 430, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 438, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 457, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 683, i32 34 }
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 686, i32 34 }
@___asan_gen_.280 = private unnamed_addr constant [12 x i8] c"omap3_reset\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 726, i32 34 }
@___asan_gen_.283 = private unnamed_addr constant [11 x i8] c"omap3_idle\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 815, i32 34 }
@___asan_gen_.286 = private unnamed_addr constant [13 x i8] c"osc_off_idle\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 827, i32 34 }
@___asan_gen_.289 = private unnamed_addr constant [20 x i8] c"omap3_idle_ac_quirk\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 834, i32 34 }
@___asan_gen_.292 = private unnamed_addr constant [28 x i8] c"omap3_idle_ac_quirk_osc_off\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 841, i32 34 }
@___asan_gen_.295 = private unnamed_addr constant [20 x i8] c"omap3_reset_scripts\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 715, i32 31 }
@___asan_gen_.298 = private unnamed_addr constant [14 x i8] c"omap3_rconfig\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 719, i32 33 }
@___asan_gen_.301 = private unnamed_addr constant [18 x i8] c"omap3_wrst_script\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 709, i32 30 }
@___asan_gen_.304 = private unnamed_addr constant [15 x i8] c"omap3_wrst_seq\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 696, i32 27 }
@___asan_gen_.307 = private unnamed_addr constant [19 x i8] c"omap3_idle_scripts\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 768, i32 31 }
@___asan_gen_.310 = private unnamed_addr constant [19 x i8] c"omap3_idle_rconfig\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 783, i32 33 }
@___asan_gen_.313 = private unnamed_addr constant [29 x i8] c"omap3_idle_wakeup_p12_script\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 750, i32 30 }
@___asan_gen_.316 = private unnamed_addr constant [28 x i8] c"omap3_idle_wakeup_p3_script\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 762, i32 30 }
@___asan_gen_.319 = private unnamed_addr constant [27 x i8] c"omap3_idle_sleep_on_script\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 739, i32 30 }
@___asan_gen_.322 = private unnamed_addr constant [26 x i8] c"omap3_idle_wakeup_p12_seq\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 746, i32 27 }
@___asan_gen_.325 = private unnamed_addr constant [25 x i8] c"omap3_idle_wakeup_p3_seq\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 757, i32 27 }
@___asan_gen_.328 = private unnamed_addr constant [24 x i8] c"omap3_idle_sleep_on_seq\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 735, i32 27 }
@___asan_gen_.331 = private unnamed_addr constant [16 x i8] c"osc_off_rconfig\00", align 1
@___asan_gen_.332 = private constant [31 x i8] c"../drivers/mfd/twl4030-power.c\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 822, i32 33 }
@llvm.compiler.used = appending global [123 x ptr] [ptr @__UNIQUE_ID_alias216, ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_description213, ptr @__UNIQUE_ID_file214, ptr @__UNIQUE_ID_license215, ptr @__exitcall_twl4030_power_driver_exit, ptr @__initcall__kmod_twl4030_power__210_970_twl4030_power_driver_init6, ptr @load_twl4030_script._entry, ptr @load_twl4030_script._entry.39, ptr @load_twl4030_script._entry_ptr, ptr @load_twl4030_script._entry_ptr.41, ptr @twl4030_config_sleep_sequence._entry, ptr @twl4030_config_sleep_sequence._entry_ptr, ptr @twl4030_config_wakeup12_sequence._entry, ptr @twl4030_config_wakeup12_sequence._entry_ptr, ptr @twl4030_config_wakeup3_sequence._entry, ptr @twl4030_config_wakeup3_sequence._entry_ptr, ptr @twl4030_config_warmreset_sequence._entry, ptr @twl4030_config_warmreset_sequence._entry_ptr, ptr @twl4030_configure_resource._entry, ptr @twl4030_configure_resource._entry.52, ptr @twl4030_configure_resource._entry.55, ptr @twl4030_configure_resource._entry.58, ptr @twl4030_configure_resource._entry.61, ptr @twl4030_configure_resource._entry.64, ptr @twl4030_configure_resource._entry.67, ptr @twl4030_configure_resource._entry_ptr, ptr @twl4030_configure_resource._entry_ptr.54, ptr @twl4030_configure_resource._entry_ptr.57, ptr @twl4030_configure_resource._entry_ptr.60, ptr @twl4030_configure_resource._entry_ptr.63, ptr @twl4030_configure_resource._entry_ptr.66, ptr @twl4030_configure_resource._entry_ptr.69, ptr @twl4030_power_driver_exit, ptr @twl4030_power_off._entry, ptr @twl4030_power_off._entry.10, ptr @twl4030_power_off._entry_ptr, ptr @twl4030_power_off._entry_ptr.12, ptr @twl4030_power_probe._entry, ptr @twl4030_power_probe._entry.20, ptr @twl4030_power_probe._entry.23, ptr @twl4030_power_probe._entry.26, ptr @twl4030_power_probe._entry.29, ptr @twl4030_power_probe._entry.32, ptr @twl4030_power_probe._entry.35, ptr @twl4030_power_probe._entry_ptr, ptr @twl4030_power_probe._entry_ptr.22, ptr @twl4030_power_probe._entry_ptr.25, ptr @twl4030_power_probe._entry_ptr.28, ptr @twl4030_power_probe._entry_ptr.31, ptr @twl4030_power_probe._entry_ptr.34, ptr @twl4030_power_probe._entry_ptr.36, ptr @twl4030_remove_script._entry, ptr @twl4030_remove_script._entry.3, ptr @twl4030_remove_script._entry.5, ptr @twl4030_remove_script._entry_ptr, ptr @twl4030_remove_script._entry_ptr.4, ptr @twl4030_remove_script._entry_ptr.7, ptr @twl4030_starton_mask_and_set._entry, ptr @twl4030_starton_mask_and_set._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @twl4030_power_driver, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @twl4030_power_of_match, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @load_twl4030_script.order, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @res_config_addrs, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @omap3_reset, ptr @omap3_idle, ptr @osc_off_idle, ptr @omap3_idle_ac_quirk, ptr @omap3_idle_ac_quirk_osc_off, ptr @omap3_reset_scripts, ptr @omap3_rconfig, ptr @omap3_wrst_script, ptr @omap3_wrst_seq, ptr @omap3_idle_scripts, ptr @omap3_idle_rconfig, ptr @omap3_idle_wakeup_p12_script, ptr @omap3_idle_wakeup_p3_script, ptr @omap3_idle_sleep_on_script, ptr @omap3_idle_wakeup_p12_seq, ptr @omap3_idle_wakeup_p3_seq, ptr @omap3_idle_sleep_on_seq, ptr @osc_off_rconfig], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_remove_script._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_remove_script._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_remove_script._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_power_off._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_power_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_starton_mask_and_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_power_of_match to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_power_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_power_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_power_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_power_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_power_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_power_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_power_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_twl4030_script.order to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_twl4030_script._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_twl4030_script._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_config_warmreset_sequence._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_config_wakeup12_sequence._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_config_wakeup3_sequence._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_config_sleep_sequence._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_configure_resource._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_config_addrs to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_configure_resource._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_configure_resource._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_configure_resource._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_configure_resource._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_configure_resource._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_configure_resource._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_reset to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_idle to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osc_off_idle to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_idle_ac_quirk to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_idle_ac_quirk_osc_off to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_reset_scripts to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_rconfig to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_wrst_script to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_wrst_seq to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_idle_scripts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_idle_rconfig to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_idle_wakeup_p12_script to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_idle_wakeup_p3_script to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_idle_sleep_on_script to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_idle_wakeup_p12_seq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_idle_wakeup_p3_seq to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_idle_sleep_on_seq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osc_off_rconfig to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @twl4030_remove_script(i8 noundef zeroext %flags) local_unnamed_addr #0 align 64 {
entry:
  %val.addr.i80 = alloca i8, align 1
  %val.addr.i78 = alloca i8, align 1
  %val.addr.i76 = alloca i8, align 1
  %val.addr.i74 = alloca i8, align 1
  %val.addr.i72 = alloca i8, align 1
  %val.addr.i70 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %0 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -64, ptr %val.addr.i, align 1
  %call.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i, i8 noundef zeroext 14, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i70)
  %1 = ptrtoint ptr %val.addr.i70 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 12, ptr %val.addr.i70, align 1
  %call.i71 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i70, i8 noundef zeroext 14, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i70)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool3.not = icmp eq i32 %call.i71, 0
  br i1 %tobool3.not, label %if.end10, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end10:                                         ; preds = %if.end
  %conv = zext i8 %flags to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end10.if.end17_crit_edge, label %if.then12

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then12:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i72)
  %2 = ptrtoint ptr %val.addr.i72 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 63, ptr %val.addr.i72, align 1
  %call.i73 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i72, i8 noundef zeroext 34, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i72)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool14.not = icmp eq i32 %call.i73, 0
  br i1 %tobool14.not, label %if.then12.if.end17_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end17:                                         ; preds = %if.then12.if.end17_crit_edge, %if.end10.if.end17_crit_edge
  %and19 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end17.if.end26_crit_edge, label %if.then21

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then21:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i74)
  %3 = ptrtoint ptr %val.addr.i74 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 63, ptr %val.addr.i74, align 1
  %call.i75 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i74, i8 noundef zeroext 32, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i74)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool23.not = icmp eq i32 %call.i75, 0
  br i1 %tobool23.not, label %if.then21.if.end26_crit_edge, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.end26:                                         ; preds = %if.then21.if.end26_crit_edge, %if.end17.if.end26_crit_edge
  %and28 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.if.end35_crit_edge, label %if.then30

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then30:                                        ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i76)
  %4 = ptrtoint ptr %val.addr.i76 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 63, ptr %val.addr.i76, align 1
  %call.i77 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i76, i8 noundef zeroext 33, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i76)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool32.not = icmp eq i32 %call.i77, 0
  br i1 %tobool32.not, label %if.then30.if.end35_crit_edge, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then30.if.end35_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.end35:                                         ; preds = %if.then30.if.end35_crit_edge, %if.end26.if.end35_crit_edge
  %and37 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end35.if.end44_crit_edge, label %if.then39

if.end35.if.end44_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then39:                                        ; preds = %if.end35
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i78)
  %5 = ptrtoint ptr %val.addr.i78 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 63, ptr %val.addr.i78, align 1
  %call.i79 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i78, i8 noundef zeroext 31, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i78)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool41.not = icmp eq i32 %call.i79, 0
  br i1 %tobool41.not, label %if.then39.if.end44_crit_edge, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then39.if.end44_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.end44:                                         ; preds = %if.then39.if.end44_crit_edge, %if.end35.if.end44_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i80)
  %6 = ptrtoint ptr %val.addr.i80 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %val.addr.i80, align 1
  %call.i81 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i80, i8 noundef zeroext 14, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool46.not = icmp eq i32 %call.i81, 0
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %if.end44.cleanup.sink.split_crit_edge

if.end44.cleanup.sink.split_crit_edge:            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end44.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.6.sink = phi ptr [ @.str, %entry.cleanup.sink.split_crit_edge ], [ @.str, %if.end.cleanup.sink.split_crit_edge ], [ @.str.6, %if.end44.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i, %entry.cleanup.sink.split_crit_edge ], [ %call.i71, %if.end.cleanup.sink.split_crit_edge ], [ %call.i81, %if.end44.cleanup.sink.split_crit_edge ]
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.6.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end44.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %if.then12.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i73, %if.then12.cleanup_crit_edge ], [ %call.i75, %if.then21.cleanup_crit_edge ], [ %call.i77, %if.then30.cleanup_crit_edge ], [ %call.i79, %if.then39.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @twl4030_power_off() #0 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %val.addr.i6.i = alloca i8, align 1
  %val.addr.i4.i = alloca i8, align 1
  %val.addr.i1.i = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val.i, align 1, !annotation !190
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %1 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -64, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 14, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.twl4030_starton_mask_and_set.exit_crit_edge

entry.twl4030_starton_mask_and_set.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_starton_mask_and_set.exit

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i1.i) #6
  %2 = ptrtoint ptr %val.addr.i1.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 12, ptr %val.addr.i1.i, align 1
  %call.i2.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i1.i, i8 noundef zeroext 14, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool2.not.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool2.not.i, label %for.body.preheader.i, label %if.end.i.twl4030_starton_mask_and_set.exit_crit_edge

if.end.i.twl4030_starton_mask_and_set.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_starton_mask_and_set.exit

for.body.preheader.i:                             ; preds = %if.end.i
  %call.i3.i = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %val.i, i8 noundef zeroext 0, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool6.not.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %for.body.preheader.i.do.end.i_crit_edge

for.body.preheader.i.do.end.i_crit_edge:          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.cond.i:                                       ; preds = %if.end8.i
  %call.i3.1.i = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %val.i, i8 noundef zeroext 1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.1.i)
  %tobool6.not.1.i = icmp eq i32 %call.i3.1.i, 0
  br i1 %tobool6.not.1.i, label %if.end8.1.i, label %for.cond.i.do.end.i_crit_edge

for.cond.i.do.end.i_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end8.1.i:                                      ; preds = %for.cond.i
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val.i, align 1
  %5 = and i8 %4, -35
  store i8 %5, ptr %val.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i4.i) #6
  %6 = ptrtoint ptr %val.addr.i4.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %val.addr.i4.i, align 1
  %call.i5.1.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i4.i, i8 noundef zeroext 1, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i4.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.1.i)
  %tobool16.not.1.i = icmp eq i32 %call.i5.1.i, 0
  br i1 %tobool16.not.1.i, label %for.cond.1.i, label %if.end8.1.i.do.end.i_crit_edge

if.end8.1.i.do.end.i_crit_edge:                   ; preds = %if.end8.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.cond.1.i:                                     ; preds = %if.end8.1.i
  %call.i3.2.i = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %val.i, i8 noundef zeroext 2, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.2.i)
  %tobool6.not.2.i = icmp eq i32 %call.i3.2.i, 0
  br i1 %tobool6.not.2.i, label %if.end8.2.i, label %for.cond.1.i.do.end.i_crit_edge

for.cond.1.i.do.end.i_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end8.2.i:                                      ; preds = %for.cond.1.i
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val.i, align 1
  %9 = and i8 %8, -35
  store i8 %9, ptr %val.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i4.i) #6
  %10 = ptrtoint ptr %val.addr.i4.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %val.addr.i4.i, align 1
  %call.i5.2.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i4.i, i8 noundef zeroext 2, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i4.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.2.i)
  %tobool16.not.2.i = icmp eq i32 %call.i5.2.i, 0
  br i1 %tobool16.not.2.i, label %if.end8.2.i.twl4030_starton_mask_and_set.exit_crit_edge, label %if.end8.2.i.do.end.i_crit_edge

if.end8.2.i.do.end.i_crit_edge:                   ; preds = %if.end8.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end8.2.i.twl4030_starton_mask_and_set.exit_crit_edge: ; preds = %if.end8.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_starton_mask_and_set.exit

if.end8.i:                                        ; preds = %for.body.preheader.i
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val.i, align 1
  %13 = and i8 %12, -35
  store i8 %13, ptr %val.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i4.i) #6
  %14 = ptrtoint ptr %val.addr.i4.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %val.addr.i4.i, align 1
  %call.i5.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i4.i, i8 noundef zeroext 0, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i4.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %tobool16.not.i = icmp eq i32 %call.i5.i, 0
  br i1 %tobool16.not.i, label %for.cond.i, label %if.end8.i.do.end.i_crit_edge

if.end8.i.do.end.i_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.end8.i.do.end.i_crit_edge, %if.end8.2.i.do.end.i_crit_edge, %for.cond.1.i.do.end.i_crit_edge, %if.end8.1.i.do.end.i_crit_edge, %for.cond.i.do.end.i_crit_edge, %for.body.preheader.i.do.end.i_crit_edge
  %err.1.ph.i = phi i32 [ %call.i5.i, %if.end8.i.do.end.i_crit_edge ], [ %call.i3.i, %for.body.preheader.i.do.end.i_crit_edge ], [ %call.i3.1.i, %for.cond.i.do.end.i_crit_edge ], [ %call.i5.1.i, %if.end8.1.i.do.end.i_crit_edge ], [ %call.i3.2.i, %for.cond.1.i.do.end.i_crit_edge ], [ %call.i5.2.i, %if.end8.2.i.do.end.i_crit_edge ]
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %err.1.ph.i) #9
  br label %twl4030_starton_mask_and_set.exit

twl4030_starton_mask_and_set.exit:                ; preds = %do.end.i, %if.end8.2.i.twl4030_starton_mask_and_set.exit_crit_edge, %if.end.i.twl4030_starton_mask_and_set.exit_crit_edge, %entry.twl4030_starton_mask_and_set.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i6.i) #6
  %15 = ptrtoint ptr %val.addr.i6.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %val.addr.i6.i, align 1
  %call.i7.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i6.i, i8 noundef zeroext 14, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i6.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %tobool.not = icmp eq i32 %call.i7.i, 0
  br i1 %tobool.not, label %twl4030_starton_mask_and_set.exit.if.end_crit_edge, label %do.end

twl4030_starton_mask_and_set.exit.if.end_crit_edge: ; preds = %twl4030_starton_mask_and_set.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %twl4030_starton_mask_and_set.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %twl4030_starton_mask_and_set.exit.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %16 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %val.addr.i, align 1
  %call.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i, i8 noundef zeroext 16, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %do.end7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #9
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %if.end.if.end10_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_power_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @twl4030_power_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @twl4030_power_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @twl4030_power_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_power_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %val.addr.i123 = alloca i8, align 1
  %val.addr.i121 = alloca i8, align 1
  %val.addr.i191.i.i = alloca i8, align 1
  %val.addr.i188.i.i = alloca i8, align 1
  %val.addr.i.i.i105 = alloca i8, align 1
  %type.i.i = alloca i8, align 1
  %grp.i.i = alloca i8, align 1
  %remap.i.i = alloca i8, align 1
  %val.addr.i.i97.i.i = alloca i8, align 1
  %val.addr.i15.i.i.i = alloca i8, align 1
  %val.addr.i.i88.i.i = alloca i8, align 1
  %data.i89.i.i = alloca i8, align 1
  %val.addr.i53.i.i.i = alloca i8, align 1
  %val.addr.i50.i.i.i = alloca i8, align 1
  %val.addr.i47.i71.i.i = alloca i8, align 1
  %val.addr.i.i72.i.i = alloca i8, align 1
  %data.i.i.i = alloca i8, align 1
  %val.addr.i.i.i = alloca i8, align 1
  %val.addr.i47.i.i.i = alloca i8, align 1
  %val.addr.i44.i.i.i = alloca i8, align 1
  %val.addr.i41.i.i.i = alloca i8, align 1
  %val.addr.i.i.i.i = alloca i8, align 1
  %rd_data.i.i.i = alloca i8, align 1
  %val.addr.i103 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %val, align 1, !annotation !190
  %tobool.not = icmp eq ptr %1, null
  %tobool2.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %5 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -64, ptr %val.addr.i, align 1
  %call.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i, i8 noundef zeroext 14, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i103)
  %6 = ptrtoint ptr %val.addr.i103 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 12, ptr %val.addr.i103, align 1
  %call.i104 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i103, i8 noundef zeroext 14, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i103)
  %or = or i32 %call.i104, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool6.not = icmp eq i32 %or, 0
  br i1 %tobool6.not, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call14 = call ptr @of_match_device(ptr noundef nonnull @twl4030_power_of_match, ptr noundef %dev) #6
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end12.if.end20_crit_edge, label %land.lhs.true16

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

land.lhs.true16:                                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.of_device_id, ptr %call14, i32 0, i32 3
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %tobool17.not = icmp eq ptr %8, null
  %spec.select = select i1 %tobool17.not, ptr %1, ptr %8
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true16, %if.end12.if.end20_crit_edge
  %pdata.0 = phi ptr [ %1, %if.end12.if.end20_crit_edge ], [ %spec.select, %land.lhs.true16 ]
  %tobool21.not = icmp eq ptr %pdata.0, null
  br i1 %tobool21.not, label %if.end20.if.end.i118_crit_edge, label %if.then22

if.end20.if.end.i118_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i118

if.then22:                                        ; preds = %if.end20
  %num.i = getelementptr inbounds %struct.twl4030_power_data, ptr %pdata.0, i32 0, i32 1
  %9 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp24.not.i = icmp eq i32 %10, 0
  br i1 %cmp24.not.i, label %if.then22.if.end31_crit_edge, label %for.body.lr.ph.i

if.then22.if.end31_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

for.body.lr.ph.i:                                 ; preds = %if.then22
  %ac_charger_quirk.i.i.i = getelementptr inbounds %struct.twl4030_power_data, ptr %pdata.0, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %address.026.i = phi i8 [ 43, %for.body.lr.ph.i ], [ %conv3.i, %if.end.i.for.body.i_crit_edge ]
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata.0, align 4
  %arrayidx.i = getelementptr ptr, ptr %12, i32 %i.025.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %conv.i.i = zext i8 %address.026.i to i32
  %size.i.i = getelementptr inbounds %struct.twl4030_script, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i.i, align 4
  %add.i.i = add i32 %16, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 63
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #9
  br label %do.end28

if.end.i.i:                                       ; preds = %for.body.i
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.inc.i.i.i, %if.end.i.i
  %address.addr.0.i.i.i = phi i8 [ %address.026.i, %if.end.i.i ], [ %inc.pre-phi.i.i.i, %for.inc.i.i.i ]
  %script.addr.0.i.i.i = phi ptr [ %18, %if.end.i.i ], [ %incdec.ptr.i.i.i, %for.inc.i.i.i ]
  %len.addr.0.i.i.i = phi i32 [ %16, %if.end.i.i ], [ %dec.i.i.i, %for.inc.i.i.i ]
  %tobool.not.i.i = phi i1 [ false, %if.end.i.i ], [ true, %for.inc.i.i.i ]
  %err.0.i.i.i = phi i32 [ -22, %if.end.i.i ], [ 0, %for.inc.i.i.i ]
  %19 = zext i32 %len.addr.0.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %len.addr.0.i.i.i, label %if.else.i.i.i [
    i32 0, label %twl4030_write_script.exit.i.i
    i32 1, label %if.then.i.i.i
  ]

if.then.i.i.i:                                    ; preds = %for.cond.i.i.i
  %20 = ptrtoint ptr %script.addr.0.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %script.addr.0.i.i.i, align 2
  %delay.i.i.i = getelementptr inbounds %struct.twl4030_ins, ptr %script.addr.0.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %delay.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %delay.i.i.i, align 2
  %call.i.i.i = call fastcc i32 @twl4030_write_script_ins(i8 noundef zeroext %address.addr.0.i.i.i, i16 noundef zeroext %21, i8 noundef zeroext %23, i8 noundef zeroext 63) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.for.inc_crit_edge.i.i.i, label %if.then.i.i.i.do.end28_crit_edge

if.then.i.i.i.do.end28_crit_edge:                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

if.then.for.inc_crit_edge.i.i.i:                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %.pre.i.i.i = add i8 %address.addr.0.i.i.i, 1
  br label %for.inc.i.i.i

if.else.i.i.i:                                    ; preds = %for.cond.i.i.i
  %24 = ptrtoint ptr %script.addr.0.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %script.addr.0.i.i.i, align 2
  %delay4.i.i.i = getelementptr inbounds %struct.twl4030_ins, ptr %script.addr.0.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %delay4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %delay4.i.i.i, align 2
  %add.i.i.i = add i8 %address.addr.0.i.i.i, 1
  %call6.i.i.i = call fastcc i32 @twl4030_write_script_ins(i8 noundef zeroext %address.addr.0.i.i.i, i16 noundef zeroext %25, i8 noundef zeroext %27, i8 noundef zeroext %add.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %if.else.i.i.i.for.inc.i.i.i_crit_edge, label %if.else.i.i.i.do.end28_crit_edge

if.else.i.i.i.do.end28_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

if.else.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.else.i.i.i.for.inc.i.i.i_crit_edge, %if.then.for.inc_crit_edge.i.i.i
  %inc.pre-phi.i.i.i = phi i8 [ %.pre.i.i.i, %if.then.for.inc_crit_edge.i.i.i ], [ %add.i.i.i, %if.else.i.i.i.for.inc.i.i.i_crit_edge ]
  %dec.i.i.i = add i32 %len.addr.0.i.i.i, -1
  %incdec.ptr.i.i.i = getelementptr %struct.twl4030_ins, ptr %script.addr.0.i.i.i, i32 1
  br label %for.cond.i.i.i

twl4030_write_script.exit.i.i:                    ; preds = %for.cond.i.i.i
  br i1 %tobool.not.i.i, label %if.end5.i.i, label %twl4030_write_script.exit.i.i.do.end28_crit_edge

twl4030_write_script.exit.i.i.do.end28_crit_edge: ; preds = %twl4030_write_script.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

if.end5.i.i:                                      ; preds = %twl4030_write_script.exit.i.i
  %flags.i.i = getelementptr inbounds %struct.twl4030_script, ptr %14, i32 0, i32 2
  %28 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %flags.i.i, align 4
  %30 = and i8 %29, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool7.not.i.i = icmp eq i8 %30, 0
  br i1 %tobool7.not.i.i, label %if.end5.i.i.if.end13.i.i_crit_edge, label %if.then8.i.i

if.end5.i.i.if.end13.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i.i

if.then8.i.i:                                     ; preds = %if.end5.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rd_data.i.i.i) #6
  %31 = ptrtoint ptr %rd_data.i.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %rd_data.i.i.i, align 1, !annotation !190
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i.i) #6
  %32 = ptrtoint ptr %val.addr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %address.026.i, ptr %val.addr.i.i.i.i, align 1
  %call.i.i.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i.i.i.i, i8 noundef zeroext 34, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then8.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge

if.then8.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_config_warmreset_sequence.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then8.i.i
  %call.i40.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %rd_data.i.i.i, i8 noundef zeroext 16, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call.i40.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end4.i.i.i, label %if.end.i.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge

if.end.i.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_config_warmreset_sequence.exit.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  %33 = ptrtoint ptr %rd_data.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rd_data.i.i.i, align 1
  %35 = or i8 %34, 16
  store i8 %35, ptr %rd_data.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i41.i.i.i) #6
  %36 = ptrtoint ptr %val.addr.i41.i.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %val.addr.i41.i.i.i, align 1
  %call.i42.i.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i41.i.i.i, i8 noundef zeroext 16, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i41.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42.i.i.i)
  %tobool7.not.i69.i.i = icmp eq i32 %call.i42.i.i.i, 0
  br i1 %tobool7.not.i69.i.i, label %if.end9.i.i.i, label %if.end4.i.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge

if.end4.i.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_config_warmreset_sequence.exit.i.i

if.end9.i.i.i:                                    ; preds = %if.end4.i.i.i
  %call.i43.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %rd_data.i.i.i, i8 noundef zeroext 17, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %call.i43.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %if.end13.i.i.i, label %if.end9.i.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge

if.end9.i.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge: ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_config_warmreset_sequence.exit.i.i

if.end13.i.i.i:                                   ; preds = %if.end9.i.i.i
  %37 = ptrtoint ptr %rd_data.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rd_data.i.i.i, align 1
  %39 = or i8 %38, 16
  store i8 %39, ptr %rd_data.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i44.i.i.i) #6
  %40 = ptrtoint ptr %val.addr.i44.i.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %val.addr.i44.i.i.i, align 1
  %call.i45.i.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i44.i.i.i, i8 noundef zeroext 17, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i44.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.i.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %call.i45.i.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.end20.i.i.i, label %if.end13.i.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge

if.end13.i.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge: ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_config_warmreset_sequence.exit.i.i

if.end20.i.i.i:                                   ; preds = %if.end13.i.i.i
  %call.i46.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %rd_data.i.i.i, i8 noundef zeroext 18, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i.i.i)
  %tobool22.not.i.i.i = icmp eq i32 %call.i46.i.i.i, 0
  br i1 %tobool22.not.i.i.i, label %out.i.i.i, label %if.end20.i.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge

if.end20.i.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge: ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_config_warmreset_sequence.exit.i.i

out.i.i.i:                                        ; preds = %if.end20.i.i.i
  %41 = ptrtoint ptr %rd_data.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rd_data.i.i.i, align 1
  %43 = or i8 %42, 16
  store i8 %43, ptr %rd_data.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i47.i.i.i) #6
  %44 = ptrtoint ptr %val.addr.i47.i.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %val.addr.i47.i.i.i, align 1
  %call.i48.i.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i47.i.i.i, i8 noundef zeroext 18, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i47.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i.i.i)
  %tobool29.not.i.i.i = icmp eq i32 %call.i48.i.i.i, 0
  br i1 %tobool29.not.i.i.i, label %twl4030_config_warmreset_sequence.exit.thread.i.i, label %out.i.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge

out.i.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge: ; preds = %out.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_config_warmreset_sequence.exit.i.i

twl4030_config_warmreset_sequence.exit.thread.i.i: ; preds = %out.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rd_data.i.i.i) #6
  br label %if.end13.i.i

twl4030_config_warmreset_sequence.exit.i.i:       ; preds = %out.i.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge, %if.end20.i.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge, %if.end13.i.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge, %if.end9.i.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge, %if.end4.i.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge, %if.end.i.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge, %if.then8.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge
  %err.051.i.i.i = phi i32 [ %call.i48.i.i.i, %out.i.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge ], [ %call.i46.i.i.i, %if.end20.i.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge ], [ %call.i45.i.i.i, %if.end13.i.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge ], [ %call.i43.i.i.i, %if.end9.i.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge ], [ %call.i42.i.i.i, %if.end4.i.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge ], [ %call.i40.i.i.i, %if.end.i.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge ], [ %call.i.i.i.i, %if.then8.i.i.twl4030_config_warmreset_sequence.exit.i.i_crit_edge ]
  %call31.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rd_data.i.i.i) #6
  br label %do.end28

if.end13.i.i:                                     ; preds = %twl4030_config_warmreset_sequence.exit.thread.i.i, %if.end5.i.i.if.end13.i.i_crit_edge
  %45 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %flags.i.i, align 4
  %47 = and i8 %46, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool17.not.i.i = icmp eq i8 %47, 0
  br i1 %tobool17.not.i.i, label %if.end13.i.i.if.end27.i.i_crit_edge, label %if.then18.i.i

if.end13.i.i.if.end27.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i.i

if.then18.i.i:                                    ; preds = %if.end13.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i) #6
  %48 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 63, ptr %val.addr.i.i.i, align 1
  %call.i70.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i.i.i, i8 noundef zeroext 31, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70.i.i)
  %tobool20.not.i.i = icmp eq i32 %call.i70.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end22.i.i, label %if.then18.i.i.do.end28_crit_edge

if.then18.i.i.do.end28_crit_edge:                 ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

if.end22.i.i:                                     ; preds = %if.then18.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i.i) #6
  %49 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %data.i.i.i, align 1, !annotation !190
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i72.i.i) #6
  %50 = ptrtoint ptr %val.addr.i.i72.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %address.026.i, ptr %val.addr.i.i72.i.i, align 1
  %call.i.i73.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i.i72.i.i, i8 noundef zeroext 32, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i72.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i73.i.i)
  %tobool.not.i74.i.i = icmp eq i32 %call.i.i73.i.i, 0
  br i1 %tobool.not.i74.i.i, label %if.end.i77.i.i, label %if.end22.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge

if.end22.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge: ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_config_wakeup12_sequence.exit.i.i

if.end.i77.i.i:                                   ; preds = %if.end22.i.i
  %call.i46.i75.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %data.i.i.i, i8 noundef zeroext 16, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i75.i.i)
  %tobool2.not.i76.i.i = icmp eq i32 %call.i46.i75.i.i, 0
  br i1 %tobool2.not.i76.i.i, label %if.end4.i80.i.i, label %if.end.i77.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge

if.end.i77.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge: ; preds = %if.end.i77.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_config_wakeup12_sequence.exit.i.i

if.end4.i80.i.i:                                  ; preds = %if.end.i77.i.i
  %51 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %data.i.i.i, align 1
  %53 = or i8 %52, 8
  store i8 %53, ptr %data.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i47.i71.i.i) #6
  %54 = ptrtoint ptr %val.addr.i47.i71.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %val.addr.i47.i71.i.i, align 1
  %call.i48.i78.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i47.i71.i.i, i8 noundef zeroext 16, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i47.i71.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i78.i.i)
  %tobool7.not.i79.i.i = icmp eq i32 %call.i48.i78.i.i, 0
  br i1 %tobool7.not.i79.i.i, label %if.end9.i82.i.i, label %if.end4.i80.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge

if.end4.i80.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge: ; preds = %if.end4.i80.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_config_wakeup12_sequence.exit.i.i

if.end9.i82.i.i:                                  ; preds = %if.end4.i80.i.i
  %call.i49.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %data.i.i.i, i8 noundef zeroext 17, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49.i.i.i)
  %tobool11.not.i81.i.i = icmp eq i32 %call.i49.i.i.i, 0
  br i1 %tobool11.not.i81.i.i, label %if.end13.i84.i.i, label %if.end9.i82.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge

if.end9.i82.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge: ; preds = %if.end9.i82.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_config_wakeup12_sequence.exit.i.i

if.end13.i84.i.i:                                 ; preds = %if.end9.i82.i.i
  %55 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %data.i.i.i, align 1
  %57 = or i8 %56, 8
  store i8 %57, ptr %data.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i50.i.i.i) #6
  %58 = ptrtoint ptr %val.addr.i50.i.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %val.addr.i50.i.i.i, align 1
  %call.i51.i.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i50.i.i.i, i8 noundef zeroext 17, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i50.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i.i.i)
  %tobool18.not.i83.i.i = icmp eq i32 %call.i51.i.i.i, 0
  br i1 %tobool18.not.i83.i.i, label %if.end20.i85.i.i, label %if.end13.i84.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge

if.end13.i84.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge: ; preds = %if.end13.i84.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_config_wakeup12_sequence.exit.i.i

if.end20.i85.i.i:                                 ; preds = %if.end13.i84.i.i
  %59 = ptrtoint ptr %ac_charger_quirk.i.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %ac_charger_quirk.i.i.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool21.not.i.i.i = icmp eq i8 %60, 0
  br i1 %tobool21.not.i.i.i, label %if.end20.i85.i.i.if.end26.i.i_crit_edge, label %if.then23.i.i.i

if.end20.i85.i.i.if.end26.i.i_crit_edge:          ; preds = %if.end20.i85.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.i

if.then23.i.i.i:                                  ; preds = %if.end20.i85.i.i
  %call.i52.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %data.i.i.i, i8 noundef zeroext 0, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52.i.i.i)
  %tobool25.not.i.i.i = icmp eq i32 %call.i52.i.i.i, 0
  br i1 %tobool25.not.i.i.i, label %out.i86.i.i, label %if.then23.i.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge

if.then23.i.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge: ; preds = %if.then23.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_config_wakeup12_sequence.exit.i.i

out.i86.i.i:                                      ; preds = %if.then23.i.i.i
  %61 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %data.i.i.i, align 1
  %63 = and i8 %62, -3
  store i8 %63, ptr %data.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i53.i.i.i) #6
  %64 = ptrtoint ptr %val.addr.i53.i.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %val.addr.i53.i.i.i, align 1
  %call.i54.i.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i53.i.i.i, i8 noundef zeroext 0, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i53.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i.i.i)
  %tobool35.not.i.i.i = icmp eq i32 %call.i54.i.i.i, 0
  br i1 %tobool35.not.i.i.i, label %out.i86.i.i.if.end26.i.i_crit_edge, label %out.i86.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge

out.i86.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge: ; preds = %out.i86.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_config_wakeup12_sequence.exit.i.i

out.i86.i.i.if.end26.i.i_crit_edge:               ; preds = %out.i86.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.i

twl4030_config_wakeup12_sequence.exit.i.i:        ; preds = %out.i86.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge, %if.then23.i.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge, %if.end13.i84.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge, %if.end9.i82.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge, %if.end4.i80.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge, %if.end.i77.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge, %if.end22.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge
  %err.057.i.i.i = phi i32 [ %call.i54.i.i.i, %out.i86.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge ], [ %call.i52.i.i.i, %if.then23.i.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge ], [ %call.i51.i.i.i, %if.end13.i84.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge ], [ %call.i49.i.i.i, %if.end9.i82.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge ], [ %call.i48.i78.i.i, %if.end4.i80.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge ], [ %call.i46.i75.i.i, %if.end.i77.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge ], [ %call.i.i73.i.i, %if.end22.i.i.twl4030_config_wakeup12_sequence.exit.i.i_crit_edge ]
  %call37.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i.i) #6
  br label %do.end28

if.end26.i.i:                                     ; preds = %out.i86.i.i.if.end26.i.i_crit_edge, %if.end20.i85.i.i.if.end26.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i.i) #6
  store i1 true, ptr @load_twl4030_script.order, align 4
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.end26.i.i, %if.end13.i.i.if.end27.i.i_crit_edge
  %65 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %flags.i.i, align 4
  %67 = and i8 %66, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool31.not.i.i = icmp eq i8 %67, 0
  br i1 %tobool31.not.i.i, label %if.end27.i.i.if.end37.i.i_crit_edge, label %if.then32.i.i

if.end27.i.i.if.end37.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i.i

if.then32.i.i:                                    ; preds = %if.end27.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i89.i.i) #6
  %68 = ptrtoint ptr %data.i89.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -1, ptr %data.i89.i.i, align 1, !annotation !190
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i88.i.i) #6
  %69 = ptrtoint ptr %val.addr.i.i88.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %address.026.i, ptr %val.addr.i.i88.i.i, align 1
  %call.i.i90.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i.i88.i.i, i8 noundef zeroext 33, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i88.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i90.i.i)
  %tobool.not.i91.i.i = icmp eq i32 %call.i.i90.i.i, 0
  br i1 %tobool.not.i91.i.i, label %if.end.i93.i.i, label %if.then32.i.i.twl4030_config_wakeup3_sequence.exit.i.i_crit_edge

if.then32.i.i.twl4030_config_wakeup3_sequence.exit.i.i_crit_edge: ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_config_wakeup3_sequence.exit.i.i

if.end.i93.i.i:                                   ; preds = %if.then32.i.i
  %call.i14.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %data.i89.i.i, i8 noundef zeroext 18, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i.i.i)
  %tobool2.not.i92.i.i = icmp eq i32 %call.i14.i.i.i, 0
  br i1 %tobool2.not.i92.i.i, label %out.i95.i.i, label %if.end.i93.i.i.twl4030_config_wakeup3_sequence.exit.i.i_crit_edge

if.end.i93.i.i.twl4030_config_wakeup3_sequence.exit.i.i_crit_edge: ; preds = %if.end.i93.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_config_wakeup3_sequence.exit.i.i

out.i95.i.i:                                      ; preds = %if.end.i93.i.i
  %70 = ptrtoint ptr %data.i89.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %data.i89.i.i, align 1
  %72 = or i8 %71, 8
  store i8 %72, ptr %data.i89.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i15.i.i.i) #6
  %73 = ptrtoint ptr %val.addr.i15.i.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %val.addr.i15.i.i.i, align 1
  %call.i16.i.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i15.i.i.i, i8 noundef zeroext 18, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i15.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i.i.i)
  %tobool7.not.i94.i.i = icmp eq i32 %call.i16.i.i.i, 0
  br i1 %tobool7.not.i94.i.i, label %twl4030_config_wakeup3_sequence.exit.thread.i.i, label %out.i95.i.i.twl4030_config_wakeup3_sequence.exit.i.i_crit_edge

out.i95.i.i.twl4030_config_wakeup3_sequence.exit.i.i_crit_edge: ; preds = %out.i95.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_config_wakeup3_sequence.exit.i.i

twl4030_config_wakeup3_sequence.exit.thread.i.i:  ; preds = %out.i95.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i89.i.i) #6
  br label %if.end37.i.i

twl4030_config_wakeup3_sequence.exit.i.i:         ; preds = %out.i95.i.i.twl4030_config_wakeup3_sequence.exit.i.i_crit_edge, %if.end.i93.i.i.twl4030_config_wakeup3_sequence.exit.i.i_crit_edge, %if.then32.i.i.twl4030_config_wakeup3_sequence.exit.i.i_crit_edge
  %err.019.i.i.i = phi i32 [ %call.i16.i.i.i, %out.i95.i.i.twl4030_config_wakeup3_sequence.exit.i.i_crit_edge ], [ %call.i14.i.i.i, %if.end.i93.i.i.twl4030_config_wakeup3_sequence.exit.i.i_crit_edge ], [ %call.i.i90.i.i, %if.then32.i.i.twl4030_config_wakeup3_sequence.exit.i.i_crit_edge ]
  %call9.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i89.i.i) #6
  br label %do.end28

if.end37.i.i:                                     ; preds = %twl4030_config_wakeup3_sequence.exit.thread.i.i, %if.end27.i.i.if.end37.i.i_crit_edge
  %74 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %flags.i.i, align 4
  %76 = and i8 %75, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool41.not.i.i = icmp eq i8 %76, 0
  br i1 %tobool41.not.i.i, label %if.end37.i.i.if.end.i_crit_edge, label %if.then42.i.i

if.end37.i.i.if.end.i_crit_edge:                  ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then42.i.i:                                    ; preds = %if.end37.i.i
  %.b.i.i = load i1, ptr @load_twl4030_script.order, align 4
  br i1 %.b.i.i, label %if.then42.i.i.if.end50.i.i_crit_edge, label %do.end47.i.i

if.then42.i.i.if.end50.i.i_crit_edge:             ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.i.i

do.end47.i.i:                                     ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call49.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #9
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %do.end47.i.i, %if.then42.i.i.if.end50.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i97.i.i) #6
  %77 = ptrtoint ptr %val.addr.i.i97.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %address.026.i, ptr %val.addr.i.i97.i.i, align 1
  %call.i.i98.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i.i97.i.i, i8 noundef zeroext 31, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i97.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i98.i.i)
  %tobool.not.i99.i.i = icmp eq i32 %call.i.i98.i.i, 0
  br i1 %tobool.not.i99.i.i, label %if.end50.i.i.if.end.i_crit_edge, label %do.end.i100.i.i

if.end50.i.i.if.end.i_crit_edge:                  ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i100.i.i:                                  ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #9
  br label %do.end28

if.end.i:                                         ; preds = %if.end50.i.i.if.end.i_crit_edge, %if.end37.i.i.if.end.i_crit_edge
  %78 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdata.0, align 4
  %arrayidx2.i = getelementptr ptr, ptr %79, i32 %i.025.i
  %80 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx2.i, align 4
  %size.i = getelementptr inbounds %struct.twl4030_script, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %size.i, align 4
  %84 = trunc i32 %83 to i8
  %conv3.i = add i8 %address.026.i, %84
  %inc.i = add nuw i32 %i.025.i, 1
  %85 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %86
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.if.end31_crit_edge

if.end.i.if.end31_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.end28:                                         ; preds = %do.end.i100.i.i, %twl4030_config_wakeup3_sequence.exit.i.i, %twl4030_config_wakeup12_sequence.exit.i.i, %if.then18.i.i.do.end28_crit_edge, %twl4030_config_warmreset_sequence.exit.i.i, %twl4030_write_script.exit.i.i.do.end28_crit_edge, %if.else.i.i.i.do.end28_crit_edge, %if.then.i.i.i.do.end28_crit_edge, %do.end.i.i
  %retval.0.i127 = phi i32 [ -22, %do.end.i.i ], [ %err.051.i.i.i, %twl4030_config_warmreset_sequence.exit.i.i ], [ %err.057.i.i.i, %twl4030_config_wakeup12_sequence.exit.i.i ], [ %err.019.i.i.i, %twl4030_config_wakeup3_sequence.exit.i.i ], [ %call.i.i98.i.i, %do.end.i100.i.i ], [ %call.i.i.i, %if.then.i.i.i.do.end28_crit_edge ], [ %call6.i.i.i, %if.else.i.i.i.do.end28_crit_edge ], [ %err.0.i.i.i, %twl4030_write_script.exit.i.i.do.end28_crit_edge ], [ %call.i70.i.i, %if.then18.i.i.do.end28_crit_edge ]
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #9
  br label %relock

if.end31:                                         ; preds = %if.end.i.if.end31_crit_edge, %if.then22.if.end31_crit_edge
  %resource_config.i = getelementptr inbounds %struct.twl4030_power_data, ptr %pdata.0, i32 0, i32 2
  %87 = ptrtoint ptr %resource_config.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %resource_config.i, align 4
  %board_config.i = getelementptr inbounds %struct.twl4030_power_data, ptr %pdata.0, i32 0, i32 3
  %89 = ptrtoint ptr %board_config.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %board_config.i, align 4
  %tobool.not.i = icmp eq ptr %88, null
  br i1 %tobool.not.i, label %if.end31.land.lhs.true.i_crit_edge, label %if.then.i

if.end31.land.lhs.true.i_crit_edge:               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

if.then.i:                                        ; preds = %if.end31
  %tobool1.not.i = icmp eq ptr %90, null
  br i1 %tobool1.not.i, label %if.then.i.if.end.i109_crit_edge, label %if.then2.i

if.then.i.if.end.i109_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i109

if.then2.i:                                       ; preds = %if.then.i
  %91 = ptrtoint ptr %88 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %88, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not20.i.i = icmp eq i8 %92, 0
  br i1 %tobool.not20.i.i, label %if.then2.i.land.lhs.true.i_crit_edge, label %if.then2.i.while.cond1.preheader.i.i_crit_edge

if.then2.i.while.cond1.preheader.i.i_crit_edge:   ; preds = %if.then2.i
  br label %while.cond1.preheader.i.i

if.then2.i.land.lhs.true.i_crit_edge:             ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

while.cond1.preheader.i.i:                        ; preds = %while.end.i.i.while.cond1.preheader.i.i_crit_edge, %if.then2.i.while.cond1.preheader.i.i_crit_edge
  %93 = phi i8 [ %101, %while.end.i.i.while.cond1.preheader.i.i_crit_edge ], [ %92, %if.then2.i.while.cond1.preheader.i.i_crit_edge ]
  %common.addr.021.i.i = phi ptr [ %incdec.ptr9.i.i, %while.end.i.i.while.cond1.preheader.i.i_crit_edge ], [ %88, %if.then2.i.while.cond1.preheader.i.i_crit_edge ]
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %90, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool3.not18.i.i = icmp eq i8 %95, 0
  br i1 %tobool3.not18.i.i, label %while.cond1.preheader.i.i.while.end.i.i_crit_edge, label %while.cond1.preheader.i.i.while.body4.i.i_crit_edge

while.cond1.preheader.i.i.while.body4.i.i_crit_edge: ; preds = %while.cond1.preheader.i.i
  br label %while.body4.i.i

while.cond1.preheader.i.i.while.end.i.i_crit_edge: ; preds = %while.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

while.body4.i.i:                                  ; preds = %if.end.i.i107.while.body4.i.i_crit_edge, %while.cond1.preheader.i.i.while.body4.i.i_crit_edge
  %96 = phi i8 [ %99, %if.end.i.i107.while.body4.i.i_crit_edge ], [ %95, %while.cond1.preheader.i.i.while.body4.i.i_crit_edge ]
  %b.019.i.i = phi ptr [ %incdec.ptr.i.i, %if.end.i.i107.while.body4.i.i_crit_edge ], [ %90, %while.cond1.preheader.i.i.while.body4.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %96, i8 %93)
  %cmp.i.i106 = icmp eq i8 %96, %93
  br i1 %cmp.i.i106, label %if.then.i.i, label %if.end.i.i107

if.then.i.i:                                      ; preds = %while.body4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %97 = call ptr @memcpy(ptr %common.addr.021.i.i, ptr %b.019.i.i, i32 6)
  br label %while.end.i.i

if.end.i.i107:                                    ; preds = %while.body4.i.i
  %incdec.ptr.i.i = getelementptr %struct.twl4030_resconfig, ptr %b.019.i.i, i32 1
  %98 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %incdec.ptr.i.i, align 1
  %tobool3.not.i.i = icmp eq i8 %99, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i107.while.end.i.i_crit_edge, label %if.end.i.i107.while.body4.i.i_crit_edge

if.end.i.i107.while.body4.i.i_crit_edge:          ; preds = %if.end.i.i107
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body4.i.i

if.end.i.i107.while.end.i.i_crit_edge:            ; preds = %if.end.i.i107
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end.i.i107.while.end.i.i_crit_edge, %if.then.i.i, %while.cond1.preheader.i.i.while.end.i.i_crit_edge
  %incdec.ptr9.i.i = getelementptr %struct.twl4030_resconfig, ptr %common.addr.021.i.i, i32 1
  %100 = ptrtoint ptr %incdec.ptr9.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %incdec.ptr9.i.i, align 1
  %tobool.not.i.i108 = icmp eq i8 %101, 0
  br i1 %tobool.not.i.i108, label %while.end.i.i.if.end.i109_crit_edge, label %while.end.i.i.while.cond1.preheader.i.i_crit_edge

while.end.i.i.while.cond1.preheader.i.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond1.preheader.i.i

while.end.i.i.if.end.i109_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i109

if.end.i109:                                      ; preds = %while.end.i.i.if.end.i109_crit_edge, %if.then.i.if.end.i109_crit_edge
  %102 = ptrtoint ptr %88 to i32
  call void @__asan_load1_noabort(i32 %102)
  %.pr.i = load i8, ptr %88, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool3.not48.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool3.not48.i, label %if.end.i109.land.lhs.true.i_crit_edge, label %if.end.i109.while.body.i_crit_edge

if.end.i109.while.body.i_crit_edge:               ; preds = %if.end.i109
  br label %while.body.i

if.end.i109.land.lhs.true.i_crit_edge:            ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %if.end.i109.while.body.i_crit_edge
  %resconfig.049.i = phi ptr [ %incdec.ptr.i, %if.end6.i.while.body.i_crit_edge ], [ %88, %if.end.i109.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type.i.i) #6
  %103 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 -1, ptr %type.i.i, align 1, !annotation !190
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %grp.i.i) #6
  %104 = ptrtoint ptr %grp.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 -1, ptr %grp.i.i, align 1, !annotation !190
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %remap.i.i) #6
  %105 = ptrtoint ptr %remap.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 -1, ptr %remap.i.i, align 1, !annotation !190
  %106 = ptrtoint ptr %resconfig.049.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %resconfig.049.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %107)
  %cmp.i18.i = icmp ugt i8 %107, 28
  %conv.i.le.i = zext i8 %107 to i32
  br i1 %cmp.i18.i, label %do.end.i.i111, label %if.end.i20.i

do.end.i.i111:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.le.i.le = zext i8 %107 to i32
  %call.i.i110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %conv.i.le.i.le) #9
  br label %do.end37

if.end.i20.i:                                     ; preds = %while.body.i
  %arrayidx.i.i = getelementptr [29 x i8], ptr @res_config_addrs, i32 0, i32 %conv.i.le.i
  %108 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx.i.i, align 1
  %call.i.i.i113 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %grp.i.i, i8 noundef zeroext %109, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i113)
  %tobool.not.i19.i = icmp eq i32 %call.i.i.i113, 0
  br i1 %tobool.not.i19.i, label %if.end16.i.i, label %do.end11.i.i

do.end11.i.i:                                     ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #8
  %110 = ptrtoint ptr %resconfig.049.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %resconfig.049.i, align 1
  %conv14.i.i = zext i8 %111 to i32
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %conv14.i.i) #9
  br label %do.end37

if.end16.i.i:                                     ; preds = %if.end.i20.i
  %devgroup.i.i = getelementptr inbounds %struct.twl4030_resconfig, ptr %resconfig.049.i, i32 0, i32 1
  %112 = ptrtoint ptr %devgroup.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %devgroup.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %113)
  %cmp18.not.i.i = icmp eq i8 %113, -1
  br i1 %cmp18.not.i.i, label %if.end16.i.i.if.end39.i.i_crit_edge, label %if.then20.i.i

if.end16.i.i.if.end39.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i.i

if.then20.i.i:                                    ; preds = %if.end16.i.i
  %114 = ptrtoint ptr %grp.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %grp.i.i, align 1
  %116 = and i8 %115, 31
  %shl.i.i = shl i8 %113, 5
  %or.i.i = or i8 %116, %shl.i.i
  store i8 %or.i.i, ptr %grp.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i105) #6
  %117 = ptrtoint ptr %val.addr.i.i.i105 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %or.i.i, ptr %val.addr.i.i.i105, align 1
  %call.i186.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %val.addr.i.i.i105, i8 noundef zeroext %109, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i105) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i186.i.i)
  %cmp30.i.i = icmp slt i32 %call.i186.i.i, 0
  br i1 %cmp30.i.i, label %do.end35.i.i, label %if.then20.i.i.if.end39.i.i_crit_edge

if.then20.i.i.if.end39.i.i_crit_edge:             ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i.i

do.end35.i.i:                                     ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call37.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #9
  br label %do.end37

if.end39.i.i:                                     ; preds = %if.then20.i.i.if.end39.i.i_crit_edge, %if.end16.i.i.if.end39.i.i_crit_edge
  %add40.i.i = add i8 %109, 1
  %call.i187.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %type.i.i, i8 noundef zeroext %add40.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i187.i.i)
  %cmp43.i.i = icmp slt i32 %call.i187.i.i, 0
  br i1 %cmp43.i.i, label %do.end48.i.i, label %if.end53.i.i

do.end48.i.i:                                     ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %118 = ptrtoint ptr %resconfig.049.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %resconfig.049.i, align 1
  %conv51.i.i = zext i8 %119 to i32
  %call52.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %conv51.i.i) #9
  br label %do.end37

if.end53.i.i:                                     ; preds = %if.end39.i.i
  %type54.i.i = getelementptr inbounds %struct.twl4030_resconfig, ptr %resconfig.049.i, i32 0, i32 2
  %120 = ptrtoint ptr %type54.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %type54.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %121)
  %cmp56.not.i.i = icmp eq i8 %121, -1
  br i1 %cmp56.not.i.i, label %if.end53.i.i.if.end68.i.i_crit_edge, label %if.then58.i.i

if.end53.i.i.if.end68.i.i_crit_edge:              ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68.i.i

if.then58.i.i:                                    ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %122 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %type.i.i, align 1
  %124 = and i8 %123, -8
  %or66185.i.i = or i8 %124, %121
  store i8 %or66185.i.i, ptr %type.i.i, align 1
  br label %if.end68.i.i

if.end68.i.i:                                     ; preds = %if.then58.i.i, %if.end53.i.i.if.end68.i.i_crit_edge
  %type2.i.i = getelementptr inbounds %struct.twl4030_resconfig, ptr %resconfig.049.i, i32 0, i32 3
  %125 = ptrtoint ptr %type2.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %type2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %126)
  %cmp70.not.i.i = icmp eq i8 %126, -1
  br i1 %cmp70.not.i.i, label %if.end68.i.i.if.end82.i.i_crit_edge, label %if.then72.i.i

if.end68.i.i.if.end82.i.i_crit_edge:              ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82.i.i

if.then72.i.i:                                    ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %127 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %type.i.i, align 1
  %129 = and i8 %128, -25
  %shl78.i.i = shl i8 %126, 3
  %or80.i.i = or i8 %129, %shl78.i.i
  store i8 %or80.i.i, ptr %type.i.i, align 1
  br label %if.end82.i.i

if.end82.i.i:                                     ; preds = %if.then72.i.i, %if.end68.i.i.if.end82.i.i_crit_edge
  %130 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %type.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i188.i.i) #6
  %132 = ptrtoint ptr %val.addr.i188.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %val.addr.i188.i.i, align 1
  %call.i189.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %val.addr.i188.i.i, i8 noundef zeroext %add40.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i188.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189.i.i)
  %cmp86.i.i = icmp slt i32 %call.i189.i.i, 0
  br i1 %cmp86.i.i, label %do.end91.i.i, label %if.end94.i.i

do.end91.i.i:                                     ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call93.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #9
  br label %do.end37

if.end94.i.i:                                     ; preds = %if.end82.i.i
  %add95.i.i = add i8 %109, 2
  %call.i190.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %remap.i.i, i8 noundef zeroext %add95.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i190.i.i)
  %cmp98.i.i = icmp slt i32 %call.i190.i.i, 0
  br i1 %cmp98.i.i, label %do.end103.i.i, label %if.end108.i.i

do.end103.i.i:                                    ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %133 = ptrtoint ptr %resconfig.049.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %resconfig.049.i, align 1
  %conv106.i.i = zext i8 %134 to i32
  %call107.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %conv106.i.i) #9
  br label %do.end37

if.end108.i.i:                                    ; preds = %if.end94.i.i
  %remap_off.i.i = getelementptr inbounds %struct.twl4030_resconfig, ptr %resconfig.049.i, i32 0, i32 4
  %135 = ptrtoint ptr %remap_off.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %remap_off.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %136)
  %cmp110.not.i.i = icmp eq i8 %136, -1
  br i1 %cmp110.not.i.i, label %if.end108.i.i.if.end122.i.i_crit_edge, label %if.then112.i.i

if.end108.i.i.if.end122.i.i_crit_edge:            ; preds = %if.end108.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end122.i.i

if.then112.i.i:                                   ; preds = %if.end108.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %137 = ptrtoint ptr %remap.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %remap.i.i, align 1
  %139 = and i8 %138, 15
  %shl118.i.i = shl i8 %136, 4
  %or120.i.i = or i8 %139, %shl118.i.i
  store i8 %or120.i.i, ptr %remap.i.i, align 1
  br label %if.end122.i.i

if.end122.i.i:                                    ; preds = %if.then112.i.i, %if.end108.i.i.if.end122.i.i_crit_edge
  %remap_sleep.i.i = getelementptr inbounds %struct.twl4030_resconfig, ptr %resconfig.049.i, i32 0, i32 5
  %140 = ptrtoint ptr %remap_sleep.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %remap_sleep.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %141)
  %cmp124.not.i.i = icmp eq i8 %141, -1
  br i1 %cmp124.not.i.i, label %if.end122.i.i.if.end136.i.i_crit_edge, label %if.then126.i.i

if.end122.i.i.if.end136.i.i_crit_edge:            ; preds = %if.end122.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end136.i.i

if.then126.i.i:                                   ; preds = %if.end122.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %142 = ptrtoint ptr %remap.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %remap.i.i, align 1
  %144 = and i8 %143, -16
  %or134184.i.i = or i8 %144, %141
  store i8 %or134184.i.i, ptr %remap.i.i, align 1
  br label %if.end136.i.i

if.end136.i.i:                                    ; preds = %if.then126.i.i, %if.end122.i.i.if.end136.i.i_crit_edge
  %145 = ptrtoint ptr %remap.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %remap.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i191.i.i) #6
  %147 = ptrtoint ptr %val.addr.i191.i.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %val.addr.i191.i.i, align 1
  %call.i192.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %val.addr.i191.i.i, i8 noundef zeroext %add95.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i191.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i192.i.i)
  %cmp140.i.i = icmp slt i32 %call.i192.i.i, 0
  br i1 %cmp140.i.i, label %do.end145.i.i, label %if.end6.i

do.end145.i.i:                                    ; preds = %if.end136.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call147.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #9
  br label %do.end37

if.end6.i:                                        ; preds = %if.end136.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %remap.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %grp.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.i.i) #6
  %incdec.ptr.i = getelementptr %struct.twl4030_resconfig, ptr %resconfig.049.i, i32 1
  %148 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %incdec.ptr.i, align 1
  %tobool3.not.i = icmp eq i8 %149, 0
  br i1 %tobool3.not.i, label %if.end6.i.land.lhs.true.i_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end6.i.land.lhs.true.i_crit_edge:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

do.end37:                                         ; preds = %do.end145.i.i, %do.end103.i.i, %do.end91.i.i, %do.end48.i.i, %do.end35.i.i, %do.end11.i.i, %do.end.i.i111
  %retval.0.i.ph.i = phi i32 [ %call.i192.i.i, %do.end145.i.i ], [ %call.i190.i.i, %do.end103.i.i ], [ %call.i189.i.i, %do.end91.i.i ], [ %call.i187.i.i, %do.end48.i.i ], [ %call.i186.i.i, %do.end35.i.i ], [ %call.i.i.i113, %do.end11.i.i ], [ -22, %do.end.i.i111 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %remap.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %grp.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.i.i) #6
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #9
  br label %relock

land.lhs.true.i:                                  ; preds = %if.end6.i.land.lhs.true.i_crit_edge, %if.end.i109.land.lhs.true.i_crit_edge, %if.then2.i.land.lhs.true.i_crit_edge, %if.end31.land.lhs.true.i_crit_edge
  %use_poweroff.i = getelementptr inbounds %struct.twl4030_power_data, ptr %pdata.0, i32 0, i32 4
  %150 = ptrtoint ptr %use_poweroff.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %use_poweroff.i, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool1.not.i116 = icmp eq i8 %151, 0
  br i1 %tobool1.not.i116, label %land.lhs.true.i.if.end.i118_crit_edge, label %land.lhs.true.i.land.lhs.true43_crit_edge

land.lhs.true.i.land.lhs.true43_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true43

land.lhs.true.i.if.end.i118_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i118

if.end.i118:                                      ; preds = %land.lhs.true.i.if.end.i118_crit_edge, %if.end20.if.end.i118_crit_edge
  %call.i.i117 = call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.70, ptr noundef null) #6
  %tobool.i.not.i = icmp eq ptr %call.i.i117, null
  br i1 %tobool.i.not.i, label %twl4030_power_use_poweroff.exit, label %if.end.i118.land.lhs.true43_crit_edge

if.end.i118.land.lhs.true43_crit_edge:            ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true43

twl4030_power_use_poweroff.exit:                  ; preds = %if.end.i118
  %call.i9.i = call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.71, ptr noundef null) #6
  %tobool.i10.i.not = icmp eq ptr %call.i9.i, null
  br i1 %tobool.i10.i.not, label %twl4030_power_use_poweroff.exit.relock_crit_edge, label %twl4030_power_use_poweroff.exit.land.lhs.true43_crit_edge

twl4030_power_use_poweroff.exit.land.lhs.true43_crit_edge: ; preds = %twl4030_power_use_poweroff.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true43

twl4030_power_use_poweroff.exit.relock_crit_edge: ; preds = %twl4030_power_use_poweroff.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %relock

land.lhs.true43:                                  ; preds = %twl4030_power_use_poweroff.exit.land.lhs.true43_crit_edge, %if.end.i118.land.lhs.true43_crit_edge, %land.lhs.true.i.land.lhs.true43_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  %152 = load ptr, ptr @pm_power_off, align 4
  %tobool44.not = icmp eq ptr %152, null
  br i1 %tobool44.not, label %if.then45, label %land.lhs.true43.relock_crit_edge

land.lhs.true43.relock_crit_edge:                 ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #8
  br label %relock

if.then45:                                        ; preds = %land.lhs.true43
  %call.i120 = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %val, i8 noundef zeroext 3, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool47.not = icmp eq i32 %call.i120, 0
  br i1 %tobool47.not, label %if.else, label %do.end51

do.end51:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #9
  br label %if.end69

if.else:                                          ; preds = %if.then45
  %153 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %val, align 1
  %155 = and i8 %154, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool54.not = icmp eq i8 %155, 0
  br i1 %tobool54.not, label %if.then55, label %if.else.if.end69_crit_edge

if.else.if.end69_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then55:                                        ; preds = %if.else
  %or57 = or i8 %154, 1
  %156 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %or57, ptr %val, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i121)
  %157 = ptrtoint ptr %val.addr.i121 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %or57, ptr %val.addr.i121, align 1
  %call.i122 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i121, i8 noundef zeroext 3, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i121)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool60.not = icmp eq i32 %call.i122, 0
  br i1 %tobool60.not, label %if.then55.if.end69_crit_edge, label %do.end64

if.then55.if.end69_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

do.end64:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #9
  br label %relock

if.end69:                                         ; preds = %if.then55.if.end69_crit_edge, %if.else.if.end69_crit_edge, %do.end51
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr @twl4030_power_off, ptr @pm_power_off, align 4
  br label %relock

relock:                                           ; preds = %if.end69, %do.end64, %land.lhs.true43.relock_crit_edge, %twl4030_power_use_poweroff.exit.relock_crit_edge, %do.end37, %do.end28
  %err.2 = phi i32 [ %retval.0.i127, %do.end28 ], [ %retval.0.i.ph.i, %do.end37 ], [ 0, %land.lhs.true43.relock_crit_edge ], [ %call.i120, %if.end69 ], [ %call.i122, %do.end64 ], [ 0, %twl4030_power_use_poweroff.exit.relock_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i123)
  %158 = ptrtoint ptr %val.addr.i123 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %val.addr.i123, align 1
  %call.i124 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i123, i8 noundef zeroext 14, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i123)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %tobool72.not = icmp eq i32 %call.i124, 0
  br i1 %tobool72.not, label %relock.cleanup_crit_edge, label %do.end76

relock.cleanup_crit_edge:                         ; preds = %relock
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end76:                                         ; preds = %relock
  call void @__sanitizer_cov_trace_pc() #8
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end76, %relock.cleanup_crit_edge, %do.end10, %do.end
  %retval.0 = phi i32 [ %or, %do.end10 ], [ %call.i124, %do.end76 ], [ -22, %do.end ], [ %err.2, %relock.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @twl4030_power_remove(ptr nocapture noundef readnone %pdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twl4030_write_script_ins(i8 noundef zeroext %address, i16 noundef zeroext %pmb_message, i8 noundef zeroext %delay, i8 noundef zeroext %next) unnamed_addr #0 align 64 {
entry:
  %val.addr.i3.i42 = alloca i8, align 1
  %val.addr.i.i43 = alloca i8, align 1
  %val.addr.i3.i34 = alloca i8, align 1
  %val.addr.i.i35 = alloca i8, align 1
  %val.addr.i3.i26 = alloca i8, align 1
  %val.addr.i.i27 = alloca i8, align 1
  %val.addr.i3.i = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i8 %address, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %0 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %mul, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 35, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %twl4030_write_script_byte.exit, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

twl4030_write_script_byte.exit:                   ; preds = %entry
  %1 = lshr i16 %pmb_message, 8
  %conv3 = trunc i16 %1 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i3.i) #6
  %2 = ptrtoint ptr %val.addr.i3.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv3, ptr %val.addr.i3.i, align 1
  %call.i4.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i3.i, i8 noundef zeroext 36, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i3.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool.not = icmp eq i32 %call.i4.i, 0
  br i1 %tobool.not, label %if.end, label %twl4030_write_script_byte.exit.out_crit_edge

twl4030_write_script_byte.exit.out_crit_edge:     ; preds = %twl4030_write_script_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %twl4030_write_script_byte.exit
  %inc = or i8 %mul, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i27) #6
  %3 = ptrtoint ptr %val.addr.i.i27 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %inc, ptr %val.addr.i.i27, align 1
  %call.i.i28 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i.i27, i8 noundef zeroext 35, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i28)
  %tobool.not.i29 = icmp eq i32 %call.i.i28, 0
  br i1 %tobool.not.i29, label %twl4030_write_script_byte.exit33, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

twl4030_write_script_byte.exit33:                 ; preds = %if.end
  %conv6 = trunc i16 %pmb_message to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i3.i26) #6
  %4 = ptrtoint ptr %val.addr.i3.i26 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv6, ptr %val.addr.i3.i26, align 1
  %call.i4.i30 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i3.i26, i8 noundef zeroext 36, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i3.i26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i30)
  %tobool8.not = icmp eq i32 %call.i4.i30, 0
  br i1 %tobool8.not, label %if.end10, label %twl4030_write_script_byte.exit33.out_crit_edge

twl4030_write_script_byte.exit33.out_crit_edge:   ; preds = %twl4030_write_script_byte.exit33
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end10:                                         ; preds = %twl4030_write_script_byte.exit33
  %inc4 = or i8 %mul, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i35) #6
  %5 = ptrtoint ptr %val.addr.i.i35 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %inc4, ptr %val.addr.i.i35, align 1
  %call.i.i36 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i.i35, i8 noundef zeroext 35, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36)
  %tobool.not.i37 = icmp eq i32 %call.i.i36, 0
  br i1 %tobool.not.i37, label %twl4030_write_script_byte.exit41, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

twl4030_write_script_byte.exit41:                 ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i3.i34) #6
  %6 = ptrtoint ptr %val.addr.i3.i34 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %delay, ptr %val.addr.i3.i34, align 1
  %call.i4.i38 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i3.i34, i8 noundef zeroext 36, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i3.i34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i38)
  %tobool13.not = icmp eq i32 %call.i4.i38, 0
  br i1 %tobool13.not, label %if.end15, label %twl4030_write_script_byte.exit41.out_crit_edge

twl4030_write_script_byte.exit41.out_crit_edge:   ; preds = %twl4030_write_script_byte.exit41
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end15:                                         ; preds = %twl4030_write_script_byte.exit41
  %inc11 = or i8 %mul, 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i43) #6
  %7 = ptrtoint ptr %val.addr.i.i43 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %inc11, ptr %val.addr.i.i43, align 1
  %call.i.i44 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i.i43, i8 noundef zeroext 35, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44)
  %tobool.not.i45 = icmp eq i32 %call.i.i44, 0
  br i1 %tobool.not.i45, label %if.end.i47, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.i47:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i3.i42) #6
  %8 = ptrtoint ptr %val.addr.i3.i42 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %next, ptr %val.addr.i3.i42, align 1
  %call.i4.i46 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i3.i42, i8 noundef zeroext 36, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i3.i42) #6
  br label %out

out:                                              ; preds = %if.end.i47, %if.end15.out_crit_edge, %twl4030_write_script_byte.exit41.out_crit_edge, %if.end10.out_crit_edge, %twl4030_write_script_byte.exit33.out_crit_edge, %if.end.out_crit_edge, %twl4030_write_script_byte.exit.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call.i4.i, %twl4030_write_script_byte.exit.out_crit_edge ], [ %call.i4.i30, %twl4030_write_script_byte.exit33.out_crit_edge ], [ %call.i4.i38, %twl4030_write_script_byte.exit41.out_crit_edge ], [ %call.i.i44, %if.end15.out_crit_edge ], [ %call.i4.i46, %if.end.i47 ], [ %call.i.i, %entry.out_crit_edge ], [ %call.i.i28, %if.end.out_crit_edge ], [ %call.i.i36, %if.end10.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !27, !29, !31, !33, !34, !36, !38, !39, !40, !41, !43, !45, !47, !48, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179}
!llvm.module.flags = !{!181, !182, !183, !184, !185, !186, !187, !188}
!llvm.ident = !{!189}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/twl4030-power.c", i32 519, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @twl4030_remove_script._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @twl4030_remove_script._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @twl4030_remove_script._entry.3, !7, !"_entry", i1 false, i1 false}
!7 = !{!"../drivers/mfd/twl4030-power.c", i32 526, i32 3}
!8 = !{ptr @twl4030_remove_script._entry_ptr.4, !7, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/mfd/twl4030-power.c", i32 558, i32 3}
!11 = !{ptr @twl4030_remove_script._entry.5, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @twl4030_remove_script._entry_ptr.7, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/mfd/twl4030-power.c", i32 669, i32 3}
!15 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @twl4030_power_off._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @twl4030_power_off._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mfd/twl4030-power.c", i32 674, i32 3}
!20 = !{ptr @twl4030_power_off._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @twl4030_power_off._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__initcall__kmod_twl4030_power__210_970_twl4030_power_driver_init6, !23, !"__initcall__kmod_twl4030_power__210_970_twl4030_power_driver_init6", i1 false, i1 false}
!23 = !{!"../drivers/mfd/twl4030-power.c", i32 970, i32 1}
!24 = !{ptr @__exitcall_twl4030_power_driver_exit, !23, !"__exitcall_twl4030_power_driver_exit", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_author211, !26, !"__UNIQUE_ID_author211", i1 false, i1 false}
!26 = !{!"../drivers/mfd/twl4030-power.c", i32 972, i32 1}
!27 = !{ptr @__UNIQUE_ID_author212, !28, !"__UNIQUE_ID_author212", i1 false, i1 false}
!28 = !{!"../drivers/mfd/twl4030-power.c", i32 973, i32 1}
!29 = !{ptr @__UNIQUE_ID_description213, !30, !"__UNIQUE_ID_description213", i1 false, i1 false}
!30 = !{!"../drivers/mfd/twl4030-power.c", i32 974, i32 1}
!31 = !{ptr @__UNIQUE_ID_file214, !32, !"__UNIQUE_ID_file214", i1 false, i1 false}
!32 = !{!"../drivers/mfd/twl4030-power.c", i32 975, i32 1}
!33 = !{ptr @__UNIQUE_ID_license215, !32, !"__UNIQUE_ID_license215", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_alias216, !35, !"__UNIQUE_ID_alias216", i1 false, i1 false}
!35 = !{!"../drivers/mfd/twl4030-power.c", i32 976, i32 1}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mfd/twl4030-power.c", i32 650, i32 3}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @twl4030_starton_mask_and_set._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @twl4030_starton_mask_and_set._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mfd/twl4030-power.c", i32 963, i32 11}
!43 = !{ptr @twl4030_power_driver, !44, !"twl4030_power_driver", i1 false, i1 false}
!44 = !{!"../drivers/mfd/twl4030-power.c", i32 961, i32 31}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mfd/twl4030-power.c", i32 892, i32 3}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @twl4030_power_probe._entry, !46, !"_entry", i1 false, i1 false}
!51 = !{ptr @twl4030_power_probe._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mfd/twl4030-power.c", i32 903, i32 3}
!54 = !{ptr @twl4030_power_probe._entry.20, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @twl4030_power_probe._entry_ptr.22, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mfd/twl4030-power.c", i32 915, i32 4}
!58 = !{ptr @twl4030_power_probe._entry.23, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @twl4030_power_probe._entry_ptr.25, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mfd/twl4030-power.c", i32 920, i32 4}
!62 = !{ptr @twl4030_power_probe._entry.26, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @twl4030_power_probe._entry_ptr.28, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mfd/twl4030-power.c", i32 931, i32 4}
!66 = !{ptr @twl4030_power_probe._entry.29, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @twl4030_power_probe._entry_ptr.31, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mfd/twl4030-power.c", i32 937, i32 5}
!70 = !{ptr @twl4030_power_probe._entry.32, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @twl4030_power_probe._entry_ptr.34, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @twl4030_power_probe._entry.35, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../drivers/mfd/twl4030-power.c", i32 949, i32 3}
!74 = !{ptr @twl4030_power_probe._entry_ptr.36, !73, !"_entry_ptr", i1 false, i1 false}
!75 = distinct !{null, !76, !"twl4030_start_script_address", i1 false, i1 false}
!76 = !{!"../drivers/mfd/twl4030-power.c", i32 35, i32 11}
!77 = distinct !{null, !78, !"order", i1 false, i1 false}
!78 = !{!"../drivers/mfd/twl4030-power.c", i32 469, i32 13}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mfd/twl4030-power.c", i32 473, i32 3}
!81 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @load_twl4030_script._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @load_twl4030_script._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mfd/twl4030-power.c", i32 505, i32 4}
!86 = !{ptr @load_twl4030_script._entry.39, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @load_twl4030_script._entry_ptr.41, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mfd/twl4030-power.c", i32 368, i32 3}
!90 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @twl4030_config_warmreset_sequence._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @twl4030_config_warmreset_sequence._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mfd/twl4030-power.c", i32 313, i32 3}
!95 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @twl4030_config_wakeup12_sequence._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @twl4030_config_wakeup12_sequence._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mfd/twl4030-power.c", i32 262, i32 3}
!100 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @twl4030_config_wakeup3_sequence._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @twl4030_config_wakeup3_sequence._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mfd/twl4030-power.c", i32 326, i32 3}
!105 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @twl4030_config_sleep_sequence._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @twl4030_config_sleep_sequence._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mfd/twl4030-power.c", i32 381, i32 3}
!110 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @twl4030_configure_resource._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @twl4030_configure_resource._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mfd/twl4030-power.c", i32 392, i32 3}
!115 = !{ptr @twl4030_configure_resource._entry.52, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @twl4030_configure_resource._entry_ptr.54, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mfd/twl4030-power.c", i32 403, i32 4}
!119 = !{ptr @twl4030_configure_resource._entry.55, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @twl4030_configure_resource._entry_ptr.57, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mfd/twl4030-power.c", i32 412, i32 3}
!123 = !{ptr @twl4030_configure_resource._entry.58, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @twl4030_configure_resource._entry_ptr.60, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mfd/twl4030-power.c", i32 430, i32 3}
!127 = !{ptr @twl4030_configure_resource._entry.61, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @twl4030_configure_resource._entry_ptr.63, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mfd/twl4030-power.c", i32 438, i32 3}
!131 = !{ptr @twl4030_configure_resource._entry.64, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @twl4030_configure_resource._entry_ptr.66, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.68, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mfd/twl4030-power.c", i32 457, i32 3}
!135 = !{ptr @twl4030_configure_resource._entry.67, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @twl4030_configure_resource._entry_ptr.69, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @res_config_addrs, !138, !"res_config_addrs", i1 false, i1 false}
!138 = !{!"../drivers/mfd/twl4030-power.c", i32 109, i32 11}
!139 = !{ptr @.str.70, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mfd/twl4030-power.c", i32 683, i32 34}
!141 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/mfd/twl4030-power.c", i32 686, i32 34}
!143 = !{ptr @twl4030_power_of_match, !144, !"twl4030_power_of_match", i1 false, i1 false}
!144 = !{!"../drivers/mfd/twl4030-power.c", i32 849, i32 34}
!145 = !{ptr @omap3_reset, !146, !"omap3_reset", i1 false, i1 false}
!146 = !{!"../drivers/mfd/twl4030-power.c", i32 726, i32 34}
!147 = !{ptr @omap3_reset_scripts, !148, !"omap3_reset_scripts", i1 false, i1 false}
!148 = !{!"../drivers/mfd/twl4030-power.c", i32 715, i32 31}
!149 = !{ptr @omap3_wrst_script, !150, !"omap3_wrst_script", i1 false, i1 false}
!150 = !{!"../drivers/mfd/twl4030-power.c", i32 709, i32 30}
!151 = !{ptr @omap3_wrst_seq, !152, !"omap3_wrst_seq", i1 false, i1 false}
!152 = !{!"../drivers/mfd/twl4030-power.c", i32 696, i32 27}
!153 = !{ptr @omap3_rconfig, !154, !"omap3_rconfig", i1 false, i1 false}
!154 = !{!"../drivers/mfd/twl4030-power.c", i32 719, i32 33}
!155 = !{ptr @omap3_idle, !156, !"omap3_idle", i1 false, i1 false}
!156 = !{!"../drivers/mfd/twl4030-power.c", i32 815, i32 34}
!157 = !{ptr @omap3_idle_scripts, !158, !"omap3_idle_scripts", i1 false, i1 false}
!158 = !{!"../drivers/mfd/twl4030-power.c", i32 768, i32 31}
!159 = !{ptr @omap3_idle_wakeup_p12_script, !160, !"omap3_idle_wakeup_p12_script", i1 false, i1 false}
!160 = !{!"../drivers/mfd/twl4030-power.c", i32 750, i32 30}
!161 = !{ptr @omap3_idle_wakeup_p12_seq, !162, !"omap3_idle_wakeup_p12_seq", i1 false, i1 false}
!162 = !{!"../drivers/mfd/twl4030-power.c", i32 746, i32 27}
!163 = !{ptr @omap3_idle_wakeup_p3_script, !164, !"omap3_idle_wakeup_p3_script", i1 false, i1 false}
!164 = !{!"../drivers/mfd/twl4030-power.c", i32 762, i32 30}
!165 = !{ptr @omap3_idle_wakeup_p3_seq, !166, !"omap3_idle_wakeup_p3_seq", i1 false, i1 false}
!166 = !{!"../drivers/mfd/twl4030-power.c", i32 757, i32 27}
!167 = !{ptr @omap3_idle_sleep_on_script, !168, !"omap3_idle_sleep_on_script", i1 false, i1 false}
!168 = !{!"../drivers/mfd/twl4030-power.c", i32 739, i32 30}
!169 = !{ptr @omap3_idle_sleep_on_seq, !170, !"omap3_idle_sleep_on_seq", i1 false, i1 false}
!170 = !{!"../drivers/mfd/twl4030-power.c", i32 735, i32 27}
!171 = !{ptr @omap3_idle_rconfig, !172, !"omap3_idle_rconfig", i1 false, i1 false}
!172 = !{!"../drivers/mfd/twl4030-power.c", i32 783, i32 33}
!173 = !{ptr @osc_off_idle, !174, !"osc_off_idle", i1 false, i1 false}
!174 = !{!"../drivers/mfd/twl4030-power.c", i32 827, i32 34}
!175 = !{ptr @osc_off_rconfig, !176, !"osc_off_rconfig", i1 false, i1 false}
!176 = !{!"../drivers/mfd/twl4030-power.c", i32 822, i32 33}
!177 = !{ptr @omap3_idle_ac_quirk, !178, !"omap3_idle_ac_quirk", i1 false, i1 false}
!178 = !{!"../drivers/mfd/twl4030-power.c", i32 834, i32 34}
!179 = !{ptr @omap3_idle_ac_quirk_osc_off, !180, !"omap3_idle_ac_quirk_osc_off", i1 false, i1 false}
!180 = !{!"../drivers/mfd/twl4030-power.c", i32 841, i32 34}
!181 = !{i32 1, !"wchar_size", i32 2}
!182 = !{i32 1, !"min_enum_size", i32 4}
!183 = !{i32 8, !"branch-target-enforcement", i32 0}
!184 = !{i32 8, !"sign-return-address", i32 0}
!185 = !{i32 8, !"sign-return-address-all", i32 0}
!186 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!187 = !{i32 7, !"uwtable", i32 1}
!188 = !{i32 7, !"frame-pointer", i32 2}
!189 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!190 = !{!"auto-init"}
!191 = !{i8 0, i8 2}
