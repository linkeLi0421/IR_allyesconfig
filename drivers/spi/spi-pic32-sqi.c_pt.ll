; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-pic32-sqi.c_pt.bc'
source_filename = "../drivers/spi/spi-pic32-sqi.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.pic32_sqi = type { ptr, ptr, ptr, ptr, i32, %struct.completion, ptr, ptr, i32, %struct.list_head, %struct.list_head, ptr, i32, i8 }
%struct.buf_desc = type { i32, i32, i32, i32 }
%struct.ring_desc = type { %struct.list_head, ptr, i32, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_spi_pic32_sqi__236_711_pic32_sqi_driver_init6 = internal global ptr @pic32_sqi_driver_init, section ".initcall6.init", align 4
@pic32_sqi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pic32_sqi_probe, ptr @pic32_sqi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pic32_sqi_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pic32_sqi_driver_exit = internal global ptr @pic32_sqi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [71 x i8] c"spi_pic32_sqi.author=Purna Chandra Mandal <purna.mandal@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [73 x i8] c"spi_pic32_sqi.description=Microchip SPI driver for PIC32 SQI controller.\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [45 x i8] c"spi_pic32_sqi.file=drivers/spi/spi-pic32-sqi\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [29 x i8] c"spi_pic32_sqi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sqi-pic32\00", [22 x i8] zeroinitializer }, align 32
@pic32_sqi_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,pic32mzda-sqi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reg_ck\00", [25 x i8] zeroinitializer }, align 32
@pic32_sqi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 599, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no sys_clk ?\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pic32_sqi_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/spi/spi-pic32-sqi.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pic32_sqi_probe._entry_ptr = internal global ptr @pic32_sqi_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spi_ck\00", [25 x i8] zeroinitializer }, align 32
@pic32_sqi_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 606, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"no base clk ?\0A\00", [17 x i8] zeroinitializer }, align 32
@pic32_sqi_probe._entry_ptr.10 = internal global ptr @pic32_sqi_probe._entry.8, section ".printk_index", align 4
@pic32_sqi_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 612, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys clk enable failed\0A\00", [41 x i8] zeroinitializer }, align 32
@pic32_sqi_probe._entry_ptr.13 = internal global ptr @pic32_sqi_probe._entry.11, section ".printk_index", align 4
@pic32_sqi_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 618, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"base clk enable failed\0A\00", [40 x i8] zeroinitializer }, align 32
@pic32_sqi_probe._entry_ptr.16 = internal global ptr @pic32_sqi_probe._entry.14, section ".printk_index", align 4
@pic32_sqi_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 631, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ring alloc failed\0A\00", [45 x i8] zeroinitializer }, align 32
@pic32_sqi_probe._entry_ptr.19 = internal global ptr @pic32_sqi_probe._entry.17, section ".printk_index", align 4
@pic32_sqi_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 639, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"request_irq(%d), failed\0A\00", [39 x i8] zeroinitializer }, align 32
@pic32_sqi_probe._entry_ptr.22 = internal global ptr @pic32_sqi_probe._entry.20, section ".printk_index", align 4
@pic32_sqi_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 660, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed registering spi master\0A\00", [33 x i8] zeroinitializer }, align 32
@pic32_sqi_probe._entry_ptr.25 = internal global ptr @pic32_sqi_probe._entry.23, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ring_desc_ring_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 465, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed allocating dma buffer\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ring_desc_ring_alloc\00", [43 x i8] zeroinitializer }, align 32
@ring_desc_ring_alloc._entry_ptr = internal global ptr @ring_desc_ring_alloc._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pic32_sqi_one_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 365, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set_clk, %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pic32_sqi_one_message\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pic32_sqi_one_message._entry_ptr = internal global ptr @pic32_sqi_one_message._entry, section ".printk_index", align 4
@pic32_sqi_one_message._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.30, ptr @.str.4, i32 389, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xfer %p err\0A\00", [19 x i8] zeroinitializer }, align 32
@pic32_sqi_one_message._entry_ptr.34 = internal global ptr @pic32_sqi_one_message._entry.32, section ".printk_index", align 4
@pic32_sqi_one_message._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.30, ptr @.str.4, i32 415, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wait timedout/interrupted\0A\00", [37 x i8] zeroinitializer }, align 32
@pic32_sqi_one_message._entry_ptr.37 = internal global ptr @pic32_sqi_one_message._entry.35, section ".printk_index", align 4
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"pic32_sqi_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 702, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 704, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"pic32_sqi_of_ids\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 696, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 596, i32 42 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 599, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 603, i32 43 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 606, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 612, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 618, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 631, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 639, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 660, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 87, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 465, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 365, i32 5 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 389, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private constant [31 x i8] c"../drivers/spi/spi-pic32-sqi.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 415, i32 3 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_pic32_sqi_driver_exit, ptr @__initcall__kmod_spi_pic32_sqi__236_711_pic32_sqi_driver_init6, ptr @pic32_sqi_driver_exit, ptr @pic32_sqi_one_message._entry, ptr @pic32_sqi_one_message._entry.32, ptr @pic32_sqi_one_message._entry.35, ptr @pic32_sqi_one_message._entry_ptr, ptr @pic32_sqi_one_message._entry_ptr.34, ptr @pic32_sqi_one_message._entry_ptr.37, ptr @pic32_sqi_probe._entry, ptr @pic32_sqi_probe._entry.11, ptr @pic32_sqi_probe._entry.14, ptr @pic32_sqi_probe._entry.17, ptr @pic32_sqi_probe._entry.20, ptr @pic32_sqi_probe._entry.23, ptr @pic32_sqi_probe._entry.8, ptr @pic32_sqi_probe._entry_ptr, ptr @pic32_sqi_probe._entry_ptr.10, ptr @pic32_sqi_probe._entry_ptr.13, ptr @pic32_sqi_probe._entry_ptr.16, ptr @pic32_sqi_probe._entry_ptr.19, ptr @pic32_sqi_probe._entry_ptr.22, ptr @pic32_sqi_probe._entry_ptr.25, ptr @ring_desc_ring_alloc._entry, ptr @ring_desc_ring_alloc._entry_ptr, ptr @pic32_sqi_driver, ptr @.str, ptr @pic32_sqi_of_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @init_completion.__key, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_sqi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_sqi_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_sqi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_sqi_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_sqi_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_sqi_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_sqi_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_sqi_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_sqi_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ring_desc_ring_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_sqi_one_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_sqi_one_message._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_sqi_one_message._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pic32_sqi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pic32_sqi_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pic32_sqi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @pic32_sqi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pic32_sqi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 116, i1 noundef zeroext false) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %master2 = getelementptr inbounds %struct.pic32_sqi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %master2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %master2, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %1, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call3 to i32
  br label %spi_controller_put.exit

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.pic32_sqi, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call10, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end9.spi_controller_put.exit_crit_edge, label %if.end14

