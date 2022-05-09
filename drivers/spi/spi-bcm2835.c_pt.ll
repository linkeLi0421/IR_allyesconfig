; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-bcm2835.c_pt.bc'
source_filename = "../drivers/spi/spi-bcm2835.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.dma_slave_caps = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.bcm2835_spi = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, ptr, i32, i32, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.bcm2835_spidev = type { i32, ptr, i32, [116 x i8], i32, [124 x i8] }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__param_str_polling_limit_us = internal constant [29 x i8] c"spi_bcm2835.polling_limit_us\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@polling_limit_us = internal global { i32, [28 x i8] } { i32 30, [28 x i8] zeroinitializer }, align 32
@__param_polling_limit_us = internal constant %struct.kernel_param { ptr @__param_str_polling_limit_us, ptr null, ptr @param_ops_uint, i16 436, i8 -1, i8 0, %union.anon.68 { ptr @polling_limit_us } }, section "__param", align 4
@__UNIQUE_ID_polling_limit_ustype238 = internal constant [43 x i8] c"spi_bcm2835.parmtype=polling_limit_us:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_polling_limit_us239 = internal constant [80 x i8] c"spi_bcm2835.parm=polling_limit_us:time in us to run a transfer in polling mode\0A\00", section ".modinfo", align 1
@__initcall__kmod_spi_bcm2835__248_1437_bcm2835_spi_driver_init6 = internal global ptr @bcm2835_spi_driver_init, section ".initcall6.init", align 4
@bcm2835_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm2835_spi_probe, ptr @bcm2835_spi_remove, ptr @bcm2835_spi_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm2835_spi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm2835_spi_driver_exit = internal global ptr @bcm2835_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description249 = internal constant [67 x i8] c"spi_bcm2835.description=SPI controller driver for Broadcom BCM2835\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [48 x i8] c"spi_bcm2835.author=Chris Boot <bootc@bootc.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [41 x i8] c"spi_bcm2835.file=drivers/spi/spi-bcm2835\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [24 x i8] c"spi_bcm2835.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi-bcm2835\00", [20 x i8] zeroinitializer }, align 32
@bcm2835_spi_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"could not get clk\0A\00", [45 x i8] zeroinitializer }, align 32
@bcm2835_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1371, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm2835_spi_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/spi/spi-bcm2835.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm2835_spi_probe._entry_ptr = internal global ptr @bcm2835_spi_probe._entry, section ".printk_index", align 4
@bcm2835_spi_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1378, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not register SPI controller: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@bcm2835_spi_probe._entry_ptr.9 = internal global ptr @bcm2835_spi_probe._entry.7, section ".printk_index", align 4
@bcm2835_spi_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 1277, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"setup: only two native chip-selects are supported\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm2835_spi_setup\00", [46 x i8] zeroinitializer }, align 32
@bcm2835_spi_setup._entry_ptr = internal global ptr @bcm2835_spi_setup._entry, section ".printk_index", align 4
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pinctrl-bcm2835\00", [16 x i8] zeroinitializer }, align 32
@bcm2835_spi_setup._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.4, i32 1307, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"setting up native-CS%i to use GPIO\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bcm2835_spi_setup._entry_ptr.16 = internal global ptr @bcm2835_spi_setup._entry.13, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bcm2835_spi_setup_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 1188, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot map clear_rx_cs\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bcm2835_spi_setup_dma\00", [42 x i8] zeroinitializer }, align 32
@bcm2835_spi_setup_dma._entry_ptr = internal global ptr @bcm2835_spi_setup_dma._entry, section ".printk_index", align 4
@bcm2835_spi_setup_dma._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.4, i32 1198, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot prepare clear_rx_desc\0A\00", [34 x i8] zeroinitializer }, align 32
@bcm2835_spi_setup_dma._entry_ptr.21 = internal global ptr @bcm2835_spi_setup_dma._entry.19, section ".printk_index", align 4
@bcm2835_spi_setup_dma._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.4, i32 1204, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot reuse clear_rx_desc\0A\00", [36 x i8] zeroinitializer }, align 32
@bcm2835_spi_setup_dma._entry_ptr.24 = internal global ptr @bcm2835_spi_setup_dma._entry.22, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bcm2835_spi_transfer_one_poll._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@bcm2835_spi_transfer_one_poll.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.29, ptr @.str.4, ptr @.str.30, i8 1, i8 0, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_bcm2835\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bcm2835_spi_transfer_one_poll\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"timeout period reached: jiffies: %lu remaining tx/rx: %d/%d - falling back to interrupt mode\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@bcm2835_dma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 893, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"could not get DMA-register address - not using dma mode\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcm2835_dma_init\00", [47 x i8] zeroinitializer }, align 32
@bcm2835_dma_init._entry_ptr = internal global ptr @bcm2835_dma_init._entry, section ".printk_index", align 4
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@bcm2835_dma_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str.4, i32 902, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"no tx-dma configuration found - not using dma mode\0A\00", [44 x i8] zeroinitializer }, align 32
@bcm2835_dma_init._entry_ptr.37 = internal global ptr @bcm2835_dma_init._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@bcm2835_dma_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.33, ptr @.str.4, i32 909, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"no rx-dma configuration found - not using dma mode\0A\00", [44 x i8] zeroinitializer }, align 32
@bcm2835_dma_init._entry_ptr.41 = internal global ptr @bcm2835_dma_init._entry.39, section ".printk_index", align 4
@empty_zero_page = external dso_local local_unnamed_addr global ptr, align 4
@bcm2835_dma_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.33, ptr @.str.4, i32 932, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"cannot map zero page - not using DMA mode\0A\00", [53 x i8] zeroinitializer }, align 32
@bcm2835_dma_init._entry_ptr.44 = internal global ptr @bcm2835_dma_init._entry.42, section ".printk_index", align 4
@bcm2835_dma_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.33, ptr @.str.4, i32 943, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"cannot prepare fill_tx_desc - not using DMA mode\0A\00", [46 x i8] zeroinitializer }, align 32
@bcm2835_dma_init._entry_ptr.47 = internal global ptr @bcm2835_dma_init._entry.45, section ".printk_index", align 4
@bcm2835_dma_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.33, ptr @.str.4, i32 950, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"cannot reuse fill_tx_desc - not using DMA mode\0A\00", [48 x i8] zeroinitializer }, align 32
@bcm2835_dma_init._entry_ptr.50 = internal global ptr @bcm2835_dma_init._entry.48, section ".printk_index", align 4
@bcm2835_dma_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.33, ptr @.str.4, i32 975, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"issue configuring dma: %d - not using DMA mode\0A\00", [48 x i8] zeroinitializer }, align 32
@bcm2835_dma_init._entry_ptr.53 = internal global ptr @bcm2835_dma_init._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spi-bcm2835-%s\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"count_transfer_polling\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"count_transfer_irq\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"count_transfer_irq_after_polling\00", [63 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"count_transfer_dma\00", [45 x i8] zeroinitializer }, align 32
@bcm2835_spi_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 1419, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to shutdown\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bcm2835_spi_shutdown\00", [43 x i8] zeroinitializer }, align 32
@bcm2835_spi_shutdown._entry_ptr = internal global ptr @bcm2835_spi_shutdown._entry, section ".printk_index", align 4
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"polling_limit_us\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 77, i32 21 }
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"bcm2835_spi_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1428, i32 31 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1430, i32 12 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"bcm2835_spi_match\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1422, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1349, i32 10 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1371, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1377, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1276, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1292, i32 23 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1306, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1188, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1198, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1204, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 326, i32 6 }
@___asan_gen_.148 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1024, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1169, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 893, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 900, i32 39 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 902, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 907, i32 39 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 909, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 932, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 943, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 950, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 974, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 170, i32 31 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 177, i32 21 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 179, i32 21 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 181, i32 21 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 183, i32 21 }
@___asan_gen_.232 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.239 = private constant [29 x i8] c"../drivers/spi/spi-bcm2835.c\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1419, i32 3 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__UNIQUE_ID_polling_limit_us239, ptr @__UNIQUE_ID_polling_limit_ustype238, ptr @__exitcall_bcm2835_spi_driver_exit, ptr @__initcall__kmod_spi_bcm2835__248_1437_bcm2835_spi_driver_init6, ptr @__param_polling_limit_us, ptr @bcm2835_dma_init._entry, ptr @bcm2835_dma_init._entry.35, ptr @bcm2835_dma_init._entry.39, ptr @bcm2835_dma_init._entry.42, ptr @bcm2835_dma_init._entry.45, ptr @bcm2835_dma_init._entry.48, ptr @bcm2835_dma_init._entry.51, ptr @bcm2835_dma_init._entry_ptr, ptr @bcm2835_dma_init._entry_ptr.37, ptr @bcm2835_dma_init._entry_ptr.41, ptr @bcm2835_dma_init._entry_ptr.44, ptr @bcm2835_dma_init._entry_ptr.47, ptr @bcm2835_dma_init._entry_ptr.50, ptr @bcm2835_dma_init._entry_ptr.53, ptr @bcm2835_spi_driver_exit, ptr @bcm2835_spi_probe._entry, ptr @bcm2835_spi_probe._entry.7, ptr @bcm2835_spi_probe._entry_ptr, ptr @bcm2835_spi_probe._entry_ptr.9, ptr @bcm2835_spi_setup._entry, ptr @bcm2835_spi_setup._entry.13, ptr @bcm2835_spi_setup._entry_ptr, ptr @bcm2835_spi_setup._entry_ptr.16, ptr @bcm2835_spi_setup_dma._entry, ptr @bcm2835_spi_setup_dma._entry.19, ptr @bcm2835_spi_setup_dma._entry.22, ptr @bcm2835_spi_setup_dma._entry_ptr, ptr @bcm2835_spi_setup_dma._entry_ptr.21, ptr @bcm2835_spi_setup_dma._entry_ptr.24, ptr @bcm2835_spi_shutdown._entry, ptr @bcm2835_spi_shutdown._entry_ptr, ptr @polling_limit_us, ptr @bcm2835_spi_driver, ptr @.str, ptr @bcm2835_spi_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @bcm2835_spi_transfer_one_poll._rs, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polling_limit_us to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_spi_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_spi_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_spi_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_spi_setup._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_spi_setup_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_spi_setup_dma._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_spi_setup_dma._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_spi_transfer_one_poll._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_dma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_dma_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_dma_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_dma_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_dma_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_dma_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_dma_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_spi_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm2835_spi_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm2835_spi_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %name.i = alloca [64 x i8], align 1
  %caps.i.i = alloca %struct.dma_slave_caps, align 4
  %slave_config.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__devm_spi_alloc_controller(ptr noundef %dev, i32 noundef 112, i1 noundef zeroext false) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup61_crit_edge, label %if.end

entry.cleanup61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup61

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 56
  %1 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %use_gpio_descriptors, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 87, ptr %mode_bits, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 128, ptr %bits_per_word_mask, align 8
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 3, ptr %num_chipselect, align 2
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %5 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @bcm2835_spi_setup, ptr %setup, align 4
  %cleanup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 23
  %6 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @bcm2835_spi_cleanup, ptr %cleanup, align 8
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %7 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @bcm2835_spi_transfer_one, ptr %transfer_one, align 4
  %handle_err = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 52
  %8 = ptrtoint ptr %handle_err to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @bcm2835_spi_handle_err, ptr %handle_err, align 8
  %prepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 47
  %9 = ptrtoint ptr %prepare_message to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @bcm2835_spi_prepare_message, ptr %prepare_message, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %of_node3 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %12 = ptrtoint ptr %of_node3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %of_node3, align 8
  %driver_data.i.i120 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i120 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i120, align 4
  %ctlr5 = getelementptr inbounds %struct.bcm2835_spi, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %ctlr5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %ctlr5, align 4
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #12
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call6, ptr %14, align 8
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %call6 to i32
  br label %cleanup61

if.end12:                                         ; preds = %if.end
  %call14 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #12
  %clk = getelementptr inbounds %struct.bcm2835_spi, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call14, ptr %clk, align 4
  %cmp.i121 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121, label %if.then17, label %if.end22

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %call14 to i32
  %call21 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %19, ptr noundef nonnull @.str.1) #12
  br label %cleanup61

if.end22:                                         ; preds = %if.end12
  %call24 = tail call i32 @clk_get_rate(ptr noundef %call14) #12
  %div119 = lshr i32 %call24, 1
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %20 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div119, ptr %max_speed_hz, align 8
  %call25 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #12
  %irq = getelementptr inbounds %struct.bcm2835_spi, ptr %14, i32 0, i32 3
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call25, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25)
  %cmp = icmp slt i32 %call25, 1
  br i1 %cmp, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool29.not = icmp eq i32 %call25, 0
  %spec.select = select i1 %tobool29.not, i32 -19, i32 %call25
  br label %cleanup61

if.end31:                                         ; preds = %if.end22
  %22 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk, align 4
  %call.i122 = tail call i32 @clk_prepare(ptr noundef %23) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool.not.i = icmp eq i32 %call.i122, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end31.clk_prepare_enable.exit_crit_edge

if.end31.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end31
  %call1.i = tail call i32 @clk_enable(ptr noundef %23) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %23) #12
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end31.clk_prepare_enable.exit_crit_edge
  %24 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk, align 4
  %call35 = tail call i32 @clk_get_rate(ptr noundef %25) #12
  %clk_hz = getelementptr inbounds %struct.bcm2835_spi, ptr %14, i32 0, i32 2
  %26 = ptrtoint ptr %clk_hz to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call35, ptr %clk_hz, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %slave_config.i) #12
  %27 = call ptr @memset(ptr %slave_config.i, i32 255, i32 48)
  %28 = ptrtoint ptr %of_node3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_node3, align 8
  %call.i.i = tail call ptr @__of_get_address(ptr noundef %29, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #12
  %tobool.not.i123 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i123, label %do.end.i, label %if.end.i124

do.end.i:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #15
  br label %if.end40

if.end.i124:                                      ; preds = %clk_prepare_enable.exit
  %30 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call.i.i, align 4
  %call3.i = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.34) #12
  %dma_tx.i = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 60
  %32 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call3.i, ptr %dma_tx.i, align 8
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end9.i, label %if.end13.i

do.end9.i:                                        ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #15
  %33 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma_tx.i, align 8
  %35 = ptrtoint ptr %34 to i32
  store ptr null, ptr %dma_tx.i, align 8
  br label %err.i

if.end13.i:                                       ; preds = %if.end.i124
  %call14.i = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.38) #12
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 61
  %36 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call14.i, ptr %dma_rx.i, align 4
  %cmp.i118.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118.i, label %do.end20.i, label %if.end24.i

do.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40) #15
  %37 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dma_rx.i, align 4
  %39 = ptrtoint ptr %38 to i32
  store ptr null, ptr %dma_rx.i, align 4
  br label %err_release.i

if.end24.i:                                       ; preds = %if.end13.i
  %add.i = add i32 %31, 4
  %dst_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config.i, i32 0, i32 2
  %40 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add.i, ptr %dst_addr.i, align 4
  %dst_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config.i, i32 0, i32 4
  %41 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %dst_addr_width.i, align 4
  %42 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dma_tx.i, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %45, i32 0, i32 44
  %46 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i, label %if.end24.i.do.end74.i_crit_edge, label %dmaengine_slave_config.exit.i

if.end24.i.do.end74.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end74.i

dmaengine_slave_config.exit.i:                    ; preds = %if.end24.i
  %call.i119.i = call i32 %47(ptr noundef %43, ptr noundef nonnull %slave_config.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119.i)
  %tobool27.not.i = icmp eq i32 %call.i119.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %dmaengine_slave_config.exit.i.do.end74.i_crit_edge

dmaengine_slave_config.exit.i.do.end74.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end74.i

if.end29.i:                                       ; preds = %dmaengine_slave_config.exit.i
  %48 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dma_tx.i, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %dev31.i = getelementptr inbounds %struct.dma_device, ptr %51, i32 0, i32 15
  %52 = ptrtoint ptr %dev31.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev31.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %54 = load ptr, ptr @empty_zero_page, align 4
  %call32.i = call i32 @dma_map_page_attrs(ptr noundef %53, ptr noundef %54, i32 noundef 0, i32 noundef 4, i32 noundef 1, i32 noundef 32) #12
  %fill_tx_addr.i = getelementptr inbounds %struct.bcm2835_spi, ptr %14, i32 0, i32 22
  %55 = ptrtoint ptr %fill_tx_addr.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call32.i, ptr %fill_tx_addr.i, align 8
  %56 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dma_tx.i, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %dev35.i = getelementptr inbounds %struct.dma_device, ptr %59, i32 0, i32 15
  %60 = ptrtoint ptr %dev35.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev35.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %61, i32 noundef %call32.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call32.i)
  %cmp.i120.not.i = icmp eq i32 %call32.i, -1
  br i1 %cmp.i120.not.i, label %do.end42.i, label %if.end44.i

do.end42.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #15
  %62 = ptrtoint ptr %fill_tx_addr.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %fill_tx_addr.i, align 8
  br label %err_release.i

if.end44.i:                                       ; preds = %if.end29.i
  %63 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dma_tx.i, align 8
  %65 = ptrtoint ptr %fill_tx_addr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fill_tx_addr.i, align 8
  %tobool.not.i121.i = icmp eq ptr %64, null
  br i1 %tobool.not.i121.i, label %if.end44.i.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

if.end44.i.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_prep_dma_cyclic.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end44.i
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %64, align 4
  %tobool1.not.i.i = icmp eq ptr %68, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_prep_dma_cyclic.exit.thread.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_dma_cyclic.i.i = getelementptr inbounds %struct.dma_device, ptr %68, i32 0, i32 40
  %69 = ptrtoint ptr %device_prep_dma_cyclic.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %device_prep_dma_cyclic.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %70, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge, label %dmaengine_prep_dma_cyclic.exit.i

lor.lhs.false2.i.i.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_prep_dma_cyclic.exit.thread.i

dmaengine_prep_dma_cyclic.exit.thread.i:          ; preds = %lor.lhs.false2.i.i.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge, %lor.lhs.false.i.i.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge, %if.end44.i.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge
  %fill_tx_desc138.i = getelementptr inbounds %struct.bcm2835_spi, ptr %14, i32 0, i32 21
  %71 = ptrtoint ptr %fill_tx_desc138.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %fill_tx_desc138.i, align 4
  br label %do.end53.i

dmaengine_prep_dma_cyclic.exit.i:                 ; preds = %lor.lhs.false2.i.i
  %call.i122.i = call ptr %70(ptr noundef nonnull %64, i32 noundef %66, i32 noundef 4, i32 noundef 0, i32 noundef 1, i32 noundef 0) #12
  %fill_tx_desc.i = getelementptr inbounds %struct.bcm2835_spi, ptr %14, i32 0, i32 21
  %72 = ptrtoint ptr %fill_tx_desc.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i122.i, ptr %fill_tx_desc.i, align 4
  %tobool49.not.i = icmp eq ptr %call.i122.i, null
  br i1 %tobool49.not.i, label %dmaengine_prep_dma_cyclic.exit.i.do.end53.i_crit_edge, label %if.end54.i

dmaengine_prep_dma_cyclic.exit.i.do.end53.i_crit_edge: ; preds = %dmaengine_prep_dma_cyclic.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end53.i

do.end53.i:                                       ; preds = %dmaengine_prep_dma_cyclic.exit.i.do.end53.i_crit_edge, %dmaengine_prep_dma_cyclic.exit.thread.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46) #15
  br label %err_release.i

