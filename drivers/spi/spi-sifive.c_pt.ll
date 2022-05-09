; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-sifive.c_pt.bc'
source_filename = "../drivers/spi/spi-sifive.c"
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
%struct.sifive_spi = type { ptr, ptr, i32, i32, %struct.completion }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_spi_sifive__238_444_sifive_spi_driver_init6 = internal global ptr @sifive_spi_driver_init, section ".initcall6.init", align 4
@sifive_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sifive_spi_probe, ptr @sifive_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sifive_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sifive_spi_driver_exit = internal global ptr @sifive_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [51 x i8] c"spi_sifive.author=SiFive, Inc. <sifive@sifive.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [41 x i8] c"spi_sifive.description=SiFive SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [39 x i8] c"spi_sifive.file=drivers/spi/spi-sifive\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [23 x i8] c"spi_sifive.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sifive_spi\00", [21 x i8] zeroinitializer }, align 32
@sifive_spi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sifive,spi0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sifive_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 301, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"out of memory\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sifive_spi_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/spi/spi-sifive.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sifive_spi_probe._entry_ptr = internal global ptr @sifive_spi_probe._entry, section ".printk_index", align 4
@sifive_spi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 317, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to find bus clock\0A\00", [38 x i8] zeroinitializer }, align 32
@sifive_spi_probe._entry_ptr.8 = internal global ptr @sifive_spi_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sifive,fifo-depth\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sifive,max-bits-per-word\00", [39 x i8] zeroinitializer }, align 32
@sifive_spi_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 340, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Only 8bit SPI words supported by the driver\0A\00", [51 x i8] zeroinitializer }, align 32
@sifive_spi_probe._entry_ptr.13 = internal global ptr @sifive_spi_probe._entry.11, section ".printk_index", align 4
@sifive_spi_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 348, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to enable bus clock\0A\00", [36 x i8] zeroinitializer }, align 32
@sifive_spi_probe._entry_ptr.16 = internal global ptr @sifive_spi_probe._entry.14, section ".printk_index", align 4
@sifive_spi_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 358, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not auto probe CS lines\0A\00", [33 x i8] zeroinitializer }, align 32
@sifive_spi_probe._entry_ptr.19 = internal global ptr @sifive_spi_probe._entry.17, section ".printk_index", align 4
@sifive_spi_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 365, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid number of spi slaves\0A\00", [34 x i8] zeroinitializer }, align 32
@sifive_spi_probe._entry_ptr.22 = internal global ptr @sifive_spi_probe._entry.20, section ".printk_index", align 4
@sifive_spi_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 395, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to bind to interrupt\0A\00", [35 x i8] zeroinitializer }, align 32
@sifive_spi_probe._entry_ptr.25 = internal global ptr @sifive_spi_probe._entry.23, section ".printk_index", align 4
@sifive_spi_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 400, ptr @.str.28, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mapped; irq=%d, cs=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sifive_spi_probe._entry_ptr.29 = internal global ptr @sifive_spi_probe._entry.26, section ".printk_index", align 4
@sifive_spi_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 404, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"spi_register_master failed\0A\00", [36 x i8] zeroinitializer }, align 32
@sifive_spi_probe._entry_ptr.32 = internal global ptr @sifive_spi_probe._entry.30, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@sifive_spi_tx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sifive_spi_rx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"sifive_spi_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 436, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 440, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"sifive_spi_of_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 430, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 301, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 317, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 330, i32 44 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 336, i32 44 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 340, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 348, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 358, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 365, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 395, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 399, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private constant [28 x i8] c"../drivers/spi/spi-sifive.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 404, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 87, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_sifive_spi_driver_exit, ptr @__initcall__kmod_spi_sifive__238_444_sifive_spi_driver_init6, ptr @sifive_spi_driver_exit, ptr @sifive_spi_probe._entry, ptr @sifive_spi_probe._entry.11, ptr @sifive_spi_probe._entry.14, ptr @sifive_spi_probe._entry.17, ptr @sifive_spi_probe._entry.20, ptr @sifive_spi_probe._entry.23, ptr @sifive_spi_probe._entry.26, ptr @sifive_spi_probe._entry.30, ptr @sifive_spi_probe._entry.6, ptr @sifive_spi_probe._entry_ptr, ptr @sifive_spi_probe._entry_ptr.13, ptr @sifive_spi_probe._entry_ptr.16, ptr @sifive_spi_probe._entry_ptr.19, ptr @sifive_spi_probe._entry_ptr.22, ptr @sifive_spi_probe._entry_ptr.25, ptr @sifive_spi_probe._entry_ptr.29, ptr @sifive_spi_probe._entry_ptr.32, ptr @sifive_spi_probe._entry_ptr.8, ptr @sifive_spi_driver, ptr @.str, ptr @sifive_spi_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @init_completion.__key, ptr @.str.33], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_spi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_spi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_spi_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_spi_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_spi_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_spi_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_spi_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_spi_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_spi_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sifive_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sifive_spi_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sifive_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sifive_spi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sifive_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %max_bits_per_word = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_bits_per_word) #7
  %0 = ptrtoint ptr %max_bits_per_word to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %max_bits_per_word, align 4, !annotation !77
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 72, i1 noundef zeroext false) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %done = getelementptr inbounds %struct.sifive_spi, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.sifive_spi, ptr %2, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_completion.__key) #7
  %driver_data.i.i182 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i182 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i182, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %2, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call3 to i32
  br label %spi_controller_put.exit

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.sifive_spi, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11, ptr %clk, align 4
  %cmp.i183 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i183, label %do.end17, label %if.end21

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %spi_controller_put.exit

