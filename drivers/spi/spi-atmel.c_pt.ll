; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-atmel.c_pt.bc'
source_filename = "../drivers/spi/spi-atmel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.atmel_spi = type { %struct.spinlock, i32, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, ptr, ptr, %struct.completion, %struct.atmel_spi_caps, i8, i8, i8, i32, i8, i8 }
%struct.atmel_spi_caps = type { i8, i8, i8, i8 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_spi_atmel__271_1724_atmel_spi_driver_init6 = internal global ptr @atmel_spi_driver_init, section ".initcall6.init", align 4
@atmel_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @atmel_spi_probe, ptr @atmel_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_spi_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_spi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_atmel_spi_driver_exit = internal global ptr @atmel_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description272 = internal constant [60 x i8] c"spi_atmel.description=Atmel AT32/AT91 SPI Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author273 = internal constant [44 x i8] c"spi_atmel.author=Haavard Skinnemoen (Atmel)\00", section ".modinfo", align 1
@__UNIQUE_ID_file274 = internal constant [37 x i8] c"spi_atmel.file=drivers/spi/spi-atmel\00", section ".modinfo", align 1
@__UNIQUE_ID_license275 = internal constant [22 x i8] c"spi_atmel.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias276 = internal constant [35 x i8] c"spi_atmel.alias=platform:atmel_spi\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"atmel_spi\00", [22 x i8] zeroinitializer }, align 32
@atmel_spi_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@atmel_spi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @atmel_spi_suspend, ptr @atmel_spi_resume, ptr @atmel_spi_suspend, ptr @atmel_spi_resume, ptr @atmel_spi_suspend, ptr @atmel_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_spi_runtime_suspend, ptr @atmel_spi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_clk\00", [24 x i8] zeroinitializer }, align 32
@atmel_spi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&as->lock\00", [22 x i8] zeroinitializer }, align 32
@atmel_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1540, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Atmel SPI Controller using PIO only\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atmel_spi_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/spi/spi-atmel.c\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atmel_spi_probe._entry_ptr = internal global ptr @atmel_spi_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atmel,fifo-size\00", [16 x i8] zeroinitializer }, align 32
@atmel_spi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 1562, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Using FIFO (%u data)\0A\00", [42 x i8] zeroinitializer }, align 32
@atmel_spi_probe._entry_ptr.11 = internal global ptr @atmel_spi_probe._entry.9, section ".printk_index", align 4
@atmel_spi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 1579, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Atmel SPI Controller version 0x%x at 0x%08lx (irq %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@atmel_spi_probe._entry_ptr.14 = internal global ptr @atmel_spi_probe._entry.12, section ".printk_index", align 4
@atmel_spi_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 1193, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"setup: non GPIO CS can't be active-high\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atmel_spi_setup\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@atmel_spi_setup._entry_ptr = internal global ptr @atmel_spi_setup._entry, section ".printk_index", align 4
@atmel_spi_setup._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.5, i32 1206, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"No native CS available to support this GPIO CS\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@atmel_spi_setup._entry_ptr.21 = internal global ptr @atmel_spi_setup._entry.18, section ".printk_index", align 4
@atmel_spi_setup.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.16, ptr @.str.5, ptr @.str.23, i8 1, i8 55, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi_atmel\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"setup: bpw %u mode 0x%x -> csr%d %08x\0A\00", [57 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@atmel_spi_one_transfer.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.24, ptr @.str.5, ptr @.str.25, i8 1, i8 66, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"atmel_spi_one_transfer\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"you can't yet change bits_per_word in transfers\0A\00", [47 x i8] zeroinitializer }, align 32
@atmel_spi_one_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.5, i32 1322, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to use DMA, fallback to PIO\0A\00", [60 x i8] zeroinitializer }, align 32
@atmel_spi_one_transfer._entry_ptr = internal global ptr @atmel_spi_one_transfer._entry, section ".printk_index", align 4
@atmel_spi_one_transfer._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.24, ptr @.str.5, i32 1339, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spi transfer timeout\0A\00", [42 x i8] zeroinitializer }, align 32
@atmel_spi_one_transfer._entry_ptr.29 = internal global ptr @atmel_spi_one_transfer._entry.27, section ".printk_index", align 4
@atmel_spi_one_transfer._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.24, ptr @.str.5, i32 1351, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"overrun (%u/%u remaining)\0A\00", [37 x i8] zeroinitializer }, align 32
@atmel_spi_one_transfer._entry_ptr.32 = internal global ptr @atmel_spi_one_transfer._entry.30, section ".printk_index", align 4
@atmel_spi_one_transfer._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.24, ptr @.str.5, i32 1366, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"timeout waiting for TXEMPTY\00", [36 x i8] zeroinitializer }, align 32
@atmel_spi_one_transfer._entry_ptr.35 = internal global ptr @atmel_spi_one_transfer._entry.33, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@atmel_spi_set_xfer_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.5, i32 826, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"setup: %d Hz too slow, scbr %u; min %ld Hz\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"atmel_spi_set_xfer_speed\00", [39 x i8] zeroinitializer }, align 32
@atmel_spi_set_xfer_speed._entry_ptr = internal global ptr @atmel_spi_set_xfer_speed._entry, section ".printk_index", align 4
@atmel_spi_set_xfer_speed._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.5, i32 832, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"setup: %d Hz too high, scbr %u; max %ld Hz\0A\00", [52 x i8] zeroinitializer }, align 32
@atmel_spi_set_xfer_speed._entry_ptr.42 = internal global ptr @atmel_spi_set_xfer_speed._entry.40, section ".printk_index", align 4
@atmel_spi_pdc_next_xfer.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.43, ptr @.str.5, ptr @.str.44, i8 0, i8 -38, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atmel_spi_pdc_next_xfer\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"  start xfer %p: len %u tx %p/%08llx rx %p/%08llx\0A\00", [45 x i8] zeroinitializer }, align 32
@atmel_spi_pdc_next_xfer.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.43, ptr @.str.5, ptr @.str.45, i8 0, i8 -34, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"  next xfer %p: len %u tx %p/%08llx rx %p/%08llx\0A\00", [46 x i8] zeroinitializer }, align 32
@atmel_spi_next_xfer_dma_submit.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.46, ptr @.str.5, ptr @.str.47, i8 0, i8 -68, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"atmel_spi_next_xfer_dma_submit\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"  start dma xfer %p: len %u tx %p/%08llx rx %p/%08llx\0A\00", [41 x i8] zeroinitializer }, align 32
@atmel_spi_dma_slave_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.5, i32 472, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to configure tx dma channel\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"atmel_spi_dma_slave_config\00", [37 x i8] zeroinitializer }, align 32
@atmel_spi_dma_slave_config._entry_ptr = internal global ptr @atmel_spi_dma_slave_config._entry, section ".printk_index", align 4
@atmel_spi_dma_slave_config._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.5, i32 486, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to configure rx dma channel\0A\00", [60 x i8] zeroinitializer }, align 32
@atmel_spi_dma_slave_config._entry_ptr.52 = internal global ptr @atmel_spi_dma_slave_config._entry.50, section ".printk_index", align 4
@atmel_spi_next_xfer_fifo.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.53, ptr @.str.5, ptr @.str.54, i8 0, i8 -90, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"atmel_spi_next_xfer_fifo\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"  start fifo xfer %p: len %u tx %p rx %p bitpw %d\0A\00", [45 x i8] zeroinitializer }, align 32
@atmel_spi_next_xfer_single.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.55, ptr @.str.5, ptr @.str.56, i8 0, i8 -107, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"atmel_spi_next_xfer_single\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"  start pio xfer %p: len %u tx %p rx %p bitpw %d\0A\00", [46 x i8] zeroinitializer }, align 32
@cs_activate.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.57, ptr @.str.5, ptr @.str.58, i8 0, i8 93, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cs_activate\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"activate NPCS, mr %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@cs_deactivate.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.59, ptr @.str.5, ptr @.str.60, i8 0, i8 98, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cs_deactivate\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DEactivate NPCS, mr %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@atmel_spi_configure_dma.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.63, ptr @.str.5, ptr @.str.64, i8 0, i8 125, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atmel_spi_configure_dma\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No TX DMA channel, DMA is disabled\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@atmel_spi_configure_dma.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.63, ptr @.str.5, ptr @.str.66, i8 0, i8 -128, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No RX DMA channel, DMA is disabled\0A\00", [60 x i8] zeroinitializer }, align 32
@atmel_spi_configure_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.63, ptr @.str.5, i32 524, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Using %s (tx) and %s (rx) for DMA transfers\0A\00", [51 x i8] zeroinitializer }, align 32
@atmel_spi_configure_dma._entry_ptr = internal global ptr @atmel_spi_configure_dma._entry, section ".printk_index", align 4
@atmel_spi_pio_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.5, i32 1055, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"overrun\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atmel_spi_pio_interrupt\00", [40 x i8] zeroinitializer }, align 32
@atmel_spi_pio_interrupt._entry_ptr = internal global ptr @atmel_spi_pio_interrupt._entry, section ".printk_index", align 4
@atmel_spi_pio_interrupt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IRQ not handled, pending = %x\0A\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"atmel_spi_driver\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1715, i32 31 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1717, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"atmel_spi_dt_ids\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1708, i32 34 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"atmel_spi_pm_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1698, i32 32 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1457, i32 33 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1486, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1540, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1560, i32 47 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1562, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1577, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1193, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1205, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1245, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1289, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1321, i32 5 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1339, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1349, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1365, i32 5 }
@___asan_gen_.187 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 326, i32 6 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 824, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 830, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 868, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 887, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 752, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 471, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 485, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 661, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 594, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 373, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 395, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 87, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 499, i32 41 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 502, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 506, i32 41 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 513, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 521, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1055, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.295 = private constant [27 x i8] c"../drivers/spi/spi-atmel.c\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1089, i32 3 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @__UNIQUE_ID_alias276, ptr @__UNIQUE_ID_author273, ptr @__UNIQUE_ID_description272, ptr @__UNIQUE_ID_file274, ptr @__UNIQUE_ID_license275, ptr @__exitcall_atmel_spi_driver_exit, ptr @__initcall__kmod_spi_atmel__271_1724_atmel_spi_driver_init6, ptr @atmel_spi_configure_dma._entry, ptr @atmel_spi_configure_dma._entry_ptr, ptr @atmel_spi_dma_slave_config._entry, ptr @atmel_spi_dma_slave_config._entry.50, ptr @atmel_spi_dma_slave_config._entry_ptr, ptr @atmel_spi_dma_slave_config._entry_ptr.52, ptr @atmel_spi_driver_exit, ptr @atmel_spi_one_transfer._entry, ptr @atmel_spi_one_transfer._entry.27, ptr @atmel_spi_one_transfer._entry.30, ptr @atmel_spi_one_transfer._entry.33, ptr @atmel_spi_one_transfer._entry_ptr, ptr @atmel_spi_one_transfer._entry_ptr.29, ptr @atmel_spi_one_transfer._entry_ptr.32, ptr @atmel_spi_one_transfer._entry_ptr.35, ptr @atmel_spi_pio_interrupt._entry, ptr @atmel_spi_pio_interrupt._entry_ptr, ptr @atmel_spi_probe._entry, ptr @atmel_spi_probe._entry.12, ptr @atmel_spi_probe._entry.9, ptr @atmel_spi_probe._entry_ptr, ptr @atmel_spi_probe._entry_ptr.11, ptr @atmel_spi_probe._entry_ptr.14, ptr @atmel_spi_set_xfer_speed._entry, ptr @atmel_spi_set_xfer_speed._entry.40, ptr @atmel_spi_set_xfer_speed._entry_ptr, ptr @atmel_spi_set_xfer_speed._entry_ptr.42, ptr @atmel_spi_setup._entry, ptr @atmel_spi_setup._entry.18, ptr @atmel_spi_setup._entry_ptr, ptr @atmel_spi_setup._entry_ptr.21, ptr @atmel_spi_driver, ptr @.str, ptr @atmel_spi_dt_ids, ptr @atmel_spi_pm_ops, ptr @.str.1, ptr @atmel_spi_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @init_completion.__key, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_spi_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_spi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_spi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_spi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_spi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_spi_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_spi_setup._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_spi_one_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_spi_one_transfer._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_spi_one_transfer._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_spi_one_transfer._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_spi_set_xfer_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_spi_set_xfer_speed._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_spi_dma_slave_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_spi_dma_slave_config._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_spi_configure_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_spi_pio_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_spi_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atmel_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_spi_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #10
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup123_crit_edge, label %if.end

entry.cleanup123_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup123

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup123_crit_edge, label %if.end4

if.end.cleanup123_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup123

if.end4:                                          ; preds = %if.end
  %call6 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call6 to i32
  br label %cleanup123

if.end10:                                         ; preds = %if.end4
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 172, i1 noundef zeroext false) #10
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end10.cleanup123_crit_edge, label %if.end15

if.end10.cleanup123_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup123

if.end15:                                         ; preds = %if.end10
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 56
  %1 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %use_gpio_descriptors, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 7, ptr %mode_bits, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 65408, ptr %bits_per_word_mask, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %of_node18 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %6 = ptrtoint ptr %of_node18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %of_node18, align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %conv = trunc i32 %8 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %bus_num, align 8
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 4, ptr %num_chipselect, align 2
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %11 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @atmel_spi_setup, ptr %setup, align 4
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 10
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 56, ptr %flags, align 4
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %13 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @atmel_spi_one_transfer, ptr %transfer_one, align 4
  %set_cs = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 50
  %14 = ptrtoint ptr %set_cs to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @atmel_spi_set_cs, ptr %set_cs, align 8
  %cleanup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 23
  %15 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @atmel_spi_cleanup, ptr %cleanup, align 8
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %16 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %auto_runtime_pm, align 4
  %max_dma_len = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 43
  %17 = ptrtoint ptr %max_dma_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 65535, ptr %max_dma_len, align 4
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 24
  %18 = ptrtoint ptr %can_dma to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @atmel_spi_can_dma, ptr %can_dma, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i221 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i.i221 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i221, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %21, ptr noundef nonnull @.str.2, ptr noundef nonnull @atmel_spi_probe.__key, i16 noundef signext 3) #10
  %pdev21 = getelementptr inbounds %struct.atmel_spi, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %pdev21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %pdev, ptr %pdev21, align 4
  %call23 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call1) #10
  %regs24 = getelementptr inbounds %struct.atmel_spi, ptr %21, i32 0, i32 3
  %23 = ptrtoint ptr %regs24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call23, ptr %regs24, align 4
  %cmp.i222 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i222, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %call23 to i32
  br label %spi_controller_put.exit

if.end30:                                         ; preds = %if.end15
  %25 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call1, align 4
  %phybase = getelementptr inbounds %struct.atmel_spi, ptr %21, i32 0, i32 2
  %27 = ptrtoint ptr %phybase to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %phybase, align 4
  %irq31 = getelementptr inbounds %struct.atmel_spi, ptr %21, i32 0, i32 4
  %28 = ptrtoint ptr %irq31 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call2, ptr %irq31, align 4
  %clk32 = getelementptr inbounds %struct.atmel_spi, ptr %21, i32 0, i32 5
  %29 = ptrtoint ptr %clk32 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call6, ptr %clk32, align 4
  %xfer_completion = getelementptr inbounds %struct.atmel_spi, ptr %21, i32 0, i32 15
  %30 = ptrtoint ptr %xfer_completion to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %xfer_completion, align 4
  %wait.i = getelementptr inbounds %struct.atmel_spi, ptr %21, i32 0, i32 15, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @init_completion.__key) #10
  %31 = ptrtoint ptr %regs24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs24, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 252
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !162
  %34 = and i32 %33, -15794176
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 289, i32 %35)
  %cmp.i223 = icmp ugt i32 %35, 289
  %caps.i = getelementptr inbounds %struct.atmel_spi, ptr %21, i32 0, i32 16
  %frombool.i = zext i1 %cmp.i223 to i8
  %36 = ptrtoint ptr %caps.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool.i, ptr %caps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 527, i32 %35)
  %cmp1.i = icmp ugt i32 %35, 527
  %has_wdrbt.i = getelementptr inbounds %struct.atmel_spi, ptr %21, i32 0, i32 16, i32 1
  %frombool3.i = zext i1 %cmp1.i to i8
  %37 = ptrtoint ptr %has_wdrbt.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %frombool3.i, ptr %has_wdrbt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 529, i32 %35)
  %cmp4.i = icmp ugt i32 %35, 529
  %has_dma_support.i = getelementptr inbounds %struct.atmel_spi, ptr %21, i32 0, i32 16, i32 2
  %frombool6.i = zext i1 %cmp4.i to i8
  %38 = ptrtoint ptr %has_dma_support.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool6.i, ptr %has_dma_support.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 530, i32 %35)
  %cmp7.i = icmp ult i32 %35, 530
  %has_pdc_support.i = getelementptr inbounds %struct.atmel_spi, ptr %21, i32 0, i32 16, i32 3
  %frombool9.i = zext i1 %cmp7.i to i8
  %39 = ptrtoint ptr %has_pdc_support.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %frombool9.i, ptr %has_pdc_support.i, align 1
  %use_dma = getelementptr inbounds %struct.atmel_spi, ptr %21, i32 0, i32 17
  %40 = ptrtoint ptr %use_dma to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %use_dma, align 4
  %use_pdc = getelementptr inbounds %struct.atmel_spi, ptr %21, i32 0, i32 18
  %41 = ptrtoint ptr %use_pdc to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %use_pdc, align 1
  br i1 %cmp4.i, label %if.then34, label %if.then48

