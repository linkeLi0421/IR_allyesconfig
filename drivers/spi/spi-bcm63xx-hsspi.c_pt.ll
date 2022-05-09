; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-bcm63xx-hsspi.c_pt.bc'
source_filename = "../drivers/spi/spi-bcm63xx-hsspi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.bcm63xx_hsspi = type { %struct.completion, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__initcall__kmod_spi_bcm63xx_hsspi__239_533_bcm63xx_hsspi_driver_init6 = internal global ptr @bcm63xx_hsspi_driver_init, section ".initcall6.init", align 4
@bcm63xx_hsspi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm63xx_hsspi_probe, ptr @bcm63xx_hsspi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm63xx_hsspi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm63xx_hsspi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm63xx_hsspi_driver_exit = internal global ptr @bcm63xx_hsspi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias240 = internal constant [47 x i8] c"spi_bcm63xx_hsspi.alias=platform:bcm63xx_hsspi\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [80 x i8] c"spi_bcm63xx_hsspi.description=Broadcom BCM63xx High Speed SPI Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [57 x i8] c"spi_bcm63xx_hsspi.author=Jonas Gorski <jogo@openwrt.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [53 x i8] c"spi_bcm63xx_hsspi.file=drivers/spi/spi-bcm63xx-hsspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [30 x i8] c"spi_bcm63xx_hsspi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcm63xx-hsspi\00", [18 x i8] zeroinitializer }, align 32
@bcm63xx_hsspi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm6328-hsspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bcm63xx_hsspi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @bcm63xx_hsspi_suspend, ptr @bcm63xx_hsspi_resume, ptr @bcm63xx_hsspi_suspend, ptr @bcm63xx_hsspi_resume, ptr @bcm63xx_hsspi_suspend, ptr @bcm63xx_hsspi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hsspi\00", [26 x i8] zeroinitializer }, align 32
@bcm63xx_hsspi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 364, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to reset device: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcm63xx_hsspi_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/spi/spi-bcm63xx-hsspi.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm63xx_hsspi_probe._entry_ptr = internal global ptr @bcm63xx_hsspi_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pll\00", [28 x i8] zeroinitializer }, align 32
@bcm63xx_hsspi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&bs->bus_mutex\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"num-cs\00", [25 x i8] zeroinitializer }, align 32
@bcm63xx_hsspi_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 412, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"unsupported number of cs (%i), reducing to 8\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bcm63xx_hsspi_probe._entry_ptr.13 = internal global ptr @bcm63xx_hsspi_probe._entry.10, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@bcm63xx_hsspi_do_txrx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 210, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"transfer timed out!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bcm63xx_hsspi_do_txrx\00", [42 x i8] zeroinitializer }, align 32
@bcm63xx_hsspi_do_txrx._entry_ptr = internal global ptr @bcm63xx_hsspi_do_txrx._entry, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant [21 x i8] c"bcm63xx_hsspi_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 523, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 525, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [23 x i8] c"bcm63xx_hsspi_of_match\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 517, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [21 x i8] c"bcm63xx_hsspi_pm_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 514, i32 8 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 349, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 364, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 370, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 402, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 409, i32 37 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 411, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 87, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [35 x i8] c"../drivers/spi/spi-bcm63xx-hsspi.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 210, i32 4 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_alias240, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_bcm63xx_hsspi_driver_exit, ptr @__initcall__kmod_spi_bcm63xx_hsspi__239_533_bcm63xx_hsspi_driver_init6, ptr @bcm63xx_hsspi_do_txrx._entry, ptr @bcm63xx_hsspi_do_txrx._entry_ptr, ptr @bcm63xx_hsspi_driver_exit, ptr @bcm63xx_hsspi_probe._entry, ptr @bcm63xx_hsspi_probe._entry.10, ptr @bcm63xx_hsspi_probe._entry_ptr, ptr @bcm63xx_hsspi_probe._entry_ptr.13, ptr @bcm63xx_hsspi_driver, ptr @.str, ptr @bcm63xx_hsspi_of_match, ptr @bcm63xx_hsspi_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @bcm63xx_hsspi_probe.__key, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @init_completion.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_hsspi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_hsspi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_hsspi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_hsspi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_hsspi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_hsspi_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_hsspi_do_txrx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_hsspi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm63xx_hsspi_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm63xx_hsspi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm63xx_hsspi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_hsspi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %num_cs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_cs) #7
  %0 = ptrtoint ptr %num_cs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8, ptr %num_cs, align 4
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #7
  %cmp.i169 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i169, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #7
  %cmp.i170 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %call.i171 = tail call i32 @clk_prepare(ptr noundef %call7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %tobool.not.i = icmp eq i32 %call.i171, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end16
  %call1.i = tail call i32 @clk_enable(ptr noundef %call7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end19, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call7) #7
  br label %cleanup

if.end19:                                         ; preds = %if.end.i
  %call20 = tail call i32 @reset_control_reset(ptr noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %do.end

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %call20) #10
  br label %out_disable_clk

if.end23:                                         ; preds = %if.end19
  %call24 = tail call i32 @clk_get_rate(ptr noundef %call7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %if.end23.if.end40_crit_edge

if.end23.if.end40_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then26:                                        ; preds = %if.end23
  %call27 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #7
  %cmp.i172 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call27 to i32
  br label %out_disable_clk

if.end31:                                         ; preds = %if.then26
  %call32 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.out_disable_clk_crit_edge

if.end31.out_disable_clk_crit_edge:               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_disable_clk

if.end35:                                         ; preds = %if.end31
  %call36 = tail call i32 @clk_get_rate(ptr noundef %call27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end35.out_disable_pll_clk_crit_edge, label %if.end35.if.end40_crit_edge

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.end35.out_disable_pll_clk_crit_edge:           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_disable_pll_clk

if.end40:                                         ; preds = %if.end35.if.end40_crit_edge, %if.end23.if.end40_crit_edge
  %pll_clk.0 = phi ptr [ null, %if.end23.if.end40_crit_edge ], [ %call27, %if.end35.if.end40_crit_edge ]
  %rate.0 = phi i32 [ %call24, %if.end23.if.end40_crit_edge ], [ %call36, %if.end35.if.end40_crit_edge ]
  %call.i173 = tail call ptr @__spi_alloc_controller(ptr noundef %dev1, i32 noundef 176, i1 noundef zeroext false) #7
  %tobool43.not = icmp eq ptr %call.i173, null
  br i1 %tobool43.not, label %if.end40.out_disable_pll_clk_crit_edge, label %if.end45

if.end40.out_disable_pll_clk_crit_edge:           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_disable_pll_clk

if.end45:                                         ; preds = %if.end40
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i173, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %pdev47 = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %pdev47 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdev, ptr %pdev47, align 4
  %clk48 = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %6, i32 0, i32 3
  %8 = ptrtoint ptr %clk48 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7, ptr %clk48, align 4
  %pll_clk49 = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %pll_clk49 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pll_clk.0, ptr %pll_clk49, align 4
  %regs50 = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %6, i32 0, i32 5
  %10 = ptrtoint ptr %regs50 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call2, ptr %regs50, align 4
  %speed_hz = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %6, i32 0, i32 7
  %11 = ptrtoint ptr %speed_hz to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %rate.0, ptr %speed_hz, align 4
  %add.ptr = getelementptr i8, ptr %call2, i32 512
  %fifo = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %6, i32 0, i32 6
  %12 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr, ptr %fifo, align 4
  %bus_mutex = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %6, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %bus_mutex, ptr noundef nonnull @.str.8, ptr noundef nonnull @bcm63xx_hsspi_probe.__key) #7
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %6, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %6, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #7
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %of_node56 = getelementptr inbounds %struct.device, ptr %call.i173, i32 0, i32 27
  %16 = ptrtoint ptr %of_node56 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %of_node56, align 8
  %17 = load ptr, ptr %of_node, align 8
  %tobool58.not = icmp eq ptr %17, null
  br i1 %tobool58.not, label %if.then59, label %if.end45.if.end60_crit_edge

if.end45.if.end60_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then59:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i173, i32 0, i32 2
  %18 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %bus_num, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end45.if.end60_crit_edge
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %20, ptr noundef nonnull @.str.9, ptr noundef nonnull %num_cs, i32 noundef 1, i32 noundef 0) #7
  %21 = ptrtoint ptr %num_cs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_cs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %22)
  %cmp63 = icmp ugt i32 %22, 8
  br i1 %cmp63, label %do.end67, label %if.end60.if.end68_crit_edge

