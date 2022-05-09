; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-at91-usart.c_pt.bc'
source_filename = "../drivers/spi/spi-at91-usart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.at91_usart_spi = type { ptr, ptr, ptr, ptr, ptr, %struct.completion, %struct.spinlock, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }

@__initcall__kmod_spi_at91_usart__240_676_at91_usart_spi_driver_init6 = internal global ptr @at91_usart_spi_driver_init, section ".initcall6.init", align 4
@at91_usart_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @at91_usart_spi_probe, ptr @at91_usart_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at91_usart_spi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_at91_usart_spi_driver_exit = internal global ptr @at91_usart_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [70 x i8] c"spi_at91_usart.description=Microchip AT91 USART SPI Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [60 x i8] c"spi_at91_usart.author=Radu Pirea <radu.pirea@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [47 x i8] c"spi_at91_usart.file=drivers/spi/spi-at91-usart\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [30 x i8] c"spi_at91_usart.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias245 = internal constant [45 x i8] c"spi_at91_usart.alias=platform:at91_usart_spi\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"at91_usart_spi\00", [17 x i8] zeroinitializer }, align 32
@at91_usart_spi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @at91_usart_spi_suspend, ptr @at91_usart_spi_resume, ptr @at91_usart_spi_suspend, ptr @at91_usart_spi_resume, ptr @at91_usart_spi_suspend, ptr @at91_usart_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at91_usart_spi_runtime_suspend, ptr @at91_usart_spi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"usart\00", [26 x i8] zeroinitializer }, align 32
@at91_usart_spi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&aus->lock\00", [21 x i8] zeroinitializer }, align 32
@at91_usart_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 584, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"AT91 USART SPI Controller version 0x%x at %pa (irq %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"at91_usart_spi_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/spi/spi-at91-usart.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@at91_usart_spi_probe._entry_ptr = internal global ptr @at91_usart_spi_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cs\00", [29 x i8] zeroinitializer }, align 32
@at91_usart_spi_setup.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.5, ptr @.str.11, i8 0, i8 98, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spi_at91_usart\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"at91_usart_spi_setup\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"setup: bpw %u mode 0x%x -> mr %d %08x\0A\00", [57 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@at91_usart_spi_transfer_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 424, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DMA transfer timeout\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"at91_usart_spi_transfer_one\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@at91_usart_spi_transfer_one._entry_ptr = internal global ptr @at91_usart_spi_transfer_one._entry, section ".printk_index", align 4
@at91_usart_spi_transfer_one._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.5, i32 437, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Overrun!\0A\00", [22 x i8] zeroinitializer }, align 32
@at91_usart_spi_transfer_one._entry_ptr.17 = internal global ptr @at91_usart_spi_transfer_one._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@at91_usart_spi_configure_dma.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.19, ptr @.str.5, ptr @.str.20, i8 0, i8 35, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"at91_usart_spi_configure_dma\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"DMA TX channel not available, SPI unable to use DMA\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@at91_usart_spi_configure_dma.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.19, ptr @.str.5, ptr @.str.22, i8 0, i8 39, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"DMA RX channel not available, SPI unable to use DMA\0A\00", [43 x i8] zeroinitializer }, align 32
@at91_usart_spi_configure_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.19, ptr @.str.5, i32 172, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to configure rx dma channel\0A\00", [60 x i8] zeroinitializer }, align 32
@at91_usart_spi_configure_dma._entry_ptr = internal global ptr @at91_usart_spi_configure_dma._entry, section ".printk_index", align 4
@at91_usart_spi_configure_dma._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.19, ptr @.str.5, i32 180, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to configure tx dma channel\0A\00", [60 x i8] zeroinitializer }, align 32
@at91_usart_spi_configure_dma._entry_ptr.26 = internal global ptr @at91_usart_spi_configure_dma._entry.24, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"at91_usart_spi_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 667, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 669, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [22 x i8] c"at91_usart_spi_pm_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 661, i32 32 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 513, i32 39 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 574, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 581, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 487, i32 55 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 391, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 424, i32 5 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 437, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 135, i32 39 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 142, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 148, i32 39 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 155, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 171, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private constant [32 x i8] c"../drivers/spi/spi-at91-usart.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 179, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 87, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_alias245, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_at91_usart_spi_driver_exit, ptr @__initcall__kmod_spi_at91_usart__240_676_at91_usart_spi_driver_init6, ptr @at91_usart_spi_configure_dma._entry, ptr @at91_usart_spi_configure_dma._entry.24, ptr @at91_usart_spi_configure_dma._entry_ptr, ptr @at91_usart_spi_configure_dma._entry_ptr.26, ptr @at91_usart_spi_driver_exit, ptr @at91_usart_spi_probe._entry, ptr @at91_usart_spi_probe._entry_ptr, ptr @at91_usart_spi_transfer_one._entry, ptr @at91_usart_spi_transfer_one._entry.15, ptr @at91_usart_spi_transfer_one._entry_ptr, ptr @at91_usart_spi_transfer_one._entry_ptr.17, ptr @at91_usart_spi_driver, ptr @.str, ptr @at91_usart_spi_pm_ops, ptr @.str.1, ptr @at91_usart_spi_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @init_completion.__key, ptr @.str.27], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_usart_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_usart_spi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_usart_spi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_usart_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_usart_spi_transfer_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_usart_spi_transfer_one._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_usart_spi_configure_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_usart_spi_configure_dma._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_usart_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @at91_usart_spi_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @at91_usart_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @at91_usart_spi_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_usart_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %call = tail call ptr @platform_get_resource(ptr noundef %add.ptr, i32 noundef 512, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup84_crit_edge, label %if.end

entry.cleanup84_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup84

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %add.ptr5 = getelementptr i8, ptr %3, i32 -16
  %call6 = tail call i32 @platform_get_irq(ptr noundef %add.ptr5, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end.cleanup84_crit_edge, label %if.end8

if.end.cleanup84_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup84

if.end8:                                          ; preds = %if.end
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %call11 = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.1) #9
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call11 to i32
  br label %cleanup84

