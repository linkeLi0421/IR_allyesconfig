; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-pl022.c_pt.bc'
source_filename = "../drivers/spi/spi-pl022.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pl022_config_chip = type { i32, i32, i8, %struct.ssp_clock_params, i32, i32, i32, i32, i32, i32, i32 }
%struct.ssp_clock_params = type { i8, i8 }
%struct.vendor_data = type { i32, i32, i8, i8, i8, i8, i8 }
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
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.pl022_ssp_controller = type { i16, i8, ptr, ptr, ptr, i32, i8 }
%struct.pl022 = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, %struct.tasklet_struct, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.sg_table, %struct.sg_table, ptr, i8, i32, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.chip_data = type { i32, i16, i16, i16, i8, i8, i32, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_spi_pl022__318_2443_pl022_init4 = internal global ptr @pl022_init, section ".initcall4.init", align 4
@pl022_driver = internal global { %struct.amba_driver, [36 x i8] } { %struct.amba_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pl022_dev_pm_ops, ptr null, ptr null }, ptr @pl022_probe, ptr @pl022_remove, ptr null, ptr @pl022_ids }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pl022_exit = internal global ptr @pl022_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author319 = internal constant [62 x i8] c"spi_pl022.author=Linus Walleij <linus.walleij@stericsson.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description320 = internal constant [50 x i8] c"spi_pl022.description=PL022 SSP Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file321 = internal constant [37 x i8] c"spi_pl022.file=drivers/spi/spi-pl022\00", section ".modinfo", align 1
@__UNIQUE_ID_license322 = internal constant [22 x i8] c"spi_pl022.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssp-pl022\00", [22 x i8] zeroinitializer }, align 32
@pl022_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pl022_suspend, ptr @pl022_resume, ptr @pl022_suspend, ptr @pl022_resume, ptr @pl022_suspend, ptr @pl022_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pl022_runtime_suspend, ptr @pl022_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@pl022_ids = internal constant { [5 x %struct.amba_id], [36 x i8] } { [5 x %struct.amba_id] [%struct.amba_id { i32 266274, i32 1048575, ptr @vendor_arm }, %struct.amba_id { i32 17301538, i32 -1, ptr @vendor_st }, %struct.amba_id { i32 524323, i32 -1, ptr @vendor_st_pl023 }, %struct.amba_id { i32 745506, i32 1048575, ptr @vendor_lsi }, %struct.amba_id zeroinitializer], [36 x i8] zeroinitializer }, align 32
@pl022_suspend.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 2, i8 61, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi_pl022\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pl022_suspend\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/spi/spi-pl022.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"suspended\0A\00", [21 x i8] zeroinitializer }, align 32
@pl022_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 2306, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"problem resuming\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pl022_resume\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pl022_resume._entry_ptr = internal global ptr @pl022_resume._entry, section ".printk_index", align 4
@pl022_resume.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.9, i8 2, i8 65, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"resumed\0A\00", [23 x i8] zeroinitializer }, align 32
@pl022_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 2112, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ARM PL022 driver, device ID: 0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pl022_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pl022_probe._entry_ptr = internal global ptr @pl022_probe._entry, section ".printk_index", align 4
@pl022_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.3, i32 2117, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"probe: no platform data defined\0A\00", [63 x i8] zeroinitializer }, align 32
@pl022_probe._entry_ptr.15 = internal global ptr @pl022_probe._entry.13, section ".printk_index", align 4
@pl022_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.3, i32 2124, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"probe - cannot alloc SPI master\0A\00", [63 x i8] zeroinitializer }, align 32
@pl022_probe._entry_ptr.18 = internal global ptr @pl022_probe._entry.16, section ".printk_index", align 4
@pl022_probe.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.3, ptr @.str.19, i8 2, i8 27, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BUSNO: %d\0A\00", [21 x i8] zeroinitializer }, align 32
@pl022_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.11, ptr @.str.3, i32 2170, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mapped registers from %pa to %p\0A\00", [63 x i8] zeroinitializer }, align 32
@pl022_probe._entry_ptr.22 = internal global ptr @pl022_probe._entry.20, section ".printk_index", align 4
@pl022_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.11, ptr @.str.3, i32 2175, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"could not retrieve SSP/SPI bus clock\0A\00", [58 x i8] zeroinitializer }, align 32
@pl022_probe._entry_ptr.25 = internal global ptr @pl022_probe._entry.23, section ".printk_index", align 4
@pl022_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.11, ptr @.str.3, i32 2181, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not enable SSP/SPI bus clock\0A\00", [60 x i8] zeroinitializer }, align 32
@pl022_probe._entry_ptr.28 = internal global ptr @pl022_probe._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pl022\00", [26 x i8] zeroinitializer }, align 32
@pl022_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.11, ptr @.str.3, i32 2197, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"probe - cannot get IRQ (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@pl022_probe._entry_ptr.32 = internal global ptr @pl022_probe._entry.30, section ".printk_index", align 4
@pl022_probe.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.3, ptr @.str.33, i8 2, i8 39, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"deferring probe to get DMA channel\0A\00", [60 x i8] zeroinitializer }, align 32
@pl022_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.11, ptr @.str.3, i32 2222, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"probe - problem registering spi master\0A\00", [56 x i8] zeroinitializer }, align 32
@pl022_probe._entry_ptr.36 = internal global ptr @pl022_probe._entry.34, section ".printk_index", align 4
@pl022_probe.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.3, ptr @.str.37, i8 2, i8 44, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"probe succeeded\0A\00", [47 x i8] zeroinitializer }, align 32
@pl022_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.11, ptr @.str.3, i32 2231, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"will use autosuspend for runtime pm, delay %dms\0A\00", [47 x i8] zeroinitializer }, align 32
@pl022_probe._entry_ptr.40 = internal global ptr @pl022_probe._entry.38, section ".printk_index", align 4
@pl022_platform_data_dt_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 2085, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no dt node defined\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pl022_platform_data_dt_get\00", [37 x i8] zeroinitializer }, align 32
@pl022_platform_data_dt_get._entry_ptr = internal global ptr @pl022_platform_data_dt_get._entry, section ".printk_index", align 4
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pl022,autosuspend-delay\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pl022,rt\00", [23 x i8] zeroinitializer }, align 32
@pl022_setup.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.45, ptr @.str.3, ptr @.str.46, i8 1, i8 -47, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pl022_setup\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"allocated memory for controller's runtime state\0A\00", [47 x i8] zeroinitializer }, align 32
@pl022_default_chip_info = internal constant { %struct.pl022_config_chip, [56 x i8] } { %struct.pl022_config_chip { i32 0, i32 0, i8 1, %struct.ssp_clock_params zeroinitializer, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pl022,interface\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pl022,com-mode\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pl022,rx-level-trig\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pl022,tx-level-trig\00", [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pl022,ctrl-len\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pl022,wait-state\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pl022,duplex\00", [19 x i8] zeroinitializer }, align 32
@pl022_setup.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.45, ptr @.str.3, ptr @.str.54, i8 1, i8 -39, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"using default controller_data settings\0A\00", [56 x i8] zeroinitializer }, align 32
@pl022_setup.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.45, ptr @.str.3, ptr @.str.55, i8 1, i8 -38, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"using user supplied controller_data settings\0A\00", [50 x i8] zeroinitializer }, align 32
@pl022_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.45, ptr @.str.3, i32 1921, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cpsdvsr is configured incorrectly\0A\00", [61 x i8] zeroinitializer }, align 32
@pl022_setup._entry_ptr = internal global ptr @pl022_setup._entry, section ".printk_index", align 4
@pl022_setup._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.45, ptr @.str.3, i32 1927, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"controller data is incorrect\00", [35 x i8] zeroinitializer }, align 32
@pl022_setup._entry_ptr.59 = internal global ptr @pl022_setup._entry.57, section ".printk_index", align 4
@pl022_setup._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.45, ptr @.str.3, i32 1940, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"illegal data size for this controller!\0A\00", [56 x i8] zeroinitializer }, align 32
@pl022_setup._entry_ptr.62 = internal global ptr @pl022_setup._entry.60, section ".printk_index", align 4
@pl022_setup._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.45, ptr @.str.3, i32 1942, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"This controller can only handle 4 <= n <= %d bit words\0A\00", [40 x i8] zeroinitializer }, align 32
@pl022_setup._entry_ptr.65 = internal global ptr @pl022_setup._entry.63, section ".printk_index", align 4
@pl022_setup.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.45, ptr @.str.3, ptr @.str.66, i8 1, i8 -26, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"4 <= n <=8 bits per word\0A\00", [38 x i8] zeroinitializer }, align 32
@pl022_setup.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.45, ptr @.str.3, ptr @.str.67, i8 1, i8 -25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"9 <= n <= 16 bits per word\0A\00", [36 x i8] zeroinitializer }, align 32
@pl022_setup.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.45, ptr @.str.3, ptr @.str.68, i8 1, i8 -24, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"17 <= n <= 32 bits per word\0A\00", [35 x i8] zeroinitializer }, align 32
@pl022_setup.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.45, ptr @.str.3, ptr @.str.69, i8 1, i8 -20, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DMA mode set in controller state\0A\00", [62 x i8] zeroinitializer }, align 32
@pl022_setup.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.45, ptr @.str.3, ptr @.str.70, i8 1, i8 -18, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DMA mode NOT set in controller state\0A\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@calculate_effective_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 1753, ptr @.str.73, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Max speed that can be programmed is %d Hz, you requested %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"calculate_effective_freq\00", [39 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@calculate_effective_freq._entry_ptr = internal global ptr @calculate_effective_freq._entry, section ".printk_index", align 4
@calculate_effective_freq._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.72, ptr @.str.3, i32 1758, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Requested frequency: %d Hz is less than minimum possible %d Hz\0A\00", [32 x i8] zeroinitializer }, align 32
@calculate_effective_freq._entry_ptr.76 = internal global ptr @calculate_effective_freq._entry.74, section ".printk_index", align 4
@.str.77 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"pl022: Matching cpsdvsr and scr not found for %d Hz rate \0A\00", [37 x i8] zeroinitializer }, align 32
@calculate_effective_freq.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.72, ptr @.str.3, ptr @.str.78, i8 1, i8 -61, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"SSP Target Frequency is: %u, Effective Frequency is %u\0A\00", [40 x i8] zeroinitializer }, align 32
@calculate_effective_freq.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.72, ptr @.str.3, ptr @.str.79, i8 1, i8 -61, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SSP cpsdvsr = %d, scr = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@verify_controller_parameters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.3, i32 1622, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"interface is configured incorrectly\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"verify_controller_parameters\00", [35 x i8] zeroinitializer }, align 32
@verify_controller_parameters._entry_ptr = internal global ptr @verify_controller_parameters._entry, section ".printk_index", align 4
@verify_controller_parameters._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.3, i32 1629, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"unidirectional mode not supported in this hardware version\0A\00", [36 x i8] zeroinitializer }, align 32
@verify_controller_parameters._entry_ptr.84 = internal global ptr @verify_controller_parameters._entry.82, section ".printk_index", align 4
@verify_controller_parameters._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.81, ptr @.str.3, i32 1635, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"hierarchy is configured incorrectly\0A\00", [59 x i8] zeroinitializer }, align 32
@verify_controller_parameters._entry_ptr.87 = internal global ptr @verify_controller_parameters._entry.85, section ".printk_index", align 4
@verify_controller_parameters._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.81, ptr @.str.3, i32 1642, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Communication mode is configured incorrectly\0A\00", [50 x i8] zeroinitializer }, align 32
@verify_controller_parameters._entry_ptr.90 = internal global ptr @verify_controller_parameters._entry.88, section ".printk_index", align 4
@verify_controller_parameters._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.81, ptr @.str.3, i32 1654, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"RX FIFO Trigger Level is configured incorrectly\0A\00", [47 x i8] zeroinitializer }, align 32
@verify_controller_parameters._entry_ptr.93 = internal global ptr @verify_controller_parameters._entry.91, section ".printk_index", align 4
@verify_controller_parameters._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.81, ptr @.str.3, i32 1661, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@verify_controller_parameters._entry_ptr.95 = internal global ptr @verify_controller_parameters._entry.94, section ".printk_index", align 4
@verify_controller_parameters._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.81, ptr @.str.3, i32 1667, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@verify_controller_parameters._entry_ptr.97 = internal global ptr @verify_controller_parameters._entry.96, section ".printk_index", align 4
@verify_controller_parameters._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.81, ptr @.str.3, i32 1679, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"TX FIFO Trigger Level is configured incorrectly\0A\00", [47 x i8] zeroinitializer }, align 32
@verify_controller_parameters._entry_ptr.100 = internal global ptr @verify_controller_parameters._entry.98, section ".printk_index", align 4
@verify_controller_parameters._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.81, ptr @.str.3, i32 1686, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@verify_controller_parameters._entry_ptr.102 = internal global ptr @verify_controller_parameters._entry.101, section ".printk_index", align 4
@verify_controller_parameters._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.81, ptr @.str.3, i32 1692, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@verify_controller_parameters._entry_ptr.104 = internal global ptr @verify_controller_parameters._entry.103, section ".printk_index", align 4
@verify_controller_parameters._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.81, ptr @.str.3, i32 1699, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CTRL LEN is configured incorrectly\0A\00", [60 x i8] zeroinitializer }, align 32
@verify_controller_parameters._entry_ptr.107 = internal global ptr @verify_controller_parameters._entry.105, section ".printk_index", align 4
@verify_controller_parameters._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.81, ptr @.str.3, i32 1705, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Wait State is configured incorrectly\0A\00", [58 x i8] zeroinitializer }, align 32
@verify_controller_parameters._entry_ptr.110 = internal global ptr @verify_controller_parameters._entry.108, section ".printk_index", align 4
@verify_controller_parameters._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.81, ptr @.str.3, i32 1715, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Microwire duplex mode is configured incorrectly\0A\00", [47 x i8] zeroinitializer }, align 32
@verify_controller_parameters._entry_ptr.113 = internal global ptr @verify_controller_parameters._entry.111, section ".printk_index", align 4
@verify_controller_parameters._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.81, ptr @.str.3, i32 1723, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"Microwire half duplex mode requested, but this is only available in the ST version of PL022\0A\00", [35 x i8] zeroinitializer }, align 32
@verify_controller_parameters._entry_ptr.116 = internal global ptr @verify_controller_parameters._entry.114, section ".printk_index", align 4
@loops_per_jiffy = external dso_local local_unnamed_addr global i32, align 4
@flush.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.117, ptr @.str.3, ptr @.str.118, i8 0, i8 -122, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flush\00", [26 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"flush\0A\00", [25 x i8] zeroinitializer }, align 32
@do_polling_transfer.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.119, ptr @.str.3, ptr @.str.120, i8 1, i8 -128, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"do_polling_transfer\00", [44 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"polling transfer ongoing ...\0A\00", [34 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@do_polling_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str.3, i32 1547, ptr @.str.73, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: timeout!\0A\00", [18 x i8] zeroinitializer }, align 32
@do_polling_transfer._entry_ptr = internal global ptr @do_polling_transfer._entry, section ".printk_index", align 4
@set_up_next_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.3, i32 1350, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"message of %u bytes to transmit but the current chip bus has a data width of %u bytes!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set_up_next_transfer\00", [43 x i8] zeroinitializer }, align 32
@set_up_next_transfer._entry_ptr = internal global ptr @set_up_next_transfer._entry, section ".printk_index", align 4
@set_up_next_transfer._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.123, ptr @.str.3, i32 1351, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"skipping this message\0A\00", [41 x i8] zeroinitializer }, align 32
@set_up_next_transfer._entry_ptr.126 = internal global ptr @set_up_next_transfer._entry.124, section ".printk_index", align 4
@readwriter.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.127, ptr @.str.3, ptr @.str.128, i8 0, i8 -87, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"readwriter\00", [21 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s, rx: %p, rxend: %p, tx: %p, txend: %p\0A\00", [54 x i8] zeroinitializer }, align 32
@print_current_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.3, i32 1487, ptr @.str.73, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spi-pl022 CR0: %x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"print_current_status\00", [43 x i8] zeroinitializer }, align 32
@print_current_status._entry_ptr = internal global ptr @print_current_status._entry, section ".printk_index", align 4
@print_current_status._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.130, ptr @.str.3, i32 1488, ptr @.str.73, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spi-pl022 CR1: %x\0A\00", [45 x i8] zeroinitializer }, align 32
@print_current_status._entry_ptr.133 = internal global ptr @print_current_status._entry.131, section ".printk_index", align 4
@print_current_status._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.130, ptr @.str.3, i32 1489, ptr @.str.73, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spi-pl022 DMACR: %x\0A\00", [43 x i8] zeroinitializer }, align 32
@print_current_status._entry_ptr.136 = internal global ptr @print_current_status._entry.134, section ".printk_index", align 4
@print_current_status._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.130, ptr @.str.3, i32 1490, ptr @.str.73, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi-pl022 SR: %x\0A\00", [46 x i8] zeroinitializer }, align 32
@print_current_status._entry_ptr.139 = internal global ptr @print_current_status._entry.137, section ".printk_index", align 4
@print_current_status._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.130, ptr @.str.3, i32 1494, ptr @.str.73, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"spi-pl022 exp_fifo_level/fifodepth: %u/%d\0A\00", [53 x i8] zeroinitializer }, align 32
@print_current_status._entry_ptr.142 = internal global ptr @print_current_status._entry.140, section ".printk_index", align 4
@do_interrupt_dma_transfer.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.143, ptr @.str.3, ptr @.str.144, i8 1, i8 109, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"do_interrupt_dma_transfer\00", [38 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"configuration of DMA failed, fall back to interrupt mode\0A\00", [38 x i8] zeroinitializer }, align 32
@configure_dma.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.145, ptr @.str.3, ptr @.str.146, i8 1, i8 0, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"configure_dma\00", [18 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"using %d pages for transfer\0A\00", [35 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@setup_dma_scatter.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.147, ptr @.str.3, ptr @.str.148, i8 0, i8 -35, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.147 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"setup_dma_scatter\00", [46 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"set RX/TX target page @ %p, %d bytes, %d left\0A\00", [49 x i8] zeroinitializer }, align 32
@setup_dma_scatter.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.147, ptr @.str.3, ptr @.str.149, i8 0, i8 -31, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"set RX/TX to dummy page %d bytes, %d left\0A\00", [53 x i8] zeroinitializer }, align 32
@pump_transfers.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.150, ptr @.str.3, ptr @.str.144, i8 1, i8 100, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pump_transfers\00", [17 x i8] zeroinitializer }, align 32
@pl022_interrupt_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.3, i32 1254, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bad message state in interrupt handler\00", [57 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pl022_interrupt_handler\00", [40 x i8] zeroinitializer }, align 32
@pl022_interrupt_handler._entry_ptr = internal global ptr @pl022_interrupt_handler._entry, section ".printk_index", align 4
@pl022_interrupt_handler._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.152, ptr @.str.3, i32 1275, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FIFO overrun\0A\00", [18 x i8] zeroinitializer }, align 32
@pl022_interrupt_handler._entry_ptr.155 = internal global ptr @pl022_interrupt_handler._entry.153, section ".printk_index", align 4
@pl022_interrupt_handler._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.152, ptr @.str.3, i32 1278, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RXFIFO is full\0A\00", [16 x i8] zeroinitializer }, align 32
@pl022_interrupt_handler._entry_ptr.158 = internal global ptr @pl022_interrupt_handler._entry.156, section ".printk_index", align 4
@pl022_interrupt_handler._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.152, ptr @.str.3, i32 1319, ptr @.str.73, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"read %u surplus bytes (did you request an odd number of bytes on a 16bit bus?)\0A\00", [48 x i8] zeroinitializer }, align 32
@pl022_interrupt_handler._entry_ptr.161 = internal global ptr @pl022_interrupt_handler._entry.159, section ".printk_index", align 4
@.str.162 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@pl022_dma_probe.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.164, ptr @.str.3, ptr @.str.165, i8 1, i8 23, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.164 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pl022_dma_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no RX DMA channel!\0A\00", [44 x i8] zeroinitializer }, align 32
@pl022_dma_probe.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.164, ptr @.str.3, ptr @.str.166, i8 1, i8 25, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.166 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no TX DMA channel!\0A\00", [44 x i8] zeroinitializer }, align 32
@pl022_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.164, ptr @.str.3, i32 1134, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"setup for DMA on RX %s, TX %s\0A\00", [33 x i8] zeroinitializer }, align 32
@pl022_dma_probe._entry_ptr = internal global ptr @pl022_dma_probe._entry, section ".printk_index", align 4
@pl022_dma_probe._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.164, ptr @.str.3, i32 1145, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to work in dma mode, work without dma!\0A\00", [49 x i8] zeroinitializer }, align 32
@pl022_dma_probe._entry_ptr.170 = internal global ptr @pl022_dma_probe._entry.168, section ".printk_index", align 4
@vendor_arm = internal global { %struct.vendor_data, [16 x i8] } { %struct.vendor_data { i32 8, i32 16, i8 0, i8 0, i8 0, i8 1, i8 0 }, [16 x i8] zeroinitializer }, align 32
@vendor_st = internal global { %struct.vendor_data, [16 x i8] } { %struct.vendor_data { i32 32, i32 32, i8 0, i8 1, i8 0, i8 1, i8 0 }, [16 x i8] zeroinitializer }, align 32
@vendor_st_pl023 = internal global { %struct.vendor_data, [16 x i8] } { %struct.vendor_data { i32 32, i32 32, i8 0, i8 1, i8 1, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@vendor_lsi = internal global { %struct.vendor_data, [16 x i8] } { %struct.vendor_data { i32 8, i32 16, i8 0, i8 0, i8 0, i8 1, i8 1 }, [16 x i8] zeroinitializer }, align 32
@switch.table.configure_dma = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 4, i32 8, i32 16, i32 32], [44 x i8] zeroinitializer }, align 32
@switch.table.configure_dma.171 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 4, i32 8, i32 16, i32 32], [44 x i8] zeroinitializer }, align 32
@switch.table.configure_dma.172 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 4], [16 x i8] zeroinitializer }, align 32
@switch.table.configure_dma.173 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 4], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.174 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 255]
@__sancov_gen_cov_switch_values.175 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.176 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.177 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4294967295]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4294967295]
@__sancov_gen_cov_switch_values.179 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.180 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.181 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.182 = private unnamed_addr constant [13 x i8] c"pl022_driver\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2429, i32 27 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2431, i32 11 }
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"pl022_dev_pm_ops\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2339, i32 32 }
@___asan_gen_.191 = private unnamed_addr constant [10 x i8] c"pl022_ids\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2384, i32 29 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2295, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2306, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2311, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2111, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2117, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2124, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2156, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2169, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2175, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2181, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2195, i32 10 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2197, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2204, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2221, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2225, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2229, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2085, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2095, i32 27 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2097, i32 37 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1862, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant [24 x i8] c"pl022_default_chip_info\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1816, i32 39 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1874, i32 29 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1876, i32 29 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1878, i32 29 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1880, i32 29 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1882, i32 29 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1884, i32 29 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1886, i32 29 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1893, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1897, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1920, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1927, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1940, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1941, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1945, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1950, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1955, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1969, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1976, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1751, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1756, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1798, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1803, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1806, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1621, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1627, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1634, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1641, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1653, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1660, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1666, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1678, i32 4 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1685, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1691, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1698, i32 4 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1704, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1714, i32 5 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1720, i32 5 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 537, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1539, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1546, i32 5 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1346, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1351, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 677, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1487, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1488, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1489, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1490, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1491, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1460, i32 4 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1027, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 884, i32 4 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 898, i32 4 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1425, i32 4 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1253, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1275, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1277, i32 4 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1316, i32 4 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1156, i32 31 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1164, i32 31 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1116, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1124, i32 3 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1132, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.635 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1144, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant [11 x i8] c"vendor_arm\00", align 1
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2344, i32 27 }
@___asan_gen_.641 = private unnamed_addr constant [10 x i8] c"vendor_st\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2354, i32 27 }
@___asan_gen_.644 = private unnamed_addr constant [16 x i8] c"vendor_st_pl023\00", align 1
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2364, i32 27 }
@___asan_gen_.647 = private unnamed_addr constant [11 x i8] c"vendor_lsi\00", align 1
@___asan_gen_.648 = private constant [27 x i8] c"../drivers/spi/spi-pl022.c\00", align 1
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2374, i32 27 }
@___asan_gen_.650 = private unnamed_addr constant [27 x i8] c"switch.table.configure_dma\00", align 1
@___asan_gen_.651 = private unnamed_addr constant [31 x i8] c"switch.table.configure_dma.171\00", align 1
@___asan_gen_.652 = private unnamed_addr constant [31 x i8] c"switch.table.configure_dma.172\00", align 1
@___asan_gen_.653 = private unnamed_addr constant [31 x i8] c"switch.table.configure_dma.173\00", align 1
@llvm.compiler.used = appending global [212 x ptr] [ptr @__UNIQUE_ID_author319, ptr @__UNIQUE_ID_description320, ptr @__UNIQUE_ID_file321, ptr @__UNIQUE_ID_license322, ptr @__exitcall_pl022_exit, ptr @__initcall__kmod_spi_pl022__318_2443_pl022_init4, ptr @calculate_effective_freq._entry, ptr @calculate_effective_freq._entry.74, ptr @calculate_effective_freq._entry_ptr, ptr @calculate_effective_freq._entry_ptr.76, ptr @do_polling_transfer._entry, ptr @do_polling_transfer._entry_ptr, ptr @pl022_dma_probe._entry, ptr @pl022_dma_probe._entry.168, ptr @pl022_dma_probe._entry_ptr, ptr @pl022_dma_probe._entry_ptr.170, ptr @pl022_exit, ptr @pl022_interrupt_handler._entry, ptr @pl022_interrupt_handler._entry.153, ptr @pl022_interrupt_handler._entry.156, ptr @pl022_interrupt_handler._entry.159, ptr @pl022_interrupt_handler._entry_ptr, ptr @pl022_interrupt_handler._entry_ptr.155, ptr @pl022_interrupt_handler._entry_ptr.158, ptr @pl022_interrupt_handler._entry_ptr.161, ptr @pl022_platform_data_dt_get._entry, ptr @pl022_platform_data_dt_get._entry_ptr, ptr @pl022_probe._entry, ptr @pl022_probe._entry.13, ptr @pl022_probe._entry.16, ptr @pl022_probe._entry.20, ptr @pl022_probe._entry.23, ptr @pl022_probe._entry.26, ptr @pl022_probe._entry.30, ptr @pl022_probe._entry.34, ptr @pl022_probe._entry.38, ptr @pl022_probe._entry_ptr, ptr @pl022_probe._entry_ptr.15, ptr @pl022_probe._entry_ptr.18, ptr @pl022_probe._entry_ptr.22, ptr @pl022_probe._entry_ptr.25, ptr @pl022_probe._entry_ptr.28, ptr @pl022_probe._entry_ptr.32, ptr @pl022_probe._entry_ptr.36, ptr @pl022_probe._entry_ptr.40, ptr @pl022_resume._entry, ptr @pl022_resume._entry_ptr, ptr @pl022_setup._entry, ptr @pl022_setup._entry.57, ptr @pl022_setup._entry.60, ptr @pl022_setup._entry.63, ptr @pl022_setup._entry_ptr, ptr @pl022_setup._entry_ptr.59, ptr @pl022_setup._entry_ptr.62, ptr @pl022_setup._entry_ptr.65, ptr @print_current_status._entry, ptr @print_current_status._entry.131, ptr @print_current_status._entry.134, ptr @print_current_status._entry.137, ptr @print_current_status._entry.140, ptr @print_current_status._entry_ptr, ptr @print_current_status._entry_ptr.133, ptr @print_current_status._entry_ptr.136, ptr @print_current_status._entry_ptr.139, ptr @print_current_status._entry_ptr.142, ptr @set_up_next_transfer._entry, ptr @set_up_next_transfer._entry.124, ptr @set_up_next_transfer._entry_ptr, ptr @set_up_next_transfer._entry_ptr.126, ptr @verify_controller_parameters._entry, ptr @verify_controller_parameters._entry.101, ptr @verify_controller_parameters._entry.103, ptr @verify_controller_parameters._entry.105, ptr @verify_controller_parameters._entry.108, ptr @verify_controller_parameters._entry.111, ptr @verify_controller_parameters._entry.114, ptr @verify_controller_parameters._entry.82, ptr @verify_controller_parameters._entry.85, ptr @verify_controller_parameters._entry.88, ptr @verify_controller_parameters._entry.91, ptr @verify_controller_parameters._entry.94, ptr @verify_controller_parameters._entry.96, ptr @verify_controller_parameters._entry.98, ptr @verify_controller_parameters._entry_ptr, ptr @verify_controller_parameters._entry_ptr.100, ptr @verify_controller_parameters._entry_ptr.102, ptr @verify_controller_parameters._entry_ptr.104, ptr @verify_controller_parameters._entry_ptr.107, ptr @verify_controller_parameters._entry_ptr.110, ptr @verify_controller_parameters._entry_ptr.113, ptr @verify_controller_parameters._entry_ptr.116, ptr @verify_controller_parameters._entry_ptr.84, ptr @verify_controller_parameters._entry_ptr.87, ptr @verify_controller_parameters._entry_ptr.90, ptr @verify_controller_parameters._entry_ptr.93, ptr @verify_controller_parameters._entry_ptr.95, ptr @verify_controller_parameters._entry_ptr.97, ptr @pl022_driver, ptr @.str, ptr @pl022_dev_pm_ops, ptr @pl022_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @pl022_default_chip_info, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.99, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.125, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @.str.135, ptr @.str.138, ptr @.str.141, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.169, ptr @vendor_arm, ptr @vendor_st, ptr @vendor_st_pl023, ptr @vendor_lsi, ptr @switch.table.configure_dma, ptr @switch.table.configure_dma.171, ptr @switch.table.configure_dma.172, ptr @switch.table.configure_dma.173], section "llvm.metadata"
@0 = internal global [160 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl022_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl022_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl022_ids to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl022_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl022_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl022_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl022_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl022_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl022_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl022_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl022_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl022_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl022_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl022_platform_data_dt_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl022_default_chip_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl022_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl022_setup._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl022_setup._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl022_setup._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calculate_effective_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calculate_effective_freq._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_controller_parameters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_controller_parameters._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_controller_parameters._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_controller_parameters._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_controller_parameters._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_controller_parameters._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_controller_parameters._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_controller_parameters._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_controller_parameters._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_controller_parameters._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_controller_parameters._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_controller_parameters._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_controller_parameters._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_controller_parameters._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_polling_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_up_next_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_up_next_transfer._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_current_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_current_status._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_current_status._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_current_status._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_current_status._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl022_interrupt_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl022_interrupt_handler._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl022_interrupt_handler._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl022_interrupt_handler._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl022_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl022_dma_probe._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vendor_arm to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vendor_st to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vendor_st_pl023 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vendor_lsi to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.configure_dma to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.configure_dma.171 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.configure_dma.172 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.configure_dma.173 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pl022_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amba_driver_register(ptr noundef nonnull @pl022_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pl022_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amba_driver_unregister(ptr noundef nonnull @pl022_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl022_probe(ptr noundef %adev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %periphid = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 4
  %2 = ptrtoint ptr %periphid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %periphid, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %adev, ptr noundef nonnull @.str.10, i32 noundef %3) #12
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then:                                          ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.41) #12
  br label %do.end9

if.end.i:                                         ; preds = %if.then
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %adev, i32 noundef 24, i32 noundef 3520) #9
  %tobool1.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool1.not.i, label %if.end.i.do.end9_crit_edge, label %if.end3.i

if.end.i.do.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %call.i.i, align 4
  %enable_dma.i = getelementptr inbounds %struct.pl022_ssp_controller, ptr %call.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %enable_dma.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %enable_dma.i, align 2
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %enable_dma.i, align 2
  %autosuspend_delay.i = getelementptr inbounds %struct.pl022_ssp_controller, ptr %call.i.i, i32 0, i32 5
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.43, ptr noundef %autosuspend_delay.i, i32 noundef 1, i32 noundef 0) #9
  %call.i16.i = tail call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.44, ptr noundef null) #9
  %tobool.i.i = icmp ne ptr %call.i16.i, null
  %rt.i = getelementptr inbounds %struct.pl022_ssp_controller, ptr %call.i.i, i32 0, i32 6
  %frombool.i = zext i1 %tobool.i.i to i8
  %8 = ptrtoint ptr %rt.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool.i, ptr %rt.i, align 4
  br label %if.end10