if.end60.if.end68_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

do.end67:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %22) #10
  %23 = ptrtoint ptr %num_cs to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8, ptr %num_cs, align 4
  br label %if.end68

if.end68:                                         ; preds = %do.end67, %if.end60.if.end68_crit_edge
  %24 = ptrtoint ptr %num_cs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_cs, align 4
  %conv = trunc i32 %25 to i16
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i173, i32 0, i32 3
  %26 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv, ptr %num_chipselect, align 2
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i173, i32 0, i32 20
  %27 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @bcm63xx_hsspi_setup, ptr %setup, align 4
  %transfer_one_message = getelementptr inbounds %struct.spi_controller, ptr %call.i173, i32 0, i32 45
  %28 = ptrtoint ptr %transfer_one_message to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bcm63xx_hsspi_transfer_one, ptr %transfer_one_message, align 4
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i173, i32 0, i32 5
  %29 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1287, ptr %mode_bits, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i173, i32 0, i32 7
  %30 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 128, ptr %bits_per_word_mask, align 8
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i173, i32 0, i32 36
  %31 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %auto_runtime_pm, align 4
  %driver_data.i.i174 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %32 = ptrtoint ptr %driver_data.i.i174 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i173, ptr %driver_data.i.i174, align 4
  %33 = ptrtoint ptr %regs50 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs50, align 4
  %add.ptr70 = getelementptr i8, ptr %34, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 0) #7, !srcloc !59
  %35 = ptrtoint ptr %regs50 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs50, align 4
  %add.ptr72 = getelementptr i8, ptr %36, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 -16769249) #7, !srcloc !59
  %37 = ptrtoint ptr %regs50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs50, align 4
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #7, !srcloc !60
  %conv76 = trunc i32 %39 to i8
  %cs_polarity = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %6, i32 0, i32 8
  %40 = ptrtoint ptr %cs_polarity to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv76, ptr %cs_polarity, align 4
  %or = or i32 %39, 65536
  %41 = ptrtoint ptr %regs50 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs50, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %or) #7, !srcloc !59
  %43 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev, align 8
  %call.i175 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call, ptr noundef nonnull @bcm63xx_hsspi_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %44, ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %tobool80.not = icmp eq i32 %call.i175, 0
  br i1 %tobool80.not, label %if.end82, label %if.end68.spi_controller_put.exit_crit_edge

