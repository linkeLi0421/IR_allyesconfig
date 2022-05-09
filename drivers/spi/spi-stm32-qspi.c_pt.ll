; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-stm32-qspi.c_pt.bc'
source_filename = "../drivers/spi/spi-stm32-qspi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spi_controller_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.stm32_qspi = type { ptr, ptr, i32, ptr, ptr, i32, ptr, i32, [2 x %struct.stm32_qspi_flash], %struct.completion, %struct.completion, i32, ptr, ptr, %struct.completion, i32, i32, i32, %struct.mutex }
%struct.stm32_qspi_flash = type { i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_mem_op = type { %struct.anon.74, %struct.anon.75, %struct.anon.76, %struct.anon.77 }
%struct.anon.74 = type { i8, i8, i8, i16 }
%struct.anon.75 = type { i8, i8, i8, i64 }
%struct.anon.76 = type { i8, i8, i8 }
%struct.anon.77 = type { i8, i8, i32, i32, %union.anon.78 }
%union.anon.78 = type { ptr }
%struct.spi_mem_dirmap_desc = type { ptr, %struct.spi_mem_dirmap_info, i32, ptr }
%struct.spi_mem_dirmap_info = type { %struct.spi_mem_op, i64, i64 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_spi_stm32_qspi__281_890_stm32_qspi_driver_init6 = internal global ptr @stm32_qspi_driver_init, section ".initcall6.init", align 4
@stm32_qspi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_qspi_probe, ptr @stm32_qspi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_qspi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_qspi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_qspi_driver_exit = internal global ptr @stm32_qspi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author282 = internal constant [59 x i8] c"spi_stm32_qspi.author=Ludovic Barre <ludovic.barre@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description283 = internal constant [68 x i8] c"spi_stm32_qspi.description=STMicroelectronics STM32 quad spi driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file284 = internal constant [47 x i8] c"spi_stm32_qspi.file=drivers/spi/spi-stm32-qspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license285 = internal constant [30 x i8] c"spi_stm32_qspi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stm32-qspi\00", [21 x i8] zeroinitializer }, align 32
@stm32_qspi_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f469-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stm32_qspi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_qspi_suspend, ptr @stm32_qspi_resume, ptr @stm32_qspi_suspend, ptr @stm32_qspi_resume, ptr @stm32_qspi_suspend, ptr @stm32_qspi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_qspi_runtime_suspend, ptr @stm32_qspi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qspi\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qspi_mm\00", [24 x i8] zeroinitializer }, align 32
@stm32_qspi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 721, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stm32_qspi_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/spi/spi-stm32-qspi.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_qspi_probe._entry_ptr = internal global ptr @stm32_qspi_probe._entry, section ".printk_index", align 4
@stm32_qspi_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 738, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can not enable the clock\0A\00", [38 x i8] zeroinitializer }, align 32
@stm32_qspi_probe._entry_ptr.10 = internal global ptr @stm32_qspi_probe._entry.8, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@stm32_qspi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&qspi->lock\00", [20 x i8] zeroinitializer }, align 32
@stm32_qspi_mem_ops = internal constant { %struct.spi_controller_mem_ops, [60 x i8] } { %struct.spi_controller_mem_ops { ptr null, ptr null, ptr @stm32_qspi_exec_op, ptr null, ptr @stm32_qspi_dirmap_create, ptr null, ptr @stm32_qspi_dirmap_read, ptr null, ptr @stm32_qspi_poll_status }, [60 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@stm32_qspi_dma_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 636, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dma rx config failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stm32_qspi_dma_setup\00", [43 x i8] zeroinitializer }, align 32
@stm32_qspi_dma_setup._entry_ptr = internal global ptr @stm32_qspi_dma_setup._entry, section ".printk_index", align 4
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@stm32_qspi_dma_setup._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.5, i32 648, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dma tx config failed\0A\00", [42 x i8] zeroinitializer }, align 32
@stm32_qspi_dma_setup._entry_ptr.19 = internal global ptr @stm32_qspi_dma_setup._entry.17, section ".printk_index", align 4
@stm32_qspi_send.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.5, ptr @.str.22, i8 0, i8 93, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spi_stm32_qspi\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stm32_qspi_send\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"cmd:%#x mode:%d.%d.%d.%d addr:%#llx len:%#x\0A\00", [51 x i8] zeroinitializer }, align 32
@stm32_qspi_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.5, i32 449, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s err:%d err_poll_status:%d abort timeout:%d\0A\00", [49 x i8] zeroinitializer }, align 32
@stm32_qspi_send._entry_ptr = internal global ptr @stm32_qspi_send._entry, section ".printk_index", align 4
@stm32_qspi_tx_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 189, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fifo timeout (len:%d stat:%#x)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stm32_qspi_tx_poll\00", [45 x i8] zeroinitializer }, align 32
@stm32_qspi_tx_poll._entry_ptr = internal global ptr @stm32_qspi_tx_poll._entry, section ".printk_index", align 4
@stm32_qspi_dirmap_read.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.26, ptr @.str.5, ptr @.str.27, i8 0, i8 -119, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32_qspi_dirmap_read\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s len = 0x%zx offs = 0x%llx buf = 0x%p\0A\00", [55 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"stm32_qspi_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 881, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 885, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"stm32_qspi_match\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 875, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"stm32_qspi_pm_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 869, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 698, i32 59 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 705, i32 59 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 721, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 738, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 759, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"stm32_qspi_mem_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 675, i32 44 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 87, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 628, i32 41 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 636, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 642, i32 41 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 648, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 370, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 448, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 188, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [32 x i8] c"../drivers/spi/spi-stm32-qspi.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 551, i32 2 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author282, ptr @__UNIQUE_ID_description283, ptr @__UNIQUE_ID_file284, ptr @__UNIQUE_ID_license285, ptr @__exitcall_stm32_qspi_driver_exit, ptr @__initcall__kmod_spi_stm32_qspi__281_890_stm32_qspi_driver_init6, ptr @stm32_qspi_dma_setup._entry, ptr @stm32_qspi_dma_setup._entry.17, ptr @stm32_qspi_dma_setup._entry_ptr, ptr @stm32_qspi_dma_setup._entry_ptr.19, ptr @stm32_qspi_driver_exit, ptr @stm32_qspi_probe._entry, ptr @stm32_qspi_probe._entry.8, ptr @stm32_qspi_probe._entry_ptr, ptr @stm32_qspi_probe._entry_ptr.10, ptr @stm32_qspi_send._entry, ptr @stm32_qspi_send._entry_ptr, ptr @stm32_qspi_tx_poll._entry, ptr @stm32_qspi_tx_poll._entry_ptr, ptr @stm32_qspi_driver, ptr @.str, ptr @stm32_qspi_match, ptr @stm32_qspi_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @stm32_qspi_probe.__key, ptr @.str.11, ptr @stm32_qspi_mem_ops, ptr @init_completion.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_qspi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_qspi_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_qspi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_qspi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_qspi_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_qspi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_qspi_mem_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_qspi_dma_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_qspi_dma_setup._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_qspi_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_qspi_tx_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_qspi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_qspi_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_qspi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_qspi_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_qspi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__devm_spi_alloc_controller(ptr noundef %dev1, i32 noundef 332, i1 noundef zeroext false) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ctrl3 = getelementptr inbounds %struct.stm32_qspi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ctrl3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %ctrl3, align 4
  %call4 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.1) #9
  %call5 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call4) #9
  %io_base = getelementptr inbounds %struct.stm32_qspi, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %io_base, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %5 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call4, align 4
  %phys_base = getelementptr inbounds %struct.stm32_qspi, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %phys_base to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %phys_base, align 4
  %call12 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.2) #9
  %call13 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call12) #9
  %mm_base = getelementptr inbounds %struct.stm32_qspi, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %mm_base to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call13, ptr %mm_base, align 4
  %cmp.i173 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %end.i = getelementptr inbounds %struct.resource, ptr %call12, i32 0, i32 1
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i, align 4
  %12 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call12, align 4
  %sub.i = add i32 %11, 1
  %add.i = sub i32 %sub.i, %13
  %mm_size = getelementptr inbounds %struct.stm32_qspi, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %mm_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add.i, ptr %mm_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %add.i)
  %cmp = icmp ugt i32 %add.i, 268435456
  br i1 %cmp, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %call24 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end23.cleanup_crit_edge, label %if.end27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end27.dev_name.exit_crit_edge

if.end27.dev_name.exit_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end27.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.end.i ], [ %16, %if.end27.dev_name.exit_crit_edge ]
  %call.i174 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call24, ptr noundef nonnull @stm32_qspi_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174)
  %tobool30.not = icmp eq i32 %call.i174, 0
  br i1 %tobool30.not, label %if.end32, label %do.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #12
  br label %cleanup

if.end32:                                         ; preds = %dev_name.exit
  %data_completion = getelementptr inbounds %struct.stm32_qspi, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %data_completion to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %data_completion, align 4
  %wait.i = getelementptr inbounds %struct.stm32_qspi, ptr %1, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #9
  %match_completion = getelementptr inbounds %struct.stm32_qspi, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %match_completion to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %match_completion, align 4
  %wait.i175 = getelementptr inbounds %struct.stm32_qspi, ptr %1, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i175, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #9
  %call33 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #9
  %clk = getelementptr inbounds %struct.stm32_qspi, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call33, ptr %clk, align 4
  %cmp.i176 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %call33 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end32
  %call41 = tail call i32 @clk_get_rate(ptr noundef %call33) #9
  %clk_rate = getelementptr inbounds %struct.stm32_qspi, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call41, ptr %clk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool43.not = icmp eq i32 %call41, 0
  br i1 %tobool43.not, label %if.end39.cleanup_crit_edge, label %if.end45

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end45:                                         ; preds = %if.end39
  %24 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk, align 4
  %call47 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end53, label %do.end52

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.end53:                                         ; preds = %if.end45
  %call.i177 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %cmp.i178 = icmp ugt ptr %call.i177, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i178, label %if.then56, label %if.else