if.end54.i:                                       ; preds = %dmaengine_prep_dma_cyclic.exit.i
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %caps.i.i) #12
  %73 = call ptr @memset(ptr %caps.i.i, i32 255, i32 36)
  %chan.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i122.i, i32 0, i32 3
  %74 = ptrtoint ptr %chan.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %chan.i.i, align 4
  %call.i124.i = call i32 @dma_get_slave_caps(ptr noundef %75, ptr noundef nonnull %caps.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.i)
  %tobool.not.i125.i = icmp eq i32 %call.i124.i, 0
  br i1 %tobool.not.i125.i, label %if.end.i127.i, label %if.end54.i.do.end61.i_crit_edge

if.end54.i.do.end61.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end61.i

if.end.i127.i:                                    ; preds = %if.end54.i
  %descriptor_reuse.i.i = getelementptr inbounds %struct.dma_slave_caps, ptr %caps.i.i, i32 0, i32 10
  %76 = ptrtoint ptr %descriptor_reuse.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %descriptor_reuse.i.i, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool1.not.i126.i = icmp eq i8 %77, 0
  br i1 %tobool1.not.i126.i, label %if.end.i127.i.do.end61.i_crit_edge, label %if.end62.i

if.end.i127.i.do.end61.i_crit_edge:               ; preds = %if.end.i127.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end61.i

do.end61.i:                                       ; preds = %if.end.i127.i.do.end61.i_crit_edge, %if.end54.i.do.end61.i_crit_edge
  %retval.0.i128.ph.i = phi i32 [ -1, %if.end.i127.i.do.end61.i_crit_edge ], [ %call.i124.i, %if.end54.i.do.end61.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %caps.i.i) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #15
  br label %err_release.i

if.end62.i:                                       ; preds = %if.end.i127.i
  %flags.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i122.i, i32 0, i32 1
  %78 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %79, 64
  store i32 %or.i.i, ptr %flags.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %caps.i.i) #12
  %src_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config.i, i32 0, i32 1
  %80 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add.i, ptr %src_addr.i, align 4
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config.i, i32 0, i32 3
  %81 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 4, ptr %src_addr_width.i, align 4
  %82 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %31, ptr %dst_addr.i, align 4
  %83 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 4, ptr %dst_addr_width.i, align 4
  %84 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dma_rx.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %device_config.i129.i = getelementptr inbounds %struct.dma_device, ptr %87, i32 0, i32 44
  %88 = ptrtoint ptr %device_config.i129.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %device_config.i129.i, align 4
  %tobool.not.i130.i = icmp eq ptr %89, null
  br i1 %tobool.not.i130.i, label %if.end62.i.do.end74.i_crit_edge, label %dmaengine_slave_config.exit134.i

if.end62.i.do.end74.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end74.i

dmaengine_slave_config.exit134.i:                 ; preds = %if.end62.i
  %call.i131.i = call i32 %89(ptr noundef %85, ptr noundef nonnull %slave_config.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131.i)
  %tobool69.not.i = icmp eq i32 %call.i131.i, 0
  br i1 %tobool69.not.i, label %if.end71.i, label %dmaengine_slave_config.exit134.i.do.end74.i_crit_edge

dmaengine_slave_config.exit134.i.do.end74.i_crit_edge: ; preds = %dmaengine_slave_config.exit134.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end74.i

if.end71.i:                                       ; preds = %dmaengine_slave_config.exit134.i
  call void @__sanitizer_cov_trace_pc() #14
  %can_dma.i = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 24
  %90 = ptrtoint ptr %can_dma.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @bcm2835_spi_can_dma, ptr %can_dma.i, align 4
  br label %if.end40

do.end74.i:                                       ; preds = %dmaengine_slave_config.exit134.i.do.end74.i_crit_edge, %if.end62.i.do.end74.i_crit_edge, %dmaengine_slave_config.exit.i.do.end74.i_crit_edge, %if.end24.i.do.end74.i_crit_edge
  %ret.0.i = phi i32 [ %call.i119.i, %dmaengine_slave_config.exit.i.do.end74.i_crit_edge ], [ %call.i131.i, %dmaengine_slave_config.exit134.i.do.end74.i_crit_edge ], [ -38, %if.end24.i.do.end74.i_crit_edge ], [ -38, %if.end62.i.do.end74.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef %ret.0.i) #15
  br label %err_release.i

err_release.i:                                    ; preds = %do.end74.i, %do.end61.i, %do.end53.i, %do.end42.i, %do.end20.i
  %ret.1.i = phi i32 [ %39, %do.end20.i ], [ %ret.0.i, %do.end74.i ], [ -12, %do.end42.i ], [ %retval.0.i128.ph.i, %do.end61.i ], [ -12, %do.end53.i ]
  call fastcc void @bcm2835_dma_release(ptr noundef nonnull %call.i, ptr noundef %14) #12
  br label %err.i

err.i:                                            ; preds = %err_release.i, %do.end9.i
  %ret.2.i = phi i32 [ %35, %do.end9.i ], [ %ret.1.i, %err_release.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %ret.2.i)
  %cmp.not.i = icmp eq i32 %ret.2.i, -517
  br i1 %cmp.not.i, label %bcm2835_dma_init.exit, label %err.i.if.end40_crit_edge

err.i.if.end40_crit_edge:                         ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

bcm2835_dma_init.exit:                            ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %slave_config.i) #12
  br label %out_clk_disable

if.end40:                                         ; preds = %err.i.if.end40_crit_edge, %if.end71.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %slave_config.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  call void @arm_heavy_mb() #12
  %91 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %14, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 805306368) #12, !srcloc !135
  %93 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %95 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i125 = icmp eq ptr %96, null
  br i1 %tobool.not.i125, label %if.end.i126, label %if.end40.dev_name.exit_crit_edge

if.end40.dev_name.exit_crit_edge:                 ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i126:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %97 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i126, %if.end40.dev_name.exit_crit_edge
  %retval.0.i127 = phi ptr [ %98, %if.end.i126 ], [ %96, %if.end40.dev_name.exit_crit_edge ]
  %call.i128 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %94, ptr noundef nonnull @bcm2835_spi_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i127, ptr noundef %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool46.not = icmp eq i32 %call.i128, 0
  br i1 %tobool46.not, label %if.end49, label %do.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call.i128) #15
  br label %out_dma_release

if.end49:                                         ; preds = %dev_name.exit
  %call50 = call i32 @spi_register_controller(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end57, label %do.end55

do.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call50) #15
  br label %out_dma_release

if.end57:                                         ; preds = %if.end49
  %99 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i130 = icmp eq ptr %100, null
  br i1 %tobool.not.i130, label %if.end.i131, label %if.end57.dev_name.exit133_crit_edge

if.end57.dev_name.exit133_crit_edge:              ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit133

if.end.i131:                                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev, align 4
  br label %dev_name.exit133

dev_name.exit133:                                 ; preds = %if.end.i131, %if.end57.dev_name.exit133_crit_edge
  %retval.0.i132 = phi ptr [ %102, %if.end.i131 ], [ %100, %if.end57.dev_name.exit133_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %name.i) #12
  %103 = call ptr @memset(ptr %name.i, i32 255, i32 64)
  %call.i134 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 64, ptr noundef nonnull @.str.54, ptr noundef %retval.0.i132) #12
  %call2.i = call ptr @debugfs_create_dir(ptr noundef nonnull %name.i, ptr noundef null) #12
  %debugfs_dir.i = getelementptr inbounds %struct.bcm2835_spi, ptr %14, i32 0, i32 13
  %104 = ptrtoint ptr %debugfs_dir.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call2.i, ptr %debugfs_dir.i, align 4
  %count_transfer_polling.i = getelementptr inbounds %struct.bcm2835_spi, ptr %14, i32 0, i32 14
  call void @debugfs_create_u64(ptr noundef nonnull @.str.55, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %count_transfer_polling.i) #12
  %count_transfer_irq.i = getelementptr inbounds %struct.bcm2835_spi, ptr %14, i32 0, i32 15
  call void @debugfs_create_u64(ptr noundef nonnull @.str.56, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %count_transfer_irq.i) #12
  %count_transfer_irq_after_polling.i = getelementptr inbounds %struct.bcm2835_spi, ptr %14, i32 0, i32 16
  call void @debugfs_create_u64(ptr noundef nonnull @.str.57, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %count_transfer_irq_after_polling.i) #12
  %count_transfer_dma.i = getelementptr inbounds %struct.bcm2835_spi, ptr %14, i32 0, i32 17
  call void @debugfs_create_u64(ptr noundef nonnull @.str.58, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %count_transfer_dma.i) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name.i) #12
  br label %cleanup61

out_dma_release:                                  ; preds = %do.end55, %do.end
  %err.0 = phi i32 [ %call.i128, %do.end ], [ %call50, %do.end55 ]
  call fastcc void @bcm2835_dma_release(ptr noundef nonnull %call.i, ptr noundef %14)
  br label %out_clk_disable

out_clk_disable:                                  ; preds = %out_dma_release, %bcm2835_dma_init.exit
  %err.1 = phi i32 [ -517, %bcm2835_dma_init.exit ], [ %err.0, %out_dma_release ]
  %105 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %106) #12
  call void @clk_unprepare(ptr noundef %106) #12
  br label %cleanup61

cleanup61:                                        ; preds = %out_clk_disable, %dev_name.exit133, %if.then27, %if.then17, %if.then9, %entry.cleanup61_crit_edge
  %retval.0 = phi i32 [ %17, %if.then9 ], [ %call21, %if.then17 ], [ %spec.select, %if.then27 ], [ %err.1, %out_clk_disable ], [ 0, %dev_name.exit133 ], [ -12, %entry.cleanup61_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_spi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i7, align 4
  %debugfs_dir.i = getelementptr inbounds %struct.bcm2835_spi, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %debugfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_dir.i, align 4
  tail call void @debugfs_remove(ptr noundef %5) #12
  %6 = ptrtoint ptr %debugfs_dir.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %debugfs_dir.i, align 4
  tail call void @spi_unregister_controller(ptr noundef %1) #12
  tail call fastcc void @bcm2835_dma_release(ptr noundef %1, ptr noundef %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 805306368) #12, !srcloc !135
  %clk = getelementptr inbounds %struct.bcm2835_spi, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %10) #12
  tail call void @clk_unprepare(ptr noundef %10) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_spi_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %driver_data.i.i7.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i7.i, align 4
  %debugfs_dir.i.i = getelementptr inbounds %struct.bcm2835_spi, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %debugfs_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_dir.i.i, align 4
  tail call void @debugfs_remove(ptr noundef %5) #12
  %6 = ptrtoint ptr %debugfs_dir.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %debugfs_dir.i.i, align 4
  tail call void @spi_unregister_controller(ptr noundef %1) #12
  tail call fastcc void @bcm2835_dma_release(ptr noundef %1, ptr noundef %3) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 805306368) #12, !srcloc !135
  %clk.i = getelementptr inbounds %struct.bcm2835_spi, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %10) #12
  tail call void @clk_unprepare(ptr noundef %10) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_spi_setup(ptr noundef %spi) #2 align 64 {
entry:
  %caps.i.i = alloca %struct.dma_slave_caps, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 1
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %controller_state.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %2 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller_state.i, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 256) #16
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  %5 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %controller_state.i, align 8
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 61
  %6 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_rx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.if.end12_crit_edge, label %if.end.i

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end.i:                                         ; preds = %if.end
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %clear_rx_cs.i = getelementptr inbounds %struct.bcm2835_spidev, ptr %call7.i.i, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %clear_rx_cs.i) #12
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !136

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %11) #12
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %15, %if.end.i.i.i ], [ %13, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.26, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #12
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %11, ptr noundef %clear_rx_cs.i, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %16 = load ptr, ptr @mem_map, align 4
  %17 = ptrtoint ptr %clear_rx_cs.i to i32
  %sub.i.i = add i32 %17, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %16, i32 %shr.i.i
  %and.i.i = and i32 %17, 4088
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %11, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef 4, i32 noundef 1, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %clear_rx_addr.i = getelementptr inbounds %struct.bcm2835_spidev, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %clear_rx_addr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i.i, ptr %clear_rx_addr.i, align 8
  %19 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma_rx.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %dev4.i = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev4.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %24, i32 noundef %retval.0.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %do.end.i, label %if.end11.i

do.end.i:                                         ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.17) #15
  %25 = ptrtoint ptr %clear_rx_addr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %clear_rx_addr.i, align 8
  br label %err_cleanup

if.end11.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %26 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma_rx.i, align 4
  %28 = ptrtoint ptr %clear_rx_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %clear_rx_addr.i, align 8
  %tobool.not.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i, label %if.end11.i.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

if.end11.i.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_prep_dma_cyclic.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end11.i
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  %tobool1.not.i.i = icmp eq ptr %31, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_prep_dma_cyclic.exit.thread.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_dma_cyclic.i.i = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 40
  %32 = ptrtoint ptr %device_prep_dma_cyclic.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device_prep_dma_cyclic.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %33, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge, label %dmaengine_prep_dma_cyclic.exit.i

lor.lhs.false2.i.i.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_prep_dma_cyclic.exit.thread.i

dmaengine_prep_dma_cyclic.exit.thread.i:          ; preds = %lor.lhs.false2.i.i.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge, %lor.lhs.false.i.i.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge, %if.end11.i.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge
  %clear_rx_desc10.i = getelementptr inbounds %struct.bcm2835_spidev, ptr %call7.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %clear_rx_desc10.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %clear_rx_desc10.i, align 4
  br label %do.end20.i

dmaengine_prep_dma_cyclic.exit.i:                 ; preds = %lor.lhs.false2.i.i
  %call.i1.i = tail call ptr %33(ptr noundef nonnull %27, i32 noundef %29, i32 noundef 4, i32 noundef 0, i32 noundef 1, i32 noundef 0) #12
  %clear_rx_desc.i = getelementptr inbounds %struct.bcm2835_spidev, ptr %call7.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %clear_rx_desc.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i1.i, ptr %clear_rx_desc.i, align 4
  %tobool16.not.i = icmp eq ptr %call.i1.i, null
  br i1 %tobool16.not.i, label %dmaengine_prep_dma_cyclic.exit.i.do.end20.i_crit_edge, label %if.end22.i

dmaengine_prep_dma_cyclic.exit.i.do.end20.i_crit_edge: ; preds = %dmaengine_prep_dma_cyclic.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end20.i

do.end20.i:                                       ; preds = %dmaengine_prep_dma_cyclic.exit.i.do.end20.i_crit_edge, %dmaengine_prep_dma_cyclic.exit.thread.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.20) #15
  br label %err_cleanup

if.end22.i:                                       ; preds = %dmaengine_prep_dma_cyclic.exit.i
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %caps.i.i) #12
  %36 = call ptr @memset(ptr %caps.i.i, i32 255, i32 36)
  %chan.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i1.i, i32 0, i32 3
  %37 = ptrtoint ptr %chan.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chan.i.i, align 4
  %call.i3.i = call i32 @dma_get_slave_caps(ptr noundef %38, ptr noundef nonnull %caps.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool.not.i4.i, label %if.end.i6.i, label %if.end22.i.do.end29.i_crit_edge

if.end22.i.do.end29.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29.i

if.end.i6.i:                                      ; preds = %if.end22.i
  %descriptor_reuse.i.i = getelementptr inbounds %struct.dma_slave_caps, ptr %caps.i.i, i32 0, i32 10
  %39 = ptrtoint ptr %descriptor_reuse.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %descriptor_reuse.i.i, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool1.not.i5.i = icmp eq i8 %40, 0
  br i1 %tobool1.not.i5.i, label %if.end.i6.i.do.end29.i_crit_edge, label %dmaengine_desc_set_reuse.exit.i

if.end.i6.i.do.end29.i_crit_edge:                 ; preds = %if.end.i6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29.i

dmaengine_desc_set_reuse.exit.i:                  ; preds = %if.end.i6.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i1.i, i32 0, i32 1
  %41 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %42, 64
  store i32 %or.i.i, ptr %flags.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %caps.i.i) #12
  br label %if.end12

do.end29.i:                                       ; preds = %if.end.i6.i.do.end29.i_crit_edge, %if.end22.i.do.end29.i_crit_edge
  %retval.0.i7.ph.i = phi i32 [ -1, %if.end.i6.i.do.end29.i_crit_edge ], [ %call.i3.i, %if.end22.i.do.end29.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %caps.i.i) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.23) #15
  br label %err_cleanup

if.end12:                                         ; preds = %dmaengine_desc_set_reuse.exit.i, %if.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  %slv.0 = phi ptr [ %3, %entry.if.end12_crit_edge ], [ %call7.i.i, %if.end.if.end12_crit_edge ], [ %call7.i.i, %dmaengine_desc_set_reuse.exit.i ]
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %43 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mode, align 8
  %and13 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %spec.select = select i1 %tobool14.not, i32 3, i32 11
  %and18 = shl i32 %44, 2
  %45 = and i32 %and18, 4
  %46 = or i32 %spec.select, %45
  %47 = ptrtoint ptr %slv.0 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %slv.0, align 128
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 61
  %48 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dma_rx, align 4
  %tobool23.not = icmp eq ptr %49, null
  br i1 %tobool23.not, label %if.end12.if.end29_crit_edge, label %if.then24

if.end12.if.end29_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then24:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %or27 = or i32 %46, 416
  %clear_rx_cs = getelementptr inbounds %struct.bcm2835_spidev, ptr %slv.0, i32 0, i32 4
  %50 = ptrtoint ptr %clear_rx_cs to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or27, ptr %clear_rx_cs, align 128
  %51 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dma_rx, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %54, i32 0, i32 15
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  %clear_rx_addr = getelementptr inbounds %struct.bcm2835_spidev, ptr %slv.0, i32 0, i32 2
  %57 = ptrtoint ptr %clear_rx_addr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %clear_rx_addr, align 8
  call void @dma_sync_single_for_device(ptr noundef %56, i32 noundef %58, i32 noundef 4, i32 noundef 1) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end12.if.end29_crit_edge
  %59 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mode, align 8
  %and31 = and i32 %60, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  %cs_gpiod = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 14
  %61 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cs_gpiod, align 8
  %tobool35.not = icmp eq ptr %62, null
  br i1 %tobool35.not, label %if.end37, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end37:                                         ; preds = %if.end34
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %63 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %chip_select, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %64)
  %cmp = icmp ugt i8 %64, 1
  br i1 %cmp, label %do.end, label %if.end41

do.end:                                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.10) #15
  br label %err_cleanup

if.end41:                                         ; preds = %if.end37
  %call42 = call ptr @gpiochip_find(ptr noundef nonnull @.str.12, ptr noundef nonnull @chip_match_name) #12
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.end41.cleanup_crit_edge, label %if.end45

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %65 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %chip_select, align 4
  %conv47 = zext i8 %66 to i32
  %sub48 = sub nsw i32 8, %conv47
  %call49 = call ptr @gpiochip_request_own_desc(ptr noundef nonnull %call42, i32 noundef %sub48, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 3) #12
  %67 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call49, ptr %cs_gpiod, align 8
  %cmp.i = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then53, label %do.end59

if.then53:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %call49 to i32
  br label %err_cleanup

do.end59:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %chip_select, align 4
  %conv62 = zext i8 %70 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.14, i32 noundef %conv62) #15
  br label %cleanup

err_cleanup:                                      ; preds = %if.then53, %do.end, %do.end29.i, %do.end20.i, %do.end.i
  %ret.0 = phi i32 [ -22, %do.end ], [ %68, %if.then53 ], [ -12, %do.end20.i ], [ %retval.0.i7.ph.i, %do.end29.i ], [ -12, %do.end.i ]
  %71 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %controller_state.i, align 8
  %73 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %controller, align 8
  %clear_rx_desc.i99 = getelementptr inbounds %struct.bcm2835_spidev, ptr %72, i32 0, i32 1
  %75 = ptrtoint ptr %clear_rx_desc.i99 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %clear_rx_desc.i99, align 4
  %tobool.not.i100 = icmp eq ptr %76, null
  br i1 %tobool.not.i100, label %err_cleanup.if.end.i102_crit_edge, label %if.then.i