do.end9:                                          ; preds = %if.end.i.do.end9_crit_edge, %do.end.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.14) #12
  br label %cleanup193

if.end10:                                         ; preds = %if.end3.i, %entry.if.end10_crit_edge
  %platform_info.0 = phi ptr [ %1, %entry.if.end10_crit_edge ], [ %call.i.i, %if.end3.i ]
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %adev, i32 noundef 152, i1 noundef zeroext false) #9
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end15, label %if.end17

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.17) #12
  br label %cleanup193

if.end17:                                         ; preds = %if.end10
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %master19 = getelementptr inbounds %struct.pl022, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %master19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %master19, align 4
  %master_info = getelementptr inbounds %struct.pl022, ptr %10, i32 0, i32 6
  %12 = ptrtoint ptr %master_info to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %platform_info.0, ptr %master_info, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %adev, ptr %10, align 4
  %data = getelementptr inbounds %struct.amba_id, ptr %id, i32 0, i32 2
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %vendor = getelementptr inbounds %struct.pl022, ptr %10, i32 0, i32 1
  %16 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %vendor, align 4
  %17 = ptrtoint ptr %platform_info.0 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %platform_info.0, align 4
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %bus_num, align 8
  %cleanup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 23
  %20 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @pl022_cleanup, ptr %cleanup, align 8
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %21 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @pl022_setup, ptr %setup, align 4
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %22 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %auto_runtime_pm, align 4
  %transfer_one_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 45
  %23 = ptrtoint ptr %transfer_one_message to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @pl022_transfer_one_message, ptr %transfer_one_message, align 4
  %unprepare_transfer_hardware = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 46
  %24 = ptrtoint ptr %unprepare_transfer_hardware to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @pl022_unprepare_transfer_hardware, ptr %unprepare_transfer_hardware, align 8
  %rt = getelementptr inbounds %struct.pl022_ssp_controller, ptr %platform_info.0, i32 0, i32 6
  %25 = ptrtoint ptr %rt to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rt, align 4, !range !338
  %rt22 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 35
  %27 = ptrtoint ptr %rt22 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %rt22, align 1
  %of_node = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 27
  %28 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_node, align 8
  %of_node24 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %30 = ptrtoint ptr %of_node24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %of_node24, align 8
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 56
  %31 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %use_gpio_descriptors, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %32 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 39, ptr %mode_bits, align 8
  %33 = load ptr, ptr %vendor, align 4
  %extended_cr = getelementptr inbounds %struct.vendor_data, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %extended_cr to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %extended_cr, align 1, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool26.not = icmp eq i8 %35, 0
  %spec.store.select = select i1 %tobool26.not, i32 39, i32 47
  %36 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.store.select, ptr %mode_bits, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl022_probe.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl022_probe, %do.end42)) #9
          to label %if.then37 [label %do.end42], !srcloc !339

if.then37:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %bus_num to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %bus_num, align 8
  %conv = sext i16 %38 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl022_probe.__UNIQUE_ID_ddebug313, ptr noundef %adev, ptr noundef nonnull @.str.19, i32 noundef %conv) #9
  br label %do.end42

do.end42:                                         ; preds = %if.then37, %if.end17
  %call43 = tail call i32 @amba_request_regions(ptr noundef %adev, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %do.end42.spi_controller_put.exit_crit_edge

do.end42.spi_controller_put.exit_crit_edge:       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_controller_put.exit

if.end46:                                         ; preds = %do.end42
  %res = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 1
  %39 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %res, align 8
  %phybase = getelementptr inbounds %struct.pl022, ptr %10, i32 0, i32 2
  %41 = ptrtoint ptr %phybase to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %phybase, align 4
  %42 = load i32, ptr %res, align 8
  %end.i = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %42
  %add.i = add i32 %sub.i, %44
  %call51 = tail call ptr @devm_ioremap(ptr noundef %adev, i32 noundef %42, i32 noundef %add.i) #9
  %virtbase = getelementptr inbounds %struct.pl022, ptr %10, i32 0, i32 3
  %45 = ptrtoint ptr %virtbase to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call51, ptr %virtbase, align 4
  %cmp53 = icmp eq ptr %call51, null
  br i1 %cmp53, label %if.end46.err_no_ioremap_crit_edge, label %do.end59

if.end46.err_no_ioremap_crit_edge:                ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_no_ioremap

do.end59:                                         ; preds = %if.end46
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %adev, ptr noundef nonnull @.str.21, ptr noundef %res, ptr noundef nonnull %call51) #12
  %call65 = tail call ptr @devm_clk_get(ptr noundef %adev, ptr noundef null) #9
  %clk = getelementptr inbounds %struct.pl022, ptr %10, i32 0, i32 4
  %46 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call65, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then68, label %if.end75

if.then68:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %call65 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.24) #12
  br label %err_no_ioremap

if.end75:                                         ; preds = %do.end59
  %call77 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call65)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end84, label %do.end82

do.end82:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.27) #12
  br label %err_no_ioremap

if.end84:                                         ; preds = %if.end75
  %pump_transfers = getelementptr inbounds %struct.pl022, ptr %10, i32 0, i32 7
  %48 = ptrtoint ptr %10 to i32
  tail call void @tasklet_init(ptr noundef %pump_transfers, ptr noundef nonnull @pump_transfers, i32 noundef %48) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !340
  tail call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %virtbase, align 4
  %add.ptr = getelementptr i8, ptr %50, i32 4
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !342
  %52 = and i16 %51, -513
  %53 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %virtbase, align 4
  %add.ptr95 = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr95, i16 %52) #9, !srcloc !343
  tail call fastcc void @load_ssp_default_config(ptr noundef %10)
  %irq = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 7
  %55 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq, align 8
  %call.i295 = tail call i32 @devm_request_threaded_irq(ptr noundef %adev, i32 noundef %56, ptr noundef nonnull @pl022_interrupt_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.29, ptr noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i295)
  %cmp97 = icmp slt i32 %call.i295, 0
  br i1 %cmp97, label %do.end102, label %if.end104

do.end102:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.31, i32 noundef %call.i295) #12
  br label %err_no_irq

if.end104:                                        ; preds = %if.end84
  %call105 = tail call fastcc i32 @pl022_dma_autoprobe(ptr noundef %10)
  %57 = zext i32 %call105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call105, label %if.else [
    i32 -517, label %do.body109
    i32 0, label %if.then130
  ]

do.body109:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl022_probe.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl022_probe, %err_no_irq)) #9
          to label %if.then123 [label %err_no_irq], !srcloc !339

if.then123:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl022_probe.__UNIQUE_ID_ddebug314, ptr noundef %adev, ptr noundef nonnull @.str.33) #9
  br label %err_no_irq

if.then130:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  %enable_dma = getelementptr inbounds %struct.pl022_ssp_controller, ptr %platform_info.0, i32 0, i32 1
  %58 = ptrtoint ptr %enable_dma to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load = load i8, ptr %enable_dma, align 2
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %enable_dma, align 2
  br label %if.end145

if.else:                                          ; preds = %if.end104
  %enable_dma131 = getelementptr inbounds %struct.pl022_ssp_controller, ptr %platform_info.0, i32 0, i32 1
  %59 = ptrtoint ptr %enable_dma131 to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load132 = load i8, ptr %enable_dma131, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load132)
  %tobool133.not = icmp sgt i8 %bf.load132, -1
  br i1 %tobool133.not, label %if.else.if.end145_crit_edge, label %if.then134

if.else.if.end145_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145

if.then134:                                       ; preds = %if.else
  %call135 = tail call fastcc i32 @pl022_dma_probe(ptr noundef %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %cmp136.not = icmp eq i32 %call135, 0
  br i1 %cmp136.not, label %if.then134.if.end145_crit_edge, label %if.then138

if.then134.if.end145_crit_edge:                   ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145

if.then138:                                       ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %enable_dma131 to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load140 = load i8, ptr %enable_dma131, align 2
  %bf.clear141 = and i8 %bf.load140, 127
  store i8 %bf.clear141, ptr %enable_dma131, align 2
  br label %if.end145

if.end145:                                        ; preds = %if.then138, %if.then134.if.end145_crit_edge, %if.else.if.end145_crit_edge, %if.then130
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %61 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %10, ptr %driver_data.i, align 4
  %call148 = tail call i32 @devm_spi_register_controller(ptr noundef %adev, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %cmp149.not = icmp eq i32 %call148, 0
  br i1 %cmp149.not, label %do.body157, label %do.end154

do.end154:                                        ; preds = %if.end145
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.35) #12
  %enable_dma186 = getelementptr inbounds %struct.pl022_ssp_controller, ptr %platform_info.0, i32 0, i32 1
  %62 = ptrtoint ptr %enable_dma186 to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load187 = load i8, ptr %enable_dma186, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load187)
  %tobool189.not = icmp sgt i8 %bf.load187, -1
  br i1 %tobool189.not, label %do.end154.err_no_irq_crit_edge, label %if.then190

do.end154.err_no_irq_crit_edge:                   ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_no_irq

do.body157:                                       ; preds = %if.end145
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl022_probe.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl022_probe, %do.end174)) #9
          to label %if.then171 [label %do.end174], !srcloc !339

if.then171:                                       ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl022_probe.__UNIQUE_ID_ddebug315, ptr noundef %adev, ptr noundef nonnull @.str.37) #9
  br label %do.end174

do.end174:                                        ; preds = %if.then171, %do.body157
  %autosuspend_delay = getelementptr inbounds %struct.pl022_ssp_controller, ptr %platform_info.0, i32 0, i32 5
  %63 = ptrtoint ptr %autosuspend_delay to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %autosuspend_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp175 = icmp sgt i32 %64, 0
  br i1 %cmp175, label %do.end180, label %do.end174.if.end184_crit_edge

do.end174.if.end184_crit_edge:                    ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

do.end180:                                        ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %adev, ptr noundef nonnull @.str.39, i32 noundef %64) #12
  %65 = ptrtoint ptr %autosuspend_delay to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %autosuspend_delay, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %adev, i32 noundef %66) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %adev, i1 noundef zeroext true) #9
  br label %if.end184

if.end184:                                        ; preds = %do.end180, %do.end174.if.end184_crit_edge
  %call.i296 = tail call i32 @__pm_runtime_idle(ptr noundef %adev, i32 noundef 5) #9
  br label %cleanup193

if.then190:                                       ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pl022_dma_remove(ptr noundef %10)
  br label %err_no_irq

err_no_irq:                                       ; preds = %if.then190, %do.end154.err_no_irq_crit_edge, %if.then123, %do.body109, %do.end102
  %status.0 = phi i32 [ %call.i295, %do.end102 ], [ -517, %if.then123 ], [ %call148, %if.then190 ], [ %call148, %do.end154.err_no_irq_crit_edge ], [ -517, %do.body109 ]
  %67 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %68) #9
  tail call void @clk_unprepare(ptr noundef %68) #9
  br label %err_no_ioremap

err_no_ioremap:                                   ; preds = %err_no_irq, %do.end82, %if.then68, %if.end46.err_no_ioremap_crit_edge
  %status.1 = phi i32 [ %47, %if.then68 ], [ %call77, %do.end82 ], [ %status.0, %err_no_irq ], [ -12, %if.end46.err_no_ioremap_crit_edge ]
  tail call void @amba_release_regions(ptr noundef %adev) #9
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %err_no_ioremap, %do.end42.spi_controller_put.exit_crit_edge
  %status.2 = phi i32 [ %call43, %do.end42.spi_controller_put.exit_crit_edge ], [ %status.1, %err_no_ioremap ]
  tail call void @put_device(ptr noundef nonnull %call.i) #9
  br label %cleanup193

cleanup193:                                       ; preds = %spi_controller_put.exit, %if.end184, %do.end15, %do.end9
  %retval.0 = phi i32 [ -12, %do.end15 ], [ %status.2, %spi_controller_put.exit ], [ 0, %if.end184 ], [ -19, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl022_remove(ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !344
  tail call fastcc void @load_ssp_default_config(ptr noundef nonnull %1)
  %master_info = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %master_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %master_info, align 4
  %enable_dma = getelementptr inbounds %struct.pl022_ssp_controller, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %enable_dma to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %enable_dma, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool2.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pl022_dma_remove(ptr noundef nonnull %1)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %clk = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  tail call void @amba_release_regions(ptr noundef %adev) #9
  %pump_transfers = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 7
  %count.i.i = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 7, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #9, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !345
  tail call void @tasklet_unlock_wait(ptr noundef %pump_transfers) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !346
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl022_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %master = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %call1 = tail call i32 @spi_controller_suspend(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %call6 = tail call i32 @spi_controller_resume(ptr noundef %5) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl022_suspend.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl022_suspend, %cleanup)) #9
          to label %if.then14 [label %cleanup], !srcloc !339

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl022_suspend.__UNIQUE_ID_ddebug316, ptr noundef %dev, ptr noundef nonnull @.str.4) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end7, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.then14 ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl022_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %master = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %call2 = tail call i32 @spi_controller_resume(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body5, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl022_resume.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl022_resume, %if.end15)) #9
          to label %if.then11 [label %if.end15], !srcloc !339

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl022_resume.__UNIQUE_ID_ddebug317, ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %do.body5, %if.end.if.end15_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl022_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  %call1 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %dev) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl022_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #9
  %clk = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_idle_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %clk) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl022_cleanup(ptr nocapture noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_state.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %0 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_state.i, align 8
  store ptr null, ptr %controller_state.i, align 8
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl022_setup(ptr noundef %spi) #2 align 64 {
entry:
  %chip_info_dt = alloca %struct.pl022_config_chip, align 4
  %clk_freq = alloca %struct.ssp_clock_params, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %chip_info_dt) #9
  %0 = call ptr @memset(ptr %chip_info_dt, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %clk_freq) #9
  %1 = ptrtoint ptr %clk_freq to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %clk_freq, align 2
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %6 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bits_per_word, align 1
  %conv = zext i8 %7 to i32
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %10 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %controller_state.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %12 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %controller_state.i, align 8
  %cmp = icmp eq ptr %13, null
  br i1 %cmp, label %if.then3, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then3:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 24) #13
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.then3.cleanup_crit_edge, label %do.body

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl022_setup.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl022_setup, %if.end17)) #9
          to label %if.then14 [label %if.end17], !srcloc !339

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl022_setup.__UNIQUE_ID_ddebug305, ptr noundef %spi, ptr noundef nonnull @.str.46) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %do.body, %if.end.if.end17_crit_edge
  %chip.0 = phi ptr [ %call7.i.i, %if.then14 ], [ %13, %if.end.if.end17_crit_edge ], [ %call7.i.i, %do.body ]
  %controller_data = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 10
  %15 = ptrtoint ptr %controller_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %controller_data, align 4
  %cmp18 = icmp eq ptr %16, null
  br i1 %cmp18, label %if.then20, label %do.body51

if.then20:                                        ; preds = %if.end17
  %tobool21.not = icmp eq ptr %9, null
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %17 = call ptr @memcpy(ptr %chip_info_dt, ptr @pl022_default_chip_info, i32 40)
  %hierarchy = getelementptr inbounds %struct.pl022_config_chip, ptr %chip_info_dt, i32 0, i32 1
  %18 = ptrtoint ptr %hierarchy to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %hierarchy, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.47, ptr noundef nonnull %chip_info_dt, i32 noundef 1, i32 noundef 0) #9
  %com_mode = getelementptr inbounds %struct.pl022_config_chip, ptr %chip_info_dt, i32 0, i32 4
  %call.i.i646 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.48, ptr noundef %com_mode, i32 noundef 1, i32 noundef 0) #9
  %rx_lev_trig = getelementptr inbounds %struct.pl022_config_chip, ptr %chip_info_dt, i32 0, i32 5
  %call.i.i647 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.49, ptr noundef %rx_lev_trig, i32 noundef 1, i32 noundef 0) #9
  %tx_lev_trig = getelementptr inbounds %struct.pl022_config_chip, ptr %chip_info_dt, i32 0, i32 6
  %call.i.i648 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.50, ptr noundef %tx_lev_trig, i32 noundef 1, i32 noundef 0) #9
  %ctrl_len = getelementptr inbounds %struct.pl022_config_chip, ptr %chip_info_dt, i32 0, i32 7
  %call.i.i649 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.51, ptr noundef %ctrl_len, i32 noundef 1, i32 noundef 0) #9
  %wait_state = getelementptr inbounds %struct.pl022_config_chip, ptr %chip_info_dt, i32 0, i32 8
  %call.i.i650 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.52, ptr noundef %wait_state, i32 noundef 1, i32 noundef 0) #9
  %duplex = getelementptr inbounds %struct.pl022_config_chip, ptr %chip_info_dt, i32 0, i32 9
  %call.i.i651 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.53, ptr noundef %duplex, i32 noundef 1, i32 noundef 0) #9
  br label %if.end70

if.else:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl022_setup.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl022_setup, %if.end70)) #9
          to label %if.then44 [label %if.end70], !srcloc !339

if.then44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl022_setup.__UNIQUE_ID_ddebug306, ptr noundef %spi, ptr noundef nonnull @.str.54) #9
  br label %if.end70

do.body51:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl022_setup.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl022_setup, %if.end70)) #9
          to label %if.then65 [label %if.end70], !srcloc !339

if.then65:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl022_setup.__UNIQUE_ID_ddebug307, ptr noundef %spi, ptr noundef nonnull @.str.55) #9
  br label %if.end70

if.end70:                                         ; preds = %if.then65, %do.body51, %if.then44, %if.else, %if.then22
  %chip_info.0 = phi ptr [ %chip_info_dt, %if.then22 ], [ @pl022_default_chip_info, %if.then44 ], [ %16, %if.then65 ], [ @pl022_default_chip_info, %if.else ], [ %16, %do.body51 ]
  %clk_freq71 = getelementptr inbounds %struct.pl022_config_chip, ptr %chip_info.0, i32 0, i32 3
  %19 = ptrtoint ptr %clk_freq71 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %clk_freq71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp73 = icmp eq i8 %20, 0
  br i1 %cmp73, label %land.lhs.true, label %if.end70.if.else86_crit_edge

if.end70.if.else86_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else86

land.lhs.true:                                    ; preds = %if.end70
  %scr = getelementptr inbounds %struct.pl022_config_chip, ptr %chip_info.0, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %scr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %scr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp77 = icmp eq i8 %22, 0
  br i1 %cmp77, label %if.then79, label %land.lhs.true.if.else86_crit_edge

land.lhs.true.if.else86_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else86

if.then79:                                        ; preds = %land.lhs.true
  %23 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_speed_hz, align 8
  %call81 = call fastcc i32 @calculate_effective_freq(ptr noundef %5, i32 noundef %24, ptr noundef nonnull %clk_freq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.then79.err_config_params_crit_edge, label %if.end98thread-pre-split

if.then79.err_config_params_crit_edge:            ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_config_params

if.else86:                                        ; preds = %land.lhs.true.if.else86_crit_edge, %if.end70.if.else86_crit_edge
  %25 = ptrtoint ptr %clk_freq71 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %clk_freq71, align 1
  %27 = ptrtoint ptr %clk_freq to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %clk_freq, align 2
  %28 = lshr i16 %26, 8
  %29 = trunc i16 %28 to i8
  %30 = and i8 %29, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp90.not = icmp eq i8 %30, 0
  br i1 %cmp90.not, label %if.else86.if.end98_crit_edge, label %if.then92

if.else86.if.end98_crit_edge:                     ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then92:                                        ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i8 %29, -1
  %31 = ptrtoint ptr %clk_freq to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %sub, ptr %clk_freq, align 2
  br label %if.end98

if.end98thread-pre-split:                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load1_noabort(i32 %32)
  %.pr = load i8, ptr %clk_freq, align 2
  br label %if.end98

if.end98:                                         ; preds = %if.end98thread-pre-split, %if.then92, %if.else86.if.end98_crit_edge
  %33 = phi i8 [ %.pr, %if.end98thread-pre-split ], [ %29, %if.else86.if.end98_crit_edge ], [ %sub, %if.then92 ]
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.174)
  switch i8 %33, label %if.end112 [
    i8 -1, label %if.end98.if.then107_crit_edge
    i8 1, label %if.end98.if.then107_crit_edge667
    i8 0, label %if.end98.if.then107_crit_edge668
  ]

if.end98.if.then107_crit_edge668:                 ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then107

if.end98.if.then107_crit_edge667:                 ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then107

if.end98.if.then107_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then107

if.then107:                                       ; preds = %if.end98.if.then107_crit_edge, %if.end98.if.then107_crit_edge667, %if.end98.if.then107_crit_edge668
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.56) #12
  br label %err_config_params

if.end112:                                        ; preds = %if.end98
  %35 = ptrtoint ptr %chip_info.0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %chip_info.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp2.i = icmp ugt i32 %36, 3
  br i1 %cmp2.i, label %if.end112.do.end118_crit_edge, label %if.end.i

if.end112.do.end118_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end118

if.end.i:                                         ; preds = %if.end112
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp4.i = icmp eq i32 %36, 3
  br i1 %cmp4.i, label %land.lhs.true.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %vendor.i = getelementptr inbounds %struct.pl022, ptr %5, i32 0, i32 1
  %37 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vendor.i, align 4
  %unidir.i = getelementptr inbounds %struct.vendor_data, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %unidir.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %unidir.i, align 4, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.end118_crit_edge, label %land.lhs.true.i.if.end10.i_crit_edge

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

land.lhs.true.i.do.end118_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end118

if.end10.i:                                       ; preds = %land.lhs.true.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %hierarchy.i = getelementptr inbounds %struct.pl022_config_chip, ptr %chip_info.0, i32 0, i32 1
  %41 = ptrtoint ptr %hierarchy.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hierarchy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %switch.i = icmp ult i32 %42, 2
  br i1 %switch.i, label %if.end20.i, label %if.end10.i.do.end118_crit_edge

if.end10.i.do.end118_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end118

if.end20.i:                                       ; preds = %if.end10.i
  %com_mode.i = getelementptr inbounds %struct.pl022_config_chip, ptr %chip_info.0, i32 0, i32 4
  %43 = ptrtoint ptr %com_mode.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %com_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %44)
  %switch171.i = icmp ult i32 %44, 3
  br i1 %switch171.i, label %if.end33.i, label %if.end20.i.do.end118_crit_edge

if.end20.i.do.end118_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end118

if.end33.i:                                       ; preds = %if.end20.i
  %rx_lev_trig.i = getelementptr inbounds %struct.pl022_config_chip, ptr %chip_info.0, i32 0, i32 5
  %45 = ptrtoint ptr %rx_lev_trig.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_lev_trig.i, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %46, label %if.end33.i.do.end118_crit_edge [
    i32 0, label %if.end33.i.sw.epilog.i_crit_edge
    i32 1, label %if.end33.i.sw.epilog.i_crit_edge669
    i32 2, label %if.end33.i.sw.epilog.i_crit_edge670
    i32 3, label %sw.bb34.i
    i32 4, label %sw.bb43.i
  ]

