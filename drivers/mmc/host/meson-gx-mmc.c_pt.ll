; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/meson-gx-mmc.c_pt.bc'
source_filename = "../drivers/mmc/host/meson-gx-mmc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.meson_mmc_data = type { i32, i32, i32, i32 }
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
%struct.meson_host = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, i32, i8, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sd_emmc_desc = type { i32, i32, i32, i32 }

@__initcall__kmod_meson_gx_mmc__406_1369_meson_mmc_driver_init6 = internal global ptr @meson_mmc_driver_init, section ".initcall6.init", align 4
@meson_mmc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson_mmc_probe, ptr @meson_mmc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @meson_mmc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson_mmc_driver_exit = internal global ptr @meson_mmc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description407 = internal constant [62 x i8] c"meson_gx_mmc.description=Amlogic S905*/GX*/AXG SD/eMMC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author408 = internal constant [56 x i8] c"meson_gx_mmc.author=Kevin Hilman <khilman@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file409 = internal constant [48 x i8] c"meson_gx_mmc.file=drivers/mmc/host/meson-gx-mmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license410 = internal constant [28 x i8] c"meson_gx_mmc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"meson-gx-mmc\00", [19 x i8] zeroinitializer }, align 32
@meson_mmc_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gx-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_gx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxbb-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_gx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxl-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_gx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxm-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_gx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-axg-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_axg_data }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amlogic,dram-access-quirk\00", [38 x i8] zeroinitializer }, align 32
@meson_mmc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1163, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error parsing DT: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"meson_mmc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/mmc/host/meson-gx-mmc.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_mmc_probe._entry_ptr = internal global ptr @meson_mmc_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"device reset failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk-gate\00", [23 x i8] zeroinitializer }, align 32
@meson_mmc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 1201, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"can't get clk-gate pinctrl, using clk_stop bit\0A\00", [48 x i8] zeroinitializer }, align 32
@meson_mmc_probe._entry_ptr.11 = internal global ptr @meson_mmc_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@meson_mmc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1277, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unable to map allocate DMA bounce buffer.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@meson_mmc_probe._entry_ptr.16 = internal global ptr @meson_mmc_probe._entry.13, section ".printk_index", align 4
@meson_mmc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 1286, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Allocating descriptor DMA buffer failed\0A\00", [55 x i8] zeroinitializer }, align 32
@meson_mmc_probe._entry_ptr.19 = internal global ptr @meson_mmc_probe._entry.17, section ".printk_index", align 4
@meson_mmc_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr @meson_mmc_post_req, ptr @meson_mmc_pre_req, ptr @meson_mmc_request, ptr null, ptr @meson_mmc_set_ios, ptr null, ptr @meson_mmc_get_cd, ptr null, ptr null, ptr null, ptr @meson_mmc_voltage_switch, ptr @meson_mmc_card_busy, ptr @meson_mmc_resampling_tuning, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clkin%d\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Missing clock %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s#mux\00", [25 x i8] zeroinitializer }, align 32
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s#div\00", [25 x i8] zeroinitializer }, align 32
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@meson_mmc_irq.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 0, i8 -20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"meson_gx_mmc\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"meson_mmc_irq\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unexpected IRQ! irq_en 0x%08x - status 0x%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@meson_mmc_irq.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.4, ptr @.str.27, i8 0, i8 -16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CRC Error - status 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@meson_mmc_irq.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.4, ptr @.str.28, i8 0, i8 -14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Timeout - status 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@meson_mmc_irq.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.4, ptr @.str.29, i8 0, i8 -12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IRQ: SDIO TODO.\0A\00", [47 x i8] zeroinitializer }, align 32
@meson_mmc_set_blksz._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 682, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"blksz %u is not a power of 2\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"meson_mmc_set_blksz\00", [44 x i8] zeroinitializer }, align 32
@meson_mmc_set_blksz._entry_ptr = internal global ptr @meson_mmc_set_blksz._entry, section ".printk_index", align 4
@meson_mmc_set_blksz.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 -84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: update blk_len %d -> %d\0A\00", [35 x i8] zeroinitializer }, align 32
@meson_mmc_pre_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 302, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dma_map_sg failed\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"meson_mmc_pre_req\00", [46 x i8] zeroinitializer }, align 32
@meson_mmc_pre_req._entry_ptr = internal global ptr @meson_mmc_pre_req._entry, section ".printk_index", align 4
@meson_mmc_get_transfer_mode.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@meson_mmc_get_transfer_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 256, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"unaligned sg len %u blksize %u, disabling descriptor DMA for transfer\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"meson_mmc_get_transfer_mode\00", [36 x i8] zeroinitializer }, align 32
@meson_mmc_get_transfer_mode._entry_ptr = internal global ptr @meson_mmc_get_transfer_mode._entry, section ".printk_index", align 4
@meson_mmc_get_transfer_mode.__print_once.37 = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@meson_mmc_get_transfer_mode._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.4, i32 267, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"unaligned sg offset %u, disabling descriptor DMA for transfer\0A\00", [33 x i8] zeroinitializer }, align 32
@meson_mmc_get_transfer_mode._entry_ptr.40 = internal global ptr @meson_mmc_get_transfer_mode._entry.38, section ".printk_index", align 4
@meson_mmc_validate_dram_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 876, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unaligned sg offset %u len %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"meson_mmc_validate_dram_access\00", [33 x i8] zeroinitializer }, align 32
@meson_mmc_validate_dram_access._entry_ptr = internal global ptr @meson_mmc_validate_dram_access._entry, section ".printk_index", align 4
@meson_mmc_set_ios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 624, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to enable vqmmc regulator\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"meson_mmc_set_ios\00", [46 x i8] zeroinitializer }, align 32
@meson_mmc_set_ios._entry_ptr = internal global ptr @meson_mmc_set_ios._entry, section ".printk_index", align 4
@meson_mmc_set_ios._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.4, i32 645, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Invalid ios->bus_width: %u.  Setting to 4.\0A\00", [52 x i8] zeroinitializer }, align 32
@meson_mmc_set_ios._entry_ptr.47 = internal global ptr @meson_mmc_set_ios._entry.45, section ".printk_index", align 4
@meson_mmc_set_ios._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.4, i32 657, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to set clock: %d\0A,\00", [38 x i8] zeroinitializer }, align 32
@meson_mmc_set_ios._entry_ptr.50 = internal global ptr @meson_mmc_set_ios._entry.48, section ".printk_index", align 4
@meson_mmc_set_ios.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.44, ptr @.str.4, ptr @.str.51, i8 0, i8 -92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SD_EMMC_CFG:  0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@meson_mmc_clk_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 389, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unable to set cfg_div_clk to %lu. ret=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"meson_mmc_clk_set\00", [46 x i8] zeroinitializer }, align 32
@meson_mmc_clk_set._entry_ptr = internal global ptr @meson_mmc_clk_set._entry, section ".printk_index", align 4
@meson_mmc_clk_set.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.53, ptr @.str.4, ptr @.str.54, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk rate: %u Hz\0A\00", [47 x i8] zeroinitializer }, align 32
@meson_mmc_clk_set.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.53, ptr @.str.4, ptr @.str.55, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"requested rate was %lu\0A\00", [40 x i8] zeroinitializer }, align 32
@meson_mmc_resampling_tuning.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.56, ptr @.str.4, ptr @.str.57, i8 0, i8 -119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"meson_mmc_resampling_tuning\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"resampling delay: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@meson_gx_data = internal constant { %struct.meson_mmc_data, [16 x i8] } { %struct.meson_mmc_data { i32 983040, i32 15728640, i32 16777216, i32 8 }, [16 x i8] zeroinitializer }, align 32
@meson_axg_data = internal constant { %struct.meson_mmc_data, [16 x i8] } { %struct.meson_mmc_data { i32 4128768, i32 264241152, i32 268435456, i32 12 }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 18, i64 23, i64 25]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 18, i64 23, i64 25]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 8]
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"meson_mmc_driver\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1359, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1363, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c"meson_mmc_of_match\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1349, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1152, i32 6 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1163, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1176, i32 41 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1198, i32 10 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1200, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1205, i32 44 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1277, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1286, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [14 x i8] c"meson_mmc_ops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1124, i32 34 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 441, i32 32 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 445, i32 11 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 455, i32 39 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 476, i32 39 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 945, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 961, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 968, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 977, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 682, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 690, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 302, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 254, i32 5 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 265, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 875, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 623, i32 5 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 644, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 657, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 659, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 388, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 402, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 404, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 548, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant [14 x i8] c"meson_gx_data\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1335, i32 36 }
@___asan_gen_.249 = private unnamed_addr constant [15 x i8] c"meson_axg_data\00", align 1
@___asan_gen_.250 = private constant [35 x i8] c"../drivers/mmc/host/meson-gx-mmc.c\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1342, i32 36 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_author408, ptr @__UNIQUE_ID_description407, ptr @__UNIQUE_ID_file409, ptr @__UNIQUE_ID_license410, ptr @__exitcall_meson_mmc_driver_exit, ptr @__initcall__kmod_meson_gx_mmc__406_1369_meson_mmc_driver_init6, ptr @meson_mmc_clk_set._entry, ptr @meson_mmc_clk_set._entry_ptr, ptr @meson_mmc_driver_exit, ptr @meson_mmc_get_transfer_mode._entry, ptr @meson_mmc_get_transfer_mode._entry.38, ptr @meson_mmc_get_transfer_mode._entry_ptr, ptr @meson_mmc_get_transfer_mode._entry_ptr.40, ptr @meson_mmc_pre_req._entry, ptr @meson_mmc_pre_req._entry_ptr, ptr @meson_mmc_probe._entry, ptr @meson_mmc_probe._entry.13, ptr @meson_mmc_probe._entry.17, ptr @meson_mmc_probe._entry.9, ptr @meson_mmc_probe._entry_ptr, ptr @meson_mmc_probe._entry_ptr.11, ptr @meson_mmc_probe._entry_ptr.16, ptr @meson_mmc_probe._entry_ptr.19, ptr @meson_mmc_set_blksz._entry, ptr @meson_mmc_set_blksz._entry_ptr, ptr @meson_mmc_set_ios._entry, ptr @meson_mmc_set_ios._entry.45, ptr @meson_mmc_set_ios._entry.48, ptr @meson_mmc_set_ios._entry_ptr, ptr @meson_mmc_set_ios._entry_ptr.47, ptr @meson_mmc_set_ios._entry_ptr.50, ptr @meson_mmc_validate_dram_access._entry, ptr @meson_mmc_validate_dram_access._entry_ptr, ptr @meson_mmc_driver, ptr @.str, ptr @meson_mmc_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @meson_mmc_ops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @meson_gx_data, ptr @meson_axg_data], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mmc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mmc_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mmc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mmc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mmc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mmc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mmc_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mmc_set_blksz._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mmc_pre_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mmc_get_transfer_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mmc_get_transfer_mode._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mmc_validate_dram_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mmc_set_ios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mmc_set_ios._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mmc_set_ios._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mmc_clk_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gx_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_axg_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mmc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_mmc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_mmc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_mmc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mmc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @mmc_alloc_host(i32 noundef 80, ptr noundef %dev) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 70
  %mmc2 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1
  %0 = ptrtoint ptr %mmc2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %mmc2, align 4
  %1 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %private.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %private.i, ptr %driver_data.i, align 4
  %call.i = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  %dram_access_quirk = getelementptr inbounds %struct.meson_host, ptr %private.i, i32 0, i32 10
  %frombool = zext i1 %call.i to i8
  %3 = ptrtoint ptr %dram_access_quirk to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %dram_access_quirk, align 1
  %vqmmc_enabled = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 6
  %4 = ptrtoint ptr %vqmmc_enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %vqmmc_enabled, align 4
  %call8 = tail call i32 @mmc_regulator_get_supply(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.free_host_crit_edge

if.end.free_host_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_host

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @mmc_of_parse(ptr noundef nonnull %call) #8
  %5 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call12, label %do.end [
    i32 0, label %if.end18
    i32 -517, label %if.end11.free_host_crit_edge
  ]

if.end11.free_host_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_host

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call12) #11
  br label %free_host

if.end18:                                         ; preds = %if.end11
  %call20 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %data = getelementptr inbounds %struct.meson_host, ptr %private.i, i32 0, i32 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call20, ptr %data, align 4
  %tobool22.not = icmp eq ptr %call20, null
  br i1 %tobool22.not, label %if.end18.free_host_crit_edge, label %if.end24

if.end18.free_host_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_host

if.end24:                                         ; preds = %if.end18
  %call.i264 = tail call i32 @__device_reset(ptr noundef %dev, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264)
  %tobool27.not = icmp eq i32 %call.i264, 0
  br i1 %tobool27.not, label %if.end31, label %if.then28

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %call30 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call.i264, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %call32 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call34 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call32) #8
  %regs = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call34, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call34 to i32
  br label %free_host

if.end40:                                         ; preds = %if.end31
  %call41 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call41, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call41)
  %cmp43 = icmp slt i32 %call41, 1
  br i1 %cmp43, label %if.end40.free_host_crit_edge, label %if.end45

if.end40.free_host_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_host

if.end45:                                         ; preds = %if.end40
  %call47 = tail call ptr @devm_pinctrl_get(ptr noundef %dev) #8
  %pinctrl = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7
  %10 = ptrtoint ptr %pinctrl to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call47, ptr %pinctrl, align 4
  %cmp.i265 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i265, label %if.then50, label %if.end53

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call47 to i32
  br label %free_host

if.end53:                                         ; preds = %if.end45
  %call55 = tail call ptr @pinctrl_lookup_state(ptr noundef %call47, ptr noundef nonnull @.str.8) #8
  %pins_clk_gate = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1
  %12 = ptrtoint ptr %pins_clk_gate to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call55, ptr %pins_clk_gate, align 4
  %cmp.i266 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i266, label %do.end61, label %if.end53.if.end64_crit_edge

if.end53.if.end64_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

do.end61:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10) #11
  %13 = ptrtoint ptr %pins_clk_gate to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %pins_clk_gate, align 4
  br label %if.end64

if.end64:                                         ; preds = %do.end61, %if.end53.if.end64_crit_edge
  %call66 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  %core_clk = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %core_clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call66, ptr %core_clk, align 4
  %cmp.i267 = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i267, label %if.then69, label %if.end72

if.then69:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call66 to i32
  br label %free_host

if.end72:                                         ; preds = %if.end64
  %call74 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call66)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end72.free_host_crit_edge

if.end72.free_host_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_host

if.end77:                                         ; preds = %if.end72
  %call78 = tail call fastcc i32 @meson_mmc_clk_init(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end77.err_core_clk_crit_edge

if.end77.err_core_clk_crit_edge:                  ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_core_clk

if.end81:                                         ; preds = %if.end77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1874329592) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr90 = getelementptr i8, ptr %21, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 0) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr95 = getelementptr i8, ptr %23, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 -12648448) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr100 = getelementptr i8, ptr %25, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 -12648448) #8, !srcloc !143
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end81.dev_name.exit_crit_edge