err_cleanup.if.end.i102_crit_edge:                ; preds = %err_cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i102

if.then.i:                                        ; preds = %err_cleanup
  %flags.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %78, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.then.i.if.end.i102_crit_edge, label %if.end.i.i

if.then.i.if.end.i102_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i102

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %desc_free.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %76, i32 0, i32 5
  %79 = ptrtoint ptr %desc_free.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %desc_free.i.i, align 4
  %call1.i.i = call i32 %80(ptr noundef nonnull %76) #12
  br label %if.end.i102

if.end.i102:                                      ; preds = %if.end.i.i, %if.then.i.if.end.i102_crit_edge, %err_cleanup.if.end.i102_crit_edge
  %clear_rx_addr.i101 = getelementptr inbounds %struct.bcm2835_spidev, ptr %72, i32 0, i32 2
  %81 = ptrtoint ptr %clear_rx_addr.i101 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %clear_rx_addr.i101, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool3.not.i = icmp eq i32 %82, 0
  br i1 %tobool3.not.i, label %if.end.i102.bcm2835_spi_cleanup.exit_crit_edge, label %if.then4.i

if.end.i102.bcm2835_spi_cleanup.exit_crit_edge:   ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #14
  br label %bcm2835_spi_cleanup.exit

if.then4.i:                                       ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #14
  %dma_rx.i103 = getelementptr inbounds %struct.spi_controller, ptr %74, i32 0, i32 61
  %83 = ptrtoint ptr %dma_rx.i103 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dma_rx.i103, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %dev.i104 = getelementptr inbounds %struct.dma_device, ptr %86, i32 0, i32 15
  %87 = ptrtoint ptr %dev.i104 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i104, align 4
  call void @dma_unmap_page_attrs(ptr noundef %88, i32 noundef %82, i32 noundef 4, i32 noundef 1, i32 noundef 0) #12
  br label %bcm2835_spi_cleanup.exit

bcm2835_spi_cleanup.exit:                         ; preds = %if.then4.i, %if.end.i102.bcm2835_spi_cleanup.exit_crit_edge
  call void @kfree(ptr noundef %72) #12
  br label %cleanup

cleanup:                                          ; preds = %bcm2835_spi_cleanup.exit, %do.end59, %if.end41.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %bcm2835_spi_cleanup.exit ], [ 0, %do.end59 ], [ -12, %if.then.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_spi_cleanup(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_state.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %0 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_state.i, align 8
  %controller = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 1
  %2 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller, align 8
  %clear_rx_desc = getelementptr inbounds %struct.bcm2835_spidev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clear_rx_desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clear_rx_desc, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc_free.i, align 4
  %call1.i = tail call i32 %9(ptr noundef nonnull %5) #12
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %clear_rx_addr = getelementptr inbounds %struct.bcm2835_spidev, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %clear_rx_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clear_rx_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 61
  %12 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_rx, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %17, i32 noundef %11, i32 noundef 4, i32 noundef 1, i32 noundef 0) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_spi_transfer_one(ptr noundef %ctlr, ptr noundef %spi, ptr noundef %tfr) #2 align 64 {
entry:
  %val.i195.i.i = alloca i32, align 4
  %val.i187.i.i = alloca i32, align 4
  %val.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %controller_state.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %2 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller_state.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 128
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 12
  %6 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed_hz, align 4
  %clk_hz = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %clk_hz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clk_hz, align 8
  %div98 = lshr i32 %9, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %div98)
  %cmp.not = icmp ult i32 %7, %div98
  br i1 %cmp.not, label %if.else, label %entry.cond.true_crit_edge

entry.cond.true_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.else.cond.false_crit_edge, label %if.then2

if.else.cond.false_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

if.then2:                                         ; preds = %if.else
  %add = add i32 %7, -1
  %sub = add i32 %add, %9
  %div4 = udiv i32 %sub, %7
  %rem = and i32 %div4, 1
  %add5 = add i32 %rem, %div4
  %10 = add i32 %add5, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65535, i32 %10)
  %11 = icmp ult i32 %10, -65535
  br i1 %11, label %if.then2.cond.false_crit_edge, label %if.then2.cond.true_crit_edge

if.then2.cond.true_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true

if.then2.cond.false_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

cond.true:                                        ; preds = %if.then2.cond.true_crit_edge, %entry.cond.true_crit_edge
  %cdiv.0107 = phi i32 [ 2, %entry.cond.true_crit_edge ], [ %add5, %if.then2.cond.true_crit_edge ]
  %div13 = udiv i32 %9, %cdiv.0107
  br label %cond.end

cond.false:                                       ; preds = %if.then2.cond.false_crit_edge, %if.else.cond.false_crit_edge
  %div1599 = lshr i32 %9, 16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cdiv.0102 = phi i32 [ %cdiv.0107, %cond.true ], [ 0, %cond.false ]
  %cond = phi i32 [ %div13, %cond.true ], [ %div1599, %cond.false ]
  %effective_speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 13
  %12 = ptrtoint ptr %effective_speed_hz to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond, ptr %effective_speed_hz, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %13 = tail call i32 @llvm.bswap.i32(i32 %cdiv.0102) #12
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #12, !srcloc !135
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode, align 8
  %and = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %cond.end.if.end19_crit_edge, label %land.lhs.true

cond.end.if.end19_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

land.lhs.true:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 1
  %18 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_buf, align 4
  %tobool17.not = icmp eq ptr %19, null
  %or = or i32 %5, 4096
  %spec.select = select i1 %tobool17.not, i32 %5, i32 %or
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true, %cond.end.if.end19_crit_edge
  %cs.0 = phi i32 [ %5, %cond.end.if.end19_crit_edge ], [ %spec.select, %land.lhs.true ]
  %20 = ptrtoint ptr %tfr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tfr, align 4
  %tx_buf20 = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %tx_buf20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %tx_buf20, align 8
  %rx_buf21 = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 1
  %23 = ptrtoint ptr %rx_buf21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_buf21, align 4
  %rx_buf22 = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %rx_buf22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %rx_buf22, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 2
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %tx_len = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %tx_len to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %tx_len, align 8
  %29 = load i32, ptr %len, align 4
  %rx_len = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %rx_len to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %rx_len, align 4
  %31 = load i32, ptr @polling_limit_us, align 4
  %32 = add i32 %31, -9000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9000000, i32 %32)
  %33 = icmp ult i32 %32, -9000000
  br i1 %33, label %if.end19.cond.end35_crit_edge, label %cond.true31

if.end19.cond.end35_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end35

cond.true31:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %div26 = udiv i32 9000000, %31
  %34 = ptrtoint ptr %effective_speed_hz to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %effective_speed_hz, align 4
  %div33 = udiv i32 %35, %div26
  br label %cond.end35

cond.end35:                                       ; preds = %cond.true31, %if.end19.cond.end35_crit_edge
  %cond36 = phi i32 [ %div33, %cond.true31 ], [ 1, %if.end19.cond.end35_crit_edge ]
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %cond36)
  %cmp38 = icmp ult i32 %37, %cond36
  br i1 %cmp38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #14
  %call40 = tail call fastcc i32 @bcm2835_spi_transfer_one_poll(ptr noundef %ctlr, ptr noundef %spi, i32 noundef %cs.0)
  br label %cleanup

if.end41:                                         ; preds = %cond.end35
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 24
  %38 = ptrtoint ptr %can_dma to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %can_dma, align 4
  %tobool42.not = icmp ne ptr %39, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %37)
  %cmp.i = icmp ugt i32 %37, 95
  %or.cond110 = select i1 %tobool42.not, i1 %cmp.i, i1 false
  br i1 %or.cond110, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end41
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i, align 4
  %count_transfer_dma.i = getelementptr inbounds %struct.bcm2835_spi, ptr %41, i32 0, i32 17
  %42 = ptrtoint ptr %count_transfer_dma.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %count_transfer_dma.i, align 8
  %inc.i = add i64 %43, 1
  store i64 %inc.i, ptr %count_transfer_dma.i, align 8
  %tfr1.i.i = getelementptr inbounds %struct.bcm2835_spi, ptr %41, i32 0, i32 4
  %44 = ptrtoint ptr %tfr1.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %tfr, ptr %tfr1.i.i, align 8
  %tx_prologue.i.i = getelementptr inbounds %struct.bcm2835_spi, ptr %41, i32 0, i32 10
  %45 = ptrtoint ptr %tx_prologue.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %tx_prologue.i.i, align 8
  %rx_prologue.i.i = getelementptr inbounds %struct.bcm2835_spi, ptr %41, i32 0, i32 11
  %46 = ptrtoint ptr %rx_prologue.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %rx_prologue.i.i, align 4
  %tx_spillover.i.i = getelementptr inbounds %struct.bcm2835_spi, ptr %41, i32 0, i32 12
  %47 = ptrtoint ptr %tx_spillover.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %tx_spillover.i.i, align 8
  %tx_buf.i.i = getelementptr inbounds %struct.bcm2835_spi, ptr %41, i32 0, i32 6
  %48 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tx_buf.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i, label %if.then45.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then45.if.end.i.i_crit_edge:                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then45
  %tx_sg.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 5
  %50 = ptrtoint ptr %tx_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tx_sg.i.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %and.i.i.i = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %51, i32 0, i32 4
  %54 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma_length.i.i, align 4
  %and.i.i = and i32 %55, 3
  %56 = ptrtoint ptr %tx_prologue.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and.i.i, ptr %tx_prologue.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then45.if.end.i.i_crit_edge
  %rx_buf.i.i = getelementptr inbounds %struct.bcm2835_spi, ptr %41, i32 0, i32 7
  %57 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rx_buf.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %58, null
  br i1 %tobool6.not.i.i, label %if.end.i.i.if.end40thread-pre-split.i.i_crit_edge, label %land.lhs.true7.i.i

if.end.i.i.if.end40thread-pre-split.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40thread-pre-split.i.i

land.lhs.true7.i.i:                               ; preds = %if.end.i.i
  %rx_sg.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 6
  %59 = ptrtoint ptr %rx_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rx_sg.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %and.i181.i.i = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i181.i.i)
  %tobool.i182.not.i.i = icmp eq i32 %and.i181.i.i, 0
  br i1 %tobool.i182.not.i.i, label %if.then11.i.i, label %land.lhs.true7.i.i.if.end40thread-pre-split.i.i_crit_edge

land.lhs.true7.i.i.if.end40thread-pre-split.i.i_crit_edge: ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40thread-pre-split.i.i

if.then11.i.i:                                    ; preds = %land.lhs.true7.i.i
  %dma_length15.i.i = getelementptr inbounds %struct.scatterlist, ptr %60, i32 0, i32 4
  %63 = ptrtoint ptr %dma_length15.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dma_length15.i.i, align 4
  %and16.i.i = and i32 %64, 3
  %65 = ptrtoint ptr %rx_prologue.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and16.i.i, ptr %rx_prologue.i.i, align 4
  %66 = ptrtoint ptr %tx_prologue.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx_prologue.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and16.i.i, i32 %67)
  %cmp.i.i = icmp sgt i32 %and16.i.i, %67
  br i1 %cmp.i.i, label %if.then20.i.i, label %if.then11.i.i.if.end40.i.i_crit_edge

if.then11.i.i.if.end40.i.i_crit_edge:             ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40.i.i

if.then20.i.i:                                    ; preds = %if.then11.i.i
  br i1 %tobool.not.i.i, label %if.then20.i.i.if.then27.i.i_crit_edge, label %lor.lhs.false.i.i

if.then20.i.i.if.then27.i.i_crit_edge:            ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27.i.i

lor.lhs.false.i.i:                                ; preds = %if.then20.i.i
  %tx_sg23.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 5
  %68 = ptrtoint ptr %tx_sg23.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tx_sg23.i.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  %and.i183.i.i = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i183.i.i)
  %tobool.i184.not.i.i = icmp eq i32 %and.i183.i.i, 0
  br i1 %tobool.i184.not.i.i, label %if.else.i.i, label %lor.lhs.false.i.i.if.then27.i.i_crit_edge

lor.lhs.false.i.i.if.then27.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27.i.i

if.then27.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then27.i.i_crit_edge, %if.then20.i.i.if.then27.i.i_crit_edge
  %72 = ptrtoint ptr %tx_prologue.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %and16.i.i, ptr %tx_prologue.i.i, align 8
  br label %if.end40.i.i

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.i.i = add i32 %67, 4
  %73 = ptrtoint ptr %tx_prologue.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add.i.i, ptr %tx_prologue.i.i, align 8
  %74 = ptrtoint ptr %tx_sg23.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tx_sg23.i.i, align 4
  %dma_length34.i.i = getelementptr inbounds %struct.scatterlist, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %dma_length34.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dma_length34.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %77)
  %tobool36.not.i.i = icmp ult i32 %77, 4
  %lnot.ext.i.i = zext i1 %tobool36.not.i.i to i32
  %78 = ptrtoint ptr %tx_spillover.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %lnot.ext.i.i, ptr %tx_spillover.i.i, align 8
  br label %if.end40thread-pre-split.i.i

if.end40thread-pre-split.i.i:                     ; preds = %if.else.i.i, %land.lhs.true7.i.i.if.end40thread-pre-split.i.i_crit_edge, %if.end.i.i.if.end40thread-pre-split.i.i_crit_edge
  %79 = ptrtoint ptr %tx_prologue.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pr.i.i = load i32, ptr %tx_prologue.i.i, align 8
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %if.end40thread-pre-split.i.i, %if.then27.i.i, %if.then11.i.i.if.end40.i.i_crit_edge
  %80 = phi i32 [ %.pr.i.i, %if.end40thread-pre-split.i.i ], [ %67, %if.then11.i.i.if.end40.i.i_crit_edge ], [ %and16.i.i, %if.then27.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool42.not.i.i = icmp eq i32 %80, 0
  br i1 %tobool42.not.i.i, label %if.end40.i.i.bcm2835_spi_transfer_prologue.exit.i_crit_edge, label %if.end44.i.i

if.end40.i.i.bcm2835_spi_transfer_prologue.exit.i_crit_edge: ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bcm2835_spi_transfer_prologue.exit.i

if.end44.i.i:                                     ; preds = %if.end40.i.i
  %81 = ptrtoint ptr %rx_prologue.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rx_prologue.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool46.not.i.i = icmp eq i32 %82, 0
  br i1 %tobool46.not.i.i, label %if.end44.i.i.if.end70.i.i_crit_edge, label %if.then47.i.i

if.end44.i.i.if.end70.i.i_crit_edge:              ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.i.i

if.then47.i.i:                                    ; preds = %if.end44.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #12
  %84 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %41, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %85, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %83) #12, !srcloc !135
  %or49.i.i = or i32 %cs.0, 384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %86 = tail call i32 @llvm.bswap.i32(i32 %or49.i.i) #12
  %87 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %41, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %86) #12, !srcloc !135
  %89 = ptrtoint ptr %rx_prologue.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rx_prologue.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i)
  %91 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %val.i.i.i, align 4
  %tx_len.i.i.i = getelementptr inbounds %struct.bcm2835_spi, ptr %41, i32 0, i32 8
  %92 = ptrtoint ptr %tx_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tx_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %93, %90
  store i32 %sub.i.i.i, ptr %tx_len.i.i.i, align 8
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.end.i.i.i.do.body.i.i.i_crit_edge, %if.then47.i.i
  %count.addr.0.i.i.i = phi i32 [ %90, %if.then47.i.i ], [ %sub3.i.i.i, %if.end.i.i.i.do.body.i.i.i_crit_edge ]
  %94 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tx_buf.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %95, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %96 = tail call i32 @llvm.smin.i32(i32 %count.addr.0.i.i.i, i32 4) #12
  %97 = call ptr @memcpy(ptr %val.i.i.i, ptr %95, i32 %96)
  %add.ptr.i185.i.i = getelementptr i8, ptr %95, i32 %96
  %98 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %add.ptr.i185.i.i, ptr %tx_buf.i.i, align 8
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %val.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %100 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %val.i.i.i.0.val.i.i.i.0.val.i.i.0.val.i.i.0.val.i.0.val.i.0.val.0.val.0.val.0..i.i.i = load i32, ptr %val.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %101 = tail call i32 @llvm.bswap.i32(i32 %val.i.i.i.0.val.i.i.i.0.val.i.i.0.val.i.i.0.val.i.0.val.i.0.val.0.val.0.val.0..i.i.i) #12
  %102 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %41, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %103, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %101) #12, !srcloc !135
  %sub3.i.i.i = add i32 %count.addr.0.i.i.i, -4
  %cmp4.i.i.i = icmp sgt i32 %sub3.i.i.i, 0
  br i1 %cmp4.i.i.i, label %if.end.i.i.i.do.body.i.i.i_crit_edge, label %bcm2835_wr_fifo_count.exit.i.i

if.end.i.i.i.do.body.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

bcm2835_wr_fifo_count.exit.i.i:                   ; preds = %if.end.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i)
  %104 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %41, align 8
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #12, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  %107 = and i32 %106, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.not5.i.i.i = icmp eq i32 %107, 0
  br i1 %tobool.not5.i.i.i, label %bcm2835_wr_fifo_count.exit.i.i.do.end.i.i.i_crit_edge, label %bcm2835_wr_fifo_count.exit.i.i.bcm2835_wait_tx_fifo_empty.exit.i.i_crit_edge

bcm2835_wr_fifo_count.exit.i.i.bcm2835_wait_tx_fifo_empty.exit.i.i_crit_edge: ; preds = %bcm2835_wr_fifo_count.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bcm2835_wait_tx_fifo_empty.exit.i.i

bcm2835_wr_fifo_count.exit.i.i.do.end.i.i.i_crit_edge: ; preds = %bcm2835_wr_fifo_count.exit.i.i
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %do.end.i.i.i.do.end.i.i.i_crit_edge, %bcm2835_wr_fifo_count.exit.i.i.do.end.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !139
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !140
  %108 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %41, align 8
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #12, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  %111 = and i32 %110, 256
  %tobool.not.i186.i.i = icmp eq i32 %111, 0
  br i1 %tobool.not.i186.i.i, label %do.end.i.i.i.do.end.i.i.i_crit_edge, label %do.end.i.i.i.bcm2835_wait_tx_fifo_empty.exit.i.i_crit_edge

do.end.i.i.i.bcm2835_wait_tx_fifo_empty.exit.i.i_crit_edge: ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bcm2835_wait_tx_fifo_empty.exit.i.i

do.end.i.i.i.do.end.i.i.i_crit_edge:              ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i

bcm2835_wait_tx_fifo_empty.exit.i.i:              ; preds = %do.end.i.i.i.bcm2835_wait_tx_fifo_empty.exit.i.i_crit_edge, %bcm2835_wr_fifo_count.exit.i.i.bcm2835_wait_tx_fifo_empty.exit.i.i_crit_edge
  %112 = ptrtoint ptr %rx_prologue.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %rx_prologue.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i187.i.i)
  %rx_len.i.i.i = getelementptr inbounds %struct.bcm2835_spi, ptr %41, i32 0, i32 9
  %114 = ptrtoint ptr %rx_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rx_len.i.i.i, align 4
  %sub.i188.i.i = sub i32 %115, %113
  store i32 %sub.i188.i.i, ptr %rx_len.i.i.i, align 4
  br label %do.body.i192.i.i