if.end68.spi_controller_put.exit_crit_edge:       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_controller_put.exit

if.end82:                                         ; preds = %if.end68
  call void @pm_runtime_enable(ptr noundef %dev1) #7
  %call84 = call i32 @devm_spi_register_controller(ptr noundef %dev1, ptr noundef nonnull %call.i173) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end82.cleanup_crit_edge, label %out_pm_disable

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

out_pm_disable:                                   ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %out_pm_disable, %if.end68.spi_controller_put.exit_crit_edge
  %ret.0 = phi i32 [ %call.i175, %if.end68.spi_controller_put.exit_crit_edge ], [ %call84, %out_pm_disable ]
  call void @put_device(ptr noundef nonnull %call.i173) #7
  br label %out_disable_pll_clk

out_disable_pll_clk:                              ; preds = %spi_controller_put.exit, %if.end40.out_disable_pll_clk_crit_edge, %if.end35.out_disable_pll_clk_crit_edge
  %pll_clk.1 = phi ptr [ %pll_clk.0, %spi_controller_put.exit ], [ %call27, %if.end35.out_disable_pll_clk_crit_edge ], [ %pll_clk.0, %if.end40.out_disable_pll_clk_crit_edge ]
  %ret.1 = phi i32 [ %ret.0, %spi_controller_put.exit ], [ -22, %if.end35.out_disable_pll_clk_crit_edge ], [ -12, %if.end40.out_disable_pll_clk_crit_edge ]
  call void @clk_disable(ptr noundef %pll_clk.1) #7
  call void @clk_unprepare(ptr noundef %pll_clk.1) #7
  br label %out_disable_clk

out_disable_clk:                                  ; preds = %out_disable_pll_clk, %if.end31.out_disable_clk_crit_edge, %if.then29, %do.end
  %ret.2 = phi i32 [ %call20, %do.end ], [ %ret.1, %out_disable_pll_clk ], [ %4, %if.then29 ], [ %call32, %if.end31.out_disable_clk_crit_edge ]
  call void @clk_disable(ptr noundef %call7) #7
  call void @clk_unprepare(ptr noundef %call7) #7
  br label %cleanup