if.end33.i.sw.epilog.i_crit_edge670:              ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end33.i.sw.epilog.i_crit_edge669:              ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end33.i.sw.epilog.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end33.i.do.end118_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end118

sw.bb34.i:                                        ; preds = %if.end33.i
  %vendor35.i = getelementptr inbounds %struct.pl022, ptr %5, i32 0, i32 1
  %48 = ptrtoint ptr %vendor35.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vendor35.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %51)
  %cmp36.i = icmp slt i32 %51, 16
  br i1 %cmp36.i, label %sw.bb34.i.do.end118_crit_edge, label %sw.bb34.i.sw.epilog.i_crit_edge

sw.bb34.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb34.i.do.end118_crit_edge:                    ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end118

sw.bb43.i:                                        ; preds = %if.end33.i
  %vendor44.i = getelementptr inbounds %struct.pl022, ptr %5, i32 0, i32 1
  %52 = ptrtoint ptr %vendor44.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vendor44.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %55)
  %cmp46.i = icmp slt i32 %55, 32
  br i1 %cmp46.i, label %sw.bb43.i.do.end118_crit_edge, label %sw.bb43.i.sw.epilog.i_crit_edge

sw.bb43.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb43.i.do.end118_crit_edge:                    ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end118

sw.epilog.i:                                      ; preds = %sw.bb43.i.sw.epilog.i_crit_edge, %sw.bb34.i.sw.epilog.i_crit_edge, %if.end33.i.sw.epilog.i_crit_edge, %if.end33.i.sw.epilog.i_crit_edge669, %if.end33.i.sw.epilog.i_crit_edge670
  %tx_lev_trig.i = getelementptr inbounds %struct.pl022_config_chip, ptr %chip_info.0, i32 0, i32 6
  %56 = ptrtoint ptr %tx_lev_trig.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_lev_trig.i, align 4
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %57, label %sw.epilog.i.do.end118_crit_edge [
    i32 0, label %sw.epilog.i.sw.epilog83.i_crit_edge
    i32 1, label %sw.epilog.i.sw.epilog83.i_crit_edge671
    i32 2, label %sw.epilog.i.sw.epilog83.i_crit_edge672
    i32 3, label %sw.bb58.i
    i32 4, label %sw.bb68.i
  ]

sw.epilog.i.sw.epilog83.i_crit_edge672:           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog83.i

sw.epilog.i.sw.epilog83.i_crit_edge671:           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog83.i

sw.epilog.i.sw.epilog83.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog83.i

sw.epilog.i.do.end118_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end118

sw.bb58.i:                                        ; preds = %sw.epilog.i
  %vendor59.i = getelementptr inbounds %struct.pl022, ptr %5, i32 0, i32 1
  %59 = ptrtoint ptr %vendor59.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vendor59.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %62)
  %cmp61.i = icmp slt i32 %62, 16
  br i1 %cmp61.i, label %sw.bb58.i.do.end118_crit_edge, label %sw.bb58.i.sw.epilog83.i_crit_edge

sw.bb58.i.sw.epilog83.i_crit_edge:                ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog83.i

sw.bb58.i.do.end118_crit_edge:                    ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end118

sw.bb68.i:                                        ; preds = %sw.epilog.i
  %vendor69.i = getelementptr inbounds %struct.pl022, ptr %5, i32 0, i32 1
  %63 = ptrtoint ptr %vendor69.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vendor69.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %66)
  %cmp71.i = icmp slt i32 %66, 32
  br i1 %cmp71.i, label %sw.bb68.i.do.end118_crit_edge, label %sw.bb68.i.sw.epilog83.i_crit_edge

sw.bb68.i.sw.epilog83.i_crit_edge:                ; preds = %sw.bb68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog83.i

sw.bb68.i.do.end118_crit_edge:                    ; preds = %sw.bb68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end118

sw.epilog83.i:                                    ; preds = %sw.bb68.i.sw.epilog83.i_crit_edge, %sw.bb58.i.sw.epilog83.i_crit_edge, %sw.epilog.i.sw.epilog83.i_crit_edge, %sw.epilog.i.sw.epilog83.i_crit_edge671, %sw.epilog.i.sw.epilog83.i_crit_edge672
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp85.i = icmp eq i32 %36, 2
  br i1 %cmp85.i, label %if.then86.i, label %sw.epilog83.i.if.end120_crit_edge

sw.epilog83.i.if.end120_crit_edge:                ; preds = %sw.epilog83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.then86.i:                                      ; preds = %sw.epilog83.i
  %ctrl_len.i = getelementptr inbounds %struct.pl022_config_chip, ptr %chip_info.0, i32 0, i32 7
  %67 = ptrtoint ptr %ctrl_len.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ctrl_len.i, align 4
  %69 = add i32 %68, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -29, i32 %69)
  %70 = icmp ult i32 %69, -29
  br i1 %70, label %if.then86.i.do.end118_crit_edge, label %if.end96.i

if.then86.i.do.end118_crit_edge:                  ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end118

if.end96.i:                                       ; preds = %if.then86.i
  %wait_state.i = getelementptr inbounds %struct.pl022_config_chip, ptr %chip_info.0, i32 0, i32 8
  %71 = ptrtoint ptr %wait_state.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %wait_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %switch172.i = icmp ult i32 %72, 2
  br i1 %switch172.i, label %if.end106.i, label %if.end96.i.do.end118_crit_edge

if.end96.i.do.end118_crit_edge:                   ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end118

if.end106.i:                                      ; preds = %if.end96.i
  %vendor107.i = getelementptr inbounds %struct.pl022, ptr %5, i32 0, i32 1
  %73 = ptrtoint ptr %vendor107.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %vendor107.i, align 4
  %extended_cr.i = getelementptr inbounds %struct.vendor_data, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %extended_cr.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %extended_cr.i, align 1, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool108.not.i = icmp eq i8 %76, 0
  %duplex120.i = getelementptr inbounds %struct.pl022_config_chip, ptr %chip_info.0, i32 0, i32 9
  %77 = ptrtoint ptr %duplex120.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %duplex120.i, align 4
  br i1 %tobool108.not.i, label %if.else.i, label %if.then109.i

if.then109.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %78)
  %switch173.i = icmp ult i32 %78, 2
  br i1 %switch173.i, label %if.then109.i.if.end120_crit_edge, label %if.then109.i.do.end118_crit_edge

if.then109.i.do.end118_crit_edge:                 ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end118

if.then109.i.if.end120_crit_edge:                 ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.else.i:                                        ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp121.not.i = icmp eq i32 %78, 0
  br i1 %cmp121.not.i, label %if.else.i.if.end120_crit_edge, label %if.else.i.do.end118_crit_edge

if.else.i.do.end118_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end118

if.else.i.if.end120_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

do.end118:                                        ; preds = %if.else.i.do.end118_crit_edge, %if.then109.i.do.end118_crit_edge, %if.end96.i.do.end118_crit_edge, %if.then86.i.do.end118_crit_edge, %sw.bb68.i.do.end118_crit_edge, %sw.bb58.i.do.end118_crit_edge, %sw.epilog.i.do.end118_crit_edge, %sw.bb43.i.do.end118_crit_edge, %sw.bb34.i.do.end118_crit_edge, %if.end33.i.do.end118_crit_edge, %if.end20.i.do.end118_crit_edge, %if.end10.i.do.end118_crit_edge, %land.lhs.true.i.do.end118_crit_edge, %if.end112.do.end118_crit_edge
  %.str.115.sink.i = phi ptr [ @.str.80, %if.end112.do.end118_crit_edge ], [ @.str.83, %land.lhs.true.i.do.end118_crit_edge ], [ @.str.86, %if.end10.i.do.end118_crit_edge ], [ @.str.89, %if.end20.i.do.end118_crit_edge ], [ @.str.92, %sw.bb34.i.do.end118_crit_edge ], [ @.str.92, %sw.bb43.i.do.end118_crit_edge ], [ @.str.92, %if.end33.i.do.end118_crit_edge ], [ @.str.99, %sw.bb58.i.do.end118_crit_edge ], [ @.str.99, %sw.bb68.i.do.end118_crit_edge ], [ @.str.99, %sw.epilog.i.do.end118_crit_edge ], [ @.str.106, %if.then86.i.do.end118_crit_edge ], [ @.str.109, %if.end96.i.do.end118_crit_edge ], [ @.str.112, %if.then109.i.do.end118_crit_edge ], [ @.str.115, %if.else.i.do.end118_crit_edge ]
  %79 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull %.str.115.sink.i) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.58) #12
  br label %err_config_params

if.end120:                                        ; preds = %if.else.i.if.end120_crit_edge, %if.then109.i.if.end120_crit_edge, %sw.epilog83.i.if.end120_crit_edge
  %81 = ptrtoint ptr %rx_lev_trig.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rx_lev_trig.i, align 4
  %rx_lev_trig122 = getelementptr inbounds %struct.pl022, ptr %5, i32 0, i32 19
  %83 = ptrtoint ptr %rx_lev_trig122 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %rx_lev_trig122, align 4
  %84 = ptrtoint ptr %tx_lev_trig.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tx_lev_trig.i, align 4
  %tx_lev_trig124 = getelementptr inbounds %struct.pl022, ptr %5, i32 0, i32 20
  %86 = ptrtoint ptr %tx_lev_trig124 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %tx_lev_trig124, align 4
  %87 = ptrtoint ptr %com_mode.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %com_mode.i, align 4
  %xfer_type = getelementptr inbounds %struct.chip_data, ptr %chip.0, i32 0, i32 8
  %89 = ptrtoint ptr %xfer_type to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %xfer_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %cmp126 = icmp ult i8 %7, 4
  br i1 %cmp126, label %if.end120.if.then131_crit_edge, label %lor.lhs.false128

if.end120.if.then131_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then131

lor.lhs.false128:                                 ; preds = %if.end120
  %vendor = getelementptr inbounds %struct.pl022, ptr %5, i32 0, i32 1
  %90 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %vendor, align 4
  %max_bpw = getelementptr inbounds %struct.vendor_data, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %max_bpw to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %max_bpw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %conv)
  %cmp129 = icmp ult i32 %93, %conv
  br i1 %cmp129, label %lor.lhs.false128.if.then131_crit_edge, label %if.else142

lor.lhs.false128.if.then131_crit_edge:            ; preds = %lor.lhs.false128
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then131

if.then131:                                       ; preds = %lor.lhs.false128.if.then131_crit_edge, %if.end120.if.then131_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.61) #12
  %vendor140 = getelementptr inbounds %struct.pl022, ptr %5, i32 0, i32 1
  %94 = ptrtoint ptr %vendor140 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %vendor140, align 4
  %max_bpw141 = getelementptr inbounds %struct.vendor_data, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %max_bpw141 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %max_bpw141, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.64, i32 noundef %97) #12
  br label %err_config_params

if.else142:                                       ; preds = %lor.lhs.false128
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %7)
  %cmp143 = icmp ult i8 %7, 9
  br i1 %cmp143, label %do.body146, label %if.else165

do.body146:                                       ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl022_setup.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl022_setup, %if.end216)) #9
          to label %if.then160 [label %if.end216], !srcloc !339

if.then160:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl022_setup.__UNIQUE_ID_ddebug308, ptr noundef %spi, ptr noundef nonnull @.str.66) #9
  br label %if.end216

if.else165:                                       ; preds = %if.else142
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %7)
  %cmp166 = icmp ult i8 %7, 17
  br i1 %cmp166, label %do.body169, label %do.body192

do.body169:                                       ; preds = %if.else165
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl022_setup.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl022_setup, %if.end216)) #9
          to label %if.then183 [label %if.end216], !srcloc !339

if.then183:                                       ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl022_setup.__UNIQUE_ID_ddebug309, ptr noundef %spi, ptr noundef nonnull @.str.67) #9
  br label %if.end216

do.body192:                                       ; preds = %if.else165
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl022_setup.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl022_setup, %if.end216)) #9
          to label %if.then206 [label %if.end216], !srcloc !339

if.then206:                                       ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl022_setup.__UNIQUE_ID_ddebug310, ptr noundef %spi, ptr noundef nonnull @.str.68) #9
  br label %if.end216

if.end216:                                        ; preds = %if.then206, %do.body192, %if.then183, %do.body169, %if.then160, %do.body146
  %.sink666 = phi i8 [ 1, %do.body146 ], [ 1, %if.then160 ], [ 2, %do.body169 ], [ 2, %if.then183 ], [ 4, %do.body192 ], [ 4, %if.then206 ]
  %.sink665 = phi i32 [ 1, %do.body146 ], [ 1, %if.then160 ], [ 2, %do.body169 ], [ 2, %if.then183 ], [ 3, %do.body192 ], [ 3, %if.then206 ]
  %n_bytes = getelementptr inbounds %struct.chip_data, ptr %chip.0, i32 0, i32 4
  %98 = ptrtoint ptr %n_bytes to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %.sink666, ptr %n_bytes, align 2
  %read = getelementptr inbounds %struct.chip_data, ptr %chip.0, i32 0, i32 6
  %99 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %.sink665, ptr %read, align 4
  %write = getelementptr inbounds %struct.chip_data, ptr %chip.0, i32 0, i32 7
  %100 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %.sink665, ptr %write, align 4
  %cr1 = getelementptr inbounds %struct.chip_data, ptr %chip.0, i32 0, i32 1
  %dmacr = getelementptr inbounds %struct.chip_data, ptr %chip.0, i32 0, i32 2
  %cpsr = getelementptr inbounds %struct.chip_data, ptr %chip.0, i32 0, i32 3
  %101 = call ptr @memset(ptr %chip.0, i32 0, i32 10)
  %102 = ptrtoint ptr %com_mode.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %com_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %103)
  %cmp218 = icmp eq i32 %103, 2
  br i1 %cmp218, label %land.lhs.true220, label %if.end216.if.else254_crit_edge

if.end216.if.else254_crit_edge:                   ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else254

land.lhs.true220:                                 ; preds = %if.end216
  %master_info = getelementptr inbounds %struct.pl022, ptr %5, i32 0, i32 6
  %104 = ptrtoint ptr %master_info to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %master_info, align 4
  %enable_dma = getelementptr inbounds %struct.pl022_ssp_controller, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %enable_dma to i32
  call void @__asan_load1_noabort(i32 %106)
  %bf.load = load i8, ptr %enable_dma, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool222.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool222.not, label %land.lhs.true220.if.else254_crit_edge, label %if.then223

land.lhs.true220.if.else254_crit_edge:            ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else254

if.then223:                                       ; preds = %land.lhs.true220
  %enable_dma224 = getelementptr inbounds %struct.chip_data, ptr %chip.0, i32 0, i32 5
  %107 = ptrtoint ptr %enable_dma224 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %enable_dma224, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl022_setup.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl022_setup, %do.end243)) #9
          to label %if.then239 [label %do.end243], !srcloc !339

if.then239:                                       ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl022_setup.__UNIQUE_ID_ddebug311, ptr noundef %spi, ptr noundef nonnull @.str.69) #9
  br label %do.end243

do.end243:                                        ; preds = %if.then239, %if.then223
  %108 = ptrtoint ptr %dmacr to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %dmacr, align 2
  %110 = or i16 %109, 3
  br label %if.end287

if.else254:                                       ; preds = %land.lhs.true220.if.else254_crit_edge, %if.end216.if.else254_crit_edge
  %enable_dma255 = getelementptr inbounds %struct.chip_data, ptr %chip.0, i32 0, i32 5
  %111 = ptrtoint ptr %enable_dma255 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %enable_dma255, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl022_setup.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl022_setup, %do.end274)) #9
          to label %if.then270 [label %do.end274], !srcloc !339

if.then270:                                       ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl022_setup.__UNIQUE_ID_ddebug312, ptr noundef %spi, ptr noundef nonnull @.str.70) #9
  br label %do.end274

do.end274:                                        ; preds = %if.then270, %if.else254
  %112 = ptrtoint ptr %dmacr to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %dmacr, align 2
  %114 = and i16 %113, -4
  br label %if.end287

if.end287:                                        ; preds = %do.end274, %do.end243
  %storemerge = phi i16 [ %114, %do.end274 ], [ %110, %do.end243 ]
  %115 = ptrtoint ptr %dmacr to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %storemerge, ptr %dmacr, align 2
  %conv289 = zext i8 %33 to i16
  %116 = ptrtoint ptr %cpsr to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv289, ptr %cpsr, align 4
  %117 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %vendor, align 4
  %extended_cr = getelementptr inbounds %struct.vendor_data, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %extended_cr to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %extended_cr, align 1, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool292.not = icmp eq i8 %120, 0
  br i1 %tobool292.not, label %if.else382, label %if.then293

if.then293:                                       ; preds = %if.end287
  %pl023 = getelementptr inbounds %struct.vendor_data, ptr %118, i32 0, i32 4
  %121 = ptrtoint ptr %pl023 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %pl023, align 2, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool295.not = icmp eq i8 %122, 0
  br i1 %tobool295.not, label %if.else304, label %if.then296

if.then296:                                       ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #11
  %123 = ptrtoint ptr %cr1 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %cr1, align 4
  %125 = and i16 %124, 8191
  %clkdelay = getelementptr inbounds %struct.pl022_config_chip, ptr %chip_info.0, i32 0, i32 10
  %126 = ptrtoint ptr %clkdelay to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %clkdelay, align 4
  %.tr622 = trunc i32 %127 to i16
  %128 = shl i16 %.tr622, 13
  %conv302 = or i16 %128, %125
  br label %if.end335

if.else304:                                       ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #11
  %129 = ptrtoint ptr %chip.0 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %chip.0, align 4
  %and306 = and i32 %130, -33
  %duplex307 = getelementptr inbounds %struct.pl022_config_chip, ptr %chip_info.0, i32 0, i32 9
  %131 = ptrtoint ptr %duplex307 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %duplex307, align 4
  %shl308 = shl i32 %132, 5
  %and309 = and i32 %shl308, 32
  %or310 = or i32 %and309, %and306
  store i32 %or310, ptr %chip.0, align 4
  %and313 = and i32 %or310, -2031617
  %ctrl_len314 = getelementptr inbounds %struct.pl022_config_chip, ptr %chip_info.0, i32 0, i32 7
  %133 = ptrtoint ptr %ctrl_len314 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ctrl_len314, align 4
  %shl315 = shl i32 %134, 16
  %and316 = and i32 %shl315, 2031616
  %or317 = or i32 %and313, %and316
  store i32 %or317, ptr %chip.0, align 4
  %and320 = and i32 %or317, -6291457
  %135 = ptrtoint ptr %chip_info.0 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %chip_info.0, align 4
  %shl322 = shl i32 %136, 21
  %and323 = and i32 %shl322, 6291456
  %or324 = or i32 %and320, %and323
  store i32 %or324, ptr %chip.0, align 4
  %137 = ptrtoint ptr %cr1 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %cr1, align 4
  %139 = and i16 %138, -65
  %wait_state329 = getelementptr inbounds %struct.pl022_config_chip, ptr %chip_info.0, i32 0, i32 8
  %140 = ptrtoint ptr %wait_state329 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %wait_state329, align 4
  %.tr617 = trunc i32 %141 to i16
  %142 = shl i16 %.tr617, 6
  %143 = and i16 %142, 64
  %conv333 = or i16 %143, %139
  br label %if.end335

if.end335:                                        ; preds = %if.else304, %if.then296
  %storemerge618 = phi i16 [ %conv333, %if.else304 ], [ %conv302, %if.then296 ]
  %144 = ptrtoint ptr %cr1 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %storemerge618, ptr %cr1, align 4
  %145 = ptrtoint ptr %chip.0 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %chip.0, align 4
  %and337 = and i32 %146, -32
  %sub338 = add nuw nsw i32 %conv, 31
  %and340 = and i32 %sub338, 31
  %or341 = or i32 %and337, %and340
  store i32 %or341, ptr %chip.0, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %147 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %mode, align 8
  %149 = trunc i32 %148 to i16
  %150 = lshr i16 %149, 3
  %151 = and i16 %150, 1
  %152 = and i16 %storemerge618, -49
  %153 = shl nuw nsw i16 %151, 4
  %conv354 = or i16 %153, %152
  %154 = shl nuw nsw i16 %151, 5
  %conv362 = or i16 %conv354, %154
  store i16 %conv362, ptr %cr1, align 4
  %155 = and i16 %conv362, -897
  %156 = ptrtoint ptr %rx_lev_trig.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %rx_lev_trig.i, align 4
  %.tr620 = trunc i32 %157 to i16
  %158 = shl i16 %.tr620, 7
  %159 = and i16 %158, 896
  %conv371 = or i16 %155, %159
  store i16 %conv371, ptr %cr1, align 4
  %160 = and i16 %conv371, -7169
  %161 = ptrtoint ptr %tx_lev_trig.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %tx_lev_trig.i, align 4
  %.tr621 = trunc i32 %162 to i16
  %163 = shl i16 %.tr621, 10
  %164 = and i16 %163, 7168
  %conv380 = or i16 %160, %164
  store i16 %conv380, ptr %cr1, align 4
  br label %if.end397

if.else382:                                       ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #11
  %165 = ptrtoint ptr %chip.0 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %chip.0, align 4
  %and384 = and i32 %166, -16
  %sub385 = add nuw nsw i32 %conv, 15
  %and387 = and i32 %sub385, 15
  %or388 = or i32 %and384, %and387
  store i32 %or388, ptr %chip.0, align 4
  %and391 = and i32 %or388, -49
  %167 = ptrtoint ptr %chip_info.0 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %chip_info.0, align 4
  %shl393 = shl i32 %168, 4
  %and394 = and i32 %shl393, 48
  %or395 = or i32 %and394, %and391
  store i32 %or395, ptr %chip.0, align 4
  br label %if.end397

if.end397:                                        ; preds = %if.else382, %if.end335
  %mode398 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %169 = ptrtoint ptr %mode398 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %mode398, align 8
  %and399 = shl i32 %170, 5
  %171 = and i32 %and399, 64
  %172 = ptrtoint ptr %chip.0 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %chip.0, align 4
  %and405 = and i32 %173, -65
  %or408 = or i32 %and405, %171
  store i32 %or408, ptr %chip.0, align 4
  %174 = load i32, ptr %mode398, align 8
  %and411 = shl i32 %174, 7
  %175 = and i32 %and411, 128
  %and417 = and i32 %or408, -65409
  %or420 = or i32 %175, %and417
  %scr424 = getelementptr inbounds %struct.ssp_clock_params, ptr %clk_freq, i32 0, i32 1
  %176 = ptrtoint ptr %scr424 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %scr424, align 1
  %conv425 = zext i8 %177 to i32
  %shl426 = shl nuw nsw i32 %conv425, 8
  %or428 = or i32 %or420, %shl426
  store i32 %or428, ptr %chip.0, align 4
  %178 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %vendor, align 4
  %loopback = getelementptr inbounds %struct.vendor_data, ptr %179, i32 0, i32 5
  %180 = ptrtoint ptr %loopback to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %loopback, align 1, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool431.not = icmp eq i8 %181, 0
  br i1 %tobool431.not, label %if.end397.if.end447_crit_edge, label %if.then432

if.end397.if.end447_crit_edge:                    ; preds = %if.end397
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end447

if.then432:                                       ; preds = %if.end397
  call void @__sanitizer_cov_trace_pc() #11
  %182 = ptrtoint ptr %mode398 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %mode398, align 8
  %184 = trunc i32 %183 to i16
  %185 = lshr i16 %184, 5
  %186 = and i16 %185, 1
  %187 = ptrtoint ptr %cr1 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %cr1, align 4
  %189 = and i16 %188, -2
  %or444 = or i16 %186, %189
  store i16 %or444, ptr %cr1, align 4
  br label %if.end447

if.end447:                                        ; preds = %if.then432, %if.end397.if.end447_crit_edge
  %190 = ptrtoint ptr %cr1 to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %cr1, align 4
  %192 = and i16 %191, -3
  store i16 %192, ptr %cr1, align 4
  %193 = and i16 %191, -7
  %194 = ptrtoint ptr %hierarchy.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %hierarchy.i, align 4
  %.tr = trunc i32 %195 to i16
  %196 = shl i16 %.tr, 2
  %197 = and i16 %196, 4
  %conv461 = or i16 %197, %193
  store i16 %conv461, ptr %cr1, align 4
  %198 = and i16 %conv461, -11
  %slave_tx_disable = getelementptr inbounds %struct.pl022_config_chip, ptr %chip_info.0, i32 0, i32 2
  %199 = ptrtoint ptr %slave_tx_disable to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %slave_tx_disable, align 4, !range !338
  %201 = shl nuw nsw i8 %200, 3
  %shl468 = zext i8 %201 to i16
  %or470 = or i16 %198, %shl468
  store i16 %or470, ptr %cr1, align 4
  %202 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %chip.0, ptr %controller_state.i, align 8
  br label %cleanup

err_config_params:                                ; preds = %if.then131, %do.end118, %if.then107, %if.then79.err_config_params_crit_edge
  %status.0 = phi i32 [ %call81, %if.then79.err_config_params_crit_edge ], [ -22, %if.then107 ], [ -22, %do.end118 ], [ -524, %if.then131 ]
  %203 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr null, ptr %controller_state.i, align 8
  call void @kfree(ptr noundef nonnull %chip.0) #9
  br label %cleanup

cleanup:                                          ; preds = %err_config_params, %if.end447, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %err_config_params ], [ 0, %if.end447 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.then3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %clk_freq) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %chip_info_dt) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl022_transfer_one_message(ptr nocapture noundef readonly %master, ptr noundef %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cur_msg = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %cur_msg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %msg, ptr %cur_msg, align 4
  %state = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 9
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %state, align 4
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msg, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -84
  %cur_transfer = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %cur_transfer to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %cur_transfer, align 4
  %spi = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spi, align 4
  %controller_state.i = getelementptr inbounds %struct.spi_device, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %controller_state.i, align 8
  %cur_chip = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %cur_chip to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %cur_chip, align 4
  %12 = load ptr, ptr %spi, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %14 to i32
  %cur_cs = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 27
  %15 = ptrtoint ptr %cur_cs to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv, ptr %cur_cs, align 4
  %16 = load ptr, ptr %spi, align 4
  %cs_gpiod = getelementptr inbounds %struct.spi_device, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cs_gpiod, align 8
  %cur_gpiod = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 28
  %19 = ptrtoint ptr %cur_gpiod to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %cur_gpiod, align 4
  %vendor.i = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vendor.i, align 4
  %extended_cr.i = getelementptr inbounds %struct.vendor_data, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %extended_cr.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %extended_cr.i, align 1, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %10, align 4
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  %virtbase.i = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %virtbase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %virtbase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #9, !srcloc !347
  br label %restore_state.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = trunc i32 %25 to i16
  %29 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #9
  %virtbase5.i = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %virtbase5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %virtbase5.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %31, i16 %29) #9, !srcloc !343
  br label %restore_state.exit