if.then34:                                        ; preds = %if.end30
  %call35 = tail call fastcc i32 @atmel_spi_configure_dma(ptr noundef nonnull %call.i, ptr noundef %21)
  %42 = zext i32 %call35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call35, label %if.then34.if.end51_crit_edge [
    i32 0, label %if.then38
    i32 -517, label %if.then34.spi_controller_put.exit_crit_edge
  ]

if.then34.spi_controller_put.exit_crit_edge:      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_controller_put.exit

if.then34.if.end51_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then38:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %use_dma to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %use_dma, align 4
  br label %if.end51

if.then48:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %use_pdc to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %use_pdc, align 1
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.then38, %if.then34.if.end51_crit_edge
  %45 = ptrtoint ptr %has_dma_support.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %has_dma_support.i, align 2, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool54.not = icmp eq i8 %46, 0
  br i1 %tobool54.not, label %if.end51.if.end63_crit_edge, label %land.lhs.true

if.end51.if.end63_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

land.lhs.true:                                    ; preds = %if.end51
  %47 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %use_dma, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool57.not = icmp eq i8 %48, 0
  br i1 %tobool57.not, label %do.end61, label %land.lhs.true.if.end63_crit_edge

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

do.end61:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.3) #13
  br label %if.end63

if.end63:                                         ; preds = %do.end61, %land.lhs.true.if.end63_crit_edge, %if.end51.if.end63_crit_edge
  %49 = ptrtoint ptr %use_pdc to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %use_pdc, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool65.not = icmp eq i8 %50, 0
  %init_name.i225 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %51 = ptrtoint ptr %init_name.i225 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %init_name.i225, align 8
  %tobool.not.i226 = icmp eq ptr %52, null
  br i1 %tobool65.not, label %if.else71, label %if.then66

if.then66:                                        ; preds = %if.end63
  br i1 %tobool.not.i226, label %if.end.i, label %if.then66.dev_name.exit_crit_edge

if.then66.dev_name.exit_crit_edge:                ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then66.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %54, %if.end.i ], [ %52, %if.then66.dev_name.exit_crit_edge ]
  %call.i224 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call2, ptr noundef nonnull @atmel_spi_pdc_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #10
  br label %if.end76

if.else71:                                        ; preds = %if.end63
  br i1 %tobool.not.i226, label %if.end.i227, label %if.else71.dev_name.exit229_crit_edge

if.else71.dev_name.exit229_crit_edge:             ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit229

if.end.i227:                                      ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  br label %dev_name.exit229

dev_name.exit229:                                 ; preds = %if.end.i227, %if.else71.dev_name.exit229_crit_edge
  %retval.0.i228 = phi ptr [ %56, %if.end.i227 ], [ %52, %if.else71.dev_name.exit229_crit_edge ]
  %call.i230 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call2, ptr noundef nonnull @atmel_spi_pio_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i228, ptr noundef nonnull %call.i) #10
  br label %if.end76

if.end76:                                         ; preds = %dev_name.exit229, %dev_name.exit
  %ret.0 = phi i32 [ %call.i224, %dev_name.exit ], [ %call.i230, %dev_name.exit229 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool77.not = icmp eq i32 %ret.0, 0
  br i1 %tobool77.not, label %if.end79, label %if.end76.spi_controller_put.exit_crit_edge

if.end76.spi_controller_put.exit_crit_edge:       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_controller_put.exit

if.end79:                                         ; preds = %if.end76
  %call80 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end79.spi_controller_put.exit_crit_edge

if.end79.spi_controller_put.exit_crit_edge:       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_controller_put.exit

if.end83:                                         ; preds = %if.end79
  %call84 = tail call i32 @clk_get_rate(ptr noundef %call6) #10
  %spi_clk = getelementptr inbounds %struct.atmel_spi, ptr %21, i32 0, i32 7
  %57 = ptrtoint ptr %spi_clk to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call84, ptr %spi_clk, align 4
  %fifo_size = getelementptr inbounds %struct.atmel_spi, ptr %21, i32 0, i32 20
  %58 = ptrtoint ptr %fifo_size to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %fifo_size, align 4
  %59 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %60, ptr noundef nonnull @.str.8, ptr noundef %fifo_size, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool89.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool89.not, label %do.end93, label %if.end83.if.end96_crit_edge

if.end83.if.end96_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

do.end93:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fifo_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %62) #13
  br label %if.end96

if.end96:                                         ; preds = %do.end93, %if.end83.if.end96_crit_edge
  tail call fastcc void @atmel_spi_init(ptr noundef %21)
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #10
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #10
  %call.i231 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #10
  tail call void @pm_runtime_enable(ptr noundef %dev) #10
  %call103 = tail call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %do.end109, label %out_free_dma

do.end109:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %regs24 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs24, align 4
  %add.ptr.i = getelementptr i8, ptr %64, i32 252
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !162
  %66 = and i32 %65, -15794176
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #10
  %68 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %call1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %67, i32 noundef %69, i32 noundef %call2) #13
  br label %cleanup123

out_free_dma:                                     ; preds = %if.end96
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  %call.i232 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #10
  %70 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %use_dma, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool117.not = icmp eq i8 %71, 0
  br i1 %tobool117.not, label %out_free_dma.if.end119_crit_edge, label %if.then118

out_free_dma.if.end119_crit_edge:                 ; preds = %out_free_dma
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

if.then118:                                       ; preds = %out_free_dma
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @atmel_spi_release_dma(ptr noundef nonnull %call.i)
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %out_free_dma.if.end119_crit_edge
  %72 = ptrtoint ptr %regs24 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs24, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 -2147483648) #10, !srcloc !164
  %74 = ptrtoint ptr %regs24 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs24, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 -2147483648) #10, !srcloc !164
  tail call void @clk_disable(ptr noundef %call6) #10
  tail call void @clk_unprepare(ptr noundef %call6) #10
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %if.end119, %if.end79.spi_controller_put.exit_crit_edge, %if.end76.spi_controller_put.exit_crit_edge, %if.then34.spi_controller_put.exit_crit_edge, %if.then27
  %ret.1 = phi i32 [ %24, %if.then27 ], [ %ret.0, %if.end76.spi_controller_put.exit_crit_edge ], [ %call80, %if.end79.spi_controller_put.exit_crit_edge ], [ %call103, %if.end119 ], [ %call35, %if.then34.spi_controller_put.exit_crit_edge ]
  tail call void @put_device(ptr noundef nonnull %call.i) #10
  br label %cleanup123

cleanup123:                                       ; preds = %spi_controller_put.exit, %do.end109, %if.end10.cleanup123_crit_edge, %if.then8, %if.end.cleanup123_crit_edge, %entry.cleanup123_crit_edge
  %retval.0 = phi i32 [ %0, %if.then8 ], [ %ret.1, %spi_controller_put.exit ], [ 0, %do.end109 ], [ -6, %entry.cleanup123_crit_edge ], [ %call2, %if.end.cleanup123_crit_edge ], [ -12, %if.end10.cleanup123_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_spi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i22 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i22, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #10
  %use_dma = getelementptr inbounds %struct.atmel_spi, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_dma, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 61
  %6 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_rx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 47
  %10 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 %11(ptr noundef nonnull %7) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i, %if.then.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %dma_tx.i = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_tx.i, align 8
  %tobool2.not.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i, label %if.end.i.atmel_spi_stop_dma.exit_crit_edge, label %if.then3.i

if.end.i.atmel_spi_stop_dma.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atmel_spi_stop_dma.exit

if.then3.i:                                       ; preds = %if.end.i
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %device_terminate_all.i11.i = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 47
  %16 = ptrtoint ptr %device_terminate_all.i11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device_terminate_all.i11.i, align 4
  %tobool.not.i12.i = icmp eq ptr %17, null
  br i1 %tobool.not.i12.i, label %if.then3.i.atmel_spi_stop_dma.exit_crit_edge, label %if.then.i14.i

if.then3.i.atmel_spi_stop_dma.exit_crit_edge:     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atmel_spi_stop_dma.exit

if.then.i14.i:                                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i13.i = tail call i32 %17(ptr noundef nonnull %13) #10
  br label %atmel_spi_stop_dma.exit

atmel_spi_stop_dma.exit:                          ; preds = %if.then.i14.i, %if.then3.i.atmel_spi_stop_dma.exit_crit_edge, %if.end.i.atmel_spi_stop_dma.exit_crit_edge
  %18 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_rx.i, align 4
  %tobool.not.i24 = icmp eq ptr %19, null
  br i1 %tobool.not.i24, label %atmel_spi_stop_dma.exit.if.end.i27_crit_edge, label %if.then.i25

atmel_spi_stop_dma.exit.if.end.i27_crit_edge:     ; preds = %atmel_spi_stop_dma.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i27

if.then.i25:                                      ; preds = %atmel_spi_stop_dma.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %19) #10
  %20 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %dma_rx.i, align 4
  br label %if.end.i27

if.end.i27:                                       ; preds = %if.then.i25, %atmel_spi_stop_dma.exit.if.end.i27_crit_edge
  %21 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_tx.i, align 8
  %tobool3.not.i = icmp eq ptr %22, null
  br i1 %tobool3.not.i, label %if.end.i27.if.end_crit_edge, label %if.then4.i

if.end.i27.if.end_crit_edge:                      ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then4.i:                                       ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %22) #10
  %23 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %dma_tx.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4.i, %if.end.i27.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #10
  %regs = getelementptr inbounds %struct.atmel_spi, ptr %3, i32 0, i32 3
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 -2147483648) #10, !srcloc !164
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 -2147483648) #10, !srcloc !164
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %29, i32 16
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #10, !srcloc !162
  tail call void @_raw_spin_unlock_irq(ptr noundef %3) #10
  %clk = getelementptr inbounds %struct.atmel_spi, ptr %3, i32 0, i32 5
  %31 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %32) #10
  tail call void @clk_unprepare(ptr noundef %32) #10
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !166
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.end.pm_runtime_put_noidle.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !167
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.end.pm_runtime_put_noidle.exit_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_spi_setup(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %0 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bits_per_word, align 1
  %conv = zext i8 %1 to i32
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %cs_gpiod = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 14
  %6 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cs_gpiod, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 8
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.15) #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %native_cs_free.i = getelementptr inbounds %struct.atmel_spi, ptr %5, i32 0, i32 21
  %10 = ptrtoint ptr %native_cs_free.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %native_cs_free.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end.initialize_native_cs_for_gpio.exit_crit_edge, label %if.end.i

if.end.initialize_native_cs_for_gpio.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %initialize_native_cs_for_gpio.exit

if.end.i:                                         ; preds = %if.end
  %pdev.i = getelementptr inbounds %struct.atmel_spi, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i.i, align 4
  %cs_gpiods.i = getelementptr inbounds %struct.spi_controller, ptr %15, i32 0, i32 55
  %16 = ptrtoint ptr %cs_gpiods.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cs_gpiods.i, align 4
  %tobool1.not.i = icmp eq ptr %17, null
  br i1 %tobool1.not.i, label %if.end.i.initialize_native_cs_for_gpio.exit_crit_edge, label %for.body.preheader.i

if.end.i.initialize_native_cs_for_gpio.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %initialize_native_cs_for_gpio.exit

for.body.preheader.i:                             ; preds = %if.end.i
  %caps.i.i = getelementptr inbounds %struct.atmel_spi, ptr %5, i32 0, i32 16
  %18 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %caps.i.i, align 4, !range !163
  %20 = xor i8 %19, 1
  %21 = zext i8 %20 to i32
  %22 = ptrtoint ptr %cs_gpiods.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cs_gpiods.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %23, i32 %21
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %tobool8.not.i = icmp eq ptr %25, null
  br i1 %tobool8.not.i, label %for.body.preheader.i.for.body.i.1_crit_edge, label %if.then9.i

for.body.preheader.i.for.body.i.1_crit_edge:      ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.1

if.then9.i:                                       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i = shl i8 1, %20
  %26 = ptrtoint ptr %native_cs_free.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %native_cs_free.i, align 4
  %conv11.i = or i8 %27, %shl.i
  store i8 %conv11.i, ptr %native_cs_free.i, align 4
  br label %for.body.i.1

for.body.i.1:                                     ; preds = %if.then9.i, %for.body.preheader.i.for.body.i.1_crit_edge
  %inc.i = add nuw nsw i32 %21, 1
  %28 = ptrtoint ptr %cs_gpiods.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cs_gpiods.i, align 4
  %arrayidx.i.1 = getelementptr ptr, ptr %29, i32 %inc.i
  %30 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.1, align 4
  %tobool8.not.i.1 = icmp eq ptr %31, null
  br i1 %tobool8.not.i.1, label %for.body.i.1.for.inc.i.1_crit_edge, label %if.then9.i.1

for.body.i.1.for.inc.i.1_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.1

if.then9.i.1:                                     ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i.1 = shl i8 2, %20
  %32 = ptrtoint ptr %native_cs_free.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %native_cs_free.i, align 4
  %conv11.i.1 = or i8 %33, %shl.i.1
  store i8 %conv11.i.1, ptr %native_cs_free.i, align 4
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then9.i.1, %for.body.i.1.for.inc.i.1_crit_edge
  %inc.i.1 = or i32 %21, 2
  %34 = ptrtoint ptr %cs_gpiods.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cs_gpiods.i, align 4
  %arrayidx.i.2 = getelementptr ptr, ptr %35, i32 %inc.i.1
  %36 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.2, align 4
  %tobool8.not.i.2 = icmp eq ptr %37, null
  br i1 %tobool8.not.i.2, label %for.inc.i.1.for.inc.i.2_crit_edge, label %if.then9.i.2

for.inc.i.1.for.inc.i.2_crit_edge:                ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.2

if.then9.i.2:                                     ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i.2 = shl nuw nsw i32 1, %inc.i.1
  %38 = ptrtoint ptr %native_cs_free.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %native_cs_free.i, align 4
  %40 = trunc i32 %shl.i.2 to i8
  %conv11.i.2 = or i8 %39, %40
  store i8 %conv11.i.2, ptr %native_cs_free.i, align 4
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.then9.i.2, %for.inc.i.1.for.inc.i.2_crit_edge
  %inc.i.2 = add nuw nsw i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i.2)
  %exitcond.not.i.2 = icmp eq i32 %inc.i.2, 4
  br i1 %exitcond.not.i.2, label %for.inc.i.2.for.end.i_crit_edge, label %for.body.i.3

for.inc.i.2.for.end.i_crit_edge:                  ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.3:                                     ; preds = %for.inc.i.2
  %41 = ptrtoint ptr %cs_gpiods.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cs_gpiods.i, align 4
  %arrayidx.i.3 = getelementptr ptr, ptr %42, i32 %inc.i.2
  %43 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.3, align 4
  %tobool8.not.i.3 = icmp eq ptr %44, null
  br i1 %tobool8.not.i.3, label %for.body.i.3.for.end.i_crit_edge, label %if.then9.i.3

for.body.i.3.for.end.i_crit_edge:                 ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.then9.i.3:                                     ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i.3 = shl i8 8, %20
  %45 = ptrtoint ptr %native_cs_free.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %native_cs_free.i, align 4
  %conv11.i.3 = or i8 %46, %shl.i.3
  store i8 %conv11.i.3, ptr %native_cs_free.i, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %if.then9.i.3, %for.body.i.3.for.end.i_crit_edge, %for.inc.i.2.for.end.i_crit_edge
  %47 = ptrtoint ptr %native_cs_free.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %native_cs_free.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool14.not.i = icmp eq i8 %48, 0
  br i1 %tobool14.not.i, label %for.end.i.initialize_native_cs_for_gpio.exit_crit_edge, label %if.then15.i

for.end.i.initialize_native_cs_for_gpio.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %initialize_native_cs_for_gpio.exit

if.then15.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = tail call i8 @llvm.cttz.i8(i8 %48, i1 true) #10, !range !168
  %narrow.i = add nuw nsw i8 %49, 1
  %native_cs_for_gpio.i = getelementptr inbounds %struct.atmel_spi, ptr %5, i32 0, i32 22
  %50 = ptrtoint ptr %native_cs_for_gpio.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %narrow.i, ptr %native_cs_for_gpio.i, align 1
  br label %initialize_native_cs_for_gpio.exit

initialize_native_cs_for_gpio.exit:               ; preds = %if.then15.i, %for.end.i.initialize_native_cs_for_gpio.exit_crit_edge, %if.end.i.initialize_native_cs_for_gpio.exit_crit_edge, %if.end.initialize_native_cs_for_gpio.exit_crit_edge
  %51 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cs_gpiod, align 8
  %tobool3.not = icmp eq ptr %52, null
  br i1 %tobool3.not, label %initialize_native_cs_for_gpio.exit.if.end12_crit_edge, label %land.lhs.true4

initialize_native_cs_for_gpio.exit.if.end12_crit_edge: ; preds = %initialize_native_cs_for_gpio.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true4:                                   ; preds = %initialize_native_cs_for_gpio.exit
  %53 = ptrtoint ptr %native_cs_free.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %native_cs_free.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool6.not = icmp eq i8 %54, 0
  br i1 %tobool6.not, label %land.lhs.true4.if.end12_crit_edge, label %do.end10

land.lhs.true4.if.end12_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