cleanup:                                          ; preds = %out_disable_clk, %if.end82.cleanup_crit_edge, %if.then3.i, %if.end16.cleanup_crit_edge, %if.then14, %if.then9, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %2, %if.then9 ], [ %3, %if.then14 ], [ %ret.2, %out_disable_clk ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end82.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i171, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_cs) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_hsspi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i4, align 4
  %regs = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !59
  %pll_clk = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %pll_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pll_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  %clk = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_hsspi_setup(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regs = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %6 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %conv, 5
  %add = add nuw nsw i32 %mul, 260
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !60
  %and = and i32 %8, -12289
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 8
  %and2 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %reg.0.v = select i1 %tobool.not, i32 4096, i32 8192
  %reg.0 = or i32 %reg.0.v, %and
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %13 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %chip_select, align 4
  %conv6 = zext i8 %14 to i32
  %mul7 = shl nuw nsw i32 %conv6, 5
  %add8 = add nuw nsw i32 %mul7, 260
  %add.ptr9 = getelementptr i8, ptr %12, i32 %add8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %reg.0) #7, !srcloc !59
  %bus_mutex = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #7
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !60
  %cs_polarity = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %3, i32 0, i32 8
  %18 = ptrtoint ptr %cs_polarity to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cs_polarity, align 4
  %20 = trunc i32 %17 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %20)
  %cmp = icmp eq i8 %19, %20
  br i1 %cmp, label %if.then16, label %entry.if.end32_crit_edge

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode, align 8
  %and18 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %23 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %chip_select, align 4
  %conv26 = zext i8 %24 to i32
  %shl27 = shl nuw i32 1, %conv26
  %or23 = or i32 %shl27, %17
  %neg = xor i32 %shl27, -1
  %and28 = and i32 %17, %neg
  %reg.1 = select i1 %tobool19.not, i32 %and28, i32 %or23
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %reg.1) #7, !srcloc !59
  br label %if.end32