if.end9.spi_controller_put.exit_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_controller_put.exit

if.end14:                                         ; preds = %if.end9
  %call16 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  %sys_clk = getelementptr inbounds %struct.pic32_sqi, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %sys_clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call16, ptr %sys_clk, align 4
  %cmp.i159 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call16 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %spi_controller_put.exit

if.end23:                                         ; preds = %if.end14
  %call25 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #7
  %base_clk = getelementptr inbounds %struct.pic32_sqi, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %base_clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call25, ptr %base_clk, align 4
  %cmp.i160 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i160, label %if.then28, label %if.end35

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call25 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  br label %spi_controller_put.exit

if.end35:                                         ; preds = %if.end23
  %10 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sys_clk, align 4
  %call.i161 = tail call i32 @clk_prepare(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %tobool.not.i = icmp eq i32 %call.i161, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end35.do.end42_crit_edge

if.end35.do.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

if.end.i:                                         ; preds = %if.end35
  %call1.i = tail call i32 @clk_enable(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end44, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %11) #7
  br label %do.end42

do.end42:                                         ; preds = %if.then3.i, %if.end35.do.end42_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i161, %if.end35.do.end42_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  br label %spi_controller_put.exit

if.end44:                                         ; preds = %if.end.i
  %12 = ptrtoint ptr %base_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_clk, align 4
  %call.i162 = tail call i32 @clk_prepare(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool.not.i163 = icmp eq i32 %call.i162, 0
  br i1 %tobool.not.i163, label %if.end.i166, label %if.end44.do.end51_crit_edge

if.end44.do.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end51

if.end.i166:                                      ; preds = %if.end44
  %call1.i164 = tail call i32 @clk_enable(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i164)
  %tobool2.not.i165 = icmp eq i32 %call1.i164, 0
  br i1 %tobool2.not.i165, label %if.end54, label %if.then3.i167

if.then3.i167:                                    ; preds = %if.end.i166
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %13) #7
  br label %do.end51

do.end51:                                         ; preds = %if.then3.i167, %if.end44.do.end51_crit_edge
  %retval.0.i168.ph = phi i32 [ %call1.i164, %if.then3.i167 ], [ %call.i162, %if.end44.do.end51_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  %14 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sys_clk, align 4
  tail call void @clk_disable(ptr noundef %15) #7
  tail call void @clk_unprepare(ptr noundef %15) #7
  br label %spi_controller_put.exit

if.end54:                                         ; preds = %if.end.i166
  %xfer_done = getelementptr inbounds %struct.pic32_sqi, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %xfer_done to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %xfer_done, align 4
  %wait.i = getelementptr inbounds %struct.pic32_sqi, ptr %1, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_completion.__key) #7
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !83
  %and.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i170 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i170, label %if.then.i, label %if.end54.do.body12.i_crit_edge

if.end54.do.body12.i_crit_edge:                   ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12.i

if.then.i:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  br label %do.body12.i

do.body12.i:                                      ; preds = %if.then.i, %if.end54.do.body12.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 256) #7, !srcloc !85
  %call15.i = tail call i64 @ktime_get() #7
  %add.i.i = add i64 %call15.i, 5000000
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr18175.i = getelementptr i8, ptr %21, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18175.i) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %23 = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool22.not176.i = icmp eq i32 %23, 0
  br i1 %tobool22.not176.i, label %do.body12.i.for.end.i_crit_edge, label %do.body12.i.land.lhs.true.i_crit_edge

do.body12.i.land.lhs.true.i_crit_edge:            ; preds = %do.body12.i
  br label %land.lhs.true.i

do.body12.i.for.end.i_crit_edge:                  ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %do.body12.i.land.lhs.true.i_crit_edge
  %call26.i = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call26.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call26.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then30.i, label %cond.false.i

if.then30.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %add.ptr34.i = getelementptr i8, ptr %25, i32 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  br label %for.end.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #7
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %add.ptr18.i = getelementptr i8, ptr %29, i32 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %31 = and i32 %30, 256
  %tobool22.not.i = icmp eq i32 %31, 0
  br i1 %tobool22.not.i, label %cond.false.i.for.end.i_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

cond.false.i.for.end.i_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %cond.false.i.for.end.i_crit_edge, %if.then30.i, %do.body12.i.for.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %35, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 0) #7, !srcloc !85
  br i1 %tobool.not.i170, label %if.then59.i, label %for.end.i.do.body61.i_crit_edge

for.end.i.do.body61.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body61.i

if.then59.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body61.i

do.body61.i:                                      ; preds = %if.then59.i, %for.end.i.do.body61.i_crit_edge
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !91
  %and.i.i.i = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool69.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool69.not.i, label %if.then74.i, label %do.body61.i.pic32_sqi_hw_init.exit_crit_edge, !prof !92

do.body61.i.pic32_sqi_hw_init.exit_crit_edge:     ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pic32_sqi_hw_init.exit

if.then74.i:                                      ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %pic32_sqi_hw_init.exit