do.end10:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.19) #13
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true4.if.end12_crit_edge, %initialize_native_cs_for_gpio.exit.if.end12_crit_edge
  %native_cs_for_gpio = getelementptr inbounds %struct.atmel_spi, ptr %5, i32 0, i32 22
  %chip_select17 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %chip_select.0.in.in = select i1 %tobool3.not, ptr %chip_select17, ptr %native_cs_for_gpio
  %55 = ptrtoint ptr %chip_select.0.in.in to i32
  call void @__asan_load1_noabort(i32 %55)
  %chip_select.0.in = load i8, ptr %chip_select.0.in.in, align 1
  %chip_select.0 = zext i8 %chip_select.0.in to i32
  %sub = shl nuw nsw i32 %conv, 4
  %and20 = add nuw nsw i32 %sub, 128
  %shl = and i32 %and20, 240
  %mode21 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %56 = ptrtoint ptr %mode21 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mode21, align 8
  %and22 = lshr i32 %57, 1
  %58 = and i32 %and22, 1
  %59 = or i32 %58, %shl
  %and27 = shl i32 %57, 1
  %60 = and i32 %and27, 2
  %61 = or i32 %59, %60
  %62 = xor i32 %61, 2
  %or35 = or i32 %62, 8
  %csr.2 = select i1 %tobool3.not, i32 %or35, i32 %62
  %word_delay.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 15
  %63 = ptrtoint ptr %word_delay.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %word_delay.i, align 2
  %unit.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 15, i32 1
  %65 = ptrtoint ptr %unit.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %unit.i, align 2
  %67 = zext i8 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %66, label %if.end12.cleanup_crit_edge [
    i8 1, label %sw.bb.i
    i8 0, label %if.end12.atmel_word_delay_csr.exit_crit_edge
  ]

if.end12.atmel_word_delay_csr.exit_crit_edge:     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %atmel_word_delay_csr.exit

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %div7.i = udiv i16 %64, 1000
  br label %atmel_word_delay_csr.exit

atmel_word_delay_csr.exit:                        ; preds = %sw.bb.i, %if.end12.atmel_word_delay_csr.exit_crit_edge
  %value.0.in.i = phi i16 [ %64, %if.end12.atmel_word_delay_csr.exit_crit_edge ], [ %div7.i, %sw.bb.i ]
  %value.0.i = zext i16 %value.0.in.i to i32
  %spi_clk.i = getelementptr inbounds %struct.atmel_spi, ptr %5, i32 0, i32 7
  %68 = ptrtoint ptr %spi_clk.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %spi_clk.i, align 4
  %div3.i = udiv i32 %69, 1000000
  %mul.i = shl i32 %value.0.i, 19
  %70 = mul i32 %mul.i, %div3.i
  %shl43 = and i32 %70, -16777216
  %or44 = or i32 %shl43, %csr.2
  %controller_state = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %71 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %controller_state, align 8
  %tobool45.not = icmp eq ptr %72, null
  br i1 %tobool45.not, label %if.then46, label %atmel_word_delay_csr.exit.if.end52_crit_edge

atmel_word_delay_csr.exit.if.end52_crit_edge:     ; preds = %atmel_word_delay_csr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then46:                                        ; preds = %atmel_word_delay_csr.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %73 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %73, i32 noundef 3520, i32 noundef 4) #14
  %tobool48.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool48.not, label %if.then46.cleanup_crit_edge, label %if.end50

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end50:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %controller_state to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call7.i.i, ptr %controller_state, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.end50, %atmel_word_delay_csr.exit.if.end52_crit_edge
  %asd.0 = phi ptr [ %72, %atmel_word_delay_csr.exit.if.end52_crit_edge ], [ %call7.i.i, %if.end50 ]
  %75 = ptrtoint ptr %asd.0 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %or44, ptr %asd.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_spi_setup.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atmel_spi_setup, %do.end67)) #10
          to label %if.then60 [label %do.end67], !srcloc !169

if.then60:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %mode21 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mode21, align 8
  %78 = ptrtoint ptr %chip_select17 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %chip_select17, align 4
  %conv64 = zext i8 %79 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_spi_setup.__UNIQUE_ID_ddebug269, ptr noundef %spi, ptr noundef nonnull @.str.23, i32 noundef %conv, i32 noundef %77, i32 noundef %conv64, i32 noundef %or44) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then60, %if.end52
  %caps.i = getelementptr inbounds %struct.atmel_spi, ptr %5, i32 0, i32 16
  %80 = ptrtoint ptr %caps.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %caps.i, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.i.not = icmp eq i8 %81, 0
  br i1 %tobool.i.not, label %if.then69, label %do.end67.cleanup_crit_edge

do.end67.cleanup_crit_edge:                       ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then69:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #12
  %82 = tail call i32 @llvm.bswap.i32(i32 %or44)
  %regs = getelementptr inbounds %struct.atmel_spi, ptr %5, i32 0, i32 3
  %83 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %84, i32 48
  %mul = shl nuw nsw i32 %chip_select.0, 2
  %add.ptr70 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %82) #10, !srcloc !164
  br label %cleanup

cleanup:                                          ; preds = %if.then69, %do.end67.cleanup_crit_edge, %if.then46.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end10, %do.end
  %retval.0 = phi i32 [ -16, %do.end10 ], [ -22, %do.end ], [ -12, %if.then46.cleanup_crit_edge ], [ 0, %if.then69 ], [ 0, %do.end67.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_spi_one_transfer(ptr noundef %master, ptr noundef %spi, ptr noundef %xfer) #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #10
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !170
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %controller_state = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %3 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %controller_state, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %7 = lshr i32 %6, 4
  %conv1 = and i32 %7, 15
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 8
  %8 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bits_per_word, align 1
  %conv2 = zext i8 %9 to i32
  %sub = add nsw i32 %conv2, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1, i32 %sub)
  %cmp.not = icmp eq i32 %conv1, %sub
  br i1 %cmp.not, label %if.end9, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_spi_one_transfer.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atmel_spi_one_transfer, %cleanup)) #10
          to label %if.then8 [label %cleanup], !srcloc !169

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_spi_one_transfer.__UNIQUE_ID_ddebug270, ptr noundef %spi, ptr noundef nonnull @.str.25) #10
  br label %cleanup

if.end9:                                          ; preds = %entry
  %cur_msg = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 31
  %10 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cur_msg, align 4
  %is_dma_mapped = getelementptr inbounds %struct.spi_message, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %is_dma_mapped to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %is_dma_mapped, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool10.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool10.not, label %land.lhs.true, label %if.end9.if.end19_crit_edge

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end9
  %use_pdc = getelementptr inbounds %struct.atmel_spi, ptr %2, i32 0, i32 18
  %13 = ptrtoint ptr %use_pdc to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %use_pdc, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool11.not = icmp eq i8 %14, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end19_crit_edge, label %if.then13

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then13:                                        ; preds = %land.lhs.true
  %pdev.i = getelementptr inbounds %struct.atmel_spi, ptr %2, i32 0, i32 6
  %15 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  %rx_dma.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 4
  %17 = ptrtoint ptr %rx_dma.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %rx_dma.i, align 4
  %tx_dma.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 3
  %18 = ptrtoint ptr %tx_dma.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %tx_dma.i, align 4
  %19 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xfer, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.then13.if.end8.i_crit_edge, label %if.then.i

if.then13.if.end8.i_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then.i:                                        ; preds = %if.then13
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %20) #10
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.then.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !171

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev1.i) #10
  %init_name.i.i.i = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %26, %if.end.i.i.i ], [ %24, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #10
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %27 = ptrtoint ptr %tx_dma.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %tx_dma.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev1.i, i32 noundef -1) #10
  br label %cleanup

dma_map_single_attrs.exit.i:                      ; preds = %if.then.i
  tail call void @debug_dma_map_single(ptr noundef %dev1.i, ptr noundef nonnull %20, i32 noundef %22) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %28 = load ptr, ptr @mem_map, align 4
  %29 = ptrtoint ptr %20 to i32
  %sub.i.i = add i32 %29, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %28, i32 %shr.i.i
  %and.i.i = and i32 %29, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev1.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %22, i32 noundef 1, i32 noundef 0) #10
  %30 = ptrtoint ptr %tx_dma.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call41.i.i, ptr %tx_dma.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev1.i, i32 noundef %call41.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.cleanup_crit_edge, label %dma_map_single_attrs.exit.i.if.end8.i_crit_edge

dma_map_single_attrs.exit.i.if.end8.i_crit_edge:  ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

dma_map_single_attrs.exit.i.cleanup_crit_edge:    ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i:                                        ; preds = %dma_map_single_attrs.exit.i.if.end8.i_crit_edge, %if.then13.if.end8.i_crit_edge
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %31 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_buf.i, align 4
  %tobool9.not.i = icmp eq ptr %32, null
  br i1 %tobool9.not.i, label %if.end8.i.if.end19_crit_edge, label %if.then10.i

if.end8.i.if.end19_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then10.i:                                      ; preds = %if.end8.i
  %len12.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %33 = ptrtoint ptr %len12.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len12.i, align 4
  %call.i47.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %32) #10
  br i1 %call.i47.i, label %land.rhs.i49.i, label %dma_map_single_attrs.exit64.i

land.rhs.i49.i:                                   ; preds = %if.then10.i
  %.b1.i48.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i48.i, label %land.rhs.i49.i.dma_map_single_attrs.exit64.thread.i_crit_edge, label %if.then.i53.i, !prof !171

land.rhs.i49.i.dma_map_single_attrs.exit64.thread.i_crit_edge: ; preds = %land.rhs.i49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit64.thread.i

if.then.i53.i:                                    ; preds = %land.rhs.i49.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i50.i = tail call ptr @dev_driver_string(ptr noundef %dev1.i) #10
  %init_name.i.i51.i = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %init_name.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i.i51.i, align 8
  %tobool.not.i.i52.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i52.i, label %if.end.i.i54.i, label %if.then.i53.i.dev_name.exit.i56.i_crit_edge

if.then.i53.i.dev_name.exit.i56.i_crit_edge:      ; preds = %if.then.i53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i56.i

if.end.i.i54.i:                                   ; preds = %if.then.i53.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev1.i, align 4
  br label %dev_name.exit.i56.i

dev_name.exit.i56.i:                              ; preds = %if.end.i.i54.i, %if.then.i53.i.dev_name.exit.i56.i_crit_edge
  %retval.0.i.i55.i = phi ptr [ %38, %if.end.i.i54.i ], [ %36, %if.then.i53.i.dev_name.exit.i56.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef %call16.i50.i, ptr noundef %retval.0.i.i55.i) #10
  br label %dma_map_single_attrs.exit64.thread.i

dma_map_single_attrs.exit64.thread.i:             ; preds = %dev_name.exit.i56.i, %land.rhs.i49.i.dma_map_single_attrs.exit64.thread.i_crit_edge
  %39 = ptrtoint ptr %rx_dma.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %rx_dma.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev1.i, i32 noundef -1) #10
  br label %if.then18.i

dma_map_single_attrs.exit64.i:                    ; preds = %if.then10.i
  tail call void @debug_dma_map_single(ptr noundef %dev1.i, ptr noundef nonnull %32, i32 noundef %34) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %40 = load ptr, ptr @mem_map, align 4
  %41 = ptrtoint ptr %32 to i32
  %sub.i57.i = add i32 %41, 1073741824
  %shr.i58.i = lshr i32 %sub.i57.i, 12
  %add.ptr.i59.i = getelementptr %struct.page, ptr %40, i32 %shr.i58.i
  %and.i60.i = and i32 %41, 4095
  %call41.i61.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev1.i, ptr noundef %add.ptr.i59.i, i32 noundef %and.i60.i, i32 noundef %34, i32 noundef 2, i32 noundef 0) #10
  %42 = ptrtoint ptr %rx_dma.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call41.i61.i, ptr %rx_dma.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev1.i, i32 noundef %call41.i61.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i61.i)
  %cmp.i65.i = icmp eq i32 %call41.i61.i, -1
  br i1 %cmp.i65.i, label %dma_map_single_attrs.exit64.i.if.then18.i_crit_edge, label %dma_map_single_attrs.exit64.i.if.end19_crit_edge

dma_map_single_attrs.exit64.i.if.end19_crit_edge: ; preds = %dma_map_single_attrs.exit64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

dma_map_single_attrs.exit64.i.if.then18.i_crit_edge: ; preds = %dma_map_single_attrs.exit64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18.i

if.then18.i:                                      ; preds = %dma_map_single_attrs.exit64.i.if.then18.i_crit_edge, %dma_map_single_attrs.exit64.thread.i
  %43 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %xfer, align 4
  %tobool20.not.i = icmp eq ptr %44, null
  br i1 %tobool20.not.i, label %if.then18.i.cleanup_crit_edge, label %if.then21.i

if.then18.i.cleanup_crit_edge:                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then21.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %tx_dma.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_dma.i, align 4
  %47 = ptrtoint ptr %len12.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len12.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i, i32 noundef %46, i32 noundef %48, i32 noundef 1, i32 noundef 0) #10
  br label %cleanup

if.end19:                                         ; preds = %dma_map_single_attrs.exit64.i.if.end19_crit_edge, %if.end8.i.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %if.end9.if.end19_crit_edge
  %cs_gpiod.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 14
  %49 = ptrtoint ptr %cs_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cs_gpiod.i, align 8
  %tobool.not.i254 = icmp eq ptr %50, null
  %native_cs_for_gpio.i = getelementptr inbounds %struct.atmel_spi, ptr %2, i32 0, i32 22
  %chip_select1.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %chip_select.0.in.in.i = select i1 %tobool.not.i254, ptr %chip_select1.i, ptr %native_cs_for_gpio.i
  %51 = ptrtoint ptr %chip_select.0.in.in.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %chip_select.0.in.i = load i8, ptr %chip_select.0.in.in.i, align 1
  %chip_select.0.i = zext i8 %chip_select.0.in.i to i32
  %spi_clk.i = getelementptr inbounds %struct.atmel_spi, ptr %2, i32 0, i32 7
  %52 = ptrtoint ptr %spi_clk.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %spi_clk.i, align 4
  %caps.i.i = getelementptr inbounds %struct.atmel_spi, ptr %2, i32 0, i32 16
  %54 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %caps.i.i, align 4, !range !163
  %56 = xor i8 %55, 1
  %57 = zext i8 %56 to i32
  %bus_hz.0.i = lshr i32 %53, %57
  %speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 12
  %58 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %speed_hz.i, align 4
  %add.i = add i32 %59, -1
  %sub.i = add i32 %add.i, %bus_hz.0.i
  %div6.i = udiv i32 %sub.i, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %div6.i)
  %cmp.i = icmp ugt i32 %div6.i, 255
  br i1 %cmp.i, label %do.end.i, label %if.end11.i

do.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %div10.i = udiv i32 %bus_hz.0.i, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.38, i32 noundef %59, i32 noundef %div6.i, i32 noundef %div10.i) #13
  br label %atmel_spi_set_xfer_speed.exit

if.end11.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %sub.i)
  %cmp12.i = icmp ugt i32 %59, %sub.i
  br i1 %cmp12.i, label %do.end17.i, label %if.end20.i

do.end17.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.41, i32 noundef %59, i32 noundef 0, i32 noundef %bus_hz.0.i) #13
  br label %atmel_spi_set_xfer_speed.exit

if.end20.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %regs.i = getelementptr inbounds %struct.atmel_spi, ptr %2, i32 0, i32 3
  %60 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %61, i32 48
  %mul.i = shl nuw nsw i32 %chip_select.0.i, 2
  %add.ptr21.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #10, !srcloc !162
  %63 = and i32 %62, -16711681
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #10
  %and23.i = shl nuw nsw i32 %div6.i, 8
  %shl.i = and i32 %and23.i, 65280
  %or.i = or i32 %64, %shl.i
  %65 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %66 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %67, i32 48
  %add.ptr27.i = getelementptr i8, ptr %add.ptr25.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %65) #10, !srcloc !164
  %div28.i = udiv i32 %bus_hz.0.i, %div6.i
  %effective_speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 13
  %68 = ptrtoint ptr %effective_speed_hz.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %div28.i, ptr %effective_speed_hz.i, align 4
  br label %atmel_spi_set_xfer_speed.exit

atmel_spi_set_xfer_speed.exit:                    ; preds = %if.end20.i, %do.end17.i, %do.end.i
  %done_status = getelementptr inbounds %struct.atmel_spi, ptr %2, i32 0, i32 10
  %69 = ptrtoint ptr %done_status to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %done_status, align 4
  %current_transfer = getelementptr inbounds %struct.atmel_spi, ptr %2, i32 0, i32 8
  %70 = ptrtoint ptr %current_transfer to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %xfer, ptr %current_transfer, align 4
  %len21 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %71 = ptrtoint ptr %len21 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len21, align 4
  %current_remaining_bytes = getelementptr inbounds %struct.atmel_spi, ptr %2, i32 0, i32 9
  %73 = ptrtoint ptr %current_remaining_bytes to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %current_remaining_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool23.not290 = icmp eq i32 %72, 0
  br i1 %tobool23.not290, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %atmel_spi_set_xfer_speed.exit
  %xfer_completion = getelementptr inbounds %struct.atmel_spi, ptr %2, i32 0, i32 15
  %use_pdc24 = getelementptr inbounds %struct.atmel_spi, ptr %2, i32 0, i32 18
  %flags.i = getelementptr inbounds %struct.atmel_spi, ptr %2, i32 0, i32 1
  %use_dma.i = getelementptr inbounds %struct.atmel_spi, ptr %2, i32 0, i32 17
  br label %while.body

while.condthread-pre-split:                       ; preds = %if.end92
  %74 = ptrtoint ptr %current_remaining_bytes to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr = load i32, ptr %current_remaining_bytes, align 4
  %tobool23.not = icmp eq i32 %.pr, 0
  br i1 %tobool23.not, label %while.condthread-pre-split.if.end165_crit_edge, label %while.condthread-pre-split.while.body_crit_edge

while.condthread-pre-split.while.body_crit_edge:  ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.condthread-pre-split.if.end165_crit_edge:   ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end165

while.body:                                       ; preds = %while.condthread-pre-split.while.body_crit_edge, %while.body.lr.ph
  %75 = phi i32 [ %72, %while.body.lr.ph ], [ %.pr, %while.condthread-pre-split.while.body_crit_edge ]
  %76 = ptrtoint ptr %xfer_completion to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %xfer_completion, align 4
  %77 = ptrtoint ptr %use_pdc24 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %use_pdc24, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool25.not = icmp eq i8 %78, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %79 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %call2.i, ptr %flags.i, align 4
  tail call fastcc void @atmel_spi_pdc_next_xfer(ptr noundef %master, ptr noundef %xfer)
  %80 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %81) #10
  br label %if.end50