if.end21:                                         ; preds = %if.end9
  %call22 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %if.end21.spi_controller_put.exit_crit_edge, label %if.end24

if.end21.spi_controller_put.exit_crit_edge:       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_controller_put.exit

if.end24:                                         ; preds = %if.end21
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %fifo_depth = getelementptr inbounds %struct.sifive_spi, ptr %2, i32 0, i32 2
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.9, ptr noundef %fifo_depth, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp27 = icmp slt i32 %call.i.i, 0
  br i1 %cmp27, label %if.then28, label %if.end24.if.end30_crit_edge

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %fifo_depth to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %fifo_depth, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end24.if.end30_crit_edge
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call.i.i184 = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.10, ptr noundef nonnull %max_bits_per_word, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i184)
  %tobool34.not = icmp sgt i32 %call.i.i184, -1
  br i1 %tobool34.not, label %land.lhs.true, label %if.end30.if.end41_crit_edge

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end30
  %16 = ptrtoint ptr %max_bits_per_word to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_bits_per_word, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %17)
  %cmp35 = icmp ult i32 %17, 8
  br i1 %cmp35, label %do.end39, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

do.end39:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  br label %spi_controller_put.exit

if.end41:                                         ; preds = %land.lhs.true.if.end41_crit_edge, %if.end30.if.end41_crit_edge
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  %call43 = call fastcc i32 @clk_prepare_enable(ptr noundef %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end50, label %do.end48

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  br label %spi_controller_put.exit

if.end50:                                         ; preds = %if.end41
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %2, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 20
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !78
  %23 = call i32 @llvm.bswap.i32(i32 %22) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %cs_inactive = getelementptr inbounds %struct.sifive_spi, ptr %2, i32 0, i32 3
  %24 = ptrtoint ptr %cs_inactive to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %cs_inactive, align 4
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %2, align 4
  %add.ptr.i185 = getelementptr i8, ptr %26, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185, i32 -1) #7, !srcloc !81
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %2, align 4
  %add.ptr.i186 = getelementptr i8, ptr %28, i32 20
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i186) #7, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %30 = ptrtoint ptr %cs_inactive to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cs_inactive, align 4
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %2, align 4
  %add.ptr.i187 = getelementptr i8, ptr %33, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @arm_heavy_mb() #7
  %34 = call i32 @llvm.bswap.i32(i32 %31) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i187, i32 %34) #7, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool54.not = icmp eq i32 %29, 0
  br i1 %tobool54.not, label %if.end50.disable_clk_crit_edge, label %if.end74

if.end50.disable_clk_crit_edge:                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk

if.end74:                                         ; preds = %if.end50
  %35 = call i32 @llvm.bswap.i32(i32 %29) #7
  %36 = call i32 @llvm.ctlz.i32(i32 %35, i1 false) #7, !range !82
  %37 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_node, align 8
  %of_node78 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %39 = ptrtoint ptr %of_node78 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %of_node78, align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %40 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %id, align 4
  %conv79 = trunc i32 %41 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %42 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv79, ptr %bus_num, align 8
  %43 = trunc i32 %36 to i16
  %conv80 = sub nsw i16 32, %43
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %44 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv80, ptr %num_chipselect, align 2
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %45 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3855, ptr %mode_bits, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %46 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 128, ptr %bits_per_word_mask, align 8
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 10
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 48, ptr %flags, align 4
  %prepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 47
  %48 = ptrtoint ptr %prepare_message to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @sifive_spi_prepare_message, ptr %prepare_message, align 4
  %set_cs = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 50
  %49 = ptrtoint ptr %set_cs to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @sifive_spi_set_cs, ptr %set_cs, align 8
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %50 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @sifive_spi_transfer_one, ptr %transfer_one, align 4
  %dma_mask = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %51 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %dma_mask, align 8
  call fastcc void @sifive_spi_init(ptr noundef %2)
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %52 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %53, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end74.dev_name.exit_crit_edge

if.end74.dev_name.exit_crit_edge:                 ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end74.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %55, %if.end.i ], [ %53, %if.end74.dev_name.exit_crit_edge ]
  %call.i188 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call22, ptr noundef nonnull @sifive_spi_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %tobool86.not = icmp eq i32 %call.i188, 0
  br i1 %tobool86.not, label %do.end95, label %dev_name.exit.disable_clk_crit_edge

dev_name.exit.disable_clk_crit_edge:              ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk

do.end95:                                         ; preds = %dev_name.exit
  %56 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %num_chipselect, align 2
  %conv98 = zext i16 %57 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call22, i32 noundef %conv98) #10
  %call100 = call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %do.end95.disable_clk_crit_edge, label %do.end95.cleanup_crit_edge

do.end95.cleanup_crit_edge:                       ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end95.disable_clk_crit_edge:                   ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk

disable_clk:                                      ; preds = %do.end95.disable_clk_crit_edge, %dev_name.exit.disable_clk_crit_edge, %if.end50.disable_clk_crit_edge
  %.str.31.sink = phi ptr [ @.str.18, %if.end50.disable_clk_crit_edge ], [ @.str.24, %dev_name.exit.disable_clk_crit_edge ], [ @.str.31, %do.end95.disable_clk_crit_edge ]
  %ret.0 = phi i32 [ -22, %if.end50.disable_clk_crit_edge ], [ %call.i188, %dev_name.exit.disable_clk_crit_edge ], [ %call100, %do.end95.disable_clk_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.31.sink) #10
  %58 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %59) #7
  call void @clk_unprepare(ptr noundef %59) #7
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %disable_clk, %do.end48, %do.end39, %if.end21.spi_controller_put.exit_crit_edge, %do.end17, %if.then6
  %ret.1 = phi i32 [ %6, %if.then6 ], [ %10, %do.end17 ], [ %call43, %do.end48 ], [ %ret.0, %disable_clk ], [ -22, %do.end39 ], [ %call22, %if.end21.spi_controller_put.exit_crit_edge ]
  call void @put_device(ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %do.end95.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.1, %spi_controller_put.exit ], [ -12, %do.end ], [ 0, %do.end95.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_bits_per_word) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sifive_spi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i3, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !81
  %clk = getelementptr inbounds %struct.sifive_spi, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sifive_spi_prepare_message(ptr nocapture noundef readonly %master, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi1, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %chip_select3 = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %chip_select3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %chip_select3, align 4
  %conv4 = zext i8 %7 to i32
  %shl5 = shl nuw i32 1, %conv4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %shl5, -1
  %cs_inactive = getelementptr inbounds %struct.sifive_spi, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %cs_inactive to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cs_inactive, align 4
  %and2 = and i32 %9, %neg
  store i32 %and2, ptr %cs_inactive, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cs_inactive6 = getelementptr inbounds %struct.sifive_spi, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %cs_inactive6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cs_inactive6, align 4
  %or = or i32 %shl5, %11
  store i32 %or, ptr %cs_inactive6, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cs_inactive7 = getelementptr inbounds %struct.sifive_spi, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %cs_inactive7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cs_inactive7, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #7, !srcloc !81
  %chip_select8 = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %chip_select8 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %chip_select8, align 4
  %conv9 = zext i8 %18 to i32
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr.i21 = getelementptr i8, ptr %20, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %21 = shl nuw i32 %conv9, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %21) #7, !srcloc !81
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mode, align 8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %add.ptr.i22 = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %and11 = shl i32 %23, 24
  %26 = and i32 %and11, 50331648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %26) #7, !srcloc !81
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sifive_spi_set_cs(ptr nocapture noundef readonly %device, i1 noundef zeroext %is_high) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %device, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %device, i32 0, i32 7
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %spec.select = xor i1 %tobool.not, %is_high
  %cond = select i1 %spec.select, i32 0, i32 33554432
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %cond) #7, !srcloc !81
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sifive_spi_transfer_one(ptr nocapture noundef readonly %master, ptr nocapture noundef readonly %device, ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk.i = getelementptr inbounds %struct.sifive_spi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %3) #7
  %shr.i = lshr i32 %call.i, 1
  %speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %4 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed_hz.i, align 4
  %add.i = add i32 %5, -1
  %sub.i = add i32 %add.i, %shr.i
  %div.i = udiv i32 %sub.i, %5
  %sub2.i = add i32 %div.i, 4095
  %and.i = and i32 %sub2.i, 4095
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %8) #7, !srcloc !81
  %rx_nbits.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 7
  %9 = ptrtoint ptr %rx_nbits.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %rx_nbits.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 7
  %bf.lshr.i = lshr i8 %bf.load.i, 3
  %bf.clear4.i = and i8 %bf.lshr.i, 7
  %10 = tail call i8 @llvm.umax.i8(i8 %bf.clear.i, i8 %bf.clear4.i) #7
  %cond.i = zext i8 %10 to i32
  %bits_per_word.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %11 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bits_per_word.i, align 1
  %conv.i = zext i8 %12 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %13 = zext i32 %cond.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cond.i, label %entry.sifive_spi_prep_transfer.exit_crit_edge [
    i32 4, label %sw.bb.i
    i32 2, label %sw.bb6.i
  ]