if.end15:                                         ; preds = %if.end8
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 148, i1 noundef zeroext false) #9
  %tobool18.not = icmp eq ptr %call.i, null
  br i1 %tobool18.not, label %if.end15.cleanup84_crit_edge, label %if.end20

if.end15.cleanup84_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup84

if.end20:                                         ; preds = %if.end15
  %call.i155 = tail call ptr @devm_gpiod_get_array_optional(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef 3) #9
  %cmp.i.i.not = icmp ugt ptr %call.i155, inttoptr (i32 -4096 to ptr)
  %7 = ptrtoint ptr %call.i155 to i32
  br i1 %cmp.i.i.not, label %if.end20.if.then.i_crit_edge, label %if.end24

if.end20.if.then.i_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end24:                                         ; preds = %if.end20
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 39, ptr %mode_bits, align 8
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %of_node28 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %13 = ptrtoint ptr %of_node28 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %of_node28, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %14 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 128, ptr %bits_per_word_mask, align 8
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %15 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @at91_usart_spi_setup, ptr %setup, align 4
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 10
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 24, ptr %flags, align 4
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %17 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @at91_usart_spi_transfer_one, ptr %transfer_one, align 4
  %prepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 47
  %18 = ptrtoint ptr %prepare_message to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @at91_usart_spi_prepare_message, ptr %prepare_message, align 4
  %unprepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 48
  %19 = ptrtoint ptr %unprepare_message to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @at91_usart_spi_unprepare_message, ptr %unprepare_message, align 8
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 24
  %20 = ptrtoint ptr %can_dma to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @at91_usart_spi_can_dma, ptr %can_dma, align 4
  %cleanup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 23
  %21 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @at91_usart_spi_cleanup, ptr %cleanup, align 8
  %call29 = tail call i32 @clk_get_rate(ptr noundef %call11) #9
  %sub = add i32 %call29, 5
  %div = udiv i32 %sub, 6
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %22 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div, ptr %max_speed_hz, align 8
  %call30 = tail call i32 @clk_get_rate(ptr noundef %call11) #9
  %sub32 = add i32 %call30, 65535
  %div33154 = lshr i32 %sub32, 16
  %min_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 8
  %23 = ptrtoint ptr %min_speed_hz to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div33154, ptr %min_speed_hz, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i156 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %25 = ptrtoint ptr %driver_data.i.i156 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i156, align 4
  %dev36 = getelementptr inbounds %struct.at91_usart_spi, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %dev36 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev, ptr %dev36, align 4
  %call38 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call) #9
  %regs39 = getelementptr inbounds %struct.at91_usart_spi, ptr %26, i32 0, i32 2
  %28 = ptrtoint ptr %regs39 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call38, ptr %regs39, align 4
  %cmp.i157 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i157, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %call38 to i32
  br label %if.then.i

if.end45:                                         ; preds = %if.end24
  %irq46 = getelementptr inbounds %struct.at91_usart_spi, ptr %26, i32 0, i32 8
  %30 = ptrtoint ptr %irq46 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call6, ptr %irq46, align 4
  %clk47 = getelementptr inbounds %struct.at91_usart_spi, ptr %26, i32 0, i32 4
  %31 = ptrtoint ptr %clk47 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call11, ptr %clk47, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %32 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end45.dev_name.exit_crit_edge

if.end45.dev_name.exit_crit_edge:                 ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end45.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %35, %if.end.i ], [ %33, %if.end45.dev_name.exit_crit_edge ]
  %call.i158 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call6, ptr noundef nonnull @at91_usart_spi_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %tobool52.not = icmp eq i32 %call.i158, 0
  br i1 %tobool52.not, label %if.end54, label %dev_name.exit.if.then.i_crit_edge

dev_name.exit.if.then.i_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end54:                                         ; preds = %dev_name.exit
  %call55 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end54.if.then.i_crit_edge

if.end54.if.then.i_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end58:                                         ; preds = %if.end54
  %call59 = tail call i32 @clk_get_rate(ptr noundef %call11) #9
  %spi_clk = getelementptr inbounds %struct.at91_usart_spi, ptr %26, i32 0, i32 11
  %36 = ptrtoint ptr %spi_clk to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call59, ptr %spi_clk, align 4
  %37 = ptrtoint ptr %regs39 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs39, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -838855680) #9, !srcloc !79
  %39 = ptrtoint ptr %regs39 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs39, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 -1409286144) #9, !srcloc !79
  %41 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call, align 4
  %phybase = getelementptr inbounds %struct.at91_usart_spi, ptr %26, i32 0, i32 7
  %43 = ptrtoint ptr %phybase to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %phybase, align 4
  %44 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %parent, align 8
  %add.ptr64 = getelementptr i8, ptr %45, i32 -16
  %46 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr64, ptr %26, align 4
  %call65 = tail call fastcc i32 @at91_usart_spi_configure_dma(ptr noundef nonnull %call.i, ptr noundef %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %do.body, label %if.end58.at91_usart_fail_dma_crit_edge

if.end58.at91_usart_fail_dma_crit_edge:           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %at91_usart_fail_dma

do.body:                                          ; preds = %if.end58
  %lock = getelementptr inbounds %struct.at91_usart_spi, ptr %26, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @at91_usart_spi_probe.__key, i16 noundef signext 3) #9
  %xfer_completion = getelementptr inbounds %struct.at91_usart_spi, ptr %26, i32 0, i32 5
  %47 = ptrtoint ptr %xfer_completion to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %xfer_completion, align 4
  %wait.i = getelementptr inbounds %struct.at91_usart_spi, ptr %26, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @init_completion.__key) #9
  %call71 = tail call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %do.end77, label %at91_usart_fail_register_master

do.end77:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %regs39 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs39, align 4
  %add.ptr80 = getelementptr i8, ptr %49, i32 252
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr80) #9, !srcloc !80
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %51, ptr noundef nonnull %call, i32 noundef %call6) #12
  br label %cleanup84