if.else:                                          ; preds = %while.body
  %82 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %use_dma.i, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i256 = icmp eq i8 %83, 0
  br i1 %tobool.not.i256, label %if.else.if.else48_crit_edge, label %atmel_spi_use_dma.exit

if.else.if.else48_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else48

atmel_spi_use_dma.exit:                           ; preds = %if.else
  %84 = ptrtoint ptr %len21 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %85)
  %cmp.i258 = icmp ugt i32 %85, 15
  br i1 %cmp.i258, label %if.then28, label %atmel_spi_use_dma.exit.if.else48_crit_edge

atmel_spi_use_dma.exit.if.else48_crit_edge:       ; preds = %atmel_spi_use_dma.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else48

if.then28:                                        ; preds = %atmel_spi_use_dma.exit
  %86 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %75, ptr %len, align 4
  %call30 = call fastcc i32 @atmel_spi_next_xfer_dma_submit(ptr noundef %master, ptr noundef %xfer, ptr noundef nonnull %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.else38, label %if.then28.if.then99.sink.split_crit_edge

if.then28.if.then99.sink.split_crit_edge:         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then99.sink.split

if.else38:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len, align 4
  %89 = ptrtoint ptr %current_remaining_bytes to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %current_remaining_bytes, align 4
  %sub40 = sub i32 %90, %88
  %91 = tail call i32 @llvm.smax.i32(i32 %sub40, i32 0)
  %92 = ptrtoint ptr %current_remaining_bytes to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %current_remaining_bytes, align 4
  br label %if.end50

if.else48:                                        ; preds = %atmel_spi_use_dma.exit.if.else48_crit_edge, %if.else.if.else48_crit_edge
  %call2.i259 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %93 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %call2.i259, ptr %flags.i, align 4
  %94 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %driver_data.i.i, align 4
  %fifo_size.i = getelementptr inbounds %struct.atmel_spi, ptr %95, i32 0, i32 20
  %96 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %fifo_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.i261 = icmp eq i32 %97, 0
  br i1 %tobool.not.i261, label %if.else.i, label %if.then.i262

if.then.i262:                                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @atmel_spi_next_xfer_fifo(ptr noundef %master, ptr noundef %xfer) #10
  br label %atmel_spi_next_xfer_pio.exit

if.else.i:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @atmel_spi_next_xfer_single(ptr noundef %master, ptr noundef %xfer) #10
  br label %atmel_spi_next_xfer_pio.exit

atmel_spi_next_xfer_pio.exit:                     ; preds = %if.else.i, %if.then.i262
  %98 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %99) #10
  br label %if.end50

if.end50:                                         ; preds = %atmel_spi_next_xfer_pio.exit, %if.else38, %if.then26
  %call53 = tail call i32 @wait_for_completion_timeout(ptr noundef %xfer_completion, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %if.end92.thread, label %if.end92, !prof !172

if.end92.thread:                                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1338, i32 noundef 9, ptr noundef null) #10
  br label %if.then99.sink.split

if.end92:                                         ; preds = %if.end50
  %100 = ptrtoint ptr %done_status to i32
  call void @__asan_load4_noabort(i32 %100)
  %.pr286 = load i32, ptr %done_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr286)
  %tobool94.not = icmp eq i32 %.pr286, 0
  br i1 %tobool94.not, label %while.condthread-pre-split, label %if.end92.if.then99_crit_edge

if.end92.if.then99_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then99

while.end:                                        ; preds = %atmel_spi_set_xfer_speed.exit
  %101 = ptrtoint ptr %done_status to i32
  call void @__asan_load4_noabort(i32 %101)
  %.pr288.pr = load i32, ptr %done_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr288.pr)
  %tobool98.not = icmp eq i32 %.pr288.pr, 0
  br i1 %tobool98.not, label %while.end.if.end165_crit_edge, label %while.end.if.then99_crit_edge

while.end.if.then99_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then99

while.end.if.end165_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end165

if.then99.sink.split:                             ; preds = %if.end92.thread, %if.then28.if.then99.sink.split_crit_edge
  %.str.26.sink = phi ptr [ @.str.28, %if.end92.thread ], [ @.str.26, %if.then28.if.then99.sink.split_crit_edge ]
  %call30.lcssa.sink = phi i32 [ -5, %if.end92.thread ], [ %call30, %if.then28.if.then99.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull %.str.26.sink) #13
  %102 = ptrtoint ptr %done_status to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %call30.lcssa.sink, ptr %done_status, align 4
  br label %if.then99

if.then99:                                        ; preds = %if.then99.sink.split, %while.end.if.then99_crit_edge, %if.end92.if.then99_crit_edge
  %use_pdc100 = getelementptr inbounds %struct.atmel_spi, ptr %2, i32 0, i32 18
  %103 = ptrtoint ptr %use_pdc100 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %use_pdc100, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool101.not = icmp eq i8 %104, 0
  br i1 %tobool101.not, label %if.else160, label %do.end105

do.end105:                                        ; preds = %if.then99
  %parent = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 1
  %105 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %parent, align 8
  %regs = getelementptr inbounds %struct.atmel_spi, ptr %2, i32 0, i32 3
  %107 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %108, i32 268
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !162
  %110 = tail call i32 @llvm.bswap.i32(i32 %109)
  %111 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs, align 4
  %add.ptr111 = getelementptr i8, ptr %112, i32 260
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111) #10, !srcloc !162
  %114 = tail call i32 @llvm.bswap.i32(i32 %113)
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %106, ptr noundef nonnull @.str.31, i32 noundef %110, i32 noundef %114) #13
  %115 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs, align 4
  %add.ptr115 = getelementptr i8, ptr %116, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 0) #10, !srcloc !164
  %117 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regs, align 4
  %add.ptr117 = getelementptr i8, ptr %118, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 0) #10, !srcloc !164
  %119 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regs, align 4
  %add.ptr119 = getelementptr i8, ptr %120, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119, i32 0) #10, !srcloc !164
  %121 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regs, align 4
  %add.ptr121 = getelementptr i8, ptr %122, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 0) #10, !srcloc !164
  br label %for.body

for.cond:                                         ; preds = %for.body
  %dec = add nsw i32 %timeout.0291, -1
  %tobool122.not = icmp eq i32 %dec, 0
  br i1 %tobool122.not, label %do.end136.critedge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %do.end105
  %timeout.0291 = phi i32 [ 1000, %do.end105 ], [ %dec, %for.cond.for.body_crit_edge ]
  %123 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regs, align 4
  %add.ptr125 = getelementptr i8, ptr %124, i32 16
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr125) #10, !srcloc !162
  %126 = and i32 %125, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool129.not = icmp eq i32 %126, 0
  br i1 %tobool129.not, label %for.cond, label %for.body.if.end139_crit_edge

for.body.if.end139_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

do.end136.critedge:                               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %128, ptr noundef nonnull @.str.34) #13
  br label %if.end139

if.end139:                                        ; preds = %do.end136.critedge, %for.body.if.end139_crit_edge
  %129 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regs, align 4
  %add.ptr143292 = getelementptr i8, ptr %130, i32 16
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr143292) #10, !srcloc !162
  %132 = and i32 %131, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool147.not293 = icmp eq i32 %132, 0
  br i1 %tobool147.not293, label %if.end139.while.end154_crit_edge, label %if.end139.while.body148_crit_edge

if.end139.while.body148_crit_edge:                ; preds = %if.end139
  br label %while.body148

if.end139.while.end154_crit_edge:                 ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end154

while.body148:                                    ; preds = %while.body148.while.body148_crit_edge, %if.end139.while.body148_crit_edge
  %133 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regs, align 4
  %add.ptr151 = getelementptr i8, ptr %134, i32 8
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr151) #10, !srcloc !162
  %136 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs, align 4
  %add.ptr143 = getelementptr i8, ptr %137, i32 16
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr143) #10, !srcloc !162
  %139 = and i32 %138, 16777216
  %tobool147.not = icmp eq i32 %139, 0
  br i1 %tobool147.not, label %while.body148.while.end154_crit_edge, label %while.body148.while.body148_crit_edge

while.body148.while.body148_crit_edge:            ; preds = %while.body148
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body148

while.body148.while.end154_crit_edge:             ; preds = %while.body148
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end154

while.end154:                                     ; preds = %while.body148.while.end154_crit_edge, %if.end139.while.end154_crit_edge
  %140 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs, align 4
  %add.ptr157 = getelementptr i8, ptr %141, i32 16
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr157) #10, !srcloc !162
  br label %if.end165

if.else160:                                       ; preds = %if.then99
  %use_dma.i264 = getelementptr inbounds %struct.atmel_spi, ptr %2, i32 0, i32 17
  %143 = ptrtoint ptr %use_dma.i264 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %use_dma.i264, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool.not.i265 = icmp eq i8 %144, 0
  br i1 %tobool.not.i265, label %if.else160.if.end165_crit_edge, label %atmel_spi_use_dma.exit269

if.else160.if.end165_crit_edge:                   ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end165

atmel_spi_use_dma.exit269:                        ; preds = %if.else160
  %145 = ptrtoint ptr %len21 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %len21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %146)
  %cmp.i267 = icmp ugt i32 %146, 15
  br i1 %cmp.i267, label %if.then162, label %atmel_spi_use_dma.exit269.if.end165_crit_edge

atmel_spi_use_dma.exit269.if.end165_crit_edge:    ; preds = %atmel_spi_use_dma.exit269
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end165

if.then162:                                       ; preds = %atmel_spi_use_dma.exit269
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 61
  %147 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dma_rx.i, align 4
  %tobool.not.i270 = icmp eq ptr %148, null
  br i1 %tobool.not.i270, label %if.then162.if.end.i_crit_edge, label %if.then.i271

if.then162.if.end.i_crit_edge:                    ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i271:                                     ; preds = %if.then162
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %148, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %150, i32 0, i32 47
  %151 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %152, null
  br i1 %tobool.not.i.i, label %if.then.i271.if.end.i_crit_edge, label %if.then.i.i273

if.then.i271.if.end.i_crit_edge:                  ; preds = %if.then.i271
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i.i273:                                   ; preds = %if.then.i271
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i272 = tail call i32 %152(ptr noundef nonnull %148) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i273, %if.then.i271.if.end.i_crit_edge, %if.then162.if.end.i_crit_edge
  %dma_tx.i = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 60
  %153 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dma_tx.i, align 8
  %tobool2.not.i = icmp eq ptr %154, null
  br i1 %tobool2.not.i, label %if.end.i.if.end165_crit_edge, label %if.then3.i

if.end.i.if.end165_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end165

if.then3.i:                                       ; preds = %if.end.i
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 4
  %device_terminate_all.i11.i = getelementptr inbounds %struct.dma_device, ptr %156, i32 0, i32 47
  %157 = ptrtoint ptr %device_terminate_all.i11.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %device_terminate_all.i11.i, align 4
  %tobool.not.i12.i = icmp eq ptr %158, null
  br i1 %tobool.not.i12.i, label %if.then3.i.if.end165_crit_edge, label %if.then.i14.i

if.then3.i.if.end165_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end165

if.then.i14.i:                                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i13.i = tail call i32 %158(ptr noundef nonnull %154) #10
  br label %if.end165

if.end165:                                        ; preds = %if.then.i14.i, %if.then3.i.if.end165_crit_edge, %if.end.i.if.end165_crit_edge, %atmel_spi_use_dma.exit269.if.end165_crit_edge, %if.else160.if.end165_crit_edge, %while.end154, %while.end.if.end165_crit_edge, %while.condthread-pre-split.if.end165_crit_edge
  %159 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cur_msg, align 4
  %is_dma_mapped167 = getelementptr inbounds %struct.spi_message, ptr %160, i32 0, i32 2
  %161 = ptrtoint ptr %is_dma_mapped167 to i32
  call void @__asan_load1_noabort(i32 %161)
  %bf.load168 = load i8, ptr %is_dma_mapped167, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load168)
  %tobool171.not = icmp sgt i8 %bf.load168, -1
  br i1 %tobool171.not, label %land.lhs.true172, label %if.end165.if.end177_crit_edge

if.end165.if.end177_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end177

land.lhs.true172:                                 ; preds = %if.end165
  %use_pdc173 = getelementptr inbounds %struct.atmel_spi, ptr %2, i32 0, i32 18
  %162 = ptrtoint ptr %use_pdc173 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %use_pdc173, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool174.not = icmp eq i8 %163, 0
  br i1 %tobool174.not, label %land.lhs.true172.if.end177_crit_edge, label %if.then176

land.lhs.true172.if.end177_crit_edge:             ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end177

if.then176:                                       ; preds = %land.lhs.true172
  %tx_dma.i274 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 3
  %164 = ptrtoint ptr %tx_dma.i274 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %tx_dma.i274, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %165)
  %cmp.not.i = icmp eq i32 %165, -1
  br i1 %cmp.not.i, label %if.then176.if.end.i278_crit_edge, label %if.then.i276

if.then176.if.end.i278_crit_edge:                 ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i278

if.then.i276:                                     ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #12
  %parent.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 1
  %166 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %parent.i, align 8
  %168 = ptrtoint ptr %len21 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %len21, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %167, i32 noundef %165, i32 noundef %169, i32 noundef 1, i32 noundef 0) #10
  br label %if.end.i278

if.end.i278:                                      ; preds = %if.then.i276, %if.then176.if.end.i278_crit_edge
  %rx_dma.i277 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 4
  %170 = ptrtoint ptr %rx_dma.i277 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %rx_dma.i277, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %171)
  %cmp2.not.i = icmp eq i32 %171, -1
  br i1 %cmp2.not.i, label %if.end.i278.if.end177_crit_edge, label %if.then3.i279

if.end.i278.if.end177_crit_edge:                  ; preds = %if.end.i278
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end177

if.then3.i279:                                    ; preds = %if.end.i278
  call void @__sanitizer_cov_trace_pc() #12
  %parent5.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 1
  %172 = ptrtoint ptr %parent5.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %parent5.i, align 8
  %174 = ptrtoint ptr %len21 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %len21, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %173, i32 noundef %171, i32 noundef %175, i32 noundef 2, i32 noundef 0) #10
  br label %if.end177

if.end177:                                        ; preds = %if.then3.i279, %if.end.i278.if.end177_crit_edge, %land.lhs.true172.if.end177_crit_edge, %if.end165.if.end177_crit_edge
  %use_pdc178 = getelementptr inbounds %struct.atmel_spi, ptr %2, i32 0, i32 18
  %176 = ptrtoint ptr %use_pdc178 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %use_pdc178, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool179.not = icmp eq i8 %177, 0
  br i1 %tobool179.not, label %if.end177.if.end181_crit_edge, label %if.then180

if.end177.if.end181_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end181

if.then180:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #12
  %regs.i281 = getelementptr inbounds %struct.atmel_spi, ptr %2, i32 0, i32 3
  %178 = ptrtoint ptr %regs.i281 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %regs.i281, align 4
  %add.ptr.i282 = getelementptr i8, ptr %179, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i282, i32 33685504) #10, !srcloc !164
  br label %if.end181

if.end181:                                        ; preds = %if.then180, %if.end177.if.end181_crit_edge
  %180 = ptrtoint ptr %done_status to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %done_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end181, %if.then21.i, %if.then18.i.cleanup_crit_edge, %dma_map_single_attrs.exit.i.cleanup_crit_edge, %dma_map_single_attrs.exit.thread.i, %if.then8, %do.body
  %retval.0 = phi i32 [ %181, %if.end181 ], [ -92, %if.then8 ], [ -92, %do.body ], [ -12, %if.then21.i ], [ -12, %if.then18.i.cleanup_crit_edge ], [ -12, %dma_map_single_attrs.exit.i.cleanup_crit_edge ], [ -12, %dma_map_single_attrs.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_spi_set_cs(ptr noundef %spi, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 8
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  %cmp = xor i1 %7, %enable
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @cs_activate(ptr noundef %3, ptr noundef %spi)
  br label %if.end

if.else:                                          ; preds = %entry
  %cs_gpiod.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 14
  %8 = ptrtoint ptr %cs_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cs_gpiod.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  %native_cs_for_gpio.i = getelementptr inbounds %struct.atmel_spi, ptr %3, i32 0, i32 22
  %chip_select1.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %chip_select.0.in.in.i = select i1 %tobool.not.i, ptr %chip_select1.i, ptr %native_cs_for_gpio.i
  %10 = ptrtoint ptr %chip_select.0.in.in.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %chip_select.0.in.i = load i8, ptr %chip_select.0.in.in.i, align 1
  %chip_select.0.i = zext i8 %chip_select.0.in.i to i32
  %regs.i = getelementptr inbounds %struct.atmel_spi, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !162
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #10
  %shr.i = lshr i32 %14, 16
  %shl.i = shl nuw i32 1, %chip_select.0.i
  %and.i = and i32 %shl.i, 15
  %15 = and i32 %and.i, %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.not.not.i = icmp eq i32 %15, 0
  br i1 %tobool4.not.not.i, label %if.then5.i, label %if.else.do.body.i_crit_edge

if.else.do.body.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.then5.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i32 %14, 983040
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %16) #10, !srcloc !164
  br label %do.body.i

do.body.i:                                        ; preds = %if.then5.i, %if.else.do.body.i_crit_edge
  %mr.0.i = phi i32 [ %or.i, %if.then5.i ], [ %14, %if.else.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_deactivate.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atmel_spi_set_cs, %do.end.i)) #10
          to label %if.then16.i [label %do.end.i], !srcloc !169

