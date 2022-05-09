; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/meson-mx-sdhc-mmc.c_pt.bc'
source_filename = "../drivers/mmc/host/meson-mx-sdhc-mmc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.meson_mx_sdhc_data = type { ptr, ptr, ptr, i8 }
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
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.meson_mx_sdhc_host = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, [4 x %struct.clk_bulk_data], i8, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_meson_mx_sdhc__532_932_meson_mx_sdhc_driver_init6 = internal global ptr @meson_mx_sdhc_driver_init, section ".initcall6.init", align 4
@meson_mx_sdhc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson_mx_sdhc_probe, ptr @meson_mx_sdhc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @meson_mx_sdhc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson_mx_sdhc_driver_exit = internal global ptr @meson_mx_sdhc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description533 = internal constant [80 x i8] c"meson_mx_sdhc.description=Meson6, Meson8, Meson8b and Meson8m2 SDHC Host Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author534 = internal constant [78 x i8] c"meson_mx_sdhc.author=Martin Blumenstingl <martin.blumenstingl@googlemail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file535 = internal constant [50 x i8] c"meson_mx_sdhc.file=drivers/mmc/host/meson-mx-sdhc\00", section ".modinfo", align 1
@__UNIQUE_ID_license536 = internal constant [29 x i8] c"meson_mx_sdhc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"meson-mx-sdhc\00", [18 x i8] zeroinitializer }, align 32
@meson_mx_sdhc_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8-sdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_mx_sdhc_data_meson8 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-sdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_mx_sdhc_data_meson8 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8m2-sdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_mx_sdhc_data_meson8m2 }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@meson_mx_sdhc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 794, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to register mmc_free_host action\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"meson_mx_sdhc_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/mmc/host/meson-mx-sdhc-mmc.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_mx_sdhc_probe._entry_ptr = internal global ptr @meson_mx_sdhc_probe._entry, section ".printk_index", align 4
@meson_mx_sdhc_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@meson_mx_sdhc_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 56, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"meson_mx_sdhc_mmc:812:(&meson_mx_sdhc_regmap_config)->lock\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@meson_mx_sdhc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 823, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable 'pclk' clock\0A\00", [33 x i8] zeroinitializer }, align 32
@meson_mx_sdhc_probe._entry_ptr.10 = internal global ptr @meson_mx_sdhc_probe._entry.8, section ".printk_index", align 4
@meson_mx_sdhc_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr null, ptr null, ptr @meson_mx_sdhc_request, ptr null, ptr @meson_mx_sdhc_set_ios, ptr @mmc_gpio_get_ro, ptr @mmc_gpio_get_cd, ptr null, ptr null, ptr null, ptr null, ptr @meson_mx_sdhc_card_busy, ptr @meson_mx_sdhc_execute_tuning, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @meson_mx_sdhc_hw_reset, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@meson_mx_sdhc_map_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 392, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dma_map_sg failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"meson_mx_sdhc_map_dma\00", [42 x i8] zeroinitializer }, align 32
@meson_mx_sdhc_map_dma._entry_ptr = internal global ptr @meson_mx_sdhc_map_dma._entry, section ".printk_index", align 4
@meson_mx_sdhc_wait_cmd_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 118, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to poll for CMD_BUSY while processing CMD%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"meson_mx_sdhc_wait_cmd_ready\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@meson_mx_sdhc_wait_cmd_ready._entry_ptr = internal global ptr @meson_mx_sdhc_wait_cmd_ready._entry, section ".printk_index", align 4
@meson_mx_sdhc_wait_cmd_ready._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.3, i32 129, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Failed to poll for ESTA[13:11] while processing CMD%d\0A\00", [41 x i8] zeroinitializer }, align 32
@meson_mx_sdhc_wait_cmd_ready._entry_ptr.18 = internal global ptr @meson_mx_sdhc_wait_cmd_ready._entry.16, section ".printk_index", align 4
@meson_mx_sdhc_set_ios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 375, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unsupported bus width: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"meson_mx_sdhc_set_ios\00", [42 x i8] zeroinitializer }, align 32
@meson_mx_sdhc_set_ios._entry_ptr = internal global ptr @meson_mx_sdhc_set_ios._entry, section ".printk_index", align 4
@meson_mx_sdhc_set_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 282, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to set MMC clock to %uHz: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"meson_mx_sdhc_set_clk\00", [42 x i8] zeroinitializer }, align 32
@meson_mx_sdhc_set_clk._entry_ptr = internal global ptr @meson_mx_sdhc_set_clk._entry, section ".printk_index", align 4
@meson_mx_sdhc_execute_tuning.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"meson_mx_sdhc\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"meson_mx_sdhc_execute_tuning\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"New RX phase window starts at %u\0A\00", [62 x i8] zeroinitializer }, align 32
@meson_mx_sdhc_execute_tuning.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.24, ptr @.str.3, ptr @.str.26, i8 0, i8 120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"New best RX phase window: %u - %u\0A\00", [61 x i8] zeroinitializer }, align 32
@meson_mx_sdhc_execute_tuning.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.24, ptr @.str.3, ptr @.str.27, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Tuned RX clock phase to %u\0A\00", [36 x i8] zeroinitializer }, align 32
@meson_mx_sdhc_irq.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"meson_mx_sdhc_irq\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CMD%d error, ISTA: 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@meson_mx_sdhc_clear_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 102, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to clear FIFOs, RX: %lu, TX: %lu\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"meson_mx_sdhc_clear_fifo\00", [39 x i8] zeroinitializer }, align 32
@meson_mx_sdhc_clear_fifo._entry_ptr = internal global ptr @meson_mx_sdhc_clear_fifo._entry, section ".printk_index", align 4
@meson_mx_sdhc_data_meson8 = internal constant { %struct.meson_mx_sdhc_data, [16 x i8] } { %struct.meson_mx_sdhc_data { ptr @meson_mx_sdhc_init_hw_meson8, ptr @meson_mx_sdhc_set_pdma_meson8, ptr @meson_mx_sdhc_wait_before_send_meson8, i8 0 }, [16 x i8] zeroinitializer }, align 32
@meson_mx_sdhc_data_meson8m2 = internal constant { %struct.meson_mx_sdhc_data, [16 x i8] } { %struct.meson_mx_sdhc_data { ptr @meson_mx_sdhc_init_hw_meson8m2, ptr @meson_mx_sdhc_set_pdma_meson8m2, ptr null, i8 1 }, [16 x i8] zeroinitializer }, align 32
@meson_mx_sdhc_wait_before_send_meson8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 706, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to wait for ESTA to clear: 0x%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"meson_mx_sdhc_wait_before_send_meson8\00", [58 x i8] zeroinitializer }, align 32
@meson_mx_sdhc_wait_before_send_meson8._entry_ptr = internal global ptr @meson_mx_sdhc_wait_before_send_meson8._entry, section ".printk_index", align 4
@meson_mx_sdhc_wait_before_send_meson8._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 715, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to wait for TX FIFO to fill\0A\00", [60 x i8] zeroinitializer }, align 32
@meson_mx_sdhc_wait_before_send_meson8._entry_ptr.36 = internal global ptr @meson_mx_sdhc_wait_before_send_meson8._entry.34, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967291]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"meson_mx_sdhc_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 922, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 926, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [23 x i8] c"meson_mx_sdhc_of_match\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 905, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 794, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [28 x i8] c"meson_mx_sdhc_regmap_config\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 61, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 811, i32 17 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 816, i32 33 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 823, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"meson_mx_sdhc_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 513, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 392, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 116, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 127, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 374, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 280, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 469, i32 5 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 480, i32 5 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 508, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 584, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 99, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [26 x i8] c"meson_mx_sdhc_data_meson8\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 892, i32 40 }
@___asan_gen_.165 = private unnamed_addr constant [28 x i8] c"meson_mx_sdhc_data_meson8m2\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 899, i32 40 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 705, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.181 = private constant [40 x i8] c"../drivers/mmc/host/meson-mx-sdhc-mmc.c\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 714, i32 4 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author534, ptr @__UNIQUE_ID_description533, ptr @__UNIQUE_ID_file535, ptr @__UNIQUE_ID_license536, ptr @__exitcall_meson_mx_sdhc_driver_exit, ptr @__initcall__kmod_meson_mx_sdhc__532_932_meson_mx_sdhc_driver_init6, ptr @meson_mx_sdhc_clear_fifo._entry, ptr @meson_mx_sdhc_clear_fifo._entry_ptr, ptr @meson_mx_sdhc_driver_exit, ptr @meson_mx_sdhc_map_dma._entry, ptr @meson_mx_sdhc_map_dma._entry_ptr, ptr @meson_mx_sdhc_probe._entry, ptr @meson_mx_sdhc_probe._entry.8, ptr @meson_mx_sdhc_probe._entry_ptr, ptr @meson_mx_sdhc_probe._entry_ptr.10, ptr @meson_mx_sdhc_set_clk._entry, ptr @meson_mx_sdhc_set_clk._entry_ptr, ptr @meson_mx_sdhc_set_ios._entry, ptr @meson_mx_sdhc_set_ios._entry_ptr, ptr @meson_mx_sdhc_wait_before_send_meson8._entry, ptr @meson_mx_sdhc_wait_before_send_meson8._entry.34, ptr @meson_mx_sdhc_wait_before_send_meson8._entry_ptr, ptr @meson_mx_sdhc_wait_before_send_meson8._entry_ptr.36, ptr @meson_mx_sdhc_wait_cmd_ready._entry, ptr @meson_mx_sdhc_wait_cmd_ready._entry.16, ptr @meson_mx_sdhc_wait_cmd_ready._entry_ptr, ptr @meson_mx_sdhc_wait_cmd_ready._entry_ptr.18, ptr @meson_mx_sdhc_driver, ptr @.str, ptr @meson_mx_sdhc_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @meson_mx_sdhc_probe._key, ptr @meson_mx_sdhc_regmap_config, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @meson_mx_sdhc_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @meson_mx_sdhc_data_meson8, ptr @meson_mx_sdhc_data_meson8m2, ptr @.str.32, ptr @.str.33, ptr @.str.35], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_sdhc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_sdhc_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_sdhc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_sdhc_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_sdhc_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_sdhc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_sdhc_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_sdhc_map_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_sdhc_wait_cmd_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_sdhc_wait_cmd_ready._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_sdhc_set_ios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_sdhc_set_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_sdhc_clear_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_sdhc_data_meson8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_sdhc_data_meson8m2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_sdhc_wait_before_send_meson8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_sdhc_wait_before_send_meson8._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mx_sdhc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_mx_sdhc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_mx_sdhc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_mx_sdhc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mx_sdhc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @mmc_alloc_host(i32 noundef 68, ptr noundef %dev1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @mmc_free_host, ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mmc_free_host(ptr noundef nonnull %call) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 70
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %private.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %private.i, ptr %driver_data.i.i, align 4
  %call8 = tail call ptr @device_get_match_data(ptr noundef %dev1) #5
  %platform = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  %2 = ptrtoint ptr %platform to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call8, ptr %platform, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.end5.cleanup_crit_edge, label %if.end12

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %call13 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %call18 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call13, ptr noundef nonnull @meson_mx_sdhc_regmap_config, ptr noundef nonnull @meson_mx_sdhc_probe._key, ptr noundef nonnull @.str.6) #5
  %regmap = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call18, ptr %regmap, align 4
  %cmp.i152 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i152, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %call25 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #5
  %pclk = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call25, ptr %pclk, align 4
  %cmp.i153 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %call.i154 = tail call i32 @clk_prepare(ptr noundef %call25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %tobool.not.i155 = icmp eq i32 %call.i154, 0
  br i1 %tobool.not.i155, label %if.end.i, label %if.end31.do.end38_crit_edge

if.end31.do.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end38

if.end.i:                                         ; preds = %if.end31
  %call1.i = tail call i32 @clk_enable(ptr noundef %call25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end39, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call25) #5
  br label %do.end38

do.end38:                                         ; preds = %if.then3.i, %if.end31.do.end38_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i154, %if.end31.do.end38_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end39:                                         ; preds = %if.end.i
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call1.i.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 44, i32 noundef 63) #5
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call3.i.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 44, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call63.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 8, i32 noundef -402661376) #5
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call65.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 16, i32 noundef 4095) #5
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call83.i = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 56, i32 noundef 4096) #5
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call153.i = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 24, i32 noundef 205765872) #5
  %20 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %platform, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  tail call void %23(ptr noundef nonnull %call) #5
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call155.i = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 36, i32 noundef 0) #5
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call157.i = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 40, i32 noundef 32767) #5
  %bulk_clks = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 4
  %call40 = tail call i32 @meson_mx_sdhc_register_clkc(ptr noundef %dev1, ptr noundef %call13, ptr noundef %bulk_clks) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.err_disable_pclk_crit_edge