restore_state.exit:                               ; preds = %do.body1.i, %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !348
  tail call void @arm_heavy_mb() #9
  %cr1.i = getelementptr inbounds %struct.chip_data, ptr %10, i32 0, i32 1
  %32 = ptrtoint ptr %cr1.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %cr1.i, align 4
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #9
  %virtbase10.i = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %virtbase10.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %virtbase10.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %36, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i, i16 %34) #9, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !349
  tail call void @arm_heavy_mb() #9
  %dmacr.i = getelementptr inbounds %struct.chip_data, ptr %10, i32 0, i32 2
  %37 = ptrtoint ptr %dmacr.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %dmacr.i, align 2
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #9
  %40 = ptrtoint ptr %virtbase10.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %virtbase10.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %41, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr16.i, i16 %39) #9, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !350
  tail call void @arm_heavy_mb() #9
  %cpsr.i = getelementptr inbounds %struct.chip_data, ptr %10, i32 0, i32 3
  %42 = ptrtoint ptr %cpsr.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %cpsr.i, align 4
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #9
  %45 = ptrtoint ptr %virtbase10.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %virtbase10.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %46, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i, i16 %44) #9, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !351
  tail call void @arm_heavy_mb() #9
  %47 = ptrtoint ptr %virtbase10.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %virtbase10.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %48, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr26.i, i16 0) #9, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !352
  tail call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %virtbase10.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %virtbase10.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %50, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr31.i, i16 768) #9, !srcloc !343
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %51 = load i32, ptr @loops_per_jiffy, align 4
  %shl.i = shl i32 %51, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flush.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl022_transfer_one_message, %do.body4.i)) #9
          to label %if.then.i [label %do.body4.i], !srcloc !339

if.then.i:                                        ; preds = %restore_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @flush.__UNIQUE_ID_ddebug293, ptr noundef %53, ptr noundef nonnull @.str.118) #9
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.cond16.i.do.body4.i_crit_edge, %if.then.i, %restore_state.exit
  %limit.0.i = phi i32 [ %dec.i, %do.cond16.i.do.body4.i_crit_edge ], [ %shl.i, %if.then.i ], [ %shl.i, %restore_state.exit ]
  %54 = ptrtoint ptr %virtbase10.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %virtbase10.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %55, i32 12
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !353
  %57 = and i16 %56, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool8.not3.i = icmp eq i16 %57, 0
  br i1 %tobool8.not3.i, label %do.body4.i.do.cond16.i_crit_edge, label %do.body4.i.while.body.i_crit_edge

do.body4.i.while.body.i_crit_edge:                ; preds = %do.body4.i
  br label %while.body.i

do.body4.i.do.cond16.i_crit_edge:                 ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond16.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.body4.i.while.body.i_crit_edge
  %58 = ptrtoint ptr %virtbase10.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %virtbase10.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %59, i32 8
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr12.i) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !354
  %61 = ptrtoint ptr %virtbase10.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %virtbase10.i, align 4
  %add.ptr.i = getelementptr i8, ptr %62, i32 12
  %63 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !353
  %64 = and i16 %63, 1024
  %tobool8.not.i = icmp eq i16 %64, 0
  br i1 %tobool8.not.i, label %while.body.i.do.cond16.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.do.cond16.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond16.i

do.cond16.i:                                      ; preds = %while.body.i.do.cond16.i_crit_edge, %do.body4.i.do.cond16.i_crit_edge
  %65 = ptrtoint ptr %virtbase10.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %virtbase10.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %66, i32 12
  %67 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr20.i) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %68 = and i16 %67, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool26.not.i = icmp eq i16 %68, 0
  %dec.i = add i32 %limit.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %limit.0.i)
  %tobool27.not.i = icmp eq i32 %limit.0.i, 0
  %or.cond.i = select i1 %tobool26.not.i, i1 true, i1 %tobool27.not.i
  br i1 %or.cond.i, label %flush.exit, label %do.cond16.i.do.body4.i_crit_edge

do.cond16.i.do.body4.i_crit_edge:                 ; preds = %do.cond16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body4.i

flush.exit:                                       ; preds = %do.cond16.i
  %exp_fifo_level.i = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 18
  %69 = ptrtoint ptr %exp_fifo_level.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %exp_fifo_level.i, align 4
  %70 = ptrtoint ptr %cur_chip to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cur_chip, align 4
  %xfer_type = getelementptr inbounds %struct.chip_data, ptr %71, i32 0, i32 8
  %72 = ptrtoint ptr %xfer_type to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %xfer_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp = icmp eq i32 %73, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %flush.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @do_polling_transfer(ptr noundef %1)
  br label %if.end

if.else:                                          ; preds = %flush.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @do_interrupt_dma_transfer(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl022_unprepare_transfer_hardware(ptr nocapture noundef readonly %master) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  %virtbase = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virtbase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !357
  %5 = and i16 %4, -513
  %6 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virtbase, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 %5) #9, !srcloc !343
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pump_transfers(i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %cur_msg = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cur_msg, align 4
  %cur_transfer = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 9
  %3 = ptrtoint ptr %cur_transfer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cur_transfer, align 4
  %state = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 9
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state, align 4
  %magicptr62 = ptrtoint ptr %6 to i32
  %7 = zext i32 %magicptr62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %magicptr62, label %if.else [
    i32 -1, label %if.then
    i32 2, label %if.then3
    i32 1, label %if.then8
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %status = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 7
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -5, ptr %status, align 4
  tail call fastcc void @giveback(ptr noundef %0)
  br label %cleanup

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %status4 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 7
  %9 = ptrtoint ptr %status4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %status4, align 4
  tail call fastcc void @giveback(ptr noundef %0)
  br label %cleanup

if.then8:                                         ; preds = %entry
  %prev = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 18, i32 1
  %10 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 -84
  %delay.i = getelementptr i8, ptr %11, i32 -38
  %call.i = tail call i32 @spi_delay_exec(ptr noundef %delay.i, ptr noundef %add.ptr) #9
  %cs_change = getelementptr i8, ptr %11, i32 -40
  %12 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %cs_change, align 4
  %13 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.then8.if.end12_crit_edge, label %if.then9

if.then8.if.end12_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then9:                                         ; preds = %if.then8
  %vendor.i = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 1
  %14 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vendor.i, align 4
  %internal_cs_ctrl.i = getelementptr inbounds %struct.vendor_data, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %internal_cs_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %internal_cs_ctrl.i, align 4, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %virtbase.i.i = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 3
  %18 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %virtbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 48
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #9, !srcloc !341
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  %cur_cs.i.i = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 27
  %22 = ptrtoint ptr %cur_cs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur_cs.i.i, align 4
  %shl.i.i = shl nuw i32 1, %23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  %24 = trunc i32 %shl.i.i to i16
  %25 = xor i16 %24, -1
  %conv6.i.i = and i16 %21, %25
  %26 = tail call i16 @llvm.bswap.i16(i16 %conv6.i.i) #9
  %27 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %virtbase.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %28, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i.i, i16 %26) #9, !srcloc !343
  br label %if.end12

if.else.i:                                        ; preds = %if.then9
  %cur_gpiod.i = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 28
  %29 = ptrtoint ptr %cur_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur_gpiod.i, align 4
  %tobool1.not.i = icmp eq ptr %30, null
  br i1 %tobool1.not.i, label %if.else.i.if.end12_crit_edge, label %if.then2.i

if.else.i.if.end12_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %30, i32 noundef 1) #9
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 1 to ptr), ptr %state, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then2.i, %if.else.i.if.end12_crit_edge, %if.then.i, %if.then8.if.end12_crit_edge
  %32 = ptrtoint ptr %cur_transfer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cur_transfer, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i, align 4
  %cur_chip.i = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 10
  %36 = ptrtoint ptr %cur_chip.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cur_chip.i, align 4
  %n_bytes.i = getelementptr inbounds %struct.chip_data, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %n_bytes.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %n_bytes.i, align 2
  %conv.i = zext i8 %39 to i32
  %rem.i = urem i32 %35, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then15, !prof !360

if.end.i:                                         ; preds = %if.end12
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %4, align 4
  %tx.i = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 12
  %42 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %tx.i, align 4
  %43 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i, align 4
  %add.ptr.i = getelementptr i8, ptr %41, i32 %44
  %tx_end.i = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 13
  %45 = ptrtoint ptr %tx_end.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr.i, ptr %tx_end.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 1
  %46 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_buf.i, align 4
  %rx.i = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 14
  %48 = ptrtoint ptr %rx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %rx.i, align 4
  %49 = load i32, ptr %len.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %47, i32 %49
  %rx_end.i = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 15
  %50 = ptrtoint ptr %rx_end.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %add.ptr19.i, ptr %rx_end.i, align 4
  %tobool21.not.i = icmp eq ptr %41, null
  br i1 %tobool21.not.i, label %if.end.i.cond.end.i_crit_edge, label %cond.true.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %write.i = getelementptr inbounds %struct.chip_data, ptr %37, i32 0, i32 7
  %51 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %write.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %52, %cond.true.i ], [ 0, %if.end.i.cond.end.i_crit_edge ]
  %write23.i = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 17
  %53 = ptrtoint ptr %write23.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %cond.i, ptr %write23.i, align 4
  %tobool25.not.i = icmp eq ptr %47, null
  br i1 %tobool25.not.i, label %cond.end.i.if.end18_crit_edge, label %cond.true26.i

cond.end.i.if.end18_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

cond.true26.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %read.i = getelementptr inbounds %struct.chip_data, ptr %37, i32 0, i32 6
  %54 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %read.i, align 4
  br label %if.end18

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.122, i32 noundef %35, i32 noundef %conv.i) #12
  %58 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.125) #12
  %60 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 -1 to ptr), ptr %state, align 4
  %status17 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 7
  %61 = ptrtoint ptr %status17 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -5, ptr %status17, align 4
  tail call fastcc void @giveback(ptr noundef %0)
  br label %cleanup

if.end18:                                         ; preds = %cond.true26.i, %cond.end.i.if.end18_crit_edge
  %cond30.i = phi i32 [ %55, %cond.true26.i ], [ 0, %cond.end.i.if.end18_crit_edge ]
  %read31.i = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 16
  %62 = ptrtoint ptr %read31.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %cond30.i, ptr %read31.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %63 = load i32, ptr @loops_per_jiffy, align 4
  %shl.i = shl i32 %63, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flush.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pump_transfers, %do.end.i65)) #9
          to label %if.then.i64 [label %do.end.i65], !srcloc !339

if.then.i64:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @flush.__UNIQUE_ID_ddebug293, ptr noundef %65, ptr noundef nonnull @.str.118) #9
  br label %do.end.i65

do.end.i65:                                       ; preds = %if.then.i64, %if.end18
  %virtbase.i = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 3
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.cond16.i.do.body4.i_crit_edge, %do.end.i65
  %limit.0.i = phi i32 [ %shl.i, %do.end.i65 ], [ %dec.i, %do.cond16.i.do.body4.i_crit_edge ]
  %66 = ptrtoint ptr %virtbase.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %virtbase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %67, i32 12
  %68 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !353
  %69 = and i16 %68, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool8.not3.i = icmp eq i16 %69, 0
  br i1 %tobool8.not3.i, label %do.body4.i.do.cond16.i_crit_edge, label %do.body4.i.while.body.i_crit_edge

do.body4.i.while.body.i_crit_edge:                ; preds = %do.body4.i
  br label %while.body.i

do.body4.i.do.cond16.i_crit_edge:                 ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond16.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.body4.i.while.body.i_crit_edge
  %70 = ptrtoint ptr %virtbase.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %virtbase.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %71, i32 8
  %72 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr12.i) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !354
  %73 = ptrtoint ptr %virtbase.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %virtbase.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %74, i32 12
  %75 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i66) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !353
  %76 = and i16 %75, 1024
  %tobool8.not.i = icmp eq i16 %76, 0
  br i1 %tobool8.not.i, label %while.body.i.do.cond16.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.do.cond16.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond16.i

do.cond16.i:                                      ; preds = %while.body.i.do.cond16.i_crit_edge, %do.body4.i.do.cond16.i_crit_edge
  %77 = ptrtoint ptr %virtbase.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %virtbase.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %78, i32 12
  %79 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr20.i) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %80 = and i16 %79, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool26.not.i = icmp eq i16 %80, 0
  %dec.i = add i32 %limit.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %limit.0.i)
  %tobool27.not.i = icmp eq i32 %limit.0.i, 0
  %or.cond.i = select i1 %tobool26.not.i, i1 true, i1 %tobool27.not.i
  br i1 %or.cond.i, label %flush.exit, label %do.cond16.i.do.body4.i_crit_edge

do.cond16.i.do.body4.i_crit_edge:                 ; preds = %do.cond16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body4.i

flush.exit:                                       ; preds = %do.cond16.i
  %exp_fifo_level.i = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 18
  %81 = ptrtoint ptr %exp_fifo_level.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %exp_fifo_level.i, align 4
  %82 = ptrtoint ptr %cur_chip.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cur_chip.i, align 4
  %enable_dma = getelementptr inbounds %struct.chip_data, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %enable_dma to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %enable_dma, align 1, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool20.not = icmp eq i8 %85, 0
  br i1 %tobool20.not, label %flush.exit.do.body35_crit_edge, label %if.then21

flush.exit.do.body35_crit_edge:                   ; preds = %flush.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body35

if.then21:                                        ; preds = %flush.exit
  %call22 = tail call fastcc i32 @configure_dma(ptr noundef %0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then21.cleanup_crit_edge, label %do.body

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pump_transfers.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pump_transfers, %do.body35)) #9
          to label %if.then31 [label %do.body35], !srcloc !339

if.then31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pump_transfers.__UNIQUE_ID_ddebug300, ptr noundef %87, ptr noundef nonnull @.str.144) #9
  br label %do.body35

do.body35:                                        ; preds = %if.then31, %do.body, %flush.exit.do.body35_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  tail call void @arm_heavy_mb() #9
  %88 = ptrtoint ptr %virtbase.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %virtbase.i, align 4
  %add.ptr38 = getelementptr i8, ptr %89, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr38, i16 2816) #9, !srcloc !343
  br label %cleanup

cleanup:                                          ; preds = %do.body35, %if.then21.cleanup_crit_edge, %if.then15, %if.then3, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @load_ssp_default_config(ptr nocapture noundef readonly %pl022) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 1
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vendor, align 4
  %pl023 = getelementptr inbounds %struct.vendor_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pl023 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pl023, align 2, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !362
  tail call void @arm_heavy_mb() #9
  %virtbase = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 3
  %4 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virtbase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 -1962803200) #9, !srcloc !347
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virtbase, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4, i16 2048) #9, !srcloc !343
  br label %do.body26

if.else:                                          ; preds = %entry
  %extended_cr = getelementptr inbounds %struct.vendor_data, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %extended_cr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %extended_cr, align 1, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %virtbase19 = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 3
  %10 = ptrtoint ptr %virtbase19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %virtbase19, align 4
  br i1 %tobool6.not, label %do.body17, label %do.body8

do.body8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 -1962801408) #9, !srcloc !347
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !364
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %virtbase19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %virtbase19, align 4
  %add.ptr15 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15, i16 2048) #9, !srcloc !343
  br label %do.body26

do.body17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %11, i16 -29950) #9, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %virtbase19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virtbase19, align 4
  %add.ptr24 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr24, i16 2048) #9, !srcloc !343
  br label %do.body26

do.body26:                                        ; preds = %do.body17, %do.body8, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !366
  tail call void @arm_heavy_mb() #9
  %virtbase28 = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 3
  %16 = ptrtoint ptr %virtbase28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %virtbase28, align 4
  %add.ptr29 = getelementptr i8, ptr %17, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr29, i16 0) #9, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !367
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %virtbase28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %virtbase28, align 4
  %add.ptr33 = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr33, i16 16384) #9, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !368
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %virtbase28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %virtbase28, align 4
  %add.ptr37 = getelementptr i8, ptr %21, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr37, i16 0) #9, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !369
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %virtbase28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %virtbase28, align 4
  %add.ptr41 = getelementptr i8, ptr %23, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr41, i16 768) #9, !srcloc !343
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl022_interrupt_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_msg = getelementptr inbounds %struct.pl022, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_msg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end, !prof !370

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.151) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %virtbase = getelementptr inbounds %struct.pl022, ptr %dev_id, i32 0, i32 3
  %4 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virtbase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 28
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !371
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool5.not = icmp eq i16 %6, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end15, !prof !370

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %7 = and i16 %6, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool16.not = icmp eq i16 %7, 0
  br i1 %tobool16.not, label %if.end71, label %do.end26, !prof !360

do.end26:                                         ; preds = %if.end15
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.154) #12
  %10 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %virtbase, align 4
  %add.ptr32 = getelementptr i8, ptr %11, i32 12
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr32) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !372
  %13 = and i16 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool38.not = icmp eq i16 %13, 0
  br i1 %tobool38.not, label %do.end26.do.body46_crit_edge, label %do.end42

do.end26.do.body46_crit_edge:                     ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body46

do.end42:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.157) #12
  br label %do.body46

do.body46:                                        ; preds = %do.end42, %do.end26.do.body46_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !373
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %virtbase, align 4
  %add.ptr50 = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr50, i16 0) #9, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !374
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %virtbase, align 4
  %add.ptr55 = getelementptr i8, ptr %19, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr55, i16 768) #9, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !375
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %virtbase, align 4
  %add.ptr62 = getelementptr i8, ptr %21, i32 4
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr62) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !376
  %23 = and i16 %22, -513
  %24 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %virtbase, align 4
  %add.ptr70 = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr70, i16 %23) #9, !srcloc !343
  %state = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 -1 to ptr), ptr %state, align 4
  %pump_transfers = getelementptr inbounds %struct.pl022, ptr %dev_id, i32 0, i32 7
  tail call fastcc void @tasklet_schedule(ptr noundef %pump_transfers)
  br label %cleanup

if.end71:                                         ; preds = %if.end15
  tail call fastcc void @readwriter(ptr noundef %dev_id)
  %tx = getelementptr inbounds %struct.pl022, ptr %dev_id, i32 0, i32 12
  %27 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tx, align 4
  %tx_end = getelementptr inbounds %struct.pl022, ptr %dev_id, i32 0, i32 13
  %29 = ptrtoint ptr %tx_end to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_end, align 4
  %cmp = icmp eq ptr %28, %30
  br i1 %cmp, label %do.body74, label %if.end71.if.end89_crit_edge

if.end71.if.end89_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

do.body74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !377
  tail call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %virtbase, align 4
  %add.ptr80 = getelementptr i8, ptr %32, i32 20
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr80) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !378
  %34 = and i16 %33, -3073
  %35 = or i16 %34, 1024
  %36 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %virtbase, align 4
  %add.ptr88 = getelementptr i8, ptr %37, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr88, i16 %35) #9, !srcloc !343
  br label %if.end89

if.end89:                                         ; preds = %do.body74, %if.end71.if.end89_crit_edge
  %rx = getelementptr inbounds %struct.pl022, ptr %dev_id, i32 0, i32 14
  %38 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx, align 4
  %rx_end = getelementptr inbounds %struct.pl022, ptr %dev_id, i32 0, i32 15
  %40 = ptrtoint ptr %rx_end to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rx_end, align 4
  %cmp90.not = icmp ult ptr %39, %41
  br i1 %cmp90.not, label %if.end89.cleanup_crit_edge, label %do.body93

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body93:                                        ; preds = %if.end89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !379
  tail call void @arm_heavy_mb() #9
  %42 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %virtbase, align 4
  %add.ptr97 = getelementptr i8, ptr %43, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr97, i16 0) #9, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !380
  tail call void @arm_heavy_mb() #9
  %44 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %virtbase, align 4
  %add.ptr102 = getelementptr i8, ptr %45, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr102, i16 768) #9, !srcloc !343
  %46 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx, align 4
  %48 = ptrtoint ptr %rx_end to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rx_end, align 4
  %cmp105 = icmp ugt ptr %47, %49
  br i1 %cmp105, label %do.end116, label %do.body93.if.end121_crit_edge, !prof !370

do.body93.if.end121_crit_edge:                    ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121

do.end116:                                        ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_id, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %47 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %49 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.160, i32 noundef %sub.ptr.sub) #12
  br label %if.end121

if.end121:                                        ; preds = %do.end116, %do.body93.if.end121_crit_edge
  %cur_transfer = getelementptr inbounds %struct.pl022, ptr %dev_id, i32 0, i32 9
  %52 = ptrtoint ptr %cur_transfer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cur_transfer, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len, align 4
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 6
  %56 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %actual_length, align 4
  %add = add i32 %57, %55
  store i32 %add, ptr %actual_length, align 4
  %58 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cur_msg, align 4
  %60 = load ptr, ptr %cur_transfer, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %60, i32 0, i32 18
  %61 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %transfer_list.i, align 4
  %cmp.not.i = icmp eq ptr %62, %59
  br i1 %cmp.not.i, label %next_transfer.exit.thread, label %land.lhs.true

next_transfer.exit.thread:                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  %state123174 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 9
  %63 = ptrtoint ptr %state123174 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 2 to ptr), ptr %state123174, align 4
  br label %if.end130

land.lhs.true:                                    ; preds = %if.end121
  %add.ptr.i = getelementptr i8, ptr %62, i32 -84
  %64 = ptrtoint ptr %cur_transfer to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr.i, ptr %cur_transfer, align 4
  %state123 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 9
  %65 = ptrtoint ptr %state123 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 1 to ptr), ptr %state123, align 4
  %66 = load ptr, ptr %cur_transfer, align 4
  %cs_change = getelementptr inbounds %struct.spi_transfer, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load = load i8, ptr %cs_change, align 4
  %68 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool128.not = icmp eq i8 %68, 0
  br i1 %tobool128.not, label %land.lhs.true.if.end130_crit_edge, label %if.then129

land.lhs.true.if.end130_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

if.then129:                                       ; preds = %land.lhs.true
  %vendor.i = getelementptr inbounds %struct.pl022, ptr %dev_id, i32 0, i32 1
  %69 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %vendor.i, align 4
  %internal_cs_ctrl.i = getelementptr inbounds %struct.vendor_data, ptr %70, i32 0, i32 6
  %71 = ptrtoint ptr %internal_cs_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %internal_cs_ctrl.i, align 4, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i = icmp eq i8 %72, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i170

if.then.i170:                                     ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %virtbase, align 4
  %add.ptr.i.i = getelementptr i8, ptr %74, i32 48
  %75 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #9, !srcloc !341
  %76 = tail call i16 @llvm.bswap.i16(i16 %75) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  %cur_cs.i.i = getelementptr inbounds %struct.pl022, ptr %dev_id, i32 0, i32 27
  %77 = ptrtoint ptr %cur_cs.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cur_cs.i.i, align 4
  %shl.i.i = shl nuw i32 1, %78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  %79 = trunc i32 %shl.i.i to i16
  %conv6.i.i = or i16 %76, %79
  %80 = tail call i16 @llvm.bswap.i16(i16 %conv6.i.i) #9
  %81 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %virtbase, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %82, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i.i, i16 %80) #9, !srcloc !343
  br label %if.end130

if.else.i:                                        ; preds = %if.then129
  %cur_gpiod.i = getelementptr inbounds %struct.pl022, ptr %dev_id, i32 0, i32 28
  %83 = ptrtoint ptr %cur_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cur_gpiod.i, align 4
  %tobool1.not.i = icmp eq ptr %84, null
  br i1 %tobool1.not.i, label %if.else.i.if.end130_crit_edge, label %if.then2.i

if.else.i.if.end130_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %84, i32 noundef 0) #9
  br label %if.end130

if.end130:                                        ; preds = %if.then2.i, %if.else.i.if.end130_crit_edge, %if.then.i170, %land.lhs.true.if.end130_crit_edge, %next_transfer.exit.thread
  %state.i = getelementptr inbounds %struct.pl022, ptr %dev_id, i32 0, i32 7, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i171 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i171, label %if.then.i172, label %if.end130.cleanup_crit_edge

if.end130.cleanup_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i172:                                     ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  %pump_transfers131 = getelementptr inbounds %struct.pl022, ptr %dev_id, i32 0, i32 7
  tail call void @__tasklet_schedule(ptr noundef %pump_transfers131) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i172, %if.end130.cleanup_crit_edge, %if.end89.cleanup_crit_edge, %do.body46, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %do.body46 ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end89.cleanup_crit_edge ], [ 1, %if.end130.cleanup_crit_edge ], [ 1, %if.then.i172 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pl022_dma_autoprobe(ptr nocapture noundef %pl022) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pl022 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pl022, align 4
  %call = tail call ptr @dma_request_chan(ptr noundef %1, ptr noundef nonnull @.str.162) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_rx_channel = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 21
  %3 = ptrtoint ptr %dma_rx_channel to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %dma_rx_channel, align 4
  %call4 = tail call ptr @dma_request_chan(ptr noundef %1, ptr noundef nonnull @.str.163) #9
  %cmp.i33 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i33, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call4 to i32
  br label %err_no_txchan

if.end8:                                          ; preds = %if.end
  %dma_tx_channel = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 22
  %5 = ptrtoint ptr %dma_tx_channel to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %dma_tx_channel, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 4096) #13
  %dummypage = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 25
  %7 = ptrtoint ptr %dummypage to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i, ptr %dummypage, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %dma_tx_channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_tx_channel, align 4
  tail call void @dma_release_channel(ptr noundef %9) #9
  %10 = ptrtoint ptr %dma_tx_channel to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %dma_tx_channel, align 4
  br label %err_no_txchan

err_no_txchan:                                    ; preds = %if.then11, %if.then6
  %err.0 = phi i32 [ %4, %if.then6 ], [ -12, %if.then11 ]
  %11 = ptrtoint ptr %dma_rx_channel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_rx_channel, align 4
  tail call void @dma_release_channel(ptr noundef %12) #9
  %13 = ptrtoint ptr %dma_rx_channel to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %dma_rx_channel, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_no_txchan, %if.end8.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end8.cleanup_crit_edge ], [ %2, %if.then ], [ %err.0, %err_no_txchan ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pl022_dma_probe(ptr nocapture noundef %pl022) unnamed_addr #2 align 64 {
entry:
  %mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #9
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask) #9
  %master_info = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 6
  %1 = ptrtoint ptr %master_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %master_info, align 4
  %dma_filter = getelementptr inbounds %struct.pl022_ssp_controller, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %dma_filter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dma_filter, align 4
  %dma_rx_param = getelementptr inbounds %struct.pl022_ssp_controller, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %dma_rx_param to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma_rx_param, align 4
  %call = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef %4, ptr noundef %6, ptr noundef null) #9
  %dma_rx_channel = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 21
  %7 = ptrtoint ptr %dma_rx_channel to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %dma_rx_channel, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl022_dma_probe.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl022_dma_probe, %do.end57)) #9
          to label %if.then8 [label %do.end57], !srcloc !339

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %pl022 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pl022, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl022_dma_probe.__UNIQUE_ID_ddebug298, ptr noundef %9, ptr noundef nonnull @.str.165) #9
  br label %do.end57

if.end9:                                          ; preds = %entry
  %10 = ptrtoint ptr %master_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master_info, align 4
  %dma_filter11 = getelementptr inbounds %struct.pl022_ssp_controller, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dma_filter11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_filter11, align 4
  %dma_tx_param = getelementptr inbounds %struct.pl022_ssp_controller, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %dma_tx_param to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_tx_param, align 4
  %call13 = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef %13, ptr noundef %15, ptr noundef null) #9
  %dma_tx_channel = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 22
  %16 = ptrtoint ptr %dma_tx_channel to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call13, ptr %dma_tx_channel, align 4
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %do.body17, label %if.end37

do.body17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl022_dma_probe.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl022_dma_probe, %err_no_txchan)) #9
          to label %if.then31 [label %err_no_txchan], !srcloc !339

if.then31:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %pl022 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pl022, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl022_dma_probe.__UNIQUE_ID_ddebug299, ptr noundef %18, ptr noundef nonnull @.str.166) #9
  br label %err_no_txchan