pic32_sqi_hw_init.exit:                           ; preds = %if.then74.i, %do.body61.i.pic32_sqi_hw_init.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #7, !srcloc !93
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %add.ptr85.i = getelementptr i8, ptr %38, i32 20
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85.i) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  %40 = and i32 %39, -522125313
  %41 = or i32 %40, 16842752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  tail call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %add.ptr95.i = getelementptr i8, ptr %43, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95.i, i32 %41) #7, !srcloc !85
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %add.ptr99.i = getelementptr i8, ptr %45, i32 24
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr99.i) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  %47 = and i32 %46, -522125313
  %48 = or i32 %47, 16842752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  tail call void @arm_heavy_mb() #7
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %add.ptr110.i = getelementptr i8, ptr %50, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110.i, i32 %48) #7, !srcloc !85
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %add.ptr114.i = getelementptr i8, ptr %52, i32 8
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr114.i) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %54 = and i32 %53, -117440513
  %55 = or i32 %54, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %add.ptr124.i = getelementptr i8, ptr %57, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124.i, i32 %55) #7, !srcloc !85
  %58 = or i32 %54, 34611203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %add.ptr132.i = getelementptr i8, ptr %60, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132.i, i32 %58) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %add.ptr137.i = getelementptr i8, ptr %62, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr137.i, i32 0) #7, !srcloc !85
  %cur_speed.i = getelementptr inbounds %struct.pic32_sqi, ptr %1, i32 0, i32 12
  %63 = ptrtoint ptr %cur_speed.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %cur_speed.i, align 4
  %cur_mode.i = getelementptr inbounds %struct.pic32_sqi, ptr %1, i32 0, i32 13
  %64 = ptrtoint ptr %cur_mode.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -1, ptr %cur_mode.i, align 4
  %65 = ptrtoint ptr %master2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %master2, align 4
  %bd_dma.i = getelementptr inbounds %struct.pic32_sqi, ptr %1, i32 0, i32 8
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %66, i32 noundef 4096, ptr noundef %bd_dma.i, i32 noundef 3264, i32 noundef 0) #7
  %bd1.i = getelementptr inbounds %struct.pic32_sqi, ptr %1, i32 0, i32 7
  %67 = ptrtoint ptr %bd1.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i.i, ptr %bd1.i, align 4
  %tobool.not.i171 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i171, label %do.end.i, label %if.end.i172

do.end.i:                                         ; preds = %pic32_sqi_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %master2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %master2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.27) #10
  br label %do.end60

if.end.i172:                                      ; preds = %pic32_sqi_hw_init.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %70 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3520, i32 noundef 5120) #11
  %ring.i = getelementptr inbounds %struct.pic32_sqi, ptr %1, i32 0, i32 6
  %71 = ptrtoint ptr %ring.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call7.i.i.i.i, ptr %ring.i, align 4
  %tobool7.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end13.i

if.then8.i:                                       ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %master2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %master2, align 4
  %74 = ptrtoint ptr %bd1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bd1.i, align 4
  %76 = ptrtoint ptr %bd_dma.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bd_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %73, i32 noundef 4096, ptr noundef %75, i32 noundef %77, i32 noundef 0) #7
  br label %do.end60

if.end13.i:                                       ; preds = %if.end.i172
  %78 = ptrtoint ptr %bd1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bd1.i, align 4
  %bd_list_free.i = getelementptr inbounds %struct.pic32_sqi, ptr %1, i32 0, i32 9
  %80 = ptrtoint ptr %bd_list_free.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %bd_list_free.i, ptr %bd_list_free.i, align 4
  %prev.i.i = getelementptr inbounds %struct.pic32_sqi, ptr %1, i32 0, i32 9, i32 1
  %81 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %bd_list_free.i, ptr %prev.i.i, align 4
  %bd_list_used.i = getelementptr inbounds %struct.pic32_sqi, ptr %1, i32 0, i32 10
  %82 = ptrtoint ptr %bd_list_used.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %bd_list_used.i, ptr %bd_list_used.i, align 4
  %prev.i68.i = getelementptr inbounds %struct.pic32_sqi, ptr %1, i32 0, i32 10, i32 1
  %83 = ptrtoint ptr %prev.i68.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %bd_list_used.i, ptr %prev.i68.i, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %79 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %if.end13.i
  %i.073.i = phi i32 [ 0, %if.end13.i ], [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ]
  %rdesc.071.i = phi ptr [ %call7.i.i.i.i, %if.end13.i ], [ %incdec.ptr.i, %list_add_tail.exit.i.for.body.i_crit_edge ]
  %84 = ptrtoint ptr %rdesc.071.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %rdesc.071.i, ptr %rdesc.071.i, align 4
  %prev.i69.i = getelementptr inbounds %struct.list_head, ptr %rdesc.071.i, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i69.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %rdesc.071.i, ptr %prev.i69.i, align 4
  %arrayidx.i = getelementptr %struct.buf_desc, ptr %79, i32 %i.073.i
  %bd16.i = getelementptr inbounds %struct.ring_desc, ptr %rdesc.071.i, i32 0, i32 1
  %86 = ptrtoint ptr %bd16.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %arrayidx.i, ptr %bd16.i, align 4
  %87 = ptrtoint ptr %bd_dma.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bd_dma.i, align 4
  %add.ptr.i173 = getelementptr i8, ptr %arrayidx.i, i32 %88
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i173 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %bd_dma19.i = getelementptr inbounds %struct.ring_desc, ptr %rdesc.071.i, i32 0, i32 2
  %89 = ptrtoint ptr %bd_dma19.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %sub.ptr.sub.i, ptr %bd_dma19.i, align 4
  %90 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rdesc.071.i, ptr noundef %91, ptr noundef %bd_list_free.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_add_tail.exit.i_crit_edge