if.end39.err_disable_pclk_crit_edge:              ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_disable_pclk

if.end43:                                         ; preds = %if.end39
  %clk = getelementptr %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7
  %28 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk, align 4
  %sd_clk = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 3
  %30 = ptrtoint ptr %sd_clk to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %sd_clk, align 4
  %call45 = tail call i32 @mmc_regulator_get_supply(ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end43.err_disable_pclk_crit_edge

if.end43.err_disable_pclk_crit_edge:              ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_disable_pclk

if.end48:                                         ; preds = %if.end43
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 23
  %31 = ptrtoint ptr %max_req_size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 131072, ptr %max_req_size, align 8
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 20
  %32 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 131072, ptr %max_seg_size, align 16
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 25
  %33 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 65535, ptr %max_blk_count, align 128
  %max_blk_size = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 24
  %34 = ptrtoint ptr %max_blk_size to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 512, ptr %max_blk_size, align 4
  %max_busy_timeout = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 26
  %35 = ptrtoint ptr %max_busy_timeout to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 30000, ptr %max_busy_timeout, align 4
  %36 = ptrtoint ptr %sd_clk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sd_clk, align 4
  %call67 = tail call i32 @clk_round_rate(ptr noundef %37, i32 noundef 1) #5
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 5
  %38 = ptrtoint ptr %f_min to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call67, ptr %f_min, align 4
  %39 = ptrtoint ptr %sd_clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sd_clk, align 4
  %call69 = tail call i32 @clk_round_rate(ptr noundef %40, i32 noundef -1) #5
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 6
  %41 = ptrtoint ptr %f_max to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call69, ptr %f_max, align 8
  %max_current_180 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 15
  %42 = ptrtoint ptr %max_current_180 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 300, ptr %max_current_180, align 4
  %max_current_330 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 13
  %43 = ptrtoint ptr %max_current_330 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 300, ptr %max_current_330, align 4
  %caps = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 16
  %44 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %caps, align 32
  %or = or i32 %45, -2147483136
  store i32 %or, ptr %caps, align 32
  %ops = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 3
  %46 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @meson_mx_sdhc_ops, ptr %ops, align 4
  %call70 = tail call i32 @mmc_of_parse(ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end48.err_disable_pclk_crit_edge

if.end48.err_disable_pclk_crit_edge:              ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_disable_pclk

if.end73:                                         ; preds = %if.end48
  %call74 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp = icmp slt i32 %call74, 0
  br i1 %cmp, label %if.end73.err_disable_pclk_crit_edge, label %if.end76

if.end73.err_disable_pclk_crit_edge:              ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_disable_pclk

if.end76:                                         ; preds = %if.end73
  %call77 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call74, ptr noundef nonnull @meson_mx_sdhc_irq, ptr noundef nonnull @meson_mx_sdhc_irq_thread, i32 noundef 8192, ptr noundef null, ptr noundef %private.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end76.err_disable_pclk_crit_edge

if.end76.err_disable_pclk_crit_edge:              ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_disable_pclk

if.end80:                                         ; preds = %if.end76
  %call81 = tail call i32 @mmc_add_host(ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end80.cleanup_crit_edge, label %if.end80.err_disable_pclk_crit_edge

if.end80.err_disable_pclk_crit_edge:              ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_disable_pclk

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_disable_pclk:                                 ; preds = %if.end80.err_disable_pclk_crit_edge, %if.end76.err_disable_pclk_crit_edge, %if.end73.err_disable_pclk_crit_edge, %if.end48.err_disable_pclk_crit_edge, %if.end43.err_disable_pclk_crit_edge, %if.end39.err_disable_pclk_crit_edge
  %ret.0 = phi i32 [ %call40, %if.end39.err_disable_pclk_crit_edge ], [ %call45, %if.end43.err_disable_pclk_crit_edge ], [ %call70, %if.end48.err_disable_pclk_crit_edge ], [ %call77, %if.end76.err_disable_pclk_crit_edge ], [ %call81, %if.end80.err_disable_pclk_crit_edge ], [ %call74, %if.end73.err_disable_pclk_crit_edge ]
  %47 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %48) #5
  tail call void @clk_unprepare(ptr noundef %48) #5
  br label %cleanup

cleanup:                                          ; preds = %err_disable_pclk, %if.end80.cleanup_crit_edge, %do.end38, %if.then28, %if.then21, %if.then15, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %3, %if.then15 ], [ %5, %if.then21 ], [ %7, %if.then28 ], [ %retval.0.i.ph, %do.end38 ], [ %ret.0, %err_disable_pclk ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ 0, %if.end80.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mx_sdhc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @mmc_remove_host(ptr noundef %3) #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %bulk_clks_enabled.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %bulk_clks_enabled.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bulk_clks_enabled.i, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.meson_mx_sdhc_disable_clks.exit_crit_edge, label %if.end.i

entry.meson_mx_sdhc_disable_clks.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_mx_sdhc_disable_clks.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bulk_clks.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 1, i32 1, i32 0, i32 4
  tail call void @clk_bulk_disable(i32 noundef 4, ptr noundef %bulk_clks.i) #5
  tail call void @clk_bulk_unprepare(i32 noundef 4, ptr noundef %bulk_clks.i) #5
  %8 = ptrtoint ptr %bulk_clks_enabled.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %bulk_clks_enabled.i, align 4
  br label %meson_mx_sdhc_disable_clks.exit

meson_mx_sdhc_disable_clks.exit:                  ; preds = %if.end.i, %entry.meson_mx_sdhc_disable_clks.exit_crit_edge
  %pclk = getelementptr inbounds %struct.meson_mx_sdhc_host, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %10) #5
  tail call void @clk_unprepare(ptr noundef %10) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_mx_sdhc_register_clkc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_get_supply(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mx_sdhc_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %ictl = alloca i32, align 4
  %ista = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.meson_mx_sdhc_host, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ictl) #5
  %2 = ptrtoint ptr %ictl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ictl, align 4, !annotation !105
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ista) #5
  %3 = ptrtoint ptr %ista to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %ista, align 4, !annotation !105
  %regmap = getelementptr inbounds %struct.meson_mx_sdhc_host, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %5, i32 noundef 36, ptr noundef nonnull %ictl) #5
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %7, i32 noundef 40, ptr noundef nonnull %ista) #5
  %8 = ptrtoint ptr %ictl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ictl, align 4
  %10 = ptrtoint ptr %ista to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ista, align 4
  %and = and i32 %11, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = and i32 %11, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %if.else, label %if.end.if.end20.sink.split_crit_edge