if.then56:                                        ; preds = %if.end53
  %cmp58 = icmp eq ptr %call.i177, inttoptr (i32 -517 to ptr)
  br i1 %cmp58, label %if.then56.err_clk_disable_crit_edge, label %if.then56.if.end63_crit_edge

if.then56.if.end63_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then56.err_clk_disable_crit_edge:              ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_clk_disable

if.else:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %call61 = tail call i32 @reset_control_assert(ptr noundef %call.i177) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 429496) #9
  %call62 = tail call i32 @reset_control_deassert(ptr noundef %call.i177) #9
  br label %if.end63

if.end63:                                         ; preds = %if.else, %if.then56.if.end63_crit_edge
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev1, ptr %1, align 4
  %driver_data.i.i179 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %28 = ptrtoint ptr %driver_data.i.i179 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %1, ptr %driver_data.i.i179, align 4
  %call65 = tail call fastcc i32 @stm32_qspi_dma_setup(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %do.body69, label %if.end63.err_dma_free_crit_edge

if.end63.err_dma_free_crit_edge:                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_dma_free

do.body69:                                        ; preds = %if.end63
  %lock = getelementptr inbounds %struct.stm32_qspi, ptr %1, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @stm32_qspi_probe.__key) #9
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %29 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3840, ptr %mode_bits, align 8
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %30 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @stm32_qspi_setup, ptr %setup, align 4
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %31 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %bus_num, align 8
  %mem_ops = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 53
  %32 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @stm32_qspi_mem_ops, ptr %mem_ops, align 4
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %33 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 2, ptr %num_chipselect, align 2
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %34 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_node, align 8
  %of_node73 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %36 = ptrtoint ptr %of_node73 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %of_node73, align 8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef -1) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #9
  %call.i180 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #9
  tail call void @pm_runtime_enable(ptr noundef %dev1) #9
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !82
  %call75 = tail call i32 @spi_register_controller(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %err_pm_runtime_free

if.end78:                                         ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #11
  %call.i181 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %38 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store volatile i64 %call.i181, ptr %last_busy.i, align 8
  %call.i182 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 13) #9
  br label %cleanup

err_pm_runtime_free:                              ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %call.i183 = tail call i32 @__pm_runtime_resume(ptr noundef %40, i32 noundef 4) #9
  %41 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %io_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #9, !srcloc !83
  tail call void @mutex_destroy(ptr noundef %lock) #9
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %44)
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  tail call void @__pm_runtime_disable(ptr noundef %46, i1 noundef zeroext true) #9
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %call.i184 = tail call i32 @__pm_runtime_set_status(ptr noundef %48, i32 noundef 2) #9
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %50, i1 noundef zeroext false) #9
  br label %err_dma_free

err_dma_free:                                     ; preds = %err_pm_runtime_free, %if.end63.err_dma_free_crit_edge
  %ret.0 = phi i32 [ %call65, %if.end63.err_dma_free_crit_edge ], [ %call75, %err_pm_runtime_free ]
  tail call fastcc void @stm32_qspi_dma_free(ptr noundef %1)
  br label %err_clk_disable

err_clk_disable:                                  ; preds = %err_dma_free, %if.then56.err_clk_disable_crit_edge
  %ret.1 = phi i32 [ -517, %if.then56.err_clk_disable_crit_edge ], [ %ret.0, %err_dma_free ]
  %51 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %52) #9
  tail call void @clk_unprepare(ptr noundef %52) #9
  br label %cleanup

cleanup:                                          ; preds = %err_clk_disable, %if.end78, %do.end52, %if.end39.cleanup_crit_edge, %if.then36, %do.end, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then16, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then8 ], [ %9, %if.then16 ], [ %call.i174, %do.end ], [ %22, %if.then36 ], [ %call47, %do.end52 ], [ %ret.1, %err_clk_disable ], [ 0, %if.end78 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ], [ %call24, %if.end23.cleanup_crit_edge ], [ -22, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_qspi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #9
  %ctrl = getelementptr inbounds %struct.stm32_qspi, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl, align 4
  tail call void @spi_unregister_controller(ptr noundef %5) #9
  %io_base = getelementptr inbounds %struct.stm32_qspi, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #9, !srcloc !83
  %dma_chtx.i = getelementptr inbounds %struct.stm32_qspi, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %dma_chtx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_chtx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %9) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %dma_chrx.i = getelementptr inbounds %struct.stm32_qspi, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %dma_chrx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_chrx.i, align 4
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %if.end.i.stm32_qspi_dma_free.exit_crit_edge, label %if.then3.i

if.end.i.stm32_qspi_dma_free.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_qspi_dma_free.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %11) #9
  br label %stm32_qspi_dma_free.exit

stm32_qspi_dma_free.exit:                         ; preds = %if.then3.i, %if.end.i.stm32_qspi_dma_free.exit_crit_edge
  %lock = getelementptr inbounds %struct.stm32_qspi, ptr %1, i32 0, i32 18
  tail call void @mutex_destroy(ptr noundef %lock) #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !84
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !85
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %stm32_qspi_dma_free.exit.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

stm32_qspi_dma_free.exit.pm_runtime_put_noidle.exit_crit_edge: ; preds = %stm32_qspi_dma_free.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %stm32_qspi_dma_free.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !86
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %stm32_qspi_dma_free.exit.pm_runtime_put_noidle.exit_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void @__pm_runtime_disable(ptr noundef %16, i1 noundef zeroext true) #9
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i16 = tail call i32 @__pm_runtime_set_status(ptr noundef %18, i32 noundef 2) #9
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %20, i1 noundef zeroext false) #9
  %clk = getelementptr inbounds %struct.stm32_qspi, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %22) #9
  tail call void @clk_unprepare(ptr noundef %22) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_qspi_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.stm32_qspi, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !87
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #9, !srcloc !87
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %and = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and6 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and8 = and i32 %3, -524289
  %8 = tail call i32 @llvm.bswap.i32(i32 %and8)
  %9 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #9, !srcloc !83
  %match_completion = getelementptr inbounds %struct.stm32_qspi, ptr %dev_id, i32 0, i32 10
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %and11 = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end.cleanup_crit_edge, label %if.then13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %and14 = and i32 %3, -196609
  %11 = tail call i32 @llvm.bswap.i32(i32 %and14)
  %12 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #9, !srcloc !83
  %data_completion = getelementptr inbounds %struct.stm32_qspi, ptr %dev_id, i32 0, i32 9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then13, %if.then
  %data_completion.sink = phi ptr [ %data_completion, %if.then13 ], [ %match_completion, %if.then ]
  tail call void @complete(ptr noundef %data_completion.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_qspi_dma_setup(ptr noundef %qspi) unnamed_addr #2 align 64 {
entry:
  %dma_cfg = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dma_cfg) #9
  %0 = ptrtoint ptr %qspi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qspi, align 4
  %2 = call ptr @memset(ptr %dma_cfg, i32 0, i32 48)
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %dma_cfg, i32 0, i32 3
  %3 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %src_addr_width, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %dma_cfg, i32 0, i32 4
  %4 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %dst_addr_width, align 4
  %phys_base = getelementptr inbounds %struct.stm32_qspi, ptr %qspi, i32 0, i32 2
  %5 = ptrtoint ptr %phys_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phys_base, align 4
  %add = add i32 %6, 32
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %dma_cfg, i32 0, i32 1
  %7 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %src_addr, align 4
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %dma_cfg, i32 0, i32 2
  %8 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %dst_addr, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %dma_cfg, i32 0, i32 5
  %9 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %src_maxburst, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %dma_cfg, i32 0, i32 6
  %10 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %dst_maxburst, align 4
  %call = tail call ptr @dma_request_chan(ptr noundef %1, ptr noundef nonnull @.str.13) #9
  %dma_chrx = getelementptr inbounds %struct.stm32_qspi, ptr %qspi, i32 0, i32 13
  %11 = ptrtoint ptr %dma_chrx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %dma_chrx, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = ptrtoint ptr %call to i32
  %13 = ptrtoint ptr %dma_chrx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %dma_chrx, align 4
  %cmp = icmp eq ptr %call, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then.out_crit_edge, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.else:                                          ; preds = %entry
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 44
  %16 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.else.do.end_crit_edge, label %dmaengine_slave_config.exit

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

dmaengine_slave_config.exit:                      ; preds = %if.else
  %call.i = call i32 %17(ptr noundef %call, ptr noundef nonnull %dma_cfg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %dmaengine_slave_config.exit.if.end16_crit_edge, label %dmaengine_slave_config.exit.do.end_crit_edge

dmaengine_slave_config.exit.do.end_crit_edge:     ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

dmaengine_slave_config.exit.if.end16_crit_edge:   ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

do.end:                                           ; preds = %dmaengine_slave_config.exit.do.end_crit_edge, %if.else.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.14) #12
  %18 = ptrtoint ptr %dma_chrx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_chrx, align 4
  call void @dma_release_channel(ptr noundef %19) #9
  %20 = ptrtoint ptr %dma_chrx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %dma_chrx, align 4
  br label %if.end16