if.end37:                                         ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3264, i32 noundef 4096) #13
  %dummypage = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 25
  %20 = ptrtoint ptr %dummypage to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i, ptr %dummypage, align 4
  %tobool40.not = icmp eq ptr %call7.i, null
  br i1 %tobool40.not, label %err_no_dummypage, label %do.end45

do.end45:                                         ; preds = %if.end37
  %21 = ptrtoint ptr %pl022 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pl022, align 4
  %23 = ptrtoint ptr %dma_rx_channel to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_rx_channel, align 4
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %26, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end45.dma_chan_name.exit_crit_edge

do.end45.dma_chan_name.exit_crit_edge:            ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_chan_name.exit

if.end.i.i:                                       ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #11
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device.i, align 4
  br label %dma_chan_name.exit

dma_chan_name.exit:                               ; preds = %if.end.i.i, %do.end45.dma_chan_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %30, %if.end.i.i ], [ %28, %do.end45.dma_chan_name.exit_crit_edge ]
  %31 = ptrtoint ptr %dma_tx_channel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma_tx_channel, align 4
  %dev.i81 = getelementptr inbounds %struct.dma_chan, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %dev.i81 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i81, align 4
  %init_name.i.i82 = getelementptr inbounds %struct.dma_chan_dev, ptr %34, i32 0, i32 1, i32 3
  %35 = ptrtoint ptr %init_name.i.i82 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i.i82, align 8
  %tobool.not.i.i83 = icmp eq ptr %36, null
  br i1 %tobool.not.i.i83, label %if.end.i.i85, label %dma_chan_name.exit.dma_chan_name.exit87_crit_edge

dma_chan_name.exit.dma_chan_name.exit87_crit_edge: ; preds = %dma_chan_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_chan_name.exit87

if.end.i.i85:                                     ; preds = %dma_chan_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %device.i84 = getelementptr inbounds %struct.dma_chan_dev, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %device.i84 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device.i84, align 4
  br label %dma_chan_name.exit87

dma_chan_name.exit87:                             ; preds = %if.end.i.i85, %dma_chan_name.exit.dma_chan_name.exit87_crit_edge
  %retval.0.i.i86 = phi ptr [ %38, %if.end.i.i85 ], [ %36, %dma_chan_name.exit.dma_chan_name.exit87_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.167, ptr noundef %retval.0.i.i, ptr noundef %retval.0.i.i86) #12
  br label %cleanup

err_no_dummypage:                                 ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %dma_tx_channel to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dma_tx_channel, align 4
  call void @dma_release_channel(ptr noundef %40) #9
  br label %err_no_txchan

err_no_txchan:                                    ; preds = %err_no_dummypage, %if.then31, %do.body17
  %41 = ptrtoint ptr %dma_rx_channel to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dma_rx_channel, align 4
  call void @dma_release_channel(ptr noundef %42) #9
  %43 = ptrtoint ptr %dma_rx_channel to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %dma_rx_channel, align 4
  br label %do.end57

do.end57:                                         ; preds = %err_no_txchan, %if.then8, %do.body
  %44 = ptrtoint ptr %pl022 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pl022, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.169) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end57, %dma_chan_name.exit87
  %retval.0 = phi i32 [ 0, %dma_chan_name.exit87 ], [ -19, %do.end57 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pl022_dma_remove(ptr noundef %pl022) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_running = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 26
  %0 = ptrtoint ptr %dma_running to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dma_running, align 4, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %dma_rx_channel.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 21
  %2 = ptrtoint ptr %dma_rx_channel.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_rx_channel.i, align 4
  %dma_tx_channel.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 22
  %4 = ptrtoint ptr %dma_tx_channel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_tx_channel.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 47
  %8 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then.dmaengine_terminate_all.exit.i_crit_edge, label %if.then.i.i

if.then.dmaengine_terminate_all.exit.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_all.exit.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 %9(ptr noundef %3) #9
  br label %dmaengine_terminate_all.exit.i

dmaengine_terminate_all.exit.i:                   ; preds = %if.then.i.i, %if.then.dmaengine_terminate_all.exit.i_crit_edge
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %device_terminate_all.i5.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 47
  %12 = ptrtoint ptr %device_terminate_all.i5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_terminate_all.i5.i, align 4
  %tobool.not.i6.i = icmp eq ptr %13, null
  br i1 %tobool.not.i6.i, label %dmaengine_terminate_all.exit.i.terminate_dma.exit_crit_edge, label %if.then.i8.i

dmaengine_terminate_all.exit.i.terminate_dma.exit_crit_edge: ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %terminate_dma.exit

if.then.i8.i:                                     ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i7.i = tail call i32 %13(ptr noundef %5) #9
  br label %terminate_dma.exit

terminate_dma.exit:                               ; preds = %if.then.i8.i, %dmaengine_terminate_all.exit.i.terminate_dma.exit_crit_edge
  %14 = ptrtoint ptr %dma_tx_channel.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_tx_channel.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 4
  %sgt_tx.i.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 24
  %20 = ptrtoint ptr %sgt_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sgt_tx.i.i, align 4
  %nents.i.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 24, i32 1
  %22 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nents.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %19, ptr noundef %21, i32 noundef %23, i32 noundef 1, i32 noundef 0) #9
  %24 = ptrtoint ptr %dma_rx_channel.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma_rx_channel.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %dev3.i.i = getelementptr inbounds %struct.dma_device, ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %dev3.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev3.i.i, align 4
  %sgt_rx.i.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 23
  %30 = ptrtoint ptr %sgt_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sgt_rx.i.i, align 4
  %nents6.i.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 23, i32 1
  %32 = ptrtoint ptr %nents6.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nents6.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %29, ptr noundef %31, i32 noundef %33, i32 noundef 2, i32 noundef 0) #9
  tail call void @sg_free_table(ptr noundef %sgt_rx.i.i) #9
  tail call void @sg_free_table(ptr noundef %sgt_tx.i.i) #9
  %34 = ptrtoint ptr %dma_running to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %dma_running, align 4
  br label %if.end

if.end:                                           ; preds = %terminate_dma.exit, %entry.if.end_crit_edge
  %dma_tx_channel = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 22
  %35 = ptrtoint ptr %dma_tx_channel to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dma_tx_channel, align 4
  %tobool1.not = icmp eq ptr %36, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %36) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %dma_rx_channel = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 21
  %37 = ptrtoint ptr %dma_rx_channel to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dma_rx_channel, align 4
  %tobool5.not = icmp eq ptr %38, null
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %if.then6

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %38) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %dummypage = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 25
  %39 = ptrtoint ptr %dummypage to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dummypage, align 4
  tail call void @kfree(ptr noundef %40) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @calculate_effective_freq(ptr nocapture noundef readonly %pl022, i32 noundef %freq, ptr nocapture noundef %clk_freq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 4
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #9
  %div.i157 = lshr i32 %call, 1
  %div.i153 = udiv i32 %call, 65024
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i157, i32 %freq)
  %cmp = icmp ult i32 %div.i157, %freq
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %pl022 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pl022, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.71, i32 noundef %div.i157, i32 noundef %freq) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i153, i32 %freq)
  %cmp3 = icmp ugt i32 %div.i153, %freq
  br i1 %cmp3, label %do.end7, label %if.end.while.cond13.preheader_crit_edge

if.end.while.cond13.preheader_crit_edge:          ; preds = %if.end
  br label %while.cond13.preheader

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %pl022 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pl022, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.75, i32 noundef %freq, i32 noundef %div.i153) #12
  br label %cleanup

while.cond13.preheader:                           ; preds = %while.end.while.cond13.preheader_crit_edge, %if.end.while.cond13.preheader_crit_edge
  %indvars.iv169 = phi i32 [ %indvars.iv.next170, %while.end.while.cond13.preheader_crit_edge ], [ 2, %if.end.while.cond13.preheader_crit_edge ]
  %best_scr.0163 = phi i32 [ %best_scr.1, %while.end.while.cond13.preheader_crit_edge ], [ 0, %if.end.while.cond13.preheader_crit_edge ]
  %best_cpsdvsr.0162 = phi i32 [ %best_cpsdvsr.1, %while.end.while.cond13.preheader_crit_edge ], [ 0, %if.end.while.cond13.preheader_crit_edge ]
  %best_freq.0161 = phi i32 [ %best_freq.1, %while.end.while.cond13.preheader_crit_edge ], [ 0, %if.end.while.cond13.preheader_crit_edge ]
  br label %while.body17

while.cond13:                                     ; preds = %while.body17
  %exitcond.not = icmp eq i32 %add.i, 256
  br i1 %exitcond.not, label %while.cond13.while.end_crit_edge, label %while.cond13.while.body17_crit_edge

while.cond13.while.body17_crit_edge:              ; preds = %while.cond13
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body17

while.cond13.while.end_crit_edge:                 ; preds = %while.cond13
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body17:                                     ; preds = %while.cond13.while.body17_crit_edge, %while.cond13.preheader
  %indvars.iv = phi i32 [ 0, %while.cond13.preheader ], [ %add.i, %while.cond13.while.body17_crit_edge ]
  %add.i = add nuw nsw i32 %indvars.iv, 1
  %mul.i = mul nuw nsw i32 %add.i, %indvars.iv169
  %div.i154 = udiv i32 %call, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i154, i32 %freq)
  %cmp19 = icmp ugt i32 %div.i154, %freq
  br i1 %cmp19, label %while.cond13, label %if.end22

if.end22:                                         ; preds = %while.body17
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i154, i32 %best_freq.0161)
  %cmp23 = icmp ugt i32 %div.i154, %best_freq.0161
  br i1 %cmp23, label %if.then25, label %if.end22.while.end_crit_edge

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i154, i32 %freq)
  %cmp28 = icmp eq i32 %div.i154, %freq
  %spec.select = zext i1 %cmp28 to i32
  br label %while.end

while.end:                                        ; preds = %if.then25, %if.end22.while.end_crit_edge, %while.cond13.while.end_crit_edge
  %best_freq.1 = phi i32 [ %best_freq.0161, %if.end22.while.end_crit_edge ], [ %div.i154, %if.then25 ], [ %best_freq.0161, %while.cond13.while.end_crit_edge ]
  %best_cpsdvsr.1 = phi i32 [ %best_cpsdvsr.0162, %if.end22.while.end_crit_edge ], [ %indvars.iv169, %if.then25 ], [ %best_cpsdvsr.0162, %while.cond13.while.end_crit_edge ]
  %best_scr.1 = phi i32 [ %best_scr.0163, %if.end22.while.end_crit_edge ], [ %indvars.iv, %if.then25 ], [ %best_scr.0163, %while.cond13.while.end_crit_edge ]
  %found.1 = phi i32 [ 0, %if.end22.while.end_crit_edge ], [ %spec.select, %if.then25 ], [ 0, %while.cond13.while.end_crit_edge ]
  %indvars.iv.next170 = add nuw nsw i32 %indvars.iv169, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 253, i32 %indvars.iv169)
  %cmp11 = icmp ult i32 %indvars.iv169, 253
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.1)
  %tobool.not = icmp eq i32 %found.1, 0
  %or.cond = select i1 %cmp11, i1 %tobool.not, i1 false
  br i1 %or.cond, label %while.end.while.cond13.preheader_crit_edge, label %while.end35

while.end.while.cond13.preheader_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond13.preheader

while.end35:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_freq.1)
  %tobool36.not = icmp eq i32 %best_freq.1, 0
  br i1 %tobool36.not, label %do.end50, label %while.end35.if.end56_crit_edge, !prof !370

while.end35.if.end56_crit_edge:                   ; preds = %while.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

do.end50:                                         ; preds = %while.end35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1799, i32 noundef 9, ptr noundef nonnull @.str.77, i32 noundef %freq) #9
  br label %if.end56

if.end56:                                         ; preds = %do.end50, %while.end35.if.end56_crit_edge
  %conv64 = trunc i32 %best_cpsdvsr.1 to i8
  %6 = ptrtoint ptr %clk_freq to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv64, ptr %clk_freq, align 1
  %conv67 = trunc i32 %best_scr.1 to i8
  %scr68 = getelementptr inbounds %struct.ssp_clock_params, ptr %clk_freq, i32 0, i32 1
  %7 = ptrtoint ptr %scr68 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv67, ptr %scr68, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @calculate_effective_freq.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@calculate_effective_freq, %do.body87)) #9
          to label %if.then81 [label %do.body87], !srcloc !339

if.then81:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %pl022 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pl022, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @calculate_effective_freq.__UNIQUE_ID_ddebug303, ptr noundef %9, ptr noundef nonnull @.str.78, i32 noundef %freq, i32 noundef %best_freq.1) #9
  br label %do.body87

do.body87:                                        ; preds = %if.then81, %if.end56
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @calculate_effective_freq.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@calculate_effective_freq, %cleanup)) #9
          to label %if.then101 [label %cleanup], !srcloc !339

if.then101:                                       ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %pl022 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pl022, align 4
  %12 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %clk_freq, align 1
  %conv105 = zext i8 %13 to i32
  %14 = ptrtoint ptr %scr68 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %scr68, align 1
  %conv107 = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @calculate_effective_freq.__UNIQUE_ID_ddebug304, ptr noundef %11, ptr noundef nonnull @.str.79, i32 noundef %conv105, i32 noundef %conv107) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then101, %do.body87, %do.end7
  %retval.0 = phi i32 [ -22, %do.end7 ], [ 0, %if.then101 ], [ 0, %do.body87 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_polling_transfer(ptr noundef %pl022) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_msg = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 8
  %0 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_msg, align 4
  %state = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 9
  %cur_transfer = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 9
  %next_msg_cs_active = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 11
  %vendor.i132 = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 1
  %virtbase.i.i135 = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 3
  %cur_cs.i.i138 = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 27
  %cur_gpiod.i146 = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 28
  %cur_chip.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 10
  %tx.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 12
  %tx_end.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 13
  %rx.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 14
  %rx_end.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 15
  %write23.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 17
  %read31.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 16
  %exp_fifo_level.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 18
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 6
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %magicptr = ptrtoint ptr %3 to i32
  %4 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %magicptr, label %if.end [
    i32 2, label %while.cond.out_crit_edge
    i32 -1, label %while.cond.out_crit_edge216
  ]

while.cond.out_crit_edge216:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

while.cond.out_crit_edge:                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %while.cond
  %5 = ptrtoint ptr %cur_transfer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cur_transfer, align 4
  %cmp4 = icmp eq ptr %3, inttoptr (i32 1 to ptr)
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %prev = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 18, i32 1
  %7 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 -84
  %delay.i = getelementptr i8, ptr %8, i32 -38
  %call.i = tail call i32 @spi_delay_exec(ptr noundef %delay.i, ptr noundef %add.ptr) #9
  %cs_change = getelementptr i8, ptr %8, i32 -40
  %9 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %cs_change, align 4
  %10 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.then5.if.end12_crit_edge, label %if.then6

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then6:                                         ; preds = %if.then5
  %11 = ptrtoint ptr %vendor.i132 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vendor.i132, align 4
  %internal_cs_ctrl.i = getelementptr inbounds %struct.vendor_data, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %internal_cs_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %internal_cs_ctrl.i, align 4, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %virtbase.i.i135 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %virtbase.i.i135, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 48
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #9, !srcloc !341
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  %19 = ptrtoint ptr %cur_cs.i.i138 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cur_cs.i.i138, align 4
  %shl.i.i = shl nuw i32 1, %20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  %21 = trunc i32 %shl.i.i to i16
  %22 = xor i16 %21, -1
  %conv6.i.i = and i16 %18, %22
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv6.i.i) #9
  %24 = ptrtoint ptr %virtbase.i.i135 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %virtbase.i.i135, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %25, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i.i, i16 %23) #9, !srcloc !343
  br label %if.end12

if.else.i:                                        ; preds = %if.then6
  %26 = ptrtoint ptr %cur_gpiod.i146 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cur_gpiod.i146, align 4
  %tobool1.not.i = icmp eq ptr %27, null
  br i1 %tobool1.not.i, label %if.else.i.if.end12_crit_edge, label %if.then2.i

if.else.i.if.end12_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %27, i32 noundef 1) #9
  br label %if.end12

if.else:                                          ; preds = %if.end
  %28 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 1 to ptr), ptr %state, align 4
  %29 = ptrtoint ptr %next_msg_cs_active to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %next_msg_cs_active, align 4, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool9.not = icmp eq i8 %30, 0
  br i1 %tobool9.not, label %if.then10, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %if.else
  %31 = ptrtoint ptr %vendor.i132 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vendor.i132, align 4
  %internal_cs_ctrl.i133 = getelementptr inbounds %struct.vendor_data, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %internal_cs_ctrl.i133 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %internal_cs_ctrl.i133, align 4, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i134 = icmp eq i8 %34, 0
  br i1 %tobool.not.i134, label %if.else.i148, label %if.then.i145

if.then.i145:                                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %virtbase.i.i135 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %virtbase.i.i135, align 4
  %add.ptr.i.i136 = getelementptr i8, ptr %36, i32 48
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i136) #9, !srcloc !341
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  %39 = ptrtoint ptr %cur_cs.i.i138 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cur_cs.i.i138, align 4
  %shl.i.i139 = shl nuw i32 1, %40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  %41 = trunc i32 %shl.i.i139 to i16
  %42 = xor i16 %41, -1
  %conv6.i.i143 = and i16 %38, %42
  %43 = tail call i16 @llvm.bswap.i16(i16 %conv6.i.i143) #9
  %44 = ptrtoint ptr %virtbase.i.i135 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %virtbase.i.i135, align 4
  %add.ptr8.i.i144 = getelementptr i8, ptr %45, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i.i144, i16 %43) #9, !srcloc !343
  br label %if.end12

if.else.i148:                                     ; preds = %if.then10
  %46 = ptrtoint ptr %cur_gpiod.i146 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur_gpiod.i146, align 4
  %tobool1.not.i147 = icmp eq ptr %47, null
  br i1 %tobool1.not.i147, label %if.else.i148.if.end12_crit_edge, label %if.then2.i149

if.else.i148.if.end12_crit_edge:                  ; preds = %if.else.i148
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then2.i149:                                    ; preds = %if.else.i148
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %47, i32 noundef 1) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then2.i149, %if.else.i148.if.end12_crit_edge, %if.then.i145, %if.else.if.end12_crit_edge, %if.then2.i, %if.else.i.if.end12_crit_edge, %if.then.i, %if.then5.if.end12_crit_edge
  %48 = ptrtoint ptr %cur_transfer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cur_transfer, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len.i, align 4
  %52 = ptrtoint ptr %cur_chip.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cur_chip.i, align 4
  %n_bytes.i = getelementptr inbounds %struct.chip_data, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %n_bytes.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %n_bytes.i, align 2
  %conv.i = zext i8 %55 to i32
  %rem.i = urem i32 %51, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then15, !prof !360

if.end.i:                                         ; preds = %if.end12
  %56 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %6, align 4
  %58 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %tx.i, align 4
  %59 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len.i, align 4
  %add.ptr.i = getelementptr i8, ptr %57, i32 %60
  %61 = ptrtoint ptr %tx_end.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr.i, ptr %tx_end.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 1
  %62 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rx_buf.i, align 4
  %64 = ptrtoint ptr %rx.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %rx.i, align 4
  %65 = load i32, ptr %len.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %63, i32 %65
  %66 = ptrtoint ptr %rx_end.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr19.i, ptr %rx_end.i, align 4
  %tobool21.not.i = icmp eq ptr %57, null
  br i1 %tobool21.not.i, label %if.end.i.cond.end.i_crit_edge, label %cond.true.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %write.i = getelementptr inbounds %struct.chip_data, ptr %53, i32 0, i32 7
  %67 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %write.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %68, %cond.true.i ], [ 0, %if.end.i.cond.end.i_crit_edge ]
  %69 = ptrtoint ptr %write23.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %cond.i, ptr %write23.i, align 4
  %tobool25.not.i = icmp eq ptr %63, null
  br i1 %tobool25.not.i, label %cond.end.i.if.end17_crit_edge, label %cond.true26.i

cond.end.i.if.end17_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

cond.true26.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %read.i = getelementptr inbounds %struct.chip_data, ptr %53, i32 0, i32 6
  %70 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %read.i, align 4
  br label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.le = zext i8 %55 to i32
  %72 = ptrtoint ptr %pl022 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pl022, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.122, i32 noundef %51, i32 noundef %conv.i.le) #12
  %74 = ptrtoint ptr %pl022 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pl022, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.125) #12
  %76 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr inttoptr (i32 -1 to ptr), ptr %state, align 4
  br label %out

if.end17:                                         ; preds = %cond.true26.i, %cond.end.i.if.end17_crit_edge
  %cond30.i = phi i32 [ %71, %cond.true26.i ], [ 0, %cond.end.i.if.end17_crit_edge ]
  %77 = ptrtoint ptr %read31.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %cond30.i, ptr %read31.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %78 = load i32, ptr @loops_per_jiffy, align 4
  %shl.i = shl i32 %78, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flush.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@do_polling_transfer, %do.body4.i)) #9
          to label %if.then.i152 [label %do.body4.i], !srcloc !339

if.then.i152:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %pl022 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pl022, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @flush.__UNIQUE_ID_ddebug293, ptr noundef %80, ptr noundef nonnull @.str.118) #9
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.cond16.i.do.body4.i_crit_edge, %if.then.i152, %if.end17
  %limit.0.i = phi i32 [ %dec.i, %do.cond16.i.do.body4.i_crit_edge ], [ %shl.i, %if.then.i152 ], [ %shl.i, %if.end17 ]
  %81 = ptrtoint ptr %virtbase.i.i135 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %virtbase.i.i135, align 4
  %add.ptr2.i = getelementptr i8, ptr %82, i32 12
  %83 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !353
  %84 = and i16 %83, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool8.not3.i = icmp eq i16 %84, 0
  br i1 %tobool8.not3.i, label %do.body4.i.do.cond16.i_crit_edge, label %do.body4.i.while.body.i_crit_edge

do.body4.i.while.body.i_crit_edge:                ; preds = %do.body4.i
  br label %while.body.i

do.body4.i.do.cond16.i_crit_edge:                 ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond16.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.body4.i.while.body.i_crit_edge
  %85 = ptrtoint ptr %virtbase.i.i135 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %virtbase.i.i135, align 4
  %add.ptr12.i = getelementptr i8, ptr %86, i32 8
  %87 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr12.i) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !354
  %88 = ptrtoint ptr %virtbase.i.i135 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %virtbase.i.i135, align 4
  %add.ptr.i154 = getelementptr i8, ptr %89, i32 12
  %90 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i154) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !353
  %91 = and i16 %90, 1024
  %tobool8.not.i = icmp eq i16 %91, 0
  br i1 %tobool8.not.i, label %while.body.i.do.cond16.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.do.cond16.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond16.i

do.cond16.i:                                      ; preds = %while.body.i.do.cond16.i_crit_edge, %do.body4.i.do.cond16.i_crit_edge
  %92 = ptrtoint ptr %virtbase.i.i135 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %virtbase.i.i135, align 4
  %add.ptr20.i = getelementptr i8, ptr %93, i32 12
  %94 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr20.i) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %95 = and i16 %94, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool26.not.i = icmp eq i16 %95, 0
  %dec.i = add i32 %limit.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %limit.0.i)
  %tobool27.not.i = icmp eq i32 %limit.0.i, 0
  %or.cond.i = select i1 %tobool26.not.i, i1 true, i1 %tobool27.not.i
  br i1 %or.cond.i, label %flush.exit, label %do.cond16.i.do.body4.i_crit_edge

do.cond16.i.do.body4.i_crit_edge:                 ; preds = %do.cond16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body4.i

flush.exit:                                       ; preds = %do.cond16.i
  %96 = ptrtoint ptr %exp_fifo_level.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %exp_fifo_level.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !381
  tail call void @arm_heavy_mb() #9
  %97 = ptrtoint ptr %virtbase.i.i135 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %virtbase.i.i135, align 4
  %add.ptr19 = getelementptr i8, ptr %98, i32 4
  %99 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr19) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  %100 = or i16 %99, 512
  %101 = ptrtoint ptr %virtbase.i.i135 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %virtbase.i.i135, align 4
  %add.ptr25 = getelementptr i8, ptr %102, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr25, i16 %100) #9, !srcloc !343
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_polling_transfer.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@do_polling_transfer, %do.end36)) #9
          to label %if.then33 [label %do.end36], !srcloc !339

if.then33:                                        ; preds = %flush.exit
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %pl022 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pl022, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_polling_transfer.__UNIQUE_ID_ddebug302, ptr noundef %104, ptr noundef nonnull @.str.120) #9
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %flush.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %105 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %105, 100
  br label %while.cond38

while.cond38:                                     ; preds = %do.end58, %do.end36
  %106 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tx.i, align 4
  %108 = ptrtoint ptr %tx_end.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tx_end.i, align 4
  %cmp39 = icmp ult ptr %107, %109
  br i1 %cmp39, label %while.cond38.while.body43_crit_edge, label %lor.rhs

while.cond38.while.body43_crit_edge:              ; preds = %while.cond38
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body43

lor.rhs:                                          ; preds = %while.cond38
  %110 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rx.i, align 4
  %112 = ptrtoint ptr %rx_end.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rx_end.i, align 4
  %cmp41 = icmp ult ptr %111, %113
  br i1 %cmp41, label %lor.rhs.while.body43_crit_edge, label %while.end

lor.rhs.while.body43_crit_edge:                   ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body43

while.body43:                                     ; preds = %lor.rhs.while.body43_crit_edge, %while.cond38.while.body43_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %114 = load volatile i32, ptr @jiffies, align 128
  tail call fastcc void @readwriter(ptr noundef %pl022)
  %sub = sub i32 %add, %114
  %cmp44 = icmp slt i32 %sub, 0
  br i1 %cmp44, label %do.end49, label %do.end58

do.end49:                                         ; preds = %while.body43
  %115 = ptrtoint ptr %pl022 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pl022, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %116, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.119) #12
  %117 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr inttoptr (i32 -2 to ptr), ptr %state, align 4
  %118 = ptrtoint ptr %vendor.i132 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %vendor.i132, align 4
  %extended_cr.i = getelementptr inbounds %struct.vendor_data, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %extended_cr.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %extended_cr.i, align 1, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool.not.i156 = icmp eq i8 %121, 0
  %122 = ptrtoint ptr %virtbase.i.i135 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %virtbase.i.i135, align 4
  br i1 %tobool.not.i156, label %if.else.i159, label %if.then.i157

if.then.i157:                                     ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #9, !srcloc !383
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !384
  br label %print_current_status.exit

if.else.i159:                                     ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  %126 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %123) #9, !srcloc !341
  %127 = tail call i16 @llvm.bswap.i16(i16 %126) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %conv.i158 = zext i16 %127 to i32
  br label %print_current_status.exit