if.end.if.end20.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.sink.split

if.else:                                          ; preds = %if.end
  %and9 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else13, label %if.else.if.end20.sink.split_crit_edge

if.else.if.end20.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.sink.split

if.else13:                                        ; preds = %if.else
  %and14 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else13.if.end20_crit_edge, label %if.else13.if.end20.sink.split_crit_edge

if.else13.if.end20.sink.split_crit_edge:          ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.sink.split

if.else13.if.end20_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end20.sink.split:                              ; preds = %if.else13.if.end20.sink.split_crit_edge, %if.else.if.end20.sink.split_crit_edge, %if.end.if.end20.sink.split_crit_edge
  %.sink = phi i32 [ -5, %if.end.if.end20.sink.split_crit_edge ], [ -84, %if.else.if.end20.sink.split_crit_edge ], [ -110, %if.else13.if.end20.sink.split_crit_edge ]
  %error12 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %error12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %error12, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.else13.if.end20_crit_edge
  %data21 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %data21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data21, align 4
  %tobool22.not = icmp eq ptr %16, null
  br i1 %tobool22.not, label %if.end20.if.end37_crit_edge, label %if.then23

if.end20.if.end37_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then23:                                        ; preds = %if.end20
  %and24 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else29, label %if.then23.if.end37.sink.split_crit_edge

if.then23.if.end37.sink.split_crit_edge:          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37.sink.split

if.else29:                                        ; preds = %if.then23
  %and30 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.else29.if.end37_crit_edge, label %if.else29.if.end37.sink.split_crit_edge

if.else29.if.end37.sink.split_crit_edge:          ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37.sink.split

if.else29.if.end37_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.end37.sink.split:                              ; preds = %if.else29.if.end37.sink.split_crit_edge, %if.then23.if.end37.sink.split_crit_edge
  %.sink71 = phi i32 [ -84, %if.then23.if.end37.sink.split_crit_edge ], [ -110, %if.else29.if.end37.sink.split_crit_edge ]
  %error28 = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %error28 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink71, ptr %error28, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %if.else29.if.end37_crit_edge, %if.end20.if.end37_crit_edge
  %error38 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %error38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool39.not = icmp eq i32 %19, 0
  br i1 %tobool39.not, label %lor.lhs.false40, label %if.end37.do.body_crit_edge

if.end37.do.body_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

lor.lhs.false40:                                  ; preds = %if.end37
  %20 = ptrtoint ptr %data21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data21, align 4
  %tobool42.not = icmp eq ptr %21, null
  br i1 %tobool42.not, label %lor.lhs.false40.cleanup_crit_edge, label %land.lhs.true

lor.lhs.false40.cleanup_crit_edge:                ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %lor.lhs.false40
  %error44 = getelementptr inbounds %struct.mmc_data, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %error44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %error44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool45.not = icmp eq i32 %23, 0
  br i1 %tobool45.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %if.end37.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_mx_sdhc_irq.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_mx_sdhc_irq, %if.then51)) #5
          to label %cleanup [label %if.then51], !srcloc !106

if.then51:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 128
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 4
  %30 = ptrtoint ptr %ista to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ista, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_mx_sdhc_irq.__UNIQUE_ID_ddebug401, ptr noundef %27, ptr noundef nonnull @.str.29, i32 noundef %29, i32 noundef %31) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %do.body, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false40.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 2, %if.then51 ], [ 2, %land.lhs.true.cleanup_crit_edge ], [ 2, %lor.lhs.false40.cleanup_crit_edge ], [ 2, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ista) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ictl) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mx_sdhc_irq_thread(i32 noundef %irq, ptr nocapture noundef %irq_data) #2 align 64 {
entry:
  %stat.i = alloca i32, align 4
  %val.i142 = alloca i32, align 4
  %val.i137 = alloca i32, align 4
  %val.i132 = alloca i32, align 4
  %val.i127 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.meson_mx_sdhc_host, ptr %irq_data, i32 0, i32 2
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !107

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 597, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end24:                                         ; preds = %entry
  %data = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool25.not = icmp eq ptr %3, null
  br i1 %tobool25.not, label %if.end24.if.end59_crit_edge, label %land.lhs.true

if.end24.if.end59_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

land.lhs.true:                                    ; preds = %if.end24
  %error = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool27.not = icmp eq i32 %5, 0
  br i1 %tobool27.not, label %if.then28, label %land.lhs.true.if.end59_crit_edge

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.then28:                                        ; preds = %land.lhs.true
  %platform = getelementptr inbounds %struct.meson_mx_sdhc_host, ptr %irq_data, i32 0, i32 9
  %6 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform, align 4
  %hardware_flush_all_cmds = getelementptr inbounds %struct.meson_mx_sdhc_data, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %hardware_flush_all_cmds to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hardware_flush_all_cmds, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool29.not = icmp eq i8 %9, 0
  br i1 %tobool29.not, label %land.lhs.true30, label %if.then28.if.end50_crit_edge

if.then28.if.end50_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

land.lhs.true30:                                  ; preds = %if.then28
  %flags = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %land.lhs.true30.if.end50_crit_edge, label %if.then33

land.lhs.true30.if.end50_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then33:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_data, align 4
  tail call fastcc void @meson_mx_sdhc_wait_cmd_ready(ptr noundef %13)
  %regmap = getelementptr inbounds %struct.meson_mx_sdhc_host, ptr %irq_data, i32 0, i32 4
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 24, i32 noundef 1073741824, i32 noundef 1073741824, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then33, %land.lhs.true30.if.end50_crit_edge, %if.then28.if.end50_crit_edge
  %16 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irq_data, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 128
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %sg = getelementptr inbounds %struct.mmc_data, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %21, i32 0, i32 10
  %24 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sg_len, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %21, i32 0, i32 6
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %19, ptr noundef %23, i32 noundef %25, i32 noundef %cond.i, i32 noundef 0) #5
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %blksz, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %29, i32 0, i32 3
  %32 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %blocks, align 4
  %mul = mul i32 %33, %31
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %29, i32 0, i32 7
  %34 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul, ptr %bytes_xfered, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.end50, %land.lhs.true.if.end59_crit_edge, %if.end24.if.end59_crit_edge
  %35 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %irq_data, align 4
  tail call fastcc void @meson_mx_sdhc_wait_cmd_ready(ptr noundef %36)
  %flags61 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 3
  %37 = ptrtoint ptr %flags61 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags61, align 4
  %and62 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.else, label %if.then64

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %39 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %val.i, align 4, !annotation !105
  %regmap.i = getelementptr inbounds %struct.meson_mx_sdhc_host, ptr %irq_data, i32 0, i32 4
  %40 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 24, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %42 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i, align 4
  %call.i23.i = tail call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 24, i32 noundef 14, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %44 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i, align 4
  %call18.i = call i32 @regmap_read(ptr noundef %45, i32 noundef 0, ptr noundef nonnull %val.i) #5
  %46 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %resp = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 2
  %48 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %resp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i127) #5
  %49 = ptrtoint ptr %val.i127 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %val.i127, align 4, !annotation !105
  %50 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap.i, align 4
  %call.i.i129 = call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 24, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %52 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap.i, align 4
  %call.i23.i130 = call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 24, i32 noundef 14, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %54 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap.i, align 4
  %call18.i131 = call i32 @regmap_read(ptr noundef %55, i32 noundef 0, ptr noundef nonnull %val.i127) #5
  %56 = ptrtoint ptr %val.i127 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val.i127, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i127) #5
  %arrayidx68 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx68, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i132) #5
  %59 = ptrtoint ptr %val.i132 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %val.i132, align 4, !annotation !105
  %60 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap.i, align 4
  %call.i.i134 = call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef 24, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %62 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap.i, align 4
  %call.i23.i135 = call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 24, i32 noundef 14, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %64 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap.i, align 4
  %call18.i136 = call i32 @regmap_read(ptr noundef %65, i32 noundef 0, ptr noundef nonnull %val.i132) #5
  %66 = ptrtoint ptr %val.i132 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %val.i132, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i132) #5
  %arrayidx71 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 2
  %68 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %arrayidx71, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i137) #5
  %69 = ptrtoint ptr %val.i137 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %val.i137, align 4, !annotation !105
  %70 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap.i, align 4
  %call.i.i139 = call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef 24, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %72 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap.i, align 4
  %call.i23.i140 = call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef 24, i32 noundef 14, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %74 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap.i, align 4
  %call18.i141 = call i32 @regmap_read(ptr noundef %75, i32 noundef 0, ptr noundef nonnull %val.i137) #5
  %76 = ptrtoint ptr %val.i137 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %val.i137, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i137) #5
  %arrayidx74 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 3
  %78 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %arrayidx74, align 4
  br label %if.end78