if.end81.dev_name.exit_crit_edge:                 ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end81.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %31, %if.end.i ], [ %29, %if.end81.dev_name.exit_crit_edge ]
  %call104 = tail call i32 @request_threaded_irq(i32 noundef %27, ptr noundef nonnull @meson_mmc_irq, ptr noundef nonnull @meson_mmc_irq_thread, i32 noundef 8192, ptr noundef %retval.0.i, ptr noundef %private.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %dev_name.exit.err_init_clk_crit_edge

dev_name.exit.err_init_clk_crit_edge:             ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_init_clk

if.end107:                                        ; preds = %dev_name.exit
  %caps = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 16
  %32 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %caps, align 32
  %or = or i32 %33, 1073741824
  store i32 %or, ptr %caps, align 32
  %34 = ptrtoint ptr %dram_access_quirk to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dram_access_quirk, align 1, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool109.not = icmp eq i8 %35, 0
  br i1 %tobool109.not, label %if.end107.if.end113_crit_edge, label %if.then110

if.end107.if.end113_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  %max_blk_size = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 24
  %36 = ptrtoint ptr %max_blk_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_blk_size, align 4
  %div = udiv i32 1536, %37
  br label %if.end113

if.end113:                                        ; preds = %if.then110, %if.end107.if.end113_crit_edge
  %div.sink = phi i32 [ %div, %if.then110 ], [ 511, %if.end107.if.end113_crit_edge ]
  %.sink = phi i16 [ 1, %if.then110 ], [ 256, %if.end107.if.end113_crit_edge ]
  %38 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 25
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div.sink, ptr %38, align 128
  %40 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 21
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %.sink, ptr %40, align 4
  %max_blk_size115 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 24
  %42 = ptrtoint ptr %max_blk_size115 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_blk_size115, align 4
  %mul = mul i32 %43, %div.sink
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 23
  %44 = ptrtoint ptr %max_req_size to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul, ptr %max_req_size, align 8
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 20
  %45 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul, ptr %max_seg_size, align 16
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 17
  %46 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %caps2, align 4
  %and = and i32 %47, -98305
  store i32 %and, ptr %caps2, align 4
  %48 = ptrtoint ptr %dram_access_quirk to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %dram_access_quirk, align 1, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool118.not = icmp eq i8 %49, 0
  %bounce_buf_size124 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1, i32 1
  br i1 %tobool118.not, label %if.else122, label %if.then119

if.then119:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %bounce_buf_size124 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1536, ptr %bounce_buf_size124, align 4
  %51 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs, align 4
  %add.ptr121 = getelementptr i8, ptr %52, i32 512
  %bounce_iomem_buf = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3
  %53 = ptrtoint ptr %bounce_iomem_buf to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr121, ptr %bounce_iomem_buf, align 4
  %54 = ptrtoint ptr %call32 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %call32, align 4
  %add = add i32 %55, 512
  %bounce_dma_addr = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 1
  %56 = ptrtoint ptr %bounce_dma_addr to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add, ptr %bounce_dma_addr, align 4
  br label %if.end137

if.else122:                                       ; preds = %if.end113
  %57 = ptrtoint ptr %bounce_buf_size124 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %mul, ptr %bounce_buf_size124, align 4
  %58 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %private.i, align 4
  %bounce_dma_addr127 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 1
  %call.i268 = tail call ptr @dma_alloc_attrs(ptr noundef %59, i32 noundef %mul, ptr noundef %bounce_dma_addr127, i32 noundef 3264, i32 noundef 0) #8
  %bounce_buf = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 2
  %60 = ptrtoint ptr %bounce_buf to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i268, ptr %bounce_buf, align 4
  %cmp130 = icmp eq ptr %call.i268, null
  br i1 %cmp130, label %do.end134, label %if.else122.if.end137_crit_edge

if.else122.if.end137_crit_edge:                   ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

do.end134:                                        ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %private.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.14) #11
  br label %err_free_irq

if.end137:                                        ; preds = %if.else122.if.end137_crit_edge, %if.then119
  %63 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %private.i, align 4
  %descs_dma_addr = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 2
  %call.i269 = tail call ptr @dma_alloc_attrs(ptr noundef %64, i32 noundef 4096, ptr noundef %descs_dma_addr, i32 noundef 3264, i32 noundef 0) #8
  %descs = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  %65 = ptrtoint ptr %descs to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i269, ptr %descs, align 4
  %tobool141.not = icmp eq ptr %call.i269, null
  br i1 %tobool141.not, label %do.end145, label %if.end147

do.end145:                                        ; preds = %if.end137
  %66 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %private.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.18) #11
  %68 = ptrtoint ptr %dram_access_quirk to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %dram_access_quirk, align 1, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool150.not = icmp eq i8 %69, 0
  br i1 %tobool150.not, label %if.then151, label %do.end145.err_free_irq_crit_edge

do.end145.err_free_irq_crit_edge:                 ; preds = %do.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_irq

if.end147:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  %ops = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 3
  %70 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @meson_mmc_ops, ptr %ops, align 4
  %call148 = tail call i32 @mmc_add_host(ptr noundef nonnull %call) #8
  br label %cleanup

if.then151:                                       ; preds = %do.end145
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %private.i, align 4
  %bounce_buf_size153 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %bounce_buf_size153 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bounce_buf_size153, align 4
  %bounce_buf154 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 2
  %75 = ptrtoint ptr %bounce_buf154 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bounce_buf154, align 4
  %bounce_dma_addr155 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 1
  %77 = ptrtoint ptr %bounce_dma_addr155 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bounce_dma_addr155, align 4
  tail call void @dma_free_attrs(ptr noundef %72, i32 noundef %74, ptr noundef %76, i32 noundef %78, i32 noundef 0) #8
  br label %err_free_irq

err_free_irq:                                     ; preds = %if.then151, %do.end145.err_free_irq_crit_edge, %do.end134
  %79 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %irq, align 4
  %call158 = tail call ptr @free_irq(i32 noundef %80, ptr noundef %private.i) #8
  br label %err_init_clk

err_init_clk:                                     ; preds = %err_free_irq, %dev_name.exit.err_init_clk_crit_edge
  %ret.1 = phi i32 [ %call104, %dev_name.exit.err_init_clk_crit_edge ], [ -12, %err_free_irq ]
  %mmc_clk = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 4
  %81 = ptrtoint ptr %mmc_clk to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mmc_clk, align 4
  tail call void @clk_disable(ptr noundef %82) #8
  tail call void @clk_unprepare(ptr noundef %82) #8
  br label %err_core_clk

err_core_clk:                                     ; preds = %err_init_clk, %if.end77.err_core_clk_crit_edge
  %ret.2 = phi i32 [ %call78, %if.end77.err_core_clk_crit_edge ], [ %ret.1, %err_init_clk ]
  %83 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %84) #8
  tail call void @clk_unprepare(ptr noundef %84) #8
  br label %free_host

free_host:                                        ; preds = %err_core_clk, %if.end72.free_host_crit_edge, %if.then69, %if.then50, %if.end40.free_host_crit_edge, %if.then37, %if.end18.free_host_crit_edge, %do.end, %if.end11.free_host_crit_edge, %if.end.free_host_crit_edge
  %ret.3 = phi i32 [ %call8, %if.end.free_host_crit_edge ], [ %call12, %do.end ], [ %8, %if.then37 ], [ %11, %if.then50 ], [ %15, %if.then69 ], [ %call74, %if.end72.free_host_crit_edge ], [ %ret.2, %err_core_clk ], [ %call12, %if.end11.free_host_crit_edge ], [ -22, %if.end18.free_host_crit_edge ], [ -22, %if.end40.free_host_crit_edge ]
  tail call void @mmc_free_host(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %free_host, %if.end147, %if.then28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %free_host ], [ %call30, %if.then28 ], [ 0, %if.end147 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mmc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mmc = getelementptr inbounds %struct.meson_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 4
  tail call void @mmc_remove_host(ptr noundef %3) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %regs = getelementptr inbounds %struct.meson_host, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !143
  %irq = getelementptr inbounds %struct.meson_host, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %1) #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %descs = getelementptr inbounds %struct.meson_host, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %descs, align 4
  %descs_dma_addr = getelementptr inbounds %struct.meson_host, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %descs_dma_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %descs_dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef 4096, ptr noundef %11, i32 noundef %13, i32 noundef 0) #8
  %dram_access_quirk = getelementptr inbounds %struct.meson_host, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %dram_access_quirk to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dram_access_quirk, align 1, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %bounce_buf_size = getelementptr inbounds %struct.meson_host, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %bounce_buf_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bounce_buf_size, align 4
  %bounce_buf = getelementptr inbounds %struct.meson_host, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %bounce_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bounce_buf, align 4
  %bounce_dma_addr = getelementptr inbounds %struct.meson_host, ptr %1, i32 0, i32 16
  %22 = ptrtoint ptr %bounce_dma_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bounce_dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %17, i32 noundef %19, ptr noundef %21, i32 noundef %23, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mmc_clk = getelementptr inbounds %struct.meson_host, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %mmc_clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmc_clk, align 4
  tail call void @clk_disable(ptr noundef %25) #8
  tail call void @clk_unprepare(ptr noundef %25) #8
  %core_clk = getelementptr inbounds %struct.meson_host, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %27) #8
  tail call void @clk_unprepare(ptr noundef %27) #8
  %28 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmc, align 4
  tail call void @mmc_free_host(ptr noundef %29) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_get_supply(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %clk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_mmc_clk_init(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %clk_name = alloca [32 x i8], align 1
  %mux_parent_names = alloca [2 x ptr], align 4
  %clk_parent = alloca [1 x ptr], align 4
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %0 = call ptr @memset(ptr %init, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %clk_name) #8
  %1 = call ptr @memset(ptr %clk_name, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mux_parent_names) #8
  %2 = getelementptr inbounds [2 x ptr], ptr %mux_parent_names, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_parent) #8
  %3 = ptrtoint ptr %clk_parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %clk_parent, align 4, !annotation !150
  %data = getelementptr inbounds %struct.meson_host, ptr %host, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %always_on = getelementptr inbounds %struct.meson_mmc_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %always_on to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %always_on, align 4
  %or13 = or i32 %7, 575
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %or13)
  %regs = getelementptr inbounds %struct.meson_host, ptr %host, i32 0, i32 4
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #8, !srcloc !143
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #8
  %11 = call ptr @memset(ptr %name, i32 255, i32 16)
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str.20, i32 noundef 0)
  %12 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host, align 4
  %call52 = call ptr @devm_clk_get(ptr noundef %13, ptr noundef nonnull %name) #8
  %cmp.i = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup.thread_crit_edge, label %for.inc

entry.cleanup.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %for.inc.cleanup.thread_crit_edge, %entry.cleanup.thread_crit_edge
  %call52.lcssa = phi ptr [ %call52, %entry.cleanup.thread_crit_edge ], [ %call52.1, %for.inc.cleanup.thread_crit_edge ]
  %14 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host, align 4
  %16 = ptrtoint ptr %call52.lcssa to i32
  %call57 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %15, i32 noundef %16, ptr noundef nonnull @.str.21, ptr noundef nonnull %name) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #8
  br label %cleanup191

for.inc:                                          ; preds = %entry
  %call58 = call ptr @__clk_get_name(ptr noundef %call52) #8
  %17 = ptrtoint ptr %mux_parent_names to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call58, ptr %mux_parent_names, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #8
  %18 = call ptr @memset(ptr %name, i32 255, i32 16)
  %call.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str.20, i32 noundef 1)
  %19 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host, align 4
  %call52.1 = call ptr @devm_clk_get(ptr noundef %20, ptr noundef nonnull %name) #8
  %cmp.i.1 = icmp ugt ptr %call52.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.inc.cleanup.thread_crit_edge, label %for.inc.1

for.inc.cleanup.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

for.inc.1:                                        ; preds = %for.inc
  %call58.1 = call ptr @__clk_get_name(ptr noundef %call52.1) #8
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call58.1, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #8
  %22 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %host, align 4
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %23, i32 noundef 32, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %for.inc.1.cleanup191_crit_edge, label %if.end63

for.inc.1.cleanup191_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup191

if.end63:                                         ; preds = %for.inc.1
  %24 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %host, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end63.dev_name.exit_crit_edge

if.end63.dev_name.exit_crit_edge:                 ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end63.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %29, %if.end.i ], [ %27, %if.end63.dev_name.exit_crit_edge ]
  %call67 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name, i32 noundef 32, ptr noundef nonnull @.str.22, ptr noundef %retval.0.i)
  %30 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %clk_name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @clk_mux_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %flags, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %33 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %mux_parent_names, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %34 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 2, ptr %num_parents, align 4
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %reg = getelementptr inbounds %struct.clk_mux, ptr %call.i, i32 0, i32 1
  %37 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %reg, align 4
  %shift = getelementptr inbounds %struct.clk_mux, ptr %call.i, i32 0, i32 4
  %38 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 6, ptr %shift, align 4
  %mask = getelementptr inbounds %struct.clk_mux, ptr %call.i, i32 0, i32 3
  %39 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %mask, align 4
  %init76 = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %40 = ptrtoint ptr %init76 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %init, ptr %init76, align 4
  %41 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %host, align 4
  %call79 = call ptr @devm_clk_register(ptr noundef %42, ptr noundef nonnull %call.i) #8
  %mux_clk = getelementptr inbounds %struct.meson_host, ptr %host, i32 0, i32 6
  %43 = ptrtoint ptr %mux_clk to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call79, ptr %mux_clk, align 4
  %cmp.i247 = icmp ugt ptr %call79, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i247, label %do.end93, label %if.end111, !prof !152

do.end93:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 468, i32 noundef 9, ptr noundef null) #8
  %44 = ptrtoint ptr %mux_clk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mux_clk, align 4
  %46 = ptrtoint ptr %45 to i32
  br label %cleanup191

if.end111:                                        ; preds = %dev_name.exit
  %47 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %host, align 4
  %call.i248 = call noalias ptr @devm_kmalloc(ptr noundef %48, i32 noundef 28, i32 noundef 3520) #8
  %tobool114.not = icmp eq ptr %call.i248, null
  br i1 %tobool114.not, label %if.end111.cleanup191_crit_edge, label %if.end116

if.end111.cleanup191_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup191

if.end116:                                        ; preds = %if.end111
  %49 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %host, align 4
  %init_name.i249 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %init_name.i249 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %init_name.i249, align 8
  %tobool.not.i250 = icmp eq ptr %52, null
  br i1 %tobool.not.i250, label %if.end.i251, label %if.end116.dev_name.exit253_crit_edge

if.end116.dev_name.exit253_crit_edge:             ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit253

if.end.i251:                                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %50, align 4
  br label %dev_name.exit253

dev_name.exit253:                                 ; preds = %if.end.i251, %if.end116.dev_name.exit253_crit_edge
  %retval.0.i252 = phi ptr [ %54, %if.end.i251 ], [ %52, %if.end116.dev_name.exit253_crit_edge ]
  %call120 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name, i32 noundef 32, ptr noundef nonnull @.str.23, ptr noundef %retval.0.i252)
  %55 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %clk_name, ptr %init, align 4
  %56 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @clk_divider_ops, ptr %ops, align 4
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 4, ptr %flags, align 4
  %58 = ptrtoint ptr %mux_clk to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mux_clk, align 4
  %call126 = call ptr @__clk_get_name(ptr noundef %59) #8
  %60 = ptrtoint ptr %clk_parent to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call126, ptr %clk_parent, align 4
  %61 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %clk_parent, ptr %parent_names, align 4
  %62 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %num_parents, align 4
  %63 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs, align 4
  %reg133 = getelementptr inbounds %struct.clk_divider, ptr %call.i248, i32 0, i32 1
  %65 = ptrtoint ptr %reg133 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %reg133, align 4
  %shift136 = getelementptr inbounds %struct.clk_divider, ptr %call.i248, i32 0, i32 2
  %66 = ptrtoint ptr %shift136 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %shift136, align 4
  %width = getelementptr inbounds %struct.clk_divider, ptr %call.i248, i32 0, i32 3
  %67 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 6, ptr %width, align 1
  %init138 = getelementptr inbounds %struct.clk_hw, ptr %call.i248, i32 0, i32 2
  %68 = ptrtoint ptr %init138 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %init, ptr %init138, align 4
  %flags139 = getelementptr inbounds %struct.clk_divider, ptr %call.i248, i32 0, i32 4
  %69 = ptrtoint ptr %flags139 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %flags139, align 2
  %70 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %host, align 4
  %call142 = call ptr @devm_clk_register(ptr noundef %71, ptr noundef nonnull %call.i248) #8
  %mmc_clk = getelementptr inbounds %struct.meson_host, ptr %host, i32 0, i32 7
  %72 = ptrtoint ptr %mmc_clk to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call142, ptr %mmc_clk, align 4
  %cmp.i254 = icmp ugt ptr %call142, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i254, label %do.end161, label %if.end179, !prof !152

do.end161:                                        ; preds = %dev_name.exit253
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 491, i32 noundef 9, ptr noundef null) #8
  %73 = ptrtoint ptr %mmc_clk to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmc_clk, align 4
  %75 = ptrtoint ptr %74 to i32
  br label %cleanup191

if.end179:                                        ; preds = %dev_name.exit253
  %call181 = call i32 @clk_round_rate(ptr noundef %call142, i32 noundef 400000) #8
  %mmc = getelementptr inbounds %struct.meson_host, ptr %host, i32 0, i32 2
  %76 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mmc, align 4
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %f_min to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call181, ptr %f_min, align 4
  %79 = ptrtoint ptr %mmc_clk to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mmc_clk, align 4
  %81 = load ptr, ptr %mmc, align 4
  %f_min184 = getelementptr inbounds %struct.mmc_host, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %f_min184 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %f_min184, align 4
  %call185 = call i32 @clk_set_rate(ptr noundef %80, i32 noundef %83) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end188, label %if.end179.cleanup191_crit_edge

if.end179.cleanup191_crit_edge:                   ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup191

if.end188:                                        ; preds = %if.end179
  %84 = ptrtoint ptr %mmc_clk to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmc_clk, align 4
  %call.i255 = call i32 @clk_prepare(ptr noundef %85) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i255)
  %tobool.not.i256 = icmp eq i32 %call.i255, 0
  br i1 %tobool.not.i256, label %if.end.i257, label %if.end188.cleanup191_crit_edge

if.end188.cleanup191_crit_edge:                   ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup191

if.end.i257:                                      ; preds = %if.end188
  %call1.i = call i32 @clk_enable(ptr noundef %85) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i257.cleanup191_crit_edge, label %if.then3.i

if.end.i257.cleanup191_crit_edge:                 ; preds = %if.end.i257
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup191