print_current_status.exit:                        ; preds = %if.else.i159, %if.then.i157
  %read_cr0.0.i = phi i32 [ %125, %if.then.i157 ], [ %conv.i158, %if.else.i159 ]
  %128 = ptrtoint ptr %virtbase.i.i135 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %virtbase.i.i135, align 4
  %add.ptr12.i160 = getelementptr i8, ptr %129, i32 4
  %130 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr12.i160) #9, !srcloc !341
  %131 = tail call i16 @llvm.bswap.i16(i16 %130) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !386
  %132 = ptrtoint ptr %virtbase.i.i135 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %virtbase.i.i135, align 4
  %add.ptr19.i161 = getelementptr i8, ptr %133, i32 36
  %134 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr19.i161) #9, !srcloc !341
  %135 = tail call i16 @llvm.bswap.i16(i16 %134) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !387
  %136 = ptrtoint ptr %virtbase.i.i135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %virtbase.i.i135, align 4
  %add.ptr26.i = getelementptr i8, ptr %137, i32 12
  %138 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr26.i) #9, !srcloc !341
  %139 = tail call i16 @llvm.bswap.i16(i16 %138) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !388
  %140 = ptrtoint ptr %pl022 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pl022, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %141, ptr noundef nonnull @.str.129, i32 noundef %read_cr0.0.i) #12
  %142 = ptrtoint ptr %pl022 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pl022, align 4
  %conv35.i = zext i16 %131 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %143, ptr noundef nonnull @.str.132, i32 noundef %conv35.i) #12
  %144 = ptrtoint ptr %pl022 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pl022, align 4
  %conv41.i = zext i16 %135 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %145, ptr noundef nonnull @.str.135, i32 noundef %conv41.i) #12
  %146 = ptrtoint ptr %pl022 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pl022, align 4
  %conv47.i = zext i16 %139 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %147, ptr noundef nonnull @.str.138, i32 noundef %conv47.i) #12
  %148 = ptrtoint ptr %pl022 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pl022, align 4
  %150 = ptrtoint ptr %exp_fifo_level.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %exp_fifo_level.i, align 4
  %152 = ptrtoint ptr %vendor.i132 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %vendor.i132, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %153, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %149, ptr noundef nonnull @.str.141, i32 noundef %151, i32 noundef %155) #12
  br label %out

do.end58:                                         ; preds = %while.body43
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !389
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !390
  br label %while.cond38

while.end:                                        ; preds = %lor.rhs
  %156 = ptrtoint ptr %cur_transfer to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cur_transfer, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %157, i32 0, i32 2
  %158 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %len, align 4
  %160 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %actual_length, align 4
  %add64 = add i32 %161, %159
  store i32 %add64, ptr %actual_length, align 4
  %162 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %cur_msg, align 4
  %164 = load ptr, ptr %cur_transfer, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %164, i32 0, i32 18
  %165 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %transfer_list.i, align 4
  %cmp.not.i165 = icmp eq ptr %166, %163
  br i1 %cmp.not.i165, label %next_transfer.exit.thread, label %land.lhs.true

next_transfer.exit.thread:                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %167 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr inttoptr (i32 2 to ptr), ptr %state, align 4
  br label %while.cond.backedge

land.lhs.true:                                    ; preds = %while.end
  %add.ptr.i166 = getelementptr i8, ptr %166, i32 -84
  %168 = ptrtoint ptr %cur_transfer to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %add.ptr.i166, ptr %cur_transfer, align 4
  %169 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr inttoptr (i32 1 to ptr), ptr %state, align 4
  %170 = load ptr, ptr %cur_transfer, align 4
  %cs_change71 = getelementptr inbounds %struct.spi_transfer, ptr %170, i32 0, i32 7
  %171 = ptrtoint ptr %cs_change71 to i32
  call void @__asan_load1_noabort(i32 %171)
  %bf.load72 = load i8, ptr %cs_change71, align 4
  %172 = and i8 %bf.load72, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool76.not = icmp eq i8 %172, 0
  br i1 %tobool76.not, label %land.lhs.true.while.cond.backedge_crit_edge, label %if.then77

land.lhs.true.while.cond.backedge_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.then77:                                        ; preds = %land.lhs.true
  %173 = ptrtoint ptr %vendor.i132 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %vendor.i132, align 4
  %internal_cs_ctrl.i170 = getelementptr inbounds %struct.vendor_data, ptr %174, i32 0, i32 6
  %175 = ptrtoint ptr %internal_cs_ctrl.i170 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %internal_cs_ctrl.i170, align 4, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool.not.i171 = icmp eq i8 %176, 0
  br i1 %tobool.not.i171, label %if.else.i185, label %if.then.i182

if.then.i182:                                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  %177 = ptrtoint ptr %virtbase.i.i135 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %virtbase.i.i135, align 4
  %add.ptr.i.i173 = getelementptr i8, ptr %178, i32 48
  %179 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i173) #9, !srcloc !341
  %180 = tail call i16 @llvm.bswap.i16(i16 %179) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  %181 = ptrtoint ptr %cur_cs.i.i138 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %cur_cs.i.i138, align 4
  %shl.i.i176 = shl nuw i32 1, %182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  %183 = trunc i32 %shl.i.i176 to i16
  %conv6.i.i180 = or i16 %180, %183
  %184 = tail call i16 @llvm.bswap.i16(i16 %conv6.i.i180) #9
  %185 = ptrtoint ptr %virtbase.i.i135 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %virtbase.i.i135, align 4
  %add.ptr8.i.i181 = getelementptr i8, ptr %186, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i.i181, i16 %184) #9, !srcloc !343
  br label %while.cond.backedge

if.else.i185:                                     ; preds = %if.then77
  %187 = ptrtoint ptr %cur_gpiod.i146 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %cur_gpiod.i146, align 4
  %tobool1.not.i184 = icmp eq ptr %188, null
  br i1 %tobool1.not.i184, label %if.else.i185.while.cond.backedge_crit_edge, label %if.then2.i186

if.else.i185.while.cond.backedge_crit_edge:       ; preds = %if.else.i185
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.then2.i186:                                    ; preds = %if.else.i185
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %188, i32 noundef 0) #9
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then2.i186, %if.else.i185.while.cond.backedge_crit_edge, %if.then.i182, %land.lhs.true.while.cond.backedge_crit_edge, %next_transfer.exit.thread
  br label %while.cond

out:                                              ; preds = %print_current_status.exit, %if.then15, %while.cond.out_crit_edge, %while.cond.out_crit_edge216
  %189 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %state, align 4
  %switch.selectcmp = icmp eq ptr %190, inttoptr (i32 -2 to ptr)
  %switch.select = select i1 %switch.selectcmp, i32 -11, i32 -5
  %switch.selectcmp205 = icmp eq ptr %190, inttoptr (i32 2 to ptr)
  %switch.select206 = select i1 %switch.selectcmp205, i32 0, i32 %switch.select
  %status89 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 7
  %191 = ptrtoint ptr %status89 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %switch.select206, ptr %status89, align 4
  tail call fastcc void @giveback(ptr noundef %pl022)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_interrupt_dma_transfer(ptr noundef %pl022) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %next_msg_cs_active = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 11
  %0 = ptrtoint ptr %next_msg_cs_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %next_msg_cs_active, align 4, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %vendor.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 1
  %2 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vendor.i, align 4
  %internal_cs_ctrl.i = getelementptr inbounds %struct.vendor_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %internal_cs_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %internal_cs_ctrl.i, align 4, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %virtbase.i.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 3
  %6 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virtbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 48
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #9, !srcloc !341
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  %cur_cs.i.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 27
  %10 = ptrtoint ptr %cur_cs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_cs.i.i, align 4
  %shl.i.i = shl nuw i32 1, %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  %12 = trunc i32 %shl.i.i to i16
  %13 = xor i16 %12, -1
  %conv6.i.i = and i16 %9, %13
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv6.i.i) #9
  %15 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %virtbase.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %16, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i.i, i16 %14) #9, !srcloc !343
  br label %if.end

if.else.i:                                        ; preds = %if.then
  %cur_gpiod.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 28
  %17 = ptrtoint ptr %cur_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cur_gpiod.i, align 4
  %tobool1.not.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i, label %if.else.i.if.end_crit_edge, label %if.then2.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %18, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then2.i, %if.else.i.if.end_crit_edge, %if.then.i, %entry.if.end_crit_edge
  %cur_transfer = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 9
  %19 = ptrtoint ptr %cur_transfer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cur_transfer, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i, align 4
  %cur_chip.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 10
  %23 = ptrtoint ptr %cur_chip.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur_chip.i, align 4
  %n_bytes.i = getelementptr inbounds %struct.chip_data, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %n_bytes.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %n_bytes.i, align 2
  %conv.i = zext i8 %26 to i32
  %rem.i = urem i32 %22, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then2, !prof !360

if.end.i:                                         ; preds = %if.end
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %20, align 4
  %tx.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 12
  %29 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %tx.i, align 4
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 %31
  %tx_end.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 13
  %32 = ptrtoint ptr %tx_end.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr.i, ptr %tx_end.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %20, i32 0, i32 1
  %33 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx_buf.i, align 4
  %rx.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 14
  %35 = ptrtoint ptr %rx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %rx.i, align 4
  %36 = load i32, ptr %len.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %34, i32 %36
  %rx_end.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 15
  %37 = ptrtoint ptr %rx_end.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr19.i, ptr %rx_end.i, align 4
  %tobool21.not.i = icmp eq ptr %28, null
  br i1 %tobool21.not.i, label %if.end.i.cond.end.i_crit_edge, label %cond.true.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %write.i = getelementptr inbounds %struct.chip_data, ptr %24, i32 0, i32 7
  %38 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %write.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %39, %cond.true.i ], [ 0, %if.end.i.cond.end.i_crit_edge ]
  %write23.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 17
  %40 = ptrtoint ptr %write23.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %cond.i, ptr %write23.i, align 4
  %tobool25.not.i = icmp eq ptr %34, null
  br i1 %tobool25.not.i, label %cond.end.i.if.end4_crit_edge, label %cond.true26.i

cond.end.i.if.end4_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

cond.true26.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %read.i = getelementptr inbounds %struct.chip_data, ptr %24, i32 0, i32 6
  %41 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %read.i, align 4
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %pl022 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pl022, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.122, i32 noundef %22, i32 noundef %conv.i) #12
  %45 = ptrtoint ptr %pl022 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pl022, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.125) #12
  %cur_msg = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 8
  %47 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cur_msg, align 4
  %state = getelementptr inbounds %struct.spi_message, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 -1 to ptr), ptr %state, align 4
  %50 = load ptr, ptr %cur_msg, align 4
  %status = getelementptr inbounds %struct.spi_message, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -5, ptr %status, align 4
  tail call fastcc void @giveback(ptr noundef %pl022)
  br label %cleanup

if.end4:                                          ; preds = %cond.true26.i, %cond.end.i.if.end4_crit_edge
  %cond30.i = phi i32 [ %42, %cond.true26.i ], [ 0, %cond.end.i.if.end4_crit_edge ]
  %read31.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 16
  %52 = ptrtoint ptr %read31.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %cond30.i, ptr %read31.i, align 4
  %53 = ptrtoint ptr %cur_chip.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cur_chip.i, align 4
  %enable_dma = getelementptr inbounds %struct.chip_data, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %enable_dma to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %enable_dma, align 1, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool5.not = icmp eq i8 %56, 0
  br i1 %tobool5.not, label %if.end4.do.body19_crit_edge, label %if.then6

if.end4.do.body19_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

if.then6:                                         ; preds = %if.end4
  %call7 = tail call fastcc i32 @configure_dma(ptr noundef %pl022)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.do.body19_crit_edge, label %do.body

if.then6.do.body19_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

do.body:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_interrupt_dma_transfer.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@do_interrupt_dma_transfer, %do.body19)) #9
          to label %if.then15 [label %do.body19], !srcloc !339

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %pl022 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pl022, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_interrupt_dma_transfer.__UNIQUE_ID_ddebug301, ptr noundef %58, ptr noundef nonnull @.str.144) #9
  br label %do.body19

do.body19:                                        ; preds = %if.then15, %do.body, %if.then6.do.body19_crit_edge, %if.end4.do.body19_crit_edge
  %irqflags.0 = phi i16 [ 2816, %if.then15 ], [ 2816, %if.end4.do.body19_crit_edge ], [ 0, %if.then6.do.body19_crit_edge ], [ 2816, %do.body ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !391
  tail call void @arm_heavy_mb() #9
  %virtbase = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 3
  %59 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %virtbase, align 4
  %add.ptr = getelementptr i8, ptr %60, i32 4
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !392
  %62 = or i16 %61, 512
  %63 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %virtbase, align 4
  %add.ptr27 = getelementptr i8, ptr %64, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr27, i16 %62) #9, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !393
  tail call void @arm_heavy_mb() #9
  %65 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %virtbase, align 4
  %add.ptr33 = getelementptr i8, ptr %66, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr33, i16 %irqflags.0) #9, !srcloc !343
  br label %cleanup

cleanup:                                          ; preds = %do.body19, %if.then2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @readwriter(ptr nocapture noundef %pl022) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @readwriter.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@readwriter, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !339

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %pl022 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pl022, align 4
  %rx = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 14
  %2 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx, align 4
  %rx_end = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 15
  %4 = ptrtoint ptr %rx_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_end, align 4
  %tx = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 12
  %6 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx, align 4
  %tx_end = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 13
  %8 = ptrtoint ptr %tx_end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_end, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @readwriter.__UNIQUE_ID_ddebug294, ptr noundef %1, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.127, ptr noundef %3, ptr noundef %5, ptr noundef %7, ptr noundef %9) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rx8 = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 14
  %virtbase = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 3
  %10 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %virtbase, align 4
  %add.ptr208 = getelementptr i8, ptr %11, i32 12
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr208) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !394
  %13 = and i16 %12, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool7.not209 = icmp eq i16 %13, 0
  br i1 %tobool7.not209, label %do.end.while.end_crit_edge, label %land.rhs.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %do.end
  %rx_end9 = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 15
  %read = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 16
  %cur_chip = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 10
  %exp_fifo_level = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 18
  br label %land.rhs

land.rhs:                                         ; preds = %sw.epilog.land.rhs_crit_edge, %land.rhs.lr.ph
  %14 = ptrtoint ptr %rx8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx8, align 4
  %16 = ptrtoint ptr %rx_end9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_end9, align 4
  %cmp = icmp ult ptr %15, %17
  br i1 %cmp, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %18 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %read, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %19, label %while.body.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb18
    i32 2, label %sw.bb30
    i32 3, label %sw.bb39
  ]

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %virtbase, align 4
  %add.ptr14 = getelementptr i8, ptr %22, i32 8
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr14) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !395
  br label %sw.epilog

sw.bb18:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %virtbase, align 4
  %add.ptr22 = getelementptr i8, ptr %25, i32 8
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr22) #9, !srcloc !341
  %27 = lshr i16 %26, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !396
  %conv28 = trunc i16 %27 to i8
  %28 = ptrtoint ptr %rx8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx8, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv28, ptr %29, align 1
  br label %sw.epilog

sw.bb30:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %virtbase, align 4
  %add.ptr34 = getelementptr i8, ptr %32, i32 8
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr34) #9, !srcloc !341
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !397
  %35 = ptrtoint ptr %rx8 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx8, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %34, ptr %36, align 2
  br label %sw.epilog

sw.bb39:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %virtbase, align 4
  %add.ptr43 = getelementptr i8, ptr %39, i32 8
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #9, !srcloc !383
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !398
  %42 = ptrtoint ptr %rx8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rx8, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %41, ptr %43, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb39, %sw.bb30, %sw.bb18, %sw.bb, %while.body.sw.epilog_crit_edge
  %45 = ptrtoint ptr %cur_chip to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur_chip, align 4
  %n_bytes = getelementptr inbounds %struct.chip_data, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %n_bytes to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %n_bytes, align 2
  %conv48 = zext i8 %48 to i32
  %49 = ptrtoint ptr %rx8 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rx8, align 4
  %add.ptr50 = getelementptr i8, ptr %50, i32 %conv48
  store ptr %add.ptr50, ptr %rx8, align 4
  %51 = ptrtoint ptr %exp_fifo_level to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %exp_fifo_level, align 4
  %dec = add i32 %52, -1
  store i32 %dec, ptr %exp_fifo_level, align 4
  %53 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %virtbase, align 4
  %add.ptr = getelementptr i8, ptr %54, i32 12
  %55 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !394
  %56 = and i16 %55, 1024
  %tobool7.not = icmp eq i16 %56, 0
  br i1 %tobool7.not, label %sw.epilog.while.end_crit_edge, label %sw.epilog.land.rhs_crit_edge

sw.epilog.land.rhs_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %land.rhs.while.end_crit_edge, %do.end.while.end_crit_edge
  %tx56 = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 12
  %exp_fifo_level52 = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 18
  %vendor = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 1
  %57 = ptrtoint ptr %exp_fifo_level52 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %exp_fifo_level52, align 4
  %59 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vendor, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %62)
  %cmp53213 = icmp ult i32 %58, %62
  br i1 %cmp53213, label %land.rhs55.lr.ph, label %while.end.while.end159_crit_edge

while.end.while.end159_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end159

land.rhs55.lr.ph:                                 ; preds = %while.end
  %tx_end57 = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 13
  %write = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 17
  %cur_chip87 = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 10
  %rx_end106 = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 15
  %read111 = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 16
  br label %land.rhs55

land.rhs55:                                       ; preds = %while.end158.land.rhs55_crit_edge, %land.rhs55.lr.ph
  %63 = ptrtoint ptr %tx56 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx56, align 4
  %65 = ptrtoint ptr %tx_end57 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tx_end57, align 4
  %cmp58 = icmp ult ptr %64, %66
  br i1 %cmp58, label %while.body61, label %land.rhs55.while.end159_crit_edge

land.rhs55.while.end159_crit_edge:                ; preds = %land.rhs55
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end159

while.body61:                                     ; preds = %land.rhs55
  %67 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %write, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %68, label %while.body61.sw.epilog86_crit_edge [
    i32 0, label %do.body63
    i32 1, label %do.body68
    i32 2, label %do.body75
    i32 3, label %do.body81
  ]

while.body61.sw.epilog86_crit_edge:               ; preds = %while.body61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog86

do.body63:                                        ; preds = %while.body61
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !399
  tail call void @arm_heavy_mb() #9
  %70 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %virtbase, align 4
  %add.ptr66 = getelementptr i8, ptr %71, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr66, i16 0) #9, !srcloc !343
  br label %sw.epilog86

do.body68:                                        ; preds = %while.body61
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !400
  tail call void @arm_heavy_mb() #9
  %72 = ptrtoint ptr %tx56 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tx56, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %73, align 1
  %conv71 = zext i8 %75 to i16
  %76 = shl nuw i16 %conv71, 8
  %77 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %virtbase, align 4
  %add.ptr73 = getelementptr i8, ptr %78, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr73, i16 %76) #9, !srcloc !343
  br label %sw.epilog86

do.body75:                                        ; preds = %while.body61
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !401
  tail call void @arm_heavy_mb() #9
  %79 = ptrtoint ptr %tx56 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tx56, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %80, align 2
  %83 = tail call i16 @llvm.bswap.i16(i16 %82)
  %84 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %virtbase, align 4
  %add.ptr79 = getelementptr i8, ptr %85, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr79, i16 %83) #9, !srcloc !343
  br label %sw.epilog86

do.body81:                                        ; preds = %while.body61
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !402
  tail call void @arm_heavy_mb() #9
  %86 = ptrtoint ptr %tx56 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tx56, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %89)
  %91 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %virtbase, align 4
  %add.ptr85 = getelementptr i8, ptr %92, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 %90) #9, !srcloc !347
  br label %sw.epilog86

sw.epilog86:                                      ; preds = %do.body81, %do.body75, %do.body68, %do.body63, %while.body61.sw.epilog86_crit_edge
  %93 = ptrtoint ptr %cur_chip87 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cur_chip87, align 4
  %n_bytes88 = getelementptr inbounds %struct.chip_data, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %n_bytes88 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %n_bytes88, align 2
  %conv89 = zext i8 %96 to i32
  %97 = ptrtoint ptr %tx56 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tx56, align 4
  %add.ptr91 = getelementptr i8, ptr %98, i32 %conv89
  store ptr %add.ptr91, ptr %tx56, align 4
  %99 = ptrtoint ptr %exp_fifo_level52 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %exp_fifo_level52, align 4
  %inc = add i32 %100, 1
  store i32 %inc, ptr %exp_fifo_level52, align 4
  %101 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %virtbase, align 4
  %add.ptr97211 = getelementptr i8, ptr %102, i32 12
  %103 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr97211) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !403
  %104 = and i16 %103, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %tobool103.not212 = icmp eq i16 %104, 0
  br i1 %tobool103.not212, label %sw.epilog86.while.end158_crit_edge, label %sw.epilog86.land.rhs104_crit_edge

sw.epilog86.land.rhs104_crit_edge:                ; preds = %sw.epilog86
  br label %land.rhs104

sw.epilog86.while.end158_crit_edge:               ; preds = %sw.epilog86
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end158

land.rhs104:                                      ; preds = %sw.epilog150.land.rhs104_crit_edge, %sw.epilog86.land.rhs104_crit_edge
  %105 = ptrtoint ptr %rx8 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rx8, align 4
  %107 = ptrtoint ptr %rx_end106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rx_end106, align 4
  %cmp107 = icmp ult ptr %106, %108
  br i1 %cmp107, label %while.body110, label %land.rhs104.while.end158_crit_edge

land.rhs104.while.end158_crit_edge:               ; preds = %land.rhs104
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end158

while.body110:                                    ; preds = %land.rhs104
  %109 = ptrtoint ptr %read111 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %read111, align 4
  %111 = zext i32 %110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %110, label %while.body110.sw.epilog150_crit_edge [
    i32 0, label %sw.bb112
    i32 1, label %sw.bb120
    i32 2, label %sw.bb132
    i32 3, label %sw.bb141
  ]

while.body110.sw.epilog150_crit_edge:             ; preds = %while.body110
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog150

sw.bb112:                                         ; preds = %while.body110
  call void @__sanitizer_cov_trace_pc() #11
  %112 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %virtbase, align 4
  %add.ptr116 = getelementptr i8, ptr %113, i32 8
  %114 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr116) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !404
  br label %sw.epilog150

sw.bb120:                                         ; preds = %while.body110
  call void @__sanitizer_cov_trace_pc() #11
  %115 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %virtbase, align 4
  %add.ptr124 = getelementptr i8, ptr %116, i32 8
  %117 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr124) #9, !srcloc !341
  %118 = lshr i16 %117, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  %conv130 = trunc i16 %118 to i8
  %119 = ptrtoint ptr %rx8 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rx8, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv130, ptr %120, align 1
  br label %sw.epilog150

sw.bb132:                                         ; preds = %while.body110
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %virtbase, align 4
  %add.ptr136 = getelementptr i8, ptr %123, i32 8
  %124 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr136) #9, !srcloc !341
  %125 = tail call i16 @llvm.bswap.i16(i16 %124)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !406
  %126 = ptrtoint ptr %rx8 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %rx8, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %125, ptr %127, align 2
  br label %sw.epilog150

sw.bb141:                                         ; preds = %while.body110
  call void @__sanitizer_cov_trace_pc() #11
  %129 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %virtbase, align 4
  %add.ptr145 = getelementptr i8, ptr %130, i32 8
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr145) #9, !srcloc !383
  %132 = tail call i32 @llvm.bswap.i32(i32 %131)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !407
  %133 = ptrtoint ptr %rx8 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rx8, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %132, ptr %134, align 4
  br label %sw.epilog150

sw.epilog150:                                     ; preds = %sw.bb141, %sw.bb132, %sw.bb120, %sw.bb112, %while.body110.sw.epilog150_crit_edge
  %136 = ptrtoint ptr %cur_chip87 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cur_chip87, align 4
  %n_bytes152 = getelementptr inbounds %struct.chip_data, ptr %137, i32 0, i32 4
  %138 = ptrtoint ptr %n_bytes152 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %n_bytes152, align 2
  %conv153 = zext i8 %139 to i32
  %140 = ptrtoint ptr %rx8 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %rx8, align 4
  %add.ptr155 = getelementptr i8, ptr %141, i32 %conv153
  store ptr %add.ptr155, ptr %rx8, align 4
  %142 = ptrtoint ptr %exp_fifo_level52 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %exp_fifo_level52, align 4
  %dec157 = add i32 %143, -1
  store i32 %dec157, ptr %exp_fifo_level52, align 4
  %144 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %virtbase, align 4
  %add.ptr97 = getelementptr i8, ptr %145, i32 12
  %146 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr97) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !403
  %147 = and i16 %146, 1024
  %tobool103.not = icmp eq i16 %147, 0
  br i1 %tobool103.not, label %sw.epilog150.while.end158_crit_edge, label %sw.epilog150.land.rhs104_crit_edge

sw.epilog150.land.rhs104_crit_edge:               ; preds = %sw.epilog150
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs104

sw.epilog150.while.end158_crit_edge:              ; preds = %sw.epilog150
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end158

while.end158:                                     ; preds = %sw.epilog150.while.end158_crit_edge, %land.rhs104.while.end158_crit_edge, %sw.epilog86.while.end158_crit_edge
  %148 = ptrtoint ptr %exp_fifo_level52 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %exp_fifo_level52, align 4
  %150 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %vendor, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %151, align 4
  %cmp53 = icmp ult i32 %149, %153
  br i1 %cmp53, label %while.end158.land.rhs55_crit_edge, label %while.end158.while.end159_crit_edge

while.end158.while.end159_crit_edge:              ; preds = %while.end158
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end159

while.end158.land.rhs55_crit_edge:                ; preds = %while.end158
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs55

while.end159:                                     ; preds = %while.end158.while.end159_crit_edge, %land.rhs55.while.end159_crit_edge, %while.end.while.end159_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @giveback(ptr nocapture noundef %pl022) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %next_msg_cs_active = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 11
  %0 = ptrtoint ptr %next_msg_cs_active to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %next_msg_cs_active, align 4
  %cur_msg = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 8
  %1 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cur_msg, align 4
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 -84
  %delay.i = getelementptr i8, ptr %4, i32 -38
  %call.i = tail call i32 @spi_delay_exec(ptr noundef %delay.i, ptr noundef %add.ptr) #9
  %cs_change = getelementptr i8, ptr %4, i32 -40
  %5 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %cs_change, align 4
  %6 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then:                                          ; preds = %entry
  %master = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 5
  %7 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %master, align 4
  %call1 = tail call ptr @spi_get_next_queued_message(ptr noundef %8) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.if.then9_crit_edge, label %land.lhs.true

if.then.if.then9_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

land.lhs.true:                                    ; preds = %if.then
  %spi = getelementptr inbounds %struct.spi_message, ptr %call1, i32 0, i32 1
  %9 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spi, align 4
  %11 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_msg, align 4
  %spi4 = getelementptr inbounds %struct.spi_message, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %spi4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spi4, align 4
  %cmp.not = icmp eq ptr %10, %14
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true.if.then9_crit_edge

land.lhs.true.if.then9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

lor.lhs.false:                                    ; preds = %land.lhs.true
  %15 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur_msg, align 4
  %state = getelementptr inbounds %struct.spi_message, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 4
  %cmp8 = icmp eq ptr %18, inttoptr (i32 -1 to ptr)
  br i1 %cmp8, label %lor.lhs.false.if.then9_crit_edge, label %if.else

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %land.lhs.true.if.then9_crit_edge, %if.then.if.then9_crit_edge
  %vendor.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 1
  %19 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vendor.i, align 4
  %internal_cs_ctrl.i = getelementptr inbounds %struct.vendor_data, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %internal_cs_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %internal_cs_ctrl.i, align 4, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %virtbase.i.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 3
  %23 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %virtbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 48
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #9, !srcloc !341
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  %cur_cs.i.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 27
  %27 = ptrtoint ptr %cur_cs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cur_cs.i.i, align 4
  %shl.i.i = shl nuw i32 1, %28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  %29 = trunc i32 %shl.i.i to i16
  %conv6.i.i = or i16 %26, %29
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv6.i.i) #9
  %31 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %virtbase.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %32, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i.i, i16 %30) #9, !srcloc !343
  br label %if.end12