do.body.i192.i.i:                                 ; preds = %do.body.i192.i.i.do.body.i192.i.i_crit_edge, %bcm2835_wait_tx_fifo_empty.exit.i.i
  %count.addr.0.i189.i.i = phi i32 [ %113, %bcm2835_wait_tx_fifo_empty.exit.i.i ], [ %sub2.i.i.i, %do.body.i192.i.i.do.body.i192.i.i_crit_edge ]
  %116 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %41, align 8
  %add.ptr.i.i190.i.i = getelementptr i8, ptr %117, i32 4
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i190.i.i) #12, !srcloc !137
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  %120 = ptrtoint ptr %val.i187.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %val.i187.i.i, align 4
  %121 = tail call i32 @llvm.smin.i32(i32 %count.addr.0.i189.i.i, i32 4) #12
  %122 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rx_buf.i.i, align 4
  %124 = call ptr @memcpy(ptr %123, ptr %val.i187.i.i, i32 %121)
  %125 = load ptr, ptr %rx_buf.i.i, align 4
  %add.ptr.i191.i.i = getelementptr i8, ptr %125, i32 %121
  store ptr %add.ptr.i191.i.i, ptr %rx_buf.i.i, align 4
  %sub2.i.i.i = add i32 %count.addr.0.i189.i.i, -4
  %cmp3.i.i.i = icmp sgt i32 %sub2.i.i.i, 0
  br i1 %cmp3.i.i.i, label %do.body.i192.i.i.do.body.i192.i.i_crit_edge, label %bcm2835_rd_fifo_count.exit.i.i

do.body.i192.i.i.do.body.i192.i.i_crit_edge:      ; preds = %do.body.i192.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i192.i.i

bcm2835_rd_fifo_count.exit.i.i:                   ; preds = %do.body.i192.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i187.i.i)
  %or54.i.i = or i32 %cs.0, 65584
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %126 = tail call i32 @llvm.bswap.i32(i32 %or54.i.i) #12
  %127 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %41, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %126) #12, !srcloc !135
  %dma_rx.i.i = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 61
  %129 = ptrtoint ptr %dma_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dma_rx.i.i, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %132, i32 0, i32 15
  %133 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev.i.i, align 4
  %rx_sg55.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 6
  %135 = ptrtoint ptr %rx_sg55.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %rx_sg55.i.i, align 4
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %136, i32 0, i32 3
  %137 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %dma_address.i.i, align 4
  %139 = ptrtoint ptr %rx_prologue.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %rx_prologue.i.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %134, i32 noundef %138, i32 noundef %140, i32 noundef 2) #12
  %141 = ptrtoint ptr %rx_prologue.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %rx_prologue.i.i, align 4
  %143 = ptrtoint ptr %rx_sg55.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rx_sg55.i.i, align 4
  %dma_address63.i.i = getelementptr inbounds %struct.scatterlist, ptr %144, i32 0, i32 3
  %145 = ptrtoint ptr %dma_address63.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %dma_address63.i.i, align 4
  %add64.i.i = add i32 %146, %142
  store i32 %add64.i.i, ptr %dma_address63.i.i, align 4
  %147 = load i32, ptr %rx_prologue.i.i, align 4
  %148 = load ptr, ptr %rx_sg55.i.i, align 4
  %dma_length69.i.i = getelementptr inbounds %struct.scatterlist, ptr %148, i32 0, i32 4
  %149 = ptrtoint ptr %dma_length69.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %dma_length69.i.i, align 4
  %sub.i.i = sub i32 %150, %147
  store i32 %sub.i.i, ptr %dma_length69.i.i, align 4
  br label %if.end70.i.i

if.end70.i.i:                                     ; preds = %bcm2835_rd_fifo_count.exit.i.i, %if.end44.i.i.if.end70.i.i_crit_edge
  %151 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %tx_buf.i.i, align 8
  %tobool72.not.i.i = icmp eq ptr %152, null
  br i1 %tobool72.not.i.i, label %if.end70.i.i.if.else.i_crit_edge, label %if.end74.i.i

if.end70.i.i.if.else.i_crit_edge:                 ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.end74.i.i:                                     ; preds = %if.end70.i.i
  %153 = ptrtoint ptr %tx_prologue.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %tx_prologue.i.i, align 8
  %155 = ptrtoint ptr %rx_prologue.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %rx_prologue.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %156)
  %tobool78.not.i.i = icmp eq i32 %154, %156
  br i1 %tobool78.not.i.i, label %if.end74.i.i.if.end84.i.i_crit_edge, label %if.then79.i.i

if.end74.i.i.if.end84.i.i_crit_edge:              ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84.i.i

if.then79.i.i:                                    ; preds = %if.end74.i.i
  %sub77.i.i = sub i32 %154, %156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %157 = tail call i32 @llvm.bswap.i32(i32 %sub77.i.i) #12
  %158 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %41, align 8
  %add.ptr.i194.i.i = getelementptr i8, ptr %159, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i194.i.i, i32 %157) #12, !srcloc !135
  %or81.i.i = or i32 %cs.0, 384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %160 = tail call i32 @llvm.bswap.i32(i32 %or81.i.i) #12
  %161 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %41, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %160) #12, !srcloc !135
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i195.i.i)
  %163 = ptrtoint ptr %val.i195.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 -1, ptr %val.i195.i.i, align 4
  %tx_len.i196.i.i = getelementptr inbounds %struct.bcm2835_spi, ptr %41, i32 0, i32 8
  %164 = ptrtoint ptr %tx_len.i196.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %tx_len.i196.i.i, align 8
  %sub.i197.i.i = sub i32 %165, %sub77.i.i
  store i32 %sub.i197.i.i, ptr %tx_len.i196.i.i, align 8
  br label %do.body.i201.i.i

do.body.i201.i.i:                                 ; preds = %if.end.i209.i.i.do.body.i201.i.i_crit_edge, %if.then79.i.i
  %count.addr.0.i199.i.i = phi i32 [ %sub77.i.i, %if.then79.i.i ], [ %sub3.i207.i.i, %if.end.i209.i.i.do.body.i201.i.i_crit_edge ]
  %166 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %tx_buf.i.i, align 8
  %tobool.not.i200.i.i = icmp eq ptr %167, null
  br i1 %tobool.not.i200.i.i, label %if.else.i204.i.i, label %if.then.i203.i.i

if.then.i203.i.i:                                 ; preds = %do.body.i201.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %168 = tail call i32 @llvm.smin.i32(i32 %count.addr.0.i199.i.i, i32 4) #12
  %169 = call ptr @memcpy(ptr %val.i195.i.i, ptr %167, i32 %168)
  %add.ptr.i202.i.i = getelementptr i8, ptr %167, i32 %168
  %170 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %add.ptr.i202.i.i, ptr %tx_buf.i.i, align 8
  br label %if.end.i209.i.i

if.else.i204.i.i:                                 ; preds = %do.body.i201.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %171 = ptrtoint ptr %val.i195.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 0, ptr %val.i195.i.i, align 4
  br label %if.end.i209.i.i

if.end.i209.i.i:                                  ; preds = %if.else.i204.i.i, %if.then.i203.i.i
  %172 = ptrtoint ptr %val.i195.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %val.i195.i.i.0.val.i195.i.i.0.val.i195.i.0.val.i195.i.0.val.i195.0.val.i195.0.val.0.val.0.val.0..i205.i.i = load i32, ptr %val.i195.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %173 = tail call i32 @llvm.bswap.i32(i32 %val.i195.i.i.0.val.i195.i.i.0.val.i195.i.0.val.i195.i.0.val.i195.0.val.i195.0.val.0.val.0.val.0..i205.i.i) #12
  %174 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %41, align 8
  %add.ptr.i.i206.i.i = getelementptr i8, ptr %175, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i206.i.i, i32 %173) #12, !srcloc !135
  %sub3.i207.i.i = add i32 %count.addr.0.i199.i.i, -4
  %cmp4.i208.i.i = icmp sgt i32 %sub3.i207.i.i, 0
  br i1 %cmp4.i208.i.i, label %if.end.i209.i.i.do.body.i201.i.i_crit_edge, label %bcm2835_wr_fifo_count.exit211.i.i

if.end.i209.i.i.do.body.i201.i.i_crit_edge:       ; preds = %if.end.i209.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i201.i.i

bcm2835_wr_fifo_count.exit211.i.i:                ; preds = %if.end.i209.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i195.i.i)
  %176 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %41, align 8
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %177) #12, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  %179 = and i32 %178, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool.not5.i212.i.i = icmp eq i32 %179, 0
  br i1 %tobool.not5.i212.i.i, label %bcm2835_wr_fifo_count.exit211.i.i.do.end.i214.i.i_crit_edge, label %bcm2835_wr_fifo_count.exit211.i.i.bcm2835_wait_tx_fifo_empty.exit215.i.i_crit_edge

bcm2835_wr_fifo_count.exit211.i.i.bcm2835_wait_tx_fifo_empty.exit215.i.i_crit_edge: ; preds = %bcm2835_wr_fifo_count.exit211.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bcm2835_wait_tx_fifo_empty.exit215.i.i

bcm2835_wr_fifo_count.exit211.i.i.do.end.i214.i.i_crit_edge: ; preds = %bcm2835_wr_fifo_count.exit211.i.i
  br label %do.end.i214.i.i

do.end.i214.i.i:                                  ; preds = %do.end.i214.i.i.do.end.i214.i.i_crit_edge, %bcm2835_wr_fifo_count.exit211.i.i.do.end.i214.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !139
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !140
  %180 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %41, align 8
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %181) #12, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  %183 = and i32 %182, 256
  %tobool.not.i213.i.i = icmp eq i32 %183, 0
  br i1 %tobool.not.i213.i.i, label %do.end.i214.i.i.do.end.i214.i.i_crit_edge, label %do.end.i214.i.i.bcm2835_wait_tx_fifo_empty.exit215.i.i_crit_edge

do.end.i214.i.i.bcm2835_wait_tx_fifo_empty.exit215.i.i_crit_edge: ; preds = %do.end.i214.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bcm2835_wait_tx_fifo_empty.exit215.i.i

do.end.i214.i.i.do.end.i214.i.i_crit_edge:        ; preds = %do.end.i214.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i214.i.i

bcm2835_wait_tx_fifo_empty.exit215.i.i:           ; preds = %do.end.i214.i.i.bcm2835_wait_tx_fifo_empty.exit215.i.i_crit_edge, %bcm2835_wr_fifo_count.exit211.i.i.bcm2835_wait_tx_fifo_empty.exit215.i.i_crit_edge
  %or83.i.i = or i32 %cs.0, 65552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %184 = tail call i32 @llvm.bswap.i32(i32 %or83.i.i) #12
  %185 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %41, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %184) #12, !srcloc !135
  br label %if.end84.i.i

if.end84.i.i:                                     ; preds = %bcm2835_wait_tx_fifo_empty.exit215.i.i, %if.end74.i.i.if.end84.i.i_crit_edge
  %187 = ptrtoint ptr %tx_spillover.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %tx_spillover.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool86.not.i.i = icmp eq i32 %188, 0
  br i1 %tobool86.not.i.i, label %if.then94.i.i, label %if.else107.i.i, !prof !136

if.then94.i.i:                                    ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %189 = ptrtoint ptr %tx_prologue.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %tx_prologue.i.i, align 8
  %tx_sg96.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 5
  %191 = ptrtoint ptr %tx_sg96.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %tx_sg96.i.i, align 4
  %dma_address99.i.i = getelementptr inbounds %struct.scatterlist, ptr %192, i32 0, i32 3
  %193 = ptrtoint ptr %dma_address99.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %dma_address99.i.i, align 4
  %add100.i.i = add i32 %194, %190
  store i32 %add100.i.i, ptr %dma_address99.i.i, align 4
  %195 = load i32, ptr %tx_prologue.i.i, align 8
  %196 = load ptr, ptr %tx_sg96.i.i, align 4
  %dma_length105.i.i = getelementptr inbounds %struct.scatterlist, ptr %196, i32 0, i32 4
  %197 = ptrtoint ptr %dma_length105.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %dma_length105.i.i, align 4
  %sub106.i.i = sub i32 %198, %195
  store i32 %sub106.i.i, ptr %dma_length105.i.i, align 4
  br label %bcm2835_spi_transfer_prologue.exit.i

if.else107.i.i:                                   ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %tx_sg108.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 5
  %199 = ptrtoint ptr %tx_sg108.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %tx_sg108.i.i, align 4
  %dma_length111.i.i = getelementptr inbounds %struct.scatterlist, ptr %200, i32 0, i32 4
  %201 = ptrtoint ptr %dma_length111.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 0, ptr %dma_length111.i.i, align 4
  %202 = load ptr, ptr %tx_sg108.i.i, align 4
  %dma_address115.i.i = getelementptr %struct.scatterlist, ptr %202, i32 1, i32 3
  %203 = ptrtoint ptr %dma_address115.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %dma_address115.i.i, align 4
  %add116.i.i = add i32 %204, 4
  store i32 %add116.i.i, ptr %dma_address115.i.i, align 4
  %205 = load ptr, ptr %tx_sg108.i.i, align 4
  %dma_length120.i.i = getelementptr %struct.scatterlist, ptr %205, i32 1, i32 4
  %206 = ptrtoint ptr %dma_length120.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %dma_length120.i.i, align 4
  %sub121.i.i = add i32 %207, -4
  store i32 %sub121.i.i, ptr %dma_length120.i.i, align 4
  br label %bcm2835_spi_transfer_prologue.exit.i

bcm2835_spi_transfer_prologue.exit.i:             ; preds = %if.else107.i.i, %if.then94.i.i, %if.end40.i.i.bcm2835_spi_transfer_prologue.exit.i_crit_edge
  %208 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %.pr.i = load ptr, ptr %tx_buf.i.i, align 8
  %tobool.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool.not.i, label %bcm2835_spi_transfer_prologue.exit.i.if.else.i_crit_edge, label %if.then.i

bcm2835_spi_transfer_prologue.exit.i.if.else.i_crit_edge: ; preds = %bcm2835_spi_transfer_prologue.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.i:                                        ; preds = %bcm2835_spi_transfer_prologue.exit.i
  %dma_tx.i.i = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 60
  %tx_sg.i95.i = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 5
  %nents1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 5, i32 1
  %209 = ptrtoint ptr %rx_buf21 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %rx_buf21, align 4
  %tobool4.not.i.i = icmp eq ptr %210, null
  %cond.i.i = zext i1 %tobool4.not.i.i to i32
  %211 = ptrtoint ptr %nents1.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %nents.0.i.i = load i32, ptr %nents1.i.i, align 4
  %212 = ptrtoint ptr %tx_sg.i95.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %sgl.0.i.i = load ptr, ptr %tx_sg.i95.i, align 4
  %213 = ptrtoint ptr %dma_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %chan.0.i.i = load ptr, ptr %dma_tx.i.i, align 4
  %tobool.not.i.i98.i = icmp eq ptr %chan.0.i.i, null
  br i1 %tobool.not.i.i98.i, label %if.then.i.err_reset_hw.i_crit_edge, label %lor.lhs.false.i.i.i

if.then.i.err_reset_hw.i_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_reset_hw.i

lor.lhs.false.i.i.i:                              ; preds = %if.then.i
  %214 = ptrtoint ptr %chan.0.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %chan.0.i.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %215, null
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.err_reset_hw.i_crit_edge, label %lor.lhs.false2.i.i.i

lor.lhs.false.i.i.i.err_reset_hw.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_reset_hw.i

lor.lhs.false2.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %device_prep_slave_sg.i.i.i = getelementptr inbounds %struct.dma_device, ptr %215, i32 0, i32 39
  %216 = ptrtoint ptr %device_prep_slave_sg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %device_prep_slave_sg.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %217, null
  br i1 %tobool4.not.i.i.i, label %lor.lhs.false2.i.i.i.err_reset_hw.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i.i

lor.lhs.false2.i.i.i.err_reset_hw.i_crit_edge:    ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_reset_hw.i

dmaengine_prep_slave_sg.exit.i.i:                 ; preds = %lor.lhs.false2.i.i.i
  %call.i.i.i = tail call ptr %217(ptr noundef nonnull %chan.0.i.i, ptr noundef %sgl.0.i.i, i32 noundef %nents.0.i.i, i32 noundef 1, i32 noundef %cond.i.i, ptr noundef null) #12
  %tobool8.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool8.not.i.i, label %dmaengine_prep_slave_sg.exit.i.i.err_reset_hw.i_crit_edge, label %if.end10.i.i

dmaengine_prep_slave_sg.exit.i.i.err_reset_hw.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_reset_hw.i

if.end10.i.i:                                     ; preds = %dmaengine_prep_slave_sg.exit.i.i
  %218 = ptrtoint ptr %rx_buf21 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %rx_buf21, align 4
  %tobool15.not.i.i = icmp eq ptr %219, null
  br i1 %tobool15.not.i.i, label %if.then16.i.i, label %if.end10.i.i.if.end21.i.i_crit_edge

if.end10.i.i.if.end21.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i.i

if.then16.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %callback17.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i.i, i32 0, i32 6
  %220 = ptrtoint ptr %callback17.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr @bcm2835_spi_dma_tx_done, ptr %callback17.i.i, align 4
  %callback_param18.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i.i, i32 0, i32 8
  %221 = ptrtoint ptr %callback_param18.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %ctlr, ptr %callback_param18.i.i, align 4
  %slv19.i.i = getelementptr inbounds %struct.bcm2835_spi, ptr %41, i32 0, i32 18
  %222 = ptrtoint ptr %slv19.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %3, ptr %slv19.i.i, align 8
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then16.i.i, %if.end10.i.i.if.end21.i.i_crit_edge
  %tx_submit.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i.i, i32 0, i32 4
  %223 = ptrtoint ptr %tx_submit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %tx_submit.i.i.i, align 4
  %call.i44.i.i = tail call i32 %224(ptr noundef nonnull %call.i.i.i) #12
  br label %if.end.i

if.else.i:                                        ; preds = %bcm2835_spi_transfer_prologue.exit.i.if.else.i_crit_edge, %if.end70.i.i.if.else.i_crit_edge
  %fill_tx_desc.i = getelementptr inbounds %struct.bcm2835_spi, ptr %41, i32 0, i32 21
  %225 = ptrtoint ptr %fill_tx_desc.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %fill_tx_desc.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %226, i32 0, i32 4
  %227 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i100.i = tail call i32 %228(ptr noundef %226) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.end21.i.i
  %call.i44.i.sink.i = phi i32 [ %call.i44.i.i, %if.end21.i.i ], [ %call.i100.i, %if.else.i ]
  %229 = tail call i32 @llvm.smin.i32(i32 %call.i44.i.sink.i, i32 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i44.i.sink.i)
  %tobool4.not.i = icmp sgt i32 %call.i44.i.sink.i, -1
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.err_reset_hw.i_crit_edge

if.end.i.err_reset_hw.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_reset_hw.i

if.end6.i:                                        ; preds = %if.end.i
  %tx_len.i = getelementptr inbounds %struct.bcm2835_spi, ptr %41, i32 0, i32 8
  %230 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %tx_len.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %232 = tail call i32 @llvm.bswap.i32(i32 %231) #12
  %233 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %41, align 8
  %add.ptr.i.i = getelementptr i8, ptr %234, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %232) #12, !srcloc !135
  %or7.i = or i32 %cs.0, 384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %235 = tail call i32 @llvm.bswap.i32(i32 %or7.i) #12
  %236 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %41, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %237, i32 %235) #12, !srcloc !135
  %tx_dma_active.i = getelementptr inbounds %struct.bcm2835_spi, ptr %41, i32 0, i32 19
  %238 = ptrtoint ptr %tx_dma_active.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 1, ptr %tx_dma_active.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !141
  %dma_tx.i = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 60
  %239 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dma_tx.i, align 8
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %240, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %242, i32 0, i32 50
  %243 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %device_issue_pending.i.i, align 4
  tail call void %244(ptr noundef %240) #12
  %245 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %rx_buf.i.i, align 4
  %tobool11.not.i = icmp eq ptr %246, null
  br i1 %tobool11.not.i, label %if.else14.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end6.i
  %dma_rx.i101.i = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 61
  %rx_sg.i102.i = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 6
  %nents5.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 6, i32 1
  %247 = ptrtoint ptr %nents5.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %nents.0.i104.i = load i32, ptr %nents5.i.i, align 4
  %248 = ptrtoint ptr %rx_sg.i102.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %sgl.0.i105.i = load ptr, ptr %rx_sg.i102.i, align 4
  %249 = ptrtoint ptr %dma_rx.i101.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %chan.0.i106.i = load ptr, ptr %dma_rx.i101.i, align 4
  %tobool.not.i.i107.i = icmp eq ptr %chan.0.i106.i, null
  br i1 %tobool.not.i.i107.i, label %if.then12.i.if.then19.i_crit_edge, label %lor.lhs.false.i.i110.i