entry.sifive_spi_prep_transfer.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sifive_spi_prep_transfer.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %shl.i, 2
  br label %sifive_spi_prep_transfer.exit

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or7.i = or i32 %shl.i, 1
  br label %sifive_spi_prep_transfer.exit

sifive_spi_prep_transfer.exit:                    ; preds = %sw.bb6.i, %sw.bb.i, %entry.sifive_spi_prep_transfer.exit_crit_edge
  %cr.0.i = phi i32 [ %or7.i, %sw.bb6.i ], [ %or.i, %sw.bb.i ], [ %shl.i, %entry.sifive_spi_prep_transfer.exit_crit_edge ]
  %mode9.i = getelementptr inbounds %struct.spi_device, ptr %device, i32 0, i32 7
  %14 = ptrtoint ptr %mode9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode9.i, align 8
  %and10.i = lshr i32 %15, 1
  %16 = and i32 %and10.i, 4
  %17 = or i32 %16, %cr.0.i
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %18 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_buf.i, align 4
  %tobool12.not.i = icmp eq ptr %19, null
  %or14.i = or i32 %17, 8
  %cr.2.i = select i1 %tobool12.not.i, i32 %or14.i, i32 %17
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %cr.2.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %22) #7, !srcloc !81
  %fifo_depth.i = getelementptr inbounds %struct.sifive_spi, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fifo_depth.i, align 4
  %mul.i = mul i32 %24, 1600000
  %25 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %speed_hz.i, align 4
  %mul17.i = mul i32 %26, %cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %mul17.i)
  %cmp18.i.not = icmp ugt i32 %mul.i, %mul17.i
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not60 = icmp eq i32 %28, 0
  br i1 %tobool.not60, label %sifive_spi_prep_transfer.exit.while.end_crit_edge, label %while.body.lr.ph

