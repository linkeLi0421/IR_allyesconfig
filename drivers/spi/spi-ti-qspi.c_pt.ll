; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-ti-qspi.c_pt.bc'
source_filename = "../drivers/spi/spi-ti-qspi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_controller_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dma_cap_mask_t = type { [1 x i32] }
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
%struct.ti_qspi = type { %struct.completion, %struct.mutex, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.ti_qspi_regs, i32, i32, ptr, ptr, i32, i32, i32, i8, i32 }
%struct.ti_qspi_regs = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_mem_op = type { %struct.anon.74, %struct.anon.75, %struct.anon.76, %struct.anon.77 }
%struct.anon.74 = type { i8, i8, i8, i16 }
%struct.anon.75 = type { i8, i8, i8, i64 }
%struct.anon.76 = type { i8, i8, i8 }
%struct.anon.77 = type { i8, i8, i32, i32, %union.anon.78 }
%union.anon.78 = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_spi_ti_qspi__262_939_ti_qspi_driver_init6 = internal global ptr @ti_qspi_driver_init, section ".initcall6.init", align 4
@ti_qspi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ti_qspi_probe, ptr @ti_qspi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_qspi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ti_qspi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ti_qspi_driver_exit = internal global ptr @ti_qspi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author263 = internal constant [56 x i8] c"spi_ti_qspi.author=Sourav Poddar <sourav.poddar@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file264 = internal constant [41 x i8] c"spi_ti_qspi.file=drivers/spi/spi-ti-qspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license265 = internal constant [27 x i8] c"spi_ti_qspi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description266 = internal constant [50 x i8] c"spi_ti_qspi.description=TI QSPI controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias267 = internal constant [35 x i8] c"spi_ti_qspi.alias=platform:ti-qspi\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti-qspi\00", [24 x i8] zeroinitializer }, align 32
@ti_qspi_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7xxx-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am4372-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ti_qspi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ti_qspi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@ti_qspi_mem_ops = internal constant { %struct.spi_controller_mem_ops, [60 x i8] } { %struct.spi_controller_mem_ops { ptr @ti_qspi_adjust_op_size, ptr null, ptr @ti_qspi_exec_mem_op, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"num-cs\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qspi_base\00", [22 x i8] zeroinitializer }, align 32
@ti_qspi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 791, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"missing platform data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti_qspi_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/spi/spi-ti-qspi.c\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ti_qspi_probe._entry_ptr = internal global ptr @ti_qspi_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qspi_mmap\00", [22 x i8] zeroinitializer }, align 32
@ti_qspi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 803, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"memory mapped resource not required\0A\00", [59 x i8] zeroinitializer }, align 32
@ti_qspi_probe._entry_ptr.11 = internal global ptr @ti_qspi_probe._entry.9, section ".printk_index", align 4
@ti_qspi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&qspi->list_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"syscon-chipselects\00", [45 x i8] zeroinitializer }, align 32
@ti_qspi_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 838, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"couldn't get ctrl_mod reg index\0A\00", [63 x i8] zeroinitializer }, align 32
@ti_qspi_probe._entry_ptr.16 = internal global ptr @ti_qspi_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@ti_qspi_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 846, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"could not get clk: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ti_qspi_probe._entry_ptr.20 = internal global ptr @ti_qspi_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi-max-frequency\00", [46 x i8] zeroinitializer }, align 32
@ti_qspi_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.4, ptr @.str.5, i32 862, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"No Rx DMA available, trying mmap mode\0A\00", [57 x i8] zeroinitializer }, align 32
@ti_qspi_probe._entry_ptr.24 = internal global ptr @ti_qspi_probe._entry.22, section ".printk_index", align 4
@ti_qspi_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.4, ptr @.str.5, i32 873, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dma_alloc_coherent failed, using PIO mode\0A\00", [53 x i8] zeroinitializer }, align 32
@ti_qspi_probe._entry_ptr.27 = internal global ptr @ti_qspi_probe._entry.25, section ".printk_index", align 4
@ti_qspi_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.4, ptr @.str.5, i32 888, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"mmap failed with error %ld using PIO mode\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ti_qspi_probe._entry_ptr.31 = internal global ptr @ti_qspi_probe._entry.28, section ".printk_index", align 4
@ti_qspi_setup.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.33, ptr @.str.5, ptr @.str.34, i8 0, i8 37, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_ti_qspi\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti_qspi_setup\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"master busy doing other transfers\0A\00", [61 x i8] zeroinitializer }, align 32
@ti_qspi_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.5, i32 153, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"spi max frequency not defined\0A\00", [33 x i8] zeroinitializer }, align 32
@ti_qspi_setup._entry_ptr = internal global ptr @ti_qspi_setup._entry, section ".printk_index", align 4
@ti_qspi_setup.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.33, ptr @.str.5, ptr @.str.36, i8 0, i8 40, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"clock divider < 0, using /1 divider\0A\00", [59 x i8] zeroinitializer }, align 32
@ti_qspi_setup.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.33, ptr @.str.5, ptr @.str.37, i8 0, i8 42, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"clock divider >%d , using /%d divider\0A\00", [57 x i8] zeroinitializer }, align 32
@ti_qspi_setup.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.33, ptr @.str.5, ptr @.str.38, i8 0, i8 43, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hz: %d, clock divider %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ti_qspi_setup._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.33, ptr @.str.5, i32 178, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pm_runtime_get_sync() failed\0A\00", [34 x i8] zeroinitializer }, align 32
@ti_qspi_setup._entry_ptr.41 = internal global ptr @ti_qspi_setup._entry.39, section ".printk_index", align 4
@ti_qspi_setup._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.33, ptr @.str.5, i32 197, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pm_runtime_put_autosuspend() failed\0A\00", [59 x i8] zeroinitializer }, align 32
@ti_qspi_setup._entry_ptr.44 = internal global ptr @ti_qspi_setup._entry.42, section ".printk_index", align 4
@ti_qspi_start_transfer_one.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.45, ptr @.str.5, ptr @.str.46, i8 0, i8 -80, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ti_qspi_start_transfer_one\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"transfer message failed\0A\00", [39 x i8] zeroinitializer }, align 32
@qspi_transfer_msg.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.47, ptr @.str.5, ptr @.str.48, i8 0, i8 105, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qspi_transfer_msg\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Error while writing\0A\00", [43 x i8] zeroinitializer }, align 32
@qspi_transfer_msg.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.47, ptr @.str.5, ptr @.str.49, i8 0, i8 107, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Error while reading\0A\00", [43 x i8] zeroinitializer }, align 32
@qspi_write_msg.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.50, ptr @.str.5, ptr @.str.51, i8 0, i8 66, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qspi_write_msg\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tx cmd %08x dc %08x data %02x\0A\00", [33 x i8] zeroinitializer }, align 32
@qspi_write_msg.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.50, ptr @.str.5, ptr @.str.52, i8 0, i8 72, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tx cmd %08x dc %08x data %04x\0A\00", [33 x i8] zeroinitializer }, align 32
@qspi_write_msg.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.50, ptr @.str.5, ptr @.str.53, i8 0, i8 74, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tx cmd %08x dc %08x data %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@qspi_write_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.50, ptr @.str.5, i32 303, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"write timed out\0A\00", [47 x i8] zeroinitializer }, align 32
@qspi_write_msg._entry_ptr = internal global ptr @qspi_write_msg._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qspi busy\0A\00", [21 x i8] zeroinitializer }, align 32
@qspi_read_msg.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.56, ptr @.str.5, ptr @.str.57, i8 0, i8 84, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qspi_read_msg\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx cmd %08x dc %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@qspi_read_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.5, i32 365, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"read timed out\0A\00", [16 x i8] zeroinitializer }, align 32
@qspi_read_msg._entry_ptr = internal global ptr @qspi_read_msg._entry, section ".printk_index", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@ti_qspi_dma_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.5, i32 454, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"device_prep_dma_memcpy error\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti_qspi_dma_xfer\00", [47 x i8] zeroinitializer }, align 32
@ti_qspi_dma_xfer._entry_ptr = internal global ptr @ti_qspi_dma_xfer._entry, section ".printk_index", align 4
@ti_qspi_dma_xfer._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.5, i32 465, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dma_submit_error %d\0A\00", [43 x i8] zeroinitializer }, align 32
@ti_qspi_dma_xfer._entry_ptr.63 = internal global ptr @ti_qspi_dma_xfer._entry.61, section ".printk_index", align 4
@ti_qspi_dma_xfer._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.5, i32 474, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DMA wait_for_completion_timeout\0A\00", [63 x i8] zeroinitializer }, align 32
@ti_qspi_dma_xfer._entry_ptr.66 = internal global ptr @ti_qspi_dma_xfer._entry.64, section ".printk_index", align 4
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@___asan_gen_.71 = private unnamed_addr constant [15 x i8] c"ti_qspi_driver\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 929, i32 31 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 933, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant [14 x i8] c"ti_qspi_match\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 747, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant [15 x i8] c"ti_qspi_pm_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 925, i32 32 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"ti_qspi_mem_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 655, i32 44 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 779, i32 32 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 787, i32 57 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 791, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 798, i32 20 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 802, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 816, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 825, i32 32 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 837, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 843, i32 40 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 846, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 853, i32 32 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 861, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 872, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 886, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 148, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 153, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 162, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 167, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 172, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 178, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 197, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 706, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 420, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 428, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 263, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 290, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 295, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 303, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 222, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 339, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 365, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 454, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 465, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.270 = private constant [29 x i8] c"../drivers/spi/spi-ti-qspi.c\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 474, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1169, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 87, i32 2 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_alias267, ptr @__UNIQUE_ID_author263, ptr @__UNIQUE_ID_description266, ptr @__UNIQUE_ID_file264, ptr @__UNIQUE_ID_license265, ptr @__exitcall_ti_qspi_driver_exit, ptr @__initcall__kmod_spi_ti_qspi__262_939_ti_qspi_driver_init6, ptr @qspi_read_msg._entry, ptr @qspi_read_msg._entry_ptr, ptr @qspi_write_msg._entry, ptr @qspi_write_msg._entry_ptr, ptr @ti_qspi_dma_xfer._entry, ptr @ti_qspi_dma_xfer._entry.61, ptr @ti_qspi_dma_xfer._entry.64, ptr @ti_qspi_dma_xfer._entry_ptr, ptr @ti_qspi_dma_xfer._entry_ptr.63, ptr @ti_qspi_dma_xfer._entry_ptr.66, ptr @ti_qspi_driver_exit, ptr @ti_qspi_probe._entry, ptr @ti_qspi_probe._entry.14, ptr @ti_qspi_probe._entry.18, ptr @ti_qspi_probe._entry.22, ptr @ti_qspi_probe._entry.25, ptr @ti_qspi_probe._entry.28, ptr @ti_qspi_probe._entry.9, ptr @ti_qspi_probe._entry_ptr, ptr @ti_qspi_probe._entry_ptr.11, ptr @ti_qspi_probe._entry_ptr.16, ptr @ti_qspi_probe._entry_ptr.20, ptr @ti_qspi_probe._entry_ptr.24, ptr @ti_qspi_probe._entry_ptr.27, ptr @ti_qspi_probe._entry_ptr.31, ptr @ti_qspi_setup._entry, ptr @ti_qspi_setup._entry.39, ptr @ti_qspi_setup._entry.42, ptr @ti_qspi_setup._entry_ptr, ptr @ti_qspi_setup._entry_ptr.41, ptr @ti_qspi_setup._entry_ptr.44, ptr @ti_qspi_driver, ptr @.str, ptr @ti_qspi_match, ptr @ti_qspi_pm_ops, ptr @ti_qspi_mem_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @ti_qspi_probe.__key, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @init_completion.__key, ptr @.str.68], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_qspi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_qspi_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_qspi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_qspi_mem_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_qspi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_qspi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_qspi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_qspi_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_qspi_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_qspi_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_qspi_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_qspi_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_qspi_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_qspi_setup._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_qspi_setup._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qspi_write_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qspi_read_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_qspi_dma_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_qspi_dma_xfer._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_qspi_dma_xfer._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_qspi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_qspi_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ti_qspi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @ti_qspi_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_qspi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %max_freq = alloca i32, align 4
  %num_cs = alloca i32, align 4
  %mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_freq) #9
  %2 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %max_freq, align 4, !annotation !158
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_cs) #9
  %3 = ptrtoint ptr %num_cs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %num_cs, align 4, !annotation !158
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #9
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %mask, align 4, !annotation !158
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 220, i1 noundef zeroext false) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3075, ptr %mode_bits, align 8
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 10
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %flags, align 4
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %7 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ti_qspi_setup, ptr %setup, align 4
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %8 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %auto_runtime_pm, align 4
  %transfer_one_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 45
  %9 = ptrtoint ptr %transfer_one_message to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ti_qspi_start_transfer_one, ptr %transfer_one_message, align 4
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %of_node5 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %12 = ptrtoint ptr %of_node5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %of_node5, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -2147450752, ptr %bits_per_word_mask, align 8
  %mem_ops = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 53
  %14 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ti_qspi_mem_ops, ptr %mem_ops, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %num_cs, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool7.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool7.not, label %if.then8, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %num_cs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_cs, align 4
  %conv = trunc i32 %16 to i16
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %num_chipselect, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i, align 4
  %master11 = getelementptr inbounds %struct.ti_qspi, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %master11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %master11, align 4
  %dev13 = getelementptr inbounds %struct.ti_qspi, ptr %19, i32 0, i32 9
  %21 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev, ptr %dev13, align 4
  %driver_data.i.i244 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %22 = ptrtoint ptr %driver_data.i.i244 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %driver_data.i.i244, align 4
  %call14 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.2) #9
  %cmp = icmp eq ptr %call14, null
  br i1 %cmp, label %if.then16, label %if.end9.if.end23_crit_edge