if.then12.i.if.then19.i_crit_edge:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19.i

lor.lhs.false.i.i110.i:                           ; preds = %if.then12.i
  %250 = ptrtoint ptr %chan.0.i106.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %chan.0.i106.i, align 4
  %tobool1.not.i.i109.i = icmp eq ptr %251, null
  br i1 %tobool1.not.i.i109.i, label %lor.lhs.false.i.i110.i.if.then19.i_crit_edge, label %lor.lhs.false2.i.i113.i

lor.lhs.false.i.i110.i.if.then19.i_crit_edge:     ; preds = %lor.lhs.false.i.i110.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19.i

lor.lhs.false2.i.i113.i:                          ; preds = %lor.lhs.false.i.i110.i
  %device_prep_slave_sg.i.i111.i = getelementptr inbounds %struct.dma_device, ptr %251, i32 0, i32 39
  %252 = ptrtoint ptr %device_prep_slave_sg.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %device_prep_slave_sg.i.i111.i, align 4
  %tobool4.not.i.i112.i = icmp eq ptr %253, null
  br i1 %tobool4.not.i.i112.i, label %lor.lhs.false2.i.i113.i.if.then19.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i116.i

lor.lhs.false2.i.i113.i.if.then19.i_crit_edge:    ; preds = %lor.lhs.false2.i.i113.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19.i

dmaengine_prep_slave_sg.exit.i116.i:              ; preds = %lor.lhs.false2.i.i113.i
  %call.i.i114.i = tail call ptr %253(ptr noundef nonnull %chan.0.i106.i, ptr noundef %sgl.0.i105.i, i32 noundef %nents.0.i104.i, i32 noundef 2, i32 noundef 1, ptr noundef null) #12
  %tobool8.not.i115.i = icmp eq ptr %call.i.i114.i, null
  br i1 %tobool8.not.i115.i, label %dmaengine_prep_slave_sg.exit.i116.i.if.then19.i_crit_edge, label %if.end10.i117.i

dmaengine_prep_slave_sg.exit.i116.i.if.then19.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i116.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19.i

if.end10.i117.i:                                  ; preds = %dmaengine_prep_slave_sg.exit.i116.i
  call void @__sanitizer_cov_trace_pc() #14
  %callback.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i114.i, i32 0, i32 6
  %254 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr @bcm2835_spi_dma_rx_done, ptr %callback.i.i, align 4
  %callback_param.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i114.i, i32 0, i32 8
  %255 = ptrtoint ptr %callback_param.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %ctlr, ptr %callback_param.i.i, align 4
  %tx_submit.i.i118.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i114.i, i32 0, i32 4
  %256 = ptrtoint ptr %tx_submit.i.i118.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %tx_submit.i.i118.i, align 4
  %call.i44.i119.i = tail call i32 %257(ptr noundef nonnull %call.i.i114.i) #12
  br label %if.end17.i

if.else14.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %clear_rx_desc.i = getelementptr inbounds %struct.bcm2835_spidev, ptr %3, i32 0, i32 1
  %258 = ptrtoint ptr %clear_rx_desc.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %clear_rx_desc.i, align 4
  %tx_submit.i123.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %259, i32 0, i32 4
  %260 = ptrtoint ptr %tx_submit.i123.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %tx_submit.i123.i, align 4
  %call.i124.i = tail call i32 %261(ptr noundef %259) #12
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else14.i, %if.end10.i117.i
  %call.i44.i119.sink.i = phi i32 [ %call.i44.i119.i, %if.end10.i117.i ], [ %call.i124.i, %if.else14.i ]
  %262 = tail call i32 @llvm.smin.i32(i32 %call.i44.i119.sink.i, i32 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i44.i119.sink.i)
  %tobool18.not.i = icmp sgt i32 %call.i44.i119.sink.i, -1
  br i1 %tobool18.not.i, label %if.end23.i, label %if.end17.i.if.then19.i_crit_edge

if.end17.i.if.then19.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19.i

if.then19.i:                                      ; preds = %if.end17.i.if.then19.i_crit_edge, %dmaengine_prep_slave_sg.exit.i116.i.if.then19.i_crit_edge, %lor.lhs.false2.i.i113.i.if.then19.i_crit_edge, %lor.lhs.false.i.i110.i.if.then19.i_crit_edge, %if.then12.i.if.then19.i_crit_edge
  %ret.1156.i = phi i32 [ %262, %if.end17.i.if.then19.i_crit_edge ], [ -22, %dmaengine_prep_slave_sg.exit.i116.i.if.then19.i_crit_edge ], [ -22, %lor.lhs.false2.i.i113.i.if.then19.i_crit_edge ], [ -22, %lor.lhs.false.i.i110.i.if.then19.i_crit_edge ], [ -22, %if.then12.i.if.then19.i_crit_edge ]
  %263 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %dma_tx.i, align 8
  %265 = ptrtoint ptr %264 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %264, align 4
  %device_terminate_all.i.i.i = getelementptr inbounds %struct.dma_device, ptr %266, i32 0, i32 47
  %267 = ptrtoint ptr %device_terminate_all.i.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %device_terminate_all.i.i.i, align 4
  %tobool.not.i.i125.i = icmp eq ptr %268, null
  br i1 %tobool.not.i.i125.i, label %if.then19.i.dmaengine_terminate_sync.exit.i_crit_edge, label %dmaengine_terminate_async.exit.i.i

if.then19.i.dmaengine_terminate_sync.exit.i_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_sync.exit.i

dmaengine_terminate_async.exit.i.i:               ; preds = %if.then19.i
  %call.i.i126.i = tail call i32 %268(ptr noundef %264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i126.i)
  %tobool.not.i127.i = icmp eq i32 %call.i.i126.i, 0
  br i1 %tobool.not.i127.i, label %if.end.i128.i, label %dmaengine_terminate_async.exit.i.i.dmaengine_terminate_sync.exit.i_crit_edge

dmaengine_terminate_async.exit.i.i.dmaengine_terminate_sync.exit.i_crit_edge: ; preds = %dmaengine_terminate_async.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_sync.exit.i

if.end.i128.i:                                    ; preds = %dmaengine_terminate_async.exit.i.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.31, i32 noundef 1169) #12
  %269 = ptrtoint ptr %264 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %264, align 4
  %device_synchronize.i.i.i = getelementptr inbounds %struct.dma_device, ptr %270, i32 0, i32 48
  %271 = ptrtoint ptr %device_synchronize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %device_synchronize.i.i.i, align 4
  %tobool.not.i1.i.i = icmp eq ptr %272, null
  br i1 %tobool.not.i1.i.i, label %if.end.i128.i.dmaengine_terminate_sync.exit.i_crit_edge, label %if.then.i2.i.i

if.end.i128.i.dmaengine_terminate_sync.exit.i_crit_edge: ; preds = %if.end.i128.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_sync.exit.i

if.then.i2.i.i:                                   ; preds = %if.end.i128.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %272(ptr noundef %264) #12
  br label %dmaengine_terminate_sync.exit.i

dmaengine_terminate_sync.exit.i:                  ; preds = %if.then.i2.i.i, %if.end.i128.i.dmaengine_terminate_sync.exit.i_crit_edge, %dmaengine_terminate_async.exit.i.i.dmaengine_terminate_sync.exit.i_crit_edge, %if.then19.i.dmaengine_terminate_sync.exit.i_crit_edge
  %273 = ptrtoint ptr %tx_dma_active.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 0, ptr %tx_dma_active.i, align 4
  br label %err_reset_hw.i

if.end23.i:                                       ; preds = %if.end17.i
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 61
  %274 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %dma_rx.i, align 4
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %275, align 4
  %device_issue_pending.i129.i = getelementptr inbounds %struct.dma_device, ptr %277, i32 0, i32 50
  %278 = ptrtoint ptr %device_issue_pending.i129.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %device_issue_pending.i129.i, align 4
  tail call void %279(ptr noundef %275) #12
  %rx_dma_active.i = getelementptr inbounds %struct.bcm2835_spi, ptr %41, i32 0, i32 20
  %280 = ptrtoint ptr %rx_dma_active.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 1, ptr %rx_dma_active.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !142
  %281 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %rx_buf.i.i, align 4
  %tobool31.not.i = icmp eq ptr %282, null
  br i1 %tobool31.not.i, label %land.lhs.true.i, label %if.end23.i.cleanup_crit_edge

if.end23.i.cleanup_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end23.i
  %283 = ptrtoint ptr %tx_dma_active.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %tx_dma_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %tobool33.not.i = icmp eq i32 %284, 0
  br i1 %tobool33.not.i, label %land.lhs.true34.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true34.i:                                ; preds = %land.lhs.true.i
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_dma_active.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !143
  tail call void @llvm.prefetch.p0(ptr %rx_dma_active.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %land.lhs.true34.i
  %285 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %rx_dma_active.i, i32 1, i32 0) #12, !srcloc !144
  %asmresult.i.i = extractvalue { i32, i32 } %285, 0
  %tobool.not.i130.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i130.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %285, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !145
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i.i)
  %tobool54.not.i = icmp eq i32 %asmresult1.i.i, 0
  br i1 %tobool54.not.i, label %__cmpxchg.exit.i.cleanup_crit_edge, label %if.then55.i

__cmpxchg.exit.i.cleanup_crit_edge:               ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then55.i:                                      ; preds = %__cmpxchg.exit.i
  %286 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %dma_rx.i, align 4
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %287, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %289, i32 0, i32 47
  %290 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i131.i = icmp eq ptr %291, null
  br i1 %tobool.not.i131.i, label %if.then55.i.dmaengine_terminate_async.exit.i_crit_edge, label %if.then.i133.i

if.then55.i.dmaengine_terminate_async.exit.i_crit_edge: ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_async.exit.i

if.then.i133.i:                                   ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i132.i = tail call i32 %291(ptr noundef %287) #12
  br label %dmaengine_terminate_async.exit.i

dmaengine_terminate_async.exit.i:                 ; preds = %if.then.i133.i, %if.then55.i.dmaengine_terminate_async.exit.i_crit_edge
  tail call fastcc void @bcm2835_spi_reset_hw(ptr noundef %41) #12
  br label %cleanup

err_reset_hw.i:                                   ; preds = %dmaengine_terminate_sync.exit.i, %if.end.i.err_reset_hw.i_crit_edge, %dmaengine_prep_slave_sg.exit.i.i.err_reset_hw.i_crit_edge, %lor.lhs.false2.i.i.i.err_reset_hw.i_crit_edge, %lor.lhs.false.i.i.i.err_reset_hw.i_crit_edge, %if.then.i.err_reset_hw.i_crit_edge
  %ret.2.i = phi i32 [ %229, %if.end.i.err_reset_hw.i_crit_edge ], [ %ret.1156.i, %dmaengine_terminate_sync.exit.i ], [ -22, %dmaengine_prep_slave_sg.exit.i.i.err_reset_hw.i_crit_edge ], [ -22, %lor.lhs.false2.i.i.i.err_reset_hw.i_crit_edge ], [ -22, %lor.lhs.false.i.i.i.err_reset_hw.i_crit_edge ], [ -22, %if.then.i.err_reset_hw.i_crit_edge ]
  %292 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %41, align 8
  %294 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %293) #12, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  %295 = and i32 %294, 1341718271
  %296 = or i32 %295, 805306624
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %297 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %41, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %298, i32 %296) #12, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %299 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %41, align 8
  %add.ptr.i.i135.i = getelementptr i8, ptr %300, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i135.i, i32 0) #12, !srcloc !135
  %301 = ptrtoint ptr %tfr1.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %tfr1.i.i, align 8
  %303 = ptrtoint ptr %tx_prologue.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %tx_prologue.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %304)
  %tobool.not.i138.i = icmp eq i32 %304, 0
  br i1 %tobool.not.i138.i, label %err_reset_hw.i.cleanup_crit_edge, label %if.end.i140.i

err_reset_hw.i.cleanup_crit_edge:                 ; preds = %err_reset_hw.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i140.i:                                    ; preds = %err_reset_hw.i
  %305 = ptrtoint ptr %rx_prologue.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %rx_prologue.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %tobool2.not.i.i = icmp eq i32 %306, 0
  br i1 %tobool2.not.i.i, label %if.end.i140.i.if.end9.i.i_crit_edge, label %if.then3.i.i

if.end.i140.i.if.end9.i.i_crit_edge:              ; preds = %if.end.i140.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i.i

if.then3.i.i:                                     ; preds = %if.end.i140.i
  call void @__sanitizer_cov_trace_pc() #14
  %rx_sg.i141.i = getelementptr inbounds %struct.spi_transfer, ptr %302, i32 0, i32 6
  %307 = ptrtoint ptr %rx_sg.i141.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %rx_sg.i141.i, align 4
  %dma_address.i142.i = getelementptr inbounds %struct.scatterlist, ptr %308, i32 0, i32 3
  %309 = ptrtoint ptr %dma_address.i142.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %dma_address.i142.i, align 4
  %sub.i143.i = sub i32 %310, %306
  store i32 %sub.i143.i, ptr %dma_address.i142.i, align 4
  %311 = ptrtoint ptr %rx_prologue.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %rx_prologue.i.i, align 4
  %313 = load ptr, ptr %rx_sg.i141.i, align 4
  %dma_length.i144.i = getelementptr inbounds %struct.scatterlist, ptr %313, i32 0, i32 4
  %314 = ptrtoint ptr %dma_length.i144.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %dma_length.i144.i, align 4
  %add.i145.i = add i32 %315, %312
  store i32 %add.i145.i, ptr %dma_length.i144.i, align 4
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then3.i.i, %if.end.i140.i.if.end9.i.i_crit_edge
  %316 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %tx_buf.i.i, align 8
  %tobool10.not.i.i = icmp eq ptr %317, null
  br i1 %tobool10.not.i.i, label %if.end9.i.i.out.i.i_crit_edge, label %if.end12.i.i

if.end9.i.i.out.i.i_crit_edge:                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i

if.end12.i.i:                                     ; preds = %if.end9.i.i
  %318 = ptrtoint ptr %tx_spillover.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %tx_spillover.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %319)
  %tobool13.not.i.i = icmp eq i32 %319, 0
  %320 = ptrtoint ptr %tx_prologue.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %tx_prologue.i.i, align 8
  br i1 %tobool13.not.i.i, label %if.then17.i.i, label %if.else.i150.i, !prof !136

if.then17.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %tx_sg.i148.i = getelementptr inbounds %struct.spi_transfer, ptr %302, i32 0, i32 5
  %322 = ptrtoint ptr %tx_sg.i148.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %tx_sg.i148.i, align 4
  %dma_address21.i.i = getelementptr inbounds %struct.scatterlist, ptr %323, i32 0, i32 3
  %324 = ptrtoint ptr %dma_address21.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %dma_address21.i.i, align 4
  %sub22.i.i = sub i32 %325, %321
  store i32 %sub22.i.i, ptr %dma_address21.i.i, align 4
  %326 = ptrtoint ptr %tx_prologue.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %tx_prologue.i.i, align 8
  br label %out.sink.split.i.i

if.else.i150.i:                                   ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub30.i.i = add i32 %321, -4
  %tx_sg31.i.i = getelementptr inbounds %struct.spi_transfer, ptr %302, i32 0, i32 5
  %328 = ptrtoint ptr %tx_sg31.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %tx_sg31.i.i, align 4
  %dma_length34.i149.i = getelementptr inbounds %struct.scatterlist, ptr %329, i32 0, i32 4
  %330 = ptrtoint ptr %dma_length34.i149.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %sub30.i.i, ptr %dma_length34.i149.i, align 4
  %331 = load ptr, ptr %tx_sg31.i.i, align 4
  %dma_address38.i.i = getelementptr %struct.scatterlist, ptr %331, i32 1, i32 3
  %332 = ptrtoint ptr %dma_address38.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %dma_address38.i.i, align 4
  %sub39.i.i = add i32 %333, -4
  store i32 %sub39.i.i, ptr %dma_address38.i.i, align 4
  br label %out.sink.split.i.i

out.sink.split.i.i:                               ; preds = %if.else.i150.i, %if.then17.i.i
  %tx_sg31.sink.i.i = phi ptr [ %tx_sg31.i.i, %if.else.i150.i ], [ %tx_sg.i148.i, %if.then17.i.i ]
  %.sink65.i.i = phi i32 [ 1, %if.else.i150.i ], [ 0, %if.then17.i.i ]
  %.sink63.i.i = phi i32 [ 4, %if.else.i150.i ], [ %327, %if.then17.i.i ]
  %334 = ptrtoint ptr %tx_sg31.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %tx_sg31.sink.i.i, align 4
  %dma_length43.i.i = getelementptr %struct.scatterlist, ptr %335, i32 %.sink65.i.i, i32 4
  %336 = ptrtoint ptr %dma_length43.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %dma_length43.i.i, align 4
  %add28.i.i = add i32 %337, %.sink63.i.i
  store i32 %add28.i.i, ptr %dma_length43.i.i, align 4
  br label %out.i.i

out.i.i:                                          ; preds = %out.sink.split.i.i, %if.end9.i.i.out.i.i_crit_edge
  %338 = ptrtoint ptr %tx_prologue.i.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 0, ptr %tx_prologue.i.i, align 8
  br label %cleanup