if.then3.i:                                       ; preds = %if.end.i257
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %85) #8
  br label %cleanup191

cleanup191:                                       ; preds = %if.then3.i, %if.end.i257.cleanup191_crit_edge, %if.end188.cleanup191_crit_edge, %if.end179.cleanup191_crit_edge, %do.end161, %if.end111.cleanup191_crit_edge, %do.end93, %for.inc.1.cleanup191_crit_edge, %cleanup.thread
  %retval.2 = phi i32 [ %46, %do.end93 ], [ %75, %do.end161 ], [ -12, %for.inc.1.cleanup191_crit_edge ], [ -12, %if.end111.cleanup191_crit_edge ], [ %call185, %if.end179.cleanup191_crit_edge ], [ %call57, %cleanup.thread ], [ %call.i255, %if.end188.cleanup191_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i257.cleanup191_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_parent) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mux_parent_names) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_name) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mmc_irq(i32 noundef %irq, ptr noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.meson_host, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 76
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !153
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 72
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !153
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %and = and i32 %7, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end15

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_mmc_irq.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_mmc_irq, %if.then14)) #8
          to label %cleanup [label %if.then14], !srcloc !156

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_mmc_irq.__UNIQUE_ID_ddebug382, ptr noundef %9, ptr noundef nonnull @.str.26, i32 noundef %3, i32 noundef %7) #8
  br label %cleanup

if.end15:                                         ; preds = %entry
  %tobool16.not = icmp eq ptr %dev_id, null
  br i1 %tobool16.not, label %do.end34, label %lor.lhs.false.critedge, !prof !152

do.end34:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 951, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

lor.lhs.false.critedge:                           ; preds = %if.end15
  %cmd50 = getelementptr inbounds %struct.meson_host, ptr %dev_id, i32 0, i32 3
  %10 = ptrtoint ptr %cmd50 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd50, align 4
  %tobool51.not = icmp eq ptr %11, null
  br i1 %tobool51.not, label %do.end69, label %do.body86, !prof !152

do.end69:                                         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 951, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

do.body86:                                        ; preds = %lor.lhs.false.critedge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %and)
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr90 = getelementptr i8, ptr %14, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 %12) #8, !srcloc !143
  %15 = ptrtoint ptr %cmd50 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd50, align 4
  %data92 = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %data92 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data92, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 5
  %19 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %error, align 4
  %and93 = and i32 %and, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.end114, label %do.body96

do.body96:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_mmc_irq.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_mmc_irq, %if.then108)) #8
          to label %if.then175.sink.split [label %if.then108], !srcloc !156

if.then108:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_mmc_irq.__UNIQUE_ID_ddebug383, ptr noundef %21, ptr noundef nonnull @.str.27, i32 noundef %and) #8
  br label %if.then175.sink.split

if.end114:                                        ; preds = %do.body86
  %and115 = and i32 %and, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.end136, label %do.body118

do.body118:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_mmc_irq.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_mmc_irq, %if.then130)) #8
          to label %if.then175.sink.split [label %if.then130], !srcloc !156

if.then130:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_mmc_irq.__UNIQUE_ID_ddebug384, ptr noundef %23, ptr noundef nonnull @.str.28, i32 noundef %and) #8
  br label %if.then175.sink.split

if.end136:                                        ; preds = %if.end114
  %mmc = getelementptr inbounds %struct.meson_host, ptr %dev_id, i32 0, i32 2
  %24 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmc, align 4
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 3
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  %regs.i = getelementptr inbounds %struct.mmc_host, ptr %25, i32 1, i32 1, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 104
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !153
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  %resp.i = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 2
  %32 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %resp.i, align 4
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %34, i32 100
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #8, !srcloc !153
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  %arrayidx11.i = getelementptr %struct.mmc_command, ptr %16, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx11.i, align 4
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %39, i32 96
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #8, !srcloc !153
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %arrayidx20.i = getelementptr %struct.mmc_command, ptr %16, i32 0, i32 2, i32 2
  %42 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx20.i, align 4
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %44, i32 92
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #8, !srcloc !153
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  %arrayidx29.i = getelementptr %struct.mmc_command, ptr %16, i32 0, i32 2, i32 3
  %47 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx29.i, align 4
  br label %meson_mmc_read_resp.exit

if.else.i:                                        ; preds = %if.end136
  %and31.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.else.i.meson_mmc_read_resp.exit_crit_edge, label %if.then33.i

if.else.i.meson_mmc_read_resp.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_read_resp.exit

if.then33.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %regs36.i = getelementptr inbounds %struct.mmc_host, ptr %25, i32 1, i32 1, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %regs36.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs36.i, align 4
  %add.ptr37.i = getelementptr i8, ptr %49, i32 92
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.i) #8, !srcloc !153
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !162
  %resp41.i = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 2
  %52 = ptrtoint ptr %resp41.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %resp41.i, align 4
  br label %meson_mmc_read_resp.exit

meson_mmc_read_resp.exit:                         ; preds = %if.then33.i, %if.else.i.meson_mmc_read_resp.exit_crit_edge, %if.then.i
  %and137 = and i32 %and, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %meson_mmc_read_resp.exit.if.end157_crit_edge, label %do.body140

meson_mmc_read_resp.exit.if.end157_crit_edge:     ; preds = %meson_mmc_read_resp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end157

do.body140:                                       ; preds = %meson_mmc_read_resp.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_mmc_irq.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_mmc_irq, %if.then152)) #8
          to label %if.end157 [label %if.then152], !srcloc !156

if.then152:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_mmc_irq.__UNIQUE_ID_ddebug385, ptr noundef %54, ptr noundef nonnull @.str.29) #8
  br label %if.end157

if.end157:                                        ; preds = %if.then152, %do.body140, %meson_mmc_read_resp.exit.if.end157_crit_edge
  %ret.0 = phi i32 [ 0, %meson_mmc_read_resp.exit.if.end157_crit_edge ], [ 1, %if.then152 ], [ 1, %do.body140 ]
  %and158 = and i32 %and, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %if.end157.out_crit_edge, label %if.then160

if.end157.out_crit_edge:                          ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then160:                                       ; preds = %if.end157
  %tobool161.not = icmp eq ptr %18, null
  br i1 %tobool161.not, label %if.then160.lor.lhs.false167_crit_edge, label %land.lhs.true

if.then160.lor.lhs.false167_crit_edge:            ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false167

land.lhs.true:                                    ; preds = %if.then160
  %55 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool163.not = icmp eq i32 %56, 0
  br i1 %tobool163.not, label %if.then164, label %land.lhs.true.land.lhs.true.i_crit_edge

land.lhs.true.land.lhs.true.i_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.then164:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 2
  %57 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %blksz, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 3
  %59 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %blocks, align 4
  %mul = mul i32 %60, %58
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 7
  %61 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %mul, ptr %bytes_xfered, align 4
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then164, %land.lhs.true.land.lhs.true.i_crit_edge
  %flags.i248 = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 6
  %62 = ptrtoint ptr %flags.i248 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i248, align 4
  %and.i249 = and i32 %63, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i249)
  %tobool1.not.i = icmp eq i32 %and.i249, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.lor.lhs.false167_crit_edge, label %meson_mmc_bounce_buf_read.exit

land.lhs.true.i.lor.lhs.false167_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false167

meson_mmc_bounce_buf_read.exit:                   ; preds = %land.lhs.true.i
  %host_cookie.i.i = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 13
  %64 = ptrtoint ptr %host_cookie.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %host_cookie.i.i, align 4
  %and.i.i = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %meson_mmc_bounce_buf_read.exit.out_crit_edge, label %meson_mmc_bounce_buf_read.exit.lor.lhs.false167_crit_edge

meson_mmc_bounce_buf_read.exit.lor.lhs.false167_crit_edge: ; preds = %meson_mmc_bounce_buf_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false167

meson_mmc_bounce_buf_read.exit.out_crit_edge:     ; preds = %meson_mmc_bounce_buf_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false167:                                 ; preds = %meson_mmc_bounce_buf_read.exit.lor.lhs.false167_crit_edge, %land.lhs.true.i.lor.lhs.false167_crit_edge, %if.then160.lor.lhs.false167_crit_edge
  %66 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %16, align 4
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %67, label %lor.lhs.false167.out_crit_edge [
    i32 23, label %land.lhs.true.i251
    i32 25, label %lor.lhs.false167.land.lhs.true3.i_crit_edge
    i32 18, label %lor.lhs.false167.land.lhs.true3.i_crit_edge267
  ]

lor.lhs.false167.land.lhs.true3.i_crit_edge267:   ; preds = %lor.lhs.false167
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true3.i

lor.lhs.false167.land.lhs.true3.i_crit_edge:      ; preds = %lor.lhs.false167
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true3.i

lor.lhs.false167.out_crit_edge:                   ; preds = %lor.lhs.false167
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true.i251:                               ; preds = %lor.lhs.false167
  %69 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i250 = icmp eq i32 %70, 0
  br i1 %tobool.not.i250, label %if.then.i252, label %land.lhs.true.i251.if.then175_crit_edge

land.lhs.true.i251.if.then175_crit_edge:          ; preds = %land.lhs.true.i251
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then175

if.then.i252:                                     ; preds = %land.lhs.true.i251
  call void @__sanitizer_cov_trace_pc() #10
  %mrq.i = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 8
  %71 = ptrtoint ptr %mrq.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mrq.i, align 4
  %cmd1.i = getelementptr inbounds %struct.mmc_request, ptr %72, i32 0, i32 1
  br label %return.sink.split.i

land.lhs.true3.i:                                 ; preds = %lor.lhs.false167.land.lhs.true3.i_crit_edge, %lor.lhs.false167.land.lhs.true3.i_crit_edge267
  %mrq4.i = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 8
  %73 = ptrtoint ptr %mrq4.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mrq4.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %tobool5.not.i = icmp eq ptr %76, null
  br i1 %tobool5.not.i, label %land.lhs.true3.i.if.then11.i_crit_edge, label %lor.lhs.false.i

land.lhs.true3.i.if.then11.i_crit_edge:           ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true3.i
  %77 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool7.not.i = icmp eq i32 %78, 0
  br i1 %tobool7.not.i, label %lor.lhs.false8.i, label %lor.lhs.false.i.if.then11.i_crit_edge

lor.lhs.false.i.if.then11.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %79 = ptrtoint ptr %data92 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data92, align 4
  %error9.i = getelementptr inbounds %struct.mmc_data, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %error9.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %error9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool10.not.i = icmp eq i32 %82, 0
  br i1 %tobool10.not.i, label %lor.lhs.false8.i.out_crit_edge, label %lor.lhs.false8.i.if.then11.i_crit_edge

lor.lhs.false8.i.if.then11.i_crit_edge:           ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i

lor.lhs.false8.i.out_crit_edge:                   ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then11.i:                                      ; preds = %lor.lhs.false8.i.if.then11.i_crit_edge, %lor.lhs.false.i.if.then11.i_crit_edge, %land.lhs.true3.i.if.then11.i_crit_edge
  %stop.i = getelementptr inbounds %struct.mmc_request, ptr %74, i32 0, i32 3
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.then11.i, %if.then.i252
  %stop.sink.i = phi ptr [ %stop.i, %if.then11.i ], [ %cmd1.i, %if.then.i252 ]
  %83 = ptrtoint ptr %stop.sink.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %stop.sink.i, align 4
  %phi.cmp = icmp eq ptr %84, null
  %phi.sel = select i1 %phi.cmp, i32 1, i32 2
  br label %out

out:                                              ; preds = %return.sink.split.i, %lor.lhs.false8.i.out_crit_edge, %lor.lhs.false167.out_crit_edge, %meson_mmc_bounce_buf_read.exit.out_crit_edge, %if.end157.out_crit_edge
  %ret.1.ph.ph = phi i32 [ %phi.sel, %return.sink.split.i ], [ 1, %lor.lhs.false167.out_crit_edge ], [ 1, %lor.lhs.false8.i.out_crit_edge ], [ %ret.0, %if.end157.out_crit_edge ], [ 2, %meson_mmc_bounce_buf_read.exit.out_crit_edge ]
  %85 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pr.pr = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.pr)
  %tobool174.not = icmp eq i32 %.pr.pr, 0
  br i1 %tobool174.not, label %out.if.end189_crit_edge, label %out.if.then175_crit_edge

out.if.then175_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then175

out.if.end189_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

if.then175.sink.split:                            ; preds = %if.then130, %do.body118, %if.then108, %do.body96
  %.sink = phi i32 [ -84, %do.body96 ], [ -84, %if.then108 ], [ -110, %do.body118 ], [ -110, %if.then130 ]
  %86 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %.sink, ptr %error, align 4
  br label %if.then175

if.then175:                                       ; preds = %if.then175.sink.split, %out.if.then175_crit_edge, %land.lhs.true.i251.if.then175_crit_edge
  %ret.1262 = phi i32 [ %ret.1.ph.ph, %out.if.then175_crit_edge ], [ 1, %land.lhs.true.i251.if.then175_crit_edge ], [ 2, %if.then175.sink.split ]
  %87 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs, align 4
  %add.ptr179 = getelementptr i8, ptr %88, i32 64
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr179) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !163
  %90 = and i32 %89, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  tail call void @arm_heavy_mb() #8
  %91 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs, align 4
  %add.ptr188 = getelementptr i8, ptr %92, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr188, i32 %90) #8, !srcloc !143
  br label %if.end189

if.end189:                                        ; preds = %if.then175, %out.if.end189_crit_edge
  %ret.1263 = phi i32 [ %ret.1262, %if.then175 ], [ %ret.1.ph.ph, %out.if.end189_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.1263)
  %cmp = icmp eq i32 %ret.1263, 1
  br i1 %cmp, label %if.then190, label %if.end189.cleanup_crit_edge

if.end189.cleanup_crit_edge:                      ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then190:                                       ; preds = %if.end189
  %mmc191 = getelementptr inbounds %struct.meson_host, ptr %dev_id, i32 0, i32 2
  %93 = ptrtoint ptr %mmc191 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mmc191, align 4
  %mrq = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 8
  %95 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mrq, align 4
  %private.i.i = getelementptr inbounds %struct.mmc_host, ptr %94, i32 0, i32 70
  %cmd.i = getelementptr inbounds %struct.mmc_host, ptr %94, i32 1, i32 1, i32 0, i32 1
  %97 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %cmd.i, align 4
  %needs_pre_post_req.i = getelementptr inbounds %struct.meson_host, ptr %private.i.i, i32 0, i32 21
  %98 = ptrtoint ptr %needs_pre_post_req.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %needs_pre_post_req.i, align 1, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i254 = icmp eq i8 %99, 0
  br i1 %tobool.not.i254, label %if.then190.meson_mmc_request_done.exit_crit_edge, label %if.then.i255

if.then190.meson_mmc_request_done.exit_crit_edge: ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_request_done.exit

if.then.i255:                                     ; preds = %if.then190
  %data1.i.i = getelementptr inbounds %struct.mmc_request, ptr %96, i32 0, i32 2
  %100 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %101, null
  br i1 %tobool.not.i.i, label %if.then.i255.meson_mmc_request_done.exit_crit_edge, label %land.lhs.true.i.i

if.then.i255.meson_mmc_request_done.exit_crit_edge: ; preds = %if.then.i255
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_request_done.exit

land.lhs.true.i.i:                                ; preds = %if.then.i255
  %host_cookie.i.i.i = getelementptr inbounds %struct.mmc_data, ptr %101, i32 0, i32 13
  %102 = ptrtoint ptr %host_cookie.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %host_cookie.i.i.i, align 4
  %and.i.i.i = and i32 %103, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %land.lhs.true.i.i.meson_mmc_request_done.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.meson_mmc_request_done.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_request_done.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %sg_count.i.i = getelementptr inbounds %struct.mmc_data, ptr %101, i32 0, i32 11
  %104 = ptrtoint ptr %sg_count.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %sg_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool3.not.i.i = icmp eq i32 %105, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true2.i.i.meson_mmc_request_done.exit_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.meson_mmc_request_done.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_request_done.exit

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %106 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %94, align 128
  %sg.i.i = getelementptr inbounds %struct.mmc_data, ptr %101, i32 0, i32 12
  %108 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sg.i.i, align 4
  %sg_len.i.i = getelementptr inbounds %struct.mmc_data, ptr %101, i32 0, i32 10
  %110 = ptrtoint ptr %sg_len.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %sg_len.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.mmc_data, ptr %101, i32 0, i32 6
  %112 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %flags.i.i.i, align 4
  %and.i10.i.i = and i32 %113, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i10.i.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %107, ptr noundef %109, i32 noundef %111, i32 noundef %cond.i.i.i, i32 noundef 0) #8
  br label %meson_mmc_request_done.exit