if.end32:                                         ; preds = %if.then16, %entry.if.end32_crit_edge
  %27 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mode, align 8
  %and34 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %29 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %chip_select, align 4
  %conv46 = zext i8 %30 to i32
  %shl47 = shl nuw i32 1, %conv46
  %31 = ptrtoint ptr %cs_polarity to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %cs_polarity, align 4
  %33 = trunc i32 %shl47 to i8
  %34 = xor i8 %33, -1
  %conv52 = and i8 %32, %34
  %conv43 = or i8 %32, %33
  %storemerge = select i1 %tobool35.not, i8 %conv52, i8 %conv43
  store i8 %storemerge, ptr %cs_polarity, align 4
  tail call void @mutex_unlock(ptr noundef %bus_mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_hsspi_transfer_one(ptr noundef %master, ptr noundef %msg) #2 align 64 {
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
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_select, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %bus_mutex.i = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex.i, i32 noundef 0) #7
  %regs.i = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !60
  %shl.i = shl nuw nsw i32 1, %lnot.ext
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %8, %neg.i
  %cs_polarity.i = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %cs_polarity.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cs_polarity.i, align 4
  %conv1.i = zext i8 %10 to i32
  %11 = and i32 %shl.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %.not = icmp eq i32 %11, 0
  %or.i = or i32 %8, %shl.i
  %spec.select.i = select i1 %.not, i32 %or.i, i32 %and.i
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %spec.select.i) #7, !srcloc !59
  tail call void @mutex_unlock(ptr noundef %bus_mutex.i) #7
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn59 = load ptr, ptr %msg, align 4
  %cmp.not61 = icmp eq ptr %.pn59, %msg
  br i1 %cmp.not61, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %master.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 2
  %mode.i.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 7
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn62 = phi ptr [ %.pn59, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %t.063 = getelementptr i8, ptr %.pn62, i32 -84
  %15 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i.i, align 4
  %19 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %chip_select, align 4
  %conv.i = zext i8 %20 to i32
  %len.i = getelementptr i8, ptr %.pn62, i32 -76
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i, align 4
  %23 = ptrtoint ptr %t.063 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %t.063, align 4
  %rx_buf.i = getelementptr i8, ptr %.pn62, i32 -80
  %25 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_buf.i, align 4
  %speed_hz.i = getelementptr i8, ptr %.pn62, i32 -24
  %27 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %speed_hz.i, align 4
  %speed_hz.i.i = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %18, i32 0, i32 7
  %29 = ptrtoint ptr %speed_hz.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %speed_hz.i.i, align 4
  %add.i.i = add i32 %28, -1
  %sub.i.i = add i32 %add.i.i, %30
  %div.i.i = udiv i32 %sub.i.i, %28
  %sub2.i.i = add i32 %div.i.i, 2047
  %div7.i.i = udiv i32 %sub2.i.i, %div.i.i
  %or.i.i = or i32 %div7.i.i, 32768
  %regs.i.i = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %18, i32 0, i32 5
  %31 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i.i, align 4
  %mul.i.i = shl nuw nsw i32 %conv.i, 5
  %add8.i.i = add nuw nsw i32 %mul.i.i, 256
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 %add8.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i.i) #7, !srcloc !59
  %33 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i.i, align 4
  %add11.i.i = add nuw nsw i32 %mul.i.i, 260
  %add.ptr12.i.i = getelementptr i8, ptr %34, i32 %add11.i.i
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i.i) #7, !srcloc !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000000, i32 %28)
  %cmp.i.i = icmp sgt i32 %28, 30000000
  %and.i.i = and i32 %35, -65537
  %masksel.i.i = select i1 %cmp.i.i, i32 65536, i32 0
  %reg.0.i.i = or i32 %and.i.i, %masksel.i.i
  %36 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i.i, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %37, i32 %add11.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i, i32 %reg.0.i.i) #7, !srcloc !59
  %bus_mutex.i.i = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %18, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex.i.i, i32 noundef 0) #7
  %38 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i.i, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #7, !srcloc !60
  %and22.i.i = and i32 %40, -131073
  %41 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mode.i.i, align 8
  %and23.i.i = shl i32 %42, 16
  %43 = and i32 %and23.i.i, 131072
  %reg.1.i.i = or i32 %43, %and22.i.i
  %44 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %reg.1.i.i) #7, !srcloc !59
  tail call void @mutex_unlock(ptr noundef %bus_mutex.i.i) #7
  %46 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %chip_select, align 4
  %conv3.i = zext i8 %47 to i32
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex.i.i, i32 noundef 0) #7
  %48 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i.i, align 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #7, !srcloc !60
  %shl.i.i = shl nuw i32 1, %conv3.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i123.i = and i32 %50, %neg.i.i
  %cs_polarity.i.i = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %18, i32 0, i32 8
  %51 = ptrtoint ptr %cs_polarity.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %cs_polarity.i.i, align 4
  %conv1.i.i = zext i8 %52 to i32
  %53 = and i32 %shl.i.i, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %.not.i = icmp eq i32 %53, 0
  %or.i125.i = or i32 %50, %shl.i.i
  %spec.select.i.i = select i1 %.not.i, i32 %or.i125.i, i32 %and.i123.i
  %54 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %spec.select.i.i) #7, !srcloc !59
  tail call void @mutex_unlock(ptr noundef %bus_mutex.i.i) #7
  %tobool.not.i = icmp eq ptr %24, null
  %tobool4.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end11.i, label %lor.lhs.false.i

if.end11.i:                                       ; preds = %for.body
  br i1 %tobool4.not.i, label %if.end11.i.if.end34.i_crit_edge, label %land.lhs.true19.i

if.end11.i.if.end34.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

land.lhs.true19.i:                                ; preds = %if.end11.i
  %rx_nbits.i = getelementptr i8, ptr %.pn62, i32 -40
  %56 = ptrtoint ptr %rx_nbits.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load.i = load i8, ptr %rx_nbits.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.clear.i)
  %cmp20.i = icmp eq i8 %bf.clear.i, 2
  br i1 %cmp20.i, label %land.lhs.true19.i.if.then31.i_crit_edge, label %land.lhs.true19.i.if.end34.i_crit_edge

land.lhs.true19.i.if.end34.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

land.lhs.true19.i.if.then31.i_crit_edge:          ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31.i

lor.lhs.false.i:                                  ; preds = %for.body
  br i1 %tobool4.not.i, label %land.lhs.true25.i, label %lor.lhs.false.i.if.end34.i_crit_edge

lor.lhs.false.i.if.end34.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

land.lhs.true25.i:                                ; preds = %lor.lhs.false.i
  %tx_nbits.i = getelementptr i8, ptr %.pn62, i32 -40
  %57 = ptrtoint ptr %tx_nbits.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load26.i = load i8, ptr %tx_nbits.i, align 4
  %58 = and i8 %bf.load26.i, 56
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %58)
  %cmp29.i = icmp eq i8 %58, 16
  br i1 %cmp29.i, label %land.lhs.true25.i.if.then31.i_crit_edge, label %land.lhs.true25.i.if.end34.i_crit_edge