if.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @bcm2835_spi_transfer_one_irq(ptr noundef %ctlr, i32 noundef %cs.0, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %out.i.i, %err_reset_hw.i.cleanup_crit_edge, %dmaengine_terminate_async.exit.i, %__cmpxchg.exit.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end23.i.cleanup_crit_edge, %if.then39
  %retval.0 = phi i32 [ %call40, %if.then39 ], [ 1, %if.end47 ], [ 1, %dmaengine_terminate_async.exit.i ], [ 1, %__cmpxchg.exit.i.cleanup_crit_edge ], [ 1, %land.lhs.true.i.cleanup_crit_edge ], [ 1, %if.end23.i.cleanup_crit_edge ], [ %ret.2.i, %err_reset_hw.i.cleanup_crit_edge ], [ %ret.2.i, %out.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_spi_handle_err(ptr nocapture noundef readonly %ctlr, ptr nocapture noundef readnone %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 60
  %2 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_tx, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 47
  %6 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %entry.dmaengine_terminate_sync.exit_crit_edge, label %dmaengine_terminate_async.exit.i

entry.dmaengine_terminate_sync.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_async.exit.i:                 ; preds = %entry
  %call.i.i = tail call i32 %7(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge

dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_sync.exit

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.31, i32 noundef 1169) #12
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 48
  %10 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %11, null
  br i1 %tobool.not.i1.i, label %if.end.i.dmaengine_terminate_sync.exit_crit_edge, label %if.then.i2.i

if.end.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_sync.exit

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %11(ptr noundef %3) #12
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_sync.exit:                    ; preds = %if.then.i2.i, %if.end.i.dmaengine_terminate_sync.exit_crit_edge, %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge, %entry.dmaengine_terminate_sync.exit_crit_edge
  %tx_dma_active = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 19
  %12 = ptrtoint ptr %tx_dma_active to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %tx_dma_active, align 4
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 61
  %13 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dma_rx, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %device_terminate_all.i.i8 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 47
  %17 = ptrtoint ptr %device_terminate_all.i.i8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device_terminate_all.i.i8, align 4
  %tobool.not.i.i9 = icmp eq ptr %18, null
  br i1 %tobool.not.i.i9, label %dmaengine_terminate_sync.exit.dmaengine_terminate_sync.exit17_crit_edge, label %dmaengine_terminate_async.exit.i12

dmaengine_terminate_sync.exit.dmaengine_terminate_sync.exit17_crit_edge: ; preds = %dmaengine_terminate_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_sync.exit17

dmaengine_terminate_async.exit.i12:               ; preds = %dmaengine_terminate_sync.exit
  %call.i.i10 = tail call i32 %18(ptr noundef %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i10)
  %tobool.not.i11 = icmp eq i32 %call.i.i10, 0
  br i1 %tobool.not.i11, label %if.end.i15, label %dmaengine_terminate_async.exit.i12.dmaengine_terminate_sync.exit17_crit_edge

dmaengine_terminate_async.exit.i12.dmaengine_terminate_sync.exit17_crit_edge: ; preds = %dmaengine_terminate_async.exit.i12
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_sync.exit17

if.end.i15:                                       ; preds = %dmaengine_terminate_async.exit.i12
  tail call void @__might_sleep(ptr noundef nonnull @.str.31, i32 noundef 1169) #12
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %14, align 4
  %device_synchronize.i.i13 = getelementptr inbounds %struct.dma_device, ptr %20, i32 0, i32 48
  %21 = ptrtoint ptr %device_synchronize.i.i13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device_synchronize.i.i13, align 4
  %tobool.not.i1.i14 = icmp eq ptr %22, null
  br i1 %tobool.not.i1.i14, label %if.end.i15.dmaengine_terminate_sync.exit17_crit_edge, label %if.then.i2.i16

if.end.i15.dmaengine_terminate_sync.exit17_crit_edge: ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_sync.exit17

if.then.i2.i16:                                   ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %22(ptr noundef %14) #12
  br label %dmaengine_terminate_sync.exit17

dmaengine_terminate_sync.exit17:                  ; preds = %if.then.i2.i16, %if.end.i15.dmaengine_terminate_sync.exit17_crit_edge, %dmaengine_terminate_async.exit.i12.dmaengine_terminate_sync.exit17_crit_edge, %dmaengine_terminate_sync.exit.dmaengine_terminate_sync.exit17_crit_edge
  %rx_dma_active = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 20
  %23 = ptrtoint ptr %rx_dma_active to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %rx_dma_active, align 8
  %tfr1.i = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %tfr1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tfr1.i, align 8
  %tx_prologue.i = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %tx_prologue.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_prologue.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i18 = icmp eq i32 %27, 0
  br i1 %tobool.not.i18, label %dmaengine_terminate_sync.exit17.bcm2835_spi_undo_prologue.exit_crit_edge, label %if.end.i19

dmaengine_terminate_sync.exit17.bcm2835_spi_undo_prologue.exit_crit_edge: ; preds = %dmaengine_terminate_sync.exit17
  call void @__sanitizer_cov_trace_pc() #14
  br label %bcm2835_spi_undo_prologue.exit

if.end.i19:                                       ; preds = %dmaengine_terminate_sync.exit17
  %rx_prologue.i = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %rx_prologue.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_prologue.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool2.not.i = icmp eq i32 %29, 0
  br i1 %tobool2.not.i, label %if.end.i19.if.end9.i_crit_edge, label %if.then3.i

if.end.i19.if.end9.i_crit_edge:                   ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then3.i:                                       ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #14
  %rx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %25, i32 0, i32 6
  %30 = ptrtoint ptr %rx_sg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx_sg.i, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_address.i, align 4
  %sub.i = sub i32 %33, %29
  store i32 %sub.i, ptr %dma_address.i, align 4
  %34 = ptrtoint ptr %rx_prologue.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_prologue.i, align 4
  %36 = load ptr, ptr %rx_sg.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_length.i, align 4
  %add.i = add i32 %38, %35
  store i32 %add.i, ptr %dma_length.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then3.i, %if.end.i19.if.end9.i_crit_edge
  %tx_buf.i = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 6
  %39 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_buf.i, align 8
  %tobool10.not.i = icmp eq ptr %40, null
  br i1 %tobool10.not.i, label %if.end9.i.out.i_crit_edge, label %if.end12.i

if.end9.i.out.i_crit_edge:                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end12.i:                                       ; preds = %if.end9.i
  %tx_spillover.i = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 12
  %41 = ptrtoint ptr %tx_spillover.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_spillover.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool13.not.i = icmp eq i32 %42, 0
  %43 = ptrtoint ptr %tx_prologue.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_prologue.i, align 8
  br i1 %tobool13.not.i, label %if.then17.i, label %if.else.i, !prof !136

if.then17.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %tx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %25, i32 0, i32 5
  %45 = ptrtoint ptr %tx_sg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tx_sg.i, align 4
  %dma_address21.i = getelementptr inbounds %struct.scatterlist, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %dma_address21.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dma_address21.i, align 4
  %sub22.i = sub i32 %48, %44
  store i32 %sub22.i, ptr %dma_address21.i, align 4
  %49 = ptrtoint ptr %tx_prologue.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_prologue.i, align 8
  br label %out.sink.split.i

if.else.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub30.i = add i32 %44, -4
  %tx_sg31.i = getelementptr inbounds %struct.spi_transfer, ptr %25, i32 0, i32 5
  %51 = ptrtoint ptr %tx_sg31.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tx_sg31.i, align 4
  %dma_length34.i = getelementptr inbounds %struct.scatterlist, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %dma_length34.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub30.i, ptr %dma_length34.i, align 4
  %54 = load ptr, ptr %tx_sg31.i, align 4
  %dma_address38.i = getelementptr %struct.scatterlist, ptr %54, i32 1, i32 3
  %55 = ptrtoint ptr %dma_address38.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dma_address38.i, align 4
  %sub39.i = add i32 %56, -4
  store i32 %sub39.i, ptr %dma_address38.i, align 4
  br label %out.sink.split.i

out.sink.split.i:                                 ; preds = %if.else.i, %if.then17.i
  %tx_sg31.sink.i = phi ptr [ %tx_sg31.i, %if.else.i ], [ %tx_sg.i, %if.then17.i ]
  %.sink65.i = phi i32 [ 1, %if.else.i ], [ 0, %if.then17.i ]
  %.sink63.i = phi i32 [ 4, %if.else.i ], [ %50, %if.then17.i ]
  %57 = ptrtoint ptr %tx_sg31.sink.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tx_sg31.sink.i, align 4
  %dma_length43.i = getelementptr %struct.scatterlist, ptr %58, i32 %.sink65.i, i32 4
  %59 = ptrtoint ptr %dma_length43.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dma_length43.i, align 4
  %add28.i = add i32 %60, %.sink63.i
  store i32 %add28.i, ptr %dma_length43.i, align 4
  br label %out.i

out.i:                                            ; preds = %out.sink.split.i, %if.end9.i.out.i_crit_edge
  %61 = ptrtoint ptr %tx_prologue.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %tx_prologue.i, align 8
  br label %bcm2835_spi_undo_prologue.exit

bcm2835_spi_undo_prologue.exit:                   ; preds = %out.i, %dmaengine_terminate_sync.exit17.bcm2835_spi_undo_prologue.exit_crit_edge
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 8
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #12, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  %65 = and i32 %64, 1341718271
  %66 = or i32 %65, 805306624
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #12, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %70, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #12, !srcloc !135
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_spi_prepare_message(ptr noundef %ctlr, ptr noundef %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %controller_state.i = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controller_state.i, align 8
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 24
  %6 = ptrtoint ptr %can_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %can_dma, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @spi_split_transfers_maxsize(ptr noundef %ctlr, ptr noundef %msg, i32 noundef 65532, i32 noundef 3265) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #12, !srcloc !135
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call3, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_spi_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #12, !srcloc !137
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  %and = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %rx_len.i = getelementptr inbounds %struct.bcm2835_spi, ptr %dev_id, i32 0, i32 9
  %4 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_len.i, align 4
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 64) #12
  %sub.i = sub i32 %5, %6
  %7 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub.i, ptr %rx_len.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.bcm2835_spi, ptr %dev_id, i32 0, i32 7
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.then
  %count.addr.0.i = phi i32 [ %6, %if.then ], [ %dec.i, %do.cond.i.do.body.i_crit_edge ]
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  %11 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_buf.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %do.body.i.do.cond.i_crit_edge, label %if.then.i

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = lshr i32 %10, 24
  %conv.i = trunc i32 %13 to i8
  %incdec.ptr.i = getelementptr i8, ptr %12, i32 1
  %14 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %incdec.ptr.i, ptr %rx_buf.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %12, align 1
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then.i, %do.body.i.do.cond.i_crit_edge
  %dec.i = add i32 %count.addr.0.i, -1
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %do.cond.i.if.end4_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.cond.i.if.end4_crit_edge:                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.else:                                          ; preds = %entry
  %and1 = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.else.if.end4_crit_edge, label %if.then3

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %if.else
  %rx_len.i24 = getelementptr inbounds %struct.bcm2835_spi, ptr %dev_id, i32 0, i32 9
  %16 = ptrtoint ptr %rx_len.i24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_len.i24, align 4
  %18 = tail call i32 @llvm.smin.i32(i32 %17, i32 48) #12
  %sub.i25 = sub i32 %17, %18
  %19 = ptrtoint ptr %rx_len.i24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub.i25, ptr %rx_len.i24, align 4
  %rx_buf.i26 = getelementptr inbounds %struct.bcm2835_spi, ptr %dev_id, i32 0, i32 7
  br label %do.body.i30

do.body.i30:                                      ; preds = %do.cond.i36.do.body.i30_crit_edge, %if.then3
  %count.addr.0.i27 = phi i32 [ %18, %if.then3 ], [ %dec.i34, %do.cond.i36.do.body.i30_crit_edge ]
  %20 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_id, align 8
  %add.ptr.i.i28 = getelementptr i8, ptr %21, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i28) #12, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  %23 = ptrtoint ptr %rx_buf.i26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_buf.i26, align 4
  %tobool.not.i29 = icmp eq ptr %24, null
  br i1 %tobool.not.i29, label %do.body.i30.do.cond.i36_crit_edge, label %if.then.i33

do.body.i30.do.cond.i36_crit_edge:                ; preds = %do.body.i30
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond.i36

if.then.i33:                                      ; preds = %do.body.i30
  call void @__sanitizer_cov_trace_pc() #14
  %25 = lshr i32 %22, 24
  %conv.i31 = trunc i32 %25 to i8
  %incdec.ptr.i32 = getelementptr i8, ptr %24, i32 1
  %26 = ptrtoint ptr %rx_buf.i26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %incdec.ptr.i32, ptr %rx_buf.i26, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i31, ptr %24, align 1
  br label %do.cond.i36

do.cond.i36:                                      ; preds = %if.then.i33, %do.body.i30.do.cond.i36_crit_edge
  %dec.i34 = add i32 %count.addr.0.i27, -1
  %tobool3.not.i35 = icmp eq i32 %dec.i34, 0
  br i1 %tobool3.not.i35, label %do.cond.i36.if.end4_crit_edge, label %do.cond.i36.do.body.i30_crit_edge

do.cond.i36.do.body.i30_crit_edge:                ; preds = %do.cond.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i30

do.cond.i36.if.end4_crit_edge:                    ; preds = %do.cond.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.end4:                                          ; preds = %do.cond.i36.if.end4_crit_edge, %if.else.if.end4_crit_edge, %do.cond.i.if.end4_crit_edge
  %tx_len = getelementptr inbounds %struct.bcm2835_spi, ptr %dev_id, i32 0, i32 8
  %28 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool5.not = icmp eq i32 %29, 0
  %and6 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %or.cond = select i1 %tobool5.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %if.end4.if.end9_crit_edge, label %if.then8

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then8:                                         ; preds = %if.end4
  %30 = tail call i32 @llvm.smin.i32(i32 %29, i32 64) #12
  %sub.i38 = sub i32 %29, %30
  %31 = ptrtoint ptr %tx_len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.i38, ptr %tx_len, align 8
  %tx_buf.i = getelementptr inbounds %struct.bcm2835_spi, ptr %dev_id, i32 0, i32 6
  br label %do.body.i41

do.body.i41:                                      ; preds = %cond.end5.i.do.body.i41_crit_edge, %if.then8
  %count.addr.0.i39 = phi i32 [ %30, %if.then8 ], [ %dec.i44, %cond.end5.i.do.body.i41_crit_edge ]
  %32 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_buf.i, align 8
  %tobool.not.i40 = icmp eq ptr %33, null
  br i1 %tobool.not.i40, label %do.body.i41.cond.end5.i_crit_edge, label %cond.true2.i

do.body.i41.cond.end5.i_crit_edge:                ; preds = %do.body.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end5.i

cond.true2.i:                                     ; preds = %do.body.i41
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr.i42 = getelementptr i8, ptr %33, i32 1
  %34 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %incdec.ptr.i42, ptr %tx_buf.i, align 8
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %33, align 1
  br label %cond.end5.i

cond.end5.i:                                      ; preds = %cond.true2.i, %do.body.i41.cond.end5.i_crit_edge
  %cond6.i = phi i8 [ %36, %cond.true2.i ], [ 0, %do.body.i41.cond.end5.i_crit_edge ]
  %conv8.i = zext i8 %cond6.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %37 = shl nuw i32 %conv8.i, 24
  %38 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_id, align 8
  %add.ptr.i.i43 = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i43, i32 %37) #12, !srcloc !135
  %dec.i44 = add i32 %count.addr.0.i39, -1
  %tobool9.not.i = icmp eq i32 %dec.i44, 0
  br i1 %tobool9.not.i, label %cond.end5.i.if.end9_crit_edge, label %cond.end5.i.do.body.i41_crit_edge

cond.end5.i.do.body.i41_crit_edge:                ; preds = %cond.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i41

cond.end5.i.if.end9_crit_edge:                    ; preds = %cond.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.end9:                                          ; preds = %cond.end5.i.if.end9_crit_edge, %if.end4.if.end9_crit_edge
  %rx_len.i45 = getelementptr inbounds %struct.bcm2835_spi, ptr %dev_id, i32 0, i32 9
  %40 = ptrtoint ptr %rx_len.i45 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_len.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not11.i = icmp eq i32 %41, 0
  br i1 %tobool.not11.i, label %if.end9.bcm2835_rd_fifo.exit_crit_edge, label %land.rhs.lr.ph.i

if.end9.bcm2835_rd_fifo.exit_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %bcm2835_rd_fifo.exit

land.rhs.lr.ph.i:                                 ; preds = %if.end9
  %rx_buf.i46 = getelementptr inbounds %struct.bcm2835_spi, ptr %dev_id, i32 0, i32 7
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %42 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_id, align 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #12, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  %45 = and i32 %44, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool1.not.i = icmp eq i32 %45, 0
  br i1 %tobool1.not.i, label %land.rhs.i.bcm2835_rd_fifo.exit_crit_edge, label %while.body.i

land.rhs.i.bcm2835_rd_fifo.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bcm2835_rd_fifo.exit

while.body.i:                                     ; preds = %land.rhs.i
  %46 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_id, align 8
  %add.ptr.i.i47 = getelementptr i8, ptr %47, i32 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i47) #12, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  %49 = ptrtoint ptr %rx_buf.i46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rx_buf.i46, align 4
  %tobool3.not.i48 = icmp eq ptr %50, null
  br i1 %tobool3.not.i48, label %while.body.i.if.end.i_crit_edge, label %if.then.i51

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i51:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %51 = lshr i32 %48, 24
  %conv.i49 = trunc i32 %51 to i8
  %incdec.ptr.i50 = getelementptr i8, ptr %50, i32 1
  %52 = ptrtoint ptr %rx_buf.i46 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %incdec.ptr.i50, ptr %rx_buf.i46, align 4
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv.i49, ptr %50, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i51, %while.body.i.if.end.i_crit_edge
  %54 = ptrtoint ptr %rx_len.i45 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_len.i45, align 4
  %dec.i52 = add i32 %55, -1
  store i32 %dec.i52, ptr %rx_len.i45, align 4
  %tobool.not.i53 = icmp eq i32 %dec.i52, 0
  br i1 %tobool.not.i53, label %if.end.i.bcm2835_rd_fifo.exit_crit_edge, label %if.end.i.land.rhs.i_crit_edge

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

if.end.i.bcm2835_rd_fifo.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bcm2835_rd_fifo.exit

bcm2835_rd_fifo.exit:                             ; preds = %if.end.i.bcm2835_rd_fifo.exit_crit_edge, %land.rhs.i.bcm2835_rd_fifo.exit_crit_edge, %if.end9.bcm2835_rd_fifo.exit_crit_edge
  %56 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not12.i = icmp eq i32 %57, 0
  br i1 %tobool.not12.i, label %bcm2835_rd_fifo.exit.bcm2835_wr_fifo.exit_crit_edge, label %land.rhs.lr.ph.i56

bcm2835_rd_fifo.exit.bcm2835_wr_fifo.exit_crit_edge: ; preds = %bcm2835_rd_fifo.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %bcm2835_wr_fifo.exit

land.rhs.lr.ph.i56:                               ; preds = %bcm2835_rd_fifo.exit
  %tx_buf.i55 = getelementptr inbounds %struct.bcm2835_spi, ptr %dev_id, i32 0, i32 6
  br label %land.rhs.i58

land.rhs.i58:                                     ; preds = %cond.end.i.land.rhs.i58_crit_edge, %land.rhs.lr.ph.i56
  %58 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_id, align 8
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #12, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  %61 = and i32 %60, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool1.not.i57 = icmp eq i32 %61, 0
  br i1 %tobool1.not.i57, label %land.rhs.i58.bcm2835_wr_fifo.exit_crit_edge, label %while.body.i59

land.rhs.i58.bcm2835_wr_fifo.exit_crit_edge:      ; preds = %land.rhs.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %bcm2835_wr_fifo.exit

while.body.i59:                                   ; preds = %land.rhs.i58
  %62 = ptrtoint ptr %tx_buf.i55 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tx_buf.i55, align 8
  %tobool2.not.i = icmp eq ptr %63, null
  br i1 %tobool2.not.i, label %while.body.i59.cond.end.i_crit_edge, label %cond.true.i

while.body.i59.cond.end.i_crit_edge:              ; preds = %while.body.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.true.i:                                      ; preds = %while.body.i59
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr.i60 = getelementptr i8, ptr %63, i32 1
  %64 = ptrtoint ptr %tx_buf.i55 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %incdec.ptr.i60, ptr %tx_buf.i55, align 8
  %65 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %63, align 1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %while.body.i59.cond.end.i_crit_edge
  %cond.i = phi i8 [ %66, %cond.true.i ], [ 0, %while.body.i59.cond.end.i_crit_edge ]
  %conv5.i = zext i8 %cond.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %67 = shl nuw i32 %conv5.i, 24
  %68 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev_id, align 8
  %add.ptr.i.i61 = getelementptr i8, ptr %69, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61, i32 %67) #12, !srcloc !135
  %70 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_len, align 8
  %dec.i62 = add i32 %71, -1
  store i32 %dec.i62, ptr %tx_len, align 8
  %tobool.not.i63 = icmp eq i32 %dec.i62, 0
  br i1 %tobool.not.i63, label %cond.end.i.bcm2835_wr_fifo.exit_crit_edge, label %cond.end.i.land.rhs.i58_crit_edge