if.end9.if.end23_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then16:                                        ; preds = %if.end9
  %call17 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %cmp18 = icmp eq ptr %call17, null
  br i1 %cmp18, label %do.end, label %if.then16.if.end23_crit_edge

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #12
  br label %spi_controller_put.exit

if.end23:                                         ; preds = %if.then16.if.end23_crit_edge, %if.end9.if.end23_crit_edge
  %r.0 = phi ptr [ %call17, %if.then16.if.end23_crit_edge ], [ %call14, %if.end9.if.end23_crit_edge ]
  %call24 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.8) #9
  %cmp25 = icmp eq ptr %call24, null
  br i1 %cmp25, label %if.then27, label %if.end23.if.then39_crit_edge

if.end23.if.then39_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

if.then27:                                        ; preds = %if.end23
  %call28 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #9
  %cmp29 = icmp eq ptr %call28, null
  br i1 %cmp29, label %if.end37, label %if.then27.if.then39_crit_edge

if.then27.if.then39_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

if.end37:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #12
  br label %if.end41

if.then39:                                        ; preds = %if.then27.if.then39_crit_edge, %if.end23.if.then39_crit_edge
  %res_mmap.0.ph = phi ptr [ %call24, %if.end23.if.then39_crit_edge ], [ %call28, %if.then27.if.then39_crit_edge ]
  %end.i = getelementptr inbounds %struct.resource, ptr %res_mmap.0.ph, i32 0, i32 1
  %23 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %end.i, align 4
  %25 = ptrtoint ptr %res_mmap.0.ph to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %res_mmap.0.ph, align 4
  %sub.i = add i32 %24, 1
  %add.i = sub i32 %sub.i, %26
  %mmap_size = getelementptr inbounds %struct.ti_qspi, ptr %19, i32 0, i32 5
  %27 = ptrtoint ptr %mmap_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add.i, ptr %mmap_size, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end37
  %tobool38.not261 = phi i1 [ false, %if.then39 ], [ true, %if.end37 ]
  %res_mmap.0258 = phi ptr [ %res_mmap.0.ph, %if.then39 ], [ null, %if.end37 ]
  %call42 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.end41.spi_controller_put.exit_crit_edge, label %do.body47

if.end41.spi_controller_put.exit_crit_edge:       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_controller_put.exit

do.body47:                                        ; preds = %if.end41
  %list_lock = getelementptr inbounds %struct.ti_qspi, ptr %19, i32 0, i32 1
  call void @__mutex_init(ptr noundef %list_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @ti_qspi_probe.__key) #9
  %call51 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %r.0) #9
  %base = getelementptr inbounds %struct.ti_qspi, ptr %19, i32 0, i32 3
  %28 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call51, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then54, label %if.end57

if.then54:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %call51 to i32
  br label %spi_controller_put.exit

if.end57:                                         ; preds = %do.body47
  %call.i245 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef null) #9
  %tobool.i.not = icmp eq ptr %call.i245, null
  br i1 %tobool.i.not, label %if.end57.if.end75_crit_edge, label %if.then59

if.end57.if.end75_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then59:                                        ; preds = %if.end57
  %call60 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.13) #9
  %ctrl_base = getelementptr inbounds %struct.ti_qspi, ptr %19, i32 0, i32 6
  %30 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call60, ptr %ctrl_base, align 4
  %cmp.i246 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i246, label %if.then63, label %if.end66

if.then63:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %call60 to i32
  br label %spi_controller_put.exit

if.end66:                                         ; preds = %if.then59
  %ctrl_reg = getelementptr inbounds %struct.ti_qspi, ptr %19, i32 0, i32 7
  %call67 = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef 1, ptr noundef %ctrl_reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end66.if.end75_crit_edge, label %do.end72

if.end66.if.end75_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

do.end72:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #12
  br label %spi_controller_put.exit

if.end75:                                         ; preds = %if.end66.if.end75_crit_edge, %if.end57.if.end75_crit_edge
  %call77 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  %fclk = getelementptr inbounds %struct.ti_qspi, ptr %19, i32 0, i32 8
  %32 = ptrtoint ptr %fclk to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call77, ptr %fclk, align 4
  %cmp.i247 = icmp ugt ptr %call77, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i247, label %if.then80, label %if.end75.if.end87_crit_edge

if.end75.if.end87_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then80:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %call77 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %33) #12
  br label %if.end87

if.end87:                                         ; preds = %if.then80, %if.end75.if.end87_crit_edge
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #9
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #9
  call void @pm_runtime_enable(ptr noundef %dev) #9
  %call.i.i248 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef nonnull %max_freq, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i248)
  %tobool92.not = icmp sgt i32 %call.i.i248, -1
  br i1 %tobool92.not, label %if.then93, label %if.end87.if.end94_crit_edge

if.end87.if.end94_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then93:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_freq, align 4
  %spi_max_frequency = getelementptr inbounds %struct.ti_qspi, ptr %19, i32 0, i32 15
  %36 = ptrtoint ptr %spi_max_frequency to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %spi_max_frequency, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.end87.if.end94_crit_edge
  %37 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %mask) #9
  %call95 = call ptr @dma_request_chan_by_mask(ptr noundef nonnull %mask) #9
  %rx_chan = getelementptr inbounds %struct.ti_qspi, ptr %19, i32 0, i32 14
  %38 = ptrtoint ptr %rx_chan to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call95, ptr %rx_chan, align 4
  %cmp.i249 = icmp ugt ptr %call95, inttoptr (i32 -4096 to ptr)
  %39 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev13, align 4
  br i1 %cmp.i249, label %do.end101, label %if.end104

do.end101:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.23) #12
  %41 = ptrtoint ptr %rx_chan to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %rx_chan, align 4
  br label %no_dma

if.end104:                                        ; preds = %if.end94
  %rx_bb_dma_addr = getelementptr inbounds %struct.ti_qspi, ptr %19, i32 0, i32 12
  %call.i250 = call ptr @dma_alloc_attrs(ptr noundef %40, i32 noundef 65536, ptr noundef %rx_bb_dma_addr, i32 noundef 3265, i32 noundef 0) #9
  %rx_bb_addr = getelementptr inbounds %struct.ti_qspi, ptr %19, i32 0, i32 13
  %42 = ptrtoint ptr %rx_bb_addr to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i250, ptr %rx_bb_addr, align 4
  %tobool108.not = icmp eq ptr %call.i250, null
  br i1 %tobool108.not, label %do.end112, label %if.end115

do.end112:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.26) #12
  %45 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rx_chan, align 4
  call void @dma_release_channel(ptr noundef %46) #9
  br label %no_dma

if.end115:                                        ; preds = %if.end104
  %47 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rx_chan, align 4
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 61
  %49 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %dma_rx, align 4
  %50 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %19, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %19, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.68, ptr noundef nonnull @init_completion.__key) #9
  br i1 %tobool38.not261, label %if.end115.if.end138_crit_edge, label %if.then118

if.end115.if.end138_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

if.then118:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %res_mmap.0258 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %res_mmap.0258, align 4
  %mmap_phys_base = getelementptr inbounds %struct.ti_qspi, ptr %19, i32 0, i32 11
  %53 = ptrtoint ptr %mmap_phys_base to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %mmap_phys_base, align 4
  br label %no_dma

no_dma:                                           ; preds = %if.then118, %do.end112, %do.end101
  %54 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rx_chan, align 4
  %tobool121.not = icmp ne ptr %55, null
  %brmerge = or i1 %tobool38.not261, %tobool121.not
  br i1 %brmerge, label %no_dma.if.end138_crit_edge, label %if.then123

no_dma.if.end138_crit_edge:                       ; preds = %no_dma
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

if.then123:                                       ; preds = %no_dma
  %call125 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %res_mmap.0258) #9
  %mmap_base = getelementptr inbounds %struct.ti_qspi, ptr %19, i32 0, i32 4
  %56 = ptrtoint ptr %mmap_base to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call125, ptr %mmap_base, align 4
  %cmp.i251 = icmp ugt ptr %call125, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i251, label %do.end131, label %if.then123.if.end138_crit_edge

if.then123.if.end138_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

do.end131:                                        ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %call125 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %57) #12
  %58 = ptrtoint ptr %mmap_base to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %mmap_base, align 4
  %59 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %mem_ops, align 4
  br label %if.end138

if.end138:                                        ; preds = %do.end131, %if.then123.if.end138_crit_edge, %no_dma.if.end138_crit_edge, %if.end115.if.end138_crit_edge
  %mmap_enabled = getelementptr inbounds %struct.ti_qspi, ptr %19, i32 0, i32 18
  %60 = ptrtoint ptr %mmap_enabled to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %mmap_enabled, align 4
  %current_cs = getelementptr inbounds %struct.ti_qspi, ptr %19, i32 0, i32 19
  %61 = ptrtoint ptr %current_cs to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %current_cs, align 4
  %call140 = call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end138.cleanup_crit_edge, label %if.end143

if.end138.cleanup_crit_edge:                      ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end143:                                        ; preds = %if.end138
  %rx_bb_addr.i = getelementptr inbounds %struct.ti_qspi, ptr %19, i32 0, i32 13
  %62 = ptrtoint ptr %rx_bb_addr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rx_bb_addr.i, align 4
  %tobool.not.i = icmp eq ptr %63, null
  br i1 %tobool.not.i, label %if.end143.if.end.i_crit_edge, label %if.then.i