sifive_spi_prep_transfer.exit.while.end_crit_edge: ; preds = %sifive_spi_prep_transfer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %sifive_spi_prep_transfer.exit
  %29 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_buf.i, align 4
  %31 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %t, align 4
  %done.i = getelementptr inbounds %struct.sifive_spi, ptr %1, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %remaining_words.063 = phi i32 [ %28, %while.body.lr.ph ], [ %sub11, %if.end.while.body_crit_edge ]
  %rx_ptr.062 = phi ptr [ %30, %while.body.lr.ph ], [ %rx_ptr.2, %if.end.while.body_crit_edge ]
  %tx_ptr.061 = phi ptr [ %32, %while.body.lr.ph ], [ %tx_ptr.1.lcssa, %if.end.while.body_crit_edge ]
  %33 = ptrtoint ptr %fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fifo_depth.i, align 4
  %35 = tail call i32 @llvm.umin.i32(i32 %remaining_words.063, i32 %34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp253.not = icmp eq i32 %35, 0
  br i1 %cmp253.not, label %while.body.for.end_crit_edge, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %sifive_spi_tx.exit.for.body_crit_edge, %while.body.for.body_crit_edge
  %i.055 = phi i32 [ %inc, %sifive_spi_tx.exit.for.body_crit_edge ], [ 0, %while.body.for.body_crit_edge ]
  %tx_ptr.154 = phi ptr [ %incdec.ptr, %sifive_spi_tx.exit.for.body_crit_edge ], [ %tx_ptr.061, %while.body.for.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %tx_ptr.154, i32 1
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %add.ptr.i.i33 = getelementptr i8, ptr %37, i32 72
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %.mask.i = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %cmp.not.i = icmp eq i32 %.mask.i, 0
  br i1 %cmp.not.i, label %for.body.sifive_spi_tx.exit_crit_edge, label %land.rhs.i

for.body.sifive_spi_tx.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sifive_spi_tx.exit

land.rhs.i:                                       ; preds = %for.body
  %.b39.i = load i1, ptr @sifive_spi_tx.__already_done, align 1
  br i1 %.b39.i, label %land.rhs.i.sifive_spi_tx.exit_crit_edge, label %if.then.i, !prof !83

land.rhs.i.sifive_spi_tx.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sifive_spi_tx.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @sifive_spi_tx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 241, i32 noundef 9, ptr noundef null) #7
  br label %sifive_spi_tx.exit

sifive_spi_tx.exit:                               ; preds = %if.then.i, %land.rhs.i.sifive_spi_tx.exit_crit_edge, %for.body.sifive_spi_tx.exit_crit_edge
  %39 = ptrtoint ptr %tx_ptr.154 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %tx_ptr.154, align 1
  %conv.i34 = zext i8 %40 to i32
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %42, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %43 = shl nuw i32 %conv.i34, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 %43) #7, !srcloc !81
  %inc = add nuw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %35
  br i1 %exitcond.not, label %sifive_spi_tx.exit.for.end_crit_edge, label %sifive_spi_tx.exit.for.body_crit_edge

sifive_spi_tx.exit.for.body_crit_edge:            ; preds = %sifive_spi_tx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

sifive_spi_tx.exit.for.end_crit_edge:             ; preds = %sifive_spi_tx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %sifive_spi_tx.exit.for.end_crit_edge, %while.body.for.end_crit_edge
  %tx_ptr.1.lcssa = phi ptr [ %tx_ptr.061, %while.body.for.end_crit_edge ], [ %incdec.ptr, %sifive_spi_tx.exit.for.end_crit_edge ]
  %tobool3.not = icmp eq ptr %rx_ptr.062, null
  br i1 %tobool3.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.end
  %sub = add i32 %35, -1
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %45, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %46 = tail call i32 @llvm.bswap.i32(i32 %sub) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %46) #7, !srcloc !81
  br i1 %cmp18.i.not, label %if.else.i, label %if.then.do.body.i_crit_edge

if.then.do.body.i_crit_edge:                      ; preds = %if.then
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then.do.body.i_crit_edge
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %48, i32 116
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %50 = and i32 %49, 33554432
  %tobool1.not.i = icmp eq i32 %50, 0
  br i1 %tobool1.not.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.sifive_spi_wait.exit_crit_edge

do.body.i.sifive_spi_wait.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sifive_spi_wait.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %done.i, align 4
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %53, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 33554432) #7, !srcloc !81
  tail call void @wait_for_completion(ptr noundef %done.i) #7
  br label %sifive_spi_wait.exit

sifive_spi_wait.exit:                             ; preds = %if.else.i, %do.body.i.sifive_spi_wait.exit_crit_edge
  br i1 %cmp253.not, label %sifive_spi_wait.exit.if.end_crit_edge, label %sifive_spi_wait.exit.for.body6_crit_edge