if.else:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i142) #5
  %79 = ptrtoint ptr %val.i142 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %val.i142, align 4, !annotation !105
  %regmap.i143 = getelementptr inbounds %struct.meson_mx_sdhc_host, ptr %irq_data, i32 0, i32 4
  %80 = ptrtoint ptr %regmap.i143 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap.i143, align 4
  %call.i.i144 = tail call i32 @regmap_update_bits_base(ptr noundef %81, i32 noundef 24, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %82 = ptrtoint ptr %regmap.i143 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap.i143, align 4
  %call.i23.i145 = tail call i32 @regmap_update_bits_base(ptr noundef %83, i32 noundef 24, i32 noundef 14, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %84 = ptrtoint ptr %regmap.i143 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap.i143, align 4
  %call18.i146 = call i32 @regmap_read(ptr noundef %85, i32 noundef 0, ptr noundef nonnull %val.i142) #5
  %86 = ptrtoint ptr %val.i142 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %val.i142, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i142) #5
  %resp76 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 2
  %88 = ptrtoint ptr %resp76 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %resp76, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.else, %if.then64
  %error79 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %89 = ptrtoint ptr %error79 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %error79, align 4
  %91 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values)
  switch i32 %90, label %if.else84 [
    i32 -5, label %if.end78.if.then82_crit_edge
    i32 -110, label %if.end78.if.then82_crit_edge152
  ]

if.end78.if.then82_crit_edge152:                  ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then82

if.end78.if.then82_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then82

if.then82:                                        ; preds = %if.end78.if.then82_crit_edge, %if.end78.if.then82_crit_edge152
  %92 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %irq_data, align 4
  %regmap.i147 = getelementptr inbounds %struct.mmc_host, ptr %93, i32 1, i32 1, i32 0, i32 1, i32 1
  %94 = ptrtoint ptr %regmap.i147 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regmap.i147, align 4
  %call1.i = call i32 @regmap_write(ptr noundef %95, i32 noundef 44, i32 noundef 63) #5
  call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %96 = ptrtoint ptr %regmap.i147 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap.i147, align 4
  %call3.i = call i32 @regmap_write(ptr noundef %97, i32 noundef 44, i32 noundef 0) #5
  call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  br label %if.end90

if.else84:                                        ; preds = %if.end78
  %98 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data, align 4
  %tobool86.not = icmp eq ptr %99, null
  br i1 %tobool86.not, label %if.else84.if.end90_crit_edge, label %if.then87

if.else84.if.end90_crit_edge:                     ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.then87:                                        ; preds = %if.else84
  %100 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %irq_data, align 4
  %private.i.i = getelementptr inbounds %struct.mmc_host, ptr %101, i32 0, i32 70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat.i) #5
  %102 = ptrtoint ptr %stat.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 -1, ptr %stat.i, align 4, !annotation !105
  %regmap.i148 = getelementptr inbounds %struct.mmc_host, ptr %101, i32 1, i32 1, i32 0, i32 1, i32 1
  %103 = ptrtoint ptr %regmap.i148 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regmap.i148, align 4
  %call1.i149 = call i32 @regmap_read(ptr noundef %104, i32 noundef 12, ptr noundef nonnull %stat.i) #5
  %105 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %stat.i, align 4
  %107 = and i32 %106, 1048512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %if.then87.meson_mx_sdhc_clear_fifo.exit_crit_edge, label %if.end.i

if.then87.meson_mx_sdhc_clear_fifo.exit_crit_edge: ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_mx_sdhc_clear_fifo.exit

if.end.i:                                         ; preds = %if.then87
  %109 = ptrtoint ptr %regmap.i148 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regmap.i148, align 4
  %call34.i = call i32 @regmap_write(ptr noundef %110, i32 noundef 44, i32 noundef 7) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %111(i32 noundef 1073740) #5
  %112 = ptrtoint ptr %regmap.i148 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regmap.i148, align 4
  %call36.i = call i32 @regmap_read(ptr noundef %113, i32 noundef 12, ptr noundef nonnull %stat.i) #5
  %114 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %stat.i, align 4
  %116 = and i32 %115, 1048512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %if.end.i.meson_mx_sdhc_clear_fifo.exit_crit_edge, label %do.end78.i

if.end.i.meson_mx_sdhc_clear_fifo.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_mx_sdhc_clear_fifo.exit

do.end78.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %118 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %private.i.i, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 128
  %and96.i = lshr i32 %115, 6
  %shr97.i = and i32 %and96.i, 127
  %and114.i = lshr i32 %115, 13
  %shr115.i = and i32 %and114.i, 127
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %121, ptr noundef nonnull @.str.30, i32 noundef %shr97.i, i32 noundef %shr115.i) #8
  br label %meson_mx_sdhc_clear_fifo.exit

meson_mx_sdhc_clear_fifo.exit:                    ; preds = %do.end78.i, %if.end.i.meson_mx_sdhc_clear_fifo.exit_crit_edge, %if.then87.meson_mx_sdhc_clear_fifo.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat.i) #5
  br label %if.end90

if.end90:                                         ; preds = %meson_mx_sdhc_clear_fifo.exit, %if.else84.if.end90_crit_edge, %if.then82
  %mrq1.i = getelementptr inbounds %struct.meson_mx_sdhc_host, ptr %irq_data, i32 0, i32 1
  %122 = ptrtoint ptr %mrq1.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mrq1.i, align 4
  %124 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %irq_data, align 4
  %regmap.i150 = getelementptr inbounds %struct.meson_mx_sdhc_host, ptr %irq_data, i32 0, i32 4
  %126 = ptrtoint ptr %regmap.i150 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regmap.i150, align 4
  %call.i.i151 = call i32 @regmap_update_bits_base(ptr noundef %127, i32 noundef 36, i32 noundef 32767, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %128 = ptrtoint ptr %regmap.i150 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regmap.i150, align 4
  %call.i11.i = call i32 @regmap_update_bits_base(ptr noundef %129, i32 noundef 40, i32 noundef 32767, i32 noundef 32767, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %130 = ptrtoint ptr %mrq1.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %mrq1.i, align 4
  %131 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %cmd1, align 4
  call void @mmc_request_done(ptr noundef %125, ptr noundef %123) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %do.end
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_mx_sdhc_hw_reset(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 44, i32 noundef 63) #5
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 44, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_mx_sdhc_request(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %cmd1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %error = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.then6_crit_edge

entry.if.then6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

if.then:                                          ; preds = %entry
  %data1.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %4 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data1.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.if.end9_crit_edge, label %if.end.i

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end.i:                                         ; preds = %if.then
  %6 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc, align 128
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 10
  %10 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sg_len.i, align 4
  %flags.i.i = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  %call2.i = tail call i32 @dma_map_sg_attrs(ptr noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %cond.i.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 1
  br i1 %cmp.i, label %if.end, label %if.end.i.if.end9_crit_edge

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmc, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.11) #8
  %16 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -12, ptr %error, align 4
  br label %if.then6

if.then6:                                         ; preds = %if.end, %entry.if.then6_crit_edge
  %17 = phi i32 [ -12, %if.end ], [ %3, %entry.if.then6_crit_edge ]
  %error8 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %error8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %error8, align 4
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %mrq) #5
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.if.end9_crit_edge, %if.then.if.end9_crit_edge
  %19 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %error, align 4
  %mrq10 = getelementptr inbounds %struct.meson_mx_sdhc_host, ptr %private.i, i32 0, i32 1
  %20 = ptrtoint ptr %mrq10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %mrq, ptr %mrq10, align 4
  %21 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cmd1, align 4
  %cmd1.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %23 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %cmd1.i, align 4
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %22, align 4
  %and16.i = and i32 %25, 63
  %data.i = getelementptr inbounds %struct.mmc_command, ptr %22, i32 0, i32 7
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i, align 4
  %tobool17.not.i = icmp eq ptr %27, null
  br i1 %tobool17.not.i, label %if.end9.do.end139.i_crit_edge, label %do.end43.i

if.end9.do.end139.i_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end139.i

do.end43.i:                                       ; preds = %if.end9
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %blocks.i, align 4
  %sub47.i = shl i32 %29, 16
  %shl48.i = add i32 %sub47.i, -65536
  %or.i = or i32 %shl48.i, %and16.i
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %27, i32 0, i32 2
  %30 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %blksz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %31)
  %cmp.i25 = icmp ult i32 %31, 512
  %..i = select i1 %cmp.i25, i32 %31, i32 0
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %27, i32 0, i32 6
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i, align 4
  %and57.i = and i32 %33, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  %send.0.v.i = select i1 %tobool58.not.i, i32 128, i32 1152
  %send.0.i = or i32 %send.0.v.i, %or.i
  %platform.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  %34 = ptrtoint ptr %platform.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %platform.i, align 4
  %hardware_flush_all_cmds.i = getelementptr inbounds %struct.meson_mx_sdhc_data, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %hardware_flush_all_cmds.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %hardware_flush_all_cmds.i, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool62.not.i = icmp eq i8 %37, 0
  %38 = select i1 %tobool62.not.i, i1 %tobool58.not.i, i1 false
  %spec.select233.i = select i1 %38, i32 12518, i32 14438
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp74.i = icmp ugt i32 %29, 1
  br i1 %cmp74.i, label %if.end79.i, label %do.end43.i.do.end139.i_crit_edge

do.end43.i.do.end139.i_crit_edge:                 ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end139.i

if.end79.i:                                       ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %25)
  %cmp76.i = icmp eq i32 %25, 53
  %spec.select234.i = select i1 %cmp76.i, i32 268435456, i32 0
  br label %do.end139.i