if.end143.if.end.i_crit_edge:                     ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev13, align 4
  %rx_bb_dma_addr.i = getelementptr inbounds %struct.ti_qspi, ptr %19, i32 0, i32 12
  %66 = ptrtoint ptr %rx_bb_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_bb_dma_addr.i, align 4
  call void @dma_free_attrs(ptr noundef %65, i32 noundef 65536, ptr noundef nonnull %63, i32 noundef %67, i32 noundef 0) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end143.if.end.i_crit_edge
  %68 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rx_chan, align 4
  %tobool2.not.i = icmp eq ptr %69, null
  br i1 %tobool2.not.i, label %if.end.i.ti_qspi_dma_cleanup.exit_crit_edge, label %if.then3.i

if.end.i.ti_qspi_dma_cleanup.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_qspi_dma_cleanup.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_release_channel(ptr noundef nonnull %69) #9
  br label %ti_qspi_dma_cleanup.exit

ti_qspi_dma_cleanup.exit:                         ; preds = %if.then3.i, %if.end.i.ti_qspi_dma_cleanup.exit_crit_edge
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %ti_qspi_dma_cleanup.exit, %do.end72, %if.then63, %if.then54, %if.end41.spi_controller_put.exit_crit_edge, %do.end
  %ret.0 = phi i32 [ -19, %do.end ], [ %29, %if.then54 ], [ %31, %if.then63 ], [ %call67, %do.end72 ], [ %call140, %ti_qspi_dma_cleanup.exit ], [ %call42, %if.end41.spi_controller_put.exit_crit_edge ]
  call void @put_device(ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end138.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %spi_controller_put.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end138.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_cs) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_freq) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_qspi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %master = getelementptr inbounds %struct.ti_qspi, ptr %1, i32 0, i32 2
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
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #9
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %rx_bb_addr.i = getelementptr inbounds %struct.ti_qspi, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %rx_bb_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_bb_addr.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.ti_qspi, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %rx_bb_dma_addr.i = getelementptr inbounds %struct.ti_qspi, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %rx_bb_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_bb_dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef 65536, ptr noundef nonnull %5, i32 noundef %9, i32 noundef 0) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %rx_chan.i = getelementptr inbounds %struct.ti_qspi, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %rx_chan.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_chan.i, align 4
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %11) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_qspi_setup(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %ctx_reg1 = getelementptr inbounds %struct.ti_qspi, ptr %3, i32 0, i32 10
  %busy = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %busy, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end9, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_qspi_setup.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_qspi_setup, %cleanup)) #9
          to label %if.then8 [label %cleanup], !srcloc !160

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.ti_qspi, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_qspi_setup.__UNIQUE_ID_ddebug239, ptr noundef %7, ptr noundef nonnull @.str.34) #9
  br label %cleanup

if.end9:                                          ; preds = %entry
  %spi_max_frequency = getelementptr inbounds %struct.ti_qspi, ptr %3, i32 0, i32 15
  %8 = ptrtoint ptr %spi_max_frequency to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %spi_max_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %dev15 = getelementptr inbounds %struct.ti_qspi, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.35) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %fclk = getelementptr inbounds %struct.ti_qspi, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fclk, align 4
  %call17 = tail call i32 @clk_get_rate(ptr noundef %13) #9
  %14 = ptrtoint ptr %spi_max_frequency to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %spi_max_frequency, align 4
  %add = add i32 %call17, -1
  %sub = add i32 %add, %15
  %div = udiv i32 %sub, %15
  %sub20 = add i32 %div, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub20)
  %cmp = icmp slt i32 %sub20, 0
  br i1 %cmp, label %do.body22, label %if.end41

do.body22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_qspi_setup.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_qspi_setup, %cleanup)) #9
          to label %if.then36 [label %cleanup], !srcloc !160

if.then36:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  %dev37 = getelementptr inbounds %struct.ti_qspi, ptr %3, i32 0, i32 9
  %16 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev37, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_qspi_setup.__UNIQUE_ID_ddebug240, ptr noundef %17, ptr noundef nonnull @.str.36) #9
  br label %cleanup

if.end41:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sub20)
  %cmp42 = icmp ugt i32 %sub20, 65535
  br i1 %cmp42, label %do.body44, label %do.body64

do.body44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_qspi_setup.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_qspi_setup, %cleanup)) #9
          to label %if.then58 [label %cleanup], !srcloc !160

if.then58:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  %dev59 = getelementptr inbounds %struct.ti_qspi, ptr %3, i32 0, i32 9
  %18 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev59, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_qspi_setup.__UNIQUE_ID_ddebug241, ptr noundef %19, ptr noundef nonnull @.str.37, i32 noundef 65535, i32 noundef 65536) #9
  br label %cleanup

do.body64:                                        ; preds = %if.end41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_qspi_setup.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_qspi_setup, %do.end83)) #9
          to label %if.then78 [label %do.end83], !srcloc !160

if.then78:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #11
  %dev79 = getelementptr inbounds %struct.ti_qspi, ptr %3, i32 0, i32 9
  %20 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev79, align 4
  %22 = ptrtoint ptr %spi_max_frequency to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %spi_max_frequency, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_qspi_setup.__UNIQUE_ID_ddebug242, ptr noundef %21, ptr noundef nonnull @.str.38, i32 noundef %23, i32 noundef %sub20) #9
  br label %do.end83

do.end83:                                         ; preds = %if.then78, %do.body64
  %dev84 = getelementptr inbounds %struct.ti_qspi, ptr %3, i32 0, i32 9
  %24 = ptrtoint ptr %dev84 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev84, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %25, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp86 = icmp slt i32 %call.i, 0
  br i1 %cmp86, label %if.then87, label %if.end93

if.then87:                                        ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %dev84 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev84, align 4
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %27)
  %28 = ptrtoint ptr %dev84 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev84, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.40) #12
  br label %cleanup

if.end93:                                         ; preds = %do.end83
  %base.i = getelementptr inbounds %struct.ti_qspi, ptr %3, i32 0, i32 3
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 64
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  %33 = and i32 %32, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr.i149 = getelementptr i8, ptr %35, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149, i32 %33) #9, !srcloc !164
  %or = or i32 %sub20, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %36 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %add.ptr.i151 = getelementptr i8, ptr %38, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151, i32 %36) #9, !srcloc !164
  %39 = ptrtoint ptr %ctx_reg1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or, ptr %ctx_reg1, align 4
  %40 = ptrtoint ptr %dev84 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev84, align 4
  %call.i152 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 12, i32 22
  %42 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store volatile i64 %call.i152, ptr %last_busy.i, align 8
  %43 = ptrtoint ptr %dev84 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev84, align 4
  %call.i153 = tail call i32 @__pm_runtime_suspend(ptr noundef %44, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %cmp98 = icmp slt i32 %call.i153, 0
  br i1 %cmp98, label %do.end102, label %if.end93.cleanup_crit_edge

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end102:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %dev84 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev84, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.43) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end102, %if.end93.cleanup_crit_edge, %if.then87, %if.then58, %do.body44, %if.then36, %do.body22, %do.end14, %if.then8, %do.body
  %retval.0 = phi i32 [ %call.i, %if.then87 ], [ %call.i153, %do.end102 ], [ -22, %do.end14 ], [ -16, %if.then8 ], [ -22, %if.then36 ], [ -22, %if.then58 ], [ 0, %if.end93.cleanup_crit_edge ], [ -16, %do.body ], [ -22, %do.body22 ], [ -22, %do.body44 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_qspi_start_transfer_one(ptr noundef %master, ptr noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 1
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi1, align 4
  %dc = getelementptr inbounds %struct.ti_qspi, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %dc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dc, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 8
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %8 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %add = or i32 %mul, 2
  %shl = shl nuw i32 1, %add
  %9 = ptrtoint ptr %dc to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shl, ptr %dc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 8
  %and4 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end13_crit_edge, label %if.then6

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %chip_select7 = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %chip_select7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %chip_select7, align 4
  %conv8 = zext i8 %13 to i32
  %mul9 = shl nuw nsw i32 %conv8, 3
  %shl10 = shl nuw i32 1, %mul9
  %14 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dc, align 4
  %or12 = or i32 %shl10, %15
  store i32 %or12, ptr %dc, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %if.end.if.end13_crit_edge
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode, align 8
  %and15 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.if.end25_crit_edge, label %if.then17

if.end13.if.end25_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %chip_select18 = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %chip_select18 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %chip_select18, align 4
  %conv19 = zext i8 %19 to i32
  %mul20 = shl nuw nsw i32 %conv19, 3
  %add21 = or i32 %mul20, 1
  %shl22 = shl nuw i32 1, %add21
  %20 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dc, align 4
  %or24 = or i32 %shl22, %21
  store i32 %or24, ptr %dc, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then17, %if.end13.if.end25_crit_edge
  %22 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn181 = load ptr, ptr %m, align 4
  %cmp.not182 = icmp eq ptr %.pn181, %m
  br i1 %cmp.not182, label %if.end25.for.end_crit_edge, label %if.end25.for.body_crit_edge

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  br label %for.body

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end25.for.body_crit_edge
  %.pn184 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn181, %if.end25.for.body_crit_edge ]
  %frame_len_words.0183 = phi i32 [ %add29, %for.body.for.body_crit_edge ], [ 0, %if.end25.for.body_crit_edge ]
  %len = getelementptr i8, ptr %.pn184, i32 -76
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %bits_per_word = getelementptr i8, ptr %.pn184, i32 -39
  %25 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bits_per_word, align 1
  %27 = lshr i8 %26, 3
  %28 = zext i8 %27 to i32
  %div = udiv i32 %24, %28
  %add29 = add i32 %div, %frame_len_words.0183
  %29 = ptrtoint ptr %.pn184 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn = load ptr, ptr %.pn184, align 4
  %cmp.not = icmp eq ptr %.pn, %m
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end25.for.end_crit_edge
  %frame_len_words.0.lcssa = phi i32 [ 0, %if.end25.for.end_crit_edge ], [ %add29, %for.body.for.end_crit_edge ]
  %30 = tail call i32 @llvm.umin.i32(i32 %frame_len_words.0.lcssa, i32 4096)
  %cmd = getelementptr inbounds %struct.ti_qspi, ptr %1, i32 0, i32 16
  %31 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %cmd, align 4
  %chip_select38 = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 4
  %32 = ptrtoint ptr %chip_select38 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %chip_select38, align 4
  %conv39 = zext i8 %33 to i32
  %shl40 = shl i32 %conv39, 28
  %sub = add nsw i32 %30, -1
  %or45 = or i32 %shl40, %sub
  store i32 %or45, ptr %cmd, align 4
  %34 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dc, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  %base.i = getelementptr inbounds %struct.ti_qspi, ptr %1, i32 0, i32 3
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %36) #9, !srcloc !164
  %list_lock = getelementptr inbounds %struct.ti_qspi, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %list_lock, i32 noundef 0) #9
  %mmap_enabled = getelementptr inbounds %struct.ti_qspi, ptr %1, i32 0, i32 18
  %39 = ptrtoint ptr %mmap_enabled to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mmap_enabled, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool47.not = icmp eq i8 %40, 0
  br i1 %tobool47.not, label %for.end.if.end49_crit_edge, label %if.then48