if.else.i:                                        ; preds = %if.then9
  %cur_gpiod.i = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 28
  %33 = ptrtoint ptr %cur_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur_gpiod.i, align 4
  %tobool1.not.i = icmp eq ptr %34, null
  br i1 %tobool1.not.i, label %if.else.i.if.end12_crit_edge, label %if.then2.i

if.else.i.if.end12_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %34, i32 noundef 0) #9
  br label %if.end12

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %next_msg_cs_active to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %next_msg_cs_active, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then2.i, %if.else.i.if.end12_crit_edge, %if.then.i, %entry.if.end12_crit_edge
  %36 = ptrtoint ptr %cur_msg to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %cur_msg, align 4
  %cur_transfer = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 9
  %37 = ptrtoint ptr %cur_transfer to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %cur_transfer, align 4
  %cur_chip = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 10
  %38 = ptrtoint ptr %cur_chip to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %cur_chip, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !408
  tail call void @arm_heavy_mb() #9
  %virtbase = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 3
  %39 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %virtbase, align 4
  %add.ptr14 = getelementptr i8, ptr %40, i32 4
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr14) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !409
  %42 = and i16 %41, -513
  %43 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %virtbase, align 4
  %add.ptr20 = getelementptr i8, ptr %44, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr20, i16 %42) #9, !srcloc !343
  %master21 = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 5
  %45 = ptrtoint ptr %master21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %master21, align 4
  tail call void @spi_finalize_current_message(ptr noundef %46) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_delay_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_next_queued_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @configure_dma(ptr noundef %pl022) unnamed_addr #2 align 64 {
entry:
  %rx_conf = alloca %struct.dma_slave_config, align 4
  %tx_conf = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rx_conf) #9
  %0 = getelementptr inbounds i8, ptr %rx_conf, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %rx_conf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %rx_conf, align 4
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %rx_conf, i32 0, i32 1
  %phybase = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 2
  %3 = ptrtoint ptr %phybase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phybase, align 4
  %add = add i32 %4, 8
  %5 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %src_addr, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %tx_conf) #9
  %6 = getelementptr inbounds i8, ptr %tx_conf, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 44)
  %8 = ptrtoint ptr %tx_conf to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %tx_conf, align 4
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %tx_conf, i32 0, i32 2
  %9 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %dst_addr, align 4
  %dma_rx_channel = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 21
  %10 = ptrtoint ptr %dma_rx_channel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_rx_channel, align 4
  %dma_tx_channel = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 22
  %12 = ptrtoint ptr %dma_tx_channel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_tx_channel, align 4
  %tobool.not = icmp eq ptr %11, null
  %tobool6.not = icmp eq ptr %13, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_lev_trig = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 19
  %14 = ptrtoint ptr %rx_lev_trig to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_lev_trig, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %16 = icmp ult i32 %15, 5
  br i1 %16, label %switch.lookup, label %sw.default

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %vendor = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 1
  %17 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vendor, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %shr = ashr i32 %20, 1
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.configure_dma, i32 0, i32 %15
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %sw.default
  %shr.sink = phi i32 [ %shr, %sw.default ], [ %switch.load, %switch.lookup ]
  %src_maxburst15 = getelementptr inbounds %struct.dma_slave_config, ptr %rx_conf, i32 0, i32 5
  %22 = ptrtoint ptr %src_maxburst15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr.sink, ptr %src_maxburst15, align 4
  %tx_lev_trig = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 20
  %23 = ptrtoint ptr %tx_lev_trig to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_lev_trig, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %24)
  %25 = icmp ult i32 %24, 5
  br i1 %25, label %switch.lookup252, label %sw.default25

sw.default25:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %vendor26 = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 1
  %26 = ptrtoint ptr %vendor26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vendor26, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %shr28 = ashr i32 %29, 1
  br label %sw.epilog30

switch.lookup252:                                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep253 = getelementptr inbounds [5 x i32], ptr @switch.table.configure_dma.171, i32 0, i32 %24
  %30 = ptrtoint ptr %switch.gep253 to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load254 = load i32, ptr %switch.gep253, align 4
  br label %sw.epilog30

sw.epilog30:                                      ; preds = %switch.lookup252, %sw.default25
  %shr28.sink = phi i32 [ %shr28, %sw.default25 ], [ %switch.load254, %switch.lookup252 ]
  %dst_maxburst29 = getelementptr inbounds %struct.dma_slave_config, ptr %tx_conf, i32 0, i32 6
  %31 = ptrtoint ptr %dst_maxburst29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shr28.sink, ptr %dst_maxburst29, align 4
  %read = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 16
  %32 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %read, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %34 = icmp ult i32 %33, 4
  br i1 %34, label %switch.lookup255, label %sw.epilog30.sw.epilog38_crit_edge

sw.epilog30.sw.epilog38_crit_edge:                ; preds = %sw.epilog30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog38

switch.lookup255:                                 ; preds = %sw.epilog30
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep256 = getelementptr inbounds [4 x i32], ptr @switch.table.configure_dma.172, i32 0, i32 %33
  %35 = ptrtoint ptr %switch.gep256 to i32
  call void @__asan_load4_noabort(i32 %35)
  %switch.load257 = load i32, ptr %switch.gep256, align 4
  %src_addr_width37 = getelementptr inbounds %struct.dma_slave_config, ptr %rx_conf, i32 0, i32 3
  %36 = ptrtoint ptr %src_addr_width37 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %switch.load257, ptr %src_addr_width37, align 4
  br label %sw.epilog38

sw.epilog38:                                      ; preds = %switch.lookup255, %sw.epilog30.sw.epilog38_crit_edge
  %write = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 17
  %37 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %write, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %39 = icmp ult i32 %38, 4
  br i1 %39, label %switch.lookup258, label %sw.epilog38.sw.epilog46_crit_edge

sw.epilog38.sw.epilog46_crit_edge:                ; preds = %sw.epilog38
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog46

switch.lookup258:                                 ; preds = %sw.epilog38
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep259 = getelementptr inbounds [4 x i32], ptr @switch.table.configure_dma.173, i32 0, i32 %38
  %40 = ptrtoint ptr %switch.gep259 to i32
  call void @__asan_load4_noabort(i32 %40)
  %switch.load260 = load i32, ptr %switch.gep259, align 4
  %dst_addr_width45 = getelementptr inbounds %struct.dma_slave_config, ptr %tx_conf, i32 0, i32 4
  %41 = ptrtoint ptr %dst_addr_width45 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %switch.load260, ptr %dst_addr_width45, align 4
  br label %sw.epilog46

sw.epilog46:                                      ; preds = %switch.lookup258, %sw.epilog38.sw.epilog46_crit_edge
  %src_addr_width47 = getelementptr inbounds %struct.dma_slave_config, ptr %rx_conf, i32 0, i32 3
  %42 = ptrtoint ptr %src_addr_width47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %src_addr_width47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp = icmp eq i32 %43, 0
  br i1 %cmp, label %if.then48, label %sw.epilog46.if.end51_crit_edge

sw.epilog46.if.end51_crit_edge:                   ; preds = %sw.epilog46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then48:                                        ; preds = %sw.epilog46
  call void @__sanitizer_cov_trace_pc() #11
  %dst_addr_width49 = getelementptr inbounds %struct.dma_slave_config, ptr %tx_conf, i32 0, i32 4
  %44 = ptrtoint ptr %dst_addr_width49 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dst_addr_width49, align 4
  %46 = ptrtoint ptr %src_addr_width47 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %src_addr_width47, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %sw.epilog46.if.end51_crit_edge
  %dst_addr_width52 = getelementptr inbounds %struct.dma_slave_config, ptr %tx_conf, i32 0, i32 4
  %47 = ptrtoint ptr %dst_addr_width52 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dst_addr_width52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp53 = icmp eq i32 %48, 0
  br i1 %cmp53, label %if.then54, label %if.end51.do.body_crit_edge

if.end51.do.body_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %src_addr_width47 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %src_addr_width47, align 4
  %51 = ptrtoint ptr %dst_addr_width52 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %dst_addr_width52, align 4
  br label %do.body

do.body:                                          ; preds = %if.then54, %if.end51.do.body_crit_edge
  %52 = ptrtoint ptr %src_addr_width47 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %src_addr_width47, align 4
  %54 = ptrtoint ptr %dst_addr_width52 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dst_addr_width52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp60.not = icmp eq i32 %53, %55
  br i1 %cmp60.not, label %do.end70, label %do.body64, !prof !360

do.body64:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/spi/spi-pl022.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1020, 0\0A.popsection", ""() #9, !srcloc !410
  unreachable

do.end70:                                         ; preds = %do.body
  %56 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %11, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %57, i32 0, i32 44
  %58 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %59, null
  br i1 %tobool.not.i, label %do.end70.dmaengine_slave_config.exit_crit_edge, label %if.then.i

do.end70.dmaengine_slave_config.exit_crit_edge:   ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_slave_config.exit

if.then.i:                                        ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 %59(ptr noundef nonnull %11, ptr noundef nonnull %rx_conf) #9
  br label %dmaengine_slave_config.exit

dmaengine_slave_config.exit:                      ; preds = %if.then.i, %do.end70.dmaengine_slave_config.exit_crit_edge
  %60 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %13, align 4
  %device_config.i216 = getelementptr inbounds %struct.dma_device, ptr %61, i32 0, i32 44
  %62 = ptrtoint ptr %device_config.i216 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %device_config.i216, align 4
  %tobool.not.i217 = icmp eq ptr %63, null
  br i1 %tobool.not.i217, label %dmaengine_slave_config.exit.dmaengine_slave_config.exit220_crit_edge, label %if.then.i219

dmaengine_slave_config.exit.dmaengine_slave_config.exit220_crit_edge: ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_slave_config.exit220

if.then.i219:                                     ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i218 = call i32 %63(ptr noundef nonnull %13, ptr noundef nonnull %tx_conf) #9
  br label %dmaengine_slave_config.exit220

dmaengine_slave_config.exit220:                   ; preds = %if.then.i219, %dmaengine_slave_config.exit.dmaengine_slave_config.exit220_crit_edge
  %cur_transfer = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 9
  %64 = ptrtoint ptr %cur_transfer to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cur_transfer, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len, align 4
  %sub = add i32 %67, 4095
  %div215 = lshr i32 %sub, 12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @configure_dma.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@configure_dma, %do.end87)) #9
          to label %if.then84 [label %do.end87], !srcloc !339

if.then84:                                        ; preds = %dmaengine_slave_config.exit220
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %pl022 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pl022, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @configure_dma.__UNIQUE_ID_ddebug297, ptr noundef %69, ptr noundef nonnull @.str.146, i32 noundef %div215) #9
  br label %do.end87

do.end87:                                         ; preds = %if.then84, %dmaengine_slave_config.exit220
  %sgt_rx = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 23
  %call88 = call i32 @sg_alloc_table(ptr noundef %sgt_rx, i32 noundef %div215, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %do.end87.cleanup_crit_edge

do.end87.cleanup_crit_edge:                       ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end91:                                         ; preds = %do.end87
  %sgt_tx = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 24
  %call92 = call i32 @sg_alloc_table(ptr noundef %sgt_tx, i32 noundef %div215, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.end91.err_alloc_tx_sg_crit_edge

if.end91.err_alloc_tx_sg_crit_edge:               ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_alloc_tx_sg

if.end95:                                         ; preds = %if.end91
  %rx = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 14
  %70 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rx, align 4
  %72 = ptrtoint ptr %cur_transfer to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cur_transfer, align 4
  %len97 = getelementptr inbounds %struct.spi_transfer, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %len97 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len97, align 4
  call fastcc void @setup_dma_scatter(ptr noundef %pl022, ptr noundef %71, i32 noundef %75, ptr noundef %sgt_rx)
  %tx = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 12
  %76 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tx, align 4
  %78 = ptrtoint ptr %cur_transfer to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cur_transfer, align 4
  %len100 = getelementptr inbounds %struct.spi_transfer, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %len100 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len100, align 4
  call fastcc void @setup_dma_scatter(ptr noundef %pl022, ptr noundef %77, i32 noundef %81, ptr noundef %sgt_tx)
  %82 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %11, align 4
  %dev102 = getelementptr inbounds %struct.dma_device, ptr %83, i32 0, i32 15
  %84 = ptrtoint ptr %dev102 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev102, align 4
  %86 = ptrtoint ptr %sgt_rx to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sgt_rx, align 4
  %nents = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 23, i32 1
  %88 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %nents, align 4
  %call105 = call i32 @dma_map_sg_attrs(ptr noundef %85, ptr noundef %87, i32 noundef %89, i32 noundef 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end95.err_rx_sgmap_crit_edge, label %if.end108

if.end95.err_rx_sgmap_crit_edge:                  ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rx_sgmap

if.end108:                                        ; preds = %if.end95
  %90 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %13, align 4
  %dev110 = getelementptr inbounds %struct.dma_device, ptr %91, i32 0, i32 15
  %92 = ptrtoint ptr %dev110 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev110, align 4
  %94 = ptrtoint ptr %sgt_tx to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %sgt_tx, align 4
  %nents114 = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 24, i32 1
  %96 = ptrtoint ptr %nents114 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %nents114, align 4
  %call115 = call i32 @dma_map_sg_attrs(ptr noundef %93, ptr noundef %95, i32 noundef %97, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end108.err_tx_sgmap_crit_edge, label %lor.lhs.false.i

if.end108.err_tx_sgmap_crit_edge:                 ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_tx_sgmap

lor.lhs.false.i:                                  ; preds = %if.end108
  %98 = ptrtoint ptr %sgt_rx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sgt_rx, align 4
  %100 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %11, align 4
  %tobool1.not.i = icmp eq ptr %101, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.err_rxdesc_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.err_rxdesc_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rxdesc

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %101, i32 0, i32 39
  %102 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %103, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.err_rxdesc_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.err_rxdesc_crit_edge:            ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rxdesc

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i222 = call ptr %103(ptr noundef nonnull %11, ptr noundef %99, i32 noundef %call105, i32 noundef 2, i32 noundef 3, ptr noundef null) #9
  %tobool122.not = icmp eq ptr %call.i222, null
  br i1 %tobool122.not, label %dmaengine_prep_slave_sg.exit.err_rxdesc_crit_edge, label %lor.lhs.false.i226

dmaengine_prep_slave_sg.exit.err_rxdesc_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rxdesc

lor.lhs.false.i226:                               ; preds = %dmaengine_prep_slave_sg.exit
  %104 = ptrtoint ptr %sgt_tx to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sgt_tx, align 4
  %106 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %13, align 4
  %tobool1.not.i225 = icmp eq ptr %107, null
  br i1 %tobool1.not.i225, label %lor.lhs.false.i226.err_txdesc_crit_edge, label %lor.lhs.false2.i229

lor.lhs.false.i226.err_txdesc_crit_edge:          ; preds = %lor.lhs.false.i226
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_txdesc

lor.lhs.false2.i229:                              ; preds = %lor.lhs.false.i226
  %device_prep_slave_sg.i227 = getelementptr inbounds %struct.dma_device, ptr %107, i32 0, i32 39
  %108 = ptrtoint ptr %device_prep_slave_sg.i227 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %device_prep_slave_sg.i227, align 4
  %tobool4.not.i228 = icmp eq ptr %109, null
  br i1 %tobool4.not.i228, label %lor.lhs.false2.i229.err_txdesc_crit_edge, label %dmaengine_prep_slave_sg.exit233

lor.lhs.false2.i229.err_txdesc_crit_edge:         ; preds = %lor.lhs.false2.i229
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_txdesc

dmaengine_prep_slave_sg.exit233:                  ; preds = %lor.lhs.false2.i229
  %call.i230 = call ptr %109(ptr noundef nonnull %13, ptr noundef %105, i32 noundef %call115, i32 noundef 1, i32 noundef 3, ptr noundef null) #9
  %tobool128.not = icmp eq ptr %call.i230, null
  br i1 %tobool128.not, label %dmaengine_prep_slave_sg.exit233.err_txdesc_crit_edge, label %if.end130

dmaengine_prep_slave_sg.exit233.err_txdesc_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit233
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_txdesc

if.end130:                                        ; preds = %dmaengine_prep_slave_sg.exit233
  call void @__sanitizer_cov_trace_pc() #11
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i222, i32 0, i32 6
  %110 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @dma_callback, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i222, i32 0, i32 8
  %111 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %pl022, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i222, i32 0, i32 4
  %112 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %tx_submit.i, align 4
  %call.i234 = call i32 %113(ptr noundef nonnull %call.i222) #9
  %tx_submit.i235 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i230, i32 0, i32 4
  %114 = ptrtoint ptr %tx_submit.i235 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %tx_submit.i235, align 4
  %call.i236 = call i32 %115(ptr noundef nonnull %call.i230) #9
  %116 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %11, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %117, i32 0, i32 50
  %118 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %device_issue_pending.i, align 4
  call void %119(ptr noundef nonnull %11) #9
  %120 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %13, align 4
  %device_issue_pending.i237 = getelementptr inbounds %struct.dma_device, ptr %121, i32 0, i32 50
  %122 = ptrtoint ptr %device_issue_pending.i237 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %device_issue_pending.i237, align 4
  call void %123(ptr noundef nonnull %13) #9
  %dma_running = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 26
  %124 = ptrtoint ptr %dma_running to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 1, ptr %dma_running, align 4
  br label %cleanup

err_txdesc:                                       ; preds = %dmaengine_prep_slave_sg.exit233.err_txdesc_crit_edge, %lor.lhs.false2.i229.err_txdesc_crit_edge, %lor.lhs.false.i226.err_txdesc_crit_edge
  %125 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %13, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %126, i32 0, i32 47
  %127 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i238 = icmp eq ptr %128, null
  br i1 %tobool.not.i238, label %err_txdesc.err_rxdesc_crit_edge, label %if.then.i240

err_txdesc.err_rxdesc_crit_edge:                  ; preds = %err_txdesc
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rxdesc

if.then.i240:                                     ; preds = %err_txdesc
  call void @__sanitizer_cov_trace_pc() #11
  %call.i239 = call i32 %128(ptr noundef nonnull %13) #9
  br label %err_rxdesc

err_rxdesc:                                       ; preds = %if.then.i240, %err_txdesc.err_rxdesc_crit_edge, %dmaengine_prep_slave_sg.exit.err_rxdesc_crit_edge, %lor.lhs.false2.i.err_rxdesc_crit_edge, %lor.lhs.false.i.err_rxdesc_crit_edge
  %129 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %11, align 4
  %device_terminate_all.i241 = getelementptr inbounds %struct.dma_device, ptr %130, i32 0, i32 47
  %131 = ptrtoint ptr %device_terminate_all.i241 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %device_terminate_all.i241, align 4
  %tobool.not.i242 = icmp eq ptr %132, null
  br i1 %tobool.not.i242, label %err_rxdesc.dmaengine_terminate_all.exit245_crit_edge, label %if.then.i244

err_rxdesc.dmaengine_terminate_all.exit245_crit_edge: ; preds = %err_rxdesc
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_all.exit245

if.then.i244:                                     ; preds = %err_rxdesc
  call void @__sanitizer_cov_trace_pc() #11
  %call.i243 = call i32 %132(ptr noundef nonnull %11) #9
  br label %dmaengine_terminate_all.exit245

dmaengine_terminate_all.exit245:                  ; preds = %if.then.i244, %err_rxdesc.dmaengine_terminate_all.exit245_crit_edge
  %133 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %13, align 4
  %dev136 = getelementptr inbounds %struct.dma_device, ptr %134, i32 0, i32 15
  %135 = ptrtoint ptr %dev136 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev136, align 4
  %137 = ptrtoint ptr %sgt_tx to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %sgt_tx, align 4
  %139 = ptrtoint ptr %nents114 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %nents114, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %136, ptr noundef %138, i32 noundef %140, i32 noundef 1, i32 noundef 0) #9
  br label %err_tx_sgmap

err_tx_sgmap:                                     ; preds = %dmaengine_terminate_all.exit245, %if.end108.err_tx_sgmap_crit_edge
  %141 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %11, align 4
  %dev142 = getelementptr inbounds %struct.dma_device, ptr %142, i32 0, i32 15
  %143 = ptrtoint ptr %dev142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev142, align 4
  %145 = ptrtoint ptr %sgt_rx to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %sgt_rx, align 4
  %147 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %nents, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %144, ptr noundef %146, i32 noundef %148, i32 noundef 2, i32 noundef 0) #9
  br label %err_rx_sgmap

err_rx_sgmap:                                     ; preds = %err_tx_sgmap, %if.end95.err_rx_sgmap_crit_edge
  call void @sg_free_table(ptr noundef %sgt_tx) #9
  br label %err_alloc_tx_sg

err_alloc_tx_sg:                                  ; preds = %err_rx_sgmap, %if.end91.err_alloc_tx_sg_crit_edge
  call void @sg_free_table(ptr noundef %sgt_rx) #9
  br label %cleanup

cleanup:                                          ; preds = %err_alloc_tx_sg, %if.end130, %do.end87.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end130 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %do.end87.cleanup_crit_edge ], [ -12, %err_alloc_tx_sg ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tx_conf) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rx_conf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setup_dma_scatter(ptr nocapture noundef readonly %pl022, ptr noundef %buffer, i32 noundef %length, ptr nocapture noundef readonly %sgtab) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buffer, null
  %nents20 = getelementptr inbounds %struct.sg_table, ptr %sgtab, i32 0, i32 1
  %0 = ptrtoint ptr %nents20 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nents20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21134.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else17, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp21134.not, label %if.then.do.body58_crit_edge, label %for.body.preheader

if.then.do.body58_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body58

for.body.preheader:                               ; preds = %if.then
  %2 = ptrtoint ptr %sgtab to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sgtab, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %sg.0133 = phi ptr [ %call16, %for.inc.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %bytesleft.0132 = phi i32 [ %sub9, %for.inc.for.body_crit_edge ], [ %length, %for.body.preheader ]
  %bufp.0131 = phi ptr [ %add.ptr8, %for.inc.for.body_crit_edge ], [ %buffer, %for.body.preheader ]
  %i.0130 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %4 = ptrtoint ptr %bufp.0131 to i32
  %and = and i32 %4, 4095
  %sub = sub nuw nsw i32 4096, %and
  %5 = tail call i32 @llvm.umin.i32(i32 %bytesleft.0132, i32 %sub)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %sub5 = add i32 %4, 1073741824
  %shr = lshr i32 %sub5, 12
  %add.ptr = getelementptr %struct.page, ptr %6, i32 %shr
  %7 = ptrtoint ptr %sg.0133 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sg.0133, align 4
  %9 = ptrtoint ptr %add.ptr to i32
  %and2.i.i = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !360

do.body5.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !411
  unreachable

do.body11.i.i:                                    ; preds = %for.body
  %and.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !360

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !412
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %8, 3
  %or.i.i = or i32 %and.i.i, %9
  %10 = ptrtoint ptr %sg.0133 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i.i, ptr %sg.0133, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0133, i32 0, i32 1
  %11 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0133, i32 0, i32 2
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %5, ptr %length.i, align 4
  %add.ptr8 = getelementptr i8, ptr %bufp.0131, i32 %5
  %sub9 = sub i32 %bytesleft.0132, %5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_dma_scatter.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@setup_dma_scatter, %for.inc)) #9
          to label %if.then14 [label %for.inc], !srcloc !339

if.then14:                                        ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %pl022 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pl022, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_dma_scatter.__UNIQUE_ID_ddebug295, ptr noundef %14, ptr noundef nonnull @.str.148, ptr noundef %add.ptr8, i32 noundef %5, i32 noundef %sub9) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %sg_set_page.exit
  %inc = add nuw i32 %i.0130, 1
  %call16 = tail call ptr @sg_next(ptr noundef %sg.0133) #9
  %15 = ptrtoint ptr %nents20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nents20, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.body58_crit_edge

for.inc.do.body58_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body58

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.else17:                                        ; preds = %entry
  br i1 %cmp21134.not, label %if.else17.do.body58_crit_edge, label %for.body22.lr.ph

if.else17.do.body58_crit_edge:                    ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body58

for.body22.lr.ph:                                 ; preds = %if.else17
  %17 = ptrtoint ptr %sgtab to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sgtab, align 4
  %dummypage = getelementptr inbounds %struct.pl022, ptr %pl022, i32 0, i32 25
  br label %for.body22

for.body22:                                       ; preds = %for.inc53.for.body22_crit_edge, %for.body22.lr.ph
  %sg.1137 = phi ptr [ %18, %for.body22.lr.ph ], [ %call55, %for.inc53.for.body22_crit_edge ]
  %bytesleft.1136 = phi i32 [ %length, %for.body22.lr.ph ], [ %sub32, %for.inc53.for.body22_crit_edge ]
  %i.1135 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc54, %for.inc53.for.body22_crit_edge ]
  %19 = tail call i32 @llvm.umin.i32(i32 %bytesleft.1136, i32 4096)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %20 = load ptr, ptr @mem_map, align 4
  %21 = ptrtoint ptr %dummypage to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dummypage, align 4
  %23 = ptrtoint ptr %22 to i32
  %sub27 = add i32 %23, 1073741824
  %shr28 = lshr i32 %sub27, 12
  %add.ptr31 = getelementptr %struct.page, ptr %20, i32 %shr28
  %24 = ptrtoint ptr %sg.1137 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sg.1137, align 4
  %26 = ptrtoint ptr %add.ptr31 to i32
  %and2.i.i110 = and i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i110)
  %tobool.not.i.i111 = icmp eq i32 %and2.i.i110, 0
  br i1 %tobool.not.i.i111, label %do.body11.i.i115, label %do.body5.i.i112, !prof !360

do.body5.i.i112:                                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !411
  unreachable

do.body11.i.i115:                                 ; preds = %for.body22
  %and.i.i.i113 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i113)
  %tobool.i.not.i.i114 = icmp eq i32 %and.i.i.i113, 0
  br i1 %tobool.i.not.i.i114, label %sg_set_page.exit121, label %do.body19.i.i116, !prof !360

do.body19.i.i116:                                 ; preds = %do.body11.i.i115
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !412
  unreachable

sg_set_page.exit121:                              ; preds = %do.body11.i.i115
  %and.i.i117 = and i32 %25, 3
  %or.i.i118 = or i32 %and.i.i117, %26
  %27 = ptrtoint ptr %sg.1137 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i.i118, ptr %sg.1137, align 4
  %offset1.i119 = getelementptr inbounds %struct.scatterlist, ptr %sg.1137, i32 0, i32 1
  %28 = ptrtoint ptr %offset1.i119 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %offset1.i119, align 4
  %length.i120 = getelementptr inbounds %struct.scatterlist, ptr %sg.1137, i32 0, i32 2
  %29 = ptrtoint ptr %length.i120 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %19, ptr %length.i120, align 4
  %sub32 = sub i32 %bytesleft.1136, %19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_dma_scatter.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@setup_dma_scatter, %for.inc53)) #9
          to label %if.then47 [label %for.inc53], !srcloc !339

if.then47:                                        ; preds = %sg_set_page.exit121
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %pl022 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pl022, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_dma_scatter.__UNIQUE_ID_ddebug296, ptr noundef %31, ptr noundef nonnull @.str.149, i32 noundef %19, i32 noundef %sub32) #9
  br label %for.inc53

for.inc53:                                        ; preds = %if.then47, %sg_set_page.exit121
  %inc54 = add nuw i32 %i.1135, 1
  %call55 = tail call ptr @sg_next(ptr noundef %sg.1137) #9
  %32 = ptrtoint ptr %nents20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nents20, align 4
  %cmp21 = icmp ult i32 %inc54, %33
  br i1 %cmp21, label %for.inc53.for.body22_crit_edge, label %for.inc53.do.body58_crit_edge