sifive_spi_wait.exit.for.body6_crit_edge:         ; preds = %sifive_spi_wait.exit
  br label %for.body6

sifive_spi_wait.exit.if.end_crit_edge:            ; preds = %sifive_spi_wait.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body6:                                        ; preds = %sifive_spi_rx.exit.for.body6_crit_edge, %sifive_spi_wait.exit.for.body6_crit_edge
  %i.158 = phi i32 [ %inc9, %sifive_spi_rx.exit.for.body6_crit_edge ], [ 0, %sifive_spi_wait.exit.for.body6_crit_edge ]
  %rx_ptr.157 = phi ptr [ %incdec.ptr7, %sifive_spi_rx.exit.for.body6_crit_edge ], [ %rx_ptr.062, %sifive_spi_wait.exit.for.body6_crit_edge ]
  %incdec.ptr7 = getelementptr i8, ptr %rx_ptr.157, i32 1
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %add.ptr.i.i37 = getelementptr i8, ptr %55, i32 76
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i37) #7, !srcloc !78
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %cmp.not.i38 = icmp sgt i32 %57, -1
  br i1 %cmp.not.i38, label %for.body6.sifive_spi_rx.exit_crit_edge, label %land.rhs.i40

for.body6.sifive_spi_rx.exit_crit_edge:           ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sifive_spi_rx.exit

land.rhs.i40:                                     ; preds = %for.body6
  %.b39.i39 = load i1, ptr @sifive_spi_rx.__already_done, align 1
  br i1 %.b39.i39, label %land.rhs.i40.sifive_spi_rx.exit_crit_edge, label %if.then.i41, !prof !83

land.rhs.i40.sifive_spi_rx.exit_crit_edge:        ; preds = %land.rhs.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %sifive_spi_rx.exit

if.then.i41:                                      ; preds = %land.rhs.i40
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @sifive_spi_rx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 250, i32 noundef 9, ptr noundef null) #7
  br label %sifive_spi_rx.exit

sifive_spi_rx.exit:                               ; preds = %if.then.i41, %land.rhs.i40.sifive_spi_rx.exit_crit_edge, %for.body6.sifive_spi_rx.exit_crit_edge
  %conv.i42 = trunc i32 %57 to i8
  %58 = ptrtoint ptr %rx_ptr.157 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv.i42, ptr %rx_ptr.157, align 1
  %inc9 = add nuw i32 %i.158, 1
  %exitcond65.not = icmp eq i32 %inc9, %35
  br i1 %exitcond65.not, label %sifive_spi_rx.exit.if.end_crit_edge, label %sifive_spi_rx.exit.for.body6_crit_edge

sifive_spi_rx.exit.for.body6_crit_edge:           ; preds = %sifive_spi_rx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6

sifive_spi_rx.exit.if.end_crit_edge:              ; preds = %sifive_spi_rx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %for.end
  br i1 %cmp18.i.not, label %if.else.i50, label %if.else.do.body.i47_crit_edge

if.else.do.body.i47_crit_edge:                    ; preds = %if.else
  br label %do.body.i47

do.body.i47:                                      ; preds = %do.body.i47.do.body.i47_crit_edge, %if.else.do.body.i47_crit_edge
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %add.ptr.i.i44 = getelementptr i8, ptr %60, i32 116
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i44) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %62 = and i32 %61, 16777216
  %tobool1.not.i46 = icmp eq i32 %62, 0
  br i1 %tobool1.not.i46, label %do.body.i47.do.body.i47_crit_edge, label %do.body.i47.if.end_crit_edge

do.body.i47.if.end_crit_edge:                     ; preds = %do.body.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body.i47.do.body.i47_crit_edge:                ; preds = %do.body.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i47

if.else.i50:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %done.i, align 4
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %add.ptr.i7.i49 = getelementptr i8, ptr %65, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i49, i32 16777216) #7, !srcloc !81
  tail call void @wait_for_completion(ptr noundef %done.i) #7
  br label %if.end