land.lhs.true25.i.if.end34.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

land.lhs.true25.i.if.then31.i_crit_edge:          ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31.i

if.then31.i:                                      ; preds = %land.lhs.true25.i.if.then31.i_crit_edge, %land.lhs.true19.i.if.then31.i_crit_edge
  %59 = phi i32 [ 510, %land.lhs.true25.i.if.then31.i_crit_edge ], [ 512, %land.lhs.true19.i.if.then31.i_crit_edge ]
  %opcode.0132.i = phi i16 [ 18432, %land.lhs.true25.i.if.then31.i_crit_edge ], [ 26624, %land.lhs.true19.i.if.then31.i_crit_edge ]
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then31.i, %land.lhs.true25.i.if.end34.i_crit_edge, %lor.lhs.false.i.if.end34.i_crit_edge, %land.lhs.true19.i.if.end34.i_crit_edge, %if.end11.i.if.end34.i_crit_edge
  %60 = phi i32 [ %59, %if.then31.i ], [ 510, %land.lhs.true25.i.if.end34.i_crit_edge ], [ 510, %lor.lhs.false.i.if.end34.i_crit_edge ], [ 510, %if.end11.i.if.end34.i_crit_edge ], [ 512, %land.lhs.true19.i.if.end34.i_crit_edge ]
  %opcode.1.i = phi i16 [ %opcode.0132.i, %if.then31.i ], [ 16384, %land.lhs.true25.i.if.end34.i_crit_edge ], [ 8192, %lor.lhs.false.i.if.end34.i_crit_edge ], [ 0, %if.end11.i.if.end34.i_crit_edge ], [ 24576, %land.lhs.true19.i.if.end34.i_crit_edge ]
  %61 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i.i, align 4
  %add.i = add nuw nsw i32 %mul.i.i, 264
  %add.ptr.i = getelementptr i8, ptr %62, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 327935) #7, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp35145.i = icmp sgt i32 %22, 0
  br i1 %cmp35145.i, label %while.body.lr.ph.i, label %if.end34.i.if.end_crit_edge

if.end34.i.if.end_crit_edge:                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.body.lr.ph.i:                               ; preds = %if.end34.i
  %fifo.i = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %18, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool50.not.i = icmp eq i8 %20, 0
  %shl51.i = shl nuw nsw i32 %conv.i, 8
  %or52.i = select i1 %tobool50.not.i, i32 4097, i32 1
  %or53.i = or i32 %or52.i, %shl51.i
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %rx.0148.i = phi ptr [ %26, %while.body.lr.ph.i ], [ %rx.1.i, %cleanup.i.while.body.i_crit_edge ]
  %tx.0147.i = phi ptr [ %24, %while.body.lr.ph.i ], [ %tx.1.i, %cleanup.i.while.body.i_crit_edge ]
  %pending.0146.i = phi i32 [ %22, %while.body.lr.ph.i ], [ %sub67.i, %cleanup.i.while.body.i_crit_edge ]
  %63 = tail call i32 @llvm.smin.i32(i32 %60, i32 %pending.0146.i) #7
  %64 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %18, align 4
  %tobool39.not.i = icmp eq ptr %tx.0147.i, null
  br i1 %tobool39.not.i, label %while.body.i.if.end43.i_crit_edge, label %if.then40.i

while.body.i.if.end43.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