for.end.if.end49_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then48:                                        ; preds = %for.end
  %master.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 2
  %41 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %base.i.i = getelementptr inbounds %struct.ti_qspi, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #9, !srcloc !164
  %ctrl_base.i = getelementptr inbounds %struct.ti_qspi, ptr %44, i32 0, i32 6
  %47 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctrl_base.i, align 4
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %if.then48.ti_qspi_disable_memory_map.exit_crit_edge, label %if.then.i

if.then48.ti_qspi_disable_memory_map.exit_crit_edge: ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_qspi_disable_memory_map.exit

if.then.i:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_reg.i = getelementptr inbounds %struct.ti_qspi, ptr %44, i32 0, i32 7
  %49 = ptrtoint ptr %ctrl_reg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ctrl_reg.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %48, i32 noundef %50, i32 noundef 1792, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %ti_qspi_disable_memory_map.exit

ti_qspi_disable_memory_map.exit:                  ; preds = %if.then.i, %if.then48.ti_qspi_disable_memory_map.exit_crit_edge
  %mmap_enabled.i = getelementptr inbounds %struct.ti_qspi, ptr %44, i32 0, i32 18
  %51 = ptrtoint ptr %mmap_enabled.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %mmap_enabled.i, align 4
  %current_cs.i = getelementptr inbounds %struct.ti_qspi, ptr %44, i32 0, i32 19
  %52 = ptrtoint ptr %current_cs.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %current_cs.i, align 4
  br label %if.end49

if.end49:                                         ; preds = %ti_qspi_disable_memory_map.exit, %for.end.if.end49_crit_edge
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 6
  br label %for.cond55

for.cond55:                                       ; preds = %if.end96.for.cond55_crit_edge, %if.end49
  %frame_len_words.1 = phi i32 [ %30, %if.end49 ], [ %sub99, %if.end96.for.cond55_crit_edge ]
  %.pn177.in = phi ptr [ %m, %if.end49 ], [ %.pn177, %if.end96.for.cond55_crit_edge ]
  %53 = ptrtoint ptr %.pn177.in to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn177 = load ptr, ptr %.pn177.in, align 4
  %cmp58.not = icmp eq ptr %.pn177, %m
  br i1 %cmp58.not, label %for.cond55.for.end110_crit_edge, label %for.body61

for.cond55.for.end110_crit_edge:                  ; preds = %for.cond55
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end110

for.body61:                                       ; preds = %for.cond55
  %t.1 = getelementptr i8, ptr %.pn177, i32 -84
  %54 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cmd, align 4
  %and63 = and i32 %55, -66584577
  %bits_per_word64 = getelementptr i8, ptr %.pn177, i32 -39
  %56 = ptrtoint ptr %bits_per_word64 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %bits_per_word64, align 1
  %conv65 = zext i8 %57 to i32
  %sub66 = shl nuw nsw i32 %conv65, 19
  %shl67 = add nsw i32 %sub66, -524288
  %or68 = or i32 %shl67, %and63
  store i32 %or68, ptr %cmd, align 4
  %58 = load i8, ptr %bits_per_word64, align 1
  %59 = lshr i8 %58, 3
  %60 = zext i8 %59 to i32
  %len73 = getelementptr i8, ptr %.pn177, i32 -76
  %61 = ptrtoint ptr %len73 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len73, align 4
  %div74 = udiv i32 %62, %60
  %63 = tail call i32 @llvm.umin.i32(i32 %div74, i32 %frame_len_words.1)
  %mul82 = mul i32 %63, %60
  %call83 = tail call fastcc i32 @qspi_transfer_msg(ptr noundef %1, ptr noundef %t.1, i32 noundef %mul82)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end96, label %do.body

do.body:                                          ; preds = %for.body61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_qspi_start_transfer_one.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_qspi_start_transfer_one, %do.end)) #9
          to label %if.then93 [label %do.end], !srcloc !160

if.then93:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.ti_qspi, ptr %1, i32 0, i32 9
  %64 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_qspi_start_transfer_one.__UNIQUE_ID_ddebug261, ptr noundef %65, ptr noundef nonnull @.str.46) #9
  br label %do.end

do.end:                                           ; preds = %if.then93, %do.body
  tail call void @mutex_unlock(ptr noundef %list_lock) #9
  br label %cleanup

if.end96:                                         ; preds = %for.body61
  %66 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %actual_length, align 4
  %add98 = add i32 %67, %mul82
  store i32 %add98, ptr %actual_length, align 4
  %sub99 = sub i32 %frame_len_words.1, %63
  %cmp100 = icmp eq i32 %sub99, 0
  br i1 %cmp100, label %if.end96.for.end110_crit_edge, label %if.end96.for.cond55_crit_edge

if.end96.for.cond55_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond55

if.end96.for.end110_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end110

for.end110:                                       ; preds = %if.end96.for.end110_crit_edge, %for.cond55.for.end110_crit_edge
  tail call void @mutex_unlock(ptr noundef %list_lock) #9
  %68 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cmd, align 4
  %or113 = or i32 %69, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %70 = tail call i32 @llvm.bswap.i32(i32 %or113) #9
  %71 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i, align 4
  %add.ptr.i179 = getelementptr i8, ptr %72, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179, i32 %70) #9, !srcloc !164
  %status114 = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 7
  %73 = ptrtoint ptr %status114 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %status114, align 4
  tail call void @spi_finalize_current_message(ptr noundef %master) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end110, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.end110 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan_by_mask(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #9, !srcloc !166
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !167
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qspi_transfer_msg(ptr nocapture noundef readonly %qspi, ptr nocapture noundef readonly %t, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @qspi_write_msg(ptr noundef %qspi, ptr noundef %t, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end10_crit_edge, label %do.body

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qspi_transfer_msg.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qspi_transfer_msg, %cleanup)) #9
          to label %if.then8 [label %cleanup], !srcloc !160

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.ti_qspi, ptr %qspi, i32 0, i32 9
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qspi_transfer_msg.__UNIQUE_ID_ddebug249, ptr noundef %3, ptr noundef nonnull @.str.48) #9
  br label %cleanup

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %4 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_buf, align 4
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.then12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %if.end10
  %call13 = tail call fastcc i32 @qspi_read_msg(ptr noundef %qspi, ptr noundef %t, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.cleanup_crit_edge, label %do.body16

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qspi_transfer_msg.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qspi_transfer_msg, %cleanup)) #9
          to label %if.then30 [label %cleanup], !srcloc !160

if.then30:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  %dev31 = getelementptr inbounds %struct.ti_qspi, ptr %qspi, i32 0, i32 9
  %6 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qspi_transfer_msg.__UNIQUE_ID_ddebug250, ptr noundef %7, ptr noundef nonnull @.str.49) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %do.body16, %if.then12.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then8, %do.body
  %retval.0 = phi i32 [ %call, %if.then8 ], [ %call13, %if.then30 ], [ 0, %if.then12.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ %call, %do.body ], [ %call13, %do.body16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qspi_write_msg(ptr nocapture noundef readonly %qspi, ptr nocapture noundef readonly %t, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.ti_qspi, ptr %qspi, i32 0, i32 16
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %0 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bits_per_word, align 1
  %2 = lshr i8 %1, 3
  %3 = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not177 = icmp eq i32 %count, 0
  br i1 %tobool.not177, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %4 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd1, align 4
  %or = or i32 %5, 131072
  %6 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t, align 4
  %base.i.i = getelementptr inbounds %struct.ti_qspi, ptr %qspi, i32 0, i32 3
  %dev87 = getelementptr inbounds %struct.ti_qspi, ptr %qspi, i32 0, i32 9
  %dc88 = getelementptr inbounds %struct.ti_qspi, ptr %qspi, i32 0, i32 17
  br label %while.body

while.body:                                       ; preds = %if.end105.while.body_crit_edge, %while.body.lr.ph
  %count.addr.0182 = phi i32 [ %count, %while.body.lr.ph ], [ %sub107, %if.end105.while.body_crit_edge ]
  %xfer_len.0181 = phi i32 [ %3, %while.body.lr.ph ], [ %xfer_len.1, %if.end105.while.body_crit_edge ]
  %cmd.0180 = phi i32 [ %or, %while.body.lr.ph ], [ %cmd.1, %if.end105.while.body_crit_edge ]
  %txbuf.0178 = phi ptr [ %7, %while.body.lr.ph ], [ %add.ptr106, %if.end105.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 76
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not43.i = icmp eq i32 %12, 0
  br i1 %tobool.not43.i, label %while.body.if.end_crit_edge, label %land.rhs.lr.ph.i

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs.lr.ph.i:                                 ; preds = %while.body
  %add.neg.i = sub i32 -200, %8
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %do.end.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.end.i, label %qspi_is_busy.exit

do.end.i:                                         ; preds = %land.rhs.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !168
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !169
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %15, i32 76
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39.i) #9, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  %17 = and i32 %16, 16777216
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %do.end.i.if.end_crit_edge, label %do.end.i.land.rhs.i_crit_edge

do.end.i.land.rhs.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

do.end.i.if.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

qspi_is_busy.exit:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 222, i32 noundef 9, ptr noundef nonnull @.str.55) #9
  br label %cleanup

if.end:                                           ; preds = %do.end.i.if.end_crit_edge, %while.body.if.end_crit_edge
  %18 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end.sw.epilog_crit_edge [
    i32 1, label %do.body
    i32 2, label %do.body45
    i32 4, label %do.body72
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qspi_write_msg.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qspi_write_msg, %do.end)) #9
          to label %if.then8 [label %do.end], !srcloc !160

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev87, align 4
  %21 = ptrtoint ptr %dc88 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dc88, align 4
  %23 = ptrtoint ptr %txbuf.0178 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %txbuf.0178, align 1
  %conv9 = zext i8 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qspi_write_msg.__UNIQUE_ID_ddebug243, ptr noundef %20, ptr noundef nonnull @.str.51, i32 noundef %cmd.0180, i32 noundef %22, i32 noundef %conv9) #9
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %count.addr.0182)
  %cmp = icmp sgt i32 %count.addr.0182, 15
  br i1 %cmp, label %if.then12, label %do.body35

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr = getelementptr i32, ptr %txbuf.0178, i32 1
  %25 = ptrtoint ptr %txbuf.0178 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %txbuf.0178, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %27) #9, !srcloc !164
  %incdec.ptr16 = getelementptr i32, ptr %txbuf.0178, i32 2
  %30 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %incdec.ptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  tail call void @arm_heavy_mb() #9
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i, align 4
  %add.ptr21 = getelementptr i8, ptr %34, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %32) #9, !srcloc !164
  %incdec.ptr22 = getelementptr i32, ptr %txbuf.0178, i32 3
  %35 = ptrtoint ptr %incdec.ptr16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %incdec.ptr16, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  tail call void @arm_heavy_mb() #9
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %38 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i, align 4
  %add.ptr27 = getelementptr i8, ptr %39, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %37) #9, !srcloc !164
  %40 = ptrtoint ptr %incdec.ptr22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %incdec.ptr22, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %43 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i, align 4
  %add.ptr33 = getelementptr i8, ptr %44, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %42) #9, !srcloc !164
  %or34 = or i32 %cmd.0180, 66584576
  br label %sw.epilog

do.body35:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  tail call void @arm_heavy_mb() #9
  %45 = ptrtoint ptr %txbuf.0178 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %txbuf.0178, align 1
  %47 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i.i, align 4
  %add.ptr39 = getelementptr i8, ptr %48, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr39, i8 %46) #9, !srcloc !175
  %49 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cmd1, align 4
  %or41 = or i32 %50, 131072
  br label %sw.epilog