meson_mmc_request_done.exit:                      ; preds = %if.then.i.i, %land.lhs.true2.i.i.meson_mmc_request_done.exit_crit_edge, %land.lhs.true.i.i.meson_mmc_request_done.exit_crit_edge, %if.then.i255.meson_mmc_request_done.exit_crit_edge, %if.then190.meson_mmc_request_done.exit_crit_edge
  %mmc1.i = getelementptr inbounds %struct.mmc_host, ptr %94, i32 1, i32 1
  %114 = ptrtoint ptr %mmc1.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mmc1.i, align 4
  tail call void @mmc_request_done(ptr noundef %115, ptr noundef %96) #8
  br label %cleanup

cleanup:                                          ; preds = %meson_mmc_request_done.exit, %if.end189.cleanup_crit_edge, %do.end69, %do.end34, %if.then14, %do.body
  %retval.0 = phi i32 [ 0, %if.then14 ], [ 0, %do.end69 ], [ 0, %do.end34 ], [ 1, %meson_mmc_request_done.exit ], [ %ret.1263, %if.end189.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mmc_irq_thread(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %miter.i = alloca %struct.sg_mapping_iter, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.meson_host, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !152

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1030, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end24:                                         ; preds = %entry
  %error = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool25.not = icmp eq i32 %3, 0
  br i1 %tobool25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end24
  %call.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call.i, 5000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 1020) #8
  %regs.i = getelementptr inbounds %struct.meson_host, ptr %dev_id, i32 0, i32 4
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 72
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %7 = and i32 %6, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not3.i = icmp eq i32 %7, 0
  br i1 %tobool.not3.i, label %if.then26.meson_mmc_wait_desc_stop.exit_crit_edge, label %if.then26.land.lhs.true.i_crit_edge

if.then26.land.lhs.true.i_crit_edge:              ; preds = %if.then26
  br label %land.lhs.true.i

if.then26.meson_mmc_wait_desc_stop.exit_crit_edge: ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_wait_desc_stop.exit

land.lhs.true.i:                                  ; preds = %if.then26.i.land.lhs.true.i_crit_edge, %if.then26.land.lhs.true.i_crit_edge
  %call13.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then16.i, label %if.then26.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %9, i32 72
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  br label %meson_mmc_wait_desc_stop.exit

if.then26.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #8
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 72
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %14 = and i32 %13, 192
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.then26.i.meson_mmc_wait_desc_stop.exit_crit_edge, label %if.then26.i.land.lhs.true.i_crit_edge

if.then26.i.land.lhs.true.i_crit_edge:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.then26.i.meson_mmc_wait_desc_stop.exit_crit_edge: ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_wait_desc_stop.exit

meson_mmc_wait_desc_stop.exit:                    ; preds = %if.then26.i.meson_mmc_wait_desc_stop.exit_crit_edge, %if.then16.i, %if.then26.meson_mmc_wait_desc_stop.exit_crit_edge
  %mmc = getelementptr inbounds %struct.meson_host, ptr %dev_id, i32 0, i32 2
  %15 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmc, align 4
  %mrq = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mrq, align 4
  %private.i.i = getelementptr inbounds %struct.mmc_host, ptr %16, i32 0, i32 70
  %cmd.i = getelementptr inbounds %struct.mmc_host, ptr %16, i32 1, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %cmd.i, align 4
  %needs_pre_post_req.i = getelementptr inbounds %struct.meson_host, ptr %private.i.i, i32 0, i32 21
  %20 = ptrtoint ptr %needs_pre_post_req.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %needs_pre_post_req.i, align 1, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i101 = icmp eq i8 %21, 0
  br i1 %tobool.not.i101, label %meson_mmc_wait_desc_stop.exit.meson_mmc_request_done.exit_crit_edge, label %if.then.i

meson_mmc_wait_desc_stop.exit.meson_mmc_request_done.exit_crit_edge: ; preds = %meson_mmc_wait_desc_stop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_request_done.exit

if.then.i:                                        ; preds = %meson_mmc_wait_desc_stop.exit
  %data1.i.i = getelementptr inbounds %struct.mmc_request, ptr %18, i32 0, i32 2
  %22 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %if.then.i.meson_mmc_request_done.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.meson_mmc_request_done.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_request_done.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %host_cookie.i.i.i = getelementptr inbounds %struct.mmc_data, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %host_cookie.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %host_cookie.i.i.i, align 4
  %and.i.i.i = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %land.lhs.true.i.i.meson_mmc_request_done.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.meson_mmc_request_done.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_request_done.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %sg_count.i.i = getelementptr inbounds %struct.mmc_data, ptr %23, i32 0, i32 11
  %26 = ptrtoint ptr %sg_count.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sg_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool3.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true2.i.i.meson_mmc_request_done.exit_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.meson_mmc_request_done.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_request_done.exit

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %16, align 128
  %sg.i.i = getelementptr inbounds %struct.mmc_data, ptr %23, i32 0, i32 12
  %30 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sg.i.i, align 4
  %sg_len.i.i = getelementptr inbounds %struct.mmc_data, ptr %23, i32 0, i32 10
  %32 = ptrtoint ptr %sg_len.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sg_len.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.mmc_data, ptr %23, i32 0, i32 6
  %34 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i.i.i, align 4
  %and.i10.i.i = and i32 %35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i10.i.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %29, ptr noundef %31, i32 noundef %33, i32 noundef %cond.i.i.i, i32 noundef 0) #8
  br label %meson_mmc_request_done.exit

meson_mmc_request_done.exit:                      ; preds = %if.then.i.i, %land.lhs.true2.i.i.meson_mmc_request_done.exit_crit_edge, %land.lhs.true.i.i.meson_mmc_request_done.exit_crit_edge, %if.then.i.meson_mmc_request_done.exit_crit_edge, %meson_mmc_wait_desc_stop.exit.meson_mmc_request_done.exit_crit_edge
  %mmc1.i = getelementptr inbounds %struct.mmc_host, ptr %16, i32 1, i32 1
  %36 = ptrtoint ptr %mmc1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmc1.i, align 4
  tail call void @mmc_request_done(ptr noundef %37, ptr noundef %18) #8
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  %data28 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 7
  %38 = ptrtoint ptr %data28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data28, align 4
  %tobool.not.i102 = icmp eq ptr %39, null
  br i1 %tobool.not.i102, label %if.end27.if.end65_crit_edge, label %land.lhs.true.i103

if.end27.if.end65_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

land.lhs.true.i103:                               ; preds = %if.end27
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %41, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i103.if.end65_crit_edge, label %meson_mmc_bounce_buf_read.exit

land.lhs.true.i103.if.end65_crit_edge:            ; preds = %land.lhs.true.i103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

meson_mmc_bounce_buf_read.exit:                   ; preds = %land.lhs.true.i103
  %host_cookie.i.i = getelementptr inbounds %struct.mmc_data, ptr %39, i32 0, i32 13
  %42 = ptrtoint ptr %host_cookie.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %host_cookie.i.i, align 4
  %and.i.i = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then30, label %meson_mmc_bounce_buf_read.exit.if.end65_crit_edge

meson_mmc_bounce_buf_read.exit.if.end65_crit_edge: ; preds = %meson_mmc_bounce_buf_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then30:                                        ; preds = %meson_mmc_bounce_buf_read.exit
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %39, i32 0, i32 2
  %44 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %blksz, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %39, i32 0, i32 3
  %46 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %blocks, align 4
  %mul = mul i32 %47, %45
  %bounce_buf_size = getelementptr inbounds %struct.meson_host, ptr %dev_id, i32 0, i32 13
  %48 = ptrtoint ptr %bounce_buf_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bounce_buf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %49)
  %cmp = icmp ugt i32 %mul, %49
  br i1 %cmp, label %do.end47, label %if.then30.if.end53_crit_edge, !prof !152

if.then30.if.end53_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

do.end47:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1043, i32 noundef 9, ptr noundef null) #8
  br label %if.end53

if.end53:                                         ; preds = %do.end47, %if.then30.if.end53_crit_edge
  %dram_access_quirk = getelementptr inbounds %struct.meson_host, ptr %dev_id, i32 0, i32 10
  %50 = ptrtoint ptr %dram_access_quirk to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %dram_access_quirk, align 1, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool61.not = icmp eq i8 %51, 0
  %sg = getelementptr inbounds %struct.mmc_data, ptr %39, i32 0, i32 12
  %52 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %39, i32 0, i32 10
  %54 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sg_len, align 4
  br i1 %tobool61.not, label %if.else, label %if.then62

if.then62:                                        ; preds = %if.end53
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %miter.i) #8
  %56 = call ptr @memset(ptr %miter.i, i32 255, i32 44)
  call void @sg_miter_start(ptr noundef nonnull %miter.i, ptr noundef %53, i32 noundef %55, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp48.not.i = icmp eq i32 %mul, 0
  br i1 %cmp48.not.i, label %if.then62.meson_mmc_copy_buffer.exit_crit_edge, label %land.rhs.lr.ph.i

if.then62.meson_mmc_copy_buffer.exit_crit_edge:   ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_copy_buffer.exit

land.rhs.lr.ph.i:                                 ; preds = %if.then62
  %addr.i = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter.i, i32 0, i32 1
  %length.i = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter.i, i32 0, i32 2
  %bounce_iomem_buf13.i = getelementptr inbounds %struct.meson_host, ptr %dev_id, i32 0, i32 15
  br label %land.rhs.i105

land.rhs.i105:                                    ; preds = %if.end25.i.land.rhs.i105_crit_edge, %land.rhs.lr.ph.i
  %offset.049.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %add26.i, %if.end25.i.land.rhs.i105_crit_edge ]
  %call.i104 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %miter.i) #8
  br i1 %call.i104, label %while.body.i, label %land.rhs.i105.meson_mmc_copy_buffer.exit_crit_edge

land.rhs.i105.meson_mmc_copy_buffer.exit_crit_edge: ; preds = %land.rhs.i105
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_copy_buffer.exit

while.body.i:                                     ; preds = %land.rhs.i105
  %57 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %addr.i, align 4
  %59 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %length.i, align 4
  %sub.i = sub i32 %mul, %offset.049.i
  %61 = call i32 @llvm.umin.i32(i32 %60, i32 %sub.i) #8
  br label %do.body12.i

do.body12.i:                                      ; preds = %do.body12.i.do.body12.i_crit_edge, %while.body.i
  %left.1.i = phi i32 [ %sub21.i, %do.body12.i.do.body12.i_crit_edge ], [ %61, %while.body.i ]
  %buf.1.i = phi ptr [ %incdec.ptr19.i, %do.body12.i.do.body12.i_crit_edge ], [ %58, %while.body.i ]
  %buf_offset.1.i = phi i32 [ %add20.i, %do.body12.i.do.body12.i_crit_edge ], [ 0, %while.body.i ]
  %62 = ptrtoint ptr %bounce_iomem_buf13.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bounce_iomem_buf13.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %63, i32 %offset.049.i
  %add.ptr15.i = getelementptr i8, ptr %add.ptr14.i, i32 %buf_offset.1.i
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #8, !srcloc !153
  %65 = call i32 @llvm.bswap.i32(i32 %64) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !167
  %incdec.ptr19.i = getelementptr i32, ptr %buf.1.i, i32 1
  %66 = ptrtoint ptr %buf.1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %buf.1.i, align 4
  %add20.i = add i32 %buf_offset.1.i, 4
  %sub21.i = add i32 %left.1.i, -4
  %tobool23.not.i = icmp eq i32 %sub21.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %do.body12.i.do.body12.i_crit_edge

do.body12.i.do.body12.i_crit_edge:                ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12.i

if.end25.i:                                       ; preds = %do.body12.i
  %add26.i = add i32 %61, %offset.049.i
  %cmp.i = icmp ult i32 %add26.i, %mul
  br i1 %cmp.i, label %if.end25.i.land.rhs.i105_crit_edge, label %if.end25.i.meson_mmc_copy_buffer.exit_crit_edge

if.end25.i.meson_mmc_copy_buffer.exit_crit_edge:  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_copy_buffer.exit

if.end25.i.land.rhs.i105_crit_edge:               ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i105

meson_mmc_copy_buffer.exit:                       ; preds = %if.end25.i.meson_mmc_copy_buffer.exit_crit_edge, %land.rhs.i105.meson_mmc_copy_buffer.exit_crit_edge, %if.then62.meson_mmc_copy_buffer.exit_crit_edge
  call void @sg_miter_stop(ptr noundef nonnull %miter.i) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %miter.i) #8
  br label %if.end65

if.else:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %bounce_buf = getelementptr inbounds %struct.meson_host, ptr %dev_id, i32 0, i32 14
  %67 = ptrtoint ptr %bounce_buf to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bounce_buf, align 4
  %call63 = tail call i32 @sg_copy_from_buffer(ptr noundef %53, i32 noundef %55, ptr noundef %68, i32 noundef %mul) #8
  br label %if.end65

if.end65:                                         ; preds = %if.else, %meson_mmc_copy_buffer.exit, %meson_mmc_bounce_buf_read.exit.if.end65_crit_edge, %land.lhs.true.i103.if.end65_crit_edge, %if.end27.if.end65_crit_edge
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %1, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %70, label %if.end65.if.else70_crit_edge [
    i32 23, label %land.lhs.true.i107
    i32 25, label %if.end65.land.lhs.true3.i_crit_edge
    i32 18, label %if.end65.land.lhs.true3.i_crit_edge134
  ]

if.end65.land.lhs.true3.i_crit_edge134:           ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true3.i

if.end65.land.lhs.true3.i_crit_edge:              ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true3.i

if.end65.if.else70_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else70

land.lhs.true.i107:                               ; preds = %if.end65
  %72 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i106 = icmp eq i32 %73, 0
  br i1 %tobool.not.i106, label %if.then.i108, label %land.lhs.true.i107.if.else70_crit_edge

land.lhs.true.i107.if.else70_crit_edge:           ; preds = %land.lhs.true.i107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else70

if.then.i108:                                     ; preds = %land.lhs.true.i107
  call void @__sanitizer_cov_trace_pc() #10
  %mrq.i = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 8
  %74 = ptrtoint ptr %mrq.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mrq.i, align 4
  %cmd1.i = getelementptr inbounds %struct.mmc_request, ptr %75, i32 0, i32 1
  br label %meson_mmc_get_next_command.exit

land.lhs.true3.i:                                 ; preds = %if.end65.land.lhs.true3.i_crit_edge, %if.end65.land.lhs.true3.i_crit_edge134
  %mrq4.i = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 8
  %76 = ptrtoint ptr %mrq4.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mrq4.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %tobool5.not.i = icmp eq ptr %79, null
  br i1 %tobool5.not.i, label %land.lhs.true3.i.if.then11.i_crit_edge, label %lor.lhs.false.i

land.lhs.true3.i.if.then11.i_crit_edge:           ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true3.i
  %80 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool7.not.i = icmp eq i32 %81, 0
  br i1 %tobool7.not.i, label %lor.lhs.false8.i, label %lor.lhs.false.i.if.then11.i_crit_edge

lor.lhs.false.i.if.then11.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %82 = ptrtoint ptr %data28 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data28, align 4
  %error9.i = getelementptr inbounds %struct.mmc_data, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %error9.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %error9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool10.not.i = icmp eq i32 %85, 0
  br i1 %tobool10.not.i, label %lor.lhs.false8.i.if.else70_crit_edge, label %lor.lhs.false8.i.if.then11.i_crit_edge

lor.lhs.false8.i.if.then11.i_crit_edge:           ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i

lor.lhs.false8.i.if.else70_crit_edge:             ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else70

if.then11.i:                                      ; preds = %lor.lhs.false8.i.if.then11.i_crit_edge, %lor.lhs.false.i.if.then11.i_crit_edge, %land.lhs.true3.i.if.then11.i_crit_edge
  %stop.i = getelementptr inbounds %struct.mmc_request, ptr %77, i32 0, i32 3
  br label %meson_mmc_get_next_command.exit

meson_mmc_get_next_command.exit:                  ; preds = %if.then11.i, %if.then.i108
  %stop.sink.i = phi ptr [ %stop.i, %if.then11.i ], [ %cmd1.i, %if.then.i108 ]
  %86 = ptrtoint ptr %stop.sink.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %stop.sink.i, align 4
  %tobool67.not = icmp eq ptr %87, null
  br i1 %tobool67.not, label %meson_mmc_get_next_command.exit.if.else70_crit_edge, label %if.then68

meson_mmc_get_next_command.exit.if.else70_crit_edge: ; preds = %meson_mmc_get_next_command.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else70

if.then68:                                        ; preds = %meson_mmc_get_next_command.exit
  call void @__sanitizer_cov_trace_pc() #10
  %mmc69 = getelementptr inbounds %struct.meson_host, ptr %dev_id, i32 0, i32 2
  %88 = ptrtoint ptr %mmc69 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mmc69, align 4
  call fastcc void @meson_mmc_start_cmd(ptr noundef %89, ptr noundef nonnull %87)
  br label %cleanup