if.end16:                                         ; preds = %do.end, %dmaengine_slave_config.exit.if.end16_crit_edge, %if.then.if.end16_crit_edge
  %ret.0 = phi i32 [ %12, %if.then.if.end16_crit_edge ], [ 0, %do.end ], [ 0, %dmaengine_slave_config.exit.if.end16_crit_edge ]
  %call17 = call ptr @dma_request_chan(ptr noundef %1, ptr noundef nonnull @.str.16) #9
  %dma_chtx = getelementptr inbounds %struct.stm32_qspi, ptr %qspi, i32 0, i32 12
  %21 = ptrtoint ptr %dma_chtx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call17, ptr %dma_chtx, align 4
  %cmp.i61 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i61, label %if.then20, label %if.else24

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %call17 to i32
  br label %out.sink.split

if.else24:                                        ; preds = %if.end16
  %23 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call17, align 4
  %device_config.i62 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %device_config.i62 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device_config.i62, align 4
  %tobool.not.i63 = icmp eq ptr %26, null
  br i1 %tobool.not.i63, label %if.else24.do.end31_crit_edge, label %dmaengine_slave_config.exit67

if.else24.do.end31_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

dmaengine_slave_config.exit67:                    ; preds = %if.else24
  %call.i64 = call i32 %26(ptr noundef %call17, ptr noundef nonnull %dma_cfg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool27.not = icmp eq i32 %call.i64, 0
  br i1 %tobool27.not, label %dmaengine_slave_config.exit67.out_crit_edge, label %dmaengine_slave_config.exit67.do.end31_crit_edge

dmaengine_slave_config.exit67.do.end31_crit_edge: ; preds = %dmaengine_slave_config.exit67
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

dmaengine_slave_config.exit67.out_crit_edge:      ; preds = %dmaengine_slave_config.exit67
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end31:                                         ; preds = %dmaengine_slave_config.exit67.do.end31_crit_edge, %if.else24.do.end31_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.18) #12
  %27 = ptrtoint ptr %dma_chtx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma_chtx, align 4
  call void @dma_release_channel(ptr noundef %28) #9
  br label %out.sink.split

out.sink.split:                                   ; preds = %do.end31, %if.then20
  %ret.1.ph = phi i32 [ %ret.0, %do.end31 ], [ %22, %if.then20 ]
  %29 = ptrtoint ptr %dma_chtx to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %dma_chtx, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %dmaengine_slave_config.exit67.out_crit_edge, %if.then.out_crit_edge
  %ret.1 = phi i32 [ -517, %if.then.out_crit_edge ], [ %ret.0, %dmaengine_slave_config.exit67.out_crit_edge ], [ %ret.1.ph, %out.sink.split ]
  %dma_completion = getelementptr inbounds %struct.stm32_qspi, ptr %qspi, i32 0, i32 14
  %30 = ptrtoint ptr %dma_completion to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %dma_completion, align 4
  %wait.i = getelementptr inbounds %struct.stm32_qspi, ptr %qspi, i32 0, i32 14, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %ret.1)
  %cmp36.not = icmp eq i32 %ret.1, -517
  %31 = select i1 %cmp36.not, i32 -517, i32 0
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_cfg) #9
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_qspi_setup(ptr nocapture noundef readonly %spi) #2 align 64 {
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
  %busy = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %busy, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %6 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end3
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !84
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !85
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then5.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !86
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %clk_rate = getelementptr inbounds %struct.stm32_qspi, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %clk_rate, align 4
  %15 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_speed_hz, align 8
  %add = add i32 %14, -1
  %sub = add i32 %add, %16
  %div = udiv i32 %sub, %16
  %sub10 = add i32 %div, -1
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %17 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %chip_select, align 4
  %idxprom = zext i8 %18 to i32
  %arrayidx = getelementptr %struct.stm32_qspi, ptr %3, i32 0, i32 8, i32 %idxprom
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %idxprom, ptr %arrayidx, align 4
  %presc13 = getelementptr %struct.stm32_qspi, ptr %3, i32 0, i32 8, i32 %idxprom, i32 1
  %20 = ptrtoint ptr %presc13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub10, ptr %presc13, align 4
  %lock = getelementptr inbounds %struct.stm32_qspi, ptr %3, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %cr_reg = getelementptr inbounds %struct.stm32_qspi, ptr %3, i32 0, i32 15
  %21 = ptrtoint ptr %cr_reg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4195089, ptr %cr_reg, align 4
  %io_base = getelementptr inbounds %struct.stm32_qspi, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 285425664) #9, !srcloc !83
  %dcr_reg = getelementptr inbounds %struct.stm32_qspi, ptr %3, i32 0, i32 16
  %24 = ptrtoint ptr %dcr_reg to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2031616, ptr %dcr_reg, align 4
  %25 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_base, align 4
  %add.ptr17 = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 7936) #9, !srcloc !83
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %call.i47 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 12, i32 22
  %29 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store volatile i64 %call.i47, ptr %last_busy.i, align 8
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %call.i48 = tail call i32 @__pm_runtime_suspend(ptr noundef %31, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end11.i.i.i.i, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i, %if.then5.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !84
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #9, !srcloc !85
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !86
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_qspi_dma_free(ptr nocapture noundef readonly %qspi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_chtx = getelementptr inbounds %struct.stm32_qspi, ptr %qspi, i32 0, i32 12
  %0 = ptrtoint ptr %dma_chtx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_chtx, align 4
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
  %dma_chrx = getelementptr inbounds %struct.stm32_qspi, ptr %qspi, i32 0, i32 13
  %2 = ptrtoint ptr %dma_chrx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_chrx, align 4
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_qspi_exec_op(ptr nocapture noundef readonly %mem, ptr noundef %op) #2 align 64 {
entry:
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !84
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !85
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !86
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.stm32_qspi, ptr %5, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp3 = icmp eq i32 %12, 1
  br i1 %cmp3, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %nbytes = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  br label %if.end7

if.end7:                                          ; preds = %if.else, %land.lhs.true.if.end7_crit_edge
  %.sink = phi i32 [ 0, %if.else ], [ 67108864, %land.lhs.true.if.end7_crit_edge ]
  %fmode6 = getelementptr inbounds %struct.stm32_qspi, ptr %5, i32 0, i32 11
  %15 = ptrtoint ptr %fmode6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %fmode6, align 4
  %call8 = tail call fastcc i32 @stm32_qspi_send(ptr noundef %mem, ptr noundef %op)
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  %call.i26 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 12, i32 22
  %18 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store volatile i64 %call.i26, ptr %last_busy.i, align 8
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %call.i27 = tail call i32 @__pm_runtime_suspend(ptr noundef %20, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end11.i.i.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_qspi_dirmap_create(ptr nocapture noundef readonly %desc) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %master = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %dir = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp eq i32 %9, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mm_base = getelementptr inbounds %struct.stm32_qspi, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %mm_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mm_base, align 4
  %tobool.not = icmp eq ptr %11, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp5 = icmp eq i32 %9, 1
  %or.cond = select i1 %tobool.not, i1 %cmp5, i1 false
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mm_size = getelementptr inbounds %struct.stm32_qspi, ptr %7, i32 0, i32 5
  %12 = ptrtoint ptr %mm_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mm_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  %. = select i1 %tobool8.not, i32 -95, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %., %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_qspi_dirmap_read(ptr nocapture noundef readonly %desc, i64 noundef %offs, i32 noundef %len, ptr noundef %buf) #2 align 64 {
entry:
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %master = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #9
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !84
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !85
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !86
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.stm32_qspi, ptr %7, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %info = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %op, ptr %info, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_qspi_dirmap_read.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_qspi_dirmap_read, %do.end)) #9
          to label %if.then7 [label %do.end], !srcloc !89

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_qspi_dirmap_read.__UNIQUE_ID_ddebug280, ptr noundef %15, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i32 noundef %len, i64 noundef %offs, ptr noundef %buf) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end
  %nbytes = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %nbytes to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %len, ptr %nbytes, align 4
  %offset = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %offset, align 8
  %add = add i64 %18, %offs
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %add, ptr %val, align 8
  %buf12 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %20 = ptrtoint ptr %buf12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %buf, ptr %buf12, align 8
  %21 = trunc i64 %add to i32
  %22 = add i32 %len, 1
  %conv19 = add i32 %22, %21
  %mm_size = getelementptr inbounds %struct.stm32_qspi, ptr %7, i32 0, i32 5
  %23 = ptrtoint ptr %mm_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mm_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv19, i32 %24)
  %cmp20 = icmp ult i32 %conv19, %24
  br i1 %cmp20, label %land.lhs.true, label %do.end.if.else_crit_edge

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %do.end
  %buswidth = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %buswidth to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %buswidth, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool24.not = icmp eq i8 %26, 0
  br i1 %tobool24.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end.if.else_crit_edge
  br label %if.end27