if.then40.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fifo.i, align 4
  %add.ptr41.i = getelementptr i8, ptr %66, i32 2
  tail call void @mmiocpy(ptr noundef %add.ptr41.i, ptr noundef nonnull %tx.0147.i, i32 noundef %63) #7
  %add.ptr42.i = getelementptr i8, ptr %tx.0147.i, i32 %63
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then40.i, %while.body.i.if.end43.i_crit_edge
  %tx.1.i = phi ptr [ %add.ptr42.i, %if.then40.i ], [ null, %while.body.i.if.end43.i_crit_edge ]
  %67 = trunc i32 %63 to i16
  %conv46.i = or i16 %opcode.1.i, %67
  %68 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fifo.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %69, i16 %conv46.i) #7, !srcloc !61
  %70 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i.i, align 4
  %add.ptr49.i = getelementptr i8, ptr %71, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 1) #7, !srcloc !59
  %72 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i.i, align 4
  %add.ptr55.i = getelementptr i8, ptr %73, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.i, i32 %or53.i) #7, !srcloc !59
  %call57.i = tail call i32 @wait_for_completion_timeout(ptr noundef %18, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %cmp58.i = icmp eq i32 %call57.i, 0
  br i1 %cmp58.i, label %bcm63xx_hsspi_do_txrx.exit, label %if.end61.i

if.end61.i:                                       ; preds = %if.end43.i
  %tobool62.not.i = icmp eq ptr %rx.0148.i, null
  br i1 %tobool62.not.i, label %if.end61.i.cleanup.i_crit_edge, label %if.then63.i

if.end61.i.cleanup.i_crit_edge:                   ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.then63.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fifo.i, align 4
  tail call void @mmiocpy(ptr noundef nonnull %rx.0148.i, ptr noundef %75, i32 noundef %63) #7
  %add.ptr65.i = getelementptr i8, ptr %rx.0148.i, i32 %63
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then63.i, %if.end61.i.cleanup.i_crit_edge
  %rx.1.i = phi ptr [ %add.ptr65.i, %if.then63.i ], [ null, %if.end61.i.cleanup.i_crit_edge ]
  %sub67.i = sub i32 %pending.0146.i, %63
  %cmp35.i = icmp sgt i32 %sub67.i, 0
  br i1 %cmp35.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.if.end_crit_edge

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

bcm63xx_hsspi_do_txrx.exit:                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  %pdev.i = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %18, i32 0, i32 2
  %76 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %77, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15) #10
  br label %for.end