if.then16.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_deactivate.__UNIQUE_ID_ddebug259, ptr noundef %spi, ptr noundef nonnull @.str.60, i32 noundef %mr.0.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then16.i, %do.body.i
  %19 = ptrtoint ptr %cs_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cs_gpiod.i, align 8
  %tobool19.not.i = icmp eq ptr %20, null
  br i1 %tobool19.not.i, label %if.then20.i, label %do.end.i.if.end_crit_edge

do.end.i.if.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then20.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 1) #10, !srcloc !164
  br label %if.end

if.end:                                           ; preds = %if.then20.i, %do.end.i.if.end_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_spi_cleanup(ptr nocapture noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_state = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %0 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_state, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %controller_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %controller_state, align 8
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @atmel_spi_can_dma(ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %spi, ptr nocapture noundef readonly %xfer) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %use_dma.i = getelementptr inbounds %struct.atmel_spi, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_dma.i, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.atmel_spi_use_dma.exit_crit_edge, label %land.rhs.i

entry.atmel_spi_use_dma.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %atmel_spi_use_dma.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %5)
  %cmp.i = icmp ugt i32 %5, 15
  br label %atmel_spi_use_dma.exit

atmel_spi_use_dma.exit:                           ; preds = %land.rhs.i, %entry.atmel_spi_use_dma.exit_crit_edge
  %6 = phi i1 [ false, %entry.atmel_spi_use_dma.exit_crit_edge ], [ %cmp.i, %land.rhs.i ]
  ret i1 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_spi_configure_dma(ptr nocapture noundef %master, ptr nocapture noundef readonly %as) unnamed_addr #2 align 64 {
entry:
  %slave_config.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.atmel_spi, ptr %as, i32 0, i32 6
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call = tail call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull @.str.62) #10
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 60
  %2 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %dma_tx, align 8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %call to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_spi_configure_dma.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atmel_spi_configure_dma, %error_clear)) #10
          to label %if.then10 [label %error_clear], !srcloc !169

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_spi_configure_dma.__UNIQUE_ID_ddebug260, ptr noundef %dev1, ptr noundef nonnull @.str.64) #10
  br label %error_clear

if.end11:                                         ; preds = %entry
  %call12 = tail call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull @.str.65) #10
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 61
  %4 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call12, ptr %dma_rx, align 4
  %cmp.i85 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i85, label %if.then15, label %if.end36

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %call12 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_spi_configure_dma.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atmel_spi_configure_dma, %error)) #10
          to label %if.then32 [label %error], !srcloc !169

if.then32:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_spi_configure_dma.__UNIQUE_ID_ddebug261, ptr noundef %dev1, ptr noundef nonnull @.str.66) #10
  br label %error

if.end36:                                         ; preds = %if.end11
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %slave_config.i) #10
  %10 = call ptr @memset(ptr %slave_config.i, i32 255, i32 48)
  %11 = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config.i, i32 0, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config.i, i32 0, i32 3
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %13, align 4
  %phybase.i = getelementptr inbounds %struct.atmel_spi, ptr %as, i32 0, i32 2
  %15 = ptrtoint ptr %phybase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phybase.i, align 4
  %add.i = add i32 %16, 12
  %dst_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config.i, i32 0, i32 2
  %17 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.i, ptr %dst_addr.i, align 4
  %add5.i = add i32 %16, 8
  %src_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config.i, i32 0, i32 1
  %18 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add5.i, ptr %src_addr.i, align 4
  %src_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config.i, i32 0, i32 5
  %19 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %src_maxburst.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config.i, i32 0, i32 6
  %20 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %dst_maxburst.i, align 4
  %device_fc.i = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config.i, i32 0, i32 9
  %21 = ptrtoint ptr %device_fc.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %device_fc.i, align 4
  %dma_tx.i = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 60
  %22 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_tx.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 44
  %26 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i, label %if.end36.do.end.i_crit_edge, label %dmaengine_slave_config.exit.i

if.end36.do.end.i_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

dmaengine_slave_config.exit.i:                    ; preds = %if.end36
  %call.i.i = call i32 %27(ptr noundef %23, ptr noundef nonnull %slave_config.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %dmaengine_slave_config.exit.i.if.end9.i_crit_edge, label %dmaengine_slave_config.exit.i.do.end.i_crit_edge

dmaengine_slave_config.exit.i.do.end.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

dmaengine_slave_config.exit.i.if.end9.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

do.end.i:                                         ; preds = %dmaengine_slave_config.exit.i.do.end.i_crit_edge, %if.end36.do.end.i_crit_edge
  %28 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.48) #13
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.end.i, %dmaengine_slave_config.exit.i.if.end9.i_crit_edge
  %tobool38.not = phi i1 [ false, %do.end.i ], [ true, %dmaengine_slave_config.exit.i.if.end9.i_crit_edge ]
  %err.0.i = phi i32 [ -22, %do.end.i ], [ 0, %dmaengine_slave_config.exit.i.if.end9.i_crit_edge ]
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 61
  %30 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma_rx.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %device_config.i24.i = getelementptr inbounds %struct.dma_device, ptr %33, i32 0, i32 44
  %34 = ptrtoint ptr %device_config.i24.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device_config.i24.i, align 4
  %tobool.not.i25.i = icmp eq ptr %35, null
  br i1 %tobool.not.i25.i, label %if.end9.i.atmel_spi_dma_slave_config.exit.thread_crit_edge, label %dmaengine_slave_config.exit29.i

if.end9.i.atmel_spi_dma_slave_config.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atmel_spi_dma_slave_config.exit.thread

dmaengine_slave_config.exit29.i:                  ; preds = %if.end9.i
  %call.i26.i = call i32 %35(ptr noundef %31, ptr noundef nonnull %slave_config.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i)
  %tobool11.not.i = icmp eq i32 %call.i26.i, 0
  br i1 %tobool11.not.i, label %atmel_spi_dma_slave_config.exit, label %dmaengine_slave_config.exit29.i.atmel_spi_dma_slave_config.exit.thread_crit_edge

dmaengine_slave_config.exit29.i.atmel_spi_dma_slave_config.exit.thread_crit_edge: ; preds = %dmaengine_slave_config.exit29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atmel_spi_dma_slave_config.exit.thread

atmel_spi_dma_slave_config.exit.thread:           ; preds = %dmaengine_slave_config.exit29.i.atmel_spi_dma_slave_config.exit.thread_crit_edge, %if.end9.i.atmel_spi_dma_slave_config.exit.thread_crit_edge
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 4
  %dev17.i = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i, ptr noundef nonnull @.str.51) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %slave_config.i) #10
  br label %error

atmel_spi_dma_slave_config.exit:                  ; preds = %dmaengine_slave_config.exit29.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %slave_config.i) #10
  br i1 %tobool38.not, label %do.end43, label %atmel_spi_dma_slave_config.exit.error_crit_edge

atmel_spi_dma_slave_config.exit.error_crit_edge:  ; preds = %atmel_spi_dma_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

do.end43:                                         ; preds = %atmel_spi_dma_slave_config.exit
  %38 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev, align 4
  %dev45 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dma_tx, align 8
  %dev.i86 = getelementptr inbounds %struct.dma_chan, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %dev.i86 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i86, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %43, i32 0, i32 1, i32 3
  %44 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i87 = icmp eq ptr %45, null
  br i1 %tobool.not.i.i87, label %if.end.i.i, label %do.end43.dma_chan_name.exit_crit_edge

do.end43.dma_chan_name.exit_crit_edge:            ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_chan_name.exit

if.end.i.i:                                       ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #12
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %43, i32 0, i32 1
  %46 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device.i, align 4
  br label %dma_chan_name.exit

dma_chan_name.exit:                               ; preds = %if.end.i.i, %do.end43.dma_chan_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %47, %if.end.i.i ], [ %45, %do.end43.dma_chan_name.exit_crit_edge ]
  %48 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dma_rx, align 4
  %dev.i88 = getelementptr inbounds %struct.dma_chan, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %dev.i88 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i88, align 4
  %init_name.i.i89 = getelementptr inbounds %struct.dma_chan_dev, ptr %51, i32 0, i32 1, i32 3
  %52 = ptrtoint ptr %init_name.i.i89 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init_name.i.i89, align 8
  %tobool.not.i.i90 = icmp eq ptr %53, null
  br i1 %tobool.not.i.i90, label %if.end.i.i92, label %dma_chan_name.exit.dma_chan_name.exit94_crit_edge

dma_chan_name.exit.dma_chan_name.exit94_crit_edge: ; preds = %dma_chan_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_chan_name.exit94

if.end.i.i92:                                     ; preds = %dma_chan_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %device.i91 = getelementptr inbounds %struct.dma_chan_dev, ptr %51, i32 0, i32 1
  %54 = ptrtoint ptr %device.i91 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device.i91, align 4
  br label %dma_chan_name.exit94

dma_chan_name.exit94:                             ; preds = %if.end.i.i92, %dma_chan_name.exit.dma_chan_name.exit94_crit_edge
  %retval.0.i.i93 = phi ptr [ %55, %if.end.i.i92 ], [ %53, %dma_chan_name.exit.dma_chan_name.exit94_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev45, ptr noundef nonnull @.str.67, ptr noundef %retval.0.i.i, ptr noundef %retval.0.i.i93) #13
  br label %cleanup

error:                                            ; preds = %atmel_spi_dma_slave_config.exit.error_crit_edge, %atmel_spi_dma_slave_config.exit.thread, %if.then32, %if.then15
  %err.0 = phi i32 [ %5, %if.then32 ], [ %err.0.i, %atmel_spi_dma_slave_config.exit.error_crit_edge ], [ -22, %atmel_spi_dma_slave_config.exit.thread ], [ %5, %if.then15 ]
  %56 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dma_rx, align 4
  %cmp.i95 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %error.if.end54_crit_edge, label %if.then52

error.if.end54_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then52:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  call void @dma_release_channel(ptr noundef %57) #10
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %error.if.end54_crit_edge
  %58 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dma_tx, align 8
  %cmp.i96 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96, label %if.end54.error_clear_crit_edge, label %if.then57

if.end54.error_clear_crit_edge:                   ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_clear

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  call void @dma_release_channel(ptr noundef %59) #10
  br label %error_clear

error_clear:                                      ; preds = %if.then57, %if.end54.error_clear_crit_edge, %if.then10, %if.then
  %err.1 = phi i32 [ %3, %if.then10 ], [ %err.0, %if.end54.error_clear_crit_edge ], [ %err.0, %if.then57 ], [ %3, %if.then ]
  %dma_rx60 = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 61
  %60 = ptrtoint ptr %dma_rx60 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %dma_rx60, align 4
  %61 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %dma_tx, align 8
  br label %cleanup

cleanup:                                          ; preds = %error_clear, %dma_chan_name.exit94
  %retval.0 = phi i32 [ %err.1, %error_clear ], [ 0, %dma_chan_name.exit94 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_spi_pdc_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs = getelementptr inbounds %struct.atmel_spi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 28
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !162
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #10, !srcloc !162
  %8 = and i32 %7, %4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %and7 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr9 = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 1476395008) #10, !srcloc !164
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr12 = getelementptr i8, ptr %13, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #10, !srcloc !162
  %done_status = getelementptr inbounds %struct.atmel_spi, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %done_status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -5, ptr %done_status, align 4
  br label %if.end21.sink.split

if.else:                                          ; preds = %entry
  %and15 = and i32 %9, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else.if.end21_crit_edge, label %if.then17

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr19 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %8) #10, !srcloc !164
  br label %if.end21.sink.split

if.end21.sink.split:                              ; preds = %if.then17, %if.then
  %xfer_completion20 = getelementptr inbounds %struct.atmel_spi, ptr %1, i32 0, i32 15
  tail call void @complete(ptr noundef %xfer_completion20) #10
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %if.else.if.end21_crit_edge
  %ret.0 = phi i32 [ 0, %if.else.if.end21_crit_edge ], [ 1, %if.end21.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_spi_pio_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs = getelementptr inbounds %struct.atmel_spi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 28
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !162
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #10, !srcloc !162
  %8 = and i32 %7, %4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %and7 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr9 = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 134217728) #10, !srcloc !164
  %parent = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.68) #13
  %done_status = getelementptr inbounds %struct.atmel_spi, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %done_status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -5, ptr %done_status, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add.ptr18 = getelementptr i8, ptr %16, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #10, !srcloc !162
  %xfer_completion = getelementptr inbounds %struct.atmel_spi, ptr %1, i32 0, i32 15
  tail call void @complete(ptr noundef %xfer_completion) #10
  br label %if.end79

if.else:                                          ; preds = %entry
  %and21 = and i32 %9, 536870913
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else33, label %if.then23

if.then23:                                        ; preds = %if.else
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %flags.i = getelementptr inbounds %struct.atmel_spi, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call2.i, ptr %flags.i, align 4
  %current_remaining_bytes = getelementptr inbounds %struct.atmel_spi, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %current_remaining_bytes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %current_remaining_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool24.not = icmp eq i32 %20, 0
  br i1 %tobool24.not, label %if.then23.if.end32_crit_edge, label %if.then25

if.then23.if.end32_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then25:                                        ; preds = %if.then23
  %current_transfer = getelementptr inbounds %struct.atmel_spi, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %current_transfer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %current_transfer, align 4
  %fifo_size.i = getelementptr inbounds %struct.atmel_spi, ptr %1, i32 0, i32 20
  %23 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fifo_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then25
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 68
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !162
  %28 = lshr i32 %27, 8
  %and.i.i = and i32 %28, 63
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %22, i32 0, i32 2
  %29 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i.i, align 4
  %31 = ptrtoint ptr %current_remaining_bytes to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %current_remaining_bytes, align 4
  %sub.i.i = sub i32 %30, %32
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %22, i32 0, i32 1
  %33 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx_buf.i.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %34, i32 %sub.i.i
  %bits_per_word.i.i = getelementptr inbounds %struct.spi_transfer, ptr %22, i32 0, i32 8
  %35 = ptrtoint ptr %bits_per_word.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bits_per_word.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %36)
  %cmp.i.i = icmp ugt i8 %36, 8
  %shl.i.i = zext i1 %cmp.i.i to i32
  %cond.i.i = shl nuw nsw i32 %and.i.i, %shl.i.i
  %37 = tail call i32 @llvm.usub.sat.i32(i32 %32, i32 %cond.i.i) #10
  %38 = ptrtoint ptr %current_remaining_bytes to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %current_remaining_bytes, align 4
  %39 = ptrtoint ptr %bits_per_word.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bits_per_word.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %40)
  %cmp13.i.i = icmp ugt i8 %40, 8
  br i1 %cmp13.i.i, label %if.then15.i.i, label %if.then.i.if.end18.i.i_crit_edge

if.then.i.if.end18.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i.i

if.then15.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %and17.i.i = and i32 %37, -2
  %41 = ptrtoint ptr %current_remaining_bytes to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and17.i.i, ptr %current_remaining_bytes, align 4
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then15.i.i, %if.then.i.if.end18.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not51.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not51.i.i, label %if.end18.i.i.atmel_spi_pump_pio_data.exitthread-pre-split_crit_edge, label %if.end18.i.i.while.body.i.i_crit_edge

if.end18.i.i.while.body.i.i_crit_edge:            ; preds = %if.end18.i.i
  br label %while.body.i.i

if.end18.i.i.atmel_spi_pump_pio_data.exitthread-pre-split_crit_edge: ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atmel_spi_pump_pio_data.exitthread-pre-split

while.body.i.i:                                   ; preds = %if.end33.i.i.while.body.i.i_crit_edge, %if.end18.i.i.while.body.i.i_crit_edge
  %num_data.054.i.i = phi i32 [ %dec.i.i, %if.end33.i.i.while.body.i.i_crit_edge ], [ %and.i.i, %if.end18.i.i.while.body.i.i_crit_edge ]
  %bytes.053.i.i = phi ptr [ %bytes.1.i.i, %if.end33.i.i.while.body.i.i_crit_edge ], [ %add.ptr1.i.i, %if.end18.i.i.while.body.i.i_crit_edge ]
  %words.052.i.i = phi ptr [ %words.1.i.i, %if.end33.i.i.while.body.i.i_crit_edge ], [ %add.ptr1.i.i, %if.end18.i.i.while.body.i.i_crit_edge ]
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %add.ptr21.i.i = getelementptr i8, ptr %43, i32 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i.i) #10, !srcloc !162
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #10
  %46 = ptrtoint ptr %bits_per_word.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bits_per_word.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %47)
  %cmp27.i.i = icmp ugt i8 %47, 8
  br i1 %cmp27.i.i, label %if.then29.i.i, label %if.else30.i.i

if.then29.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv24.i.i = trunc i32 %45 to i16
  %incdec.ptr.i.i = getelementptr i16, ptr %words.052.i.i, i32 1
  %48 = ptrtoint ptr %words.052.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv24.i.i, ptr %words.052.i.i, align 2
  br label %if.end33.i.i

if.else30.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv31.i.i = trunc i32 %45 to i8
  %incdec.ptr32.i.i = getelementptr i8, ptr %bytes.053.i.i, i32 1
  %49 = ptrtoint ptr %bytes.053.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv31.i.i, ptr %bytes.053.i.i, align 1
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.else30.i.i, %if.then29.i.i
  %words.1.i.i = phi ptr [ %incdec.ptr.i.i, %if.then29.i.i ], [ %words.052.i.i, %if.else30.i.i ]
  %bytes.1.i.i = phi ptr [ %bytes.053.i.i, %if.then29.i.i ], [ %incdec.ptr32.i.i, %if.else30.i.i ]
  %dec.i.i = add nsw i32 %num_data.054.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %if.end33.i.i.atmel_spi_pump_pio_data.exitthread-pre-split_crit_edge, label %if.end33.i.i.while.body.i.i_crit_edge