do.body45:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qspi_write_msg.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qspi_write_msg, %do.body66)) #9
          to label %if.then59 [label %do.body66], !srcloc !160

if.then59:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev87, align 4
  %53 = ptrtoint ptr %dc88 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dc88, align 4
  %55 = ptrtoint ptr %txbuf.0178 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %txbuf.0178, align 1
  %conv62 = zext i8 %56 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qspi_write_msg.__UNIQUE_ID_ddebug244, ptr noundef %52, ptr noundef nonnull @.str.52, i32 noundef %cmd.0180, i32 noundef %54, i32 noundef %conv62) #9
  br label %do.body66

do.body66:                                        ; preds = %if.then59, %do.body45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  tail call void @arm_heavy_mb() #9
  %57 = ptrtoint ptr %txbuf.0178 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %txbuf.0178, align 2
  %59 = tail call i16 @llvm.bswap.i16(i16 %58)
  %60 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i.i, align 4
  %add.ptr70 = getelementptr i8, ptr %61, i32 80
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr70, i16 %59) #9, !srcloc !177
  br label %sw.epilog

do.body72:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qspi_write_msg.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qspi_write_msg, %do.body93)) #9
          to label %if.then86 [label %do.body93], !srcloc !160

if.then86:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev87, align 4
  %64 = ptrtoint ptr %dc88 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dc88, align 4
  %66 = ptrtoint ptr %txbuf.0178 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %txbuf.0178, align 1
  %conv89 = zext i8 %67 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qspi_write_msg.__UNIQUE_ID_ddebug245, ptr noundef %63, ptr noundef nonnull @.str.53, i32 noundef %cmd.0180, i32 noundef %65, i32 noundef %conv89) #9
  br label %do.body93

do.body93:                                        ; preds = %if.then86, %do.body72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  tail call void @arm_heavy_mb() #9
  %68 = ptrtoint ptr %txbuf.0178 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %txbuf.0178, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  %71 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i.i, align 4
  %add.ptr97 = getelementptr i8, ptr %72, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 %70) #9, !srcloc !164
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body93, %do.body66, %do.body35, %if.then12, %if.end.sw.epilog_crit_edge
  %cmd.1 = phi i32 [ %cmd.0180, %if.end.sw.epilog_crit_edge ], [ %cmd.0180, %do.body93 ], [ %cmd.0180, %do.body66 ], [ %or34, %if.then12 ], [ %or41, %do.body35 ]
  %xfer_len.1 = phi i32 [ %xfer_len.0181, %if.end.sw.epilog_crit_edge ], [ %xfer_len.0181, %do.body93 ], [ %xfer_len.0181, %do.body66 ], [ 16, %if.then12 ], [ 1, %do.body35 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %73 = tail call i32 @llvm.bswap.i32(i32 %cmd.1) #9
  %74 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %75, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %73) #9, !srcloc !164
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %76 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i162 = sub i32 -200, %76
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i167.do.body.i_crit_edge, %sw.epilog
  %77 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i163 = getelementptr i8, ptr %78, i32 76
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i163) #9, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  %80 = and i32 %79, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i164 = icmp eq i32 %80, 0
  br i1 %tobool.not.i164, label %do.end.i167, label %do.body.i.if.end105_crit_edge

do.body.i.if.end105_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

do.end.i167:                                      ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %81 = load volatile i32, ptr @jiffies, align 128
  %sub.i165 = add i32 %add.neg.i162, %81
  %cmp.i166 = icmp slt i32 %sub.i165, 0
  br i1 %cmp.i166, label %do.end.i167.do.body.i_crit_edge, label %do.end10.i

do.end.i167.do.body.i_crit_edge:                  ; preds = %do.end.i167
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.end10.i:                                       ; preds = %do.end.i167
  %82 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %83, i32 76
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i) #9, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  %85 = and i32 %84, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool13.not.i = icmp eq i32 %85, 0
  br i1 %tobool13.not.i, label %do.end103, label %do.end10.i.if.end105_crit_edge

do.end10.i.if.end105_crit_edge:                   ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

do.end103:                                        ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev87, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.54) #12
  br label %cleanup

if.end105:                                        ; preds = %do.end10.i.if.end105_crit_edge, %do.body.i.if.end105_crit_edge
  %add.ptr106 = getelementptr i8, ptr %txbuf.0178, i32 %xfer_len.1
  %sub107 = sub i32 %count.addr.0182, %xfer_len.1
  %tobool.not = icmp eq i32 %sub107, 0
  br i1 %tobool.not, label %if.end105.cleanup_crit_edge, label %if.end105.while.body_crit_edge

if.end105.while.body_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end105.cleanup_crit_edge, %do.end103, %qspi_is_busy.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end103 ], [ -16, %qspi_is_busy.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end105.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qspi_read_msg(ptr nocapture noundef readonly %qspi, ptr nocapture noundef readonly %t, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %0 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bits_per_word, align 1
  %2 = lshr i8 %1, 3
  %3 = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not219 = icmp eq i32 %count, 0
  br i1 %tobool.not219, label %entry.cleanup_crit_edge, label %do.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.lr.ph:                                    ; preds = %entry
  %cmd1 = getelementptr inbounds %struct.ti_qspi, ptr %qspi, i32 0, i32 16
  %4 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd1, align 4
  %rx_nbits = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 7
  %6 = ptrtoint ptr %rx_nbits to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %rx_nbits, align 4
  %bf.clear = and i8 %bf.load, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.clear)
  %switch.selectcmp227 = icmp eq i8 %bf.clear, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.clear)
  %switch.selectcmp = icmp eq i8 %bf.clear, 4
  %switch.select = select i1 %switch.selectcmp, i32 458752, i32 65536
  %switch.select228 = select i1 %switch.selectcmp227, i32 196608, i32 %switch.select
  %or4 = or i32 %5, %switch.select228
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %7 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_buf, align 4
  %dev = getelementptr inbounds %struct.ti_qspi, ptr %qspi, i32 0, i32 9
  %dc = getelementptr inbounds %struct.ti_qspi, ptr %qspi, i32 0, i32 17
  %base.i.i = getelementptr inbounds %struct.ti_qspi, ptr %qspi, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cond142 = icmp eq i8 %2, 1
  br label %do.body

do.body:                                          ; preds = %sw.epilog132.do.body_crit_edge, %do.body.lr.ph
  %count.addr.0224 = phi i32 [ %count, %do.body.lr.ph ], [ %sub136, %sw.epilog132.do.body_crit_edge ]
  %cmd.1223 = phi i32 [ %or4, %do.body.lr.ph ], [ %cmd.2, %sw.epilog132.do.body_crit_edge ]
  %rx_wlen.0222 = phi i8 [ %2, %do.body.lr.ph ], [ %rx_wlen.1, %sw.epilog132.do.body_crit_edge ]
  %rxbuf.0220 = phi ptr [ %8, %do.body.lr.ph ], [ %add.ptr134, %sw.epilog132.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qspi_read_msg.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qspi_read_msg, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !160

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qspi_read_msg.__UNIQUE_ID_ddebug246, ptr noundef %10, ptr noundef nonnull @.str.57, i32 noundef %cmd.1223, i32 noundef %12) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 76
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not43.i = icmp eq i32 %17, 0
  br i1 %tobool.not43.i, label %do.end.if.end13_crit_edge, label %land.rhs.lr.ph.i

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.rhs.lr.ph.i:                                 ; preds = %do.end
  %add.neg.i = sub i32 -200, %13
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %do.end.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.end.i, label %qspi_is_busy.exit

do.end.i:                                         ; preds = %land.rhs.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !168
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !169
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %20, i32 76
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39.i) #9, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  %22 = and i32 %21, 16777216
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %do.end.i.if.end13_crit_edge, label %do.end.i.land.rhs.i_crit_edge

do.end.i.land.rhs.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

do.end.i.if.end13_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

qspi_is_busy.exit:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 222, i32 noundef 9, ptr noundef nonnull @.str.55) #9
  br label %cleanup

if.end13:                                         ; preds = %do.end.i.if.end13_crit_edge, %do.end.if.end13_crit_edge
  br i1 %cond142, label %sw.bb14, label %if.end13.sw.epilog29_crit_edge

if.end13.sw.epilog29_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog29

sw.bb14:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %count.addr.0224)
  %cmp = icmp sgt i32 %count.addr.0224, 15
  %23 = tail call i32 @llvm.smin.i32(i32 %count.addr.0224, i32 4)
  %conv20 = trunc i32 %23 to i8
  %rxlen.0 = select i1 %cmp, i8 16, i8 %conv20
  %shl = shl i8 %rxlen.0, 3
  %and = and i32 %cmd.1223, -66584577
  %conv24 = zext i8 %shl to i32
  %sub = shl nuw nsw i32 %conv24, 19
  %shl25 = add nsw i32 %sub, -524288
  %or26 = or i32 %shl25, %and
  br label %sw.epilog29

sw.epilog29:                                      ; preds = %sw.bb14, %if.end13.sw.epilog29_crit_edge
  %rx_wlen.1 = phi i8 [ %shl, %sw.bb14 ], [ %rx_wlen.0222, %if.end13.sw.epilog29_crit_edge ]
  %rxlen.1 = phi i8 [ %rxlen.0, %sw.bb14 ], [ %2, %if.end13.sw.epilog29_crit_edge ]
  %cmd.2 = phi i32 [ %or26, %sw.bb14 ], [ %cmd.1223, %if.end13.sw.epilog29_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %cmd.2) #9
  %25 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %24) #9, !srcloc !164
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i200 = sub i32 -200, %27
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i205.do.body.i_crit_edge, %sw.epilog29
  %28 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i201 = getelementptr i8, ptr %29, i32 76
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i201) #9, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  %31 = and i32 %30, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i202 = icmp eq i32 %31, 0
  br i1 %tobool.not.i202, label %do.end.i205, label %do.body.i.if.end37_crit_edge

do.body.i.if.end37_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

do.end.i205:                                      ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %sub.i203 = add i32 %add.neg.i200, %32
  %cmp.i204 = icmp slt i32 %sub.i203, 0
  br i1 %cmp.i204, label %do.end.i205.do.body.i_crit_edge, label %do.end10.i

do.end.i205.do.body.i_crit_edge:                  ; preds = %do.end.i205
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.end10.i:                                       ; preds = %do.end.i205
  %33 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %34, i32 76
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i) #9, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  %36 = and i32 %35, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool13.not.i = icmp eq i32 %36, 0
  br i1 %tobool13.not.i, label %do.end35, label %do.end10.i.if.end37_crit_edge

do.end10.i.if.end37_crit_edge:                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

do.end35:                                         ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.58) #12
  br label %cleanup

if.end37:                                         ; preds = %do.end10.i.if.end37_crit_edge, %do.body.i.if.end37_crit_edge
  %39 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %3, label %if.end37.sw.epilog132_crit_edge [
    i32 1, label %sw.bb38
    i32 2, label %sw.bb116
    i32 4, label %sw.bb124
  ]

if.end37.sw.epilog132_crit_edge:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog132

sw.bb38:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %count.addr.0224)
  %cmp39 = icmp sgt i32 %count.addr.0224, 15
  %40 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i, align 4
  br i1 %cmp39, label %if.then41, label %if.else69