do.end139.i:                                      ; preds = %if.end79.i, %do.end43.i.do.end139.i_crit_edge, %if.end9.do.end139.i_crit_edge
  %ictl.1230.i = phi i32 [ %spec.select233.i, %if.end79.i ], [ 12391, %if.end9.do.end139.i_crit_edge ], [ %spec.select233.i, %do.end43.i.do.end139.i_crit_edge ]
  %pack_len.1229.i = phi i32 [ %..i, %if.end79.i ], [ 0, %if.end9.do.end139.i_crit_edge ], [ %..i, %do.end43.i.do.end139.i_crit_edge ]
  %send.1228.i = phi i32 [ %send.0.i, %if.end79.i ], [ %and16.i, %if.end9.do.end139.i_crit_edge ], [ %send.0.i, %do.end43.i.do.end139.i_crit_edge ]
  %39 = phi i32 [ %spec.select234.i, %if.end79.i ], [ 0, %if.end9.do.end139.i_crit_edge ], [ 0, %do.end43.i.do.end139.i_crit_edge ]
  %regmap231.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %regmap231.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap231.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 28, i32 noundef 268435456, i32 noundef %39, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %42 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %22, align 4
  %flags87.i = getelementptr inbounds %struct.mmc_command, ptr %22, i32 0, i32 3
  %44 = ptrtoint ptr %flags87.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags87.i, align 4
  %46 = ptrtoint ptr %regmap231.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap231.i, align 4
  %call113.i = tail call i32 @regmap_write(ptr noundef %47, i32 noundef 36, i32 noundef %ictl.1230.i) #5
  %48 = ptrtoint ptr %regmap231.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap231.i, align 4
  %call115.i = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 40, i32 noundef 32767) #5
  %50 = ptrtoint ptr %regmap231.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap231.i, align 4
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %22, i32 0, i32 1
  %52 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arg.i, align 4
  %call117.i = tail call i32 @regmap_write(ptr noundef %51, i32 noundef 0, i32 noundef %53) #5
  %54 = ptrtoint ptr %regmap231.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap231.i, align 4
  %shl141.i = shl nuw nsw i32 %pack_len.1229.i, 4
  %and142.i = and i32 %shl141.i, 8176
  %call.i222.i = tail call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 8, i32 noundef 8176, i32 noundef %and142.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %56 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i, align 4
  %tobool145.not.i = icmp eq ptr %57, null
  br i1 %tobool145.not.i, label %do.end139.i.if.end150.i_crit_edge, label %if.then146.i

do.end139.i.if.end150.i_crit_edge:                ; preds = %do.end139.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end150.i

if.then146.i:                                     ; preds = %do.end139.i
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %regmap231.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap231.i, align 4
  %sg.i26 = getelementptr inbounds %struct.mmc_data, ptr %57, i32 0, i32 12
  %60 = ptrtoint ptr %sg.i26 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sg.i26, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma_address.i, align 4
  %call149.i = tail call i32 @regmap_write(ptr noundef %59, i32 noundef 20, i32 noundef %63) #5
  br label %if.end150.i

if.end150.i:                                      ; preds = %if.then146.i, %do.end139.i.if.end150.i_crit_edge
  tail call fastcc void @meson_mx_sdhc_wait_cmd_ready(ptr noundef %mmc) #5
  %64 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i, align 4
  %tobool152.not.i = icmp eq ptr %65, null
  br i1 %tobool152.not.i, label %if.end150.i.if.end155.i_crit_edge, label %if.then153.i

if.end150.i.if.end155.i_crit_edge:                ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end155.i

if.then153.i:                                     ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #7
  %platform154.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  %66 = ptrtoint ptr %platform154.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %platform154.i, align 4
  %set_pdma.i = getelementptr inbounds %struct.meson_mx_sdhc_data, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %set_pdma.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %set_pdma.i, align 4
  tail call void %69(ptr noundef %mmc) #5
  br label %if.end155.i

if.end155.i:                                      ; preds = %if.then153.i, %if.end150.i.if.end155.i_crit_edge
  %platform156.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  %70 = ptrtoint ptr %platform156.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %platform156.i, align 4
  %wait_before_send.i = getelementptr inbounds %struct.meson_mx_sdhc_data, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %wait_before_send.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %wait_before_send.i, align 4
  %tobool157.not.i = icmp eq ptr %73, null
  br i1 %tobool157.not.i, label %if.end155.i.meson_mx_sdhc_start_cmd.exit_crit_edge, label %if.then158.i

if.end155.i.meson_mx_sdhc_start_cmd.exit_crit_edge: ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_mx_sdhc_start_cmd.exit

if.then158.i:                                     ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %73(ptr noundef %mmc) #5
  br label %meson_mx_sdhc_start_cmd.exit

meson_mx_sdhc_start_cmd.exit:                     ; preds = %if.then158.i, %if.end155.i.meson_mx_sdhc_start_cmd.exit_crit_edge
  %and101.i = shl i32 %45, 7
  %74 = and i32 %and101.i, 512
  %and94.i = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94.i)
  %tobool95.not.i = icmp eq i32 %and94.i, 0
  %and88.i = shl i32 %45, 6
  %75 = and i32 %and88.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %43)
  %cmp83.i = icmp eq i32 %43, 12
  %or85.i = or i32 %send.1228.i, 2048
  %spec.select.i = select i1 %cmp83.i, i32 %or85.i, i32 %send.1228.i
  %76 = or i32 %75, %spec.select.i
  %or98.i = or i32 %76, 768
  %send.4.i = select i1 %tobool95.not.i, i32 %76, i32 %or98.i
  %and107.i = shl i32 %45, 9
  %77 = and i32 %and107.i, 4096
  %78 = or i32 %74, %77
  %79 = xor i32 %78, 512
  %80 = or i32 %send.4.i, %79
  %81 = ptrtoint ptr %regmap231.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap231.i, align 4
  %call163.i = tail call i32 @regmap_write(ptr noundef %82, i32 noundef 4, i32 noundef %80) #5
  br label %cleanup

cleanup:                                          ; preds = %meson_mx_sdhc_start_cmd.exit, %if.then6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_mx_sdhc_set_ios(ptr noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vdd1 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 1
  %0 = ptrtoint ptr %vdd1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vdd1, align 4
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %2 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %power_mode, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %3, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %entry.sw.bb2_crit_edge
  ]

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %entry.sw.bb2_crit_edge
  %vdd.0 = phi i16 [ %1, %entry.sw.bb2_crit_edge ], [ 0, %sw.bb ]
  %supply = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54
  %5 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %supply, align 16
  %cmp.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sw.bb2.sw.epilog_crit_edge, label %if.then

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb2
  %call6 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %mmc, ptr noundef %6, i16 noundef zeroext %vdd.0) #5
  %error = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call6, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then.sw.epilog_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %bulk_clks_enabled.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %bulk_clks_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bulk_clks_enabled.i.i, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i.i, label %sw.epilog.meson_mx_sdhc_disable_clks.exit.i_crit_edge, label %if.end.i.i

sw.epilog.meson_mx_sdhc_disable_clks.exit.i_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_mx_sdhc_disable_clks.exit.i

if.end.i.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %bulk_clks.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 4
  tail call void @clk_bulk_disable(i32 noundef 4, ptr noundef %bulk_clks.i.i) #5
  tail call void @clk_bulk_unprepare(i32 noundef 4, ptr noundef %bulk_clks.i.i) #5
  %10 = ptrtoint ptr %bulk_clks_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %bulk_clks_enabled.i.i, align 4
  br label %meson_mx_sdhc_disable_clks.exit.i

meson_mx_sdhc_disable_clks.exit.i:                ; preds = %if.end.i.i, %sw.epilog.meson_mx_sdhc_disable_clks.exit.i_crit_edge
  %11 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.else63.i, label %if.then.i

if.then.i:                                        ; preds = %meson_mx_sdhc_disable_clks.exit.i
  %sd_clk.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %sd_clk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sd_clk.i, align 4
  %call2.i = tail call i32 @clk_set_rate(ptr noundef %14, i32 noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmc, align 128
  %17 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ios, align 4
  %error.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %error.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.21, i32 noundef %18, i32 noundef %20) #8
  br label %meson_mx_sdhc_set_clk.exit.thread

if.end.i:                                         ; preds = %if.then.i
  %21 = ptrtoint ptr %bulk_clks_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bulk_clks_enabled.i.i, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i91.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i91.i, label %if.end.i93.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.end.i93.i:                                     ; preds = %if.end.i
  %bulk_clks.i92.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 4
  %call.i.i.i = tail call i32 @clk_bulk_prepare(i32 noundef 4, ptr noundef %bulk_clks.i92.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i93.i.meson_mx_sdhc_set_clk.exit.thread_crit_edge

if.end.i93.i.meson_mx_sdhc_set_clk.exit.thread_crit_edge: ; preds = %if.end.i93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_mx_sdhc_set_clk.exit.thread

if.end.i.i.i:                                     ; preds = %if.end.i93.i
  %call1.i.i.i = tail call i32 @clk_bulk_enable(i32 noundef 4, ptr noundef %bulk_clks.i92.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end4.i.i, label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_bulk_unprepare(i32 noundef 4, ptr noundef %bulk_clks.i92.i) #5
  br label %meson_mx_sdhc_set_clk.exit.thread

if.end4.i.i:                                      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %bulk_clks_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %bulk_clks_enabled.i.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end4.i.i, %if.end.i.if.end9.i_crit_edge
  %24 = ptrtoint ptr %sd_clk.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sd_clk.i, align 4
  %call11.i = tail call i32 @clk_get_rate(ptr noundef %25) #5
  %actual_clock.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 58
  %26 = ptrtoint ptr %actual_clock.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call11.i, ptr %actual_clock.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %call11.i)
  %cmp.i93 = icmp ugt i32 %call11.i, 100000000
  br i1 %cmp.i93, label %if.end9.i.if.end42.i_crit_edge, label %if.else.i

if.end9.i.if.end42.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

if.else.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 45000000, i32 %call11.i)
  %cmp15.i = icmp ugt i32 %call11.i, 45000000
  br i1 %cmp15.i, label %if.then16.i, label %if.else22.i