for.body.i.list_add_tail.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %rdesc.071.i, ptr %prev.i.i, align 4
  %93 = ptrtoint ptr %rdesc.071.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %bd_list_free.i, ptr %rdesc.071.i, align 4
  %94 = ptrtoint ptr %prev.i69.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %91, ptr %prev.i69.i, align 4
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %rdesc.071.i, ptr %91, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_add_tail.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.073.i, 1
  %incdec.ptr.i = getelementptr %struct.ring_desc, ptr %rdesc.071.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.end.i174, label %list_add_tail.exit.i.for.body.i_crit_edge

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i174:                                     ; preds = %list_add_tail.exit.i
  %96 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ring.i, align 4
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.body25.i.for.body25.i_crit_edge, %for.end.i174
  %i.174.i = phi i32 [ 0, %for.end.i174 ], [ %add.i, %for.body25.i.for.body25.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.174.i, 1
  %bd_dma27.i = getelementptr %struct.ring_desc, ptr %97, i32 %add.i, i32 2
  %98 = ptrtoint ptr %bd_dma27.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %bd_dma27.i, align 4
  %bd_nextp.i = getelementptr %struct.buf_desc, ptr %79, i32 %i.174.i, i32 3
  %100 = ptrtoint ptr %bd_nextp.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %bd_nextp.i, align 4
  %exitcond75.not.i = icmp eq i32 %add.i, 255
  br i1 %exitcond75.not.i, label %if.end62, label %for.body25.i.for.body25.i_crit_edge

for.body25.i.for.body25.i_crit_edge:              ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body25.i

do.end60:                                         ; preds = %if.then8.i, %do.end.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #10
  br label %err_disable_clk

if.end62:                                         ; preds = %for.body25.i
  %bd_nextp33.i = getelementptr %struct.buf_desc, ptr %79, i32 255, i32 3
  %101 = ptrtoint ptr %bd_nextp33.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %bd_nextp33.i, align 4
  %102 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %104 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i176 = icmp eq ptr %105, null
  br i1 %tobool.not.i176, label %if.end.i177, label %if.end62.dev_name.exit_crit_edge

if.end62.dev_name.exit_crit_edge:                 ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i177:                                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i177, %if.end62.dev_name.exit_crit_edge
  %retval.0.i178 = phi ptr [ %107, %if.end.i177 ], [ %105, %if.end62.dev_name.exit_crit_edge ]
  %call.i179 = tail call i32 @request_threaded_irq(i32 noundef %103, ptr noundef nonnull @pic32_sqi_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i178, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i179)
  %cmp67 = icmp slt i32 %call.i179, 0
  br i1 %cmp67, label %do.end71, label %if.end74

do.end71:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %109) #10
  br label %err_free_ring

if.end74:                                         ; preds = %dev_name.exit
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %110 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 2, ptr %num_chipselect, align 2
  %111 = ptrtoint ptr %base_clk to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %base_clk, align 4
  %call76 = tail call i32 @clk_get_rate(ptr noundef %112) #7
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %113 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %call76, ptr %max_speed_hz, align 8
  %dma_alignment = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 4
  %114 = ptrtoint ptr %dma_alignment to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 32, ptr %dma_alignment, align 4
  %max_dma_len = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 43
  %115 = ptrtoint ptr %max_dma_len to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 256, ptr %max_dma_len, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %116 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %of_node, align 8
  %of_node79 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %118 = ptrtoint ptr %of_node79 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %117, ptr %of_node79, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %119 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 3843, ptr %mode_bits, align 8
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 10
  %120 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 1, ptr %flags, align 4
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 24
  %121 = ptrtoint ptr %can_dma to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @pic32_sqi_can_dma, ptr %can_dma, align 4
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %122 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -128, ptr %bits_per_word_mask, align 8
  %transfer_one_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 45
  %123 = ptrtoint ptr %transfer_one_message to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @pic32_sqi_one_message, ptr %transfer_one_message, align 4
  %prepare_transfer_hardware = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 44
  %124 = ptrtoint ptr %prepare_transfer_hardware to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @pic32_sqi_prepare_hardware, ptr %prepare_transfer_hardware, align 8
  %unprepare_transfer_hardware = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 46
  %125 = ptrtoint ptr %unprepare_transfer_hardware to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @pic32_sqi_unprepare_hardware, ptr %unprepare_transfer_hardware, align 8
  %call81 = tail call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end90, label %do.end86

do.end86:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.24) #10
  %126 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %irq, align 4
  %call89 = tail call ptr @free_irq(i32 noundef %127, ptr noundef %1) #7
  br label %err_free_ring

if.end90:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i180 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %128 = ptrtoint ptr %driver_data.i.i180 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %1, ptr %driver_data.i.i180, align 4
  br label %cleanup

err_free_ring:                                    ; preds = %do.end86, %do.end71
  %ret.0 = phi i32 [ %call.i179, %do.end71 ], [ %call81, %do.end86 ]
  tail call fastcc void @ring_desc_ring_free(ptr noundef %1)
  br label %err_disable_clk

err_disable_clk:                                  ; preds = %err_free_ring, %do.end60
  %ret.1 = phi i32 [ -12, %do.end60 ], [ %ret.0, %err_free_ring ]
  %129 = ptrtoint ptr %base_clk to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %base_clk, align 4
  tail call void @clk_disable(ptr noundef %130) #7
  tail call void @clk_unprepare(ptr noundef %130) #7
  %131 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %sys_clk, align 4
  tail call void @clk_disable(ptr noundef %132) #7
  tail call void @clk_unprepare(ptr noundef %132) #7
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %err_disable_clk, %do.end51, %do.end42, %if.then28, %if.then19, %if.end9.spi_controller_put.exit_crit_edge, %if.then6
  %ret.2 = phi i32 [ %4, %if.then6 ], [ %7, %if.then19 ], [ %9, %if.then28 ], [ %retval.0.i.ph, %do.end42 ], [ %retval.0.i168.ph, %do.end51 ], [ %ret.1, %err_disable_clk ], [ %call10, %if.end9.spi_controller_put.exit_crit_edge ]
  tail call void @put_device(ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end90, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %spi_controller_put.exit ], [ 0, %if.end90 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pic32_sqi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.pic32_sqi, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #7
  %master.i = getelementptr inbounds %struct.pic32_sqi, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master.i, align 4
  %bd.i = getelementptr inbounds %struct.pic32_sqi, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %bd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd.i, align 4
  %bd_dma.i = getelementptr inbounds %struct.pic32_sqi, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %bd_dma.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bd_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef 4096, ptr noundef %7, i32 noundef %9, i32 noundef 0) #7
  %ring.i = getelementptr inbounds %struct.pic32_sqi, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ring.i, align 4
  tail call void @kfree(ptr noundef %11) #7
  %base_clk = getelementptr inbounds %struct.pic32_sqi, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %base_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_clk, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  tail call void @clk_unprepare(ptr noundef %13) #7
  %sys_clk = getelementptr inbounds %struct.pic32_sqi, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sys_clk, align 4
  tail call void @clk_disable(ptr noundef %15) #7
  tail call void @clk_unprepare(ptr noundef %15) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pic32_sqi_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !86
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !86
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end11:                                         ; preds = %if.end
  %and12 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %and15 = and i32 %3, -8
  %spec.select = select i1 %tobool13.not, i32 %3, i32 %and15
  %and17 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %and20 = and i32 %spec.select, -57
  %enable.1 = select i1 %tobool18.not, i32 %spec.select, i32 %and20
  %and22 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %and25 = and i32 %enable.1, -513
  %enable.2 = select i1 %tobool23.not, i32 %enable.1, i32 %and25
  %and27 = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end11.do.body_crit_edge, label %if.then29