cond.end.i.land.rhs.i58_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i58

cond.end.i.bcm2835_wr_fifo.exit_crit_edge:        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bcm2835_wr_fifo.exit

bcm2835_wr_fifo.exit:                             ; preds = %cond.end.i.bcm2835_wr_fifo.exit_crit_edge, %land.rhs.i58.bcm2835_wr_fifo.exit_crit_edge, %bcm2835_rd_fifo.exit.bcm2835_wr_fifo.exit_crit_edge
  %72 = ptrtoint ptr %rx_len.i45 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_len.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool10.not = icmp eq i32 %73, 0
  br i1 %tobool10.not, label %if.then11, label %bcm2835_wr_fifo.exit.if.end12_crit_edge

bcm2835_wr_fifo.exit.if.end12_crit_edge:          ; preds = %bcm2835_wr_fifo.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %bcm2835_wr_fifo.exit
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_id, align 8
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #12, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  %77 = and i32 %76, 1341718271
  %78 = or i32 %77, 805306624
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %79 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev_id, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #12, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %81 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev_id, align 8
  %add.ptr.i.i64 = getelementptr i8, ptr %82, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i64, i32 0) #12, !srcloc !135
  %ctlr = getelementptr inbounds %struct.bcm2835_spi, ptr %dev_id, i32 0, i32 5
  %83 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ctlr, align 4
  tail call void @spi_finalize_current_transfer(ptr noundef %84) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %bcm2835_wr_fifo.exit.if.end12_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm2835_dma_release(ptr nocapture noundef %ctlr, ptr nocapture noundef readonly %bs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 60
  %0 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_tx, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.dmaengine_terminate_sync.exit_crit_edge, label %dmaengine_terminate_async.exit.i

if.then.dmaengine_terminate_sync.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_async.exit.i:                 ; preds = %if.then
  %call.i.i = tail call i32 %5(ptr noundef nonnull %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge

dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_sync.exit

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.31, i32 noundef 1169) #12
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 48
  %8 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %9, null
  br i1 %tobool.not.i1.i, label %if.end.i.dmaengine_terminate_sync.exit_crit_edge, label %if.then.i2.i

if.end.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_sync.exit

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %9(ptr noundef nonnull %1) #12
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_sync.exit:                    ; preds = %if.then.i2.i, %if.end.i.dmaengine_terminate_sync.exit_crit_edge, %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge, %if.then.dmaengine_terminate_sync.exit_crit_edge
  %fill_tx_desc = getelementptr inbounds %struct.bcm2835_spi, ptr %bs, i32 0, i32 21
  %10 = ptrtoint ptr %fill_tx_desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fill_tx_desc, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %dmaengine_terminate_sync.exit.if.end_crit_edge, label %if.then3

dmaengine_terminate_sync.exit.if.end_crit_edge:   ; preds = %dmaengine_terminate_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then3:                                         ; preds = %dmaengine_terminate_sync.exit
  %flags.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %if.then3.if.end_crit_edge, label %if.end.i35

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i35:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc_free.i, align 4
  %call1.i = tail call i32 %15(ptr noundef nonnull %11) #12
  br label %if.end

if.end:                                           ; preds = %if.end.i35, %if.then3.if.end_crit_edge, %dmaengine_terminate_sync.exit.if.end_crit_edge
  %fill_tx_addr = getelementptr inbounds %struct.bcm2835_spi, ptr %bs, i32 0, i32 22
  %16 = ptrtoint ptr %fill_tx_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fill_tx_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool6.not = icmp eq i32 %17, 0
  br i1 %tobool6.not, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_tx, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %23, i32 noundef %17, i32 noundef 4, i32 noundef 1, i32 noundef 32) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %24 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma_tx, align 8
  tail call void @dma_release_channel(ptr noundef %25) #12
  %26 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %dma_tx, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.end10, %entry.if.end13_crit_edge
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 61
  %27 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma_rx, align 4
  %tobool14.not = icmp eq ptr %28, null
  br i1 %tobool14.not, label %if.end13.if.end20_crit_edge, label %if.then15

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then15:                                        ; preds = %if.end13
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %device_terminate_all.i.i36 = getelementptr inbounds %struct.dma_device, ptr %30, i32 0, i32 47
  %31 = ptrtoint ptr %device_terminate_all.i.i36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device_terminate_all.i.i36, align 4
  %tobool.not.i.i37 = icmp eq ptr %32, null
  br i1 %tobool.not.i.i37, label %if.then15.dmaengine_terminate_sync.exit45_crit_edge, label %dmaengine_terminate_async.exit.i40

if.then15.dmaengine_terminate_sync.exit45_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_sync.exit45

dmaengine_terminate_async.exit.i40:               ; preds = %if.then15
  %call.i.i38 = tail call i32 %32(ptr noundef nonnull %28) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i38)
  %tobool.not.i39 = icmp eq i32 %call.i.i38, 0
  br i1 %tobool.not.i39, label %if.end.i43, label %dmaengine_terminate_async.exit.i40.dmaengine_terminate_sync.exit45_crit_edge

dmaengine_terminate_async.exit.i40.dmaengine_terminate_sync.exit45_crit_edge: ; preds = %dmaengine_terminate_async.exit.i40
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_sync.exit45

if.end.i43:                                       ; preds = %dmaengine_terminate_async.exit.i40
  tail call void @__might_sleep(ptr noundef nonnull @.str.31, i32 noundef 1169) #12
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %28, align 4
  %device_synchronize.i.i41 = getelementptr inbounds %struct.dma_device, ptr %34, i32 0, i32 48
  %35 = ptrtoint ptr %device_synchronize.i.i41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device_synchronize.i.i41, align 4
  %tobool.not.i1.i42 = icmp eq ptr %36, null
  br i1 %tobool.not.i1.i42, label %if.end.i43.dmaengine_terminate_sync.exit45_crit_edge, label %if.then.i2.i44

if.end.i43.dmaengine_terminate_sync.exit45_crit_edge: ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_sync.exit45

if.then.i2.i44:                                   ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %36(ptr noundef nonnull %28) #12
  br label %dmaengine_terminate_sync.exit45

dmaengine_terminate_sync.exit45:                  ; preds = %if.then.i2.i44, %if.end.i43.dmaengine_terminate_sync.exit45_crit_edge, %dmaengine_terminate_async.exit.i40.dmaengine_terminate_sync.exit45_crit_edge, %if.then15.dmaengine_terminate_sync.exit45_crit_edge
  %37 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dma_rx, align 4
  tail call void @dma_release_channel(ptr noundef %38) #12
  %39 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %dma_rx, align 4
  br label %if.end20

if.end20:                                         ; preds = %dmaengine_terminate_sync.exit45, %if.end13.if.end20_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_find(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @chip_match_name(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %call = tail call i32 @strcmp(ptr noundef %1, ptr noundef %data) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_request_own_desc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_slave_caps(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm2835_spi_transfer_one_poll(ptr nocapture noundef readonly %ctlr, ptr noundef %spi, i32 noundef %cs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %count_transfer_polling = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %count_transfer_polling to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %count_transfer_polling, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %count_transfer_polling, align 8
  %or = or i32 %cs, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #12, !srcloc !135
  %tx_len.i = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_len.i, align 8
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 64) #12
  %sub.i = sub i32 %8, %9
  %10 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub.i, ptr %tx_len.i, align 8
  %tx_buf.i = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 6
  br label %do.body.i

do.body.i:                                        ; preds = %cond.end5.i.do.body.i_crit_edge, %entry
  %count.addr.0.i = phi i32 [ %9, %entry ], [ %dec.i, %cond.end5.i.do.body.i_crit_edge ]
  %11 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_buf.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %do.body.i.cond.end5.i_crit_edge, label %cond.true2.i

do.body.i.cond.end5.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end5.i

cond.true2.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr.i = getelementptr i8, ptr %12, i32 1
  %13 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %incdec.ptr.i, ptr %tx_buf.i, align 8
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %12, align 1
  br label %cond.end5.i

cond.end5.i:                                      ; preds = %cond.true2.i, %do.body.i.cond.end5.i_crit_edge
  %cond6.i = phi i8 [ %15, %cond.true2.i ], [ 0, %do.body.i.cond.end5.i_crit_edge ]
  %conv8.i = zext i8 %cond6.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %16 = shl nuw i32 %conv8.i, 24
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %16) #12, !srcloc !135
  %dec.i = add i32 %count.addr.0.i, -1
  %tobool9.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool9.not.i, label %bcm2835_wr_fifo_blind.exit, label %cond.end5.i.do.body.i_crit_edge

cond.end5.i.do.body.i_crit_edge:                  ; preds = %cond.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

bcm2835_wr_fifo_blind.exit:                       ; preds = %cond.end5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %19, 2
  %20 = load i32, ptr @polling_limit_us, align 4
  %mul = mul i32 %20, 100
  %div = udiv i32 %mul, 1000000
  %add1 = add i32 %add, %div
  %rx_len = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 9
  %21 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not21 = icmp eq i32 %22, 0
  br i1 %tobool.not21, label %bcm2835_wr_fifo_blind.exit.while.end_crit_edge, label %while.body.lr.ph

bcm2835_wr_fifo_blind.exit.while.end_crit_edge:   ; preds = %bcm2835_wr_fifo_blind.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %bcm2835_wr_fifo_blind.exit
  %rx_buf.i = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %while.body.lr.ph
  %23 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not12.i = icmp eq i32 %24, 0
  br i1 %tobool.not12.i, label %while.body.land.rhs.i9.preheader_crit_edge, label %while.body.land.rhs.i_crit_edge

while.body.land.rhs.i_crit_edge:                  ; preds = %while.body
  br label %land.rhs.i

while.body.land.rhs.i9.preheader_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i9.preheader

land.rhs.i:                                       ; preds = %cond.end.i.land.rhs.i_crit_edge, %while.body.land.rhs.i_crit_edge
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #12, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  %28 = and i32 %27, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool1.not.i = icmp eq i32 %28, 0
  br i1 %tobool1.not.i, label %land.rhs.i.bcm2835_wr_fifo.exit_crit_edge, label %while.body.i

land.rhs.i.bcm2835_wr_fifo.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bcm2835_wr_fifo.exit

while.body.i:                                     ; preds = %land.rhs.i
  %29 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_buf.i, align 8
  %tobool2.not.i = icmp eq ptr %30, null
  br i1 %tobool2.not.i, label %while.body.i.cond.end.i_crit_edge, label %cond.true.i

while.body.i.cond.end.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.true.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr.i3 = getelementptr i8, ptr %30, i32 1
  %31 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %incdec.ptr.i3, ptr %tx_buf.i, align 8
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %30, align 1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %while.body.i.cond.end.i_crit_edge
  %cond.i = phi i8 [ %33, %cond.true.i ], [ 0, %while.body.i.cond.end.i_crit_edge ]
  %conv5.i = zext i8 %cond.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %34 = shl nuw i32 %conv5.i, 24
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  %add.ptr.i.i4 = getelementptr i8, ptr %36, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4, i32 %34) #12, !srcloc !135
  %37 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_len.i, align 8
  %dec.i5 = add i32 %38, -1
  store i32 %dec.i5, ptr %tx_len.i, align 8
  %tobool.not.i6 = icmp eq i32 %dec.i5, 0
  br i1 %tobool.not.i6, label %cond.end.i.bcm2835_wr_fifo.exit_crit_edge, label %cond.end.i.land.rhs.i_crit_edge

cond.end.i.land.rhs.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

cond.end.i.bcm2835_wr_fifo.exit_crit_edge:        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bcm2835_wr_fifo.exit

bcm2835_wr_fifo.exit:                             ; preds = %cond.end.i.bcm2835_wr_fifo.exit_crit_edge, %land.rhs.i.bcm2835_wr_fifo.exit_crit_edge
  %39 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr = load i32, ptr %rx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not11.i = icmp eq i32 %.pr, 0
  br i1 %tobool.not11.i, label %bcm2835_wr_fifo.exit.while.end_crit_edge, label %bcm2835_wr_fifo.exit.land.rhs.i9.preheader_crit_edge

bcm2835_wr_fifo.exit.land.rhs.i9.preheader_crit_edge: ; preds = %bcm2835_wr_fifo.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i9.preheader

bcm2835_wr_fifo.exit.while.end_crit_edge:         ; preds = %bcm2835_wr_fifo.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.i9.preheader:                            ; preds = %bcm2835_wr_fifo.exit.land.rhs.i9.preheader_crit_edge, %while.body.land.rhs.i9.preheader_crit_edge
  br label %land.rhs.i9

land.rhs.i9:                                      ; preds = %if.end.i.land.rhs.i9_crit_edge, %land.rhs.i9.preheader
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #12, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  %43 = and i32 %42, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool1.not.i8 = icmp eq i32 %43, 0
  br i1 %tobool1.not.i8, label %bcm2835_rd_fifo.exit, label %while.body.i11

while.body.i11:                                   ; preds = %land.rhs.i9
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %add.ptr.i.i10 = getelementptr i8, ptr %45, i32 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10) #12, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  %47 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rx_buf.i, align 4
  %tobool3.not.i = icmp eq ptr %48, null
  br i1 %tobool3.not.i, label %while.body.i11.if.end.i_crit_edge, label %if.then.i

while.body.i11.if.end.i_crit_edge:                ; preds = %while.body.i11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i11
  call void @__sanitizer_cov_trace_pc() #14
  %49 = lshr i32 %46, 24
  %conv.i = trunc i32 %49 to i8
  %incdec.ptr.i12 = getelementptr i8, ptr %48, i32 1
  %50 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %incdec.ptr.i12, ptr %rx_buf.i, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv.i, ptr %48, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i11.if.end.i_crit_edge
  %52 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_len, align 4
  %dec.i13 = add i32 %53, -1
  store i32 %dec.i13, ptr %rx_len, align 4
  %tobool.not.i14 = icmp eq i32 %dec.i13, 0
  br i1 %tobool.not.i14, label %if.end.i.while.end_crit_edge, label %if.end.i.land.rhs.i9_crit_edge

if.end.i.land.rhs.i9_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i9

if.end.i.while.end_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

bcm2835_rd_fifo.exit:                             ; preds = %land.rhs.i9
  %54 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr17 = load i32, ptr %rx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr17)
  %tobool3.not = icmp eq i32 %.pr17, 0
  br i1 %tobool3.not, label %bcm2835_rd_fifo.exit.while.end_crit_edge, label %land.lhs.true

bcm2835_rd_fifo.exit.while.end_crit_edge:         ; preds = %bcm2835_rd_fifo.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.lhs.true:                                    ; preds = %bcm2835_rd_fifo.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add1, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.body, label %if.end17

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_spi_transfer_one_poll.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm2835_spi_transfer_one_poll, %do.end)) #12
          to label %land.lhs.true9 [label %do.end], !srcloc !146

land.lhs.true9:                                   ; preds = %do.body
  %call10 = tail call i32 @___ratelimit(ptr noundef nonnull @bcm2835_spi_transfer_one_poll._rs, ptr noundef nonnull @.str.29) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true9.do.end_crit_edge, label %if.then12

land.lhs.true9.do.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then12:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %sub13 = sub i32 %56, %add1
  %57 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_len.i, align 8
  %59 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rx_len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_spi_transfer_one_poll.descriptor, ptr noundef %spi, ptr noundef nonnull @.str.30, i32 noundef %sub13, i32 noundef %58, i32 noundef %60) #12
  br label %do.end

do.end:                                           ; preds = %if.then12, %land.lhs.true9.do.end_crit_edge, %do.body
  %count_transfer_irq_after_polling = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 16
  %61 = ptrtoint ptr %count_transfer_irq_after_polling to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %count_transfer_irq_after_polling, align 8
  %inc15 = add i64 %62, 1
  store i64 %inc15, ptr %count_transfer_irq_after_polling, align 8
  tail call fastcc void @bcm2835_spi_transfer_one_irq(ptr noundef %ctlr, i32 noundef %cs, i1 noundef zeroext false)
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true
  %63 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pr22 = load i32, ptr %rx_len, align 4
  %tobool.not = icmp eq i32 %.pr22, 0
  br i1 %tobool.not, label %if.end17.while.end_crit_edge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %bcm2835_rd_fifo.exit.while.end_crit_edge, %if.end.i.while.end_crit_edge, %bcm2835_wr_fifo.exit.while.end_crit_edge, %bcm2835_wr_fifo_blind.exit.while.end_crit_edge
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 8
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #12, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  %67 = and i32 %66, 1341718271
  %68 = or i32 %67, 805306624
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #12, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 8
  %add.ptr.i.i15 = getelementptr i8, ptr %72, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i15, i32 0) #12, !srcloc !135
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bcm2835_spi_can_dma(ptr nocapture noundef readnone %ctlr, ptr nocapture noundef readnone %spi, ptr nocapture noundef readonly %tfr) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %1)
  %cmp = icmp ugt i32 %1, 95
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm2835_spi_transfer_one_irq(ptr nocapture noundef readonly %ctlr, i32 noundef %cs, i1 noundef zeroext %fifo_empty) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %count_transfer_irq = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %count_transfer_irq to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %count_transfer_irq, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %count_transfer_irq, align 8
  %or = or i32 %cs, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #12, !srcloc !135
  br i1 %fifo_empty, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %tx_len.i = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_len.i, align 8
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 64) #12
  %sub.i = sub i32 %8, %9
  %10 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub.i, ptr %tx_len.i, align 8
  %tx_buf.i = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 6
  br label %do.body.i

do.body.i:                                        ; preds = %cond.end5.i.do.body.i_crit_edge, %if.then
  %count.addr.0.i = phi i32 [ %9, %if.then ], [ %dec.i, %cond.end5.i.do.body.i_crit_edge ]
  %11 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_buf.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %do.body.i.cond.end5.i_crit_edge, label %cond.true2.i

do.body.i.cond.end5.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end5.i

cond.true2.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr.i = getelementptr i8, ptr %12, i32 1
  %13 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %incdec.ptr.i, ptr %tx_buf.i, align 8
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %12, align 1
  br label %cond.end5.i

cond.end5.i:                                      ; preds = %cond.true2.i, %do.body.i.cond.end5.i_crit_edge
  %cond6.i = phi i8 [ %15, %cond.true2.i ], [ 0, %do.body.i.cond.end5.i_crit_edge ]
  %conv8.i = zext i8 %cond6.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %16 = shl nuw i32 %conv8.i, 24
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %16) #12, !srcloc !135
  %dec.i = add i32 %count.addr.0.i, -1
  %tobool9.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool9.not.i, label %cond.end5.i.if.end_crit_edge, label %cond.end5.i.do.body.i_crit_edge

cond.end5.i.do.body.i_crit_edge:                  ; preds = %cond.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

cond.end5.i.if.end_crit_edge:                     ; preds = %cond.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %cond.end5.i.if.end_crit_edge, %entry.if.end_crit_edge
  %tx_len.i1 = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %tx_len.i1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_len.i1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not12.i = icmp eq i32 %20, 0
  br i1 %tobool.not12.i, label %if.end.bcm2835_wr_fifo.exit_crit_edge, label %land.rhs.lr.ph.i

if.end.bcm2835_wr_fifo.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %bcm2835_wr_fifo.exit

land.rhs.lr.ph.i:                                 ; preds = %if.end
  %tx_buf.i2 = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 6
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %cond.end.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #12, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  %24 = and i32 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool1.not.i = icmp eq i32 %24, 0
  br i1 %tobool1.not.i, label %land.rhs.i.bcm2835_wr_fifo.exit_crit_edge, label %while.body.i

land.rhs.i.bcm2835_wr_fifo.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bcm2835_wr_fifo.exit