if.end27:                                         ; preds = %if.else, %land.lhs.true.if.end27_crit_edge
  %.sink = phi i32 [ 67108864, %if.else ], [ 201326592, %land.lhs.true.if.end27_crit_edge ]
  %fmode26 = getelementptr inbounds %struct.stm32_qspi, ptr %7, i32 0, i32 11
  %27 = ptrtoint ptr %fmode26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink, ptr %fmode26, align 4
  %28 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc, align 8
  %call29 = call fastcc i32 @stm32_qspi_send(ptr noundef %29, ptr noundef nonnull %op)
  call void @mutex_unlock(ptr noundef %lock) #9
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %7, align 4
  %call.i56 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 12, i32 22
  %32 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store volatile i64 %call.i56, ptr %last_busy.i, align 8
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %7, align 4
  %call.i57 = call i32 @__pm_runtime_suspend(ptr noundef %34, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool34.not = icmp eq i32 %call29, 0
  %spec.select = select i1 %tobool34.not, i32 %len, i32 %call29
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end11.i.i.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end27 ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_qspi_poll_status(ptr noundef %mem, ptr noundef %op, i16 noundef zeroext %mask, i16 noundef zeroext %match, i32 noundef %initial_delay_us, i32 noundef %polling_rate_us, i32 noundef %timeout_ms) #2 align 64 {
entry:
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
  %call1 = tail call zeroext i1 @spi_mem_supports_op(ptr noundef %mem, ptr noundef %op) #9
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !84
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !85
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then3.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !86
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.stm32_qspi, ptr %5, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %conv = zext i16 %mask to i32
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %io_base = getelementptr inbounds %struct.stm32_qspi, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #9, !srcloc !83
  %conv6 = zext i16 %match to i32
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv6)
  %15 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base, align 4
  %add.ptr8 = getelementptr i8, ptr %16, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %14) #9, !srcloc !83
  %fmode = getelementptr inbounds %struct.stm32_qspi, ptr %5, i32 0, i32 11
  %17 = ptrtoint ptr %fmode to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 134217728, ptr %fmode, align 4
  %status_timeout = getelementptr inbounds %struct.stm32_qspi, ptr %5, i32 0, i32 17
  %18 = ptrtoint ptr %status_timeout to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %timeout_ms, ptr %status_timeout, align 4
  %call9 = tail call fastcc i32 @stm32_qspi_send(ptr noundef %mem, ptr noundef %op)
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %call.i29 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 12, i32 22
  %21 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store volatile i64 %call.i29, ptr %last_busy.i, align 8
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 4
  %call.i30 = tail call i32 @__pm_runtime_suspend(ptr noundef %23, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end11.i.i.i.i, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end5 ], [ -95, %entry.cleanup_crit_edge ], [ %call.i, %if.then3.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_qspi_send(ptr nocapture noundef readonly %mem, ptr noundef %op) unnamed_addr #2 align 64 {
entry:
  %sgt.i.i = alloca %struct.sg_table, align 4
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
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %chip_select, align 4
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr %struct.stm32_qspi, ptr %5, i32 0, i32 8, i32 %idxprom
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_qspi_send.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_qspi_send, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !89

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %opcode = getelementptr inbounds %struct.anon.74, ptr %op, i32 0, i32 3
  %10 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %opcode, align 4
  %conv = zext i16 %11 to i32
  %buswidth = getelementptr inbounds %struct.anon.74, ptr %op, i32 0, i32 1
  %12 = ptrtoint ptr %buswidth to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %buswidth, align 1
  %conv8 = zext i8 %13 to i32
  %buswidth9 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %buswidth9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buswidth9, align 1
  %conv10 = zext i8 %15 to i32
  %buswidth11 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %buswidth11 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buswidth11, align 1
  %conv12 = zext i8 %17 to i32
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data, align 4
  %conv14 = zext i8 %19 to i32
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %val, align 8
  %nbytes = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nbytes, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_qspi_send.__UNIQUE_ID_ddebug239, ptr noundef %9, ptr noundef nonnull @.str.22, i32 noundef %conv, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv14, i64 noundef %21, i32 noundef %23) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i, 100000000
  %io_base.i = getelementptr inbounds %struct.stm32_qspi, ptr %5, i32 0, i32 3
  %24 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_base.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %25, i32 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32.i) #9, !srcloc !87
  %27 = and i32 %26, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not34.i = icmp eq i32 %27, 0
  br i1 %tobool.not34.i, label %do.end.if.end20_crit_edge, label %do.end.land.lhs.true.i_crit_edge

do.end.land.lhs.true.i_crit_edge:                 ; preds = %do.end
  br label %land.lhs.true.i

do.end.if.end20_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %do.end.land.lhs.true.i_crit_edge
  %call4.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call4.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call4.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #9
  %29 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !87
  %32 = and i32 %31, 536870912
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %cond.false.i.if.end20_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

cond.false.i.if.end20_crit_edge:                  ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

for.end.i:                                        ; preds = %land.lhs.true.i
  %33 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io_base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %34, i32 8
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #9, !srcloc !87
  %36 = and i32 %35, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool22.not.i = icmp eq i32 %36, 0
  br i1 %tobool22.not.i, label %for.end.i.if.end20_crit_edge, label %for.end.i.abort_crit_edge

for.end.i.abort_crit_edge:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

for.end.i.if.end20_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end20:                                         ; preds = %for.end.i.if.end20_crit_edge, %cond.false.i.if.end20_crit_edge, %do.end.if.end20_crit_edge
  %37 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io_base.i, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #9, !srcloc !87
  %presc = getelementptr %struct.stm32_qspi, ptr %5, i32 0, i32 8, i32 %idxprom, i32 1
  %40 = ptrtoint ptr %presc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %presc, align 4
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  %44 = and i32 %39, 2147483392
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %shl = shl i32 %41, 24
  %or = or i32 %45, %shl
  %shl70 = shl i32 %43, 7
  %and71 = and i32 %shl70, 128
  %or72 = or i32 %and71, %or
  %46 = tail call i32 @llvm.bswap.i32(i32 %or72)
  %47 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #9, !srcloc !83
  %data75 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %nbytes76 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %49 = ptrtoint ptr %nbytes76 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nbytes76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool77.not = icmp eq i32 %50, 0
  br i1 %tobool77.not, label %if.end20.if.end83_crit_edge, label %if.then78

if.end20.if.end83_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then78:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %50, -1
  %51 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %52 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %io_base.i, align 4
  %add.ptr82 = getelementptr i8, ptr %53, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 %51) #9, !srcloc !83
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %if.end20.if.end83_crit_edge
  %fmode = getelementptr inbounds %struct.stm32_qspi, ptr %5, i32 0, i32 11
  %opcode92 = getelementptr inbounds %struct.anon.74, ptr %op, i32 0, i32 3
  %54 = ptrtoint ptr %opcode92 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %opcode92, align 4
  %56 = ptrtoint ptr %fmode to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fmode, align 4
  %58 = and i16 %55, 255
  %and115 = zext i16 %58 to i32
  %or116 = or i32 %57, %and115
  %buswidth134 = getelementptr inbounds %struct.anon.74, ptr %op, i32 0, i32 1
  %59 = ptrtoint ptr %buswidth134 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %buswidth134, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %60)
  %cmp.i = icmp eq i8 %60, 4
  %narrow.i = select i1 %cmp.i, i8 3, i8 %60
  %retval.0.i478 = zext i8 %narrow.i to i32
  %shl136 = shl nuw nsw i32 %retval.0.i478, 8
  %and137 = and i32 %shl136, 768
  %or138 = or i32 %or116, %and137
  %addr139 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %61 = ptrtoint ptr %addr139 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %addr139, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool141.not = icmp eq i8 %62, 0
  br i1 %tobool141.not, label %if.end83.if.end202_crit_edge, label %do.end193

if.end83.if.end202_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202

do.end193:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %conv174 = zext i8 %62 to i32
  %buswidth160 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %buswidth160 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %buswidth160, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %64)
  %cmp.i479 = icmp eq i8 %64, 4
  %narrow.i480 = select i1 %cmp.i479, i8 3, i8 %64
  %retval.0.i481 = zext i8 %narrow.i480 to i32
  %shl162 = shl nuw nsw i32 %retval.0.i481, 10
  %and163 = and i32 %shl162, 3072
  %sub198 = shl nuw nsw i32 %conv174, 12
  %shl199 = add nuw nsw i32 %sub198, 12288
  %and200 = and i32 %shl199, 12288
  %or164 = or i32 %or138, %and200
  %or201 = or i32 %or164, %and163
  br label %if.end202

if.end202:                                        ; preds = %do.end193, %if.end83.if.end202_crit_edge
  %ccr.0 = phi i32 [ %or201, %do.end193 ], [ %or138, %if.end83.if.end202_crit_edge ]
  %dummy203 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %65 = ptrtoint ptr %dummy203 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %dummy203, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool205.not = icmp eq i8 %66, 0
  br i1 %tobool205.not, label %if.end202.if.end254_crit_edge, label %do.end241

if.end202.if.end254_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end254

do.end241:                                        ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #11
  %conv216 = zext i8 %66 to i16
  %mul = shl nuw nsw i16 %conv216, 3
  %buswidth218 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %67 = ptrtoint ptr %buswidth218 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %buswidth218, align 1
  %div.rhs.trunc = zext i8 %68 to i16
  %div518 = udiv i16 %mul, %div.rhs.trunc
  %div.zext = zext i16 %div518 to i32
  %shl251 = shl nuw nsw i32 %div.zext, 18
  %and252 = and i32 %shl251, 8126464
  %or253 = or i32 %and252, %ccr.0
  br label %if.end254

if.end254:                                        ; preds = %do.end241, %if.end202.if.end254_crit_edge
  %ccr.1 = phi i32 [ %or253, %do.end241 ], [ %ccr.0, %if.end202.if.end254_crit_edge ]
  %69 = ptrtoint ptr %nbytes76 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nbytes76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool257.not = icmp eq i32 %70, 0
  br i1 %tobool257.not, label %if.end254.if.end281_crit_edge, label %do.end273

if.end254.if.end281_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end281

do.end273:                                        ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %data75 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %data75, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %72)
  %cmp.i482 = icmp eq i8 %72, 4
  %narrow.i483 = select i1 %cmp.i482, i8 3, i8 %72
  %retval.0.i484 = zext i8 %narrow.i483 to i32
  %shl278 = shl nuw i32 %retval.0.i484, 24
  %and279 = and i32 %shl278, 50331648
  %or280 = or i32 %and279, %ccr.1
  br label %if.end281