if.then16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %signal_voltage.i = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 8
  %27 = ptrtoint ptr %signal_voltage.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %signal_voltage.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp17.i = icmp eq i8 %28, 0
  %..i = select i1 %cmp17.i, i32 15, i32 11
  br label %if.end42.i

if.else22.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24999999, i32 %call11.i)
  %cmp24.i = icmp ugt i32 %call11.i, 24999999
  br i1 %cmp24.i, label %if.else22.i.if.end42.i_crit_edge, label %if.else27.i

if.else22.i.if.end42.i_crit_edge:                 ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

if.else27.i:                                      ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000000, i32 %call11.i)
  %cmp29.i = icmp ugt i32 %call11.i, 5000000
  br i1 %cmp29.i, label %if.else27.i.if.end42.i_crit_edge, label %if.else32.i

if.else27.i.if.end42.i_crit_edge:                 ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

if.else32.i:                                      ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %call11.i)
  %cmp34.i = icmp ugt i32 %call11.i, 1000000
  %.89.i = select i1 %cmp34.i, i32 55, i32 1061
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.else32.i, %if.else27.i.if.end42.i_crit_edge, %if.else22.i.if.end42.i_crit_edge, %if.then16.i, %if.end9.i.if.end42.i_crit_edge
  %rx_clk_phase.0.i = phi i32 [ 1, %if.end9.i.if.end42.i_crit_edge ], [ %..i, %if.then16.i ], [ 15, %if.else22.i.if.end42.i_crit_edge ], [ 23, %if.else27.i.if.end42.i_crit_edge ], [ %.89.i, %if.else32.i ]
  %regmap.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 56, i32 noundef 4095, i32 noundef %rx_clk_phase.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end15

if.else63.i:                                      ; preds = %meson_mx_sdhc_disable_clks.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %actual_clock64.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 58
  %31 = ptrtoint ptr %actual_clock64.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %actual_clock64.i, align 8
  br label %if.end15

meson_mx_sdhc_set_clk.exit.thread:                ; preds = %if.then3.i.i.i, %if.end.i93.i.meson_mx_sdhc_set_clk.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ %call.i.i.i, %if.end.i93.i.meson_mx_sdhc_set_clk.exit.thread_crit_edge ], [ %call1.i.i.i, %if.then3.i.i.i ], [ %call2.i, %do.end.i ]
  %error1197 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %error1197 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %retval.0.i.ph, ptr %error1197, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.else63.i, %if.end42.i
  %error11 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %error11 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %error11, align 4
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %34 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bus_width, align 1
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %35, label %do.end71 [
    i8 0, label %sw.bb17
    i8 2, label %sw.bb31
    i8 3, label %sw.bb50
  ]

sw.bb17:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %regmap = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 8, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

sw.bb31:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %regmap32 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %regmap32 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap32, align 4
  %call.i94 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 8, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

sw.bb50:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %regmap51 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %regmap51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap51, align 4
  %call.i95 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 8, i32 noundef 3, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

do.end71:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %conv16 = zext i8 %35 to i32
  %43 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmc, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.19, i32 noundef %conv16) #8
  %45 = ptrtoint ptr %error11 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -22, ptr %error11, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end71, %sw.bb50, %sw.bb31, %sw.bb17, %meson_mx_sdhc_set_clk.exit.thread, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mx_sdhc_card_busy(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  %stat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat) #5
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %stat, align 4, !annotation !105
  %regmap = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 12, ptr noundef nonnull %stat) #5
  %3 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %stat, align 4
  %5 = and i32 %4, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %conv = zext i1 %cmp to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #5
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mx_sdhc_execute_tuning(ptr noundef %mmc, i32 noundef %opcode) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !105
  %regmap = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 56, ptr noundef nonnull %val) #5
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 4095
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call15 = call i32 @regmap_read(ptr noundef %6, i32 noundef 16, ptr noundef nonnull %val) #5
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and32 = and i32 %8, 4095
  br label %do.end50

do.end50:                                         ; preds = %for.inc.do.end50_crit_edge, %entry
  %start.0214 = phi i32 [ 0, %entry ], [ %start.2, %for.inc.do.end50_crit_edge ]
  %len.0213 = phi i32 [ 0, %entry ], [ %len.1, %for.inc.do.end50_crit_edge ]
  %best_start.0212 = phi i32 [ -1, %entry ], [ %best_start.2, %for.inc.do.end50_crit_edge ]
  %best_len.0211 = phi i32 [ 0, %entry ], [ %best_len.2, %for.inc.do.end50_crit_edge ]
  %curr_phase.0208 = phi i32 [ 0, %entry ], [ %inc90, %for.inc.do.end50_crit_edge ]
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 56, i32 noundef 4095, i32 noundef %curr_phase.0208, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i198 = call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %tobool.not.i = icmp eq i32 %call.i198, 0
  %inc.i = zext i1 %tobool.not.i to i32
  %call.1.i = call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  %inc.1.i = zext i1 %tobool.not.1.i to i32
  %spec.select.1.i = add nuw nsw i32 %inc.1.i, %inc.i
  %call.2.i = call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  %inc.2.i = zext i1 %tobool.not.2.i to i32
  %spec.select.2.i = add nuw nsw i32 %spec.select.1.i, %inc.2.i
  %call.3.i = call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  %inc.3.i = zext i1 %tobool.not.3.i to i32
  %spec.select.3.i = add nuw nsw i32 %spec.select.2.i, %inc.3.i
  %call.4.i = call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %tobool.not.4.i = icmp eq i32 %call.4.i, 0
  %inc.4.i = zext i1 %tobool.not.4.i to i32
  %spec.select.4.i = add nuw nsw i32 %spec.select.3.i, %inc.4.i
  %call.5.i = call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %tobool.not.5.i = icmp eq i32 %call.5.i, 0
  %inc.5.i = zext i1 %tobool.not.5.i to i32
  %spec.select.5.i = add nuw nsw i32 %spec.select.4.i, %inc.5.i
  %call.6.i = call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %tobool.not.6.i = icmp eq i32 %call.6.i, 0
  %inc.6.i = zext i1 %tobool.not.6.i to i32
  %spec.select.6.i = add nuw nsw i32 %spec.select.5.i, %inc.6.i
  %call.7.i = call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i)
  %tobool.not.7.i = icmp eq i32 %call.7.i, 0
  %inc.7.i = zext i1 %tobool.not.7.i to i32
  %spec.select.7.i = add nuw nsw i32 %spec.select.6.i, %inc.7.i
  %call.8.i = call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8.i)
  %tobool.not.8.i = icmp eq i32 %call.8.i, 0
  %inc.8.i = zext i1 %tobool.not.8.i to i32
  %spec.select.8.i = add nuw nsw i32 %spec.select.7.i, %inc.8.i
  %call.9.i = call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9.i)
  %tobool.not.9.i = icmp eq i32 %call.9.i, 0
  %inc.9.i = zext i1 %tobool.not.9.i to i32
  %spec.select.9.i = add nuw nsw i32 %spec.select.8.i, %inc.9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %spec.select.9.i)
  %cmp2.i = icmp eq i32 %spec.select.9.i, 10
  br i1 %cmp2.i, label %if.then55, label %if.else

if.then55:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0213)
  %tobool56.not = icmp eq i32 %len.0213, 0
  br i1 %tobool56.not, label %if.then57, label %if.then55.if.end68_crit_edge

if.then55.if.end68_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.then57:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_mx_sdhc_execute_tuning.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_mx_sdhc_execute_tuning, %if.then64)) #5
          to label %if.end68 [label %if.then64], !srcloc !106

if.then64:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmc, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_mx_sdhc_execute_tuning.__UNIQUE_ID_ddebug388, ptr noundef %12, ptr noundef nonnull @.str.25, i32 noundef %curr_phase.0208) #5
  br label %if.end68

if.end68:                                         ; preds = %if.then64, %if.then57, %if.then55.if.end68_crit_edge
  %start.1 = phi i32 [ %start.0214, %if.then55.if.end68_crit_edge ], [ %curr_phase.0208, %if.then64 ], [ %curr_phase.0208, %if.then57 ]
  %inc = add i32 %len.0213, 1
  br label %for.inc

if.else:                                          ; preds = %do.end50
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0213, i32 %best_len.0211)
  %cmp69 = icmp sgt i32 %len.0213, %best_len.0211
  br i1 %cmp69, label %if.then70, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then70:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_mx_sdhc_execute_tuning.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_mx_sdhc_execute_tuning, %if.then83)) #5
          to label %for.inc [label %if.then83], !srcloc !106

if.then83:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmc, align 128
  %add = add i32 %start.0214, %len.0213
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_mx_sdhc_execute_tuning.__UNIQUE_ID_ddebug389, ptr noundef %14, ptr noundef nonnull @.str.26, i32 noundef %start.0214, i32 noundef %add) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then83, %if.then70, %if.else.for.inc_crit_edge, %if.end68
  %best_len.2 = phi i32 [ %best_len.0211, %if.end68 ], [ %len.0213, %if.then83 ], [ %best_len.0211, %if.else.for.inc_crit_edge ], [ %len.0213, %if.then70 ]
  %best_start.2 = phi i32 [ %best_start.0212, %if.end68 ], [ %start.0214, %if.then83 ], [ %best_start.0212, %if.else.for.inc_crit_edge ], [ %start.0214, %if.then70 ]
  %len.1 = phi i32 [ %inc, %if.end68 ], [ 0, %if.then83 ], [ 0, %if.else.for.inc_crit_edge ], [ 0, %if.then70 ]
  %start.2 = phi i32 [ %start.1, %if.end68 ], [ %start.0214, %if.then83 ], [ %start.0214, %if.else.for.inc_crit_edge ], [ %start.0214, %if.then70 ]
  %inc90 = add nuw nsw i32 %curr_phase.0208, 1
  %exitcond = icmp eq i32 %curr_phase.0208, %and32
  br i1 %exitcond, label %for.end, label %for.inc.do.end50_crit_edge