if.then41:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %41, i32 112
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !161
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %incdec.ptr = getelementptr i32, ptr %rxbuf.0220, i32 1
  %44 = ptrtoint ptr %rxbuf.0220 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %rxbuf.0220, align 4
  %45 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i, align 4
  %add.ptr48 = getelementptr i8, ptr %46, i32 108
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #9, !srcloc !161
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  %incdec.ptr52 = getelementptr i32, ptr %rxbuf.0220, i32 2
  %49 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %incdec.ptr, align 4
  %50 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i.i, align 4
  %add.ptr56 = getelementptr i8, ptr %51, i32 104
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #9, !srcloc !161
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %incdec.ptr60 = getelementptr i32, ptr %rxbuf.0220, i32 3
  %54 = ptrtoint ptr %incdec.ptr52 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %incdec.ptr52, align 4
  %55 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i.i, align 4
  %add.ptr64 = getelementptr i8, ptr %56, i32 80
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #9, !srcloc !161
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  %59 = ptrtoint ptr %incdec.ptr60 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %incdec.ptr60, align 4
  br label %sw.epilog132

if.else69:                                        ; preds = %sw.bb38
  %add.ptr74 = getelementptr i8, ptr %41, i32 80
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #9, !srcloc !161
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !185
  %conv78 = zext i8 %rx_wlen.1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %rx_wlen.1)
  %cmp79 = icmp ugt i8 %rx_wlen.1, 7
  br i1 %cmp79, label %if.end87, label %if.else69.sw.epilog132_crit_edge

if.else69.sw.epilog132_crit_edge:                 ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog132

if.end87:                                         ; preds = %if.else69
  %sub83 = add nsw i32 %conv78, -8
  %shr84 = lshr i32 %61, %sub83
  %conv85 = trunc i32 %shr84 to i8
  %62 = ptrtoint ptr %rxbuf.0220 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv85, ptr %rxbuf.0220, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %rx_wlen.1)
  %cmp89 = icmp ugt i8 %rx_wlen.1, 15
  br i1 %cmp89, label %if.end97, label %if.end87.sw.epilog132_crit_edge

if.end87.sw.epilog132_crit_edge:                  ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog132

if.end97:                                         ; preds = %if.end87
  %incdec.ptr86 = getelementptr i8, ptr %rxbuf.0220, i32 1
  %sub93 = add nsw i32 %conv78, -16
  %shr94 = lshr i32 %61, %sub93
  %conv95 = trunc i32 %shr94 to i8
  %63 = ptrtoint ptr %incdec.ptr86 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv95, ptr %incdec.ptr86, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %rx_wlen.1)
  %cmp99 = icmp ugt i8 %rx_wlen.1, 23
  br i1 %cmp99, label %if.end107, label %if.end97.sw.epilog132_crit_edge

if.end97.sw.epilog132_crit_edge:                  ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog132

if.end107:                                        ; preds = %if.end97
  %incdec.ptr96 = getelementptr i8, ptr %rxbuf.0220, i32 2
  %sub103 = add nsw i32 %conv78, -24
  %shr104 = lshr i32 %61, %sub103
  %conv105 = trunc i32 %shr104 to i8
  %64 = ptrtoint ptr %incdec.ptr96 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv105, ptr %incdec.ptr96, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %rx_wlen.1)
  %cmp109 = icmp ugt i8 %rx_wlen.1, 31
  br i1 %cmp109, label %if.then111, label %if.end107.sw.epilog132_crit_edge

if.end107.sw.epilog132_crit_edge:                 ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog132

if.then111:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr106 = getelementptr i8, ptr %rxbuf.0220, i32 3
  %conv112 = trunc i32 %61 to i8
  %65 = ptrtoint ptr %incdec.ptr106 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv112, ptr %incdec.ptr106, align 1
  br label %sw.epilog132

sw.bb116:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i.i, align 4
  %add.ptr120 = getelementptr i8, ptr %67, i32 80
  %68 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr120) #9, !srcloc !186
  %69 = tail call i16 @llvm.bswap.i16(i16 %68)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  %70 = ptrtoint ptr %rxbuf.0220 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %rxbuf.0220, align 2
  br label %sw.epilog132

sw.bb124:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i.i, align 4
  %add.ptr128 = getelementptr i8, ptr %72, i32 80
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr128) #9, !srcloc !161
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  %75 = ptrtoint ptr %rxbuf.0220 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %rxbuf.0220, align 4
  br label %sw.epilog132

sw.epilog132:                                     ; preds = %sw.bb124, %sw.bb116, %if.then111, %if.end107.sw.epilog132_crit_edge, %if.end97.sw.epilog132_crit_edge, %if.end87.sw.epilog132_crit_edge, %if.else69.sw.epilog132_crit_edge, %if.then41, %if.end37.sw.epilog132_crit_edge
  %conv133 = zext i8 %rxlen.1 to i32
  %add.ptr134 = getelementptr i8, ptr %rxbuf.0220, i32 %conv133
  %sub136 = sub i32 %count.addr.0224, %conv133
  %tobool.not = icmp eq i32 %sub136, 0
  br i1 %tobool.not, label %sw.epilog132.cleanup_crit_edge, label %sw.epilog132.do.body_crit_edge

sw.epilog132.do.body_crit_edge:                   ; preds = %sw.epilog132
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.epilog132.cleanup_crit_edge:                   ; preds = %sw.epilog132
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog132.cleanup_crit_edge, %do.end35, %qspi_is_busy.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end35 ], [ -16, %qspi_is_busy.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.epilog132.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ti_qspi_adjust_op_size(ptr nocapture noundef readonly %mem, ptr nocapture noundef %op) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end44_crit_edge

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem, align 4
  %master = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %val, align 8
  %mmap_size = getelementptr inbounds %struct.ti_qspi, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %mmap_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mmap_size, align 4
  %conv = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %conv)
  %cmp1 = icmp ult i64 %9, %conv
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %nbytes = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nbytes, align 4
  %conv7 = zext i32 %13 to i64
  %add = add i64 %9, %conv7
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp10 = icmp ugt i64 %add, %conv
  br i1 %cmp10, label %if.then12, label %if.then3.if.end44_crit_edge

if.then3.if.end44_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then12:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %14 = trunc i64 %9 to i32
  %conv17 = sub i32 %11, %14
  %15 = tail call i32 @llvm.umin.i32(i32 %13, i32 %conv17)
  %16 = ptrtoint ptr %nbytes to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %nbytes, align 4
  br label %if.end44

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %addr, align 8
  %conv26 = zext i8 %18 to i32
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %19 = ptrtoint ptr %dummy to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dummy, align 8
  %conv29 = zext i8 %20 to i32
  %add30.neg = xor i32 %conv26, 4095
  %sub31 = sub nuw nsw i32 %add30.neg, %conv29
  %nbytes33 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %nbytes33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nbytes33, align 4
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 %sub31)
  %24 = ptrtoint ptr %nbytes33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %nbytes33, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then12, %if.then3.if.end44_crit_edge, %entry.if.end44_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_qspi_exec_mem_op(ptr nocapture noundef readonly %mem, ptr noundef %op) #2 align 64 {
entry:
  %sgt = alloca %struct.sg_table, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %master = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %nbytes = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr, align 8
  %12 = add i8 %11, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %12)
  %13 = icmp ult i8 %12, -4
  br i1 %13, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %val, align 8
  %conv11 = trunc i64 %15 to i32
  %add = add i32 %7, %conv11
  %mmap_size = getelementptr inbounds %struct.ti_qspi, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %mmap_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mmap_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %17)
  %cmp14 = icmp ugt i32 %add, %17
  br i1 %cmp14, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %list_lock = getelementptr inbounds %struct.ti_qspi, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %list_lock, i32 noundef 0) #9
  %mmap_enabled = getelementptr inbounds %struct.ti_qspi, ptr %5, i32 0, i32 18
  %18 = ptrtoint ptr %mmap_enabled to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mmap_enabled, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool18.not = icmp eq i8 %19, 0
  br i1 %tobool18.not, label %if.end17.if.then24_crit_edge, label %lor.lhs.false19

if.end17.if.then24_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

lor.lhs.false19:                                  ; preds = %if.end17
  %current_cs = getelementptr inbounds %struct.ti_qspi, ptr %5, i32 0, i32 19
  %20 = ptrtoint ptr %current_cs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %current_cs, align 4
  %22 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mem, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %chip_select, align 4
  %conv21 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv21)
  %cmp22.not = icmp eq i32 %21, %conv21
  br i1 %cmp22.not, label %lor.lhs.false19.if.end26_crit_edge, label %lor.lhs.false19.if.then24_crit_edge

lor.lhs.false19.if.then24_crit_edge:              ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

lor.lhs.false19.if.end26_crit_edge:               ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then24:                                        ; preds = %lor.lhs.false19.if.then24_crit_edge, %if.end17.if.then24_crit_edge
  %26 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mem, align 4
  %master.i = getelementptr inbounds %struct.spi_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %base.i.i = getelementptr inbounds %struct.ti_qspi, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #9, !srcloc !164
  %ctrl_base.i = getelementptr inbounds %struct.ti_qspi, ptr %31, i32 0, i32 6
  %34 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctrl_base.i, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %if.then24.ti_qspi_enable_memory_map.exit_crit_edge, label %if.then.i

if.then24.ti_qspi_enable_memory_map.exit_crit_edge: ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_qspi_enable_memory_map.exit

if.then.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_reg.i = getelementptr inbounds %struct.ti_qspi, ptr %31, i32 0, i32 7
  %36 = ptrtoint ptr %ctrl_reg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ctrl_reg.i, align 4
  %chip_select.i = getelementptr inbounds %struct.spi_device, ptr %27, i32 0, i32 4
  %38 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %chip_select.i, align 4
  %conv.i = zext i8 %39 to i32
  %add.i = shl nuw nsw i32 %conv.i, 8
  %shl.i = add nuw nsw i32 %add.i, 256
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %35, i32 noundef %37, i32 noundef 1792, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %ti_qspi_enable_memory_map.exit

ti_qspi_enable_memory_map.exit:                   ; preds = %if.then.i, %if.then24.ti_qspi_enable_memory_map.exit_crit_edge
  %mmap_enabled.i = getelementptr inbounds %struct.ti_qspi, ptr %31, i32 0, i32 18
  %40 = ptrtoint ptr %mmap_enabled.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %mmap_enabled.i, align 4
  %chip_select3.i = getelementptr inbounds %struct.spi_device, ptr %27, i32 0, i32 4
  %41 = ptrtoint ptr %chip_select3.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %chip_select3.i, align 4
  %conv4.i = zext i8 %42 to i32
  %current_cs.i = getelementptr inbounds %struct.ti_qspi, ptr %31, i32 0, i32 19
  %43 = ptrtoint ptr %current_cs.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv4.i, ptr %current_cs.i, align 4
  br label %if.end26

if.end26:                                         ; preds = %ti_qspi_enable_memory_map.exit, %lor.lhs.false19.if.end26_crit_edge
  %44 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mem, align 4
  %opcode = getelementptr inbounds %struct.anon.74, ptr %op, i32 0, i32 3
  %46 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %opcode, align 4
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %data, align 4
  %50 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %addr, align 8
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %52 = ptrtoint ptr %dummy to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %dummy, align 8
  %master.i110 = getelementptr inbounds %struct.spi_device, ptr %45, i32 0, i32 2
  %54 = ptrtoint ptr %master.i110 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %master.i110, align 4
  %driver_data.i.i.i111 = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %driver_data.i.i.i111 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %driver_data.i.i.i111, align 4
  %58 = and i16 %47, 255
  %conv.i112 = zext i16 %58 to i32
  %59 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %49, label %if.end26.ti_qspi_setup_mmap_read.exit_crit_edge [
    i8 4, label %sw.bb.i
    i8 2, label %sw.bb2.i
  ]