if.end33.i.i.while.body.i.i_crit_edge:            ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

if.end33.i.i.atmel_spi_pump_pio_data.exitthread-pre-split_crit_edge: ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atmel_spi_pump_pio_data.exitthread-pre-split

if.else.i:                                        ; preds = %if.then25
  %len.i4.i = getelementptr inbounds %struct.spi_transfer, ptr %22, i32 0, i32 2
  %50 = ptrtoint ptr %len.i4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len.i4.i, align 4
  %sub.i6.i = sub i32 %51, %20
  %bits_per_word.i7.i = getelementptr inbounds %struct.spi_transfer, ptr %22, i32 0, i32 8
  %52 = ptrtoint ptr %bits_per_word.i7.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bits_per_word.i7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %53)
  %cmp.i8.i = icmp ugt i8 %53, 8
  %rx_buf.i9.i = getelementptr inbounds %struct.spi_transfer, ptr %22, i32 0, i32 1
  %54 = ptrtoint ptr %rx_buf.i9.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rx_buf.i9.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %55, i32 %sub.i6.i
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %57, i32 8
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #10
  br i1 %cmp.i8.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #10
  %conv3.i.i = trunc i32 %59 to i16
  %60 = ptrtoint ptr %add.ptr.i10.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv3.i.i, ptr %add.ptr.i10.i, align 2
  br label %atmel_spi_pump_single_data.exit.i

if.else.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = lshr i32 %58, 24
  %conv11.i.i = trunc i32 %61 to i8
  %62 = ptrtoint ptr %add.ptr.i10.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv11.i.i, ptr %add.ptr.i10.i, align 1
  br label %atmel_spi_pump_single_data.exit.i

atmel_spi_pump_single_data.exit.i:                ; preds = %if.else.i.i, %if.then.i.i
  %63 = ptrtoint ptr %bits_per_word.i7.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %bits_per_word.i7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %64)
  %cmp14.i.i = icmp ugt i8 %64, 8
  %65 = ptrtoint ptr %current_remaining_bytes to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %current_remaining_bytes, align 4
  %dec.i12.i = add i32 %66, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %66)
  %cmp18.i.i = icmp sgt i32 %66, 2
  %sub22.i.i = add nsw i32 %66, -2
  %spec.select.i.i = select i1 %cmp18.i.i, i32 %sub22.i.i, i32 0
  %sub22.sink.i.i = select i1 %cmp14.i.i, i32 %spec.select.i.i, i32 %dec.i12.i
  %67 = ptrtoint ptr %current_remaining_bytes to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %sub22.sink.i.i, ptr %current_remaining_bytes, align 4
  br label %atmel_spi_pump_pio_data.exit

atmel_spi_pump_pio_data.exitthread-pre-split:     ; preds = %if.end33.i.i.atmel_spi_pump_pio_data.exitthread-pre-split_crit_edge, %if.end18.i.i.atmel_spi_pump_pio_data.exitthread-pre-split_crit_edge
  %68 = ptrtoint ptr %current_remaining_bytes to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr = load i32, ptr %current_remaining_bytes, align 4
  br label %atmel_spi_pump_pio_data.exit

atmel_spi_pump_pio_data.exit:                     ; preds = %atmel_spi_pump_pio_data.exitthread-pre-split, %atmel_spi_pump_single_data.exit.i
  %69 = phi i32 [ %.pr, %atmel_spi_pump_pio_data.exitthread-pre-split ], [ %sub22.sink.i.i, %atmel_spi_pump_single_data.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool27.not = icmp eq i32 %69, 0
  br i1 %tobool27.not, label %if.then28, label %atmel_spi_pump_pio_data.exit.if.end_crit_edge

atmel_spi_pump_pio_data.exit.if.end_crit_edge:    ; preds = %atmel_spi_pump_pio_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then28:                                        ; preds = %atmel_spi_pump_pio_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs, align 4
  %add.ptr30 = getelementptr i8, ptr %71, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %8) #10, !srcloc !164
  br label %if.end

if.end:                                           ; preds = %if.then28, %atmel_spi_pump_pio_data.exit.if.end_crit_edge
  %xfer_completion31 = getelementptr inbounds %struct.atmel_spi, ptr %1, i32 0, i32 15
  tail call void @complete(ptr noundef %xfer_completion31) #10
  br label %if.end32

if.end32:                                         ; preds = %if.end, %if.then23.if.end32_crit_edge
  %ret.0 = phi i32 [ 1, %if.end ], [ 0, %if.then23.if.end32_crit_edge ]
  %72 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %73) #10
  br label %if.end79

if.else33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool34.not = icmp eq i32 %8, 0
  br i1 %tobool34.not, label %if.else33.if.end68_crit_edge, label %land.rhs

if.else33.if.end68_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

land.rhs:                                         ; preds = %if.else33
  %.b102 = load i1, ptr @atmel_spi_pio_interrupt.__already_done, align 1
  br i1 %.b102, label %land.rhs.if.end68_crit_edge, label %if.then42, !prof !171

land.rhs.if.end68_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then42:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @atmel_spi_pio_interrupt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1089, i32 noundef 9, ptr noundef nonnull @.str.70, i32 noundef %9) #10
  br label %if.end68

if.end68:                                         ; preds = %if.then42, %land.rhs.if.end68_crit_edge, %if.else33.if.end68_crit_edge
  %74 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs, align 4
  %add.ptr77 = getelementptr i8, ptr %75, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %8) #10, !srcloc !164
  br label %if.end79

if.end79:                                         ; preds = %if.end68, %if.end32, %if.then
  %ret.1 = phi i32 [ 1, %if.then ], [ %ret.0, %if.end32 ], [ 1, %if.end68 ]
  ret i32 %ret.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %clk) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_spi_init(ptr nocapture noundef readonly %as) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.atmel_spi, ptr %as, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 -2147483648) #10, !srcloc !164
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 -2147483648) #10, !srcloc !164
  %fifo_size = getelementptr inbounds %struct.atmel_spi, ptr %as, i32 0, i32 20
  %4 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 64) #10, !srcloc !164
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %has_wdrbt = getelementptr inbounds %struct.atmel_spi, ptr %as, i32 0, i32 16, i32 1
  %8 = ptrtoint ptr %has_wdrbt to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_wdrbt, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr10 = getelementptr i8, ptr %11, i32 4
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 822083584) #10, !srcloc !164
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 285212672) #10, !srcloc !164
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then6
  %use_pdc = getelementptr inbounds %struct.atmel_spi, ptr %as, i32 0, i32 18
  %12 = ptrtoint ptr %use_pdc to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %use_pdc, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not = icmp eq i8 %13, 0
  br i1 %tobool12.not, label %if.end11.if.end16_crit_edge, label %if.then13

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr15 = getelementptr i8, ptr %15, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 33685504) #10, !srcloc !164
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11.if.end16_crit_edge
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 16777216) #10, !srcloc !164
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_spi_release_dma(ptr nocapture noundef %master) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 61
  %0 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_rx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %1) #10
  %2 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dma_rx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 60
  %3 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dma_tx, align 8
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %4) #10
  %5 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %dma_tx, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_spi_pdc_next_xfer(ptr noundef %master, ptr noundef %xfer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs = getelementptr inbounds %struct.atmel_spi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33685504) #10, !srcloc !164
  %current_remaining_bytes = getelementptr inbounds %struct.atmel_spi, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %current_remaining_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_remaining_bytes, align 4
  %rx_dma1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 4
  %6 = ptrtoint ptr %rx_dma1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_dma1.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  %add.i = sub i32 %7, %5
  %sub.i = add i32 %add.i, %9
  %tx_dma2.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 3
  %10 = ptrtoint ptr %tx_dma2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_dma2.i, align 4
  %add4.i = sub i32 %9, %5
  %sub5.i = add i32 %add4.i, %11
  %max_dma_len.i = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 43
  %12 = ptrtoint ptr %max_dma_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_dma_len.i, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %5, i32 %13)
  %sub = sub i32 %5, %14
  %15 = ptrtoint ptr %current_remaining_bytes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %current_remaining_bytes, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %sub.i)
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %add.ptr3 = getelementptr i8, ptr %18, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %16) #10, !srcloc !164
  %19 = tail call i32 @llvm.bswap.i32(i32 %sub5.i)
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %21, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %19) #10, !srcloc !164
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 8
  %22 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %23)
  %cmp = icmp ugt i8 %23, 8
  %shr = zext i1 %cmp to i32
  %len.1 = lshr i32 %14, %shr
  %24 = tail call i32 @llvm.bswap.i32(i32 %len.1)
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr8 = getelementptr i8, ptr %26, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %24) #10, !srcloc !164
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %add.ptr10 = getelementptr i8, ptr %28, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %24) #10, !srcloc !164
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_spi_pdc_next_xfer.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atmel_spi_pdc_next_xfer, %do.end)) #10
          to label %if.then15 [label %do.end], !srcloc !169

if.then15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i, align 4
  %31 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %xfer, align 4
  %33 = ptrtoint ptr %tx_dma2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_dma2.i, align 4
  %conv18 = zext i32 %34 to i64
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %35 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_buf, align 4
  %37 = ptrtoint ptr %rx_dma1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_dma1.i, align 4
  %conv20 = zext i32 %38 to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_spi_pdc_next_xfer.__UNIQUE_ID_ddebug267, ptr noundef %master, ptr noundef nonnull @.str.44, ptr noundef %xfer, i32 noundef %30, ptr noundef %32, i64 noundef %conv18, ptr noundef %36, i64 noundef %conv20) #10
  br label %do.end

do.end:                                           ; preds = %if.then15, %entry
  %39 = ptrtoint ptr %current_remaining_bytes to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %current_remaining_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool23.not = icmp eq i32 %40, 0
  br i1 %tobool23.not, label %do.end.if.end69_crit_edge, label %if.then24

do.end.if.end69_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then24:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %rx_dma1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_dma1.i, align 4
  %43 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i, align 4
  %add.i113 = sub i32 %42, %40
  %sub.i114 = add i32 %add.i113, %44
  %45 = ptrtoint ptr %tx_dma2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_dma2.i, align 4
  %add4.i116 = sub i32 %44, %40
  %sub5.i117 = add i32 %add4.i116, %46
  %47 = ptrtoint ptr %max_dma_len.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_dma_len.i, align 4
  %49 = tail call i32 @llvm.umin.i32(i32 %40, i32 %48)
  %sub27 = sub i32 %40, %49
  %50 = ptrtoint ptr %current_remaining_bytes to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub27, ptr %current_remaining_bytes, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %sub.i114)
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 4
  %add.ptr29 = getelementptr i8, ptr %53, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %51) #10, !srcloc !164
  %54 = tail call i32 @llvm.bswap.i32(i32 %sub5.i117)
  %55 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs, align 4
  %add.ptr31 = getelementptr i8, ptr %56, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %54) #10, !srcloc !164
  %57 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %58)
  %cmp34 = icmp ugt i8 %58, 8
  %shr37 = zext i1 %cmp34 to i32
  %len.3 = lshr i32 %49, %shr37
  %59 = tail call i32 @llvm.bswap.i32(i32 %len.3)
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 4
  %add.ptr40 = getelementptr i8, ptr %61, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %59) #10, !srcloc !164
  %62 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs, align 4
  %add.ptr42 = getelementptr i8, ptr %63, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %59) #10, !srcloc !164
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_spi_pdc_next_xfer.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atmel_spi_pdc_next_xfer, %if.end69)) #10
          to label %if.then57 [label %if.end69], !srcloc !169

if.then57:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len.i, align 4
  %66 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %xfer, align 4
  %68 = ptrtoint ptr %tx_dma2.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_dma2.i, align 4
  %conv62 = zext i32 %69 to i64
  %rx_buf63 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %70 = ptrtoint ptr %rx_buf63 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rx_buf63, align 4
  %72 = ptrtoint ptr %rx_dma1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_dma1.i, align 4
  %conv65 = zext i32 %73 to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_spi_pdc_next_xfer.__UNIQUE_ID_ddebug268, ptr noundef %master, ptr noundef nonnull @.str.45, ptr noundef %xfer, i32 noundef %65, ptr noundef %67, i64 noundef %conv62, ptr noundef %71, i64 noundef %conv65) #10
  br label %if.end69

if.end69:                                         ; preds = %if.then57, %if.then24, %do.end.if.end69_crit_edge
  %74 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs, align 4
  %add.ptr71 = getelementptr i8, ptr %75, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 1207959552) #10, !srcloc !164
  %76 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs, align 4
  %add.ptr73 = getelementptr i8, ptr %77, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 16842752) #10, !srcloc !164
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_spi_next_xfer_dma_submit(ptr noundef %master, ptr noundef %xfer, ptr nocapture noundef writeonly %plen) unnamed_addr #2 align 64 {
entry:
  %slave_config.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 61
  %2 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_rx, align 4
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 60
  %4 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_tx, align 8
  %tobool.not = icmp eq ptr %3, null
  %tobool1.not = icmp eq ptr %5, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %8 = ptrtoint ptr %plen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %plen, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 8
  %9 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bits_per_word, align 1
  %pdev.i = getelementptr inbounds %struct.atmel_spi, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %slave_config.i) #10
  %15 = call ptr @memset(ptr %slave_config.i, i32 255, i32 48)
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %10)
  %cmp.i = icmp ugt i8 %10, 8
  %spec.select.i = select i1 %cmp.i, i32 2, i32 1
  %16 = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config.i, i32 0, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select.i, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config.i, i32 0, i32 3
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select.i, ptr %18, align 4
  %phybase.i = getelementptr inbounds %struct.atmel_spi, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %phybase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phybase.i, align 4
  %add.i = add i32 %21, 12
  %dst_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config.i, i32 0, i32 2
  %22 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.i, ptr %dst_addr.i, align 4
  %add5.i = add i32 %21, 8
  %src_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config.i, i32 0, i32 1
  %23 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add5.i, ptr %src_addr.i, align 4
  %src_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config.i, i32 0, i32 5
  %24 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %src_maxburst.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config.i, i32 0, i32 6
  %25 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %dst_maxburst.i, align 4
  %device_fc.i = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config.i, i32 0, i32 9
  %26 = ptrtoint ptr %device_fc.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %device_fc.i, align 4
  %dma_tx.i = getelementptr inbounds %struct.spi_controller, ptr %14, i32 0, i32 60
  %27 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma_tx.i, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %30, i32 0, i32 44
  %31 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.do.end.i_crit_edge, label %dmaengine_slave_config.exit.i

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

dmaengine_slave_config.exit.i:                    ; preds = %if.end
  %call.i.i = call i32 %32(ptr noundef %28, ptr noundef nonnull %slave_config.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %dmaengine_slave_config.exit.i.if.end9.i_crit_edge, label %dmaengine_slave_config.exit.i.do.end.i_crit_edge

dmaengine_slave_config.exit.i.do.end.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

dmaengine_slave_config.exit.i.if.end9.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

do.end.i:                                         ; preds = %dmaengine_slave_config.exit.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %33 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.48) #13
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.end.i, %dmaengine_slave_config.exit.i.if.end9.i_crit_edge
  %tobool3.not = phi i1 [ false, %do.end.i ], [ true, %dmaengine_slave_config.exit.i.if.end9.i_crit_edge ]
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %14, i32 0, i32 61
  %35 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dma_rx.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %device_config.i24.i = getelementptr inbounds %struct.dma_device, ptr %38, i32 0, i32 44
  %39 = ptrtoint ptr %device_config.i24.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device_config.i24.i, align 4
  %tobool.not.i25.i = icmp eq ptr %40, null
  br i1 %tobool.not.i25.i, label %if.end9.i.atmel_spi_dma_slave_config.exit.thread_crit_edge, label %dmaengine_slave_config.exit29.i

if.end9.i.atmel_spi_dma_slave_config.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atmel_spi_dma_slave_config.exit.thread

dmaengine_slave_config.exit29.i:                  ; preds = %if.end9.i
  %call.i26.i = call i32 %40(ptr noundef %36, ptr noundef nonnull %slave_config.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i)
  %tobool11.not.i = icmp eq i32 %call.i26.i, 0
  br i1 %tobool11.not.i, label %atmel_spi_dma_slave_config.exit, label %dmaengine_slave_config.exit29.i.atmel_spi_dma_slave_config.exit.thread_crit_edge

dmaengine_slave_config.exit29.i.atmel_spi_dma_slave_config.exit.thread_crit_edge: ; preds = %dmaengine_slave_config.exit29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atmel_spi_dma_slave_config.exit.thread

atmel_spi_dma_slave_config.exit.thread:           ; preds = %dmaengine_slave_config.exit29.i.atmel_spi_dma_slave_config.exit.thread_crit_edge, %if.end9.i.atmel_spi_dma_slave_config.exit.thread_crit_edge
  %41 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev.i, align 4
  %dev17.i = getelementptr inbounds %struct.platform_device, ptr %42, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i, ptr noundef nonnull @.str.51) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %slave_config.i) #10
  br label %cleanup

atmel_spi_dma_slave_config.exit:                  ; preds = %dmaengine_slave_config.exit29.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %slave_config.i) #10
  br i1 %tobool3.not, label %if.end5, label %atmel_spi_dma_slave_config.exit.cleanup_crit_edge

atmel_spi_dma_slave_config.exit.cleanup_crit_edge: ; preds = %atmel_spi_dma_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %atmel_spi_dma_slave_config.exit
  %43 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %xfer, align 4
  %call.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %44) #10
  br i1 %call.i, label %if.end5.lor.lhs.false.i_crit_edge, label %lor.rhs.i