if.end281:                                        ; preds = %do.end273, %if.end254.if.end281_crit_edge
  %ccr.2 = phi i32 [ %or280, %do.end273 ], [ %ccr.1, %if.end254.if.end281_crit_edge ]
  %73 = tail call i32 @llvm.bswap.i32(i32 %ccr.2)
  %74 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %io_base.i, align 4
  %add.ptr283 = getelementptr i8, ptr %75, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr283, i32 %73) #9, !srcloc !83
  %76 = ptrtoint ptr %addr139 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %addr139, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool287.not = icmp eq i8 %77, 0
  br i1 %tobool287.not, label %if.end281.if.end296_crit_edge, label %land.lhs.true

if.end281.if.end296_crit_edge:                    ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end296

land.lhs.true:                                    ; preds = %if.end281
  %78 = ptrtoint ptr %fmode to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %fmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %79)
  %cmp.not = icmp eq i32 %79, 201326592
  br i1 %cmp.not, label %land.lhs.true.if.end302_crit_edge, label %if.then290

land.lhs.true.if.end302_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end302

if.then290:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %val292 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %80 = ptrtoint ptr %val292 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %val292, align 8
  %conv293 = trunc i64 %81 to i32
  %82 = tail call i32 @llvm.bswap.i32(i32 %conv293)
  %83 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %io_base.i, align 4
  %add.ptr295 = getelementptr i8, ptr %84, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr295, i32 %82) #9, !srcloc !83
  br label %if.end296

if.end296:                                        ; preds = %if.then290, %if.end281.if.end296_crit_edge
  %85 = ptrtoint ptr %fmode to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pr = load i32, ptr %fmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %.pr)
  %cmp298 = icmp eq i32 %.pr, 134217728
  br i1 %cmp298, label %if.then300, label %if.end296.if.end302_crit_edge

if.end296.if.end302_crit_edge:                    ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end302

if.then300:                                       ; preds = %if.end296
  %match_completion.i = getelementptr inbounds %struct.stm32_qspi, ptr %5, i32 0, i32 10
  %86 = ptrtoint ptr %match_completion.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %match_completion.i, align 4
  %87 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %io_base.i, align 4
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #9, !srcloc !87
  %90 = or i32 %89, 2048
  %91 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #9, !srcloc !83
  %status_timeout.i = getelementptr inbounds %struct.stm32_qspi, ptr %5, i32 0, i32 17
  %93 = ptrtoint ptr %status_timeout.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %status_timeout.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %94) #9
  %call5.i = tail call i32 @wait_for_completion_timeout(ptr noundef %match_completion.i, i32 noundef %call2.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i486 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i486, label %if.then300.if.end302_crit_edge, label %if.end.i

if.then300.if.end302_crit_edge:                   ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end302

if.end.i:                                         ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %io_base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %96, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 134217728) #9, !srcloc !83
  br label %if.end302

if.end302:                                        ; preds = %if.end.i, %if.then300.if.end302_crit_edge, %if.end296.if.end302_crit_edge, %land.lhs.true.if.end302_crit_edge
  %tobool305.not = phi i1 [ true, %land.lhs.true.if.end302_crit_edge ], [ true, %if.end.i ], [ false, %if.then300.if.end302_crit_edge ], [ true, %if.end296.if.end302_crit_edge ]
  %err_poll_status.0 = phi i32 [ 0, %land.lhs.true.if.end302_crit_edge ], [ 0, %if.end.i ], [ -110, %if.then300.if.end302_crit_edge ], [ 0, %if.end296.if.end302_crit_edge ]
  %97 = ptrtoint ptr %nbytes76 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %nbytes76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.i488 = icmp eq i32 %98, 0
  br i1 %tobool.not.i488, label %if.end302.lor.lhs.false_crit_edge, label %if.end.i490

if.end302.lor.lhs.false_crit_edge:                ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

if.end.i490:                                      ; preds = %if.end302
  %99 = ptrtoint ptr %fmode to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %fmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %100)
  %cmp.i489 = icmp eq i32 %100, 201326592
  br i1 %cmp.i489, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.end.i490
  call void @__sanitizer_cov_trace_pc() #11
  %buf.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %101 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %buf.i.i, align 4
  %mm_base.i.i = getelementptr inbounds %struct.stm32_qspi, ptr %5, i32 0, i32 4
  %103 = ptrtoint ptr %mm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mm_base.i.i, align 4
  %val.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %105 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %val.i.i, align 8
  %idx.ext.i.i = trunc i64 %106 to i32
  %add.ptr.i.i = getelementptr i8, ptr %104, i32 %idx.ext.i.i
  tail call void @mmiocpy(ptr noundef %102, ptr noundef %add.ptr.i.i, i32 noundef %98) #9
  br label %lor.lhs.false

if.else.i:                                        ; preds = %if.end.i490
  %dir.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %107 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %108)
  %cmp3.i = icmp eq i32 %108, 1
  br i1 %cmp3.i, label %land.lhs.true.i491, label %lor.lhs.false.i

land.lhs.true.i491:                               ; preds = %if.else.i
  %dma_chrx.i = getelementptr inbounds %struct.stm32_qspi, ptr %5, i32 0, i32 13
  %109 = ptrtoint ptr %dma_chrx.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dma_chrx.i, align 4
  %tobool4.not.i = icmp ne ptr %110, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %98)
  %cmp13.old.i = icmp ugt i32 %98, 4
  %or.cond48.i = select i1 %tobool4.not.i, i1 %cmp13.old.i, i1 false
  br i1 %or.cond48.i, label %land.lhs.true.i491.if.then14.i_crit_edge, label %land.lhs.true.i491.if.end20.i_crit_edge

land.lhs.true.i491.if.end20.i_crit_edge:          ; preds = %land.lhs.true.i491
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

land.lhs.true.i491.if.then14.i_crit_edge:         ; preds = %land.lhs.true.i491
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %108)
  %cmp7.i = icmp eq i32 %108, 2
  br i1 %cmp7.i, label %land.lhs.true8.i, label %lor.lhs.false.i.if.end20.i_crit_edge

lor.lhs.false.i.if.end20.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

land.lhs.true8.i:                                 ; preds = %lor.lhs.false.i
  %dma_chtx.i = getelementptr inbounds %struct.stm32_qspi, ptr %5, i32 0, i32 12
  %111 = ptrtoint ptr %dma_chtx.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dma_chtx.i, align 4
  %tobool9.not.i = icmp ne ptr %112, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %98)
  %cmp13.i = icmp ugt i32 %98, 4
  %or.cond.i = select i1 %tobool9.not.i, i1 %cmp13.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true8.i.if.then14.i_crit_edge, label %land.lhs.true8.i.if.end20.i_crit_edge

land.lhs.true8.i.if.end20.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

land.lhs.true8.i.if.then14.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i

if.then14.i:                                      ; preds = %land.lhs.true8.i.if.then14.i_crit_edge, %land.lhs.true.i491.if.then14.i_crit_edge
  %dma_dir.0.i.i = phi i32 [ 2, %land.lhs.true.i491.if.then14.i_crit_edge ], [ 1, %land.lhs.true8.i.if.then14.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sgt.i.i) #9
  %113 = ptrtoint ptr %sgt.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr inttoptr (i32 -1 to ptr), ptr %sgt.i.i, align 4, !annotation !90
  %114 = getelementptr inbounds %struct.sg_table, ptr %sgt.i.i, i32 0, i32 1
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 -1, ptr %114, align 4, !annotation !90
  %116 = getelementptr inbounds %struct.sg_table, ptr %sgt.i.i, i32 0, i32 2
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 -1, ptr %116, align 4, !annotation !90
  %dma_chrx.i.i = getelementptr inbounds %struct.stm32_qspi, ptr %5, i32 0, i32 13
  %dma_chtx.i.i = getelementptr inbounds %struct.stm32_qspi, ptr %5, i32 0, i32 12
  %dma_ch.0.in.i.i = select i1 %cmp3.i, ptr %dma_chrx.i.i, ptr %dma_chtx.i.i
  %118 = ptrtoint ptr %dma_ch.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %dma_ch.0.i.i = load ptr, ptr %dma_ch.0.in.i.i, align 4
  %ctrl.i.i = getelementptr inbounds %struct.stm32_qspi, ptr %5, i32 0, i32 1
  %119 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ctrl.i.i, align 4
  %call.i.i = call i32 @spi_controller_dma_map_mem_op_data(ptr noundef %120, ptr noundef %op, ptr noundef nonnull %sgt.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end2.i.i, label %stm32_qspi_tx_dma.exit.thread.i

stm32_qspi_tx_dma.exit.thread.i:                  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sgt.i.i) #9
  br label %if.end20.i

if.end2.i.i:                                      ; preds = %if.then14.i
  %121 = ptrtoint ptr %sgt.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %sgt.i.i, align 4
  %123 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %114, align 4
  %tobool.not.i.i.i = icmp eq ptr %dma_ch.0.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end2.i.i.stm32_qspi_tx_dma.exit.thread45.i_crit_edge, label %lor.lhs.false.i.i.i

if.end2.i.i.stm32_qspi_tx_dma.exit.thread45.i_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_qspi_tx_dma.exit.thread45.i

lor.lhs.false.i.i.i:                              ; preds = %if.end2.i.i
  %125 = ptrtoint ptr %dma_ch.0.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dma_ch.0.i.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %126, null
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.stm32_qspi_tx_dma.exit.thread45.i_crit_edge, label %lor.lhs.false2.i.i.i

lor.lhs.false.i.i.i.stm32_qspi_tx_dma.exit.thread45.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_qspi_tx_dma.exit.thread45.i