if.else70:                                        ; preds = %meson_mmc_get_next_command.exit.if.else70_crit_edge, %lor.lhs.false8.i.if.else70_crit_edge, %land.lhs.true.i107.if.else70_crit_edge, %if.end65.if.else70_crit_edge
  %mmc71 = getelementptr inbounds %struct.meson_host, ptr %dev_id, i32 0, i32 2
  %90 = ptrtoint ptr %mmc71 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mmc71, align 4
  %mrq72 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 8
  %92 = ptrtoint ptr %mrq72 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mrq72, align 4
  %private.i.i109 = getelementptr inbounds %struct.mmc_host, ptr %91, i32 0, i32 70
  %cmd.i110 = getelementptr inbounds %struct.mmc_host, ptr %91, i32 1, i32 1, i32 0, i32 1
  %94 = ptrtoint ptr %cmd.i110 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %cmd.i110, align 4
  %needs_pre_post_req.i111 = getelementptr inbounds %struct.meson_host, ptr %private.i.i109, i32 0, i32 21
  %95 = ptrtoint ptr %needs_pre_post_req.i111 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %needs_pre_post_req.i111, align 1, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool.not.i112 = icmp eq i8 %96, 0
  br i1 %tobool.not.i112, label %if.else70.meson_mmc_request_done.exit131_crit_edge, label %if.then.i115

if.else70.meson_mmc_request_done.exit131_crit_edge: ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_request_done.exit131

if.then.i115:                                     ; preds = %if.else70
  %data1.i.i113 = getelementptr inbounds %struct.mmc_request, ptr %93, i32 0, i32 2
  %97 = ptrtoint ptr %data1.i.i113 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data1.i.i113, align 4
  %tobool.not.i.i114 = icmp eq ptr %98, null
  br i1 %tobool.not.i.i114, label %if.then.i115.meson_mmc_request_done.exit131_crit_edge, label %land.lhs.true.i.i119

if.then.i115.meson_mmc_request_done.exit131_crit_edge: ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_request_done.exit131

land.lhs.true.i.i119:                             ; preds = %if.then.i115
  %host_cookie.i.i.i116 = getelementptr inbounds %struct.mmc_data, ptr %98, i32 0, i32 13
  %99 = ptrtoint ptr %host_cookie.i.i.i116 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %host_cookie.i.i.i116, align 4
  %and.i.i.i117 = and i32 %100, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i117)
  %tobool.i.not.i.i118 = icmp eq i32 %and.i.i.i117, 0
  br i1 %tobool.i.not.i.i118, label %land.lhs.true.i.i119.meson_mmc_request_done.exit131_crit_edge, label %land.lhs.true2.i.i122

land.lhs.true.i.i119.meson_mmc_request_done.exit131_crit_edge: ; preds = %land.lhs.true.i.i119
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_request_done.exit131

land.lhs.true2.i.i122:                            ; preds = %land.lhs.true.i.i119
  %sg_count.i.i120 = getelementptr inbounds %struct.mmc_data, ptr %98, i32 0, i32 11
  %101 = ptrtoint ptr %sg_count.i.i120 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %sg_count.i.i120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool3.not.i.i121 = icmp eq i32 %102, 0
  br i1 %tobool3.not.i.i121, label %land.lhs.true2.i.i122.meson_mmc_request_done.exit131_crit_edge, label %if.then.i.i129

land.lhs.true2.i.i122.meson_mmc_request_done.exit131_crit_edge: ; preds = %land.lhs.true2.i.i122
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_request_done.exit131

if.then.i.i129:                                   ; preds = %land.lhs.true2.i.i122
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %91, align 128
  %sg.i.i123 = getelementptr inbounds %struct.mmc_data, ptr %98, i32 0, i32 12
  %105 = ptrtoint ptr %sg.i.i123 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sg.i.i123, align 4
  %sg_len.i.i124 = getelementptr inbounds %struct.mmc_data, ptr %98, i32 0, i32 10
  %107 = ptrtoint ptr %sg_len.i.i124 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %sg_len.i.i124, align 4
  %flags.i.i.i125 = getelementptr inbounds %struct.mmc_data, ptr %98, i32 0, i32 6
  %109 = ptrtoint ptr %flags.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %flags.i.i.i125, align 4
  %and.i10.i.i126 = and i32 %110, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10.i.i126)
  %tobool.not.i.i.i127 = icmp eq i32 %and.i10.i.i126, 0
  %cond.i.i.i128 = select i1 %tobool.not.i.i.i127, i32 2, i32 1
  call void @dma_unmap_sg_attrs(ptr noundef %104, ptr noundef %106, i32 noundef %108, i32 noundef %cond.i.i.i128, i32 noundef 0) #8
  br label %meson_mmc_request_done.exit131

meson_mmc_request_done.exit131:                   ; preds = %if.then.i.i129, %land.lhs.true2.i.i122.meson_mmc_request_done.exit131_crit_edge, %land.lhs.true.i.i119.meson_mmc_request_done.exit131_crit_edge, %if.then.i115.meson_mmc_request_done.exit131_crit_edge, %if.else70.meson_mmc_request_done.exit131_crit_edge
  %mmc1.i130 = getelementptr inbounds %struct.mmc_host, ptr %91, i32 1, i32 1
  %111 = ptrtoint ptr %mmc1.i130 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mmc1.i130, align 4
  call void @mmc_request_done(ptr noundef %112, ptr noundef %93) #8
  br label %cleanup

cleanup:                                          ; preds = %meson_mmc_request_done.exit131, %if.then68, %meson_mmc_request_done.exit, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %meson_mmc_request_done.exit ], [ 1, %meson_mmc_request_done.exit131 ], [ 1, %if.then68 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__device_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_mmc_post_req(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readonly %mrq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %host_cookie.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %host_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %host_cookie.i, align 4
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sg_count = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %sg_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %land.lhs.true2.if.end_crit_edge, label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc, align 128
  %sg = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sg_len, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %and.i10 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10)
  %tobool.not.i = icmp eq i32 %and.i10, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %cond.i, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_mmc_copy_buffer(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %data, i32 noundef %buflen, i1 noundef zeroext %to_buffer) unnamed_addr #2 align 64 {
entry:
  %miter = alloca %struct.sg_mapping_iter, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sg = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %0 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %2 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sg_len, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %miter) #8
  %4 = call ptr @memset(ptr %miter, i32 255, i32 44)
  %. = select i1 %to_buffer, i32 5, i32 3
  call void @sg_miter_start(ptr noundef nonnull %miter, ptr noundef %1, i32 noundef %3, i32 noundef %.) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %cmp48.not = icmp eq i32 %buflen, 0
  br i1 %cmp48.not, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %addr = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 1
  %length = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 2
  %bounce_iomem_buf13 = getelementptr inbounds %struct.meson_host, ptr %host, i32 0, i32 15
  br label %land.rhs

land.rhs:                                         ; preds = %if.end25.land.rhs_crit_edge, %land.rhs.lr.ph
  %offset.049 = phi i32 [ 0, %land.rhs.lr.ph ], [ %add26, %if.end25.land.rhs_crit_edge ]
  %call = call zeroext i1 @sg_miter_next(ptr noundef nonnull %miter) #8
  br i1 %call, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %addr, align 4
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length, align 4
  %sub = sub i32 %buflen, %offset.049
  %9 = call i32 @llvm.umin.i32(i32 %8, i32 %sub)
  br i1 %to_buffer, label %while.body.do.body_crit_edge, label %while.body.do.body12_crit_edge

while.body.do.body12_crit_edge:                   ; preds = %while.body
  br label %do.body12

while.body.do.body_crit_edge:                     ; preds = %while.body
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %while.body.do.body_crit_edge
  %left.0 = phi i32 [ %sub7, %do.body.do.body_crit_edge ], [ %9, %while.body.do.body_crit_edge ]
  %buf.0 = phi ptr [ %incdec.ptr, %do.body.do.body_crit_edge ], [ %6, %while.body.do.body_crit_edge ]
  %buf_offset.0 = phi i32 [ %add, %do.body.do.body_crit_edge ], [ 0, %while.body.do.body_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  call void @arm_heavy_mb() #8
  %incdec.ptr = getelementptr i32, ptr %buf.0, i32 1
  %10 = ptrtoint ptr %buf.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf.0, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %bounce_iomem_buf13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bounce_iomem_buf13, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %offset.049
  %add.ptr6 = getelementptr i8, ptr %add.ptr, i32 %buf_offset.0
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %12) #8, !srcloc !143
  %add = add i32 %buf_offset.0, 4
  %sub7 = add i32 %left.0, -4
  %tobool9.not = icmp eq i32 %sub7, 0
  br i1 %tobool9.not, label %do.body.if.end25_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body.if.end25_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

do.body12:                                        ; preds = %do.body12.do.body12_crit_edge, %while.body.do.body12_crit_edge
  %left.1 = phi i32 [ %sub21, %do.body12.do.body12_crit_edge ], [ %9, %while.body.do.body12_crit_edge ]
  %buf.1 = phi ptr [ %incdec.ptr19, %do.body12.do.body12_crit_edge ], [ %6, %while.body.do.body12_crit_edge ]
  %buf_offset.1 = phi i32 [ %add20, %do.body12.do.body12_crit_edge ], [ 0, %while.body.do.body12_crit_edge ]
  %15 = ptrtoint ptr %bounce_iomem_buf13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bounce_iomem_buf13, align 4
  %add.ptr14 = getelementptr i8, ptr %16, i32 %offset.049
  %add.ptr15 = getelementptr i8, ptr %add.ptr14, i32 %buf_offset.1
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #8, !srcloc !153
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !167
  %incdec.ptr19 = getelementptr i32, ptr %buf.1, i32 1
  %19 = ptrtoint ptr %buf.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %buf.1, align 4
  %add20 = add i32 %buf_offset.1, 4
  %sub21 = add i32 %left.1, -4
  %tobool23.not = icmp eq i32 %sub21, 0
  br i1 %tobool23.not, label %do.body12.if.end25_crit_edge, label %do.body12.do.body12_crit_edge

do.body12.do.body12_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12

do.body12.if.end25_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end25:                                         ; preds = %do.body12.if.end25_crit_edge, %do.body.if.end25_crit_edge
  %add26 = add i32 %9, %offset.049
  %cmp = icmp ult i32 %add26, %buflen
  br i1 %cmp, label %if.end25.land.rhs_crit_edge, label %if.end25.while.end_crit_edge

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end25.land.rhs_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.end:                                        ; preds = %if.end25.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  call void @sg_miter_stop(ptr noundef nonnull %miter) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %miter) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_mmc_start_cmd(ptr nocapture noundef %mmc, ptr noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %data1 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 7
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !169
  %cmd2 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %cmd2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cmd, ptr %cmd2, align 4
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmd, align 4
  %shl = shl i32 %4, 24
  %or19 = or i32 %shl, -1073741824
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end19.sink.split.i_crit_edge, label %if.then.i

entry.if.end19.sink.split.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.sink.split.i

if.then.i:                                        ; preds = %entry
  %and2.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %or.i = or i32 %shl, -1071644672
  %spec.select = select i1 %tobool3.not.i, i32 %or19, i32 %or.i
  %and7.i = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %cmd_cfg.1.v = select i1 %tobool8.not.i, i32 5242880, i32 4194304
  %cmd_cfg.1 = or i32 %spec.select, %cmd_cfg.1.v
  %and13.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.then.i.meson_mmc_set_response_bits.exit_crit_edge, label %if.then.i.if.end19.sink.split.i_crit_edge

if.then.i.if.end19.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.sink.split.i

if.then.i.meson_mmc_set_response_bits.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_set_response_bits.exit

if.end19.sink.split.i:                            ; preds = %if.then.i.if.end19.sink.split.i_crit_edge, %entry.if.end19.sink.split.i_crit_edge
  %cmd_cfg.2 = phi i32 [ %or19, %entry.if.end19.sink.split.i_crit_edge ], [ %cmd_cfg.1, %if.then.i.if.end19.sink.split.i_crit_edge ]
  %.sink27.i = phi i32 [ 65536, %entry.if.end19.sink.split.i_crit_edge ], [ 1024, %if.then.i.if.end19.sink.split.i_crit_edge ]
  %or16.i = or i32 %.sink27.i, %cmd_cfg.2
  br label %meson_mmc_set_response_bits.exit

meson_mmc_set_response_bits.exit:                 ; preds = %if.end19.sink.split.i, %if.then.i.meson_mmc_set_response_bits.exit_crit_edge
  %cmd_cfg.3 = phi i32 [ %or16.i, %if.end19.sink.split.i ], [ %cmd_cfg.1, %if.then.i.meson_mmc_set_response_bits.exit_crit_edge ]
  %tobool20.not = icmp eq ptr %1, null
  br i1 %tobool20.not, label %do.end160, label %if.then21

if.then21:                                        ; preds = %meson_mmc_set_response_bits.exit
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %bytes_xfered, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %9)
  %10 = icmp ult i32 %9, 1000000
  br i1 %10, label %if.then21.meson_mmc_get_timeout_msecs.exit_crit_edge, label %cond.false15.i

if.then21.meson_mmc_get_timeout_msecs.exit_crit_edge: ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_get_timeout_msecs.exit

cond.false15.i:                                   ; preds = %if.then21
  %div.i = udiv i32 %9, 1000000
  %sub.i35.i = add nsw i32 %div.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i35.i)
  %tobool.not.i.i.i.i = icmp eq i32 %sub.i35.i, 0
  br i1 %tobool.not.i.i.i.i, label %cond.false15.i.cond.end17.thread.i_crit_edge, label %cond.end17.i

cond.false15.i.cond.end17.thread.i_crit_edge:     ; preds = %cond.false15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end17.thread.i

cond.end17.i:                                     ; preds = %cond.false15.i
  %11 = tail call i32 @llvm.ctlz.i32(i32 %sub.i35.i, i1 true) #8, !range !170
  %sub.i.i.i.i = sub nuw nsw i32 32, %11
  %cond18.i = shl nuw i32 1, %sub.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %sub.i35.i)
  %cmp19.i = icmp ult i32 %sub.i35.i, 16384
  br i1 %cmp19.i, label %cond.end17.i.cond.end17.thread.i_crit_edge, label %cond.end17.i.meson_mmc_get_timeout_msecs.exit_crit_edge

cond.end17.i.meson_mmc_get_timeout_msecs.exit_crit_edge: ; preds = %cond.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_get_timeout_msecs.exit

cond.end17.i.cond.end17.thread.i_crit_edge:       ; preds = %cond.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end17.thread.i

cond.end17.thread.i:                              ; preds = %cond.end17.i.cond.end17.thread.i_crit_edge, %cond.false15.i.cond.end17.thread.i_crit_edge
  %cond1838.i = phi i32 [ %cond18.i, %cond.end17.i.cond.end17.thread.i_crit_edge ], [ 1, %cond.false15.i.cond.end17.thread.i_crit_edge ]
  br label %meson_mmc_get_timeout_msecs.exit

meson_mmc_get_timeout_msecs.exit:                 ; preds = %cond.end17.thread.i, %cond.end17.i.meson_mmc_get_timeout_msecs.exit_crit_edge, %if.then21.meson_mmc_get_timeout_msecs.exit_crit_edge
  %retval.0.i = phi i32 [ 4096, %if.then21.meson_mmc_get_timeout_msecs.exit_crit_edge ], [ %cond1838.i, %cond.end17.thread.i ], [ 32768, %cond.end17.i.meson_mmc_get_timeout_msecs.exit_crit_edge ]
  %12 = tail call i32 @llvm.ctlz.i32(i32 %retval.0.i, i1 true) #8, !range !170
  %sub.i.op.i = shl nuw nsw i32 %12, 12
  %shl41 = and i32 %sub.i.op.i, 61440
  %and42 = xor i32 %shl41, 61440
  %or22 = or i32 %and42, %cmd_cfg.3
  %or43 = or i32 %or22, 262144
  %host_cookie.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %host_cookie.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %host_cookie.i, align 4
  %and.i232 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i232)
  %tobool.i.not = icmp eq i32 %and.i232, 0
  br i1 %tobool.i.not, label %if.end46, label %if.then45

if.then45:                                        ; preds = %meson_mmc_get_timeout_msecs.exit
  %descs.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  %15 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %descs.i, align 4
  %17 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmd2, align 4
  %data1.i = getelementptr inbounds %struct.mmc_command, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data1.i, align 4
  %flags.i233 = getelementptr inbounds %struct.mmc_data, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %flags.i233 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i233, align 4
  %and.i234 = shl i32 %22, 11
  %23 = and i32 %and.i234, 524288
  %24 = or i32 %23, %or43
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %20, i32 0, i32 3
  %25 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i = icmp ugt i32 %26, 1
  br i1 %cmp.i, label %if.then2.i, label %if.then45.if.end4.i_crit_edge