if.end:                                           ; preds = %cleanup.i.if.end_crit_edge, %if.end34.i.if.end_crit_edge
  %78 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len.i, align 4
  %80 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %actual_length, align 4
  %add = add i32 %81, %79
  store i32 %add, ptr %actual_length, align 4
  %delay.i = getelementptr i8, ptr %.pn62, i32 -38
  %call.i = tail call i32 @spi_delay_exec(ptr noundef %delay.i, ptr noundef %t.063) #7
  %cs_change = getelementptr i8, ptr %.pn62, i32 -40
  %82 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load = load i8, ptr %cs_change, align 4
  %83 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool8.not = icmp eq i8 %83, 0
  br i1 %tobool8.not, label %if.end.for.inc_crit_edge, label %if.then9

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %85 to i32
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex.i, i32 noundef 0) #7
  %86 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs.i, align 4
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #7, !srcloc !60
  %shl.i48 = shl nuw i32 1, %conv
  %neg.i49 = xor i32 %shl.i48, -1
  %and.i50 = and i32 %88, %neg.i49
  %89 = ptrtoint ptr %cs_polarity.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %cs_polarity.i, align 4
  %conv1.i52 = zext i8 %90 to i32
  %91 = and i32 %shl.i48, %conv1.i52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %.not57 = icmp eq i32 %91, 0
  %or.i53 = or i32 %88, %shl.i48
  %spec.select.i54 = select i1 %.not57, i32 %and.i50, i32 %or.i53
  %92 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %spec.select.i54) #7, !srcloc !59
  tail call void @mutex_unlock(ptr noundef %bus_mutex.i) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %if.end.for.inc_crit_edge
  %94 = ptrtoint ptr %.pn62 to i32
  call void @__asan_load4_noabort(i32 %94)
  %.pn = load ptr, ptr %.pn62, align 4
  %cmp.not = icmp eq ptr %.pn, %msg
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %bcm63xx_hsspi_do_txrx.exit, %entry.for.end_crit_edge
  %status.1 = phi i32 [ -110, %bcm63xx_hsspi_do_txrx.exit ], [ -22, %entry.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex.i, i32 noundef 0) #7
  %95 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i, align 4
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #7, !srcloc !60
  %and = and i32 %97, -256
  %98 = ptrtoint ptr %cs_polarity.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %cs_polarity.i, align 4
  %conv19 = zext i8 %99 to i32
  %or = or i32 %and, %conv19
  %100 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %or) #7, !srcloc !59
  tail call void @mutex_unlock(ptr noundef %bus_mutex.i) #7
  %status23 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 7
  %102 = ptrtoint ptr %status23 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %status.1, ptr %status23, align 4
  tail call void @spi_finalize_current_message(ptr noundef %master) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_hsspi_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 -16769249) #7, !srcloc !59
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #7, !srcloc !59
  tail call void @complete(ptr noundef %dev_id) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_delay_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_hsspi_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @spi_controller_suspend(ptr noundef %1) #7
  %pll_clk = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pll_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pll_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  %clk = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_hsspi_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %pll_clk = getelementptr inbounds %struct.bcm63xx_hsspi, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %pll_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pll_clk, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.if.end11_crit_edge, label %if.then4

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then4:                                         ; preds = %if.end
  %call.i22 = tail call i32 @clk_prepare(ptr noundef nonnull %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool.not.i23 = icmp eq i32 %call.i22, 0
  br i1 %tobool.not.i23, label %if.end.i26, label %if.then4.if.then8_crit_edge

if.then4.if.then8_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.end.i26:                                       ; preds = %if.then4
  %call1.i24 = tail call i32 @clk_enable(ptr noundef nonnull %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool2.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool2.not.i25, label %if.end.i26.if.end11_crit_edge, label %if.then3.i27

if.end.i26.if.end11_crit_edge:                    ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then3.i27:                                     ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef nonnull %7) #7
  br label %if.then8

if.then8:                                         ; preds = %if.then3.i27, %if.then4.if.then8_crit_edge
  %retval.0.i28.ph = phi i32 [ %call1.i24, %if.then3.i27 ], [ %call.i22, %if.then4.if.then8_crit_edge ]
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end.i26.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %call12 = tail call i32 @spi_controller_resume(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then8, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i28.ph, %if.then8 ], [ 0, %if.end11 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !33, !35, !36, !37, !38, !40, !41, !43, !44, !45, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_spi_bcm63xx_hsspi__239_533_bcm63xx_hsspi_driver_init6, !1, !"__initcall__kmod_spi_bcm63xx_hsspi__239_533_bcm63xx_hsspi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-bcm63xx-hsspi.c", i32 533, i32 1}
!2 = !{ptr @__exitcall_bcm63xx_hsspi_driver_exit, !1, !"__exitcall_bcm63xx_hsspi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias240, !4, !"__UNIQUE_ID_alias240", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-bcm63xx-hsspi.c", i32 535, i32 1}
!5 = !{ptr @__UNIQUE_ID_description241, !6, !"__UNIQUE_ID_description241", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-bcm63xx-hsspi.c", i32 536, i32 1}
!7 = !{ptr @__UNIQUE_ID_author242, !8, !"__UNIQUE_ID_author242", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-bcm63xx-hsspi.c", i32 537, i32 1}
!9 = !{ptr @__UNIQUE_ID_file243, !10, !"__UNIQUE_ID_file243", i1 false, i1 false}
!10 = !{!"../drivers/spi/spi-bcm63xx-hsspi.c", i32 538, i32 1}
!11 = !{ptr @__UNIQUE_ID_license244, !10, !"__UNIQUE_ID_license244", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-bcm63xx-hsspi.c", i32 525, i32 11}
!14 = !{ptr @bcm63xx_hsspi_driver, !15, !"bcm63xx_hsspi_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-bcm63xx-hsspi.c", i32 523, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-bcm63xx-hsspi.c", i32 349, i32 26}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-bcm63xx-hsspi.c", i32 364, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @bcm63xx_hsspi_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @bcm63xx_hsspi_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-bcm63xx-hsspi.c", i32 370, i32 31}
!28 = !{ptr @bcm63xx_hsspi_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-bcm63xx-hsspi.c", i32 402, i32 2}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/spi/spi-bcm63xx-hsspi.c", i32 409, i32 37}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/spi/spi-bcm63xx-hsspi.c", i32 411, i32 3}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @bcm63xx_hsspi_probe._entry.10, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @bcm63xx_hsspi_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @init_completion.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../include/linux/completion.h", i32 87, i32 2}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/spi/spi-bcm63xx-hsspi.c", i32 210, i32 4}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @bcm63xx_hsspi_do_txrx._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @bcm63xx_hsspi_do_txrx._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @bcm63xx_hsspi_of_match, !47, !"bcm63xx_hsspi_of_match", i1 false, i1 false}
!47 = !{!"../drivers/spi/spi-bcm63xx-hsspi.c", i32 517, i32 34}
!48 = !{ptr @bcm63xx_hsspi_pm_ops, !49, !"bcm63xx_hsspi_pm_ops", i1 false, i1 false}
!49 = !{!"../drivers/spi/spi-bcm63xx-hsspi.c", i32 514, i32 8}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 1258222}
!60 = !{i64 1258640}
!61 = !{i64 1257602}