if.end:                                           ; preds = %if.else.i50, %do.body.i47.if.end_crit_edge, %sifive_spi_rx.exit.if.end_crit_edge, %sifive_spi_wait.exit.if.end_crit_edge
  %rx_ptr.2 = phi ptr [ null, %if.else.i50 ], [ %rx_ptr.062, %sifive_spi_wait.exit.if.end_crit_edge ], [ null, %do.body.i47.if.end_crit_edge ], [ %incdec.ptr7, %sifive_spi_rx.exit.if.end_crit_edge ]
  %sub11 = sub i32 %remaining_words.063, %35
  %tobool.not = icmp eq i32 %sub11, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %sifive_spi_prep_transfer.exit.while.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sifive_spi_init(ptr nocapture noundef readonly %spi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !81
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  %add.ptr.i6 = getelementptr i8, ptr %3, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 16777216) #7, !srcloc !81
  %4 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi, align 4
  %add.ptr.i7 = getelementptr i8, ptr %5, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 0) #7, !srcloc !81
  %6 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spi, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 16777472) #7, !srcloc !81
  %8 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spi, align 4
  %add.ptr.i9 = getelementptr i8, ptr %9, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 16777216) #7, !srcloc !81
  %10 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi, align 4
  %add.ptr.i10 = getelementptr i8, ptr %11, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 0) #7, !srcloc !81
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sifive_spi_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 116
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %3 = and i32 %2, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  %add.ptr.i4 = getelementptr i8, ptr %5, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 0) #7, !srcloc !81
  %done = getelementptr inbounds %struct.sifive_spi, ptr %dev_id, i32 0, i32 4
  tail call void @complete(ptr noundef %done) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_spi_sifive__238_444_sifive_spi_driver_init6, !1, !"__initcall__kmod_spi_sifive__238_444_sifive_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-sifive.c", i32 444, i32 1}
!2 = !{ptr @__exitcall_sifive_spi_driver_exit, !1, !"__exitcall_sifive_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author239, !4, !"__UNIQUE_ID_author239", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-sifive.c", i32 446, i32 1}
!5 = !{ptr @__UNIQUE_ID_description240, !6, !"__UNIQUE_ID_description240", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-sifive.c", i32 447, i32 1}
!7 = !{ptr @__UNIQUE_ID_file241, !8, !"__UNIQUE_ID_file241", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-sifive.c", i32 448, i32 1}
!9 = !{ptr @__UNIQUE_ID_license242, !8, !"__UNIQUE_ID_license242", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-sifive.c", i32 440, i32 11}
!12 = !{ptr @sifive_spi_driver, !13, !"sifive_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-sifive.c", i32 436, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-sifive.c", i32 301, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sifive_spi_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sifive_spi_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/spi/spi-sifive.c", i32 317, i32 3}
!24 = !{ptr @sifive_spi_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sifive_spi_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-sifive.c", i32 330, i32 44}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-sifive.c", i32 336, i32 44}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-sifive.c", i32 340, i32 3}
!32 = !{ptr @sifive_spi_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sifive_spi_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-sifive.c", i32 348, i32 3}
!36 = !{ptr @sifive_spi_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sifive_spi_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/spi/spi-sifive.c", i32 358, i32 3}
!40 = !{ptr @sifive_spi_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sifive_spi_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/spi/spi-sifive.c", i32 365, i32 3}
!44 = !{ptr @sifive_spi_probe._entry.20, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @sifive_spi_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/spi/spi-sifive.c", i32 395, i32 3}
!48 = !{ptr @sifive_spi_probe._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @sifive_spi_probe._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/spi/spi-sifive.c", i32 399, i32 2}
!52 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @sifive_spi_probe._entry.26, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @sifive_spi_probe._entry_ptr.29, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/spi/spi-sifive.c", i32 404, i32 3}
!57 = !{ptr @sifive_spi_probe._entry.30, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @sifive_spi_probe._entry_ptr.32, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @init_completion.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../include/linux/completion.h", i32 87, i32 2}
!61 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../drivers/spi/spi-sifive.c", i32 240, i32 2}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../drivers/spi/spi-sifive.c", i32 250, i32 2}
!66 = !{ptr @sifive_spi_of_match, !67, !"sifive_spi_of_match", i1 false, i1 false}
!67 = !{!"../drivers/spi/spi-sifive.c", i32 430, i32 34}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"auto-init"}
!78 = !{i64 4659060}
!79 = !{i64 2152199409}
!80 = !{i64 2152200764}
!81 = !{i64 4658642}
!82 = !{i32 0, i32 33}
!83 = !{!"branch_weights", i32 2000, i32 1}