if.then45.if.end4.i_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %or3.i = or i32 %24, 512
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %20, i32 0, i32 2
  %27 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %blksz.i, align 4
  tail call fastcc void @meson_mmc_set_blksz(ptr noundef %mmc, i32 noundef %28) #8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.then45.if.end4.i_crit_edge
  %cmd_cfg.addr.1.i = phi i32 [ %or3.i, %if.then2.i ], [ %24, %if.then45.if.end4.i_crit_edge ]
  %sg_count.i = getelementptr inbounds %struct.mmc_data, ptr %20, i32 0, i32 11
  %29 = ptrtoint ptr %sg_count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sg_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp687.i = icmp sgt i32 %30, 0
  br i1 %cmp687.i, label %for.body.lr.ph.i, label %if.end4.i.meson_mmc_desc_chain_transfer.exit_crit_edge

if.end4.i.meson_mmc_desc_chain_transfer.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_desc_chain_transfer.exit

for.body.lr.ph.i:                                 ; preds = %if.end4.i
  %sg5.i = getelementptr inbounds %struct.mmc_data, ptr %20, i32 0, i32 12
  %31 = ptrtoint ptr %sg5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sg5.i, align 4
  %blksz10.i = getelementptr inbounds %struct.mmc_data, ptr %20, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end11.i237.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.089.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end11.i237.for.body.i_crit_edge ]
  %sg.088.i = phi ptr [ %32, %for.body.lr.ph.i ], [ %call43.i, %if.end11.i237.for.body.i_crit_edge ]
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.088.i, i32 0, i32 4
  %33 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_length.i, align 4
  %35 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp8.i = icmp ugt i32 %36, 1
  br i1 %cmp8.i, label %if.then9.i236, label %for.body.i.if.end11.i237_crit_edge

for.body.i.if.end11.i237_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i237

if.then9.i236:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %blksz10.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %blksz10.i, align 4
  %div.i235 = udiv i32 %34, %38
  br label %if.end11.i237

if.end11.i237:                                    ; preds = %if.then9.i236, %for.body.i.if.end11.i237_crit_edge
  %len.0.i = phi i32 [ %div.i235, %if.then9.i236 ], [ %34, %for.body.i.if.end11.i237_crit_edge ]
  %arrayidx.i = getelementptr %struct.sd_emmc_desc, ptr %16, i32 %i.089.i
  %and29.i = and i32 %len.0.i, 511
  %or32.i = or i32 %and29.i, %cmd_cfg.addr.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.089.i)
  %cmp33.not.i = icmp eq i32 %i.089.i, 0
  %or37.i = or i32 %or32.i, 131072
  %spec.select85.i = select i1 %cmp33.not.i, i32 %or32.i, i32 %or37.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %spec.select85.i, ptr %arrayidx.i, align 4
  %40 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cmd2, align 4
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arg.i, align 4
  %cmd_arg.i = getelementptr %struct.sd_emmc_desc, ptr %16, i32 %i.089.i, i32 1
  %44 = ptrtoint ptr %cmd_arg.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %cmd_arg.i, align 4
  %cmd_resp.i = getelementptr %struct.sd_emmc_desc, ptr %16, i32 %i.089.i, i32 3
  %45 = ptrtoint ptr %cmd_resp.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %cmd_resp.i, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.088.i, i32 0, i32 3
  %46 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_address.i, align 4
  %cmd_data.i = getelementptr %struct.sd_emmc_desc, ptr %16, i32 %i.089.i, i32 2
  %48 = ptrtoint ptr %cmd_data.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %cmd_data.i, align 4
  %inc.i = add nuw nsw i32 %i.089.i, 1
  %call43.i = tail call ptr @sg_next(ptr noundef %sg.088.i) #8
  %49 = ptrtoint ptr %sg_count.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sg_count.i, align 4
  %cmp6.i = icmp slt i32 %inc.i, %50
  br i1 %cmp6.i, label %if.end11.i237.for.body.i_crit_edge, label %if.end11.i237.meson_mmc_desc_chain_transfer.exit_crit_edge

if.end11.i237.meson_mmc_desc_chain_transfer.exit_crit_edge: ; preds = %if.end11.i237
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_desc_chain_transfer.exit

if.end11.i237.for.body.i_crit_edge:               ; preds = %if.end11.i237
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

meson_mmc_desc_chain_transfer.exit:               ; preds = %if.end11.i237.meson_mmc_desc_chain_transfer.exit_crit_edge, %if.end4.i.meson_mmc_desc_chain_transfer.exit_crit_edge
  %.lcssa.i = phi i32 [ %30, %if.end4.i.meson_mmc_desc_chain_transfer.exit_crit_edge ], [ %50, %if.end11.i237.meson_mmc_desc_chain_transfer.exit_crit_edge ]
  %sub.i238 = add i32 %.lcssa.i, -1
  %arrayidx45.i = getelementptr %struct.sd_emmc_desc, ptr %16, i32 %sub.i238
  %51 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx45.i, align 4
  %or47.i = or i32 %52, 2048
  store i32 %or47.i, ptr %arrayidx45.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !171
  %descs_dma_addr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 2
  %53 = ptrtoint ptr %descs_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %descs_dma_addr.i, align 4
  %or48.i = or i32 %54, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  tail call void @arm_heavy_mb() #8
  %55 = tail call i32 @llvm.bswap.i32(i32 %or48.i) #8
  %regs.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %57, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %55) #8, !srcloc !143
  br label %cleanup

if.end46:                                         ; preds = %meson_mmc_get_timeout_msecs.exit
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %58 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp = icmp ugt i32 %59, 1
  br i1 %cmp, label %do.end71, label %do.end99

do.end71:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %and75 = and i32 %59, 511
  %or48 = or i32 %or22, %and75
  %or76 = or i32 %or48, 262656
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %60 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %blksz, align 4
  tail call fastcc void @meson_mmc_set_blksz(ptr noundef %mmc, i32 noundef %61)
  br label %if.end105

do.end99:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %blksz84 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %62 = ptrtoint ptr %blksz84 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %blksz84, align 4
  %and103 = and i32 %63, 511
  %or104 = or i32 %and103, %or43
  br label %if.end105

if.end105:                                        ; preds = %do.end99, %do.end71
  %cmd_cfg.4 = phi i32 [ %or76, %do.end71 ], [ %or104, %do.end99 ]
  %blksz106 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %64 = ptrtoint ptr %blksz106 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %blksz106, align 4
  %66 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %blocks, align 4
  %mul = mul i32 %67, %65
  %flags = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %68 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags, align 4
  %and108 = and i32 %69, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end105.if.end143_crit_edge, label %if.then110

if.end105.if.end143_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

if.then110:                                       ; preds = %if.end105
  %or111 = or i32 %cmd_cfg.4, 524288
  %bounce_buf_size = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %bounce_buf_size to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bounce_buf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %71)
  %cmp112 = icmp ugt i32 %mul, %71
  br i1 %cmp112, label %do.end124, label %if.then110.if.end130_crit_edge, !prof !152

if.then110.if.end130_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

do.end124:                                        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 842, i32 noundef 9, ptr noundef null) #8
  br label %if.end130

if.end130:                                        ; preds = %do.end124, %if.then110.if.end130_crit_edge
  %dram_access_quirk = getelementptr inbounds %struct.meson_host, ptr %private.i, i32 0, i32 10
  %72 = ptrtoint ptr %dram_access_quirk to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %dram_access_quirk, align 1, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool138.not = icmp eq i8 %73, 0
  br i1 %tobool138.not, label %if.else140, label %if.then139

if.then139:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @meson_mmc_copy_buffer(ptr noundef %private.i, ptr noundef nonnull %1, i32 noundef %mul, i1 noundef zeroext true)
  br label %if.end142

if.else140:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  %sg = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %74 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %76 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sg_len, align 4
  %bounce_buf = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 2
  %78 = ptrtoint ptr %bounce_buf to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bounce_buf, align 4
  %call141 = tail call i32 @sg_copy_to_buffer(ptr noundef %75, i32 noundef %77, ptr noundef %79, i32 noundef %mul) #8
  br label %if.end142

if.end142:                                        ; preds = %if.else140, %if.then139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !173
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.end105.if.end143_crit_edge
  %cmd_cfg.5 = phi i32 [ %cmd_cfg.4, %if.end105.if.end143_crit_edge ], [ %or111, %if.end142 ]
  %bounce_dma_addr = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 1
  %80 = ptrtoint ptr %bounce_dma_addr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bounce_dma_addr, align 4
  %and144 = and i32 %81, -4
  br label %if.end163

do.end160:                                        ; preds = %meson_mmc_set_response_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  %or162 = or i32 %cmd_cfg.3, 40960
  br label %if.end163

if.end163:                                        ; preds = %do.end160, %if.end143
  %cmd_cfg.6 = phi i32 [ %or162, %do.end160 ], [ %cmd_cfg.5, %if.end143 ]
  %cmd_data.0 = phi i32 [ 0, %do.end160 ], [ %and144, %if.end143 ]
  %or164 = or i32 %cmd_cfg.6, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %82 = tail call i32 @llvm.bswap.i32(i32 %or164)
  %regs = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %84, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %82) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  tail call void @arm_heavy_mb() #8
  %85 = tail call i32 @llvm.bswap.i32(i32 %cmd_data.0)
  %86 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs, align 4
  %add.ptr172 = getelementptr i8, ptr %87, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr172, i32 %85) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %88 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs, align 4
  %add.ptr177 = getelementptr i8, ptr %89, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr177, i32 0) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !177
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @arm_heavy_mb() #8
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %90 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arg, align 4
  %92 = tail call i32 @llvm.bswap.i32(i32 %91)
  %93 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs, align 4
  %add.ptr185 = getelementptr i8, ptr %94, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr185, i32 %92) #8, !srcloc !143
  br label %cleanup

cleanup:                                          ; preds = %if.end163, %meson_mmc_desc_chain_transfer.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_mmc_set_blksz(ptr nocapture noundef readonly %mmc, i32 noundef %blksz) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %regs = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 68
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !153
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %and = lshr i32 %3, 4
  %shr = and i32 %and, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blksz)
  %cmp.not.i = icmp eq i32 %blksz, 0
  %4 = tail call i32 @llvm.ctpop.i32(i32 %blksz) #8, !range !170
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %.not89 = icmp eq i32 %4, 1
  br i1 %.not89, label %entry.cond.false21_crit_edge, label %do.end19

entry.cond.false21_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false21

do.end19:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.30, i32 noundef %blksz) #11
  br label %cond.false21

cond.false21:                                     ; preds = %do.end19, %entry.cond.false21_crit_edge
  %7 = tail call i32 @llvm.ctlz.i32(i32 %blksz, i1 true) #8, !range !170
  %sub.i.op.i = xor i32 %7, 31
  %sub.i = select i1 %cmp.not.i, i32 -1, i32 %sub.i.op.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %shr)
  %cmp25 = icmp eq i32 %sub.i, %shr
  br i1 %cmp25, label %cond.false21.cleanup_crit_edge, label %do.body29

cond.false21.cleanup_crit_edge:                   ; preds = %cond.false21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body29:                                        ; preds = %cond.false21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_mmc_set_blksz.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_mmc_set_blksz, %if.then34)) #8
          to label %do.end60 [label %if.then34], !srcloc !156

if.then34:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_mmc_set_blksz.__UNIQUE_ID_ddebug344, ptr noundef %9, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %shr, i32 noundef %sub.i) #8
  br label %do.end60

do.end60:                                         ; preds = %if.then34, %do.body29
  %and39 = and i32 %3, -241
  %shl = shl nsw i32 %sub.i, 4
  %and62 = and i32 %shl, 240
  %or = or i32 %and62, %and39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %add.ptr67 = getelementptr i8, ptr %12, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %10) #8, !srcloc !143
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %cond.false21.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_mmc_pre_req(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readonly %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @meson_mmc_get_transfer_mode(ptr noundef %mmc, ptr noundef %mrq)
  %host_cookie = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %host_cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %host_cookie, align 4
  %or = or i32 %3, 1
  store i32 %or, ptr %host_cookie, align 4
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 128
  %sg = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sg_len, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i21 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21)
  %tobool.not.i = icmp eq i32 %and.i21, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 1
  %call5 = tail call i32 @dma_map_sg_attrs(ptr noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef %cond.i, i32 noundef 0) #8
  %sg_count = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %sg_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call5, ptr %sg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool7.not = icmp eq i32 %call5, 0
  br i1 %tobool7.not, label %do.end, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmc, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.33) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_mmc_request(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %data = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %host_cookie = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %host_cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %host_cookie, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool2.not, %land.rhs ]
  %needs_pre_post_req = getelementptr inbounds %struct.meson_host, ptr %private.i, i32 0, i32 21
  %frombool = zext i1 %4 to i8
  %5 = ptrtoint ptr %needs_pre_post_req to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %needs_pre_post_req, align 1
  %dram_access_quirk = getelementptr inbounds %struct.meson_host, ptr %private.i, i32 0, i32 10
  %6 = ptrtoint ptr %dram_access_quirk to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dram_access_quirk, align 1, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %land.end.if.end12_crit_edge, label %land.lhs.true

land.end.if.end12_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true:                                    ; preds = %land.end
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %land.lhs.true.if.end12thread-pre-split_crit_edge, label %if.then

land.lhs.true.if.end12thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12thread-pre-split

if.then:                                          ; preds = %land.lhs.true
  %sg1.i = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 12
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sg_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp16.not.i = icmp eq i32 %11, 0
  br i1 %cmp16.not.i, label %if.then.meson_mmc_validate_dram_access.exit_crit_edge, label %for.body.preheader.i

if.then.meson_mmc_validate_dram_access.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_validate_dram_access.exit

for.body.preheader.i:                             ; preds = %if.then
  %12 = ptrtoint ptr %sg1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sg1.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.018.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %sg.017.i = phi ptr [ %call.i, %for.inc.i.for.body.i_crit_edge ], [ %13, %for.body.preheader.i ]
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sg.017.i, i32 0, i32 1
  %14 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset.i, align 4
  %and.i = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp2.i = icmp eq i32 %and.i, 0
  br i1 %cmp2.i, label %lor.lhs.false.i, label %for.body.i.do.end.i_crit_edge

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.017.i, i32 0, i32 2
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i, align 4
  %and3.i = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %cmp4.i = icmp eq i32 %and3.i, 0
  br i1 %cmp4.i, label %for.inc.i, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  %18 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmc, align 128
  %20 = ptrtoint ptr %sg1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sg1.i, align 4
  %offset6.i = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %offset6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset6.i, align 4
  %length8.i = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %length8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length8.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.41, i32 noundef %23, i32 noundef %25) #11
  br label %meson_mmc_validate_dram_access.exit

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %inc.i = add nuw i32 %i.018.i, 1
  %call.i = tail call ptr @sg_next(ptr noundef %sg.017.i) #8
  %26 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sg_len.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %27
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.meson_mmc_validate_dram_access.exit_crit_edge

for.inc.i.meson_mmc_validate_dram_access.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_validate_dram_access.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

meson_mmc_validate_dram_access.exit:              ; preds = %for.inc.i.meson_mmc_validate_dram_access.exit_crit_edge, %do.end.i, %if.then.meson_mmc_validate_dram_access.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ 0, %if.then.meson_mmc_validate_dram_access.exit_crit_edge ], [ 0, %for.inc.i.meson_mmc_validate_dram_access.exit_crit_edge ]
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %28 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cmd, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.0.i, ptr %error, align 4
  %31 = load ptr, ptr %cmd, align 4
  %error9 = getelementptr inbounds %struct.mmc_command, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %error9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %error9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool10.not = icmp eq i32 %33, 0
  br i1 %tobool10.not, label %meson_mmc_validate_dram_access.exit.if.end12thread-pre-split_crit_edge, label %if.then11

meson_mmc_validate_dram_access.exit.if.end12thread-pre-split_crit_edge: ; preds = %meson_mmc_validate_dram_access.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12thread-pre-split

if.then11:                                        ; preds = %meson_mmc_validate_dram_access.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %mrq) #8
  br label %cleanup

if.end12thread-pre-split:                         ; preds = %meson_mmc_validate_dram_access.exit.if.end12thread-pre-split_crit_edge, %land.lhs.true.if.end12thread-pre-split_crit_edge
  %34 = ptrtoint ptr %needs_pre_post_req to i32
  call void @__asan_load1_noabort(i32 %34)
  %.pr = load i8, ptr %needs_pre_post_req, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.end12thread-pre-split, %land.end.if.end12_crit_edge
  %35 = phi i8 [ %.pr, %if.end12thread-pre-split ], [ %frombool, %land.end.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool14.not = icmp eq i8 %35, 0
  br i1 %tobool14.not, label %if.end12.if.end21_crit_edge, label %if.then15

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then15:                                        ; preds = %if.end12
  tail call fastcc void @meson_mmc_get_transfer_mode(ptr noundef %mmc, ptr noundef %mrq)
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %host_cookie.i = getelementptr inbounds %struct.mmc_data, ptr %37, i32 0, i32 13
  %38 = ptrtoint ptr %host_cookie.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %host_cookie.i, align 4
  %and.i51 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i51)
  %tobool.i.not = icmp eq i32 %and.i51, 0
  br i1 %tobool.i.not, label %if.end21.thread, label %if.then15.if.end21_crit_edge