while.body.i:                                     ; preds = %land.rhs.i
  %25 = ptrtoint ptr %tx_buf.i2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_buf.i2, align 8
  %tobool2.not.i = icmp eq ptr %26, null
  br i1 %tobool2.not.i, label %while.body.i.cond.end.i_crit_edge, label %cond.true.i

while.body.i.cond.end.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.true.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr.i3 = getelementptr i8, ptr %26, i32 1
  %27 = ptrtoint ptr %tx_buf.i2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %incdec.ptr.i3, ptr %tx_buf.i2, align 8
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %26, align 1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %while.body.i.cond.end.i_crit_edge
  %cond.i = phi i8 [ %29, %cond.true.i ], [ 0, %while.body.i.cond.end.i_crit_edge ]
  %conv5.i = zext i8 %cond.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %30 = shl nuw i32 %conv5.i, 24
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  %add.ptr.i.i4 = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4, i32 %30) #12, !srcloc !135
  %33 = ptrtoint ptr %tx_len.i1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_len.i1, align 8
  %dec.i5 = add i32 %34, -1
  store i32 %dec.i5, ptr %tx_len.i1, align 8
  %tobool.not.i6 = icmp eq i32 %dec.i5, 0
  br i1 %tobool.not.i6, label %cond.end.i.bcm2835_wr_fifo.exit_crit_edge, label %cond.end.i.land.rhs.i_crit_edge

cond.end.i.land.rhs.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

cond.end.i.bcm2835_wr_fifo.exit_crit_edge:        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bcm2835_wr_fifo.exit

bcm2835_wr_fifo.exit:                             ; preds = %cond.end.i.bcm2835_wr_fifo.exit_crit_edge, %land.rhs.i.bcm2835_wr_fifo.exit_crit_edge, %if.end.bcm2835_wr_fifo.exit_crit_edge
  %or1 = or i32 %cs, 1664
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %35 = tail call i32 @llvm.bswap.i32(i32 %or1) #12
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #12, !srcloc !135
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm2835_spi_reset_hw(ptr nocapture noundef readonly %bs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bs, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #12, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  %3 = and i32 %2, 1341718271
  %4 = or i32 %3, 805306624
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %5 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #12, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %7 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bs, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #12, !srcloc !135
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_spi_dma_rx_done(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %data, i32 0, i32 60
  %2 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_tx, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 47
  %6 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.dmaengine_terminate_async.exit_crit_edge, label %if.then.i

entry.dmaengine_terminate_async.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_async.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %7(ptr noundef %3) #12
  br label %dmaengine_terminate_async.exit

dmaengine_terminate_async.exit:                   ; preds = %if.then.i, %entry.dmaengine_terminate_async.exit_crit_edge
  %tx_dma_active = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %tx_dma_active to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tx_dma_active, align 4
  %rx_dma_active = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %rx_dma_active to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rx_dma_active, align 8
  %tfr1.i = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %tfr1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tfr1.i, align 8
  %tx_prologue.i = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %tx_prologue.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_prologue.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i7 = icmp eq i32 %13, 0
  br i1 %tobool.not.i7, label %dmaengine_terminate_async.exit.bcm2835_spi_undo_prologue.exit_crit_edge, label %if.end.i

dmaengine_terminate_async.exit.bcm2835_spi_undo_prologue.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %bcm2835_spi_undo_prologue.exit

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit
  %rx_prologue.i = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %rx_prologue.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_prologue.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool2.not.i = icmp eq i32 %15, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then3.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %rx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %rx_sg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_sg.i, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_address.i, align 4
  %sub.i = sub i32 %19, %15
  store i32 %sub.i, ptr %dma_address.i, align 4
  %20 = ptrtoint ptr %rx_prologue.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_prologue.i, align 4
  %22 = load ptr, ptr %rx_sg.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_length.i, align 4
  %add.i = add i32 %24, %21
  store i32 %add.i, ptr %dma_length.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then3.i, %if.end.i.if.end9.i_crit_edge
  %tx_buf.i = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_buf.i, align 8
  %tobool10.not.i = icmp eq ptr %26, null
  br i1 %tobool10.not.i, label %if.end9.i.out.i_crit_edge, label %if.end12.i

if.end9.i.out.i_crit_edge:                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end12.i:                                       ; preds = %if.end9.i
  %tx_spillover.i = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 12
  %27 = ptrtoint ptr %tx_spillover.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_spillover.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool13.not.i = icmp eq i32 %28, 0
  %29 = ptrtoint ptr %tx_prologue.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_prologue.i, align 8
  br i1 %tobool13.not.i, label %if.then17.i, label %if.else.i, !prof !136

if.then17.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %tx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %11, i32 0, i32 5
  %31 = ptrtoint ptr %tx_sg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_sg.i, align 4
  %dma_address21.i = getelementptr inbounds %struct.scatterlist, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %dma_address21.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_address21.i, align 4
  %sub22.i = sub i32 %34, %30
  store i32 %sub22.i, ptr %dma_address21.i, align 4
  %35 = ptrtoint ptr %tx_prologue.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_prologue.i, align 8
  br label %out.sink.split.i

if.else.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub30.i = add i32 %30, -4
  %tx_sg31.i = getelementptr inbounds %struct.spi_transfer, ptr %11, i32 0, i32 5
  %37 = ptrtoint ptr %tx_sg31.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_sg31.i, align 4
  %dma_length34.i = getelementptr inbounds %struct.scatterlist, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %dma_length34.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub30.i, ptr %dma_length34.i, align 4
  %40 = load ptr, ptr %tx_sg31.i, align 4
  %dma_address38.i = getelementptr %struct.scatterlist, ptr %40, i32 1, i32 3
  %41 = ptrtoint ptr %dma_address38.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dma_address38.i, align 4
  %sub39.i = add i32 %42, -4
  store i32 %sub39.i, ptr %dma_address38.i, align 4
  br label %out.sink.split.i

out.sink.split.i:                                 ; preds = %if.else.i, %if.then17.i
  %tx_sg31.sink.i = phi ptr [ %tx_sg31.i, %if.else.i ], [ %tx_sg.i, %if.then17.i ]
  %.sink65.i = phi i32 [ 1, %if.else.i ], [ 0, %if.then17.i ]
  %.sink63.i = phi i32 [ 4, %if.else.i ], [ %36, %if.then17.i ]
  %43 = ptrtoint ptr %tx_sg31.sink.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_sg31.sink.i, align 4
  %dma_length43.i = getelementptr %struct.scatterlist, ptr %44, i32 %.sink65.i, i32 4
  %45 = ptrtoint ptr %dma_length43.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma_length43.i, align 4
  %add28.i = add i32 %46, %.sink63.i
  store i32 %add28.i, ptr %dma_length43.i, align 4
  br label %out.i

out.i:                                            ; preds = %out.sink.split.i, %if.end9.i.out.i_crit_edge
  %47 = ptrtoint ptr %tx_prologue.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %tx_prologue.i, align 8
  br label %bcm2835_spi_undo_prologue.exit

bcm2835_spi_undo_prologue.exit:                   ; preds = %out.i, %dmaengine_terminate_async.exit.bcm2835_spi_undo_prologue.exit_crit_edge
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #12, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  %51 = and i32 %50, 1341718271
  %52 = or i32 %51, 805306624
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #12, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %56, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #12, !srcloc !135
  tail call void @spi_finalize_current_transfer(ptr noundef %data) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_spi_dma_tx_done(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #12, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  %5 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not37 = icmp eq i32 %5, 0
  br i1 %tobool.not37, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %slv = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 18
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %6 = ptrtoint ptr %slv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slv, align 8
  %clear_rx_cs = getelementptr inbounds %struct.bcm2835_spidev, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %clear_rx_cs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clear_rx_cs, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #12, !srcloc !135
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #12, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  %16 = and i32 %15, 256
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %tx_dma_active = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 19
  %17 = ptrtoint ptr %tx_dma_active to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %tx_dma_active, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !147
  %rx_dma_active = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 20
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_dma_active, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr %rx_dma_active, i32 1, i32 3, i32 1) #12
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %while.end
  %18 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %rx_dma_active, i32 1, i32 0) #12, !srcloc !144
  %asmresult.i = extractvalue { i32, i32 } %18, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %18, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %tobool23.not = icmp eq i32 %asmresult1.i, 0
  br i1 %tobool23.not, label %__cmpxchg.exit.if.end_crit_edge, label %if.then

__cmpxchg.exit.if.end_crit_edge:                  ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %__cmpxchg.exit
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %data, i32 0, i32 61
  %19 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma_rx, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 47
  %23 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i34 = icmp eq ptr %24, null
  br i1 %tobool.not.i34, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call.i35 = tail call i32 %24(ptr noundef %20) #12
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %__cmpxchg.exit.if.end_crit_edge
  %tfr1.i = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %tfr1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tfr1.i, align 8
  %tx_prologue.i = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 10
  %27 = ptrtoint ptr %tx_prologue.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_prologue.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i36 = icmp eq i32 %28, 0
  br i1 %tobool.not.i36, label %if.end.bcm2835_spi_undo_prologue.exit_crit_edge, label %if.end.i

if.end.bcm2835_spi_undo_prologue.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %bcm2835_spi_undo_prologue.exit

if.end.i:                                         ; preds = %if.end
  %rx_prologue.i = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %rx_prologue.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_prologue.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool2.not.i = icmp eq i32 %30, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then3.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %rx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %26, i32 0, i32 6
  %31 = ptrtoint ptr %rx_sg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_sg.i, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_address.i, align 4
  %sub.i = sub i32 %34, %30
  store i32 %sub.i, ptr %dma_address.i, align 4
  %35 = ptrtoint ptr %rx_prologue.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_prologue.i, align 4
  %37 = load ptr, ptr %rx_sg.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_length.i, align 4
  %add.i = add i32 %39, %36
  store i32 %add.i, ptr %dma_length.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then3.i, %if.end.i.if.end9.i_crit_edge
  %tx_buf.i = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 6
  %40 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_buf.i, align 8
  %tobool10.not.i = icmp eq ptr %41, null
  br i1 %tobool10.not.i, label %if.end9.i.out.i_crit_edge, label %if.end12.i

if.end9.i.out.i_crit_edge:                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end12.i:                                       ; preds = %if.end9.i
  %tx_spillover.i = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 12
  %42 = ptrtoint ptr %tx_spillover.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_spillover.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool13.not.i = icmp eq i32 %43, 0
  %44 = ptrtoint ptr %tx_prologue.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_prologue.i, align 8
  br i1 %tobool13.not.i, label %if.then17.i, label %if.else.i, !prof !136

if.then17.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %tx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %26, i32 0, i32 5
  %46 = ptrtoint ptr %tx_sg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tx_sg.i, align 4
  %dma_address21.i = getelementptr inbounds %struct.scatterlist, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %dma_address21.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dma_address21.i, align 4
  %sub22.i = sub i32 %49, %45
  store i32 %sub22.i, ptr %dma_address21.i, align 4
  %50 = ptrtoint ptr %tx_prologue.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_prologue.i, align 8
  br label %out.sink.split.i

if.else.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub30.i = add i32 %45, -4
  %tx_sg31.i = getelementptr inbounds %struct.spi_transfer, ptr %26, i32 0, i32 5
  %52 = ptrtoint ptr %tx_sg31.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tx_sg31.i, align 4
  %dma_length34.i = getelementptr inbounds %struct.scatterlist, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %dma_length34.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub30.i, ptr %dma_length34.i, align 4
  %55 = load ptr, ptr %tx_sg31.i, align 4
  %dma_address38.i = getelementptr %struct.scatterlist, ptr %55, i32 1, i32 3
  %56 = ptrtoint ptr %dma_address38.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dma_address38.i, align 4
  %sub39.i = add i32 %57, -4
  store i32 %sub39.i, ptr %dma_address38.i, align 4
  br label %out.sink.split.i

out.sink.split.i:                                 ; preds = %if.else.i, %if.then17.i
  %tx_sg31.sink.i = phi ptr [ %tx_sg31.i, %if.else.i ], [ %tx_sg.i, %if.then17.i ]
  %.sink65.i = phi i32 [ 1, %if.else.i ], [ 0, %if.then17.i ]
  %.sink63.i = phi i32 [ 4, %if.else.i ], [ %51, %if.then17.i ]
  %58 = ptrtoint ptr %tx_sg31.sink.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tx_sg31.sink.i, align 4
  %dma_length43.i = getelementptr %struct.scatterlist, ptr %59, i32 %.sink65.i, i32 4
  %60 = ptrtoint ptr %dma_length43.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dma_length43.i, align 4
  %add28.i = add i32 %61, %.sink63.i
  store i32 %add28.i, ptr %dma_length43.i, align 4
  br label %out.i

out.i:                                            ; preds = %out.sink.split.i, %if.end9.i.out.i_crit_edge
  %62 = ptrtoint ptr %tx_prologue.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %tx_prologue.i, align 8
  br label %bcm2835_spi_undo_prologue.exit

bcm2835_spi_undo_prologue.exit:                   ; preds = %out.i, %if.end.bcm2835_spi_undo_prologue.exit_crit_edge
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 8
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #12, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  %66 = and i32 %65, 1341718271
  %67 = or i32 %66, 805306624
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #12, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %71, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #12, !srcloc !135
  tail call void @spi_finalize_current_transfer(ptr noundef %data) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_split_transfers_maxsize(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u64(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !71, !72, !74, !76, !77, !78, !79, !81, !83, !84, !85, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !111, !113, !115, !117, !119, !120, !121, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__param_polling_limit_us, !1, !"__param_polling_limit_us", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-bcm2835.c", i32 78, i32 1}
!2 = !{ptr @__UNIQUE_ID_polling_limit_ustype238, !1, !"__UNIQUE_ID_polling_limit_ustype238", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_polling_limit_us239, !4, !"__UNIQUE_ID_polling_limit_us239", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-bcm2835.c", i32 79, i32 1}
!5 = !{ptr @__initcall__kmod_spi_bcm2835__248_1437_bcm2835_spi_driver_init6, !6, !"__initcall__kmod_spi_bcm2835__248_1437_bcm2835_spi_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-bcm2835.c", i32 1437, i32 1}
!7 = !{ptr @__exitcall_bcm2835_spi_driver_exit, !6, !"__exitcall_bcm2835_spi_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description249, !9, !"__UNIQUE_ID_description249", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-bcm2835.c", i32 1439, i32 1}
!10 = !{ptr @__UNIQUE_ID_author250, !11, !"__UNIQUE_ID_author250", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-bcm2835.c", i32 1440, i32 1}
!12 = !{ptr @__UNIQUE_ID_file251, !13, !"__UNIQUE_ID_file251", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-bcm2835.c", i32 1441, i32 1}
!14 = !{ptr @__UNIQUE_ID_license252, !13, !"__UNIQUE_ID_license252", i1 false, i1 false}
!15 = !{ptr @__param_str_polling_limit_us, !1, !"__param_str_polling_limit_us", i1 false, i1 false}
!16 = !{ptr @polling_limit_us, !17, !"polling_limit_us", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-bcm2835.c", i32 77, i32 21}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-bcm2835.c", i32 1430, i32 12}
!20 = !{ptr @bcm2835_spi_driver, !21, !"bcm2835_spi_driver", i1 false, i1 false}
!21 = !{!"../drivers/spi/spi-bcm2835.c", i32 1428, i32 31}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/spi/spi-bcm2835.c", i32 1349, i32 10}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-bcm2835.c", i32 1371, i32 3}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @bcm2835_spi_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @bcm2835_spi_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/spi/spi-bcm2835.c", i32 1377, i32 3}
!34 = !{ptr @bcm2835_spi_probe._entry.7, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @bcm2835_spi_probe._entry_ptr.9, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/spi/spi-bcm2835.c", i32 1276, i32 3}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @bcm2835_spi_setup._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @bcm2835_spi_setup._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/spi/spi-bcm2835.c", i32 1292, i32 23}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-bcm2835.c", i32 1306, i32 2}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @bcm2835_spi_setup._entry.13, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @bcm2835_spi_setup._entry_ptr.16, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/spi/spi-bcm2835.c", i32 1188, i32 3}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @bcm2835_spi_setup_dma._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @bcm2835_spi_setup_dma._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/spi/spi-bcm2835.c", i32 1198, i32 3}
!55 = !{ptr @bcm2835_spi_setup_dma._entry.19, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @bcm2835_spi_setup_dma._entry_ptr.21, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/spi/spi-bcm2835.c", i32 1204, i32 3}
!59 = !{ptr @bcm2835_spi_setup_dma._entry.22, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @bcm2835_spi_setup_dma._entry_ptr.24, !58, !"_entry_ptr", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/spi/spi-bcm2835.c", i32 1024, i32 4}
!67 = !{ptr @bcm2835_spi_transfer_one_poll._rs, !66, !"_rs", i1 false, i1 false}
!68 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @bcm2835_spi_transfer_one_poll.descriptor, !66, !"descriptor", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/spi/spi-bcm2835.c", i32 893, i32 3}
!76 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @bcm2835_dma_init._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @bcm2835_dma_init._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/spi/spi-bcm2835.c", i32 900, i32 39}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/spi/spi-bcm2835.c", i32 902, i32 3}
!83 = !{ptr @bcm2835_dma_init._entry.35, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @bcm2835_dma_init._entry_ptr.37, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/spi/spi-bcm2835.c", i32 907, i32 39}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/spi/spi-bcm2835.c", i32 909, i32 3}
!89 = !{ptr @bcm2835_dma_init._entry.39, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @bcm2835_dma_init._entry_ptr.41, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/spi/spi-bcm2835.c", i32 932, i32 3}
!93 = !{ptr @bcm2835_dma_init._entry.42, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @bcm2835_dma_init._entry_ptr.44, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/spi/spi-bcm2835.c", i32 943, i32 3}
!97 = !{ptr @bcm2835_dma_init._entry.45, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @bcm2835_dma_init._entry_ptr.47, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/spi/spi-bcm2835.c", i32 950, i32 3}
!101 = !{ptr @bcm2835_dma_init._entry.48, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @bcm2835_dma_init._entry_ptr.50, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/spi/spi-bcm2835.c", i32 974, i32 2}
!105 = !{ptr @bcm2835_dma_init._entry.51, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @bcm2835_dma_init._entry_ptr.53, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/spi/spi-bcm2835.c", i32 170, i32 31}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/spi/spi-bcm2835.c", i32 177, i32 21}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/spi/spi-bcm2835.c", i32 179, i32 21}
!113 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/spi/spi-bcm2835.c", i32 181, i32 21}
!115 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/spi/spi-bcm2835.c", i32 183, i32 21}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/spi/spi-bcm2835.c", i32 1419, i32 3}
!119 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @bcm2835_spi_shutdown._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @bcm2835_spi_shutdown._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @bcm2835_spi_match, !123, !"bcm2835_spi_match", i1 false, i1 false}
!123 = !{!"../drivers/spi/spi-bcm2835.c", i32 1422, i32 34}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{i8 0, i8 2}
!134 = !{i64 2154649042}
!135 = !{i64 6330985}
!136 = !{!"branch_weights", i32 2000, i32 1}
!137 = !{i64 6331403}
!138 = !{i64 2154648662}
!139 = !{i64 2154652910}
!140 = !{i64 2154652752}
!141 = !{i64 2154658830}
!142 = !{i64 2154658982}
!143 = !{i64 2154659930}
!144 = !{i64 790089, i64 790110, i64 790133, i64 790152, i64 790171}
!145 = !{i64 2154660338}
!146 = !{i64 2148762412, i64 2148762417, i64 2148762430, i64 2148762474, i64 2148762508, i64 2148762529}
!147 = !{i64 2154657283}
!148 = !{i64 2154658231}
!149 = !{i64 2154658639}