for.inc.do.end50_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_cmp4(i32 %len.1, i32 %best_len.2)
  %cmp91 = icmp sgt i32 %len.1, %best_len.2
  br i1 %cmp91, label %if.then92, label %if.else95

if.then92:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %div93 = sdiv i32 %len.1, 2
  %add94 = add i32 %start.2, %div93
  br label %do.end124

if.else95:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_len.2)
  %tobool96.not = icmp eq i32 %best_len.2, 0
  br i1 %tobool96.not, label %if.else95.do.end124_crit_edge, label %if.then97

if.else95.do.end124_crit_edge:                    ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end124

if.then97:                                        ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #7
  %div98 = sdiv i32 %best_len.2, 2
  %add99 = add i32 %best_start.2, %div98
  br label %do.end124

do.end124:                                        ; preds = %if.then97, %if.else95.do.end124_crit_edge, %if.then92
  %new_phase.0 = phi i32 [ %add94, %if.then92 ], [ %add99, %if.then97 ], [ %and, %if.else95.do.end124_crit_edge ]
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %and127 = and i32 %new_phase.0, 4095
  %call.i199 = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 56, i32 noundef 4095, i32 noundef %and127, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1)
  %tobool129.not = icmp eq i32 %len.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_len.2)
  %tobool130.not = icmp eq i32 %best_len.2, 0
  %or.cond191 = select i1 %tobool129.not, i1 %tobool130.not, i1 false
  br i1 %or.cond191, label %do.end124.cleanup_crit_edge, label %do.body133

do.end124.cleanup_crit_edge:                      ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body133:                                       ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_mx_sdhc_execute_tuning.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_mx_sdhc_execute_tuning, %if.then145)) #5
          to label %cleanup [label %if.then145], !srcloc !106

if.then145:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmc, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_mx_sdhc_execute_tuning.__UNIQUE_ID_ddebug395, ptr noundef %18, ptr noundef nonnull @.str.27, i32 noundef %new_phase.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then145, %do.body133, %do.end124.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end124.cleanup_crit_edge ], [ 0, %if.then145 ], [ 0, %do.body133 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_mx_sdhc_wait_cmd_ready(ptr nocapture noundef readonly %mmc) unnamed_addr #2 align 64 {
entry:
  %stat = alloca i32, align 4
  %esta = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat) #5
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %stat, align 4, !annotation !105
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %esta) #5
  %1 = ptrtoint ptr %esta to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %esta, align 4, !annotation !105
  %call1 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call1, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 114) #5
  %regmap = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call9162 = call i32 @regmap_read(ptr noundef %3, i32 noundef 12, ptr noundef nonnull %stat) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9162)
  %tobool.not163 = icmp eq i32 %call9162, 0
  br i1 %tobool.not163, label %entry.lor.lhs.false_crit_edge, label %entry.do.end34_crit_edge

entry.do.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then22.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %4 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stat, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call14 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call14, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call14, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then22

if.then22:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #5
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call9 = call i32 @regmap_read(ptr noundef %7, i32 noundef 12, ptr noundef nonnull %stat) #5
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then22.lor.lhs.false_crit_edge, label %if.then22.do.end34_crit_edge

if.then22.do.end34_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34

if.then22.lor.lhs.false_crit_edge:                ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call19 = call i32 @regmap_read(ptr noundef %9, i32 noundef 12, ptr noundef nonnull %stat) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool24.not = icmp eq i32 %call19, 0
  br i1 %tobool24.not, label %for.end.lor.rhs_crit_edge, label %for.end.do.end34_crit_edge

for.end.do.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %10 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stat, align 4
  %and25 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %lor.rhs.if.end35_crit_edge, label %lor.rhs.do.end34_crit_edge

lor.rhs.do.end34_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34

lor.rhs.if.end35_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

do.end34:                                         ; preds = %lor.rhs.do.end34_crit_edge, %for.end.do.end34_crit_edge, %if.then22.do.end34_crit_edge, %entry.do.end34_crit_edge
  %12 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmc, align 128
  %cmd = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %14 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmd, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.13, i32 noundef %17) #8
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call1.i = call i32 @regmap_write(ptr noundef %19, i32 noundef 44, i32 noundef 63) #5
  call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call3.i = call i32 @regmap_write(ptr noundef %21, i32 noundef 44, i32 noundef 0) #5
  call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  br label %if.end35

if.end35:                                         ; preds = %do.end34, %lor.rhs.if.end35_crit_edge
  %call41 = call i64 @ktime_get() #5
  %add.i126 = add i64 %call41, 100000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 125) #5
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call57164 = call i32 @regmap_read(ptr noundef %23, i32 noundef 48, ptr noundef nonnull %esta) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57164)
  %tobool58.not165 = icmp eq i32 %call57164, 0
  br i1 %tobool58.not165, label %if.end35.lor.lhs.false59_crit_edge, label %if.end35.do.end97_crit_edge

if.end35.do.end97_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end97

if.end35.lor.lhs.false59_crit_edge:               ; preds = %if.end35
  br label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.then74.lor.lhs.false59_crit_edge, %if.end35.lor.lhs.false59_crit_edge
  %24 = ptrtoint ptr %esta to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %esta, align 4
  %and60 = and i32 %25, 14336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %lor.lhs.false59.lor.rhs81_crit_edge, label %land.lhs.true65

lor.lhs.false59.lor.rhs81_crit_edge:              ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs81

land.lhs.true65:                                  ; preds = %lor.lhs.false59
  %call66 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call66, i64 %add.i126)
  %cmp3.i128 = icmp sgt i64 %call66, %add.i126
  br i1 %cmp3.i128, label %for.end78, label %if.then74

if.then74:                                        ; preds = %land.lhs.true65
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #5
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call57 = call i32 @regmap_read(ptr noundef %27, i32 noundef 48, ptr noundef nonnull %esta) #5
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then74.lor.lhs.false59_crit_edge, label %if.then74.do.end97_crit_edge

if.then74.do.end97_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end97

if.then74.lor.lhs.false59_crit_edge:              ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false59

for.end78:                                        ; preds = %land.lhs.true65
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call71 = call i32 @regmap_read(ptr noundef %29, i32 noundef 48, ptr noundef nonnull %esta) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool80.not = icmp eq i32 %call71, 0
  br i1 %tobool80.not, label %for.end78.lor.rhs81_crit_edge, label %for.end78.do.end97_crit_edge

for.end78.do.end97_crit_edge:                     ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end97

for.end78.lor.rhs81_crit_edge:                    ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs81

lor.rhs81:                                        ; preds = %for.end78.lor.rhs81_crit_edge, %lor.lhs.false59.lor.rhs81_crit_edge
  %30 = ptrtoint ptr %esta to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %esta, align 4
  %and82 = and i32 %31, 14336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %lor.rhs81.if.end101_crit_edge, label %lor.rhs81.do.end97_crit_edge

lor.rhs81.do.end97_crit_edge:                     ; preds = %lor.rhs81
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end97

lor.rhs81.if.end101_crit_edge:                    ; preds = %lor.rhs81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

do.end97:                                         ; preds = %lor.rhs81.do.end97_crit_edge, %for.end78.do.end97_crit_edge, %if.then74.do.end97_crit_edge, %if.end35.do.end97_crit_edge
  %32 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmc, align 128
  %cmd99 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %34 = ptrtoint ptr %cmd99 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cmd99, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.17, i32 noundef %37) #8
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %call1.i132 = call i32 @regmap_write(ptr noundef %39, i32 noundef 44, i32 noundef 63) #5
  call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %call3.i133 = call i32 @regmap_write(ptr noundef %41, i32 noundef 44, i32 noundef 0) #5
  call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  br label %if.end101