if.then15.if.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21.thread:                                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %needs_pre_post_req to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %needs_pre_post_req, align 1
  br label %do.body

if.end21:                                         ; preds = %if.then15.if.end21_crit_edge, %if.end12.if.end21_crit_edge
  %41 = ptrtoint ptr %needs_pre_post_req to i32
  call void @__asan_load1_noabort(i32 %41)
  %.pr55 = load i8, ptr %needs_pre_post_req, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr55)
  %tobool23.not = icmp eq i8 %.pr55, 0
  br i1 %tobool23.not, label %if.end21.do.body_crit_edge, label %if.then24

if.end21.do.body_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then24:                                        ; preds = %if.end21
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %if.then24.do.body_crit_edge, label %if.end.i

if.then24.do.body_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.i:                                         ; preds = %if.then24
  tail call fastcc void @meson_mmc_get_transfer_mode(ptr noundef %mmc, ptr noundef %mrq) #8
  %host_cookie.i52 = getelementptr inbounds %struct.mmc_data, ptr %43, i32 0, i32 13
  %44 = ptrtoint ptr %host_cookie.i52 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %host_cookie.i52, align 4
  %or.i = or i32 %45, 1
  store i32 %or.i, ptr %host_cookie.i52, align 4
  %and.i.i = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i.do.body_crit_edge, label %if.end3.i

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end3.i:                                        ; preds = %if.end.i
  %46 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmc, align 128
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %43, i32 0, i32 12
  %48 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sg.i, align 4
  %sg_len.i53 = getelementptr inbounds %struct.mmc_data, ptr %43, i32 0, i32 10
  %50 = ptrtoint ptr %sg_len.i53 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sg_len.i53, align 4
  %flags.i.i = getelementptr inbounds %struct.mmc_data, ptr %43, i32 0, i32 6
  %52 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.i.i, align 4
  %and.i21.i = and i32 %53, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21.i)
  %tobool.not.i.i = icmp eq i32 %and.i21.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  %call5.i = tail call i32 @dma_map_sg_attrs(ptr noundef %47, ptr noundef %49, i32 noundef %51, i32 noundef %cond.i.i, i32 noundef 0) #8
  %sg_count.i = getelementptr inbounds %struct.mmc_data, ptr %43, i32 0, i32 11
  %54 = ptrtoint ptr %sg_count.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call5.i, ptr %sg_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool7.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool7.not.i, label %do.end.i54, label %if.end3.i.do.body_crit_edge

if.end3.i.do.body_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end.i54:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmc, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.33) #11
  br label %do.body

do.body:                                          ; preds = %do.end.i54, %if.end3.i.do.body_crit_edge, %if.end.i.do.body_crit_edge, %if.then24.do.body_crit_edge, %if.end21.do.body_crit_edge, %if.end21.thread
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  tail call void @arm_heavy_mb() #8
  %regs = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %58, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !143
  %59 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mrq, align 4
  %tobool26.not = icmp eq ptr %60, null
  br i1 %tobool26.not, label %cond.false, label %do.body.cond.end_crit_edge

do.body.cond.end_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %cmd27 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %61 = ptrtoint ptr %cmd27 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cmd27, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.body.cond.end_crit_edge
  %cond = phi ptr [ %62, %cond.false ], [ %60, %do.body.cond.end_crit_edge ]
  tail call fastcc void @meson_mmc_start_cmd(ptr noundef %mmc, ptr noundef %cond)
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_mmc_set_ios(ptr noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %0 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_mode, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb14
    i8 2, label %sw.bb23
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %supply = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54
  %3 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %supply, align 16
  %cmp.i = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %mmc, ptr noundef %4, i16 noundef zeroext 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %vqmmc = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54, i32 1
  %5 = ptrtoint ptr %vqmmc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vqmmc, align 4
  %cmp.i130 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i130, label %if.end.sw.epilog_crit_edge, label %land.lhs.true

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.end
  %vqmmc_enabled = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 6
  %7 = ptrtoint ptr %vqmmc_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %vqmmc_enabled, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %land.lhs.true.sw.epilog_crit_edge, label %if.then8

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 @regulator_disable(ptr noundef %6) #8
  %9 = ptrtoint ptr %vqmmc_enabled to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %vqmmc_enabled, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %supply15 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54
  %10 = ptrtoint ptr %supply15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %supply15, align 16
  %cmp.i131 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i131, label %sw.bb14.sw.epilog_crit_edge, label %if.then18

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then18:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  %vdd = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 1
  %12 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vdd, align 4
  %call21 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %mmc, ptr noundef %11, i16 noundef zeroext %13) #8
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %vqmmc25 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54, i32 1
  %14 = ptrtoint ptr %vqmmc25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vqmmc25, align 4
  %cmp.i132 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %sw.bb23.sw.epilog_crit_edge, label %land.lhs.true27

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true27:                                  ; preds = %sw.bb23
  %vqmmc_enabled28 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 6
  %16 = ptrtoint ptr %vqmmc_enabled28 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vqmmc_enabled28, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool29.not = icmp eq i8 %17, 0
  br i1 %tobool29.not, label %if.then30, label %land.lhs.true27.sw.epilog_crit_edge

land.lhs.true27.sw.epilog_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then30:                                        ; preds = %land.lhs.true27
  %call33 = tail call i32 @regulator_enable(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp = icmp slt i32 %call33, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.43) #11
  br label %sw.epilog

if.else:                                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %vqmmc_enabled28 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %vqmmc_enabled28, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %do.end, %land.lhs.true27.sw.epilog_crit_edge, %sw.bb23.sw.epilog_crit_edge, %if.then18, %sw.bb14.sw.epilog_crit_edge, %if.then8, %land.lhs.true.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %bus_width39 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %21 = ptrtoint ptr %bus_width39 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bus_width39, align 1
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %22, label %do.end46 [
    i8 0, label %sw.epilog.sw.epilog50_crit_edge
    i8 2, label %sw.bb42
    i8 3, label %sw.bb43
  ]

sw.epilog.sw.epilog50_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog50

sw.bb42:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog50

sw.bb43:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog50

do.end46:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %conv40 = zext i8 %22 to i32
  %24 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.46, i32 noundef %conv40) #11
  br label %sw.epilog50

sw.epilog50:                                      ; preds = %do.end46, %sw.bb43, %sw.bb42, %sw.epilog.sw.epilog50_crit_edge
  %bus_width.0 = phi i32 [ 1, %do.end46 ], [ 2, %sw.bb43 ], [ 1, %sw.bb42 ], [ 0, %sw.epilog.sw.epilog50_crit_edge ]
  %regs = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 68
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  %29 = and i32 %28, -50331649
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %or = or i32 %30, %bus_width.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  tail call void @arm_heavy_mb() #8
  %31 = tail call i32 @llvm.bswap.i32(i32 %or)
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %add.ptr78 = getelementptr i8, ptr %33, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %31) #8, !srcloc !143
  %timing.i = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %34 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %timing.i, align 4
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %35, label %sw.epilog50.meson_mmc_check_resampling.exit_crit_edge [
    i8 0, label %sw.epilog50.sw.bb.i_crit_edge
    i8 1, label %sw.epilog50.sw.bb.i_crit_edge135
    i8 2, label %sw.epilog50.sw.bb.i_crit_edge136
    i8 8, label %sw.epilog50.sw.bb.i_crit_edge137
  ]

sw.epilog50.sw.bb.i_crit_edge137:                 ; preds = %sw.epilog50
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.epilog50.sw.bb.i_crit_edge136:                 ; preds = %sw.epilog50
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.epilog50.sw.bb.i_crit_edge135:                 ; preds = %sw.epilog50
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.epilog50.sw.bb.i_crit_edge:                    ; preds = %sw.epilog50
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.epilog50.meson_mmc_check_resampling.exit_crit_edge: ; preds = %sw.epilog50
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_check_resampling.exit

sw.bb.i:                                          ; preds = %sw.epilog50.sw.bb.i_crit_edge, %sw.epilog50.sw.bb.i_crit_edge135, %sw.epilog50.sw.bb.i_crit_edge136, %sw.epilog50.sw.bb.i_crit_edge137
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %data.i.i = getelementptr inbounds %struct.meson_host, ptr %private.i, i32 0, i32 1
  %39 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i, align 4
  %adjust.i.i = getelementptr inbounds %struct.meson_mmc_data, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %adjust.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %adjust.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 %42
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %44 = and i32 %43, -2097153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %47 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i, align 4
  %adjust4.i.i = getelementptr inbounds %struct.meson_mmc_data, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %adjust4.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %adjust4.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %46, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %44) #8, !srcloc !143
  br label %meson_mmc_check_resampling.exit

meson_mmc_check_resampling.exit:                  ; preds = %sw.bb.i, %sw.epilog50.meson_mmc_check_resampling.exit_crit_edge
  %51 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %timing.i, align 4
  %.off.i = add i8 %52, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  %53 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ios, align 4
  %call.i = tail call fastcc i32 @meson_mmc_clk_set(ptr noundef %private.i, i32 noundef %54, i1 noundef zeroext %switch.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool80.not = icmp eq i32 %call.i, 0
  br i1 %tobool80.not, label %meson_mmc_check_resampling.exit.do.body87_crit_edge, label %do.end84

meson_mmc_check_resampling.exit.do.body87_crit_edge: ; preds = %meson_mmc_check_resampling.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body87

do.end84:                                         ; preds = %meson_mmc_check_resampling.exit
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %private.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.49, i32 noundef %call.i) #11
  br label %do.body87

do.body87:                                        ; preds = %do.end84, %meson_mmc_check_resampling.exit.do.body87_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_mmc_set_ios.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_mmc_set_ios, %if.then93)) #8
          to label %do.end97 [label %if.then93], !srcloc !156

if.then93:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %private.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_mmc_set_ios.__UNIQUE_ID_ddebug338, ptr noundef %58, ptr noundef nonnull @.str.51, i32 noundef %or) #8
  br label %do.end97

do.end97:                                         ; preds = %if.then93, %do.body87
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mmc_get_cd(ptr noundef %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mmc_gpio_get_cd(ptr noundef %mmc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call)
  %cmp = icmp eq i32 %call, -38
  %.call = select i1 %cmp, i32 1, i32 %call
  ret i32 %.call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mmc_voltage_switch(ptr noundef %mmc, ptr noundef %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vqmmc = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54, i32 1
  %0 = ptrtoint ptr %vqmmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vqmmc, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @mmc_regulator_set_vqmmc(ptr noundef %mmc, ptr noundef %ios) #8
  %2 = tail call i32 @llvm.smin.i32(i32 %call1, i32 0)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %signal_voltage = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 8
  %3 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %signal_voltage, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp2 = icmp eq i8 %4, 0
  %. = select i1 %cmp2, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mmc_card_busy(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 72
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  %3 = and i32 %2, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mmc_resampling_tuning(ptr noundef %mmc, i32 noundef %opcode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %mux_clk = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %mux_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mux_clk, align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %1) #8
  %mmc_clk = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 4
  %2 = ptrtoint ptr %mmc_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc_clk, align 4
  %call2 = tail call i32 @clk_get_rate(ptr noundef %3) #8
  %add = add i32 %call1, -1
  %sub = add i32 %add, %call2
  %4 = ptrtoint ptr %mmc_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc_clk, align 4
  %call4 = tail call i32 @clk_get_rate(ptr noundef %5) #8
  %div = udiv i32 %sub, %call4
  %regs = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %data = getelementptr inbounds %struct.meson_host, ptr %private.i, i32 0, i32 1
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %adjust = getelementptr inbounds %struct.meson_mmc_data, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %adjust to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %adjust, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !187
  %13 = or i32 %12, 2097152
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %adjust9 = getelementptr inbounds %struct.meson_mmc_data, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %adjust9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %adjust9, align 4
  %add.ptr10 = getelementptr i8, ptr %16, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %13) #8, !srcloc !143
  %doing_retune.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 29
  %21 = ptrtoint ptr %doing_retune.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load.i = load i16, ptr %doing_retune.i, align 8
  %22 = and i16 %bf.load.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp.i.not = icmp eq i16 %22, 0
  %and = lshr i32 %14, 16
  %shr = and i32 %and, 63
  %add28 = add nuw nsw i32 %shr, 1
  %dly.0 = select i1 %cmp.i.not, i32 0, i32 %add28
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %sub)
  %cmp115.not = icmp ugt i32 %call4, %sub
  br i1 %cmp115.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %do.end50

for.cond:                                         ; preds = %do.end50
  %inc = add nuw i32 %i.0116, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.do.end50_crit_edge

for.cond.do.end50_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.end50:                                         ; preds = %for.cond.do.end50_crit_edge, %for.body.preheader
  %val.0117 = phi i32 [ %or55, %for.cond.do.end50_crit_edge ], [ %14, %for.body.preheader ]
  %i.0116 = phi i32 [ %inc, %for.cond.do.end50_crit_edge ], [ 0, %for.body.preheader ]
  %add37 = add i32 %i.0116, %dly.0
  %rem = urem i32 %add37, %div
  %and29 = and i32 %val.0117, -4128769
  %shl = shl i32 %rem, 16
  %and54 = and i32 %shl, 4128768
  %or55 = or i32 %and54, %and29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  tail call void @arm_heavy_mb() #8
  %23 = tail call i32 @llvm.bswap.i32(i32 %or55)
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %adjust61 = getelementptr inbounds %struct.meson_mmc_data, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %adjust61 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %adjust61, align 4
  %add.ptr62 = getelementptr i8, ptr %25, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %23) #8, !srcloc !143
  %call63 = tail call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %do.body66, label %for.cond

do.body66:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_mmc_resampling_tuning.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_mmc_resampling_tuning, %if.then72)) #8
          to label %cleanup [label %if.then72], !srcloc !156

if.then72:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmc, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_mmc_resampling_tuning.__UNIQUE_ID_ddebug332, ptr noundef %31, ptr noundef nonnull @.str.57, i32 noundef %rem) #8
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %adjust.i.i = getelementptr inbounds %struct.meson_mmc_data, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %adjust.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %adjust.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 %37
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %39 = and i32 %38, -2097153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  %adjust4.i.i = getelementptr inbounds %struct.meson_mmc_data, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %adjust4.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %adjust4.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %41, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %39) #8, !srcloc !143
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 4
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %adjust.i = getelementptr inbounds %struct.meson_mmc_data, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %adjust.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %adjust.i, align 4
  %add.ptr.i = getelementptr i8, ptr %47, i32 %51
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  %53 = and i32 %52, -16129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  tail call void @arm_heavy_mb() #8
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 4
  %56 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data, align 4
  %adjust4.i = getelementptr inbounds %struct.meson_mmc_data, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %adjust4.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %adjust4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %55, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %53) #8, !srcloc !143
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then72, %do.body66
  %retval.0 = phi i32 [ -5, %for.end ], [ 0, %if.then72 ], [ 0, %do.body66 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_mmc_get_transfer_mode(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readonly %mrq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %dram_access_quirk = getelementptr inbounds %struct.meson_host, ptr %private.i, i32 0, i32 10
  %2 = ptrtoint ptr %dram_access_quirk to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dram_access_quirk, align 1, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp ugt i32 %5, 1
  br i1 %cmp, label %if.end.if.then3_crit_edge, label %lor.lhs.false

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %9)
  %cmp2 = icmp eq i32 %9, 53
  br i1 %cmp2, label %lor.lhs.false.if.then3_crit_edge, label %lor.lhs.false.if.end18_crit_edge

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp569.not = icmp eq i32 %11, 0
  br i1 %cmp569.not, label %if.then3.if.end18_crit_edge, label %for.body.lr.ph

if.then3.if.end18_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

for.body.lr.ph:                                   ; preds = %if.then3
  %sg4 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %sg4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sg4, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.071 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %sg.070 = phi ptr [ %13, %for.body.lr.ph ], [ %call17, %for.inc.for.body_crit_edge ]
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.070, i32 0, i32 2
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 4
  %16 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blksz, align 4
  %rem = urem i32 %15, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool6.not = icmp eq i32 %rem, 0
  br i1 %tobool6.not, label %for.inc, label %do.body

do.body:                                          ; preds = %for.body
  %.b66 = load i1, ptr @meson_mmc_get_transfer_mode.__print_once, align 1
  br i1 %.b66, label %do.body.cleanup_crit_edge, label %if.then9

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @meson_mmc_get_transfer_mode.__print_once, align 1
  %18 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmc, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.35, i32 noundef %15, i32 noundef %17) #11
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.071, 1
  %call17 = tail call ptr @sg_next(ptr noundef %sg.070) #8
  %20 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sg_len, align 4
  %cmp5 = icmp ult i32 %inc, %21
  br i1 %cmp5, label %for.inc.for.body_crit_edge, label %for.inc.if.end18_crit_edge