lor.lhs.false2.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %device_prep_slave_sg.i.i.i = getelementptr inbounds %struct.dma_device, ptr %126, i32 0, i32 39
  %127 = ptrtoint ptr %device_prep_slave_sg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %device_prep_slave_sg.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %128, null
  br i1 %tobool4.not.i.i.i, label %lor.lhs.false2.i.i.i.stm32_qspi_tx_dma.exit.thread45.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i.i

lor.lhs.false2.i.i.i.stm32_qspi_tx_dma.exit.thread45.i_crit_edge: ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_qspi_tx_dma.exit.thread45.i

dmaengine_prep_slave_sg.exit.i.i:                 ; preds = %lor.lhs.false2.i.i.i
  %call.i.i.i = call ptr %128(ptr noundef nonnull %dma_ch.0.i.i, ptr noundef %122, i32 noundef %124, i32 noundef %dma_dir.0.i.i, i32 noundef 1, ptr noundef null) #9
  %tobool4.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool4.not.i.i, label %dmaengine_prep_slave_sg.exit.i.i.stm32_qspi_tx_dma.exit.thread45.i_crit_edge, label %if.end6.i.i

dmaengine_prep_slave_sg.exit.i.i.stm32_qspi_tx_dma.exit.thread45.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_qspi_tx_dma.exit.thread45.i

if.end6.i.i:                                      ; preds = %dmaengine_prep_slave_sg.exit.i.i
  %129 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %io_base.i, align 4
  %131 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #9, !srcloc !87
  %132 = call i32 @llvm.bswap.i32(i32 %131) #9
  %dma_completion.i.i = getelementptr inbounds %struct.stm32_qspi, ptr %5, i32 0, i32 14
  %133 = ptrtoint ptr %dma_completion.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %dma_completion.i.i, align 4
  %callback.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i.i, i32 0, i32 6
  %134 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @stm32_qspi_dma_callback, ptr %callback.i.i, align 4
  %callback_param.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i.i, i32 0, i32 8
  %135 = ptrtoint ptr %callback_param.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %dma_completion.i.i, ptr %callback_param.i.i, align 4
  %tx_submit.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i.i, i32 0, i32 4
  %136 = ptrtoint ptr %tx_submit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %tx_submit.i.i.i, align 4
  %call.i60.i.i = call i32 %137(ptr noundef nonnull %call.i.i.i) #9
  %138 = call i32 @llvm.smin.i32(i32 %call.i60.i.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i60.i.i)
  %tobool11.not.i.i = icmp sgt i32 %call.i60.i.i, -1
  br i1 %tobool11.not.i.i, label %if.end13.i.i, label %if.end6.i.i.stm32_qspi_tx_dma.exit.i_crit_edge

if.end6.i.i.stm32_qspi_tx_dma.exit.i_crit_edge:   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_qspi_tx_dma.exit.i

if.end13.i.i:                                     ; preds = %if.end6.i.i
  %139 = ptrtoint ptr %dma_ch.0.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dma_ch.0.i.i, align 4
  %device_issue_pending.i.i.i = getelementptr inbounds %struct.dma_device, ptr %140, i32 0, i32 50
  %141 = ptrtoint ptr %device_issue_pending.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %device_issue_pending.i.i.i, align 4
  call void %142(ptr noundef nonnull %dma_ch.0.i.i) #9
  %or.i.i = or i32 %132, 4
  %143 = call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  %144 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %143) #9, !srcloc !83
  %146 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %114, align 4
  %mul.i.i = mul i32 %147, 1000
  %call2.i.i.i = call i32 @__msecs_to_jiffies(i32 noundef %mul.i.i) #9
  %call19.i.i = call i32 @wait_for_completion_timeout(ptr noundef %dma_completion.i.i, i32 noundef %call2.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.then24.i.i, label %if.end13.i.i.stm32_qspi_tx_dma.exit.i_crit_edge

if.end13.i.i.stm32_qspi_tx_dma.exit.i_crit_edge:  ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_qspi_tx_dma.exit.i

if.then24.i.i:                                    ; preds = %if.end13.i.i
  %148 = ptrtoint ptr %dma_ch.0.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dma_ch.0.i.i, align 4
  %device_terminate_all.i.i.i = getelementptr inbounds %struct.dma_device, ptr %149, i32 0, i32 47
  %150 = ptrtoint ptr %device_terminate_all.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %device_terminate_all.i.i.i, align 4
  %tobool.not.i61.i.i = icmp eq ptr %151, null
  br i1 %tobool.not.i61.i.i, label %if.then24.i.i.stm32_qspi_tx_dma.exit.i_crit_edge, label %if.then.i63.i.i

if.then24.i.i.stm32_qspi_tx_dma.exit.i_crit_edge: ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_qspi_tx_dma.exit.i

if.then.i63.i.i:                                  ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i62.i.i = call i32 %151(ptr noundef nonnull %dma_ch.0.i.i) #9
  br label %stm32_qspi_tx_dma.exit.i

stm32_qspi_tx_dma.exit.thread45.i:                ; preds = %dmaengine_prep_slave_sg.exit.i.i.stm32_qspi_tx_dma.exit.thread45.i_crit_edge, %lor.lhs.false2.i.i.i.stm32_qspi_tx_dma.exit.thread45.i_crit_edge, %lor.lhs.false.i.i.i.stm32_qspi_tx_dma.exit.thread45.i_crit_edge, %if.end2.i.i.stm32_qspi_tx_dma.exit.thread45.i_crit_edge
  %152 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ctrl.i.i, align 4
  call void @spi_controller_dma_unmap_mem_op_data(ptr noundef %153, ptr noundef %op, ptr noundef nonnull %sgt.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sgt.i.i) #9
  br label %if.end20.i

stm32_qspi_tx_dma.exit.i:                         ; preds = %if.then.i63.i.i, %if.then24.i.i.stm32_qspi_tx_dma.exit.i_crit_edge, %if.end13.i.i.stm32_qspi_tx_dma.exit.i_crit_edge, %if.end6.i.i.stm32_qspi_tx_dma.exit.i_crit_edge
  %err.1.i.i = phi i32 [ %138, %if.end6.i.i.stm32_qspi_tx_dma.exit.i_crit_edge ], [ 0, %if.end13.i.i.stm32_qspi_tx_dma.exit.i_crit_edge ], [ -110, %if.then24.i.i.stm32_qspi_tx_dma.exit.i_crit_edge ], [ -110, %if.then.i63.i.i ]
  %and.i.i = and i32 %132, -5
  %154 = call i32 @llvm.bswap.i32(i32 %and.i.i) #9
  %155 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %154) #9, !srcloc !83
  %157 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ctrl.i.i, align 4
  call void @spi_controller_dma_unmap_mem_op_data(ptr noundef %158, ptr noundef %op, ptr noundef nonnull %sgt.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sgt.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i.i)
  %tobool16.not.i = icmp eq i32 %err.1.i.i, 0
  br i1 %tobool16.not.i, label %stm32_qspi_tx_dma.exit.i.lor.lhs.false_crit_edge, label %stm32_qspi_tx_dma.exit.i.if.end20.i_crit_edge

stm32_qspi_tx_dma.exit.i.if.end20.i_crit_edge:    ; preds = %stm32_qspi_tx_dma.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

stm32_qspi_tx_dma.exit.i.lor.lhs.false_crit_edge: ; preds = %stm32_qspi_tx_dma.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

if.end20.i:                                       ; preds = %stm32_qspi_tx_dma.exit.i.if.end20.i_crit_edge, %stm32_qspi_tx_dma.exit.thread45.i, %stm32_qspi_tx_dma.exit.thread.i, %land.lhs.true8.i.if.end20.i_crit_edge, %lor.lhs.false.i.if.end20.i_crit_edge, %land.lhs.true.i491.if.end20.i_crit_edge
  %159 = ptrtoint ptr %nbytes76 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %nbytes76, align 4
  %161 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %162)
  %cmp.i35.i = icmp eq i32 %162, 1
  %stm32_qspi_read_fifo.stm32_qspi_write_fifo.i.i = select i1 %cmp.i35.i, ptr @stm32_qspi_read_fifo, ptr @stm32_qspi_write_fifo
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool.not65.i.i = icmp eq i32 %160, 0
  br i1 %tobool.not65.i.i, label %if.end20.i.lor.lhs.false_crit_edge, label %while.body.lr.ph.i.i

if.end20.i.lor.lhs.false_crit_edge:               ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

while.body.lr.ph.i.i:                             ; preds = %if.end20.i
  %buf.0.in.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %163 = ptrtoint ptr %buf.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %buf.0.i.i = load ptr, ptr %buf.0.in.i.i, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end34.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %dec67.in.i.i = phi i32 [ %160, %while.body.lr.ph.i.i ], [ %dec67.i.i, %if.end34.i.i.while.body.i.i_crit_edge ]
  %buf.166.i.i = phi ptr [ %buf.0.i.i, %while.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %if.end34.i.i.while.body.i.i_crit_edge ]
  %dec67.i.i = add i32 %dec67.in.i.i, -1
  %call.i37.i = call i64 @ktime_get() #9
  %add.i.i.i = add i64 %call.i37.i, 30000000
  %164 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %io_base.i, align 4
  %add.ptr61.i.i = getelementptr i8, ptr %165, i32 8
  %166 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61.i.i) #9, !srcloc !87
  %167 = call i32 @llvm.bswap.i32(i32 %166) #9
  %and62.i.i = and i32 %167, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i.i)
  %tobool8.not63.i.i = icmp eq i32 %and62.i.i, 0
  br i1 %tobool8.not63.i.i, label %while.body.i.i.land.lhs.true.i.i_crit_edge, label %while.body.i.i.for.end.i.i_crit_edge