if.end5.lor.lhs.false.i_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.rhs.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %45 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rx_buf.i, align 4
  %call1.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %46) #10
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %lor.rhs.i, %if.end5.lor.lhs.false.i_crit_edge
  %rx_sg = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 6
  %47 = ptrtoint ptr %rx_sg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rx_sg, align 4
  %nents = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 6, i32 1
  %49 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nents, align 4
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %3, align 4
  %tobool1.not.i = icmp eq ptr %52, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.err_dma_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.err_dma_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_dma

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %52, i32 0, i32 39
  %53 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %54, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.err_dma_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.err_dma_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_dma

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i96 = call ptr %54(ptr noundef nonnull %3, ptr noundef %48, i32 noundef %50, i32 noundef 2, i32 noundef 3, ptr noundef null) #10
  %tobool13.not = icmp eq ptr %call.i96, null
  br i1 %tobool13.not, label %dmaengine_prep_slave_sg.exit.err_dma_crit_edge, label %if.end15

dmaengine_prep_slave_sg.exit.err_dma_crit_edge:   ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_dma

if.end15:                                         ; preds = %dmaengine_prep_slave_sg.exit
  %55 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %xfer, align 4
  %call.i98 = call zeroext i1 @is_vmalloc_addr(ptr noundef %56) #10
  br i1 %call.i98, label %if.end15.lor.lhs.false.i105_crit_edge, label %lor.rhs.i101

if.end15.lor.lhs.false.i105_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i105

lor.rhs.i101:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %rx_buf.i99 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %57 = ptrtoint ptr %rx_buf.i99 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rx_buf.i99, align 4
  %call1.i100 = call zeroext i1 @is_vmalloc_addr(ptr noundef %58) #10
  br label %lor.lhs.false.i105

lor.lhs.false.i105:                               ; preds = %lor.rhs.i101, %if.end15.lor.lhs.false.i105_crit_edge
  %tx_sg = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 5
  %59 = ptrtoint ptr %tx_sg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tx_sg, align 4
  %nents25 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 5, i32 1
  %61 = ptrtoint ptr %nents25 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nents25, align 4
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %5, align 4
  %tobool1.not.i104 = icmp eq ptr %64, null
  br i1 %tobool1.not.i104, label %lor.lhs.false.i105.err_dma_crit_edge, label %lor.lhs.false2.i108

lor.lhs.false.i105.err_dma_crit_edge:             ; preds = %lor.lhs.false.i105
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_dma

lor.lhs.false2.i108:                              ; preds = %lor.lhs.false.i105
  %device_prep_slave_sg.i106 = getelementptr inbounds %struct.dma_device, ptr %64, i32 0, i32 39
  %65 = ptrtoint ptr %device_prep_slave_sg.i106 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %device_prep_slave_sg.i106, align 4
  %tobool4.not.i107 = icmp eq ptr %66, null
  br i1 %tobool4.not.i107, label %lor.lhs.false2.i108.err_dma_crit_edge, label %dmaengine_prep_slave_sg.exit112

lor.lhs.false2.i108.err_dma_crit_edge:            ; preds = %lor.lhs.false2.i108
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_dma

dmaengine_prep_slave_sg.exit112:                  ; preds = %lor.lhs.false2.i108
  %call.i109 = call ptr %66(ptr noundef nonnull %5, ptr noundef %60, i32 noundef %62, i32 noundef 1, i32 noundef 3, ptr noundef null) #10
  %tobool28.not = icmp eq ptr %call.i109, null
  br i1 %tobool28.not, label %dmaengine_prep_slave_sg.exit112.err_dma_crit_edge, label %do.body

dmaengine_prep_slave_sg.exit112.err_dma_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit112
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_dma

do.body:                                          ; preds = %dmaengine_prep_slave_sg.exit112
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_spi_next_xfer_dma_submit.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atmel_spi_next_xfer_dma_submit, %do.end)) #10
          to label %if.then36 [label %do.end], !srcloc !169

if.then36:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %parent = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 1
  %67 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %parent, align 8
  %69 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len, align 4
  %71 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %xfer, align 4
  %tx_dma = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 3
  %73 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx_dma, align 4
  %conv = zext i32 %74 to i64
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %75 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rx_buf, align 4
  %rx_dma = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 4
  %77 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rx_dma, align 4
  %conv39 = zext i32 %78 to i64
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_spi_next_xfer_dma_submit.__UNIQUE_ID_ddebug266, ptr noundef %68, ptr noundef nonnull @.str.47, ptr noundef %xfer, i32 noundef %70, ptr noundef %72, i64 noundef %conv, ptr noundef %76, i64 noundef %conv39) #10
  br label %do.end

do.end:                                           ; preds = %if.then36, %do.body
  %regs = getelementptr inbounds %struct.atmel_spi, ptr %1, i32 0, i32 3
  %79 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %80, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134217728) #10, !srcloc !164
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i96, i32 0, i32 6
  %81 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @dma_callback, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i96, i32 0, i32 8
  %82 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %master, ptr %callback_param, align 4
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i96, i32 0, i32 4
  %83 = ptrtoint ptr %tx_submit to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tx_submit, align 4
  %call41 = call i32 %84(ptr noundef nonnull %call.i96) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41)
  %tobool43.not = icmp sgt i32 %call41, -1
  br i1 %tobool43.not, label %if.end45, label %do.end.err_dma_crit_edge

do.end.err_dma_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_dma

if.end45:                                         ; preds = %do.end
  %tx_submit46 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i109, i32 0, i32 4
  %85 = ptrtoint ptr %tx_submit46 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tx_submit46, align 4
  %call47 = call i32 %86(ptr noundef nonnull %call.i109) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call47)
  %tobool49.not = icmp sgt i32 %call47, -1
  br i1 %tobool49.not, label %if.end51, label %if.end45.err_dma_crit_edge

if.end45.err_dma_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_dma

if.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %3, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %88, i32 0, i32 50
  %89 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %device_issue_pending, align 4
  call void %90(ptr noundef nonnull %3) #10
  %91 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %5, align 4
  %device_issue_pending53 = getelementptr inbounds %struct.dma_device, ptr %92, i32 0, i32 50
  %93 = ptrtoint ptr %device_issue_pending53 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %device_issue_pending53, align 4
  call void %94(ptr noundef nonnull %5) #10
  br label %cleanup

err_dma:                                          ; preds = %if.end45.err_dma_crit_edge, %do.end.err_dma_crit_edge, %dmaengine_prep_slave_sg.exit112.err_dma_crit_edge, %lor.lhs.false2.i108.err_dma_crit_edge, %lor.lhs.false.i105.err_dma_crit_edge, %dmaengine_prep_slave_sg.exit.err_dma_crit_edge, %lor.lhs.false2.i.err_dma_crit_edge, %lor.lhs.false.i.err_dma_crit_edge
  %regs54 = getelementptr inbounds %struct.atmel_spi, ptr %1, i32 0, i32 3
  %95 = ptrtoint ptr %regs54 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs54, align 4
  %add.ptr55 = getelementptr i8, ptr %96, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 134217728) #10, !srcloc !164
  %97 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dma_rx, align 4
  %tobool.not.i114 = icmp eq ptr %98, null
  br i1 %tobool.not.i114, label %err_dma.if.end.i118_crit_edge, label %if.then.i

err_dma.if.end.i118_crit_edge:                    ; preds = %err_dma
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i118

if.then.i:                                        ; preds = %err_dma
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %100, i32 0, i32 47
  %101 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i115 = icmp eq ptr %102, null
  br i1 %tobool.not.i.i115, label %if.then.i.if.end.i118_crit_edge, label %if.then.i.i

if.then.i.if.end.i118_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i118

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i116 = call i32 %102(ptr noundef nonnull %98) #10
  br label %if.end.i118

if.end.i118:                                      ; preds = %if.then.i.i, %if.then.i.if.end.i118_crit_edge, %err_dma.if.end.i118_crit_edge
  %103 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dma_tx, align 8
  %tobool2.not.i = icmp eq ptr %104, null
  br i1 %tobool2.not.i, label %if.end.i118.cleanup_crit_edge, label %if.then3.i

if.end.i118.cleanup_crit_edge:                    ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i118
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %device_terminate_all.i11.i = getelementptr inbounds %struct.dma_device, ptr %106, i32 0, i32 47
  %107 = ptrtoint ptr %device_terminate_all.i11.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %device_terminate_all.i11.i, align 4
  %tobool.not.i12.i = icmp eq ptr %108, null
  br i1 %tobool.not.i12.i, label %if.then3.i.cleanup_crit_edge, label %if.then.i14.i

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i14.i:                                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i13.i = call i32 %108(ptr noundef nonnull %104) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i14.i, %if.then3.i.cleanup_crit_edge, %if.end.i118.cleanup_crit_edge, %if.end51, %atmel_spi_dma_slave_config.exit.cleanup_crit_edge, %atmel_spi_dma_slave_config.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end51 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %atmel_spi_dma_slave_config.exit.cleanup_crit_edge ], [ -12, %atmel_spi_dma_slave_config.exit.thread ], [ -12, %if.end.i118.cleanup_crit_edge ], [ -12, %if.then3.i.cleanup_crit_edge ], [ -12, %if.then.i14.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_callback(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %current_transfer = getelementptr inbounds %struct.atmel_spi, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %current_transfer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_transfer, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_buf, align 4
  %call1 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %5) #10
  %xfer_completion = getelementptr inbounds %struct.atmel_spi, ptr %1, i32 0, i32 15
  tail call void @complete(ptr noundef %xfer_completion) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_spi_next_xfer_fifo(ptr nocapture noundef readonly %master, ptr noundef %xfer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %current_remaining_bytes = getelementptr inbounds %struct.atmel_spi, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %current_remaining_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_remaining_bytes, align 4
  %sub = sub i32 %3, %5
  %6 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xfer, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %sub
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 8
  %8 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %9)
  %cmp = icmp ugt i8 %9, 8
  %shr = zext i1 %cmp to i32
  %cond = lshr i32 %5, %shr
  %fifo_size = getelementptr inbounds %struct.atmel_spi, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fifo_size, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %cond, i32 %11)
  %regs = getelementptr inbounds %struct.atmel_spi, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 768) #10, !srcloc !164
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add.ptr14124 = getelementptr i8, ptr %16, i32 68
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14124) #10, !srcloc !162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not125 = icmp eq i32 %17, 0
  br i1 %tobool.not125, label %entry.while.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !174
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !175
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr14 = getelementptr i8, ptr %19, i32 68
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #10, !srcloc !162
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %add.ptr25 = getelementptr i8, ptr %22, i32 64
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #10, !srcloc !162
  %24 = and i32 %23, -64
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %and28 = shl i32 %12, 24
  %shl = and i32 %and28, 1056964608
  %or = or i32 %25, %shl
  %26 = tail call i32 @llvm.bswap.i32(i32 %or)
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %add.ptr30 = getelementptr i8, ptr %28, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %26) #10, !srcloc !164
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %add.ptr33 = getelementptr i8, ptr %30, i32 16
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #10, !srcloc !162
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp37126 = icmp ugt i32 %12, 1
  br i1 %cmp37126, label %while.end.while.body39_crit_edge, label %while.end.while.end56_crit_edge

while.end.while.end56_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end56

while.end.while.body39_crit_edge:                 ; preds = %while.end
  br label %while.body39

while.body39:                                     ; preds = %if.end.while.body39_crit_edge, %while.end.while.body39_crit_edge
  %num_data.0129 = phi i32 [ %sub55, %if.end.while.body39_crit_edge ], [ %12, %while.end.while.body39_crit_edge ]
  %words.0128 = phi ptr [ %words.1, %if.end.while.body39_crit_edge ], [ %add.ptr, %while.end.while.body39_crit_edge ]
  %bytes.0127 = phi ptr [ %bytes.1, %if.end.while.body39_crit_edge ], [ %add.ptr, %while.end.while.body39_crit_edge ]
  %32 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %33)
  %cmp42 = icmp ugt i8 %33, 8
  br i1 %cmp42, label %if.then, label %if.else

if.then:                                          ; preds = %while.body39
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr = getelementptr i16, ptr %words.0128, i32 1
  %34 = ptrtoint ptr %words.0128 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %words.0128, align 2
  %incdec.ptr44 = getelementptr i16, ptr %words.0128, i32 2
  %36 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %incdec.ptr, align 2
  br label %if.end

if.else:                                          ; preds = %while.body39
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr45 = getelementptr i8, ptr %bytes.0127, i32 1
  %38 = ptrtoint ptr %bytes.0127 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bytes.0127, align 1
  %conv46 = zext i8 %39 to i16
  %incdec.ptr47 = getelementptr i8, ptr %bytes.0127, i32 2
  %40 = ptrtoint ptr %incdec.ptr45 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %incdec.ptr45, align 1
  %conv48 = zext i8 %41 to i16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %td1.0 = phi i16 [ %37, %if.then ], [ %conv48, %if.else ]
  %td0.0 = phi i16 [ %35, %if.then ], [ %conv46, %if.else ]
  %bytes.1 = phi ptr [ %bytes.0127, %if.then ], [ %incdec.ptr47, %if.else ]
  %words.1 = phi ptr [ %incdec.ptr44, %if.then ], [ %words.0128, %if.else ]
  %conv49 = zext i16 %td1.0 to i32
  %shl50 = shl nuw i32 %conv49, 16
  %conv51 = zext i16 %td0.0 to i32
  %or52 = or i32 %shl50, %conv51
  %42 = tail call i32 @llvm.bswap.i32(i32 %or52)
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 4
  %add.ptr54 = getelementptr i8, ptr %44, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %42) #10, !srcloc !164
  %sub55 = add i32 %num_data.0129, -2
  %cmp37 = icmp ugt i32 %sub55, 1
  br i1 %cmp37, label %if.end.while.body39_crit_edge, label %if.end.while.end56_crit_edge

if.end.while.end56_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end56

if.end.while.body39_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body39

while.end56:                                      ; preds = %if.end.while.end56_crit_edge, %while.end.while.end56_crit_edge
  %bytes.0.lcssa = phi ptr [ %add.ptr, %while.end.while.end56_crit_edge ], [ %bytes.1, %if.end.while.end56_crit_edge ]
  %words.0.lcssa = phi ptr [ %add.ptr, %while.end.while.end56_crit_edge ], [ %words.1, %if.end.while.end56_crit_edge ]
  %num_data.0.lcssa = phi i32 [ %12, %while.end.while.end56_crit_edge ], [ %sub55, %if.end.while.end56_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_data.0.lcssa)
  %tobool57.not = icmp eq i32 %num_data.0.lcssa, 0
  br i1 %tobool57.not, label %while.end56.do.body72_crit_edge, label %if.then58

while.end56.do.body72_crit_edge:                  ; preds = %while.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body72

if.then58:                                        ; preds = %while.end56
  %45 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %46)
  %cmp61 = icmp ugt i8 %46, 8
  br i1 %cmp61, label %if.then63, label %if.else65

if.then63:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %words.0.lcssa to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %words.0.lcssa, align 2
  br label %if.end68

if.else65:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %bytes.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bytes.0.lcssa, align 1
  %conv67 = zext i8 %50 to i16
  br label %if.end68

if.end68:                                         ; preds = %if.else65, %if.then63
  %td0.1 = phi i16 [ %48, %if.then63 ], [ %conv67, %if.else65 ]
  %51 = tail call i16 @llvm.bswap.i16(i16 %td0.1)
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 4
  %add.ptr70 = getelementptr i8, ptr %53, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr70, i16 %51) #10, !srcloc !176
  br label %do.body72

do.body72:                                        ; preds = %if.end68, %while.end56.do.body72_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_spi_next_xfer_fifo.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atmel_spi_next_xfer_fifo, %do.end86)) #10
          to label %if.then79 [label %do.end86], !srcloc !169

if.then79:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #12
  %parent = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 1
  %54 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %parent, align 8
  %56 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len, align 4
  %58 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %xfer, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %60 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rx_buf, align 4
  %62 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %bits_per_word, align 1
  %conv83 = zext i8 %63 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_spi_next_xfer_fifo.__UNIQUE_ID_ddebug265, ptr noundef %55, ptr noundef nonnull @.str.54, ptr noundef %xfer, i32 noundef %57, ptr noundef %59, ptr noundef %61, i32 noundef %conv83) #10
  br label %do.end86

do.end86:                                         ; preds = %if.then79, %do.body72
  %64 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs, align 4
  %add.ptr88 = getelementptr i8, ptr %65, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 134217760) #10, !srcloc !164
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_spi_next_xfer_single(ptr nocapture noundef readonly %master, ptr noundef %xfer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %current_remaining_bytes = getelementptr inbounds %struct.atmel_spi, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %current_remaining_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_remaining_bytes, align 4
  %sub = sub i32 %3, %5
  %regs = getelementptr inbounds %struct.atmel_spi, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !162
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr462 = getelementptr i8, ptr %10, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr462) #10, !srcloc !162
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not63 = icmp eq i32 %12, 0
  br i1 %tobool.not63, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr9 = getelementptr i8, ptr %14, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !177
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !178
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %17, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #10, !srcloc !162
  %19 = and i32 %18, 16777216
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 8
  %20 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %21)
  %cmp = icmp ugt i8 %21, 8
  %22 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xfer, align 4
  %add.ptr19 = getelementptr i8, ptr %23, i32 %sub
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr19, align 2
  %conv20 = zext i16 %25 to i32
  %26 = tail call i32 @llvm.bswap.i32(i32 %conv20)
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %add.ptr22 = getelementptr i8, ptr %28, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %26) #10, !srcloc !164
  br label %do.body28

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr19, align 1
  %conv25 = zext i8 %30 to i32
  %31 = shl nuw i32 %conv25, 24
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %add.ptr27 = getelementptr i8, ptr %33, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %31) #10, !srcloc !164
  br label %do.body28