for.inc.if.end18_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end18:                                         ; preds = %for.inc.if.end18_crit_edge, %if.then3.if.end18_crit_edge, %lor.lhs.false.if.end18_crit_edge
  %sg_len21 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %sg_len21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sg_len21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp2272.not = icmp eq i32 %23, 0
  br i1 %cmp2272.not, label %if.end18.for.end42_crit_edge, label %for.body23.preheader

if.end18.for.end42_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end42

for.body23.preheader:                             ; preds = %if.end18
  %sg19 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %24 = ptrtoint ptr %sg19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sg19, align 4
  br label %for.body23

for.body23:                                       ; preds = %for.inc39.for.body23_crit_edge, %for.body23.preheader
  %i.174 = phi i32 [ %inc40, %for.inc39.for.body23_crit_edge ], [ 0, %for.body23.preheader ]
  %sg.173 = phi ptr [ %call41, %for.inc39.for.body23_crit_edge ], [ %25, %for.body23.preheader ]
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sg.173, i32 0, i32 1
  %26 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset, align 4
  %rem24 = and i32 %27, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem24)
  %tobool25.not = icmp eq i32 %rem24, 0
  br i1 %tobool25.not, label %for.inc39, label %do.body27

do.body27:                                        ; preds = %for.body23
  %.b6465 = load i1, ptr @meson_mmc_get_transfer_mode.__print_once.37, align 1
  br i1 %.b6465, label %do.body27.cleanup_crit_edge, label %if.then29

do.body27.cleanup_crit_edge:                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then29:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @meson_mmc_get_transfer_mode.__print_once.37, align 1
  %28 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmc, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.39, i32 noundef %27) #11
  br label %cleanup

for.inc39:                                        ; preds = %for.body23
  %inc40 = add nuw i32 %i.174, 1
  %call41 = tail call ptr @sg_next(ptr noundef %sg.173) #8
  %30 = ptrtoint ptr %sg_len21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sg_len21, align 4
  %cmp22 = icmp ult i32 %inc40, %31
  br i1 %cmp22, label %for.inc39.for.body23_crit_edge, label %for.inc39.for.end42_crit_edge

for.inc39.for.end42_crit_edge:                    ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end42

for.inc39.for.body23_crit_edge:                   ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body23

for.end42:                                        ; preds = %for.inc39.for.end42_crit_edge, %if.end18.for.end42_crit_edge
  %host_cookie = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %32 = ptrtoint ptr %host_cookie to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %host_cookie, align 4
  %or = or i32 %33, 2
  store i32 %or, ptr %host_cookie, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end42, %if.then29, %do.body27.cleanup_crit_edge, %if.then9, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_mmc_clk_set(ptr nocapture noundef %host, i32 noundef %rate, i1 noundef zeroext %ddr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %ddr to i8
  %mmc1 = getelementptr inbounds %struct.meson_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc1, align 4
  %ddr2 = getelementptr inbounds %struct.meson_host, ptr %host, i32 0, i32 9
  %2 = ptrtoint ptr %ddr2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ddr2, align 4, !range !148
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %frombool)
  %cmp = icmp eq i8 %3, %frombool
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %req_rate = getelementptr inbounds %struct.meson_host, ptr %host, i32 0, i32 8
  %4 = ptrtoint ptr %req_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %rate)
  %cmp6 = icmp eq i32 %5, %rate
  br i1 %cmp6, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %pins_clk_gate.i = getelementptr inbounds %struct.meson_host, ptr %host, i32 0, i32 12
  %6 = ptrtoint ptr %pins_clk_gate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins_clk_gate.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pinctrl.i = getelementptr inbounds %struct.meson_host, ptr %host, i32 0, i32 11
  %8 = ptrtoint ptr %pinctrl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pinctrl.i, align 4
  %call.i = tail call i32 @pinctrl_select_state(ptr noundef %9, ptr noundef nonnull %7) #8
  br label %meson_mmc_clk_gate.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %regs.i = getelementptr inbounds %struct.meson_host, ptr %host, i32 0, i32 4
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 68
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  %13 = or i32 %12, 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %15, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %13) #8, !srcloc !143
  br label %meson_mmc_clk_gate.exit

meson_mmc_clk_gate.exit:                          ; preds = %if.else.i, %if.then.i
  %req_rate8 = getelementptr inbounds %struct.meson_host, ptr %host, i32 0, i32 8
  %16 = ptrtoint ptr %req_rate8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %req_rate8, align 4
  %actual_clock = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 58
  %17 = ptrtoint ptr %actual_clock to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %actual_clock, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool9.not = icmp eq i32 %rate, 0
  br i1 %tobool9.not, label %meson_mmc_clk_gate.exit.cleanup_crit_edge, label %if.end11

meson_mmc_clk_gate.exit.cleanup_crit_edge:        ; preds = %meson_mmc_clk_gate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %meson_mmc_clk_gate.exit
  %regs = getelementptr inbounds %struct.meson_host, ptr %host, i32 0, i32 4
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 68
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  %21 = or i32 %20, 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !195
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr14 = getelementptr i8, ptr %23, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %21) #8, !srcloc !143
  %24 = and i32 %21, -67108865
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %masksel = select i1 %ddr, i32 4, i32 0
  %cfg.0 = or i32 %25, %masksel
  %shl = zext i1 %ddr to i32
  %rate.addr.0 = shl i32 %rate, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void @arm_heavy_mb() #8
  %26 = tail call i32 @llvm.bswap.i32(i32 %cfg.0)
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %add.ptr23 = getelementptr i8, ptr %28, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %26) #8, !srcloc !143
  %29 = ptrtoint ptr %ddr2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %frombool, ptr %ddr2, align 4
  %mmc_clk = getelementptr inbounds %struct.meson_host, ptr %host, i32 0, i32 7
  %30 = ptrtoint ptr %mmc_clk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmc_clk, align 4
  %call27 = tail call i32 @clk_set_rate(ptr noundef %31, i32 noundef %rate.addr.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end33, label %do.end32

do.end32:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.52, i32 noundef %rate.addr.0, i32 noundef %call27) #11
  br label %cleanup

if.end33:                                         ; preds = %if.end11
  %34 = ptrtoint ptr %req_rate8 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %rate.addr.0, ptr %req_rate8, align 4
  %35 = ptrtoint ptr %mmc_clk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmc_clk, align 4
  %call36 = tail call i32 @clk_get_rate(ptr noundef %36) #8
  %37 = ptrtoint ptr %actual_clock to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call36, ptr %actual_clock, align 8
  br i1 %ddr, label %if.then39, label %if.end33.do.body44_crit_edge

if.end33.do.body44_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body44

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %req_rate8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %req_rate8, align 4
  %shr = lshr i32 %39, 1
  store i32 %shr, ptr %req_rate8, align 4
  %40 = ptrtoint ptr %actual_clock to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %actual_clock, align 8
  %shr42 = lshr i32 %41, 1
  store i32 %shr42, ptr %actual_clock, align 8
  br label %do.body44

do.body44:                                        ; preds = %if.then39, %if.end33.do.body44_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_mmc_clk_set.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_mmc_clk_set, %if.then51)) #8
          to label %do.end56 [label %if.then51], !srcloc !156

if.then51:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %host, align 4
  %44 = ptrtoint ptr %actual_clock to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %actual_clock, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_mmc_clk_set.__UNIQUE_ID_ddebug305, ptr noundef %43, ptr noundef nonnull @.str.54, i32 noundef %45) #8
  br label %do.end56

do.end56:                                         ; preds = %if.then51, %do.body44
  %46 = ptrtoint ptr %actual_clock to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %actual_clock, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %rate.addr.0, i32 %47)
  %cmp58.not = icmp eq i32 %rate.addr.0, %47
  br i1 %cmp58.not, label %do.end56.if.end78_crit_edge, label %do.body61

do.end56.if.end78_crit_edge:                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

do.body61:                                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_mmc_clk_set.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_mmc_clk_set, %if.then73)) #8
          to label %if.end78 [label %if.then73], !srcloc !156

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_mmc_clk_set.__UNIQUE_ID_ddebug306, ptr noundef %49, ptr noundef nonnull @.str.55, i32 noundef %rate.addr.0) #8
  br label %if.end78

if.end78:                                         ; preds = %if.then73, %do.body61, %do.end56.if.end78_crit_edge
  %50 = ptrtoint ptr %pins_clk_gate.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pins_clk_gate.i, align 4
  %tobool.not.i121 = icmp eq ptr %51, null
  br i1 %tobool.not.i121, label %if.end78.meson_mmc_clk_ungate.exit_crit_edge, label %if.then.i123

if.end78.meson_mmc_clk_ungate.exit_crit_edge:     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_mmc_clk_ungate.exit

if.then.i123:                                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %host, align 4
  %call.i122 = tail call i32 @pinctrl_select_default_state(ptr noundef %53) #8
  br label %meson_mmc_clk_ungate.exit

meson_mmc_clk_ungate.exit:                        ; preds = %if.then.i123, %if.end78.meson_mmc_clk_ungate.exit_crit_edge
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 4
  %add.ptr.i125 = getelementptr i8, ptr %55, i32 68
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i125) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %57 = and i32 %56, -16385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void @arm_heavy_mb() #8
  %58 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs, align 4
  %add.ptr4.i = getelementptr i8, ptr %59, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %57) #8, !srcloc !143
  br label %cleanup

cleanup:                                          ; preds = %meson_mmc_clk_ungate.exit, %do.end32, %meson_mmc_clk_gate.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %do.end32 ], [ 0, %meson_mmc_clk_ungate.exit ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %meson_mmc_clk_gate.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_vqmmc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_tuning(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !54, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !69, !70, !72, !73, !75, !77, !78, !79, !80, !82, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !114, !115, !116, !117, !119, !120, !122, !123, !125, !126, !127, !129, !131}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @__initcall__kmod_meson_gx_mmc__406_1369_meson_mmc_driver_init6, !1, !"__initcall__kmod_meson_gx_mmc__406_1369_meson_mmc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 1369, i32 1}
!2 = !{ptr @__exitcall_meson_mmc_driver_exit, !1, !"__exitcall_meson_mmc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description407, !4, !"__UNIQUE_ID_description407", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 1371, i32 1}
!5 = !{ptr @__UNIQUE_ID_author408, !6, !"__UNIQUE_ID_author408", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 1372, i32 1}
!7 = !{ptr @__UNIQUE_ID_file409, !8, !"__UNIQUE_ID_file409", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 1373, i32 1}
!9 = !{ptr @__UNIQUE_ID_license410, !8, !"__UNIQUE_ID_license410", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 1363, i32 11}
!12 = !{ptr @meson_mmc_driver, !13, !"meson_mmc_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 1359, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 1152, i32 6}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 1163, i32 4}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @meson_mmc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @meson_mmc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 1176, i32 41}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 1198, i32 10}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 1200, i32 3}
!30 = !{ptr @meson_mmc_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @meson_mmc_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 1205, i32 44}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 1277, i32 4}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @meson_mmc_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @meson_mmc_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 1286, i32 3}
!41 = !{ptr @meson_mmc_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @meson_mmc_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 441, i32 32}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 445, i32 11}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 455, i32 39}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 476, i32 39}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 945, i32 3}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @meson_mmc_irq.__UNIQUE_ID_ddebug382, !52, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 961, i32 3}
!58 = !{ptr @meson_mmc_irq.__UNIQUE_ID_ddebug383, !57, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 968, i32 3}
!61 = !{ptr @meson_mmc_irq.__UNIQUE_ID_ddebug384, !60, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 977, i32 3}
!64 = !{ptr @meson_mmc_irq.__UNIQUE_ID_ddebug385, !63, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 682, i32 3}
!67 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @meson_mmc_set_blksz._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @meson_mmc_set_blksz._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 690, i32 2}
!72 = !{ptr @meson_mmc_set_blksz.__UNIQUE_ID_ddebug344, !71, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!73 = !{ptr @meson_mmc_ops, !74, !"meson_mmc_ops", i1 false, i1 false}
!74 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 1124, i32 34}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 302, i32 3}
!77 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @meson_mmc_pre_req._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @meson_mmc_pre_req._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = distinct !{null, !81, !"__print_once", i1 false, i1 false}
!81 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 254, i32 5}
!82 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @meson_mmc_get_transfer_mode._entry, !81, !"_entry", i1 false, i1 false}
!85 = !{ptr @meson_mmc_get_transfer_mode._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!86 = distinct !{null, !87, !"__print_once", i1 false, i1 false}
!87 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 265, i32 4}
!88 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @meson_mmc_get_transfer_mode._entry.38, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @meson_mmc_get_transfer_mode._entry_ptr.40, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 875, i32 4}
!93 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @meson_mmc_validate_dram_access._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @meson_mmc_validate_dram_access._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 623, i32 5}
!98 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @meson_mmc_set_ios._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @meson_mmc_set_ios._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 644, i32 3}
!103 = !{ptr @meson_mmc_set_ios._entry.45, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @meson_mmc_set_ios._entry_ptr.47, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 657, i32 3}
!107 = !{ptr @meson_mmc_set_ios._entry.48, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @meson_mmc_set_ios._entry_ptr.50, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 659, i32 2}
!111 = !{ptr @meson_mmc_set_ios.__UNIQUE_ID_ddebug338, !110, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 388, i32 3}
!114 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @meson_mmc_clk_set._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @meson_mmc_clk_set._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 402, i32 2}
!119 = !{ptr @meson_mmc_clk_set.__UNIQUE_ID_ddebug305, !118, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 404, i32 3}
!122 = !{ptr @meson_mmc_clk_set.__UNIQUE_ID_ddebug306, !121, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 548, i32 4}
!125 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @meson_mmc_resampling_tuning.__UNIQUE_ID_ddebug332, !124, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!127 = !{ptr @meson_mmc_of_match, !128, !"meson_mmc_of_match", i1 false, i1 false}
!128 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 1349, i32 34}
!129 = !{ptr @meson_gx_data, !130, !"meson_gx_data", i1 false, i1 false}
!130 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 1335, i32 36}
!131 = !{ptr @meson_axg_data, !132, !"meson_axg_data", i1 false, i1 false}
!132 = !{!"../drivers/mmc/host/meson-gx-mmc.c", i32 1342, i32 36}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{i64 2156296088}
!143 = !{i64 4820107}
!144 = !{i64 2156340584}
!145 = !{i64 2156340970}
!146 = !{i64 2156343106}
!147 = !{i64 2156346667}
!148 = !{i8 0, i8 2}
!149 = !{i64 2156357367}
!150 = !{!"auto-init"}
!151 = !{i64 2155646285}
!152 = !{!"branch_weights", i32 1, i32 2000}
!153 = !{i64 4820525}
!154 = !{i64 2156148225}
!155 = !{i64 2156148716}
!156 = !{i64 2148725429, i64 2148725434, i64 2148725447, i64 2148725491, i64 2148725525, i64 2148725546}
!157 = !{i64 2156152489}
!158 = !{i64 2156145761}
!159 = !{i64 2156146252}
!160 = !{i64 2156146743}
!161 = !{i64 2156147234}
!162 = !{i64 2156147734}
!163 = !{i64 2156161428}
!164 = !{i64 2156161731}
!165 = !{i64 2156163914}
!166 = !{i64 2156164400}
!167 = !{i64 2155924055}
!168 = !{i64 2155923250}
!169 = !{i64 2155924149}
!170 = !{i32 0, i32 33}
!171 = !{i64 2155920968}
!172 = !{i64 2155921271}
!173 = !{i64 2156093688}
!174 = !{i64 2156141234}
!175 = !{i64 2156141645}
!176 = !{i64 2156142052}
!177 = !{i64 2156142369}
!178 = !{i64 2156142593}
!179 = !{i64 2155791755}
!180 = !{i64 2155876043}
!181 = !{i64 2156145092}
!182 = !{i64 2155742596}
!183 = !{i64 2155787193}
!184 = !{i64 2155651285}
!185 = !{i64 2155651597}
!186 = !{i64 2156296754}
!187 = !{i64 2155654109}
!188 = !{i64 2155654421}
!189 = !{i64 2155735993}
!190 = !{i64 2155652328}
!191 = !{i64 2155653248}
!192 = !{i64 2155508109}
!193 = !{i64 2155508412}
!194 = !{i64 2155510047}
!195 = !{i64 2155510350}
!196 = !{i64 2155510908}
!197 = !{i64 2155509078}
!198 = !{i64 2155509381}