at91_usart_fail_register_master:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @at91_usart_spi_release_dma(ptr noundef nonnull %call.i)
  br label %at91_usart_fail_dma

at91_usart_fail_dma:                              ; preds = %at91_usart_fail_register_master, %if.end58.at91_usart_fail_dma_crit_edge
  %ret.0 = phi i32 [ %call65, %if.end58.at91_usart_fail_dma_crit_edge ], [ %call71, %at91_usart_fail_register_master ]
  tail call void @clk_disable(ptr noundef %call11) #9
  tail call void @clk_unprepare(ptr noundef %call11) #9
  br label %if.then.i

if.then.i:                                        ; preds = %at91_usart_fail_dma, %if.end54.if.then.i_crit_edge, %dev_name.exit.if.then.i_crit_edge, %if.then42, %if.end20.if.then.i_crit_edge
  %ret.1.ph = phi i32 [ %ret.0, %at91_usart_fail_dma ], [ %call55, %if.end54.if.then.i_crit_edge ], [ %call.i158, %dev_name.exit.if.then.i_crit_edge ], [ %29, %if.then42 ], [ %7, %if.end20.if.then.i_crit_edge ]
  tail call void @put_device(ptr noundef nonnull %call.i) #9
  br label %cleanup84

cleanup84:                                        ; preds = %if.then.i, %do.end77, %if.end15.cleanup84_crit_edge, %if.then13, %if.end.cleanup84_crit_edge, %entry.cleanup84_crit_edge
  %retval.0 = phi i32 [ %6, %if.then13 ], [ 0, %do.end77 ], [ -22, %entry.cleanup84_crit_edge ], [ %call6, %if.end.cleanup84_crit_edge ], [ %ret.1.ph, %if.then.i ], [ -12, %if.end15.cleanup84_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_usart_spi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i3, align 4
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 61
  %4 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_rx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %5) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %dma_tx.i = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 60
  %6 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_tx.i, align 8
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %if.end.i.at91_usart_spi_release_dma.exit_crit_edge, label %if.then3.i

if.end.i.at91_usart_spi_release_dma.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at91_usart_spi_release_dma.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %7) #9
  br label %at91_usart_spi_release_dma.exit

at91_usart_spi_release_dma.exit:                  ; preds = %if.then3.i, %if.end.i.at91_usart_spi_release_dma.exit_crit_edge
  %clk = getelementptr inbounds %struct.at91_usart_spi, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #9
  tail call void @clk_unprepare(ptr noundef %9) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_usart_spi_setup(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 1
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %controller_state = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %4 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controller_state, align 8
  %regs = getelementptr inbounds %struct.at91_usart_spi, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !80
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 8
  %and = shl i32 %10, 15
  %11 = and i32 %and, 65536
  %and4 = shl i32 %10, 8
  %12 = and i32 %and4, 256
  %13 = and i32 %8, -8454401
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %and9.masked = or i32 %11, %14
  %and17 = or i32 %and9.masked, %12
  %and12 = shl i32 %10, 10
  %15 = and i32 %and12, 32768
  %mr.2 = or i32 %and17, %15
  %tobool19.not = icmp eq ptr %5, null
  br i1 %tobool19.not, label %if.then20, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then20:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 4) #13
  %tobool22.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool22.not, label %if.then20.cleanup_crit_edge, label %if.end24

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %controller_state to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %controller_state, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %entry.if.end26_crit_edge
  %ausd.0 = phi ptr [ %5, %entry.if.end26_crit_edge ], [ %call7.i.i, %if.end24 ]
  %18 = ptrtoint ptr %ausd.0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mr.2, ptr %ausd.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_usart_spi_setup.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_usart_spi_setup, %cleanup)) #9
          to label %if.then33 [label %cleanup], !srcloc !81