if.end11.do.body_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then29:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %xfer_done = getelementptr inbounds %struct.pic32_sqi, ptr %dev_id, i32 0, i32 5
  tail call void @complete(ptr noundef %xfer_done) #7
  br label %do.body

do.body:                                          ; preds = %if.then29, %if.end11.do.body_crit_edge, %if.end.do.body_crit_edge
  %enable.3 = phi i32 [ 0, %if.then29 ], [ %enable.2, %if.end11.do.body_crit_edge ], [ 0, %if.end.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %enable.3)
  %9 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_id, align 4
  %add.ptr32 = getelementptr i8, ptr %10, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %8) #7, !srcloc !85
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @pic32_sqi_can_dma(ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %spi, ptr nocapture noundef readnone %x) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pic32_sqi_one_message(ptr nocapture noundef readonly %master, ptr noundef %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %xfer_done = getelementptr inbounds %struct.pic32_sqi, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %xfer_done to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %xfer_done, align 4
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 6
  %5 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %actual_length, align 4
  %cur_spi = getelementptr inbounds %struct.pic32_sqi, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %cur_spi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_spi, align 4
  %cmp.not = icmp eq ptr %7, %1
  br i1 %cmp.not, label %entry.if.end36_crit_edge, label %if.then

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then:                                          ; preds = %entry
  %cur_speed = getelementptr inbounds %struct.pic32_sqi, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %cur_speed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_speed, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp2.not = icmp eq i32 %9, %11
  br i1 %cmp2.not, label %if.then.if.end9_crit_edge, label %if.then3

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then3:                                         ; preds = %if.then
  %12 = ptrtoint ptr %cur_speed to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %cur_speed, align 4
  %13 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_speed_hz, align 8
  %base_clk.i = getelementptr inbounds %struct.pic32_sqi, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %base_clk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %16) #7
  %mul.i = shl i32 %14, 1
  %div1.i = udiv i32 %call.i, %mul.i
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  %20 = and i32 %19, -50266113
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  %and.i = shl i32 %div1.i, 8
  %shl.i = and i32 %and.i, 65280
  %or.i = or i32 %21, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %add.ptr6.i = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %22) #7, !srcloc !85
  %call7.i = tail call i64 @ktime_get() #7
  %add.i.i = add i64 %call7.i, 5000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 181) #7
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %add.ptr2161.i = getelementptr i8, ptr %26, i32 16
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2161.i) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  %28 = and i32 %27, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not63.i = icmp eq i32 %28, 0
  br i1 %tobool.not63.i, label %if.then3.land.lhs.true.i_crit_edge, label %if.then3.if.end9_crit_edge

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then3.land.lhs.true.i_crit_edge:               ; preds = %if.then3
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then42.i.land.lhs.true.i_crit_edge, %if.then3.land.lhs.true.i_crit_edge
  %call29.i = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call29.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call29.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then42.i

if.then42.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #7
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %add.ptr21.i = getelementptr i8, ptr %30, i32 16
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  %32 = and i32 %31, 33554432
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %if.then42.i.land.lhs.true.i_crit_edge, label %if.then42.i.if.end9_crit_edge

if.then42.i.if.end9_crit_edge:                    ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then42.i.land.lhs.true.i_crit_edge:            ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  %add.ptr36.i = getelementptr i8, ptr %34, i32 16
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  %36 = and i32 %35, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool46.not.i = icmp eq i32 %36, 0
  br i1 %tobool46.not.i, label %do.end, label %for.end.i.if.end9_crit_edge

for.end.i.if.end9_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.end:                                           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef -110) #10
  br label %if.end9

if.end9:                                          ; preds = %do.end, %for.end.i.if.end9_crit_edge, %if.then42.i.if.end9_crit_edge, %if.then3.if.end9_crit_edge, %if.then.if.end9_crit_edge
  %mode10 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 7
  %37 = ptrtoint ptr %mode10 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mode10, align 8
  %and = and i32 %38, 11
  %cur_mode = getelementptr inbounds %struct.pic32_sqi, ptr %3, i32 0, i32 13
  %39 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %cur_mode, align 4
  %conv = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv)
  %cmp11.not = icmp eq i32 %and, %conv
  br i1 %cmp11.not, label %if.end9.if.end34_crit_edge, label %if.then13

if.end9.if.end34_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %42, i32 8
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %44 = and i32 %43, -939524097
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %and17 = shl i32 %38, 3
  %46 = and i32 %and17, 16
  %and21 = shl i32 %38, 2
  %47 = and i32 %and21, 32
  %48 = or i32 %46, %47
  %49 = or i32 %48, %45
  %or26 = or i32 %49, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %50 = tail call i32 @llvm.bswap.i32(i32 %or26)
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %3, align 4
  %add.ptr31 = getelementptr i8, ptr %52, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %50) #7, !srcloc !85
  %conv32 = trunc i32 %and to i8
  %53 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv32, ptr %cur_mode, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then13, %if.end9.if.end34_crit_edge
  %54 = ptrtoint ptr %cur_spi to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %1, ptr %cur_spi, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %entry.if.end36_crit_edge
  %55 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn187 = load ptr, ptr %msg, align 4
  %cmp41.not188 = icmp eq ptr %.pn187, %msg
  br i1 %cmp41.not188, label %if.end36.for.end_crit_edge, label %for.body.lr.ph

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end36
  %bd_list_free.i.i = getelementptr inbounds %struct.pic32_sqi, ptr %3, i32 0, i32 9
  %bd_list_used.i.i = getelementptr inbounds %struct.pic32_sqi, ptr %3, i32 0, i32 10
  %prev.i2.i.i.i = getelementptr inbounds %struct.pic32_sqi, ptr %3, i32 0, i32 10, i32 1
  br label %for.body