while.body.i.i.for.end.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

while.body.i.i.land.lhs.true.i.i_crit_edge:       ; preds = %while.body.i.i
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %cond.false.i.i.land.lhs.true.i.i_crit_edge, %while.body.i.i.land.lhs.true.i.i_crit_edge
  %call12.i.i = call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call12.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %if.then15.i.i, label %cond.false.i.i

if.then15.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %168 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %io_base.i, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %169, i32 8
  %170 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i) #9, !srcloc !87
  %171 = call i32 @llvm.bswap.i32(i32 %170) #9
  br label %for.end.i.i

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %172 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %172(i32 noundef 214748) #9
  %173 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %174, i32 8
  %175 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38.i) #9, !srcloc !87
  %176 = call i32 @llvm.bswap.i32(i32 %175) #9
  %and.i39.i = and i32 %176, 4
  %tobool8.not.i.i = icmp eq i32 %and.i39.i, 0
  br i1 %tobool8.not.i.i, label %cond.false.i.i.land.lhs.true.i.i_crit_edge, label %cond.false.i.i.for.end.i.i_crit_edge

cond.false.i.i.for.end.i.i_crit_edge:             ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

cond.false.i.i.land.lhs.true.i.i_crit_edge:       ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

for.end.i.i:                                      ; preds = %cond.false.i.i.for.end.i.i_crit_edge, %if.then15.i.i, %while.body.i.i.for.end.i.i_crit_edge
  %sr.0.i.i = phi i32 [ %171, %if.then15.i.i ], [ %167, %while.body.i.i.for.end.i.i_crit_edge ], [ %176, %cond.false.i.i.for.end.i.i_crit_edge ]
  %and30.i.i = and i32 %sr.0.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i.i)
  %tobool31.not.i.i = icmp eq i32 %and30.i.i, 0
  br i1 %tobool31.not.i.i, label %stm32_qspi_tx.exit, label %if.end34.i.i

if.end34.i.i:                                     ; preds = %for.end.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %buf.166.i.i, i32 1
  %177 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %io_base.i, align 4
  %add.ptr36.i.i = getelementptr i8, ptr %178, i32 32
  call void %stm32_qspi_read_fifo.stm32_qspi_write_fifo.i.i(ptr noundef %buf.166.i.i, ptr noundef %add.ptr36.i.i) #9, !callees !91
  %tobool.not.i40.i = icmp eq i32 %dec67.i.i, 0
  br i1 %tobool.not.i40.i, label %if.end34.i.i.lor.lhs.false_crit_edge, label %if.end34.i.i.while.body.i.i_crit_edge

if.end34.i.i.while.body.i.i_crit_edge:            ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

if.end34.i.i.lor.lhs.false_crit_edge:             ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

stm32_qspi_tx.exit:                               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %179 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %180, ptr noundef nonnull @.str.24, i32 noundef %dec67.i.i, i32 noundef %sr.0.i.i) #12
  br label %abort

lor.lhs.false:                                    ; preds = %if.end34.i.i.lor.lhs.false_crit_edge, %if.end20.i.lor.lhs.false_crit_edge, %stm32_qspi_tx_dma.exit.i.lor.lhs.false_crit_edge, %if.then1.i, %if.end302.lor.lhs.false_crit_edge
  br i1 %tobool305.not, label %lor.lhs.false306, label %lor.lhs.false.abort_crit_edge

lor.lhs.false.abort_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

lor.lhs.false306:                                 ; preds = %lor.lhs.false
  %181 = ptrtoint ptr %fmode to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %fmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %182)
  %cmp308 = icmp eq i32 %182, 201326592
  br i1 %cmp308, label %lor.lhs.false306.abort_crit_edge, label %if.end311

lor.lhs.false306.abort_crit_edge:                 ; preds = %lor.lhs.false306
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end311:                                        ; preds = %lor.lhs.false306
  %183 = ptrtoint ptr %nbytes76 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %nbytes76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool.not.i494 = icmp eq i32 %184, 0
  br i1 %tobool.not.i494, label %if.end311.if.then30.i_crit_edge, label %if.end.i497

if.end311.if.then30.i_crit_edge:                  ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30.i

if.end.i497:                                      ; preds = %if.end311
  %185 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i496 = getelementptr i8, ptr %186, i32 8
  %187 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i496) #9, !srcloc !87
  %188 = and i32 %187, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool1.not.i = icmp eq i32 %188, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i497.wait_nobusy.thread43.i_crit_edge

if.end.i497.wait_nobusy.thread43.i_crit_edge:     ; preds = %if.end.i497
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_nobusy.thread43.i

if.end3.i:                                        ; preds = %if.end.i497
  %data_completion.i = getelementptr inbounds %struct.stm32_qspi, ptr %5, i32 0, i32 9
  %189 = ptrtoint ptr %data_completion.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 0, ptr %data_completion.i, align 4
  %190 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %io_base.i, align 4
  %192 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %191) #9, !srcloc !87
  %193 = or i32 %192, 768
  %194 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 %193) #9, !srcloc !83
  %call14.i = call i32 @wait_for_completion_timeout(ptr noundef %data_completion.i, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end3.i.wait_nobusy.i_crit_edge, label %if.else.i498

if.end3.i.wait_nobusy.i_crit_edge:                ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_nobusy.i

if.else.i498:                                     ; preds = %if.end3.i
  %196 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %io_base.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %197, i32 8
  %198 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #9, !srcloc !87
  %199 = and i32 %198, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool23.not.i = icmp eq i32 %199, 0
  br i1 %tobool23.not.i, label %if.else.i498.wait_nobusy.thread43.i_crit_edge, label %if.else.i498.wait_nobusy.i_crit_edge

if.else.i498.wait_nobusy.i_crit_edge:             ; preds = %if.else.i498
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_nobusy.i

if.else.i498.wait_nobusy.thread43.i_crit_edge:    ; preds = %if.else.i498
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_nobusy.thread43.i

wait_nobusy.thread43.i:                           ; preds = %if.else.i498.wait_nobusy.thread43.i_crit_edge, %if.end.i497.wait_nobusy.thread43.i_crit_edge
  %200 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %io_base.i, align 4
  %add.ptr2845.i = getelementptr i8, ptr %201, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2845.i, i32 50331648) #9, !srcloc !83
  br label %if.then30.i

wait_nobusy.i:                                    ; preds = %if.else.i498.wait_nobusy.i_crit_edge, %if.end3.i.wait_nobusy.i_crit_edge
  %err.0.i = phi i32 [ -110, %if.end3.i.wait_nobusy.i_crit_edge ], [ -5, %if.else.i498.wait_nobusy.i_crit_edge ]
  %202 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %io_base.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %203, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 50331648) #9, !srcloc !83
  br label %abort

if.then30.i:                                      ; preds = %wait_nobusy.thread43.i, %if.end311.if.then30.i_crit_edge
  %call.i.i499 = call i64 @ktime_get() #9
  %add.i.i.i500 = add i64 %call.i.i499, 100000000
  %204 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %io_base.i, align 4
  %add.ptr32.i.i = getelementptr i8, ptr %205, i32 8
  %206 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32.i.i) #9, !srcloc !87
  %207 = and i32 %206, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool.not34.i.i = icmp eq i32 %207, 0
  br i1 %tobool.not34.i.i, label %if.then30.i.cleanup_crit_edge, label %if.then30.i.land.lhs.true.i.i503_crit_edge

if.then30.i.land.lhs.true.i.i503_crit_edge:       ; preds = %if.then30.i
  br label %land.lhs.true.i.i503

if.then30.i.cleanup_crit_edge:                    ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i.i503:                             ; preds = %cond.false.i.i506.land.lhs.true.i.i503_crit_edge, %if.then30.i.land.lhs.true.i.i503_crit_edge
  %call4.i.i = call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call4.i.i, i64 %add.i.i.i500)
  %cmp3.i.i.i502 = icmp sgt i64 %call4.i.i, %add.i.i.i500
  br i1 %cmp3.i.i.i502, label %for.end.i.i507, label %cond.false.i.i506

cond.false.i.i506:                                ; preds = %land.lhs.true.i.i503
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %208 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %208(i32 noundef 214748) #9
  %209 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i504 = getelementptr i8, ptr %210, i32 8
  %211 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i504) #9, !srcloc !87
  %212 = and i32 %211, 536870912
  %tobool.not.i.i505 = icmp eq i32 %212, 0
  br i1 %tobool.not.i.i505, label %cond.false.i.i506.cleanup_crit_edge, label %cond.false.i.i506.land.lhs.true.i.i503_crit_edge

cond.false.i.i506.land.lhs.true.i.i503_crit_edge: ; preds = %cond.false.i.i506
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i503

cond.false.i.i506.cleanup_crit_edge:              ; preds = %cond.false.i.i506
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.i.i507:                                   ; preds = %land.lhs.true.i.i503
  %213 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %io_base.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %214, i32 8
  %215 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #9, !srcloc !87
  %216 = and i32 %215, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool22.not.i.i = icmp eq i32 %216, 0
  br i1 %tobool22.not.i.i, label %for.end.i.i507.cleanup_crit_edge, label %for.end.i.i507.abort_crit_edge

for.end.i.i507.abort_crit_edge:                   ; preds = %for.end.i.i507
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

for.end.i.i507.cleanup_crit_edge:                 ; preds = %for.end.i.i507
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