if.then33:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %19 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bits_per_word, align 1
  %conv = zext i8 %20 to i32
  %21 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode, align 8
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %23 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %chip_select, align 4
  %conv35 = zext i8 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_usart_spi_setup.__UNIQUE_ID_ddebug239, ptr noundef %spi, ptr noundef nonnull @.str.11, i32 noundef %conv, i32 noundef %22, i32 noundef %conv35, i32 noundef %mr.2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.end26, %if.then20.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then20.cleanup_crit_edge ], [ 0, %if.then33 ], [ 0, %if.end26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_usart_spi_transfer_one(ptr noundef %ctlr, ptr noundef %spi, ptr noundef %xfer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi_clk.i = getelementptr inbounds %struct.at91_usart_spi, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %spi_clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spi_clk.i, align 4
  %speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 12
  %4 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed_hz.i, align 4
  %add.i = add i32 %3, -1
  %sub.i = add i32 %add.i, %5
  %div.i = udiv i32 %sub.i, %5
  %6 = tail call i32 @llvm.bswap.i32(i32 %div.i) #9
  %regs.i = getelementptr inbounds %struct.at91_usart_spi, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #9, !srcloc !79
  %xfer_failed = getelementptr inbounds %struct.at91_usart_spi, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %xfer_failed to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %xfer_failed, align 4
  %current_transfer = getelementptr inbounds %struct.at91_usart_spi, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %current_transfer to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %xfer, ptr %current_transfer, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %current_tx_remaining_bytes = getelementptr inbounds %struct.at91_usart_spi, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %current_tx_remaining_bytes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %current_tx_remaining_bytes, align 4
  %14 = load i32, ptr %len, align 4
  %current_rx_remaining_bytes = getelementptr inbounds %struct.at91_usart_spi, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %current_rx_remaining_bytes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %current_rx_remaining_bytes, align 4
  %xfer_completion = getelementptr inbounds %struct.at91_usart_spi, ptr %1, i32 0, i32 5
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 61
  %dma_tx.i = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 60
  %rx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 6
  %nents.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 6, i32 1
  %tx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 5
  %nents5.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 5, i32 1
  %status.i = getelementptr inbounds %struct.at91_usart_spi, ptr %1, i32 0, i32 12
  br label %while.cond

while.condthread-pre-split:                       ; preds = %do.end48, %if.then.i14.i.i, %if.then3.i.i.while.condthread-pre-split_crit_edge, %if.end.i60.i.while.condthread-pre-split_crit_edge
  %ret.0.ph = phi i32 [ %ret.1, %do.end48 ], [ -12, %if.end.i60.i.while.condthread-pre-split_crit_edge ], [ -12, %if.then3.i.i.while.condthread-pre-split_crit_edge ], [ -12, %if.then.i14.i.i ]
  %16 = ptrtoint ptr %current_tx_remaining_bytes to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %current_tx_remaining_bytes, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.condthread-pre-split, %entry
  %17 = phi i32 [ %.pr, %while.condthread-pre-split ], [ %12, %entry ]
  %ret.0 = phi i32 [ %ret.0.ph, %while.condthread-pre-split ], [ 0, %entry ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %lor.lhs.false, label %while.cond.land.rhs_crit_edge

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

lor.lhs.false:                                    ; preds = %while.cond
  %18 = ptrtoint ptr %current_rx_remaining_bytes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %current_rx_remaining_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool4.not = icmp eq i32 %19, 0
  br i1 %tobool4.not, label %while.end, label %lor.lhs.false.land.rhs_crit_edge

lor.lhs.false.land.rhs_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false.land.rhs_crit_edge, %while.cond.land.rhs_crit_edge
  %20 = ptrtoint ptr %xfer_failed to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %xfer_failed, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool6.not = icmp eq i8 %21, 0
  br i1 %tobool6.not, label %while.body, label %land.rhs.do.end58_crit_edge

land.rhs.do.end58_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end58

while.body:                                       ; preds = %land.rhs
  %22 = ptrtoint ptr %xfer_completion to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %xfer_completion, align 4
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i.i, align 4
  %use_dma.i = getelementptr inbounds %struct.at91_usart_spi, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %use_dma.i, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %while.body.if.else_crit_edge, label %at91_usart_spi_can_dma.exit

while.body.if.else_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

at91_usart_spi_can_dma.exit:                      ; preds = %while.body
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %28)
  %cmp.i = icmp ugt i32 %28, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool8.not = icmp eq i32 %ret.0, 0
  %or.cond = select i1 %cmp.i, i1 %tobool8.not, i1 false
  br i1 %or.cond, label %if.then, label %at91_usart_spi_can_dma.exit.if.else_crit_edge

at91_usart_spi_can_dma.exit.if.else_crit_edge:    ; preds = %at91_usart_spi_can_dma.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %at91_usart_spi_can_dma.exit
  %29 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dma_rx.i, align 4
  %31 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma_tx.i, align 8
  %regs.i88 = getelementptr inbounds %struct.at91_usart_spi, ptr %24, i32 0, i32 2
  %33 = ptrtoint ptr %regs.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i88, align 4
  %add.ptr.i89 = getelementptr i8, ptr %34, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 16777216) #9, !srcloc !79
  %35 = ptrtoint ptr %rx_sg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_sg.i, align 4
  %37 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nents.i, align 4
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.then.at91_usart_spi_err_dma.i_crit_edge, label %lor.lhs.false.i.i

if.then.at91_usart_spi_err_dma.i_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %at91_usart_spi_err_dma.i

lor.lhs.false.i.i:                                ; preds = %if.then
  %39 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %30, align 4
  %tobool1.not.i.i = icmp eq ptr %40, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.at91_usart_spi_err_dma.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.at91_usart_spi_err_dma.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at91_usart_spi_err_dma.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %40, i32 0, i32 39
  %41 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %42, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.at91_usart_spi_err_dma.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i

lor.lhs.false2.i.i.at91_usart_spi_err_dma.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at91_usart_spi_err_dma.i

dmaengine_prep_slave_sg.exit.i:                   ; preds = %lor.lhs.false2.i.i
  %call.i.i = tail call ptr %42(ptr noundef nonnull %30, ptr noundef %36, i32 noundef %38, i32 noundef 2, i32 noundef 3, ptr noundef null) #9
  %tobool.not.i90 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i90, label %dmaengine_prep_slave_sg.exit.i.at91_usart_spi_err_dma.i_crit_edge, label %if.end.i

dmaengine_prep_slave_sg.exit.i.at91_usart_spi_err_dma.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at91_usart_spi_err_dma.i

if.end.i:                                         ; preds = %dmaengine_prep_slave_sg.exit.i
  %43 = ptrtoint ptr %tx_sg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_sg.i, align 4
  %45 = ptrtoint ptr %nents5.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nents5.i, align 4
  %tobool.not.i49.i = icmp eq ptr %32, null
  br i1 %tobool.not.i49.i, label %if.end.i.at91_usart_spi_err_dma.i_crit_edge, label %lor.lhs.false.i51.i

if.end.i.at91_usart_spi_err_dma.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at91_usart_spi_err_dma.i

lor.lhs.false.i51.i:                              ; preds = %if.end.i
  %47 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %32, align 4
  %tobool1.not.i50.i = icmp eq ptr %48, null
  br i1 %tobool1.not.i50.i, label %lor.lhs.false.i51.i.at91_usart_spi_err_dma.i_crit_edge, label %lor.lhs.false2.i54.i

lor.lhs.false.i51.i.at91_usart_spi_err_dma.i_crit_edge: ; preds = %lor.lhs.false.i51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at91_usart_spi_err_dma.i

lor.lhs.false2.i54.i:                             ; preds = %lor.lhs.false.i51.i
  %device_prep_slave_sg.i52.i = getelementptr inbounds %struct.dma_device, ptr %48, i32 0, i32 39
  %49 = ptrtoint ptr %device_prep_slave_sg.i52.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device_prep_slave_sg.i52.i, align 4
  %tobool4.not.i53.i = icmp eq ptr %50, null
  br i1 %tobool4.not.i53.i, label %lor.lhs.false2.i54.i.at91_usart_spi_err_dma.i_crit_edge, label %dmaengine_prep_slave_sg.exit58.i

lor.lhs.false2.i54.i.at91_usart_spi_err_dma.i_crit_edge: ; preds = %lor.lhs.false2.i54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at91_usart_spi_err_dma.i

dmaengine_prep_slave_sg.exit58.i:                 ; preds = %lor.lhs.false2.i54.i
  %call.i55.i = tail call ptr %50(ptr noundef nonnull %32, ptr noundef %44, i32 noundef %46, i32 noundef 1, i32 noundef 3, ptr noundef null) #9
  %tobool7.not.i = icmp eq ptr %call.i55.i, null
  br i1 %tobool7.not.i, label %dmaengine_prep_slave_sg.exit58.i.at91_usart_spi_err_dma.i_crit_edge, label %if.end9.i

dmaengine_prep_slave_sg.exit58.i.at91_usart_spi_err_dma.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at91_usart_spi_err_dma.i

if.end9.i:                                        ; preds = %dmaengine_prep_slave_sg.exit58.i
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 6
  %51 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @dma_callback, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 8
  %52 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %ctlr, ptr %callback_param.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 4
  %53 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tx_submit.i, align 4
  %call10.i = tail call i32 %54(ptr noundef nonnull %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10.i)
  %tobool12.not.i = icmp sgt i32 %call10.i, -1
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end9.i.at91_usart_spi_err_dma.i_crit_edge

if.end9.i.at91_usart_spi_err_dma.i_crit_edge:     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at91_usart_spi_err_dma.i

if.end14.i:                                       ; preds = %if.end9.i
  %tx_submit15.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i55.i, i32 0, i32 4
  %55 = ptrtoint ptr %tx_submit15.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tx_submit15.i, align 4
  %call16.i = tail call i32 %56(ptr noundef nonnull %call.i55.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i)
  %tobool18.not.i = icmp sgt i32 %call16.i, -1
  br i1 %tobool18.not.i, label %if.end, label %if.end14.i.at91_usart_spi_err_dma.i_crit_edge

if.end14.i.at91_usart_spi_err_dma.i_crit_edge:    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at91_usart_spi_err_dma.i

at91_usart_spi_err_dma.i:                         ; preds = %if.end14.i.at91_usart_spi_err_dma.i_crit_edge, %if.end9.i.at91_usart_spi_err_dma.i_crit_edge, %dmaengine_prep_slave_sg.exit58.i.at91_usart_spi_err_dma.i_crit_edge, %lor.lhs.false2.i54.i.at91_usart_spi_err_dma.i_crit_edge, %lor.lhs.false.i51.i.at91_usart_spi_err_dma.i_crit_edge, %if.end.i.at91_usart_spi_err_dma.i_crit_edge, %dmaengine_prep_slave_sg.exit.i.at91_usart_spi_err_dma.i_crit_edge, %lor.lhs.false2.i.i.at91_usart_spi_err_dma.i_crit_edge, %lor.lhs.false.i.i.at91_usart_spi_err_dma.i_crit_edge, %if.then.at91_usart_spi_err_dma.i_crit_edge
  %57 = ptrtoint ptr %regs.i88 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i88, align 4
  %add.ptr24.i = getelementptr i8, ptr %58, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 16777216) #9, !srcloc !79
  %59 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dma_rx.i, align 4
  %tobool.not.i59.i = icmp eq ptr %60, null
  br i1 %tobool.not.i59.i, label %at91_usart_spi_err_dma.i.if.end.i60.i_crit_edge, label %if.then.i.i