if.end26.ti_qspi_setup_mmap_read.exit_crit_edge:  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_qspi_setup_mmap_read.exit

sw.bb.i:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i32 %conv.i112, 12288
  br label %ti_qspi_setup_mmap_read.exit

sw.bb2.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %or3.i = or i32 %conv.i112, 4096
  br label %ti_qspi_setup_mmap_read.exit

ti_qspi_setup_mmap_read.exit:                     ; preds = %sw.bb2.i, %sw.bb.i, %if.end26.ti_qspi_setup_mmap_read.exit_crit_edge
  %memval.0.i = phi i32 [ %or3.i, %sw.bb2.i ], [ %or.i, %sw.bb.i ], [ %conv.i112, %if.end26.ti_qspi_setup_mmap_read.exit_crit_edge ]
  %conv5.i = zext i8 %51 to i32
  %sub.i = shl nuw nsw i32 %conv5.i, 8
  %shl.i113 = add nsw i32 %sub.i, -256
  %conv6.i = zext i8 %53 to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 10
  %or8.i = or i32 %shl.i113, %shl7.i
  %or9.i = or i32 %or8.i, %memval.0.i
  %chip_select.i114 = getelementptr inbounds %struct.spi_device, ptr %45, i32 0, i32 4
  %60 = ptrtoint ptr %chip_select.i114 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %chip_select.i114, align 4
  %conv10.i = zext i8 %61 to i32
  %mul.i = shl nuw nsw i32 %conv10.i, 2
  %add.i115 = add nuw nsw i32 %mul.i, 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %62 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #9
  %base.i.i116 = getelementptr inbounds %struct.ti_qspi, ptr %57, i32 0, i32 3
  %63 = ptrtoint ptr %base.i.i116 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i.i116, align 4
  %add.ptr.i.i117 = getelementptr i8, ptr %64, i32 %add.i115
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i117, i32 %62) #9, !srcloc !164
  %rx_chan = getelementptr inbounds %struct.ti_qspi, ptr %5, i32 0, i32 14
  %65 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rx_chan, align 4
  %tobool33.not = icmp eq ptr %66, null
  br i1 %tobool33.not, label %if.else65, label %if.then34

if.then34:                                        ; preds = %ti_qspi_setup_mmap_read.exit
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sgt) #9
  %67 = ptrtoint ptr %sgt to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 -1 to ptr), ptr %sgt, align 4, !annotation !158
  %68 = getelementptr inbounds %struct.sg_table, ptr %sgt, i32 0, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %68, align 4, !annotation !158
  %70 = getelementptr inbounds %struct.sg_table, ptr %sgt, i32 0, i32 2
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %70, align 4, !annotation !158
  %buf = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %72 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %buf, align 4
  %74 = ptrtoint ptr %73 to i32
  %cmp36 = icmp ugt ptr %73, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp36, label %land.lhs.true, label %if.then34.if.else_crit_edge

if.then34.if.else_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.then34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %75 = load ptr, ptr @high_memory, align 4
  %cmp40 = icmp ult ptr %73, %75
  br i1 %cmp40, label %land.lhs.true42, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true42:                                  ; preds = %land.lhs.true
  %sub = add i32 %74, 1073741824
  %shr = lshr i32 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %76 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add45 = add i32 %76, %shr
  %call46 = tail call i32 @pfn_valid(i32 noundef %add45) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %land.lhs.true42.if.else_crit_edge, label %land.lhs.true48

land.lhs.true42.if.else_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true48:                                  ; preds = %land.lhs.true42
  %77 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mem, align 4
  %master50 = getelementptr inbounds %struct.spi_device, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %master50 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %master50, align 4
  %call51 = call i32 @spi_controller_dma_map_mem_op_data(ptr noundef %80, ptr noundef %op, ptr noundef nonnull %sgt) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then53, label %land.lhs.true48.if.else_crit_edge