for.inc53.do.body58_crit_edge:                    ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body58

for.inc53.for.body22_crit_edge:                   ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body22

do.body58:                                        ; preds = %for.inc53.do.body58_crit_edge, %if.else17.do.body58_crit_edge, %for.inc.do.body58_crit_edge, %if.then.do.body58_crit_edge
  %bytesleft.2 = phi i32 [ %length, %if.else17.do.body58_crit_edge ], [ %length, %if.then.do.body58_crit_edge ], [ %sub32, %for.inc53.do.body58_crit_edge ], [ %sub9, %for.inc.do.body58_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytesleft.2)
  %tobool59.not = icmp eq i32 %bytesleft.2, 0
  br i1 %tobool59.not, label %do.end75, label %do.body67, !prof !360

do.body67:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/spi/spi-pl022.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 904, 0\0A.popsection", ""() #9, !srcloc !413
  unreachable

do.end75:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_callback(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sgt_rx = getelementptr inbounds %struct.pl022, ptr %data, i32 0, i32 23
  %0 = ptrtoint ptr %sgt_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgt_rx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !370

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/spi/spi-pl022.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 805, 0\0A.popsection", ""() #9, !srcloc !414
  unreachable

do.end9:                                          ; preds = %entry
  %cur_msg = getelementptr inbounds %struct.pl022, ptr %data, i32 0, i32 8
  %2 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_msg, align 4
  %dma_tx_channel.i = getelementptr inbounds %struct.pl022, ptr %data, i32 0, i32 22
  %4 = ptrtoint ptr %dma_tx_channel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_tx_channel.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %sgt_tx.i = getelementptr inbounds %struct.pl022, ptr %data, i32 0, i32 24
  %10 = ptrtoint ptr %sgt_tx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sgt_tx.i, align 4
  %nents.i = getelementptr inbounds %struct.pl022, ptr %data, i32 0, i32 24, i32 1
  %12 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %9, ptr noundef %11, i32 noundef %13, i32 noundef 1, i32 noundef 0) #9
  %dma_rx_channel.i = getelementptr inbounds %struct.pl022, ptr %data, i32 0, i32 21
  %14 = ptrtoint ptr %dma_rx_channel.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_rx_channel.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %dev3.i = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev3.i, align 4
  %20 = ptrtoint ptr %sgt_rx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sgt_rx, align 4
  %nents6.i = getelementptr inbounds %struct.pl022, ptr %data, i32 0, i32 23, i32 1
  %22 = ptrtoint ptr %nents6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nents6.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %19, ptr noundef %21, i32 noundef %23, i32 noundef 2, i32 noundef 0) #9
  tail call void @sg_free_table(ptr noundef %sgt_rx) #9
  tail call void @sg_free_table(ptr noundef %sgt_tx.i) #9
  %cur_transfer = getelementptr inbounds %struct.pl022, ptr %data, i32 0, i32 9
  %24 = ptrtoint ptr %cur_transfer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cur_transfer, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 6
  %28 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %actual_length, align 4
  %add = add i32 %29, %27
  store i32 %add, ptr %actual_length, align 4
  %30 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cur_msg, align 4
  %32 = load ptr, ptr %cur_transfer, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %32, i32 0, i32 18
  %33 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %transfer_list.i, align 4
  %cmp.not.i = icmp eq ptr %34, %31
  br i1 %cmp.not.i, label %next_transfer.exit.thread, label %land.lhs.true

next_transfer.exit.thread:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  %state28 = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 9
  %35 = ptrtoint ptr %state28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 2 to ptr), ptr %state28, align 4
  br label %if.end14

land.lhs.true:                                    ; preds = %do.end9
  %add.ptr.i = getelementptr i8, ptr %34, i32 -84
  %36 = ptrtoint ptr %cur_transfer to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i, ptr %cur_transfer, align 4
  %state = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 9
  %37 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 1 to ptr), ptr %state, align 4
  %38 = load ptr, ptr %cur_transfer, align 4
  %cs_change = getelementptr inbounds %struct.spi_transfer, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load = load i8, ptr %cs_change, align 4
  %40 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool12.not = icmp eq i8 %40, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end14_crit_edge, label %if.then13

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then13:                                        ; preds = %land.lhs.true
  %vendor.i = getelementptr inbounds %struct.pl022, ptr %data, i32 0, i32 1
  %41 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vendor.i, align 4
  %internal_cs_ctrl.i = getelementptr inbounds %struct.vendor_data, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %internal_cs_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %internal_cs_ctrl.i, align 4, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i24

if.then.i24:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %virtbase.i.i = getelementptr inbounds %struct.pl022, ptr %data, i32 0, i32 3
  %45 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %virtbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 48
  %47 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #9, !srcloc !341
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  %cur_cs.i.i = getelementptr inbounds %struct.pl022, ptr %data, i32 0, i32 27
  %49 = ptrtoint ptr %cur_cs.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cur_cs.i.i, align 4
  %shl.i.i = shl nuw i32 1, %50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  %51 = trunc i32 %shl.i.i to i16
  %conv6.i.i = or i16 %48, %51
  %52 = tail call i16 @llvm.bswap.i16(i16 %conv6.i.i) #9
  %53 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %virtbase.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %54, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i.i, i16 %52) #9, !srcloc !343
  br label %if.end14

if.else.i:                                        ; preds = %if.then13
  %cur_gpiod.i = getelementptr inbounds %struct.pl022, ptr %data, i32 0, i32 28
  %55 = ptrtoint ptr %cur_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cur_gpiod.i, align 4
  %tobool1.not.i = icmp eq ptr %56, null
  br i1 %tobool1.not.i, label %if.else.i.if.end14_crit_edge, label %if.then2.i

if.else.i.if.end14_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %56, i32 noundef 0) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then2.i, %if.else.i.if.end14_crit_edge, %if.then.i24, %land.lhs.true.if.end14_crit_edge, %next_transfer.exit.thread
  %state.i = getelementptr inbounds %struct.pl022, ptr %data, i32 0, i32 7, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i25 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i25, label %if.then.i26, label %if.end14.tasklet_schedule.exit_crit_edge

if.end14.tasklet_schedule.exit_crit_edge:         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %tasklet_schedule.exit

if.then.i26:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %pump_transfers = getelementptr inbounds %struct.pl022, ptr %data, i32 0, i32 7
  tail call void @__tasklet_schedule(ptr noundef %pump_transfers) #9
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i26, %if.end14.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tasklet_schedule(ptr noundef %t) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__tasklet_schedule(ptr noundef %t) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 160)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 160)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !28, !29, !30, !32, !33, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !67, !68, !70, !71, !73, !74, !75, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !91, !93, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !112, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !150, !151, !152, !153, !154, !156, !157, !158, !160, !162, !163, !165, !166, !168, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !192, !193, !195, !196, !197, !199, !200, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !282, !283, !285, !286, !287, !288, !290, !291, !292, !294, !295, !296, !298, !299, !300, !302, !304, !306, !307, !308, !310, !311, !313, !314, !315, !317, !318, !319, !321, !323, !325, !327}
!llvm.module.flags = !{!329, !330, !331, !332, !333, !334, !335, !336}
!llvm.ident = !{!337}

!0 = !{ptr @__initcall__kmod_spi_pl022__318_2443_pl022_init4, !1, !"__initcall__kmod_spi_pl022__318_2443_pl022_init4", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-pl022.c", i32 2443, i32 1}
!2 = !{ptr @__exitcall_pl022_exit, !3, !"__exitcall_pl022_exit", i1 false, i1 false}
!3 = !{!"../drivers/spi/spi-pl022.c", i32 2449, i32 1}
!4 = !{ptr @__UNIQUE_ID_author319, !5, !"__UNIQUE_ID_author319", i1 false, i1 false}
!5 = !{!"../drivers/spi/spi-pl022.c", i32 2451, i32 1}
!6 = !{ptr @__UNIQUE_ID_description320, !7, !"__UNIQUE_ID_description320", i1 false, i1 false}
!7 = !{!"../drivers/spi/spi-pl022.c", i32 2452, i32 1}
!8 = !{ptr @__UNIQUE_ID_file321, !9, !"__UNIQUE_ID_file321", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-pl022.c", i32 2453, i32 1}
!10 = !{ptr @__UNIQUE_ID_license322, !9, !"__UNIQUE_ID_license322", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/spi/spi-pl022.c", i32 2431, i32 11}
!13 = !{ptr @pl022_driver, !14, !"pl022_driver", i1 false, i1 false}
!14 = !{!"../drivers/spi/spi-pl022.c", i32 2429, i32 27}
!15 = !{ptr @pl022_dev_pm_ops, !16, !"pl022_dev_pm_ops", i1 false, i1 false}
!16 = !{!"../drivers/spi/spi-pl022.c", i32 2339, i32 32}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/spi/spi-pl022.c", i32 2295, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pl022_suspend.__UNIQUE_ID_ddebug316, !18, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/spi/spi-pl022.c", i32 2306, i32 3}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @pl022_resume._entry, !24, !"_entry", i1 false, i1 false}
!29 = !{ptr @pl022_resume._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-pl022.c", i32 2311, i32 3}
!32 = !{ptr @pl022_resume.__UNIQUE_ID_ddebug317, !31, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/spi/spi-pl022.c", i32 2111, i32 2}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @pl022_probe._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @pl022_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/spi/spi-pl022.c", i32 2117, i32 3}
!41 = !{ptr @pl022_probe._entry.13, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @pl022_probe._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-pl022.c", i32 2124, i32 3}
!45 = !{ptr @pl022_probe._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @pl022_probe._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/spi/spi-pl022.c", i32 2156, i32 2}
!49 = !{ptr @pl022_probe.__UNIQUE_ID_ddebug313, !48, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/spi/spi-pl022.c", i32 2169, i32 2}
!52 = !{ptr @pl022_probe._entry.20, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @pl022_probe._entry_ptr.22, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/spi/spi-pl022.c", i32 2175, i32 3}
!56 = !{ptr @pl022_probe._entry.23, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @pl022_probe._entry_ptr.25, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/spi/spi-pl022.c", i32 2181, i32 3}
!60 = !{ptr @pl022_probe._entry.26, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @pl022_probe._entry_ptr.28, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/spi/spi-pl022.c", i32 2195, i32 10}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/spi/spi-pl022.c", i32 2197, i32 3}
!66 = !{ptr @pl022_probe._entry.30, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @pl022_probe._entry_ptr.32, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/spi/spi-pl022.c", i32 2204, i32 3}
!70 = !{ptr @pl022_probe.__UNIQUE_ID_ddebug314, !69, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/spi/spi-pl022.c", i32 2221, i32 3}
!73 = !{ptr @pl022_probe._entry.34, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @pl022_probe._entry_ptr.36, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/spi/spi-pl022.c", i32 2225, i32 2}
!77 = !{ptr @pl022_probe.__UNIQUE_ID_ddebug315, !76, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/spi/spi-pl022.c", i32 2229, i32 3}
!80 = !{ptr @pl022_probe._entry.38, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @pl022_probe._entry_ptr.40, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/spi/spi-pl022.c", i32 2085, i32 3}
!84 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @pl022_platform_data_dt_get._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @pl022_platform_data_dt_get._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/spi/spi-pl022.c", i32 2095, i32 27}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/spi/spi-pl022.c", i32 2097, i32 37}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/spi/spi-pl022.c", i32 1862, i32 3}
!93 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @pl022_setup.__UNIQUE_ID_ddebug305, !92, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/spi/spi-pl022.c", i32 1874, i32 29}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/spi/spi-pl022.c", i32 1876, i32 29}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/spi/spi-pl022.c", i32 1878, i32 29}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/spi/spi-pl022.c", i32 1880, i32 29}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/spi/spi-pl022.c", i32 1882, i32 29}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/spi/spi-pl022.c", i32 1884, i32 29}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/spi/spi-pl022.c", i32 1886, i32 29}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/spi/spi-pl022.c", i32 1893, i32 4}
!111 = !{ptr @pl022_setup.__UNIQUE_ID_ddebug306, !110, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/spi/spi-pl022.c", i32 1897, i32 3}
!114 = !{ptr @pl022_setup.__UNIQUE_ID_ddebug307, !113, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/spi/spi-pl022.c", i32 1920, i32 3}
!117 = !{ptr @pl022_setup._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @pl022_setup._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/spi/spi-pl022.c", i32 1927, i32 3}
!121 = !{ptr @pl022_setup._entry.57, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @pl022_setup._entry_ptr.59, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/spi/spi-pl022.c", i32 1940, i32 3}
!125 = !{ptr @pl022_setup._entry.60, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @pl022_setup._entry_ptr.62, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/spi/spi-pl022.c", i32 1941, i32 3}
!129 = !{ptr @pl022_setup._entry.63, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @pl022_setup._entry_ptr.65, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/spi/spi-pl022.c", i32 1945, i32 3}
!133 = !{ptr @pl022_setup.__UNIQUE_ID_ddebug308, !132, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/spi/spi-pl022.c", i32 1950, i32 3}
!136 = !{ptr @pl022_setup.__UNIQUE_ID_ddebug309, !135, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!137 = !{ptr @.str.68, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/spi/spi-pl022.c", i32 1955, i32 3}
!139 = !{ptr @pl022_setup.__UNIQUE_ID_ddebug310, !138, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/spi/spi-pl022.c", i32 1969, i32 3}
!142 = !{ptr @pl022_setup.__UNIQUE_ID_ddebug311, !141, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!143 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/spi/spi-pl022.c", i32 1976, i32 3}
!145 = !{ptr @pl022_setup.__UNIQUE_ID_ddebug312, !144, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!146 = !{ptr @pl022_default_chip_info, !147, !"pl022_default_chip_info", i1 false, i1 false}
!147 = !{!"../drivers/spi/spi-pl022.c", i32 1816, i32 39}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/spi/spi-pl022.c", i32 1751, i32 3}
!150 = !{ptr @.str.72, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @calculate_effective_freq._entry, !149, !"_entry", i1 false, i1 false}
!153 = !{ptr @calculate_effective_freq._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.75, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/spi/spi-pl022.c", i32 1756, i32 3}
!156 = !{ptr @calculate_effective_freq._entry.74, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @calculate_effective_freq._entry_ptr.76, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/spi/spi-pl022.c", i32 1798, i32 2}
!160 = !{ptr @.str.78, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/spi/spi-pl022.c", i32 1803, i32 2}
!162 = !{ptr @calculate_effective_freq.__UNIQUE_ID_ddebug303, !161, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!163 = !{ptr @.str.79, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/spi/spi-pl022.c", i32 1806, i32 2}
!165 = !{ptr @calculate_effective_freq.__UNIQUE_ID_ddebug304, !164, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/spi/spi-pl022.c", i32 1621, i32 3}
!168 = !{ptr @.str.81, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @verify_controller_parameters._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @verify_controller_parameters._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.83, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/spi/spi-pl022.c", i32 1627, i32 3}
!173 = !{ptr @verify_controller_parameters._entry.82, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @verify_controller_parameters._entry_ptr.84, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.86, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/spi/spi-pl022.c", i32 1634, i32 3}
!177 = !{ptr @verify_controller_parameters._entry.85, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @verify_controller_parameters._entry_ptr.87, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.89, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/spi/spi-pl022.c", i32 1641, i32 3}
!181 = !{ptr @verify_controller_parameters._entry.88, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @verify_controller_parameters._entry_ptr.90, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.92, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/spi/spi-pl022.c", i32 1653, i32 4}
!185 = !{ptr @verify_controller_parameters._entry.91, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @verify_controller_parameters._entry_ptr.93, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @verify_controller_parameters._entry.94, !188, !"_entry", i1 false, i1 false}
!188 = !{!"../drivers/spi/spi-pl022.c", i32 1660, i32 4}
!189 = !{ptr @verify_controller_parameters._entry_ptr.95, !188, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @verify_controller_parameters._entry.96, !191, !"_entry", i1 false, i1 false}
!191 = !{!"../drivers/spi/spi-pl022.c", i32 1666, i32 3}
!192 = !{ptr @verify_controller_parameters._entry_ptr.97, !191, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.99, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/spi/spi-pl022.c", i32 1678, i32 4}
!195 = !{ptr @verify_controller_parameters._entry.98, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @verify_controller_parameters._entry_ptr.100, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @verify_controller_parameters._entry.101, !198, !"_entry", i1 false, i1 false}
!198 = !{!"../drivers/spi/spi-pl022.c", i32 1685, i32 4}
!199 = !{ptr @verify_controller_parameters._entry_ptr.102, !198, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @verify_controller_parameters._entry.103, !201, !"_entry", i1 false, i1 false}
!201 = !{!"../drivers/spi/spi-pl022.c", i32 1691, i32 3}
!202 = !{ptr @verify_controller_parameters._entry_ptr.104, !201, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.106, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/spi/spi-pl022.c", i32 1698, i32 4}
!205 = !{ptr @verify_controller_parameters._entry.105, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @verify_controller_parameters._entry_ptr.107, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.109, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/spi/spi-pl022.c", i32 1704, i32 4}
!209 = !{ptr @verify_controller_parameters._entry.108, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @verify_controller_parameters._entry_ptr.110, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.112, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/spi/spi-pl022.c", i32 1714, i32 5}
!213 = !{ptr @verify_controller_parameters._entry.111, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @verify_controller_parameters._entry_ptr.113, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.115, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/spi/spi-pl022.c", i32 1720, i32 5}
!217 = !{ptr @verify_controller_parameters._entry.114, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @verify_controller_parameters._entry_ptr.116, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.117, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/spi/spi-pl022.c", i32 537, i32 2}
!221 = !{ptr @.str.118, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @flush.__UNIQUE_ID_ddebug293, !220, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!223 = !{ptr @.str.119, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/spi/spi-pl022.c", i32 1539, i32 3}
!225 = !{ptr @.str.120, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @do_polling_transfer.__UNIQUE_ID_ddebug302, !224, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!227 = !{ptr @.str.121, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/spi/spi-pl022.c", i32 1546, i32 5}
!229 = !{ptr @do_polling_transfer._entry, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @do_polling_transfer._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.122, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/spi/spi-pl022.c", i32 1346, i32 3}
!233 = !{ptr @.str.123, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @set_up_next_transfer._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @set_up_next_transfer._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.125, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/spi/spi-pl022.c", i32 1351, i32 3}
!238 = !{ptr @set_up_next_transfer._entry.124, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @set_up_next_transfer._entry_ptr.126, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.127, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/spi/spi-pl022.c", i32 677, i32 2}
!242 = !{ptr @.str.128, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @readwriter.__UNIQUE_ID_ddebug294, !241, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!244 = !{ptr @.str.129, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/spi/spi-pl022.c", i32 1487, i32 2}
!246 = !{ptr @.str.130, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @print_current_status._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @print_current_status._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.132, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/spi/spi-pl022.c", i32 1488, i32 2}
!251 = !{ptr @print_current_status._entry.131, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @print_current_status._entry_ptr.133, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.135, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/spi/spi-pl022.c", i32 1489, i32 2}
!255 = !{ptr @print_current_status._entry.134, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @print_current_status._entry_ptr.136, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.138, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/spi/spi-pl022.c", i32 1490, i32 2}
!259 = !{ptr @print_current_status._entry.137, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @print_current_status._entry_ptr.139, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.141, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/spi/spi-pl022.c", i32 1491, i32 2}
!263 = !{ptr @print_current_status._entry.140, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @print_current_status._entry_ptr.142, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.143, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/spi/spi-pl022.c", i32 1460, i32 4}
!267 = !{ptr @.str.144, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @do_interrupt_dma_transfer.__UNIQUE_ID_ddebug301, !266, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!269 = !{ptr @.str.145, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/spi/spi-pl022.c", i32 1027, i32 2}
!271 = !{ptr @.str.146, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @configure_dma.__UNIQUE_ID_ddebug297, !270, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!273 = !{ptr @.str.147, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/spi/spi-pl022.c", i32 884, i32 4}
!275 = !{ptr @.str.148, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @setup_dma_scatter.__UNIQUE_ID_ddebug295, !274, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!277 = !{ptr @.str.149, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/spi/spi-pl022.c", i32 898, i32 4}
!279 = !{ptr @setup_dma_scatter.__UNIQUE_ID_ddebug296, !278, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!280 = !{ptr @.str.150, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/spi/spi-pl022.c", i32 1425, i32 4}
!282 = !{ptr @pump_transfers.__UNIQUE_ID_ddebug300, !281, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!283 = !{ptr @.str.151, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/spi/spi-pl022.c", i32 1253, i32 3}
!285 = !{ptr @.str.152, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @pl022_interrupt_handler._entry, !284, !"_entry", i1 false, i1 false}
!287 = !{ptr @pl022_interrupt_handler._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.154, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/spi/spi-pl022.c", i32 1275, i32 3}
!290 = !{ptr @pl022_interrupt_handler._entry.153, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @pl022_interrupt_handler._entry_ptr.155, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.157, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/spi/spi-pl022.c", i32 1277, i32 4}
!294 = !{ptr @pl022_interrupt_handler._entry.156, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @pl022_interrupt_handler._entry_ptr.158, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.160, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/spi/spi-pl022.c", i32 1316, i32 4}
!298 = !{ptr @pl022_interrupt_handler._entry.159, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @pl022_interrupt_handler._entry_ptr.161, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.162, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/spi/spi-pl022.c", i32 1156, i32 31}
!302 = !{ptr @.str.163, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/spi/spi-pl022.c", i32 1164, i32 31}
!304 = !{ptr @.str.164, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/spi/spi-pl022.c", i32 1116, i32 3}
!306 = !{ptr @.str.165, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @pl022_dma_probe.__UNIQUE_ID_ddebug298, !305, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!308 = !{ptr @.str.166, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/spi/spi-pl022.c", i32 1124, i32 3}
!310 = !{ptr @pl022_dma_probe.__UNIQUE_ID_ddebug299, !309, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!311 = !{ptr @.str.167, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/spi/spi-pl022.c", i32 1132, i32 2}
!313 = !{ptr @pl022_dma_probe._entry, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @pl022_dma_probe._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.169, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/spi/spi-pl022.c", i32 1144, i32 2}
!317 = !{ptr @pl022_dma_probe._entry.168, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @pl022_dma_probe._entry_ptr.170, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @pl022_ids, !320, !"pl022_ids", i1 false, i1 false}
!320 = !{!"../drivers/spi/spi-pl022.c", i32 2384, i32 29}
!321 = !{ptr @vendor_arm, !322, !"vendor_arm", i1 false, i1 false}
!322 = !{!"../drivers/spi/spi-pl022.c", i32 2344, i32 27}
!323 = !{ptr @vendor_st, !324, !"vendor_st", i1 false, i1 false}
!324 = !{!"../drivers/spi/spi-pl022.c", i32 2354, i32 27}
!325 = !{ptr @vendor_st_pl023, !326, !"vendor_st_pl023", i1 false, i1 false}
!326 = !{!"../drivers/spi/spi-pl022.c", i32 2364, i32 27}
!327 = !{ptr @vendor_lsi, !328, !"vendor_lsi", i1 false, i1 false}
!328 = !{!"../drivers/spi/spi-pl022.c", i32 2374, i32 27}
!329 = !{i32 1, !"wchar_size", i32 2}
!330 = !{i32 1, !"min_enum_size", i32 4}
!331 = !{i32 8, !"branch-target-enforcement", i32 0}
!332 = !{i32 8, !"sign-return-address", i32 0}
!333 = !{i32 8, !"sign-return-address-all", i32 0}
!334 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!335 = !{i32 7, !"uwtable", i32 1}
!336 = !{i32 7, !"frame-pointer", i32 2}
!337 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!338 = !{i8 0, i8 2}
!339 = !{i64 2149020080, i64 2149020085, i64 2149020098, i64 2149020142, i64 2149020176, i64 2149020197}
!340 = !{i64 2155534343}
!341 = !{i64 4924900}
!342 = !{i64 2155535322}
!343 = !{i64 4924700}
!344 = !{i64 2148419187, i64 2148419213, i64 2148419242, i64 2148419276, i64 2148419307, i64 2148419330}
!345 = !{i64 2153021743}
!346 = !{i64 2153022385}
!347 = !{i64 4925320}
!348 = !{i64 2155340443}
!349 = !{i64 2155340904}
!350 = !{i64 2155341370}
!351 = !{i64 2155341855}
!352 = !{i64 2155342300}
!353 = !{i64 2155338142}
!354 = !{i64 2155338705}
!355 = !{i64 2155339255}
!356 = !{i64 2155451574}
!357 = !{i64 2155452557}
!358 = !{i64 2155330874}
!359 = !{i64 2155331299}
!360 = !{!"branch_weights", i32 2000, i32 1}
!361 = !{i64 2155423749}
!362 = !{i64 2155343474}
!363 = !{i64 2155345999}
!364 = !{i64 2155352296}
!365 = !{i64 2155356957}
!366 = !{i64 2155358260}
!367 = !{i64 2155359113}
!368 = !{i64 2155359703}
!369 = !{i64 2155360148}
!370 = !{!"branch_weights", i32 1, i32 2000}
!371 = !{i64 2155402725}
!372 = !{i64 2155404896}
!373 = !{i64 2155406723}
!374 = !{i64 2155407168}
!375 = !{i64 2155408445}
!376 = !{i64 2155409430}
!377 = !{i64 2155410605}
!378 = !{i64 2155411628}
!379 = !{i64 2155411963}
!380 = !{i64 2155412408}
!381 = !{i64 2155443295}
!382 = !{i64 2155444266}
!383 = !{i64 4925738}
!384 = !{i64 2155430064}
!385 = !{i64 2155430614}
!386 = !{i64 2155431164}
!387 = !{i64 2155431714}
!388 = !{i64 2155432264}
!389 = !{i64 2155448814}
!390 = !{i64 2155448656}
!391 = !{i64 2155428059}
!392 = !{i64 2155429030}
!393 = !{i64 2155429315}
!394 = !{i64 2155363585}
!395 = !{i64 2155364148}
!396 = !{i64 2155364698}
!397 = !{i64 2155365248}
!398 = !{i64 2155365798}
!399 = !{i64 2155366049}
!400 = !{i64 2155366500}
!401 = !{i64 2155367002}
!402 = !{i64 2155367511}
!403 = !{i64 2155368296}
!404 = !{i64 2155368859}
!405 = !{i64 2155369409}
!406 = !{i64 2155369959}
!407 = !{i64 2155370509}
!408 = !{i64 2155334434}
!409 = !{i64 2155335417}
!410 = !{i64 2155382806, i64 2155383295, i64 2155382843, i64 2155382899, i64 2155382933, i64 2155382957, i64 2155382998, i64 2155383019, i64 2155383047, i64 2155383081}
!411 = !{i64 2154188443, i64 2154188935, i64 2154188480, i64 2154188536, i64 2154188570, i64 2154188594, i64 2154188635, i64 2154188656, i64 2154188684, i64 2154188718}
!412 = !{i64 2154190053, i64 2154190545, i64 2154190090, i64 2154190146, i64 2154190180, i64 2154190204, i64 2154190245, i64 2154190266, i64 2154190294, i64 2154190328}
!413 = !{i64 2155381083, i64 2155381571, i64 2155381120, i64 2155381176, i64 2155381210, i64 2155381234, i64 2155381275, i64 2155381296, i64 2155381324, i64 2155381358}
!414 = !{i64 2155372705, i64 2155373193, i64 2155372742, i64 2155372798, i64 2155372832, i64 2155372856, i64 2155372897, i64 2155372918, i64 2155372946, i64 2155372980}