at91_usart_spi_err_dma.i.if.end.i60.i_crit_edge:  ; preds = %at91_usart_spi_err_dma.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i60.i

if.then.i.i:                                      ; preds = %at91_usart_spi_err_dma.i
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %device_terminate_all.i.i.i = getelementptr inbounds %struct.dma_device, ptr %62, i32 0, i32 47
  %63 = ptrtoint ptr %device_terminate_all.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device_terminate_all.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %64, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.if.end.i60.i_crit_edge, label %if.then.i.i.i

if.then.i.i.if.end.i60.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i60.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call i32 %64(ptr noundef nonnull %60) #9
  br label %if.end.i60.i

if.end.i60.i:                                     ; preds = %if.then.i.i.i, %if.then.i.i.if.end.i60.i_crit_edge, %at91_usart_spi_err_dma.i.if.end.i60.i_crit_edge
  %65 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dma_tx.i, align 8
  %tobool2.not.i.i = icmp eq ptr %66, null
  br i1 %tobool2.not.i.i, label %if.end.i60.i.while.condthread-pre-split_crit_edge, label %if.then3.i.i

if.end.i60.i.while.condthread-pre-split_crit_edge: ; preds = %if.end.i60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.condthread-pre-split

if.then3.i.i:                                     ; preds = %if.end.i60.i
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %device_terminate_all.i11.i.i = getelementptr inbounds %struct.dma_device, ptr %68, i32 0, i32 47
  %69 = ptrtoint ptr %device_terminate_all.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %device_terminate_all.i11.i.i, align 4
  %tobool.not.i12.i.i = icmp eq ptr %70, null
  br i1 %tobool.not.i12.i.i, label %if.then3.i.i.while.condthread-pre-split_crit_edge, label %if.then.i14.i.i

if.then3.i.i.while.condthread-pre-split_crit_edge: ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.condthread-pre-split

if.then.i14.i.i:                                  ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i13.i.i = tail call i32 %70(ptr noundef nonnull %66) #9
  br label %while.condthread-pre-split

if.end:                                           ; preds = %if.end14.i
  %71 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %30, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %72, i32 0, i32 50
  %73 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %74(ptr noundef nonnull %30) #9
  %75 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %32, align 4
  %device_issue_pending22.i = getelementptr inbounds %struct.dma_device, ptr %76, i32 0, i32 50
  %77 = ptrtoint ptr %device_issue_pending22.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %device_issue_pending22.i, align 4
  tail call void %78(ptr noundef nonnull %32) #9
  %call1.i = tail call i32 @wait_for_completion_timeout(ptr noundef %xfer_completion, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp eq i32 %call1.i, 0
  br i1 %cmp, label %do.end, label %if.end.do.end48.sink.split_crit_edge, !prof !83

if.end.do.end48.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48.sink.split

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 423, i32 noundef 9, ptr noundef null) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.12) #12
  br label %cleanup