for.body:                                         ; preds = %pic32_sqi_one_transfer.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn189 = phi ptr [ %.pn187, %for.body.lr.ph ], [ %.pn, %pic32_sqi_one_transfer.exit.for.body_crit_edge ]
  %56 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %spi1, align 4
  %chip_select.i = getelementptr inbounds %struct.spi_device, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %chip_select.i, align 4
  %conv.i = zext i8 %59 to i32
  %shl.i177 = shl i32 %conv.i, 28
  %rx_buf.i = getelementptr i8, ptr %.pn189, i32 -80
  %60 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rx_buf.i, align 4
  %tobool.not.i178 = icmp eq ptr %61, null
  br i1 %tobool.not.i178, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %or.i179 = or i32 %shl.i177, 1048576
  %rx_nbits.i = getelementptr i8, ptr %.pn189, i32 -40
  %62 = ptrtoint ptr %rx_nbits.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load.i = load i8, ptr %rx_nbits.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %tx_nbits.i = getelementptr i8, ptr %.pn189, i32 -40
  %63 = ptrtoint ptr %tx_nbits.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load5.i = load i8, ptr %tx_nbits.i, align 4
  %bf.lshr.i = lshr i8 %bf.load5.i, 3
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %.sink194 = phi i32 [ -64, %if.else.i ], [ -52, %if.then.i ]
  %.sink193 = phi i32 [ -60, %if.else.i ], [ -48, %if.then.i ]
  %bd_ctrl.0.i = phi i32 [ %shl.i177, %if.else.i ], [ %or.i179, %if.then.i ]
  %nbits.0.in.in.i = phi i8 [ %bf.lshr.i, %if.else.i ], [ %bf.load.i, %if.then.i ]
  %nents10.i = getelementptr i8, ptr %.pn189, i32 %.sink193
  %nbits.0.in.i = and i8 %nbits.0.in.in.i, 7
  %nbits.0.i = zext i8 %nbits.0.in.i to i32
  %64 = ptrtoint ptr %nents10.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %nents.0.i = load i32, ptr %nents10.i, align 4
  %and.i180 = and i32 %nbits.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i180)
  %tobool11.not.i = icmp eq i32 %and.i180, 0
  %and15.i = shl nuw nsw i32 %nbits.0.i, 21
  %65 = and i32 %and15.i, 4194304
  %bd_ctrl.1.v.i = select i1 %tobool11.not.i, i32 %65, i32 8388608
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %57, i32 0, i32 7
  %66 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mode.i, align 8
  %and21.i = shl i32 %67, 22
  %68 = and i32 %and21.i, 33554432
  %bd_ctrl.1.i = or i32 %bd_ctrl.0.i, %68
  %69 = or i32 %bd_ctrl.1.i, %bd_ctrl.1.v.i
  %or26.i = or i32 %69, -2147483648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nents.0.i)
  %cmp4.i = icmp sgt i32 %nents.0.i, 0
  br i1 %cmp4.i, label %for.body.lr.ph.i, label %if.end.i.pic32_sqi_one_transfer.exit_crit_edge

if.end.i.pic32_sqi_one_transfer.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pic32_sqi_one_transfer.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %tx_sg.i = getelementptr i8, ptr %.pn189, i32 %.sink194
  %70 = ptrtoint ptr %tx_sg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %sgl.0.i = load ptr, ptr %tx_sg.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end30.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end30.i.for.body.i_crit_edge ]
  %sg.05.i = phi ptr [ %sgl.0.i, %for.body.lr.ph.i ], [ %call36.i, %if.end30.i.for.body.i_crit_edge ]
  %71 = ptrtoint ptr %bd_list_free.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %bd_list_free.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %72, %bd_list_free.i.i
  br i1 %cmp.i.not.i.i, label %for.body.i.pic32_sqi_one_transfer.exit_crit_edge, label %if.end.i.i

for.body.i.pic32_sqi_one_transfer.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pic32_sqi_one_transfer.exit

if.end.i.i:                                       ; preds = %for.body.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %72) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.__list_del_entry.exit.i.i.i_crit_edge

if.end.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i.i.i, align 4
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %72, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev1.i.i.i.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %76, ptr %74, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i.i, %if.end.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %79 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i2.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %72, ptr noundef %80, ptr noundef %bd_list_used.i.i) #7
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.ring_desc_get.exit.i_crit_edge

__list_del_entry.exit.i.i.i.ring_desc_get.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ring_desc_get.exit.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %72, ptr %prev.i2.i.i.i, align 4
  %82 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %bd_list_used.i.i, ptr %72, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %83 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev3.i.i.i.i.i, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %72, ptr %80, align 4
  br label %ring_desc_get.exit.i

ring_desc_get.exit.i:                             ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.ring_desc_get.exit.i_crit_edge
  %tobool28.not.i = icmp eq ptr %72, null
  br i1 %tobool28.not.i, label %ring_desc_get.exit.i.pic32_sqi_one_transfer.exit_crit_edge, label %if.end30.i

ring_desc_get.exit.i.pic32_sqi_one_transfer.exit_crit_edge: ; preds = %ring_desc_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pic32_sqi_one_transfer.exit

if.end30.i:                                       ; preds = %ring_desc_get.exit.i
  %bd31.i = getelementptr inbounds %struct.ring_desc, ptr %72, i32 0, i32 1
  %85 = ptrtoint ptr %bd31.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bd31.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.05.i, i32 0, i32 4
  %87 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dma_length.i, align 4
  %xfer_len.i = getelementptr inbounds %struct.ring_desc, ptr %72, i32 0, i32 3
  %89 = ptrtoint ptr %xfer_len.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %xfer_len.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %or26.i, ptr %86, align 4
  %91 = load i32, ptr %xfer_len.i, align 4
  %or35.i = or i32 %91, %or26.i
  store i32 %or35.i, ptr %86, align 4
  %bd_status.i = getelementptr inbounds %struct.buf_desc, ptr %86, i32 0, i32 1
  %92 = ptrtoint ptr %bd_status.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %bd_status.i, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.05.i, i32 0, i32 3
  %93 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dma_address.i, align 4
  %bd_addr.i = getelementptr inbounds %struct.buf_desc, ptr %86, i32 0, i32 2
  %95 = ptrtoint ptr %bd_addr.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %bd_addr.i, align 4
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %call36.i = tail call ptr @sg_next(ptr noundef %sg.05.i) #7
  %exitcond.not.i = icmp eq i32 %inc.i, %nents.0.i
  br i1 %exitcond.not.i, label %if.end30.i.pic32_sqi_one_transfer.exit_crit_edge, label %if.end30.i.for.body.i_crit_edge

if.end30.i.for.body.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end30.i.pic32_sqi_one_transfer.exit_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pic32_sqi_one_transfer.exit