land.lhs.true48.if.else_crit_edge:                ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then53:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #11
  %conv54 = and i64 %15, 4294967295
  %81 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %81)
  %.fca.0.load = load i32, ptr %sgt, align 4
  %.fca.0.insert = insertvalue [3 x i32] poison, i32 %.fca.0.load, 0
  %82 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %82)
  %.fca.1.load = load i32, ptr %68, align 4
  %.fca.1.insert = insertvalue [3 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %83 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %83)
  %.fca.2.load = load i32, ptr %70, align 4
  %.fca.2.insert = insertvalue [3 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %call55 = call fastcc i32 @ti_qspi_dma_xfer_sg(ptr noundef %5, [3 x i32] %.fca.2.insert, i64 noundef %conv54)
  %84 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mem, align 4
  %master57 = getelementptr inbounds %struct.spi_device, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %master57 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %master57, align 4
  call void @spi_controller_dma_unmap_mem_op_data(ptr noundef %87, ptr noundef %op, ptr noundef nonnull %sgt) #9
  br label %if.end64

if.else:                                          ; preds = %land.lhs.true48.if.else_crit_edge, %land.lhs.true42.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.then34.if.else_crit_edge
  %88 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp.not30.i = icmp eq i32 %89, 0
  br i1 %cmp.not30.i, label %if.else.if.end64_crit_edge, label %while.body.lr.ph.i

if.else.if.end64_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

while.body.lr.ph.i:                               ; preds = %if.else
  %90 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %buf, align 4
  %mmap_phys_base.i = getelementptr inbounds %struct.ti_qspi, ptr %5, i32 0, i32 11
  %92 = ptrtoint ptr %mmap_phys_base.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %mmap_phys_base.i, align 4
  %conv1.i = add i32 %93, %conv11
  %rx_bb_dma_addr.i = getelementptr inbounds %struct.ti_qspi, ptr %5, i32 0, i32 12
  %rx_bb_addr.i = getelementptr inbounds %struct.ti_qspi, ptr %5, i32 0, i32 13
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dma_src.033.i = phi i32 [ %conv1.i, %while.body.lr.ph.i ], [ %add7.i, %cleanup.i.while.body.i_crit_edge ]
  %readsize.addr.032.i = phi i32 [ %89, %while.body.lr.ph.i ], [ %sub.i118, %cleanup.i.while.body.i_crit_edge ]
  %to.addr.031.i = phi ptr [ %91, %while.body.lr.ph.i ], [ %add.ptr.i, %cleanup.i.while.body.i_crit_edge ]
  %94 = call i32 @llvm.umin.i32(i32 %readsize.addr.032.i, i32 65536) #9
  %95 = ptrtoint ptr %rx_bb_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rx_bb_dma_addr.i, align 4
  %call.i = call fastcc i32 @ti_qspi_dma_xfer(ptr noundef %5, i32 noundef %96, i32 noundef %dma_src.033.i, i32 noundef %94) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp5.not.i, label %cleanup.i, label %while.body.i.if.end64_crit_edge

while.body.i.if.end64_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

cleanup.i:                                        ; preds = %while.body.i
  %97 = ptrtoint ptr %rx_bb_addr.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rx_bb_addr.i, align 4
  %99 = call ptr @memcpy(ptr %to.addr.031.i, ptr %98, i32 %94)
  %sub.i118 = sub i32 %readsize.addr.032.i, %94
  %add7.i = add i32 %94, %dma_src.033.i
  %add.ptr.i = getelementptr i8, ptr %to.addr.031.i, i32 %94
  %cmp.not.i = icmp eq i32 %sub.i118, 0
  br i1 %cmp.not.i, label %cleanup.i.if.end64_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

cleanup.i.if.end64_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.end64:                                         ; preds = %cleanup.i.if.end64_crit_edge, %while.body.i.if.end64_crit_edge, %if.else.if.end64_crit_edge, %if.then53
  %ret.0 = phi i32 [ %call55, %if.then53 ], [ 0, %if.else.if.end64_crit_edge ], [ 0, %cleanup.i.if.end64_crit_edge ], [ %call.i, %while.body.i.if.end64_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sgt) #9
  br label %if.end70

if.else65:                                        ; preds = %ti_qspi_setup_mmap_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  %buf67 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %100 = ptrtoint ptr %buf67 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %buf67, align 4
  %mmap_base = getelementptr inbounds %struct.ti_qspi, ptr %5, i32 0, i32 4
  %102 = ptrtoint ptr %mmap_base to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mmap_base, align 4
  %add.ptr = getelementptr i8, ptr %103, i32 %conv11
  %104 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %nbytes, align 4
  tail call void @mmiocpy(ptr noundef %101, ptr noundef %add.ptr, i32 noundef %105) #9
  br label %if.end70

if.end70:                                         ; preds = %if.else65, %if.end64
  %ret.1 = phi i32 [ %ret.0, %if.end64 ], [ 0, %if.else65 ]
  call void @mutex_unlock(ptr noundef %list_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end70 ], [ -524, %lor.lhs.false2.cleanup_crit_edge ], [ -524, %lor.lhs.false.cleanup_crit_edge ], [ -524, %entry.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_dma_map_mem_op_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ti_qspi_dma_xfer_sg(ptr noundef %qspi, [3 x i32] %rx_sg.coerce, i64 noundef %from) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_sg.coerce.fca.1.extract = extractvalue [3 x i32] %rx_sg.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_sg.coerce.fca.1.extract)
  %cmp17.not = icmp eq i32 %rx_sg.coerce.fca.1.extract, 0
  br i1 %cmp17.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %mmap_phys_base = getelementptr inbounds %struct.ti_qspi, ptr %qspi, i32 0, i32 11
  %0 = ptrtoint ptr %mmap_phys_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mmap_phys_base, align 4
  %2 = trunc i64 %from to i32
  %conv1 = add i32 %1, %2
  %rx_sg.coerce.fca.0.extract = extractvalue [3 x i32] %rx_sg.coerce, 0
  %3 = inttoptr i32 %rx_sg.coerce.fca.0.extract to ptr
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %i.020 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %dma_src.019 = phi i32 [ %add3, %if.end.for.body_crit_edge ], [ %conv1, %for.body.preheader ]
  %sg.018 = phi ptr [ %call4, %if.end.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.018, i32 0, i32 3
  %4 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_address, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.018, i32 0, i32 4
  %6 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_length, align 4
  %call = tail call fastcc i32 @ti_qspi_dma_xfer(ptr noundef %qspi, i32 noundef %5, i32 noundef %dma_src.019, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  %add3 = add i32 %7, %dma_src.019
  %inc = add nuw i32 %i.020, 1
  %call4 = tail call ptr @sg_next(ptr noundef %sg.018) #9
  %exitcond.not = icmp eq i32 %inc, %rx_sg.coerce.fca.1.extract
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_controller_dma_unmap_mem_op_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ti_qspi_dma_xfer(ptr noundef %qspi, i32 noundef %dma_dst, i32 noundef %dma_src, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_chan = getelementptr inbounds %struct.ti_qspi, ptr %qspi, i32 0, i32 14
  %0 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_chan, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %lor.lhs.false.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_dma_memcpy.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %device_prep_dma_memcpy.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_prep_dma_memcpy.i, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.end_crit_edge, label %dmaengine_prep_dma_memcpy.exit

lor.lhs.false2.i.do.end_crit_edge:                ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

dmaengine_prep_dma_memcpy.exit:                   ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %5(ptr noundef nonnull %1, i32 noundef %dma_dst, i32 noundef %dma_src, i32 noundef %len, i32 noundef 3) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dmaengine_prep_dma_memcpy.exit.do.end_crit_edge, label %if.end

dmaengine_prep_dma_memcpy.exit.do.end_crit_edge:  ; preds = %dmaengine_prep_dma_memcpy.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %dmaengine_prep_dma_memcpy.exit.do.end_crit_edge, %lor.lhs.false2.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.ti_qspi, ptr %qspi, i32 0, i32 9
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.59) #12
  br label %cleanup

if.end:                                           ; preds = %dmaengine_prep_dma_memcpy.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ti_qspi_dma_callback, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %9 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %qspi, ptr %callback_param, align 4
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %tx_submit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_submit, align 4
  %call1 = tail call i32 %11(ptr noundef nonnull %call.i) #9
  %12 = ptrtoint ptr %qspi to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %qspi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %tobool3.not = icmp sgt i32 %call1, -1
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev8 = getelementptr inbounds %struct.ti_qspi, ptr %qspi, i32 0, i32 9
  %13 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.62, i32 noundef %call1) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 50
  %17 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %18(ptr noundef nonnull %1) #9
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %len) #9
  %call12 = tail call i32 @wait_for_completion_timeout(ptr noundef %qspi, i32 noundef %call2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp = icmp slt i32 %call12, 1
  br i1 %cmp, label %if.then13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %if.end9
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %20, i32 0, i32 47
  %21 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.then13.dmaengine_terminate_sync.exit_crit_edge, label %dmaengine_terminate_async.exit.i

if.then13.dmaengine_terminate_sync.exit_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_async.exit.i:                 ; preds = %if.then13
  %call.i.i = tail call i32 %22(ptr noundef nonnull %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i41 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i41, label %if.end.i42, label %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge

dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_sync.exit

if.end.i42:                                       ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.67, i32 noundef 1169) #9
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 48
  %25 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %26, null
  br i1 %tobool.not.i1.i, label %if.end.i42.dmaengine_terminate_sync.exit_crit_edge, label %if.then.i2.i

if.end.i42.dmaengine_terminate_sync.exit_crit_edge: ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_sync.exit

if.then.i2.i:                                     ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %26(ptr noundef nonnull %1) #9
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_sync.exit:                    ; preds = %if.then.i2.i, %if.end.i42.dmaengine_terminate_sync.exit_crit_edge, %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge, %if.then13.dmaengine_terminate_sync.exit_crit_edge
  %dev18 = getelementptr inbounds %struct.ti_qspi, ptr %qspi, i32 0, i32 9
  %27 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.65) #12
  br label %cleanup

cleanup:                                          ; preds = %dmaengine_terminate_sync.exit, %if.end9.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -5, %do.end7 ], [ -110, %dmaengine_terminate_sync.exit ], [ -5, %do.end ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_qspi_dma_callback(ptr noundef %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @complete(ptr noundef %param) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_qspi_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ctx_reg1.i = getelementptr inbounds %struct.ti_qspi, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ctx_reg1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctx_reg1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #9
  %base.i.i = getelementptr inbounds %struct.ti_qspi, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #9, !srcloc !164
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !36, !37, !39, !41, !42, !43, !45, !47, !48, !49, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !103, !104, !105, !107, !108, !110, !111, !113, !114, !115, !117, !119, !120, !121, !123, !124, !125, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !144, !145, !147}
!llvm.module.flags = !{!149, !150, !151, !152, !153, !154, !155, !156}
!llvm.ident = !{!157}

!0 = !{ptr @__initcall__kmod_spi_ti_qspi__262_939_ti_qspi_driver_init6, !1, !"__initcall__kmod_spi_ti_qspi__262_939_ti_qspi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-ti-qspi.c", i32 939, i32 1}
!2 = !{ptr @__exitcall_ti_qspi_driver_exit, !1, !"__exitcall_ti_qspi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author263, !4, !"__UNIQUE_ID_author263", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-ti-qspi.c", i32 941, i32 1}
!5 = !{ptr @__UNIQUE_ID_file264, !6, !"__UNIQUE_ID_file264", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-ti-qspi.c", i32 942, i32 1}
!7 = !{ptr @__UNIQUE_ID_license265, !6, !"__UNIQUE_ID_license265", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description266, !9, !"__UNIQUE_ID_description266", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-ti-qspi.c", i32 943, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias267, !11, !"__UNIQUE_ID_alias267", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-ti-qspi.c", i32 944, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-ti-qspi.c", i32 933, i32 11}
!14 = !{ptr @ti_qspi_driver, !15, !"ti_qspi_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-ti-qspi.c", i32 929, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-ti-qspi.c", i32 779, i32 32}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-ti-qspi.c", i32 787, i32 57}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/spi/spi-ti-qspi.c", i32 791, i32 4}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ti_qspi_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @ti_qspi_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-ti-qspi.c", i32 798, i32 20}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-ti-qspi.c", i32 802, i32 4}
!32 = !{ptr @ti_qspi_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ti_qspi_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @ti_qspi_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-ti-qspi.c", i32 816, i32 2}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/spi/spi-ti-qspi.c", i32 825, i32 32}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/spi/spi-ti-qspi.c", i32 837, i32 4}
!41 = !{ptr @ti_qspi_probe._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ti_qspi_probe._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-ti-qspi.c", i32 843, i32 40}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/spi/spi-ti-qspi.c", i32 846, i32 3}
!47 = !{ptr @ti_qspi_probe._entry.18, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ti_qspi_probe._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/spi/spi-ti-qspi.c", i32 853, i32 32}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/spi/spi-ti-qspi.c", i32 861, i32 3}
!53 = !{ptr @ti_qspi_probe._entry.22, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @ti_qspi_probe._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/spi/spi-ti-qspi.c", i32 872, i32 3}
!57 = !{ptr @ti_qspi_probe._entry.25, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @ti_qspi_probe._entry_ptr.27, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/spi/spi-ti-qspi.c", i32 886, i32 4}
!61 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ti_qspi_probe._entry.28, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @ti_qspi_probe._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/spi/spi-ti-qspi.c", i32 148, i32 3}
!66 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ti_qspi_setup.__UNIQUE_ID_ddebug239, !65, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/spi/spi-ti-qspi.c", i32 153, i32 3}
!71 = !{ptr @ti_qspi_setup._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @ti_qspi_setup._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/spi/spi-ti-qspi.c", i32 162, i32 3}
!75 = !{ptr @ti_qspi_setup.__UNIQUE_ID_ddebug240, !74, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/spi/spi-ti-qspi.c", i32 167, i32 3}
!78 = !{ptr @ti_qspi_setup.__UNIQUE_ID_ddebug241, !77, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/spi/spi-ti-qspi.c", i32 172, i32 2}
!81 = !{ptr @ti_qspi_setup.__UNIQUE_ID_ddebug242, !80, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/spi/spi-ti-qspi.c", i32 178, i32 3}
!84 = !{ptr @ti_qspi_setup._entry.39, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @ti_qspi_setup._entry_ptr.41, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/spi/spi-ti-qspi.c", i32 197, i32 3}
!88 = !{ptr @ti_qspi_setup._entry.42, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @ti_qspi_setup._entry_ptr.44, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/spi/spi-ti-qspi.c", i32 706, i32 4}
!92 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @ti_qspi_start_transfer_one.__UNIQUE_ID_ddebug261, !91, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/spi/spi-ti-qspi.c", i32 420, i32 4}
!96 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @qspi_transfer_msg.__UNIQUE_ID_ddebug249, !95, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/spi/spi-ti-qspi.c", i32 428, i32 4}
!100 = !{ptr @qspi_transfer_msg.__UNIQUE_ID_ddebug250, !99, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/spi/spi-ti-qspi.c", i32 263, i32 4}
!103 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @qspi_write_msg.__UNIQUE_ID_ddebug243, !102, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/spi/spi-ti-qspi.c", i32 290, i32 4}
!107 = !{ptr @qspi_write_msg.__UNIQUE_ID_ddebug244, !106, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/spi/spi-ti-qspi.c", i32 295, i32 4}
!110 = !{ptr @qspi_write_msg.__UNIQUE_ID_ddebug245, !109, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/spi/spi-ti-qspi.c", i32 303, i32 4}
!113 = !{ptr @qspi_write_msg._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @qspi_write_msg._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/spi/spi-ti-qspi.c", i32 222, i32 2}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/spi/spi-ti-qspi.c", i32 339, i32 3}
!119 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @qspi_read_msg.__UNIQUE_ID_ddebug246, !118, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/spi/spi-ti-qspi.c", i32 365, i32 4}
!123 = !{ptr @qspi_read_msg._entry, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @qspi_read_msg._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @ti_qspi_mem_ops, !126, !"ti_qspi_mem_ops", i1 false, i1 false}
!126 = !{!"../drivers/spi/spi-ti-qspi.c", i32 655, i32 44}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/spi/spi-ti-qspi.c", i32 454, i32 3}
!129 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @ti_qspi_dma_xfer._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @ti_qspi_dma_xfer._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/spi/spi-ti-qspi.c", i32 465, i32 3}
!134 = !{ptr @ti_qspi_dma_xfer._entry.61, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @ti_qspi_dma_xfer._entry_ptr.63, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/spi/spi-ti-qspi.c", i32 474, i32 3}
!138 = !{ptr @ti_qspi_dma_xfer._entry.64, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @ti_qspi_dma_xfer._entry_ptr.66, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!142 = !{ptr @init_completion.__key, !143, !"__key", i1 false, i1 false}
!143 = !{!"../include/linux/completion.h", i32 87, i32 2}
!144 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @ti_qspi_match, !146, !"ti_qspi_match", i1 false, i1 false}
!146 = !{!"../drivers/spi/spi-ti-qspi.c", i32 747, i32 34}
!147 = !{ptr @ti_qspi_pm_ops, !148, !"ti_qspi_pm_ops", i1 false, i1 false}
!148 = !{!"../drivers/spi/spi-ti-qspi.c", i32 925, i32 32}
!149 = !{i32 1, !"wchar_size", i32 2}
!150 = !{i32 1, !"min_enum_size", i32 4}
!151 = !{i32 8, !"branch-target-enforcement", i32 0}
!152 = !{i32 8, !"sign-return-address", i32 0}
!153 = !{i32 8, !"sign-return-address-all", i32 0}
!154 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!155 = !{i32 7, !"uwtable", i32 1}
!156 = !{i32 7, !"frame-pointer", i32 2}
!157 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!158 = !{!"auto-init"}
!159 = !{i8 0, i8 2}
!160 = !{i64 2148712511, i64 2148712516, i64 2148712529, i64 2148712573, i64 2148712607, i64 2148712628}
!161 = !{i64 4219423}
!162 = !{i64 2154651509}
!163 = !{i64 2154651891}
!164 = !{i64 4219005}
!165 = !{i64 2148230115}
!166 = !{i64 714938, i64 714963, i64 714985, i64 715001, i64 715013, i64 715033, i64 715057, i64 715073, i64 715085}
!167 = !{i64 2148230303}
!168 = !{i64 2154667852}
!169 = !{i64 2154667694}
!170 = !{i64 2154671913}
!171 = !{i64 2154672367}
!172 = !{i64 2154672821}
!173 = !{i64 2154673275}
!174 = !{i64 2154673708}
!175 = !{i64 4218808}
!176 = !{i64 2154676452}
!177 = !{i64 4218385}
!178 = !{i64 2154679320}
!179 = !{i64 2154668841}
!180 = !{i64 2154668683}
!181 = !{i64 2154686785}
!182 = !{i64 2154687332}
!183 = !{i64 2154687879}
!184 = !{i64 2154688426}
!185 = !{i64 2154688973}
!186 = !{i64 4218585}
!187 = !{i64 2154689474}
!188 = !{i64 2154689975}