if.else:                                          ; preds = %at91_usart_spi_can_dma.exit.if.else_crit_edge, %while.body.if.else_crit_edge
  %79 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %80, i32 20
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92) #9, !srcloc !80
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #9
  %83 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %status.i, align 4
  %84 = ptrtoint ptr %current_tx_remaining_bytes to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %current_tx_remaining_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i93 = icmp eq i32 %85, 0
  %and.i.i = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool4.not.i = icmp eq i32 %and.i.i, 0
  %or.cond104 = select i1 %tobool.not.i93, i1 true, i1 %tobool4.not.i
  br i1 %or.cond104, label %if.else.do.end48_crit_edge, label %if.then5.i

if.else.do.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

if.then5.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %current_transfer to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %current_transfer, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %87, i32 0, i32 2
  %90 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len1.i, align 4
  %sub.i95 = sub i32 %91, %85
  %arrayidx.i = getelementptr i8, ptr %89, i32 %sub.i95
  %92 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.i, align 1
  %94 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs.i, align 4
  %add.ptr.i97 = getelementptr i8, ptr %95, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i97, i8 %93) #9, !srcloc !84
  %96 = ptrtoint ptr %current_tx_remaining_bytes to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %current_tx_remaining_bytes, align 4
  %dec.i = add i32 %97, -1
  br label %do.end48.sink.split

do.end48.sink.split:                              ; preds = %if.then5.i, %if.end.do.end48.sink.split_crit_edge
  %dec.i.sink = phi i32 [ %dec.i, %if.then5.i ], [ 0, %if.end.do.end48.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ %ret.0, %if.then5.i ], [ 0, %if.end.do.end48.sink.split_crit_edge ]
  %98 = ptrtoint ptr %current_tx_remaining_bytes to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %dec.i.sink, ptr %current_tx_remaining_bytes, align 4
  br label %do.end48

do.end48:                                         ; preds = %do.end48.sink.split, %if.else.do.end48_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.else.do.end48_crit_edge ], [ %ret.1.ph, %do.end48.sink.split ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !85
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !86
  br label %while.condthread-pre-split

while.end:                                        ; preds = %lor.lhs.false
  %99 = ptrtoint ptr %xfer_failed to i32
  call void @__asan_load1_noabort(i32 %99)
  %.pr102 = load i8, ptr %xfer_failed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr102)
  %tobool54.not = icmp eq i8 %.pr102, 0
  br i1 %tobool54.not, label %while.end.cleanup_crit_edge, label %while.end.do.end58_crit_edge

while.end.do.end58_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end58

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end58:                                         ; preds = %while.end.do.end58_crit_edge, %land.rhs.do.end58_crit_edge
  %dev59 = getelementptr inbounds %struct.at91_usart_spi, ptr %1, i32 0, i32 3
  %100 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev59, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.16) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end58, %while.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end58 ], [ 0, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_usart_spi_prepare_message(ptr nocapture noundef readonly %ctlr, ptr nocapture noundef readonly %message) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 1
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi1, align 4
  %controller_state = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controller_state, align 8
  %regs = getelementptr inbounds %struct.at91_usart_spi, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 1342177280) #9, !srcloc !79
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr3 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 553648128) #9, !srcloc !79
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %12) #9, !srcloc !79
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_usart_spi_unprepare_message(ptr nocapture noundef readonly %ctlr, ptr nocapture noundef readnone %message) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs = getelementptr inbounds %struct.at91_usart_spi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 -1409286144) #9, !srcloc !79
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 553648128) #9, !srcloc !79
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @at91_usart_spi_can_dma(ptr nocapture noundef readonly %ctrl, ptr nocapture noundef readnone %spi, ptr nocapture noundef readonly %xfer) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %use_dma = getelementptr inbounds %struct.at91_usart_spi, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_dma, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %5)
  %cmp = icmp ugt i32 %5, 15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %6 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp, %land.rhs ]
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_usart_spi_cleanup(ptr nocapture noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_state = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %0 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_state, align 8
  store ptr null, ptr %controller_state, align 8
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_usart_spi_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.at91_usart_spi, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %regs.i = getelementptr inbounds %struct.at91_usart_spi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !80
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  %status.i = getelementptr inbounds %struct.at91_usart_spi, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %status.i, align 4
  %and.i = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %xfer_failed = getelementptr inbounds %struct.at91_usart_spi, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %xfer_failed to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %xfer_failed, align 4
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 553648128) #9, !srcloc !79
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i22 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22)
  %tobool5.not = icmp eq i32 %and.i22, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %current_rx_remaining_bytes.i = getelementptr inbounds %struct.at91_usart_spi, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %current_rx_remaining_bytes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %current_rx_remaining_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.then6.cleanup_crit_edge, label %if.end.i

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %current_transfer.i = getelementptr inbounds %struct.at91_usart_spi, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %current_transfer.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %current_transfer.i, align 4
  %rx_buf3.i = getelementptr inbounds %struct.spi_transfer, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %rx_buf3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_buf3.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len1.i, align 4
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %19, i32 24
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i24) #9, !srcloc !87
  %sub.i = sub i32 %17, %11
  %arrayidx.i = getelementptr i8, ptr %15, i32 %sub.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx.i, align 1
  %22 = ptrtoint ptr %current_rx_remaining_bytes.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %current_rx_remaining_bytes.i, align 4
  %dec.i = add i32 %23, -1
  store i32 %dec.i, ptr %current_rx_remaining_bytes.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then6.cleanup_crit_edge ], [ 1, %if.end.i ], [ 0, %if.end.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret i32 %retval.0
}

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at91_usart_spi_configure_dma(ptr noundef %ctlr, ptr nocapture noundef %aus) unnamed_addr #2 align 64 {
entry:
  %slave_config = alloca %struct.dma_slave_config, align 4
  %mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %slave_config) #9
  %0 = call ptr @memset(ptr %slave_config, i32 255, i32 48)
  %1 = ptrtoint ptr %aus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %aus, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %phybase2 = getelementptr inbounds %struct.at91_usart_spi, ptr %aus, i32 0, i32 7
  %3 = ptrtoint ptr %phybase2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phybase2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #9
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask) #9
  %call = call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull @.str.18) #9
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 60
  %6 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %dma_tx, align 8
  %tobool.not.i = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  br i1 %cmp.i, label %if.then7, label %do.body

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call to i32
  br label %cleanup

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_usart_spi_configure_dma.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_usart_spi_configure_dma, %cleanup)) #9
          to label %if.then14 [label %cleanup], !srcloc !81

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_usart_spi_configure_dma.__UNIQUE_ID_ddebug237, ptr noundef %dev1, ptr noundef nonnull @.str.20) #9
  br label %cleanup