pic32_sqi_one_transfer.exit:                      ; preds = %if.end30.i.pic32_sqi_one_transfer.exit_crit_edge, %ring_desc_get.exit.i.pic32_sqi_one_transfer.exit_crit_edge, %for.body.i.pic32_sqi_one_transfer.exit_crit_edge, %if.end.i.pic32_sqi_one_transfer.exit_crit_edge
  %96 = ptrtoint ptr %.pn189 to i32
  call void @__asan_load4_noabort(i32 %96)
  %.pn = load ptr, ptr %.pn189, align 4
  %cmp41.not = icmp eq ptr %.pn, %msg
  br i1 %cmp41.not, label %pic32_sqi_one_transfer.exit.for.end_crit_edge, label %pic32_sqi_one_transfer.exit.for.body_crit_edge

pic32_sqi_one_transfer.exit.for.body_crit_edge:   ; preds = %pic32_sqi_one_transfer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

pic32_sqi_one_transfer.exit.for.end_crit_edge:    ; preds = %pic32_sqi_one_transfer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %pic32_sqi_one_transfer.exit.for.end_crit_edge, %if.end36.for.end_crit_edge
  %bd_list_used = getelementptr inbounds %struct.pic32_sqi, ptr %3, i32 0, i32 10
  %prev = getelementptr inbounds %struct.pic32_sqi, ptr %3, i32 0, i32 10, i32 1
  %97 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %prev, align 4
  %bd = getelementptr inbounds %struct.ring_desc, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bd, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %100, align 4
  %or59 = or i32 %102, 1074659328
  store i32 %or59, ptr %100, align 4
  %103 = ptrtoint ptr %bd_list_used to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bd_list_used, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  tail call void @arm_heavy_mb() #7
  %bd_dma = getelementptr inbounds %struct.ring_desc, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %bd_dma to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %bd_dma, align 4
  %107 = tail call i32 @llvm.bswap.i32(i32 %106)
  %108 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %3, align 4
  %add.ptr69 = getelementptr i8, ptr %109, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %107) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %110 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %3, align 4
  %add.ptr.i182 = getelementptr i8, ptr %111, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182, i32 917504) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %112 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %3, align 4
  %add.ptr5.i = getelementptr i8, ptr %113, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 917504) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %114 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %3, align 4
  %add.ptr74 = getelementptr i8, ptr %115, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 117440512) #7, !srcloc !85
  %call76 = tail call i32 @wait_for_completion_timeout(ptr noundef %xfer_done, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp eq i32 %call76, 0
  br i1 %cmp77, label %do.end82, label %for.end.do.body87_crit_edge

for.end.do.body87_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body87

do.end82:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %master83 = getelementptr inbounds %struct.pic32_sqi, ptr %3, i32 0, i32 3
  %116 = ptrtoint ptr %master83 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %master83, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.36) #10
  br label %do.body87

do.body87:                                        ; preds = %do.end82, %for.end.do.body87_crit_edge
  %.sink = phi i32 [ -110, %do.end82 ], [ 0, %for.end.do.body87_crit_edge ]
  %118 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 7
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %.sink, ptr %118, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %120 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %3, align 4
  %add.ptr91 = getelementptr i8, ptr %121, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 0) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %122 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %3, align 4
  %add.ptr.i183 = getelementptr i8, ptr %123, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i183, i32 0) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %124 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %3, align 4
  %add.ptr4.i = getelementptr i8, ptr %125, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #7, !srcloc !85
  %126 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %prev, align 4
  %cmp104.not190 = icmp eq ptr %127, %bd_list_used
  br i1 %cmp104.not190, label %do.body87.for.end115_crit_edge, label %for.body107.lr.ph

do.body87.for.end115_crit_edge:                   ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end115

for.body107.lr.ph:                                ; preds = %do.body87
  %bd_list_free.i = getelementptr inbounds %struct.pic32_sqi, ptr %3, i32 0, i32 9
  br label %for.body107

for.body107:                                      ; preds = %ring_desc_put.exit.for.body107_crit_edge, %for.body107.lr.ph
  %rdesc.0191 = phi ptr [ %127, %for.body107.lr.ph ], [ %next.0, %ring_desc_put.exit.for.body107_crit_edge ]
  %next.0.in = getelementptr inbounds %struct.list_head, ptr %rdesc.0191, i32 0, i32 1
  %128 = ptrtoint ptr %next.0.in to i32
  call void @__asan_load4_noabort(i32 %128)
  %next.0 = load ptr, ptr %next.0.in, align 4
  %xfer_len = getelementptr inbounds %struct.ring_desc, ptr %rdesc.0191, i32 0, i32 3
  %129 = ptrtoint ptr %xfer_len to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %xfer_len, align 4
  %131 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %actual_length, align 4
  %add = add i32 %132, %130
  store i32 %add, ptr %actual_length, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rdesc.0191) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body107.__list_del_entry.exit.i.i_crit_edge

for.body107.__list_del_entry.exit.i.i_crit_edge:  ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #9
  %133 = ptrtoint ptr %next.0.in to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %next.0.in, align 4
  %135 = ptrtoint ptr %rdesc.0191 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %rdesc.0191, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %134, ptr %prev1.i.i.i.i, align 4
  %138 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %136, ptr %134, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %for.body107.__list_del_entry.exit.i.i_crit_edge
  %139 = ptrtoint ptr %bd_list_free.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %bd_list_free.i, align 4
  %call.i.i.i.i184 = tail call zeroext i1 @__list_add_valid(ptr noundef %rdesc.0191, ptr noundef %bd_list_free.i, ptr noundef %140) #7
  br i1 %call.i.i.i.i184, label %if.end.i.i.i.i185, label %__list_del_entry.exit.i.i.ring_desc_put.exit_crit_edge

__list_del_entry.exit.i.i.ring_desc_put.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ring_desc_put.exit

if.end.i.i.i.i185:                                ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %rdesc.0191, ptr %prev1.i.i2.i.i, align 4
  %142 = ptrtoint ptr %rdesc.0191 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %140, ptr %rdesc.0191, align 4
  %143 = ptrtoint ptr %next.0.in to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %bd_list_free.i, ptr %next.0.in, align 4
  %144 = ptrtoint ptr %bd_list_free.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %rdesc.0191, ptr %bd_list_free.i, align 4
  br label %ring_desc_put.exit