if.end101:                                        ; preds = %do.end97, %lor.rhs81.if.end101_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %esta) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_tuning(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_mx_sdhc_init_hw_meson8(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call46 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 28, i32 noundef -536870576) #5
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call99 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 52, i32 noundef 16649471) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_mx_sdhc_set_pdma_meson8(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd, align 4
  %data = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %flags = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %regmap15 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap15, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 24, i32 noundef -2147451903, i32 noundef -2147451903, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i63 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 24, i32 noundef 1610612737, i32 noundef 536870913, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd, align 4
  %data35 = getelementptr inbounds %struct.mmc_command, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %data35 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data35, align 4
  %flags36 = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %flags36 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags36, align 4
  %and37 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end.if.end58_crit_edge, label %if.then39

if.end.if.end58_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then39:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %regmap40 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %regmap40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap40, align 4
  %call.i64 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 24, i32 noundef 31744, i32 noundef 15360, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end58

if.end58:                                         ; preds = %if.then39, %if.end.if.end58_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_mx_sdhc_wait_before_send_meson8(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !105
  %call1 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call1, 200000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 703) #5
  %regmap = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call9160 = call i32 @regmap_read(ptr noundef %2, i32 noundef 48, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9160)
  %tobool.not161 = icmp eq i32 %call9160, 0
  br i1 %tobool.not161, label %entry.lor.lhs.false_crit_edge, label %entry.do.end33_crit_edge

entry.do.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end33

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then22.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp10 = icmp eq i32 %4, 0
  br i1 %cmp10, label %lor.lhs.false.if.end34_crit_edge, label %land.lhs.true

lor.lhs.false.if.end34_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call14 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call14, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call14, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then22

if.then22:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #5
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call9 = call i32 @regmap_read(ptr noundef %6, i32 noundef 48, ptr noundef nonnull %val) #5
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then22.lor.lhs.false_crit_edge, label %if.then22.do.end33_crit_edge

if.then22.do.end33_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end33

if.then22.lor.lhs.false_crit_edge:                ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call19 = call i32 @regmap_read(ptr noundef %8, i32 noundef 48, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool24.not = icmp eq i32 %call19, 0
  br i1 %tobool24.not, label %lor.rhs, label %for.end.do.end33_crit_edge

for.end.do.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end33

lor.rhs:                                          ; preds = %for.end
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp25 = icmp eq i32 %.pr, 0
  br i1 %cmp25, label %lor.rhs.if.end34_crit_edge, label %lor.rhs.do.end33_crit_edge

lor.rhs.do.end33_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end33

lor.rhs.if.end34_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

do.end33:                                         ; preds = %lor.rhs.do.end33_crit_edge, %for.end.do.end33_crit_edge, %if.then22.do.end33_crit_edge, %entry.do.end33_crit_edge
  %10 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmc, align 128
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.32, i32 noundef %13) #8
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %lor.rhs.if.end34_crit_edge, %lor.lhs.false.if.end34_crit_edge
  %cmd = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %14 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmd, align 4
  %data = getelementptr inbounds %struct.mmc_command, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %tobool35.not = icmp eq ptr %17, null
  br i1 %tobool35.not, label %if.end34.if.end104_crit_edge, label %land.lhs.true36

if.end34.if.end104_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

land.lhs.true36:                                  ; preds = %if.end34
  %flags = getelementptr inbounds %struct.mmc_data, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %land.lhs.true36.if.end104_crit_edge, label %if.then40

land.lhs.true36.if.end104_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

if.then40:                                        ; preds = %land.lhs.true36
  %call46 = call i64 @ktime_get() #5
  %add.i127 = add i64 %call46, 200000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 712) #5
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call62162 = call i32 @regmap_read(ptr noundef %21, i32 noundef 12, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62162)
  %tobool63.not163 = icmp eq i32 %call62162, 0
  br i1 %tobool63.not163, label %if.then40.lor.lhs.false64_crit_edge, label %if.then40.do.end101_crit_edge

if.then40.do.end101_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end101

if.then40.lor.lhs.false64_crit_edge:              ; preds = %if.then40
  br label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %if.then79.lor.lhs.false64_crit_edge, %if.then40.lor.lhs.false64_crit_edge
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  %and65 = and i32 %23, 1040384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %land.lhs.true70, label %lor.lhs.false64.lor.rhs86_crit_edge

lor.lhs.false64.lor.rhs86_crit_edge:              ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs86

land.lhs.true70:                                  ; preds = %lor.lhs.false64
  %call71 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call71, i64 %add.i127)
  %cmp3.i129 = icmp sgt i64 %call71, %add.i127
  br i1 %cmp3.i129, label %for.end83, label %if.then79

if.then79:                                        ; preds = %land.lhs.true70
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #5
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call62 = call i32 @regmap_read(ptr noundef %25, i32 noundef 12, ptr noundef nonnull %val) #5
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then79.lor.lhs.false64_crit_edge, label %if.then79.do.end101_crit_edge

if.then79.do.end101_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end101

if.then79.lor.lhs.false64_crit_edge:              ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false64

for.end83:                                        ; preds = %land.lhs.true70
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call76 = call i32 @regmap_read(ptr noundef %27, i32 noundef 12, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool85.not = icmp eq i32 %call76, 0
  br i1 %tobool85.not, label %for.end83.lor.rhs86_crit_edge, label %for.end83.do.end101_crit_edge

for.end83.do.end101_crit_edge:                    ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end101

for.end83.lor.rhs86_crit_edge:                    ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs86

lor.rhs86:                                        ; preds = %for.end83.lor.rhs86_crit_edge, %lor.lhs.false64.lor.rhs86_crit_edge
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  %and87 = and i32 %29, 1040384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %lor.rhs86.do.end101_crit_edge, label %lor.rhs86.if.end104_crit_edge

lor.rhs86.if.end104_crit_edge:                    ; preds = %lor.rhs86
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

lor.rhs86.do.end101_crit_edge:                    ; preds = %lor.rhs86
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end101

do.end101:                                        ; preds = %lor.rhs86.do.end101_crit_edge, %for.end83.do.end101_crit_edge, %if.then79.do.end101_crit_edge, %if.then40.do.end101_crit_edge
  %30 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmc, align 128
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.35) #8
  br label %if.end104

if.end104:                                        ; preds = %do.end101, %lor.rhs86.if.end104_crit_edge, %land.lhs.true36.if.end104_crit_edge, %if.end34.if.end104_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_mx_sdhc_init_hw_meson8m2(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call46 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 28, i32 noundef -1073741488) #5
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call99 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 52, i32 noundef 16780297) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_mx_sdhc_set_pdma_meson8m2(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 24, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !29, !30, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !84, !86, !87, !88, !89, !91, !92, !93}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__initcall__kmod_meson_mx_sdhc__532_932_meson_mx_sdhc_driver_init6, !1, !"__initcall__kmod_meson_mx_sdhc__532_932_meson_mx_sdhc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 932, i32 1}
!2 = !{ptr @__exitcall_meson_mx_sdhc_driver_exit, !1, !"__exitcall_meson_mx_sdhc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description533, !4, !"__UNIQUE_ID_description533", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 934, i32 1}
!5 = !{ptr @__UNIQUE_ID_author534, !6, !"__UNIQUE_ID_author534", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 935, i32 1}
!7 = !{ptr @__UNIQUE_ID_file535, !8, !"__UNIQUE_ID_file535", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 936, i32 1}
!9 = !{ptr @__UNIQUE_ID_license536, !8, !"__UNIQUE_ID_license536", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 926, i32 11}
!12 = !{ptr @meson_mx_sdhc_driver, !13, !"meson_mx_sdhc_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 922, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 794, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @meson_mx_sdhc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @meson_mx_sdhc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @meson_mx_sdhc_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 811, i32 17}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 816, i32 33}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 823, i32 3}
!29 = !{ptr @meson_mx_sdhc_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @meson_mx_sdhc_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @meson_mx_sdhc_regmap_config, !32, !"meson_mx_sdhc_regmap_config", i1 false, i1 false}
!32 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 61, i32 35}
!33 = !{ptr @meson_mx_sdhc_ops, !34, !"meson_mx_sdhc_ops", i1 false, i1 false}
!34 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 513, i32 34}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 392, i32 3}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @meson_mx_sdhc_map_dma._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @meson_mx_sdhc_map_dma._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 116, i32 3}
!42 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @meson_mx_sdhc_wait_cmd_ready._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @meson_mx_sdhc_wait_cmd_ready._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 127, i32 3}
!48 = !{ptr @meson_mx_sdhc_wait_cmd_ready._entry.16, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @meson_mx_sdhc_wait_cmd_ready._entry_ptr.18, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 374, i32 3}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @meson_mx_sdhc_set_ios._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @meson_mx_sdhc_set_ios._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 280, i32 4}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @meson_mx_sdhc_set_clk._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @meson_mx_sdhc_set_clk._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 469, i32 5}
!62 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @meson_mx_sdhc_execute_tuning.__UNIQUE_ID_ddebug388, !61, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 480, i32 5}
!67 = !{ptr @meson_mx_sdhc_execute_tuning.__UNIQUE_ID_ddebug389, !66, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 508, i32 2}
!70 = !{ptr @meson_mx_sdhc_execute_tuning.__UNIQUE_ID_ddebug395, !69, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 584, i32 3}
!73 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @meson_mx_sdhc_irq.__UNIQUE_ID_ddebug401, !72, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 99, i32 3}
!77 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @meson_mx_sdhc_clear_fifo._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @meson_mx_sdhc_clear_fifo._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @meson_mx_sdhc_of_match, !81, !"meson_mx_sdhc_of_match", i1 false, i1 false}
!81 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 905, i32 34}
!82 = !{ptr @meson_mx_sdhc_data_meson8, !83, !"meson_mx_sdhc_data_meson8", i1 false, i1 false}
!83 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 892, i32 40}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 705, i32 3}
!86 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @meson_mx_sdhc_wait_before_send_meson8._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @meson_mx_sdhc_wait_before_send_meson8._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 714, i32 4}
!91 = !{ptr @meson_mx_sdhc_wait_before_send_meson8._entry.34, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @meson_mx_sdhc_wait_before_send_meson8._entry_ptr.36, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @meson_mx_sdhc_data_meson8m2, !94, !"meson_mx_sdhc_data_meson8m2", i1 false, i1 false}
!94 = !{!"../drivers/mmc/host/meson-mx-sdhc-mmc.c", i32 899, i32 40}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{i8 0, i8 2}
!105 = !{!"auto-init"}
!106 = !{i64 2148745046, i64 2148745051, i64 2148745064, i64 2148745108, i64 2148745142, i64 2148745163}
!107 = !{!"branch_weights", i32 1, i32 2000}