if.end16:                                         ; preds = %entry
  %call17 = call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull @.str.21) #9
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 61
  %8 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call17, ptr %dma_rx, align 4
  %tobool.not.i109 = icmp eq ptr %call17, null
  %cmp.i110 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  %spec.select.i111 = or i1 %tobool.not.i109, %cmp.i110
  br i1 %spec.select.i111, label %if.then20, label %if.end45

if.then20:                                        ; preds = %if.end16
  br i1 %cmp.i110, label %if.then23, label %do.body27

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call17 to i32
  br label %at91_usart_spi_error

do.body27:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_usart_spi_configure_dma.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_usart_spi_configure_dma, %at91_usart_spi_error)) #9
          to label %if.then41 [label %at91_usart_spi_error], !srcloc !81

if.then41:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_usart_spi_configure_dma.__UNIQUE_ID_ddebug238, ptr noundef %dev1, ptr noundef nonnull @.str.22) #9
  br label %at91_usart_spi_error

if.end45:                                         ; preds = %if.end16
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 4
  %10 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %dst_addr_width, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 3
  %11 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %src_addr_width, align 4
  %add = add i32 %4, 28
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 2
  %12 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %dst_addr, align 4
  %add46 = add i32 %4, 24
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 1
  %13 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add46, ptr %src_addr, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 5
  %14 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %src_maxburst, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 6
  %15 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %dst_maxburst, align 4
  %device_fc = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 9
  %16 = ptrtoint ptr %device_fc to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %device_fc, align 4
  %17 = ptrtoint ptr %slave_config to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %slave_config, align 4
  %18 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call17, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i113 = icmp eq ptr %21, null
  br i1 %tobool.not.i113, label %if.end45.do.end53_crit_edge, label %dmaengine_slave_config.exit

if.end45.do.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end53

dmaengine_slave_config.exit:                      ; preds = %if.end45
  %call.i = call i32 %21(ptr noundef nonnull %call17, ptr noundef nonnull %slave_config) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool49.not = icmp eq i32 %call.i, 0
  br i1 %tobool49.not, label %if.end55, label %dmaengine_slave_config.exit.do.end53_crit_edge

dmaengine_slave_config.exit.do.end53_crit_edge:   ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end53

do.end53:                                         ; preds = %dmaengine_slave_config.exit.do.end53_crit_edge, %if.end45.do.end53_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %ctlr, ptr noundef nonnull @.str.23) #12
  br label %at91_usart_spi_error

if.end55:                                         ; preds = %dmaengine_slave_config.exit
  %22 = ptrtoint ptr %slave_config to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %slave_config, align 4
  %23 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_tx, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %device_config.i115 = getelementptr inbounds %struct.dma_device, ptr %26, i32 0, i32 44
  %27 = ptrtoint ptr %device_config.i115 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device_config.i115, align 4
  %tobool.not.i116 = icmp eq ptr %28, null
  br i1 %tobool.not.i116, label %if.end55.do.end63_crit_edge, label %dmaengine_slave_config.exit120

if.end55.do.end63_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end63

dmaengine_slave_config.exit120:                   ; preds = %if.end55
  %call.i117 = call i32 %28(ptr noundef %24, ptr noundef nonnull %slave_config) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %tobool59.not = icmp eq i32 %call.i117, 0
  br i1 %tobool59.not, label %if.end65, label %dmaengine_slave_config.exit120.do.end63_crit_edge

dmaengine_slave_config.exit120.do.end63_crit_edge: ; preds = %dmaengine_slave_config.exit120
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end63

do.end63:                                         ; preds = %dmaengine_slave_config.exit120.do.end63_crit_edge, %if.end55.do.end63_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %ctlr, ptr noundef nonnull @.str.25) #12
  br label %at91_usart_spi_error

if.end65:                                         ; preds = %dmaengine_slave_config.exit120
  call void @__sanitizer_cov_trace_pc() #11
  %use_dma = getelementptr inbounds %struct.at91_usart_spi, ptr %aus, i32 0, i32 14
  %29 = ptrtoint ptr %use_dma to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %use_dma, align 1
  br label %cleanup

at91_usart_spi_error:                             ; preds = %do.end63, %do.end53, %if.then41, %do.body27, %if.then23
  %err.0 = phi i32 [ %9, %if.then23 ], [ -22, %do.end53 ], [ -22, %do.end63 ], [ -16, %if.then41 ], [ -16, %do.body27 ]
  %30 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma_tx, align 8
  %tobool.not.i121 = icmp eq ptr %31, null
  %cmp.i122 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  %spec.select.i123 = or i1 %tobool.not.i121, %cmp.i122
  br i1 %spec.select.i123, label %at91_usart_spi_error.if.end70_crit_edge, label %if.then68

at91_usart_spi_error.if.end70_crit_edge:          ; preds = %at91_usart_spi_error
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then68:                                        ; preds = %at91_usart_spi_error
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_release_channel(ptr noundef nonnull %31) #9
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %at91_usart_spi_error.if.end70_crit_edge
  %32 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma_rx, align 4
  %tobool.not.i124 = icmp eq ptr %33, null
  %cmp.i125 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  %spec.select.i126 = or i1 %tobool.not.i124, %cmp.i125
  br i1 %spec.select.i126, label %if.end70.if.end75_crit_edge, label %if.then73