abort:                                            ; preds = %for.end.i.i507.abort_crit_edge, %wait_nobusy.i, %lor.lhs.false306.abort_crit_edge, %lor.lhs.false.abort_crit_edge, %stm32_qspi_tx.exit, %for.end.i.abort_crit_edge
  %err_poll_status.1 = phi i32 [ %err_poll_status.0, %stm32_qspi_tx.exit ], [ %err_poll_status.0, %lor.lhs.false.abort_crit_edge ], [ 0, %lor.lhs.false306.abort_crit_edge ], [ 0, %for.end.i.abort_crit_edge ], [ 0, %wait_nobusy.i ], [ 0, %for.end.i.i507.abort_crit_edge ]
  %err.0 = phi i32 [ -110, %stm32_qspi_tx.exit ], [ 0, %lor.lhs.false.abort_crit_edge ], [ 0, %lor.lhs.false306.abort_crit_edge ], [ -110, %for.end.i.abort_crit_edge ], [ %err.0.i, %wait_nobusy.i ], [ -110, %for.end.i.i507.abort_crit_edge ]
  %217 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %io_base.i, align 4
  %219 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %218) #9, !srcloc !87
  %220 = or i32 %219, 33554432
  %221 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %222, i32 %220) #9, !srcloc !83
  %call324 = call i64 @ktime_get() #9
  %add.i = add i64 %call324, 100000000
  %223 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %io_base.i, align 4
  %225 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %224) #9, !srcloc !87
  %226 = and i32 %225, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %tobool332.not524 = icmp eq i32 %226, 0
  br i1 %tobool332.not524, label %abort.for.end_crit_edge, label %abort.land.lhs.true336_crit_edge

abort.land.lhs.true336_crit_edge:                 ; preds = %abort
  br label %land.lhs.true336

abort.for.end_crit_edge:                          ; preds = %abort
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true336:                                 ; preds = %cond.false354.land.lhs.true336_crit_edge, %abort.land.lhs.true336_crit_edge
  %call337 = call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call337, i64 %add.i)
  %cmp3.i509 = icmp sgt i64 %call337, %add.i
  br i1 %cmp3.i509, label %if.then341, label %cond.false354

if.then341:                                       ; preds = %land.lhs.true336
  call void @__sanitizer_cov_trace_pc() #11
  %227 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %io_base.i, align 4
  %229 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %228) #9, !srcloc !87
  %230 = and i32 %229, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %phi.cmp = icmp eq i32 %230, 0
  br label %for.end

cond.false354:                                    ; preds = %land.lhs.true336
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %231 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %231(i32 noundef 214748) #9
  %232 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %io_base.i, align 4
  %234 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %233) #9, !srcloc !87
  %235 = and i32 %234, 33554432
  %tobool332.not = icmp eq i32 %235, 0
  br i1 %tobool332.not, label %cond.false354.for.end_crit_edge, label %cond.false354.land.lhs.true336_crit_edge

cond.false354.land.lhs.true336_crit_edge:         ; preds = %cond.false354
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true336

cond.false354.for.end_crit_edge:                  ; preds = %cond.false354
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cond.false354.for.end_crit_edge, %if.then341, %abort.for.end_crit_edge
  %and360.pre-phi = phi i1 [ true, %abort.for.end_crit_edge ], [ %phi.cmp, %if.then341 ], [ true, %cond.false354.for.end_crit_edge ]
  %236 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %io_base.i, align 4
  %add.ptr365 = getelementptr i8, ptr %237, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr365, i32 167772160) #9, !srcloc !83
  %238 = or i32 %err.0, %err_poll_status.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %239 = icmp ne i32 %238, 0
  %tobool361.not.not = xor i1 %and360.pre-phi, true
  %brmerge = select i1 %239, i1 true, i1 %tobool361.not.not
  br i1 %brmerge, label %do.end374, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end374:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %cond = select i1 %and360.pre-phi, i32 0, i32 -110
  %240 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %241, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef %err.0, i32 noundef %err_poll_status.1, i32 noundef %cond) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end374, %for.end.cleanup_crit_edge, %for.end.i.i507.cleanup_crit_edge, %cond.false.i.i506.cleanup_crit_edge, %if.then30.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %for.end.cleanup_crit_edge ], [ %err.0, %do.end374 ], [ 0, %if.then30.i.cleanup_crit_edge ], [ 0, %for.end.i.i507.cleanup_crit_edge ], [ 0, %cond.false.i.i506.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_dma_map_mem_op_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_qspi_dma_callback(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @complete(ptr noundef %arg) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_controller_dma_unmap_mem_op_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_qspi_read_fifo(ptr nocapture noundef writeonly %val, ptr noundef %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %addr) #9, !srcloc !92
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %0, ptr %val, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_qspi_write_fifo(ptr nocapture noundef readonly %val, ptr noundef %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %val, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %addr, i8 %1) #9, !srcloc !93
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @spi_mem_supports_op(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_qspi_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #9
  %call1 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_qspi_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #9
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !84
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !85
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then5.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !86
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %cr_reg = getelementptr inbounds %struct.stm32_qspi, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %cr_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cr_reg, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %io_base = getelementptr inbounds %struct.stm32_qspi, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #9, !srcloc !83
  %dcr_reg = getelementptr inbounds %struct.stm32_qspi, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %dcr_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dcr_reg, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_base, align 4
  %add.ptr8 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %10) #9, !srcloc !83
  %call.i23 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %13 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store volatile i64 %call.i23, ptr %last_busy.i, align 8
  %call.i24 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end11.i.i.i.i, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call1, %entry.cleanup_crit_edge ], [ %call.i, %if.then5.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_qspi_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.stm32_qspi, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_qspi_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.stm32_qspi, ptr %1, i32 0, i32 6
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
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !38, !40, !41, !42, !43, !45, !47, !48, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_spi_stm32_qspi__281_890_stm32_qspi_driver_init6, !1, !"__initcall__kmod_spi_stm32_qspi__281_890_stm32_qspi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-stm32-qspi.c", i32 890, i32 1}
!2 = !{ptr @__exitcall_stm32_qspi_driver_exit, !1, !"__exitcall_stm32_qspi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author282, !4, !"__UNIQUE_ID_author282", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-stm32-qspi.c", i32 892, i32 1}
!5 = !{ptr @__UNIQUE_ID_description283, !6, !"__UNIQUE_ID_description283", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-stm32-qspi.c", i32 893, i32 1}
!7 = !{ptr @__UNIQUE_ID_file284, !8, !"__UNIQUE_ID_file284", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-stm32-qspi.c", i32 894, i32 1}
!9 = !{ptr @__UNIQUE_ID_license285, !8, !"__UNIQUE_ID_license285", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-stm32-qspi.c", i32 885, i32 11}
!12 = !{ptr @stm32_qspi_driver, !13, !"stm32_qspi_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-stm32-qspi.c", i32 881, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-stm32-qspi.c", i32 698, i32 59}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-stm32-qspi.c", i32 705, i32 59}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-stm32-qspi.c", i32 721, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @stm32_qspi_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @stm32_qspi_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-stm32-qspi.c", i32 738, i32 3}
!28 = !{ptr @stm32_qspi_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @stm32_qspi_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @stm32_qspi_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-stm32-qspi.c", i32 759, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @init_completion.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../include/linux/completion.h", i32 87, i32 2}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/spi/spi-stm32-qspi.c", i32 628, i32 41}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/spi/spi-stm32-qspi.c", i32 636, i32 4}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @stm32_qspi_dma_setup._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @stm32_qspi_dma_setup._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-stm32-qspi.c", i32 642, i32 41}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/spi/spi-stm32-qspi.c", i32 648, i32 4}
!47 = !{ptr @stm32_qspi_dma_setup._entry.17, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @stm32_qspi_dma_setup._entry_ptr.19, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @stm32_qspi_mem_ops, !50, !"stm32_qspi_mem_ops", i1 false, i1 false}
!50 = !{!"../drivers/spi/spi-stm32-qspi.c", i32 675, i32 44}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/spi/spi-stm32-qspi.c", i32 370, i32 2}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @stm32_qspi_send.__UNIQUE_ID_ddebug239, !52, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/spi/spi-stm32-qspi.c", i32 448, i32 3}
!58 = !{ptr @stm32_qspi_send._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @stm32_qspi_send._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/spi/spi-stm32-qspi.c", i32 188, i32 4}
!62 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @stm32_qspi_tx_poll._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @stm32_qspi_tx_poll._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/spi/spi-stm32-qspi.c", i32 551, i32 2}
!67 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @stm32_qspi_dirmap_read.__UNIQUE_ID_ddebug280, !66, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!69 = !{ptr @stm32_qspi_match, !70, !"stm32_qspi_match", i1 false, i1 false}
!70 = !{!"../drivers/spi/spi-stm32-qspi.c", i32 875, i32 34}
!71 = !{ptr @stm32_qspi_pm_ops, !72, !"stm32_qspi_pm_ops", i1 false, i1 false}
!72 = !{!"../drivers/spi/spi-stm32-qspi.c", i32 869, i32 32}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 2148318738, i64 2148318764, i64 2148318793, i64 2148318827, i64 2148318858, i64 2148318881}
!83 = !{i64 6346004}
!84 = !{i64 2148318157}
!85 = !{i64 802980, i64 803005, i64 803027, i64 803043, i64 803055, i64 803075, i64 803099, i64 803115, i64 803127}
!86 = !{i64 2148318345}
!87 = !{i64 6346422}
!88 = !{i8 0, i8 2}
!89 = !{i64 2148773223, i64 2148773228, i64 2148773241, i64 2148773285, i64 2148773319, i64 2148773340}
!90 = !{!"auto-init"}
!91 = !{ptr @stm32_qspi_read_fifo, ptr @stm32_qspi_write_fifo}
!92 = !{i64 6346202}
!93 = !{i64 6345807}