do.body28:                                        ; preds = %if.else, %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_spi_next_xfer_single.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atmel_spi_next_xfer_single, %do.end42)) #10
          to label %if.then35 [label %do.end42], !srcloc !169

if.then35:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  %parent = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 1
  %34 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent, align 8
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  %38 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xfer, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %40 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rx_buf, align 4
  %42 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bits_per_word, align 1
  %conv39 = zext i8 %43 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_spi_next_xfer_single.__UNIQUE_ID_ddebug262, ptr noundef %35, ptr noundef nonnull @.str.56, ptr noundef %xfer, i32 noundef %37, ptr noundef %39, ptr noundef %41, i32 noundef %conv39) #10
  br label %do.end42

do.end42:                                         ; preds = %if.then35, %do.body28
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %add.ptr44 = getelementptr i8, ptr %45, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 150994944) #10, !srcloc !164
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs_activate(ptr nocapture noundef readonly %as, ptr noundef %spi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cs_gpiod = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 14
  %0 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cs_gpiod, align 8
  %tobool.not = icmp eq ptr %1, null
  %native_cs_for_gpio = getelementptr inbounds %struct.atmel_spi, ptr %as, i32 0, i32 22
  %chip_select1 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %chip_select.0.in.in = select i1 %tobool.not, ptr %chip_select1, ptr %native_cs_for_gpio
  %2 = ptrtoint ptr %chip_select.0.in.in to i32
  call void @__asan_load1_noabort(i32 %2)
  %chip_select.0.in = load i8, ptr %chip_select.0.in.in, align 1
  %chip_select.0 = zext i8 %chip_select.0.in to i32
  %caps.i = getelementptr inbounds %struct.atmel_spi, ptr %as, i32 0, i32 16
  %3 = ptrtoint ptr %caps.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %caps.i, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i.not = icmp eq i8 %4, 0
  br i1 %tobool.i.not, label %if.else28, label %if.then3

if.then3:                                         ; preds = %entry
  %controller_state = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %5 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %controller_state, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %regs = getelementptr inbounds %struct.atmel_spi, ptr %as, i32 0, i32 3
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 48
  %mul = shl nuw nsw i32 %chip_select.0, 2
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %9) #10, !srcloc !164
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %6, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add.ptr7 = getelementptr i8, ptr %16, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %14) #10, !srcloc !164
  %has_wdrbt = getelementptr inbounds %struct.atmel_spi, ptr %as, i32 0, i32 16, i32 1
  %17 = ptrtoint ptr %has_wdrbt to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %has_wdrbt, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool8.not = icmp eq i8 %18, 0
  %neg17 = shl i32 65536, %chip_select.0
  %and18 = and i32 %neg17, 983040
  br i1 %tobool8.not, label %if.else15, label %if.then9

if.then9:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %or12 = xor i32 %and18, 983089
  %19 = tail call i32 @llvm.bswap.i32(i32 %or12)
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr14 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %19) #10, !srcloc !164
  br label %if.end24

if.else15:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %or21 = xor i32 %and18, 983057
  %22 = tail call i32 @llvm.bswap.i32(i32 %or21)
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr23 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %22) #10, !srcloc !164
  br label %if.end24

if.end24:                                         ; preds = %if.else15, %if.then9
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr26 = getelementptr i8, ptr %26, i32 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #10, !srcloc !162
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  br label %do.body

if.else28:                                        ; preds = %entry
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %29 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mode, align 8
  %and29 = lshr i32 %30, 1
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %31 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %master, align 4
  %num_chipselect99 = getelementptr inbounds %struct.spi_controller, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %num_chipselect99 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %num_chipselect99, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp101.not = icmp eq i16 %34, 0
  br i1 %cmp101.not, label %if.else28.for.end_crit_edge, label %for.body.lr.ph

if.else28.for.end_crit_edge:                      ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.else28
  %regs35 = getelementptr inbounds %struct.atmel_spi, ptr %as, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0102 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %35 = ptrtoint ptr %regs35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs35, align 4
  %add.ptr36 = getelementptr i8, ptr %36, i32 48
  %mul37 = shl i32 %i.0102, 2
  %add.ptr38 = getelementptr i8, ptr %add.ptr36, i32 %mul37
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #10, !srcloc !162
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %xor = xor i32 %38, %and29
  %and41 = and i32 %xor, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %for.body.for.inc_crit_edge, label %if.then43

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then43:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %xor44 = xor i32 %38, 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %xor44)
  %40 = ptrtoint ptr %regs35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs35, align 4
  %add.ptr46 = getelementptr i8, ptr %41, i32 48
  %add.ptr48 = getelementptr i8, ptr %add.ptr46, i32 %mul37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %39) #10, !srcloc !164
  br label %for.inc

for.inc:                                          ; preds = %if.then43, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0102, 1
  %42 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %master, align 4
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %num_chipselect, align 2
  %conv32 = zext i16 %45 to i32
  %cmp = icmp ult i32 %inc, %conv32
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.else28.for.end_crit_edge
  %regs51 = getelementptr inbounds %struct.atmel_spi, ptr %as, i32 0, i32 3
  %46 = ptrtoint ptr %regs51 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs51, align 4
  %add.ptr52 = getelementptr i8, ptr %47, i32 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #10, !srcloc !162
  %49 = and i32 %48, -3841
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %neg57 = shl i32 65536, %chip_select.0
  %and58 = and i32 %neg57, 983040
  %51 = or i32 %50, %and58
  %or60 = xor i32 %51, 983040
  %52 = tail call i32 @llvm.bswap.i32(i32 %or60)
  %53 = ptrtoint ptr %regs51 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs51, align 4
  %add.ptr62 = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %52) #10, !srcloc !164
  br label %do.body

do.body:                                          ; preds = %for.end, %if.end24
  %mr.0 = phi i32 [ %28, %if.end24 ], [ %or60, %for.end ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_activate.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cs_activate, %do.end)) #10
          to label %if.then70 [label %do.end], !srcloc !169

if.then70:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_activate.__UNIQUE_ID_ddebug258, ptr noundef %spi, ptr noundef nonnull @.str.58, i32 noundef %mr.0) #10
  br label %do.end

do.end:                                           ; preds = %if.then70, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_spi_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @spi_controller_suspend(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

pm_runtime_suspended.exit:                        ; preds = %if.end
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.cleanup_crit_edge, label %pm_runtime_suspended.exit.if.then3_crit_edge

pm_runtime_suspended.exit.if.then3_crit_edge:     ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

pm_runtime_suspended.exit.cleanup_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %pm_runtime_suspended.exit.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i, align 4
  %clk.i = getelementptr inbounds %struct.atmel_spi, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %10) #10
  tail call void @clk_unprepare(ptr noundef %10) #10
  %call2.i = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %pm_runtime_suspended.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_spi_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.atmel_spi, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %regs.i = getelementptr inbounds %struct.atmel_spi, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 -2147483648) #10, !srcloc !164
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 -2147483648) #10, !srcloc !164
  %fifo_size.i = getelementptr inbounds %struct.atmel_spi, ptr %3, i32 0, i32 20
  %10 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fifo_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i22 = icmp eq i32 %11, 0
  br i1 %tobool.not.i22, label %if.end.if.end.i23_crit_edge, label %if.then.i

if.end.if.end.i23_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i23

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 64) #10, !srcloc !164
  br label %if.end.i23

if.end.i23:                                       ; preds = %if.then.i, %if.end.if.end.i23_crit_edge
  %has_wdrbt.i = getelementptr inbounds %struct.atmel_spi, ptr %3, i32 0, i32 16, i32 1
  %14 = ptrtoint ptr %has_wdrbt.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %has_wdrbt.i, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not.i = icmp eq i8 %15, 0
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %17, i32 4
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 822083584) #10, !srcloc !164
  br label %if.end11.i

if.else.i:                                        ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 285212672) #10, !srcloc !164
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i, %if.then6.i
  %use_pdc.i = getelementptr inbounds %struct.atmel_spi, ptr %3, i32 0, i32 18
  %18 = ptrtoint ptr %use_pdc.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %use_pdc.i, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool12.not.i = icmp eq i8 %19, 0
  br i1 %tobool12.not.i, label %if.end11.i.atmel_spi_init.exit_crit_edge, label %if.then13.i

if.end11.i.atmel_spi_init.exit_crit_edge:         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atmel_spi_init.exit

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %21, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 33685504) #10, !srcloc !164
  br label %atmel_spi_init.exit

atmel_spi_init.exit:                              ; preds = %if.then13.i, %if.end11.i.atmel_spi_init.exit_crit_edge
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 16777216) #10, !srcloc !164
  %24 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %25) #10
  tail call void @clk_unprepare(ptr noundef %25) #10
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %26 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.i = icmp eq i32 %27, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %atmel_spi_init.exit.if.then5_crit_edge

atmel_spi_init.exit.if.then5_crit_edge:           ; preds = %atmel_spi_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

pm_runtime_suspended.exit:                        ; preds = %atmel_spi_init.exit
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %28 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i24 = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i24, label %pm_runtime_suspended.exit.if.end10_crit_edge, label %pm_runtime_suspended.exit.if.then5_crit_edge

pm_runtime_suspended.exit.if.then5_crit_edge:     ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

pm_runtime_suspended.exit.if.end10_crit_edge:     ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then5:                                         ; preds = %pm_runtime_suspended.exit.if.then5_crit_edge, %atmel_spi_init.exit.if.then5_crit_edge
  %29 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i.i.i, align 4
  %call2.i = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #10
  %clk.i = getelementptr inbounds %struct.atmel_spi, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %34) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then5
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %34) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end10_crit_edge, label %if.then3.i.i

if.end.i.i.if.end10_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %34) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end.i.i.if.end10_crit_edge, %pm_runtime_suspended.exit.if.end10_crit_edge
  %call11 = tail call i32 @spi_controller_resume(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then3.i.i, %if.then5.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ], [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.then5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_spi_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.atmel_spi, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  %call2 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_spi_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #10
  %clk = getelementptr inbounds %struct.atmel_spi, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !128, !130, !131, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !151}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158, !159, !160}
!llvm.ident = !{!161}

!0 = !{ptr @__initcall__kmod_spi_atmel__271_1724_atmel_spi_driver_init6, !1, !"__initcall__kmod_spi_atmel__271_1724_atmel_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-atmel.c", i32 1724, i32 1}
!2 = !{ptr @__exitcall_atmel_spi_driver_exit, !1, !"__exitcall_atmel_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description272, !4, !"__UNIQUE_ID_description272", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-atmel.c", i32 1726, i32 1}
!5 = !{ptr @__UNIQUE_ID_author273, !6, !"__UNIQUE_ID_author273", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-atmel.c", i32 1727, i32 1}
!7 = !{ptr @__UNIQUE_ID_file274, !8, !"__UNIQUE_ID_file274", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-atmel.c", i32 1728, i32 1}
!9 = !{ptr @__UNIQUE_ID_license275, !8, !"__UNIQUE_ID_license275", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias276, !11, !"__UNIQUE_ID_alias276", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-atmel.c", i32 1729, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-atmel.c", i32 1717, i32 11}
!14 = !{ptr @atmel_spi_driver, !15, !"atmel_spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-atmel.c", i32 1715, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-atmel.c", i32 1457, i32 33}
!18 = !{ptr @atmel_spi_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-atmel.c", i32 1486, i32 2}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/spi/spi-atmel.c", i32 1540, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @atmel_spi_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @atmel_spi_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/spi/spi-atmel.c", i32 1560, i32 47}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/spi/spi-atmel.c", i32 1562, i32 3}
!33 = !{ptr @atmel_spi_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @atmel_spi_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/spi/spi-atmel.c", i32 1577, i32 2}
!37 = !{ptr @atmel_spi_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @atmel_spi_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/spi/spi-atmel.c", i32 1193, i32 3}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @atmel_spi_setup._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @atmel_spi_setup._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/spi/spi-atmel.c", i32 1205, i32 3}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @atmel_spi_setup._entry.18, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @atmel_spi_setup._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/spi/spi-atmel.c", i32 1245, i32 2}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @atmel_spi_setup.__UNIQUE_ID_ddebug269, !51, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/spi/spi-atmel.c", i32 1289, i32 3}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @atmel_spi_one_transfer.__UNIQUE_ID_ddebug270, !55, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/spi/spi-atmel.c", i32 1321, i32 5}
!60 = !{ptr @atmel_spi_one_transfer._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @atmel_spi_one_transfer._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/spi/spi-atmel.c", i32 1339, i32 4}
!64 = !{ptr @atmel_spi_one_transfer._entry.27, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @atmel_spi_one_transfer._entry_ptr.29, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/spi/spi-atmel.c", i32 1349, i32 4}
!68 = !{ptr @atmel_spi_one_transfer._entry.30, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @atmel_spi_one_transfer._entry_ptr.32, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/spi/spi-atmel.c", i32 1365, i32 5}
!72 = !{ptr @atmel_spi_one_transfer._entry.33, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @atmel_spi_one_transfer._entry_ptr.35, !71, !"_entry_ptr", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!76 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/spi/spi-atmel.c", i32 824, i32 3}
!80 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @atmel_spi_set_xfer_speed._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @atmel_spi_set_xfer_speed._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/spi/spi-atmel.c", i32 830, i32 3}
!85 = !{ptr @atmel_spi_set_xfer_speed._entry.40, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @atmel_spi_set_xfer_speed._entry_ptr.42, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/spi/spi-atmel.c", i32 868, i32 2}
!89 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @atmel_spi_pdc_next_xfer.__UNIQUE_ID_ddebug267, !88, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/spi/spi-atmel.c", i32 887, i32 3}
!93 = !{ptr @atmel_spi_pdc_next_xfer.__UNIQUE_ID_ddebug268, !92, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/spi/spi-atmel.c", i32 752, i32 2}
!96 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @atmel_spi_next_xfer_dma_submit.__UNIQUE_ID_ddebug266, !95, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/spi/spi-atmel.c", i32 471, i32 3}
!100 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @atmel_spi_dma_slave_config._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @atmel_spi_dma_slave_config._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/spi/spi-atmel.c", i32 485, i32 3}
!105 = !{ptr @atmel_spi_dma_slave_config._entry.50, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @atmel_spi_dma_slave_config._entry_ptr.52, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/spi/spi-atmel.c", i32 661, i32 2}
!109 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @atmel_spi_next_xfer_fifo.__UNIQUE_ID_ddebug265, !108, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/spi/spi-atmel.c", i32 594, i32 2}
!113 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @atmel_spi_next_xfer_single.__UNIQUE_ID_ddebug262, !112, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/spi/spi-atmel.c", i32 373, i32 2}
!117 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @cs_activate.__UNIQUE_ID_ddebug258, !116, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/spi/spi-atmel.c", i32 395, i32 2}
!121 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @cs_deactivate.__UNIQUE_ID_ddebug259, !120, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!123 = !{ptr @init_completion.__key, !124, !"__key", i1 false, i1 false}
!124 = !{!"../include/linux/completion.h", i32 87, i32 2}
!125 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/spi/spi-atmel.c", i32 499, i32 41}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/spi/spi-atmel.c", i32 502, i32 3}
!130 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @atmel_spi_configure_dma.__UNIQUE_ID_ddebug260, !129, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/spi/spi-atmel.c", i32 506, i32 41}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/spi/spi-atmel.c", i32 513, i32 3}
!136 = !{ptr @atmel_spi_configure_dma.__UNIQUE_ID_ddebug261, !135, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!137 = !{ptr @.str.67, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/spi/spi-atmel.c", i32 521, i32 2}
!139 = !{ptr @atmel_spi_configure_dma._entry, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @atmel_spi_configure_dma._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.68, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/spi/spi-atmel.c", i32 1055, i32 3}
!143 = !{ptr @.str.69, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @atmel_spi_pio_interrupt._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @atmel_spi_pio_interrupt._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = distinct !{null, !147, !"__already_done", i1 false, i1 false}
!147 = !{!"../drivers/spi/spi-atmel.c", i32 1089, i32 3}
!148 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @atmel_spi_dt_ids, !150, !"atmel_spi_dt_ids", i1 false, i1 false}
!150 = !{!"../drivers/spi/spi-atmel.c", i32 1708, i32 34}
!151 = !{ptr @atmel_spi_pm_ops, !152, !"atmel_spi_pm_ops", i1 false, i1 false}
!152 = !{!"../drivers/spi/spi-atmel.c", i32 1698, i32 32}
!153 = !{i32 1, !"wchar_size", i32 2}
!154 = !{i32 1, !"min_enum_size", i32 4}
!155 = !{i32 8, !"branch-target-enforcement", i32 0}
!156 = !{i32 8, !"sign-return-address", i32 0}
!157 = !{i32 8, !"sign-return-address-all", i32 0}
!158 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!159 = !{i32 7, !"uwtable", i32 1}
!160 = !{i32 7, !"frame-pointer", i32 2}
!161 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!162 = !{i64 6312404}
!163 = !{i8 0, i8 2}
!164 = !{i64 6311986}
!165 = !{i64 2148251636}
!166 = !{i64 736459, i64 736484, i64 736506, i64 736522, i64 736534, i64 736554, i64 736578, i64 736594, i64 736606}
!167 = !{i64 2148251824}
!168 = !{i8 0, i8 9}
!169 = !{i64 2148734032, i64 2148734037, i64 2148734050, i64 2148734094, i64 2148734128, i64 2148734149}
!170 = !{!"auto-init"}
!171 = !{!"branch_weights", i32 2000, i32 1}
!172 = !{!"branch_weights", i32 1, i32 2000}
!173 = !{i64 2154828561}
!174 = !{i64 2154795930}
!175 = !{i64 2154795772}
!176 = !{i64 6311366}
!177 = !{i64 2154787446}
!178 = !{i64 2154787288}