if.end70.if.end75_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_release_channel(ptr noundef nonnull %33) #9
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.end70.if.end75_crit_edge
  %34 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %dma_tx, align 8
  %35 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %dma_rx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.end65, %if.then14, %do.body, %if.then7
  %retval.0 = phi i32 [ 0, %if.end65 ], [ %7, %if.then7 ], [ %err.0, %if.end75 ], [ -16, %if.then14 ], [ -16, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %slave_config) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_usart_spi_release_dma(ptr nocapture noundef readonly %ctlr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 61
  %0 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_rx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 60
  %2 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_tx, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %3) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_array_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_callback(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs = getelementptr inbounds %struct.at91_usart_spi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #9, !srcloc !79
  %current_rx_remaining_bytes = getelementptr inbounds %struct.at91_usart_spi, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %current_rx_remaining_bytes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %current_rx_remaining_bytes, align 4
  %xfer_completion = getelementptr inbounds %struct.at91_usart_spi, ptr %1, i32 0, i32 5
  tail call void @complete(ptr noundef %xfer_completion) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_usart_spi_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @spi_controller_suspend(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

pm_runtime_suspended.exit.cleanup_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %pm_runtime_suspended.exit.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i, align 4
  %clk.i = getelementptr inbounds %struct.at91_usart_spi, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %10) #9
  tail call void @clk_unprepare(ptr noundef %10) #9
  %call2.i = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %pm_runtime_suspended.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_usart_spi_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.if.end5_crit_edge, label %pm_runtime_suspended.exit.if.then_crit_edge

pm_runtime_suspended.exit.if.then_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

pm_runtime_suspended.exit.if.end5_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %pm_runtime_suspended.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %call2.i = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #9
  %clk.i = getelementptr inbounds %struct.at91_usart_spi, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end5_crit_edge, label %if.then3.i.i

if.end.i.i.if.end5_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %8) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.i.if.end5_crit_edge, %pm_runtime_suspended.exit.if.end5_crit_edge
  %regs.i = getelementptr inbounds %struct.at91_usart_spi, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -838855680) #9, !srcloc !79
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 -1409286144) #9, !srcloc !79
  %call6 = tail call i32 @spi_controller_resume(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_usart_spi_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.at91_usart_spi, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  %call2 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_usart_spi_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #9
  %clk = getelementptr inbounds %struct.at91_usart_spi, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %5) #9
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !54, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_spi_at91_usart__240_676_at91_usart_spi_driver_init6, !1, !"__initcall__kmod_spi_at91_usart__240_676_at91_usart_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-at91-usart.c", i32 676, i32 1}
!2 = !{ptr @__exitcall_at91_usart_spi_driver_exit, !1, !"__exitcall_at91_usart_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description241, !4, !"__UNIQUE_ID_description241", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-at91-usart.c", i32 678, i32 1}
!5 = !{ptr @__UNIQUE_ID_author242, !6, !"__UNIQUE_ID_author242", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-at91-usart.c", i32 679, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-at91-usart.c", i32 680, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias245, !11, !"__UNIQUE_ID_alias245", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-at91-usart.c", i32 681, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-at91-usart.c", i32 669, i32 11}
!14 = !{ptr @at91_usart_spi_driver, !15, !"at91_usart_spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-at91-usart.c", i32 667, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-at91-usart.c", i32 513, i32 39}
!18 = !{ptr @at91_usart_spi_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-at91-usart.c", i32 574, i32 2}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/spi/spi-at91-usart.c", i32 581, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @at91_usart_spi_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @at91_usart_spi_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/spi/spi-at91-usart.c", i32 487, i32 55}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/spi/spi-at91-usart.c", i32 391, i32 2}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @at91_usart_spi_setup.__UNIQUE_ID_ddebug239, !32, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/spi/spi-at91-usart.c", i32 424, i32 5}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @at91_usart_spi_transfer_one._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @at91_usart_spi_transfer_one._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/spi/spi-at91-usart.c", i32 437, i32 3}
!44 = !{ptr @at91_usart_spi_transfer_one._entry.15, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @at91_usart_spi_transfer_one._entry_ptr.17, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/spi/spi-at91-usart.c", i32 135, i32 39}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/spi/spi-at91-usart.c", i32 142, i32 3}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @at91_usart_spi_configure_dma.__UNIQUE_ID_ddebug237, !49, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/spi/spi-at91-usart.c", i32 148, i32 39}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/spi/spi-at91-usart.c", i32 155, i32 3}
!56 = !{ptr @at91_usart_spi_configure_dma.__UNIQUE_ID_ddebug238, !55, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/spi/spi-at91-usart.c", i32 171, i32 3}
!59 = !{ptr @at91_usart_spi_configure_dma._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @at91_usart_spi_configure_dma._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/spi/spi-at91-usart.c", i32 179, i32 3}
!63 = !{ptr @at91_usart_spi_configure_dma._entry.24, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @at91_usart_spi_configure_dma._entry_ptr.26, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @init_completion.__key, !66, !"__key", i1 false, i1 false}
!66 = !{!"../include/linux/completion.h", i32 87, i32 2}
!67 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @at91_usart_spi_pm_ops, !69, !"at91_usart_spi_pm_ops", i1 false, i1 false}
!69 = !{!"../drivers/spi/spi-at91-usart.c", i32 661, i32 32}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 6321495}
!80 = !{i64 6321913}
!81 = !{i64 2148736905, i64 2148736910, i64 2148736923, i64 2148736967, i64 2148737001, i64 2148737022}
!82 = !{i8 0, i8 2}
!83 = !{!"branch_weights", i32 1, i32 2000}
!84 = !{i64 6321298}
!85 = !{i64 2154531907}
!86 = !{i64 2154531749}
!87 = !{i64 6321693}