ring_desc_put.exit:                               ; preds = %if.end.i.i.i.i185, %__list_del_entry.exit.i.i.ring_desc_put.exit_crit_edge
  %cmp104.not = icmp eq ptr %next.0, %bd_list_used
  br i1 %cmp104.not, label %ring_desc_put.exit.for.end115_crit_edge, label %ring_desc_put.exit.for.body107_crit_edge

ring_desc_put.exit.for.body107_crit_edge:         ; preds = %ring_desc_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body107

ring_desc_put.exit.for.end115_crit_edge:          ; preds = %ring_desc_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end115

for.end115:                                       ; preds = %ring_desc_put.exit.for.end115_crit_edge, %do.body87.for.end115_crit_edge
  %master116 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 2
  %145 = ptrtoint ptr %master116 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %master116, align 4
  tail call void @spi_finalize_current_message(ptr noundef %146) #7
  ret i32 %.sink
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pic32_sqi_prepare_hardware(ptr nocapture noundef readonly %master) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %5 = or i32 %4, 32768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #7, !srcloc !85
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr2 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %9 = or i32 %8, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %9) #7, !srcloc !85
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pic32_sqi_unprepare_hardware(ptr nocapture noundef readonly %master) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %5 = and i32 %4, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #7, !srcloc !85
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr2 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %9 = and i32 %8, -32769
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %9) #7, !srcloc !85
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ring_desc_ring_free(ptr nocapture noundef readonly %sqi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.pic32_sqi, ptr %sqi, i32 0, i32 3
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %bd = getelementptr inbounds %struct.pic32_sqi, ptr %sqi, i32 0, i32 7
  %2 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd, align 4
  %bd_dma = getelementptr inbounds %struct.pic32_sqi, ptr %sqi, i32 0, i32 8
  %4 = ptrtoint ptr %bd_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bd_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %1, i32 noundef 4096, ptr noundef %3, i32 noundef %5, i32 noundef 0) #7
  %ring = getelementptr inbounds %struct.pic32_sqi, ptr %sqi, i32 0, i32 6
  %6 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring, align 4
  tail call void @kfree(ptr noundef %7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_spi_pic32_sqi__236_711_pic32_sqi_driver_init6, !1, !"__initcall__kmod_spi_pic32_sqi__236_711_pic32_sqi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-pic32-sqi.c", i32 711, i32 1}
!2 = !{ptr @__exitcall_pic32_sqi_driver_exit, !1, !"__exitcall_pic32_sqi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-pic32-sqi.c", i32 713, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-pic32-sqi.c", i32 714, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-pic32-sqi.c", i32 715, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-pic32-sqi.c", i32 704, i32 11}
!12 = !{ptr @pic32_sqi_driver, !13, !"pic32_sqi_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-pic32-sqi.c", i32 702, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-pic32-sqi.c", i32 596, i32 42}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-pic32-sqi.c", i32 599, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pic32_sqi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @pic32_sqi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-pic32-sqi.c", i32 603, i32 43}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-pic32-sqi.c", i32 606, i32 3}
!28 = !{ptr @pic32_sqi_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @pic32_sqi_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-pic32-sqi.c", i32 612, i32 3}
!32 = !{ptr @pic32_sqi_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @pic32_sqi_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-pic32-sqi.c", i32 618, i32 3}
!36 = !{ptr @pic32_sqi_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @pic32_sqi_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/spi/spi-pic32-sqi.c", i32 631, i32 3}
!40 = !{ptr @pic32_sqi_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @pic32_sqi_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/spi/spi-pic32-sqi.c", i32 639, i32 3}
!44 = !{ptr @pic32_sqi_probe._entry.20, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @pic32_sqi_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/spi/spi-pic32-sqi.c", i32 660, i32 3}
!48 = !{ptr @pic32_sqi_probe._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @pic32_sqi_probe._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @init_completion.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../include/linux/completion.h", i32 87, i32 2}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/spi/spi-pic32-sqi.c", i32 465, i32 3}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ring_desc_ring_alloc._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @ring_desc_ring_alloc._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/spi/spi-pic32-sqi.c", i32 365, i32 5}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @pic32_sqi_one_message._entry, !59, !"_entry", i1 false, i1 false}
!63 = !{ptr @pic32_sqi_one_message._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/spi/spi-pic32-sqi.c", i32 389, i32 4}
!66 = !{ptr @pic32_sqi_one_message._entry.32, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @pic32_sqi_one_message._entry_ptr.34, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/spi/spi-pic32-sqi.c", i32 415, i32 3}
!70 = !{ptr @pic32_sqi_one_message._entry.35, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @pic32_sqi_one_message._entry_ptr.37, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @pic32_sqi_of_ids, !73, !"pic32_sqi_of_ids", i1 false, i1 false}
!73 = !{!"../drivers/spi/spi-pic32-sqi.c", i32 696, i32 34}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 649070, i64 649131}
!84 = !{i64 2154399571}
!85 = !{i64 6264804}
!86 = !{i64 6265222}
!87 = !{i64 2154401887}
!88 = !{i64 2154402369}
!89 = !{i64 2154371031}
!90 = !{i64 2154371415}
!91 = !{i64 651802}
!92 = !{!"branch_weights", i32 1, i32 2000}
!93 = !{i64 652087}
!94 = !{i64 2154404244}
!95 = !{i64 2154404480}
!96 = !{i64 2154405141}
!97 = !{i64 2154405377}
!98 = !{i64 2154406038}
!99 = !{i64 2154406264}
!100 = !{i64 2154406748}
!101 = !{i64 2154407138}
!102 = !{i64 2154372070}
!103 = !{i64 2154372557}
!104 = !{i64 2154373766}
!105 = !{i64 2154366749}
!106 = !{i64 2154367058}
!107 = !{i64 2154368949}
!108 = !{i64 2154369431}
!109 = !{i64 2154378691}
!110 = !{i64 2154379549}
!111 = !{i64 2154388542}
!112 = !{i64 2154370073}
!113 = !{i64 2154370469}
!114 = !{i64 2154389210}
!115 = !{i64 2154391254}
!116 = !{i64 2154363480}
!117 = !{i64 2154364331}
!118 = !{i64 2154365385}
!119 = !{i64 2154366238}
