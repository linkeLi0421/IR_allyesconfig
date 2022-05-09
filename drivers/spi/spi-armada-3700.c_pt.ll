; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-armada-3700.c_pt.bc'
source_filename = "../drivers/spi/spi-armada-3700.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.a3700_spi = type { ptr, ptr, ptr, i32, i32, i8, ptr, ptr, i32, i8, i32, %struct.completion }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_spi_armada_3700__236_930_a3700_spi_driver_init6 = internal global ptr @a3700_spi_driver_init, section ".initcall6.init", align 4
@a3700_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @a3700_spi_probe, ptr @a3700_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @a3700_spi_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_a3700_spi_driver_exit = internal global ptr @a3700_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description237 = internal constant [51 x i8] c"spi_armada_3700.description=Armada-3700 SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [57 x i8] c"spi_armada_3700.author=Wilson Ding <dingwei@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [49 x i8] c"spi_armada_3700.file=drivers/spi/spi-armada-3700\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [28 x i8] c"spi_armada_3700.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias241 = internal constant [47 x i8] c"spi_armada_3700.alias=platform:armada_3700_spi\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"armada_3700_spi\00", [16 x i8] zeroinitializer }, align 32
@a3700_spi_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-3700-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@a3700_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 825, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"master allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"a3700_spi_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/spi/spi-armada-3700.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@a3700_spi_probe._entry_ptr = internal global ptr @a3700_spi_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"num-cs\00", [25 x i8] zeroinitializer }, align 32
@a3700_spi_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 831, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"could not find num-cs\0A\00", [41 x i8] zeroinitializer }, align 32
@a3700_spi_probe._entry_ptr.9 = internal global ptr @a3700_spi_probe._entry.7, section ".printk_index", align 4
@a3700_spi_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 871, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not find clk: %ld\0A\00", [39 x i8] zeroinitializer }, align 32
@a3700_spi_probe._entry_ptr.12 = internal global ptr @a3700_spi_probe._entry.10, section ".printk_index", align 4
@a3700_spi_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 877, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not prepare clk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@a3700_spi_probe._entry_ptr.15 = internal global ptr @a3700_spi_probe._entry.13, section ".printk_index", align 4
@a3700_spi_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 891, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@a3700_spi_probe._entry_ptr.18 = internal global ptr @a3700_spi_probe._entry.16, section ".printk_index", align 4
@a3700_spi_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 897, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register master\0A\00", [37 x i8] zeroinitializer }, align 32
@a3700_spi_probe._entry_ptr.21 = internal global ptr @a3700_spi_probe._entry.19, section ".printk_index", align 4
@a3700_spi_prepare_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 577, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to enable clk with error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"a3700_spi_prepare_message\00", [38 x i8] zeroinitializer }, align 32
@a3700_spi_prepare_message._entry_ptr = internal global ptr @a3700_spi_prepare_message._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@a3700_spi_transfer_one_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 655, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wait wfifo ready timed out\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"a3700_spi_transfer_one_fifo\00", [36 x i8] zeroinitializer }, align 32
@a3700_spi_transfer_one_fifo._entry_ptr = internal global ptr @a3700_spi_transfer_one_fifo._entry, section ".printk_index", align 4
@a3700_spi_transfer_one_fifo._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 668, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wait rfifo ready timed out\0A\00", [36 x i8] zeroinitializer }, align 32
@a3700_spi_transfer_one_fifo._entry_ptr.28 = internal global ptr @a3700_spi_transfer_one_fifo._entry.26, section ".printk_index", align 4
@a3700_spi_transfer_one_fifo._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.3, i32 700, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wait wfifo empty timed out\0A\00", [36 x i8] zeroinitializer }, align 32
@a3700_spi_transfer_one_fifo._entry_ptr.31 = internal global ptr @a3700_spi_transfer_one_fifo._entry.29, section ".printk_index", align 4
@a3700_spi_transfer_one_fifo._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.3, i32 706, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wait xfer ready timed out\0A\00", [37 x i8] zeroinitializer }, align 32
@a3700_spi_transfer_one_fifo._entry_ptr.34 = internal global ptr @a3700_spi_transfer_one_fifo._entry.32, section ".printk_index", align 4
@a3700_spi_transfer_one_fifo._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.25, ptr @.str.3, i32 723, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"wait transfer start clear timed out\0A\00", [59 x i8] zeroinitializer }, align 32
@a3700_spi_transfer_one_fifo._entry_ptr.37 = internal global ptr @a3700_spi_transfer_one_fifo._entry.35, section ".printk_index", align 4
@a3700_spi_pin_mode_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 177, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wrong pin mode %u\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"a3700_spi_pin_mode_set\00", [41 x i8] zeroinitializer }, align 32
@a3700_spi_pin_mode_set._entry_ptr = internal global ptr @a3700_spi_pin_mode_set._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"a3700_spi_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 921, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 923, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"a3700_spi_dt_ids\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 807, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 825, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 830, i32 36 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 831, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 871, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 877, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 891, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 897, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 577, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 654, i32 5 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 667, i32 5 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 700, i32 5 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 706, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 723, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.150 = private constant [33 x i8] c"../drivers/spi/spi-armada-3700.c\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 177, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 87, i32 2 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_alias241, ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_a3700_spi_driver_exit, ptr @__initcall__kmod_spi_armada_3700__236_930_a3700_spi_driver_init6, ptr @a3700_spi_driver_exit, ptr @a3700_spi_pin_mode_set._entry, ptr @a3700_spi_pin_mode_set._entry_ptr, ptr @a3700_spi_prepare_message._entry, ptr @a3700_spi_prepare_message._entry_ptr, ptr @a3700_spi_probe._entry, ptr @a3700_spi_probe._entry.10, ptr @a3700_spi_probe._entry.13, ptr @a3700_spi_probe._entry.16, ptr @a3700_spi_probe._entry.19, ptr @a3700_spi_probe._entry.7, ptr @a3700_spi_probe._entry_ptr, ptr @a3700_spi_probe._entry_ptr.12, ptr @a3700_spi_probe._entry_ptr.15, ptr @a3700_spi_probe._entry_ptr.18, ptr @a3700_spi_probe._entry_ptr.21, ptr @a3700_spi_probe._entry_ptr.9, ptr @a3700_spi_transfer_one_fifo._entry, ptr @a3700_spi_transfer_one_fifo._entry.26, ptr @a3700_spi_transfer_one_fifo._entry.29, ptr @a3700_spi_transfer_one_fifo._entry.32, ptr @a3700_spi_transfer_one_fifo._entry.35, ptr @a3700_spi_transfer_one_fifo._entry_ptr, ptr @a3700_spi_transfer_one_fifo._entry_ptr.28, ptr @a3700_spi_transfer_one_fifo._entry_ptr.31, ptr @a3700_spi_transfer_one_fifo._entry_ptr.34, ptr @a3700_spi_transfer_one_fifo._entry_ptr.37, ptr @a3700_spi_driver, ptr @.str, ptr @a3700_spi_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @init_completion.__key, ptr @.str.40], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a3700_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a3700_spi_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a3700_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a3700_spi_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a3700_spi_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a3700_spi_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a3700_spi_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a3700_spi_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a3700_spi_prepare_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a3700_spi_transfer_one_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a3700_spi_transfer_one_fifo._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a3700_spi_transfer_one_fifo._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a3700_spi_transfer_one_fifo._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a3700_spi_transfer_one_fifo._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a3700_spi_pin_mode_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @a3700_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @a3700_spi_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @a3700_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @a3700_spi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a3700_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %num_cs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_cs) #6
  %2 = ptrtoint ptr %num_cs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %num_cs, align 4
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev1, i32 noundef 100, i1 noundef zeroext false) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %num_cs, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool4.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool4.not, label %if.end9, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  br label %spi_controller_put.exit

if.end9:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %conv = trunc i32 %4 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %bus_num, align 8
  %of_node11 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %6 = ptrtoint ptr %of_node11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %of_node11, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %num_cs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_cs, align 4
  %conv12 = trunc i32 %8 to i16
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv12, ptr %num_chipselect, align 2
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -2147483520, ptr %bits_per_word_mask, align 8
  %prepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 47
  %11 = ptrtoint ptr %prepare_message to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @a3700_spi_prepare_message, ptr %prepare_message, align 4
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %12 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @a3700_spi_transfer_one, ptr %transfer_one, align 4
  %unprepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 48
  %13 = ptrtoint ptr %unprepare_message to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @a3700_spi_unprepare_message, ptr %unprepare_message, align 8
  %set_cs = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 50
  %14 = ptrtoint ptr %set_cs to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @a3700_spi_set_cs, ptr %set_cs, align 8
  %15 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3843, ptr %mode_bits, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i131 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i.i131 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i131, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %18, align 4
  %call16 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.a3700_spi, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call16, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %call16 to i32
  br label %spi_controller_put.exit

if.end22:                                         ; preds = %if.end9
  %call23 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.end22.spi_controller_put.exit_crit_edge, label %if.end26

if.end22.spi_controller_put.exit_crit_edge:       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_controller_put.exit

if.end26:                                         ; preds = %if.end22
  %irq27 = getelementptr inbounds %struct.a3700_spi, ptr %18, i32 0, i32 3
  %22 = ptrtoint ptr %irq27 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call23, ptr %irq27, align 4
  %done = getelementptr inbounds %struct.a3700_spi, ptr %18, i32 0, i32 11
  %23 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.a3700_spi, ptr %18, i32 0, i32 11, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_completion.__key) #6
  %call28 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.a3700_spi, ptr %18, i32 0, i32 2
  %24 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call28, ptr %clk, align 4
  %cmp.i132 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %do.end34, label %if.end37

do.end34:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %call28 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %25) #9
  br label %spi_controller_put.exit

if.end37:                                         ; preds = %if.end26
  %call39 = call i32 @clk_prepare(ptr noundef %call28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end45, label %do.end44

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %call39) #9
  br label %spi_controller_put.exit

if.end45:                                         ; preds = %if.end37
  %26 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk, align 4
  %call47 = call i32 @clk_get_rate(ptr noundef %27) #6
  %28 = call i32 @llvm.umin.i32(i32 %call47, i32 100000000)
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %29 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %max_speed_hz, align 8
  %30 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk, align 4
  %call51 = call i32 @clk_get_rate(ptr noundef %31) #6
  %sub = add i32 %call51, 29
  %div = udiv i32 %sub, 30
  %min_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 8
  %32 = ptrtoint ptr %min_speed_hz to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div, ptr %min_speed_hz, align 4
  %33 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %18, align 4
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 4
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !91
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %38 = or i32 %37, 256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  call void @arm_heavy_mb() #6
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %40, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %38) #6, !srcloc !94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %41(i32 noundef 2147480) #6
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %43, i32 4
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.i) #6, !srcloc !91
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %45 = and i32 %44, -257
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  call void @arm_heavy_mb() #6
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %47, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %45) #6, !srcloc !94
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %49, i32 4
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !91
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %51 = and i32 %50, -4097
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  call void @arm_heavy_mb() #6
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %53, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %51) #6, !srcloc !94
  %num_chipselect.i = getelementptr inbounds %struct.spi_controller, ptr %34, i32 0, i32 3
  %54 = ptrtoint ptr %num_chipselect.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %num_chipselect.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %cmp43.not.i = icmp eq i16 %55, 0
  br i1 %cmp43.not.i, label %if.end45.a3700_spi_init.exit_crit_edge, label %if.end45.for.body.i_crit_edge

if.end45.for.body.i_crit_edge:                    ; preds = %if.end45
  br label %for.body.i

if.end45.a3700_spi_init.exit_crit_edge:           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %a3700_spi_init.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end45.for.body.i_crit_edge
  %i.044.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end45.for.body.i_crit_edge ]
  %56 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base, align 4
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #6, !srcloc !91
  %59 = call i32 @llvm.bswap.i32(i32 %58) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %shl.i.i = shl i32 65536, %i.044.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %59, %neg.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  call void @arm_heavy_mb() #6
  %60 = call i32 @llvm.bswap.i32(i32 %and.i.i) #6
  %61 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #6, !srcloc !94
  %inc.i = add nuw nsw i32 %i.044.i, 1
  %63 = ptrtoint ptr %num_chipselect.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %num_chipselect.i, align 2
  %conv.i = zext i16 %64 to i32
  %cmp.i133 = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i133, label %for.body.i.for.body.i_crit_edge, label %for.body.i.a3700_spi_init.exit_crit_edge

for.body.i.a3700_spi_init.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %a3700_spi_init.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

a3700_spi_init.exit:                              ; preds = %for.body.i.a3700_spi_init.exit_crit_edge, %if.end45.a3700_spi_init.exit_crit_edge
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base, align 4
  %add.ptr.i.i30.i = getelementptr i8, ptr %66, i32 4
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i30.i) #6, !srcloc !91
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %68 = or i32 %67, 512
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  call void @arm_heavy_mb() #6
  %69 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %70, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %68) #6, !srcloc !94
  %mode_bits.i = getelementptr inbounds %struct.spi_controller, ptr %34, i32 0, i32 5
  %71 = ptrtoint ptr %mode_bits.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mode_bits.i, align 8
  %73 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base, align 4
  %add.ptr.i.i32.i = getelementptr i8, ptr %74, i32 4
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i32.i) #6, !srcloc !91
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %and.i33.i = shl i32 %72, 6
  %76 = and i32 %75, 1073741823
  %77 = call i32 @llvm.bswap.i32(i32 %76) #6
  %and7.i.i = and i32 %and.i33.i, 192
  %val.1.i.i = or i32 %77, %and7.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  call void @arm_heavy_mb() #6
  %78 = call i32 @llvm.bswap.i32(i32 %val.1.i.i) #6
  %79 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %80, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i.i, i32 %78) #6, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  call void @arm_heavy_mb() #6
  %81 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %82, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 0) #6, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  call void @arm_heavy_mb() #6
  %83 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base, align 4
  %add.ptr.i37.i = getelementptr i8, ptr %84, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i, i32 0) #6, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  call void @arm_heavy_mb() #6
  %85 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %86, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i, i32 0) #6, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  call void @arm_heavy_mb() #6
  %87 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %88, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.i, i32 -1) #6, !srcloc !94
  %89 = ptrtoint ptr %irq27 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %irq27, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %91 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %92, null
  br i1 %tobool.not.i, label %if.end.i, label %a3700_spi_init.exit.dev_name.exit_crit_edge

a3700_spi_init.exit.dev_name.exit_crit_edge:      ; preds = %a3700_spi_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %a3700_spi_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %a3700_spi_init.exit.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %94, %if.end.i ], [ %92, %a3700_spi_init.exit.dev_name.exit_crit_edge ]
  %call.i134 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %90, ptr noundef nonnull @a3700_spi_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool55.not = icmp eq i32 %call.i134, 0
  br i1 %tobool55.not, label %if.end60, label %do.end59

do.end59:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %call.i134) #9
  br label %error_clk

if.end60:                                         ; preds = %dev_name.exit
  %call61 = call i32 @devm_spi_register_controller(ptr noundef %dev1, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end60.cleanup_crit_edge, label %do.end66

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end66:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #9
  br label %error_clk

error_clk:                                        ; preds = %do.end66, %do.end59
  %ret.0 = phi i32 [ %call.i134, %do.end59 ], [ %call61, %do.end66 ]
  %95 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %clk, align 4
  call void @clk_unprepare(ptr noundef %96) #6
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %error_clk, %do.end44, %do.end34, %if.end22.spi_controller_put.exit_crit_edge, %if.then19, %do.end8
  %ret.1 = phi i32 [ -6, %do.end8 ], [ %21, %if.then19 ], [ 0, %do.end34 ], [ %call39, %do.end44 ], [ %ret.0, %error_clk ], [ -6, %if.end22.spi_controller_put.exit_crit_edge ]
  call void @put_device(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end60.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end60.cleanup_crit_edge ], [ %ret.1, %spi_controller_put.exit ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_cs) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a3700_spi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i2 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i2, align 4
  %clk = getelementptr inbounds %struct.a3700_spi, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a3700_spi_prepare_message(ptr nocapture noundef readonly %master, ptr nocapture noundef readonly %message) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 1
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi1, align 4
  %clk = getelementptr inbounds %struct.a3700_spi, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call2 = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.22, i32 noundef %call2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @a3700_spi_fifo_flush(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mode = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 8
  %base.i.i = getelementptr inbounds %struct.a3700_spi, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %and.i = shl i32 %7, 6
  %11 = and i32 %10, 1073741823
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  %and7.i = and i32 %and.i, 192
  %val.1.i = or i32 %12, %and7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %val.1.i) #6
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %13) #6, !srcloc !94
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %if.end6 ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a3700_spi_transfer_one(ptr noundef %master, ptr noundef %spi, ptr nocapture noundef readonly %xfer) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 12
  %4 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed_hz.i, align 4
  %clk.i.i = getelementptr inbounds %struct.a3700_spi, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i.i, align 4
  %call.i.i = tail call i32 @clk_get_rate(ptr noundef %7) #6
  %add.i.i = add i32 %5, -1
  %sub.i.i = add i32 %add.i.i, %call.i.i
  %div.i.i = udiv i32 %sub.i.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %div.i.i)
  %cmp.i.i = icmp ugt i32 %div.i.i, 15
  %sub2.i.i = add i32 %div.i.i, 1
  %div324.i.i = lshr i32 %sub2.i.i, 1
  %add4.i.i = add nuw i32 %div324.i.i, 16
  %prescale.0.i.i = select i1 %cmp.i.i, i32 %add4.i.i, i32 %div.i.i
  %base.i.i.i = getelementptr inbounds %struct.a3700_spi, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %11 = and i32 %10, -520093697
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  %and6.i.i = and i32 %prescale.0.i.i, 31
  %or.i.i = or i32 %and6.i.i, %12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  %14 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i26.i.i = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i.i, i32 %13) #6, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %prescale.0.i.i)
  %cmp7.i.i = icmp ult i32 %prescale.0.i.i, 3
  br i1 %cmp7.i.i, label %if.then8.i.i, label %entry.a3700_spi_transfer_setup.exit_crit_edge

entry.a3700_spi_transfer_setup.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %a3700_spi_transfer_setup.exit

if.then8.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i28.i.i = getelementptr i8, ptr %17, i32 36
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i.i) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %19 = or i32 %18, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i30.i.i = getelementptr i8, ptr %21, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i.i, i32 %19) #6, !srcloc !94
  br label %a3700_spi_transfer_setup.exit

a3700_spi_transfer_setup.exit:                    ; preds = %if.then8.i.i, %entry.a3700_spi_transfer_setup.exit_crit_edge
  %22 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i11.i = getelementptr i8, ptr %23, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i11.i) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %25 = or i32 %24, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %25) #6, !srcloc !94
  %byte_len.i.i = getelementptr inbounds %struct.a3700_spi, ptr %3, i32 0, i32 9
  %28 = ptrtoint ptr %byte_len.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 4, ptr %byte_len.i.i, align 4
  %29 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xfer, align 4
  %tx_buf1.i = getelementptr inbounds %struct.a3700_spi, ptr %3, i32 0, i32 6
  %31 = ptrtoint ptr %tx_buf1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %tx_buf1.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %32 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_buf.i, align 4
  %rx_buf2.i = getelementptr inbounds %struct.a3700_spi, ptr %3, i32 0, i32 7
  %34 = ptrtoint ptr %rx_buf2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %rx_buf2.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i, align 4
  %buf_len.i = getelementptr inbounds %struct.a3700_spi, ptr %3, i32 0, i32 8
  %37 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %buf_len.i, align 4
  %38 = load ptr, ptr %xfer, align 4
  %tobool.not = icmp eq ptr %38, null
  br i1 %tobool.not, label %a3700_spi_transfer_setup.exit.if.end_crit_edge, label %land.lhs.true

a3700_spi_transfer_setup.exit.if.end_crit_edge:   ; preds = %a3700_spi_transfer_setup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %a3700_spi_transfer_setup.exit
  %39 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rx_buf.i, align 4
  %tobool1.not = icmp eq ptr %40, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %driver_data.i.i.i10 = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %41 = ptrtoint ptr %driver_data.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %driver_data.i.i.i10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i)
  %base.i.i.i11 = getelementptr inbounds %struct.a3700_spi, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %base.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i.i11, align 4
  %add.ptr.i.i.i12 = getelementptr i8, ptr %44, i32 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i12) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %46 = and i32 %45, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %47 = ptrtoint ptr %base.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i.i.i11, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %48, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %46) #6, !srcloc !94
  %buf_len.i13 = getelementptr inbounds %struct.a3700_spi, ptr %42, i32 0, i32 8
  %49 = ptrtoint ptr %buf_len.i13 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %buf_len.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not7.i = icmp eq i32 %50, 0
  br i1 %tobool.not7.i, label %if.then.a3700_spi_transfer_one_full_duplex.exit_crit_edge, label %while.body.lr.ph.i

if.then.a3700_spi_transfer_one_full_duplex.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %a3700_spi_transfer_one_full_duplex.exit

while.body.lr.ph.i:                               ; preds = %if.then
  %byte_len.i.i14 = getelementptr inbounds %struct.a3700_spi, ptr %42, i32 0, i32 9
  %tx_buf6.i = getelementptr inbounds %struct.a3700_spi, ptr %42, i32 0, i32 6
  %rx_buf.i15 = getelementptr inbounds %struct.a3700_spi, ptr %42, i32 0, i32 7
  br label %while.body.i

while.body.i:                                     ; preds = %while.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %51 = phi i32 [ %50, %while.body.lr.ph.i ], [ %sub.i, %while.end.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %51)
  %cmp.i = icmp ult i32 %51, 4
  br i1 %cmp.i, label %if.end.thread.i, label %if.end.i

if.end.thread.i:                                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %base.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.i.i11, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %53, i32 4
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2.i) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %55 = and i32 %54, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %56 = ptrtoint ptr %base.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i.i.i11, align 4
  %add.ptr.i7.i.i16 = getelementptr i8, ptr %57, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i16, i32 %55) #6, !srcloc !94
  %58 = ptrtoint ptr %byte_len.i.i14 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %byte_len.i.i14, align 4
  br label %if.then4.i

if.end.i:                                         ; preds = %while.body.i
  %59 = ptrtoint ptr %byte_len.i.i14 to i32
  call void @__asan_load1_noabort(i32 %59)
  %.pr.i = load i8, ptr %byte_len.i.i14, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr.i)
  %cmp2.i = icmp eq i8 %.pr.i, 1
  br i1 %cmp2.i, label %if.end.i.if.then4.i_crit_edge, label %if.else.i

if.end.i.if.then4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i.if.then4.i_crit_edge, %if.end.thread.i
  %60 = ptrtoint ptr %tx_buf6.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tx_buf6.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 1
  %conv5.i = zext i8 %63 to i32
  br label %if.end7.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %tx_buf6.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tx_buf6.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.then4.i
  %storemerge.i = phi i32 [ %67, %if.else.i ], [ %conv5.i, %if.then4.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %68 = tail call i32 @llvm.bswap.i32(i32 %storemerge.i) #6
  %69 = ptrtoint ptr %base.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i.i.i11, align 4
  %add.ptr.i.i = getelementptr i8, ptr %70, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %68) #6, !srcloc !94
  %71 = ptrtoint ptr %base.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i.i.i11, align 4
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %74 = and i32 %73, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool10.not6.i = icmp eq i32 %74, 0
  br i1 %tobool10.not6.i, label %if.end7.i.do.end.i_crit_edge, label %if.end7.i.while.end.i_crit_edge

if.end7.i.while.end.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.end7.i.do.end.i_crit_edge:                     ; preds = %if.end7.i
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %if.end7.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !96
  %75 = ptrtoint ptr %base.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i.i.i11, align 4
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %78 = and i32 %77, 16777216
  %tobool10.not.i = icmp eq i32 %78, 0
  br i1 %tobool10.not.i, label %do.end.i.do.end.i_crit_edge, label %do.end.i.while.end.i_crit_edge

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %if.end7.i.while.end.i_crit_edge
  %79 = ptrtoint ptr %base.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i.i.i11, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %80, i32 12
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #6, !srcloc !91
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %83 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %val.i, align 4
  %84 = ptrtoint ptr %rx_buf.i15 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rx_buf.i15, align 4
  %86 = ptrtoint ptr %byte_len.i.i14 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %byte_len.i.i14, align 4
  %conv20.i = zext i8 %87 to i32
  %88 = call ptr @memcpy(ptr %85, ptr %val.i, i32 %conv20.i)
  %89 = load i8, ptr %byte_len.i.i14, align 4
  %conv22.i = zext i8 %89 to i32
  %90 = ptrtoint ptr %buf_len.i13 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %buf_len.i13, align 4
  %sub.i = sub i32 %91, %conv22.i
  store i32 %sub.i, ptr %buf_len.i13, align 4
  %92 = ptrtoint ptr %tx_buf6.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tx_buf6.i, align 4
  %add.ptr.i = getelementptr i8, ptr %93, i32 %conv22.i
  store ptr %add.ptr.i, ptr %tx_buf6.i, align 4
  %94 = load ptr, ptr %rx_buf.i15, align 4
  %add.ptr30.i = getelementptr i8, ptr %94, i32 %conv22.i
  store ptr %add.ptr30.i, ptr %rx_buf.i15, align 4
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %while.end.i.a3700_spi_transfer_one_full_duplex.exit_crit_edge, label %while.end.i.while.body.i_crit_edge

while.end.i.while.body.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.i.a3700_spi_transfer_one_full_duplex.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %a3700_spi_transfer_one_full_duplex.exit

a3700_spi_transfer_one_full_duplex.exit:          ; preds = %while.end.i.a3700_spi_transfer_one_full_duplex.exit_crit_edge, %if.then.a3700_spi_transfer_one_full_duplex.exit_crit_edge
  tail call void @spi_finalize_current_transfer(ptr noundef %master) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i)
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %a3700_spi_transfer_setup.exit.if.end_crit_edge
  %driver_data.i.i.i17 = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %95 = ptrtoint ptr %driver_data.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %driver_data.i.i.i17, align 4
  %base.i.i.i18 = getelementptr inbounds %struct.a3700_spi, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i.i.i19 = getelementptr i8, ptr %98, i32 4
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i19) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %100 = or i32 %99, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %101 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i5.i.i20 = getelementptr i8, ptr %102, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i20, i32 %100) #6, !srcloc !94
  %bits_per_word.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 8
  %103 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %bits_per_word.i, align 1
  %105 = lshr i8 %104, 3
  %106 = zext i8 %105 to i32
  %107 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i.i156.i = getelementptr i8, ptr %108, i32 4
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i156.i) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %110 = and i32 %109, -120
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #6
  %sub.i.i21 = shl nuw nsw i32 %106, 24
  %shl.i.i = add nsw i32 %sub.i.i21, -16777216
  %shl.masked.i.i = and i32 %shl.i.i, -1895825408
  %.neg.i.i = mul i32 %106, -268435456
  %shl3.i.i = add i32 %.neg.i.i, 1879048192
  %and1.i.i = or i32 %111, %shl3.i.i
  %or4.i.i = or i32 %and1.i.i, %shl.masked.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %112 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i) #6
  %113 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %114, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 %112) #6, !srcloc !94
  %115 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %xfer, align 4
  %tobool.not.i22 = icmp eq ptr %116, null
  br i1 %tobool.not.i22, label %if.else.i24, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tx_nbits.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 7
  %117 = ptrtoint ptr %tx_nbits.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %bf.load.i = load i8, ptr %tx_nbits.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 3
  %bf.clear.i = and i8 %bf.lshr.i, 7
  br label %if.end6.i

if.else.i24:                                      ; preds = %if.end
  %118 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rx_buf.i, align 4
  %tobool1.not.i = icmp eq ptr %119, null
  br i1 %tobool1.not.i, label %if.else.i24.if.end6.i_crit_edge, label %if.then2.i

if.else.i24.if.end6.i_crit_edge:                  ; preds = %if.else.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then2.i:                                       ; preds = %if.else.i24
  call void @__sanitizer_cov_trace_pc() #8
  %rx_nbits.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 7
  %120 = ptrtoint ptr %rx_nbits.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %bf.load3.i = load i8, ptr %rx_nbits.i, align 4
  %bf.clear4.i = and i8 %bf.load3.i, 7
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then2.i, %if.else.i24.if.end6.i_crit_edge, %if.then.i
  %nbits.0.shrunk.i = phi i8 [ %bf.clear.i, %if.then.i ], [ %bf.clear4.i, %if.then2.i ], [ 0, %if.else.i24.if.end6.i_crit_edge ]
  %nbits.0.i = zext i8 %nbits.0.shrunk.i to i32
  %121 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %rx_buf.i, align 4
  %123 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i.i158.i = getelementptr i8, ptr %124, i32 4
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i158.i) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %126 = and i32 %125, -3932161
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #6
  %128 = zext i32 %nbits.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values)
  switch i32 %nbits.0.i, label %do.end.i.i [
    i32 1, label %if.end6.i.sw.epilog.i.i_crit_edge
    i32 2, label %sw.bb.i.i
    i32 4, label %sw.bb2.i.i
  ]

if.end6.i.sw.epilog.i.i_crit_edge:                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i.i25 = or i32 %127, 1024
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %tobool8.not.i = icmp eq ptr %122, null
  %spec.select.v.i.i = select i1 %tobool8.not.i, i32 2048, i32 6144
  %spec.select.i.i = or i32 %127, %spec.select.v.i.i
  br label %sw.epilog.i.i

do.end.i.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %129 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %96, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.38, i32 noundef %nbits.0.i) #9
  br label %a3700_spi_pin_mode_set.exit.i

sw.epilog.i.i:                                    ; preds = %sw.bb2.i.i, %sw.bb.i.i, %if.end6.i.sw.epilog.i.i_crit_edge
  %val.0.i159.i = phi i32 [ %or.i.i25, %sw.bb.i.i ], [ %127, %if.end6.i.sw.epilog.i.i_crit_edge ], [ %spec.select.i.i, %sw.bb2.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %131 = tail call i32 @llvm.bswap.i32(i32 %val.0.i159.i) #6
  %132 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %133, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %131) #6, !srcloc !94
  br label %a3700_spi_pin_mode_set.exit.i

a3700_spi_pin_mode_set.exit.i:                    ; preds = %sw.epilog.i.i, %do.end.i.i
  %call11.i = tail call fastcc i32 @a3700_spi_fifo_flush(ptr noundef %96) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %134 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i.i161.i = getelementptr i8, ptr %135, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i161.i, i32 0) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %136 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %137, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 0) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %138 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %139, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 0) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %140 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %141, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #6, !srcloc !94
  %tx_buf.i.i = getelementptr inbounds %struct.a3700_spi, ptr %96, i32 0, i32 6
  %142 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %tx_buf.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %143, null
  br i1 %tobool.not.i.i, label %a3700_spi_pin_mode_set.exit.i.a3700_spi_header_set.exit.i_crit_edge, label %if.then.i.i

a3700_spi_pin_mode_set.exit.i.a3700_spi_header_set.exit.i_crit_edge: ; preds = %a3700_spi_pin_mode_set.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %a3700_spi_header_set.exit.i

if.then.i.i:                                      ; preds = %a3700_spi_pin_mode_set.exit.i
  %buf_len.i.i = getelementptr inbounds %struct.a3700_spi, ptr %96, i32 0, i32 8
  %144 = ptrtoint ptr %buf_len.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %buf_len.i.i, align 4
  %rem.i.i = and i32 %145, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool1.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i.a3700_spi_header_set.exit.i_crit_edge, label %if.then2.i.i

if.then.i.i.a3700_spi_header_set.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %a3700_spi_header_set.exit.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  %shl.i162.i = shl nuw nsw i32 %rem.i.i, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %146 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i31.i.i = getelementptr i8, ptr %147, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i.i, i32 %shl.i162.i) #6, !srcloc !94
  %148 = ptrtoint ptr %buf_len.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %buf_len.i.i, align 4
  %sub.i163.i = sub i32 %149, %rem.i.i
  store i32 %sub.i163.i, ptr %buf_len.i.i, align 4
  %150 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %tx_buf.i.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %151, align 1
  %conv.i.i = zext i8 %153 to i32
  %incdec.ptr.i.i = getelementptr i8, ptr %151, i32 1
  store ptr %incdec.ptr.i.i, ptr %tx_buf.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rem.i.i)
  %tobool4.not.i.i = icmp eq i32 %rem.i.i, 1
  br i1 %tobool4.not.i.i, label %if.then2.i.i.while.end.i.i_crit_edge, label %while.body.i.i.1

if.then2.i.i.while.end.i.i_crit_edge:             ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

while.body.i.i.1:                                 ; preds = %if.then2.i.i
  %shl5.i.i.1 = shl nuw nsw i32 %conv.i.i, 8
  %154 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %tx_buf.i.i, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %155, align 1
  %conv.i.i.1 = zext i8 %157 to i32
  %or.i164.i.1 = or i32 %shl5.i.i.1, %conv.i.i.1
  %incdec.ptr.i.i.1 = getelementptr i8, ptr %155, i32 1
  store ptr %incdec.ptr.i.i.1, ptr %tx_buf.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rem.i.i)
  %tobool4.not.i.i.1 = icmp eq i32 %rem.i.i, 2
  br i1 %tobool4.not.i.i.1, label %while.body.i.i.1.while.end.i.i_crit_edge, label %while.body.i.i.2

while.body.i.i.1.while.end.i.i_crit_edge:         ; preds = %while.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

while.body.i.i.2:                                 ; preds = %while.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %shl5.i.i.2 = shl nuw nsw i32 %or.i164.i.1, 8
  %158 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %tx_buf.i.i, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %159, align 1
  %conv.i.i.2 = zext i8 %161 to i32
  %or.i164.i.2 = or i32 %shl5.i.i.2, %conv.i.i.2
  %incdec.ptr.i.i.2 = getelementptr i8, ptr %159, i32 1
  store ptr %incdec.ptr.i.i.2, ptr %tx_buf.i.i, align 4
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.2, %while.body.i.i.1.while.end.i.i_crit_edge, %if.then2.i.i.while.end.i.i_crit_edge
  %or.i164.i.lcssa = phi i32 [ %conv.i.i, %if.then2.i.i.while.end.i.i_crit_edge ], [ %or.i164.i.1, %while.body.i.i.1.while.end.i.i_crit_edge ], [ %or.i164.i.2, %while.body.i.i.2 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %162 = tail call i32 @llvm.bswap.i32(i32 %or.i164.i.lcssa) #6
  %163 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i33.i.i = getelementptr i8, ptr %164, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i.i, i32 %162) #6, !srcloc !94
  br label %a3700_spi_header_set.exit.i

a3700_spi_header_set.exit.i:                      ; preds = %while.end.i.i, %if.then.i.i.a3700_spi_header_set.exit.i_crit_edge, %a3700_spi_pin_mode_set.exit.i.a3700_spi_header_set.exit.i_crit_edge
  %165 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %rx_buf.i, align 4
  %tobool13.not.i = icmp eq ptr %166, null
  br i1 %tobool13.not.i, label %if.else16.i, label %if.then14.i

if.then14.i:                                      ; preds = %a3700_spi_header_set.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %167 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i.i26 = getelementptr i8, ptr %168, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i26, i32 0) #6, !srcloc !94
  %buf_len.i27 = getelementptr inbounds %struct.a3700_spi, ptr %96, i32 0, i32 8
  %169 = ptrtoint ptr %buf_len.i27 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %buf_len.i27, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #6
  %172 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i166.i = getelementptr i8, ptr %173, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166.i, i32 %171) #6, !srcloc !94
  %174 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i168.i = getelementptr i8, ptr %175, i32 4
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i168.i) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %177 = and i32 %176, -8454145
  %178 = or i32 %177, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %179 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i170.i = getelementptr i8, ptr %180, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170.i, i32 %178) #6, !srcloc !94
  br label %if.end25.i

if.else16.i:                                      ; preds = %a3700_spi_header_set.exit.i
  %181 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %xfer, align 4
  %tobool18.not.i = icmp eq ptr %182, null
  br i1 %tobool18.not.i, label %if.else16.i.if.end25.i_crit_edge, label %if.then19.i

if.else16.i.if.end25.i_crit_edge:                 ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.then19.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #8
  %183 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i172.i = getelementptr i8, ptr %184, i32 4
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i172.i) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %186 = or i32 %185, 8454144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %187 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i174.i = getelementptr i8, ptr %188, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174.i, i32 %186) #6, !srcloc !94
  %buf_len22.i = getelementptr inbounds %struct.a3700_spi, ptr %96, i32 0, i32 8
  %189 = ptrtoint ptr %buf_len22.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %buf_len22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %cmp.i28 = icmp ne i32 %190, 0
  %xmit_data.i = getelementptr inbounds %struct.a3700_spi, ptr %96, i32 0, i32 5
  %frombool.i = zext i1 %cmp.i28 to i8
  %191 = ptrtoint ptr %xmit_data.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %frombool.i, ptr %xmit_data.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then19.i, %if.else16.i.if.end25.i_crit_edge, %if.then14.i
  %buf_len26.i = getelementptr inbounds %struct.a3700_spi, ptr %96, i32 0, i32 8
  %192 = ptrtoint ptr %buf_len26.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %buf_len26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool27.not212.i = icmp eq i32 %193, 0
  br i1 %tobool27.not212.i, label %if.end25.i.while.end.i33_crit_edge, label %while.body.lr.ph.i29

if.end25.i.while.end.i33_crit_edge:               ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i33

while.body.lr.ph.i29:                             ; preds = %if.end25.i
  %rx_buf39.i = getelementptr inbounds %struct.a3700_spi, ptr %96, i32 0, i32 7
  br label %while.body.i30

while.body.i30:                                   ; preds = %if.end54.i.while.body.i30_crit_edge, %while.body.lr.ph.i29
  %194 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %tx_buf.i.i, align 4
  %tobool29.not.i = icmp eq ptr %195, null
  br i1 %tobool29.not.i, label %if.else38.i, label %if.then30.i

if.then30.i:                                      ; preds = %while.body.i30
  %call31.i = tail call fastcc zeroext i1 @a3700_spi_transfer_wait(ptr noundef %spi, i32 noundef 8) #6
  br i1 %call31.i, label %if.end33.i, label %if.then30.i.error.i_crit_edge

if.then30.i.error.i_crit_edge:                    ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error.i

if.end33.i:                                       ; preds = %if.then30.i
  %196 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %base.i.i.i18, align 4
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %197) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %198)
  %tobool.not1.i.i = icmp sgt i32 %198, -1
  br i1 %tobool.not1.i.i, label %if.end33.i.land.rhs.i.i_crit_edge, label %if.end33.i.if.end54.i_crit_edge

if.end33.i.if.end54.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.i

if.end33.i.land.rhs.i.i_crit_edge:                ; preds = %if.end33.i
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i182.i.land.rhs.i.i_crit_edge, %if.end33.i.land.rhs.i.i_crit_edge
  %199 = ptrtoint ptr %buf_len26.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %buf_len26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool1.not.i177.i = icmp eq i32 %200, 0
  br i1 %tobool1.not.i177.i, label %land.rhs.i.i.while.end.i33_crit_edge, label %while.body.i182.i

land.rhs.i.i.while.end.i33_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i33

while.body.i182.i:                                ; preds = %land.rhs.i.i
  %201 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %tx_buf.i.i, align 4
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %202, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %205 = tail call i32 @llvm.bswap.i32(i32 %204) #6
  %206 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i.i178.i = getelementptr i8, ptr %207, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i178.i, i32 %205) #6, !srcloc !94
  %208 = ptrtoint ptr %buf_len26.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %buf_len26.i, align 4
  %sub.i179.i = add i32 %209, -4
  store i32 %sub.i179.i, ptr %buf_len26.i, align 4
  %210 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %tx_buf.i.i, align 4
  %add.ptr.i180.i = getelementptr i8, ptr %211, i32 4
  store ptr %add.ptr.i180.i, ptr %tx_buf.i.i, align 4
  %212 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %base.i.i.i18, align 4
  %214 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %213) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %tobool.not.i181.i = icmp sgt i32 %214, -1
  br i1 %tobool.not.i181.i, label %while.body.i182.i.land.rhs.i.i_crit_edge, label %while.body.i182.i.if.end54.i_crit_edge

while.body.i182.i.if.end54.i_crit_edge:           ; preds = %while.body.i182.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.i

while.body.i182.i.land.rhs.i.i_crit_edge:         ; preds = %while.body.i182.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i.i

if.else38.i:                                      ; preds = %while.body.i30
  %215 = ptrtoint ptr %rx_buf39.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %rx_buf39.i, align 4
  %tobool40.not.i = icmp eq ptr %216, null
  br i1 %tobool40.not.i, label %if.else38.i.if.end54.i_crit_edge, label %if.then41.i

if.else38.i.if.end54.i_crit_edge:                 ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.i

if.then41.i:                                      ; preds = %if.else38.i
  %call42.i = tail call fastcc zeroext i1 @a3700_spi_transfer_wait(ptr noundef %spi, i32 noundef 4) #6
  br i1 %call42.i, label %if.end48.i, label %if.then41.i.error.i_crit_edge

if.then41.i.error.i_crit_edge:                    ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error.i

if.end48.i:                                       ; preds = %if.then41.i
  %217 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %base.i.i.i18, align 4
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %218) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %220 = and i32 %219, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool.not3.i.i = icmp eq i32 %220, 0
  br i1 %tobool.not3.i.i, label %if.end48.i.land.rhs.i188.i_crit_edge, label %if.end48.i.if.end54.i_crit_edge

if.end48.i.if.end54.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.i

if.end48.i.land.rhs.i188.i_crit_edge:             ; preds = %if.end48.i
  br label %land.rhs.i188.i

land.rhs.i188.i:                                  ; preds = %if.end.i.i.land.rhs.i188.i_crit_edge, %if.end48.i.land.rhs.i188.i_crit_edge
  %221 = ptrtoint ptr %buf_len26.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %buf_len26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool1.not.i187.i = icmp eq i32 %222, 0
  br i1 %tobool1.not.i187.i, label %land.rhs.i188.i.while.end.i33_crit_edge, label %while.body.i190.i

land.rhs.i188.i.while.end.i33_crit_edge:          ; preds = %land.rhs.i188.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i33

while.body.i190.i:                                ; preds = %land.rhs.i188.i
  %223 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i.i189.i = getelementptr i8, ptr %224, i32 12
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i189.i) #6, !srcloc !91
  %226 = tail call i32 @llvm.bswap.i32(i32 %225) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %227 = ptrtoint ptr %buf_len26.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %buf_len26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %228)
  %cmp.i.i31 = icmp ugt i32 %228, 3
  br i1 %cmp.i.i31, label %if.then.i193.i, label %while.cond6.preheader.i.i

while.cond6.preheader.i.i:                        ; preds = %while.body.i190.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool8.not1.i.i = icmp eq i32 %228, 0
  br i1 %tobool8.not1.i.i, label %while.cond6.preheader.i.i.if.end.i.i_crit_edge, label %while.cond6.preheader.i.i.while.body9.i.i_crit_edge

while.cond6.preheader.i.i.while.body9.i.i_crit_edge: ; preds = %while.cond6.preheader.i.i
  br label %while.body9.i.i

while.cond6.preheader.i.i.if.end.i.i_crit_edge:   ; preds = %while.cond6.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i193.i:                                   ; preds = %while.body.i190.i
  call void @__sanitizer_cov_trace_pc() #8
  %229 = ptrtoint ptr %rx_buf39.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %rx_buf39.i, align 4
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_storeN_noabort(i32 %231, i32 4)
  store i32 %226, ptr %230, align 1
  %232 = ptrtoint ptr %buf_len26.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %buf_len26.i, align 4
  %sub.i191.i = add i32 %233, -4
  store i32 %sub.i191.i, ptr %buf_len26.i, align 4
  %234 = load ptr, ptr %rx_buf39.i, align 4
  %add.ptr.i192.i = getelementptr i8, ptr %234, i32 4
  store ptr %add.ptr.i192.i, ptr %rx_buf39.i, align 4
  br label %if.end.i.i

while.body9.i.i:                                  ; preds = %while.body9.i.i.while.body9.i.i_crit_edge, %while.cond6.preheader.i.i.while.body9.i.i_crit_edge
  %val.02.i.i = phi i32 [ %shr.i.i, %while.body9.i.i.while.body9.i.i_crit_edge ], [ %226, %while.cond6.preheader.i.i.while.body9.i.i_crit_edge ]
  %conv.i194.i = trunc i32 %val.02.i.i to i8
  %235 = ptrtoint ptr %rx_buf39.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %rx_buf39.i, align 4
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %conv.i194.i, ptr %236, align 1
  %shr.i.i = lshr i32 %val.02.i.i, 8
  %238 = ptrtoint ptr %buf_len26.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %buf_len26.i, align 4
  %dec.i195.i = add i32 %239, -1
  store i32 %dec.i195.i, ptr %buf_len26.i, align 4
  %240 = load ptr, ptr %rx_buf39.i, align 4
  %incdec.ptr.i196.i = getelementptr i8, ptr %240, i32 1
  store ptr %incdec.ptr.i196.i, ptr %rx_buf39.i, align 4
  %tobool8.not.i.i = icmp eq i32 %dec.i195.i, 0
  br i1 %tobool8.not.i.i, label %while.body9.i.i.if.end.i.i_crit_edge, label %while.body9.i.i.while.body9.i.i_crit_edge

while.body9.i.i.while.body9.i.i_crit_edge:        ; preds = %while.body9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body9.i.i

while.body9.i.i.if.end.i.i_crit_edge:             ; preds = %while.body9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %while.body9.i.i.if.end.i.i_crit_edge, %if.then.i193.i, %while.cond6.preheader.i.i.if.end.i.i_crit_edge
  %241 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %base.i.i.i18, align 4
  %243 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %242) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %244 = and i32 %243, 268435456
  %tobool.not.i197.i = icmp eq i32 %244, 0
  br i1 %tobool.not.i197.i, label %if.end.i.i.land.rhs.i188.i_crit_edge, label %if.end.i.i.if.end54.i_crit_edge

if.end.i.i.if.end54.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.i

if.end.i.i.land.rhs.i188.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i188.i

if.end54.i:                                       ; preds = %if.end.i.i.if.end54.i_crit_edge, %if.end48.i.if.end54.i_crit_edge, %if.else38.i.if.end54.i_crit_edge, %while.body.i182.i.if.end54.i_crit_edge, %if.end33.i.if.end54.i_crit_edge
  %245 = ptrtoint ptr %buf_len26.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %.pr.i32 = load i32, ptr %buf_len26.i, align 4
  %tobool27.not.i = icmp eq i32 %.pr.i32, 0
  br i1 %tobool27.not.i, label %if.end54.i.while.end.i33_crit_edge, label %if.end54.i.while.body.i30_crit_edge

if.end54.i.while.body.i30_crit_edge:              ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i30

if.end54.i.while.end.i33_crit_edge:               ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i33

while.end.i33:                                    ; preds = %if.end54.i.while.end.i33_crit_edge, %land.rhs.i188.i.while.end.i33_crit_edge, %land.rhs.i.i.while.end.i33_crit_edge, %if.end25.i.while.end.i33_crit_edge
  %246 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %tx_buf.i.i, align 4
  %tobool56.not.i = icmp eq ptr %247, null
  br i1 %tobool56.not.i, label %while.end.i33.if.end78.i_crit_edge, label %if.then57.i

while.end.i33.if.end78.i_crit_edge:               ; preds = %while.end.i33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78.i

if.then57.i:                                      ; preds = %while.end.i33
  %xmit_data58.i = getelementptr inbounds %struct.a3700_spi, ptr %96, i32 0, i32 5
  %248 = ptrtoint ptr %xmit_data58.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %xmit_data58.i, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %249)
  %tobool59.not.i = icmp eq i8 %249, 0
  br i1 %tobool59.not.i, label %if.then57.i.if.end68.i_crit_edge, label %if.then60.i

if.then57.i.if.end68.i_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68.i

if.then60.i:                                      ; preds = %if.then57.i
  %call61.i = tail call fastcc zeroext i1 @a3700_spi_transfer_wait(ptr noundef %spi, i32 noundef 64) #6
  br i1 %call61.i, label %if.then60.i.if.end68.i_crit_edge, label %do.end65.i

if.then60.i.if.end68.i_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68.i

do.end65.i:                                       ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.30) #9
  br label %return

if.end68.i:                                       ; preds = %if.then60.i.if.end68.i_crit_edge, %if.then57.i.if.end68.i_crit_edge
  %call69.i = tail call fastcc zeroext i1 @a3700_spi_transfer_wait(ptr noundef %spi, i32 noundef 2) #6
  br i1 %call69.i, label %if.end75.i, label %do.end73.i

do.end73.i:                                       ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.33) #9
  br label %return

if.end75.i:                                       ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #8
  %250 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i199.i = getelementptr i8, ptr %251, i32 4
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i199.i) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %253 = or i32 %252, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %254 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i201.i = getelementptr i8, ptr %255, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i201.i, i32 %253) #6, !srcloc !94
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.end75.i, %while.end.i33.if.end78.i_crit_edge
  %256 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i203.i = getelementptr i8, ptr %257, i32 4
  %258 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i203.i) #6, !srcloc !91
  %259 = tail call i32 @llvm.bswap.i32(i32 %258) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %and83.i = and i32 %259, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %tobool84.not.i = icmp eq i32 %and83.i, 0
  br i1 %tobool84.not.i, label %if.end78.i.if.end95.i_crit_edge, label %if.end86.i

if.end78.i.if.end95.i_crit_edge:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95.i

if.end86.i:                                       ; preds = %if.end78.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %260 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %260(i32 noundef 214748) #6
  %261 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i203.1.i = getelementptr i8, ptr %262, i32 4
  %263 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i203.1.i) #6, !srcloc !91
  %264 = tail call i32 @llvm.bswap.i32(i32 %263) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %and83.1.i = and i32 %264, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.1.i)
  %tobool84.not.1.i = icmp eq i32 %and83.1.i, 0
  br i1 %tobool84.not.1.i, label %if.end86.i.if.end95.i_crit_edge, label %if.end86.1.i

if.end86.i.if.end95.i_crit_edge:                  ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95.i

if.end86.1.i:                                     ; preds = %if.end86.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %265 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %265(i32 noundef 214748) #6
  %266 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i203.2.i = getelementptr i8, ptr %267, i32 4
  %268 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i203.2.i) #6, !srcloc !91
  %269 = tail call i32 @llvm.bswap.i32(i32 %268) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %and83.2.i = and i32 %269, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.2.i)
  %tobool84.not.2.i = icmp eq i32 %and83.2.i, 0
  br i1 %tobool84.not.2.i, label %if.end86.1.i.if.end95.i_crit_edge, label %if.end86.2.i

if.end86.1.i.if.end95.i_crit_edge:                ; preds = %if.end86.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95.i

if.end86.2.i:                                     ; preds = %if.end86.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %270 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %270(i32 noundef 214748) #6
  %271 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i203.3.i = getelementptr i8, ptr %272, i32 4
  %273 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i203.3.i) #6, !srcloc !91
  %274 = tail call i32 @llvm.bswap.i32(i32 %273) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %and83.3.i = and i32 %274, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.3.i)
  %tobool84.not.3.i = icmp eq i32 %and83.3.i, 0
  br i1 %tobool84.not.3.i, label %if.end86.2.i.if.end95.i_crit_edge, label %if.end86.3.i

if.end86.2.i.if.end95.i_crit_edge:                ; preds = %if.end86.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95.i

if.end86.3.i:                                     ; preds = %if.end86.2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %275 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %275(i32 noundef 214748) #6
  %276 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i203.4.i = getelementptr i8, ptr %277, i32 4
  %278 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i203.4.i) #6, !srcloc !91
  %279 = tail call i32 @llvm.bswap.i32(i32 %278) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %and83.4.i = and i32 %279, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.4.i)
  %tobool84.not.4.i = icmp eq i32 %and83.4.i, 0
  br i1 %tobool84.not.4.i, label %if.end86.3.i.if.end95.i_crit_edge, label %if.end86.4.i

if.end86.3.i.if.end95.i_crit_edge:                ; preds = %if.end86.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95.i

if.end86.4.i:                                     ; preds = %if.end86.3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %280 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %280(i32 noundef 214748) #6
  %281 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i203.5.i = getelementptr i8, ptr %282, i32 4
  %283 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i203.5.i) #6, !srcloc !91
  %284 = tail call i32 @llvm.bswap.i32(i32 %283) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %and83.5.i = and i32 %284, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.5.i)
  %tobool84.not.5.i = icmp eq i32 %and83.5.i, 0
  br i1 %tobool84.not.5.i, label %if.end86.4.i.if.end95.i_crit_edge, label %if.end86.5.i

if.end86.4.i.if.end95.i_crit_edge:                ; preds = %if.end86.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95.i

if.end86.5.i:                                     ; preds = %if.end86.4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %285 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %285(i32 noundef 214748) #6
  %286 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i203.6.i = getelementptr i8, ptr %287, i32 4
  %288 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i203.6.i) #6, !srcloc !91
  %289 = tail call i32 @llvm.bswap.i32(i32 %288) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %and83.6.i = and i32 %289, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.6.i)
  %tobool84.not.6.i = icmp eq i32 %and83.6.i, 0
  br i1 %tobool84.not.6.i, label %if.end86.5.i.if.end95.i_crit_edge, label %if.end86.6.i

if.end86.5.i.if.end95.i_crit_edge:                ; preds = %if.end86.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95.i

if.end86.6.i:                                     ; preds = %if.end86.5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %290 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %290(i32 noundef 214748) #6
  %291 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i203.7.i = getelementptr i8, ptr %292, i32 4
  %293 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i203.7.i) #6, !srcloc !91
  %294 = tail call i32 @llvm.bswap.i32(i32 %293) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %and83.7.i = and i32 %294, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.7.i)
  %tobool84.not.7.i = icmp eq i32 %and83.7.i, 0
  br i1 %tobool84.not.7.i, label %if.end86.6.i.if.end95.i_crit_edge, label %if.end86.7.i

if.end86.6.i.if.end95.i_crit_edge:                ; preds = %if.end86.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95.i

if.end86.7.i:                                     ; preds = %if.end86.6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %295 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %295(i32 noundef 214748) #6
  %296 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i203.8.i = getelementptr i8, ptr %297, i32 4
  %298 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i203.8.i) #6, !srcloc !91
  %299 = tail call i32 @llvm.bswap.i32(i32 %298) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %and83.8.i = and i32 %299, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.8.i)
  %tobool84.not.8.i = icmp eq i32 %and83.8.i, 0
  br i1 %tobool84.not.8.i, label %if.end86.7.i.if.end95.i_crit_edge, label %if.end86.8.i

if.end86.7.i.if.end95.i_crit_edge:                ; preds = %if.end86.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95.i

if.end86.8.i:                                     ; preds = %if.end86.7.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %300 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %300(i32 noundef 214748) #6
  br label %error.i

if.end95.i:                                       ; preds = %if.end86.7.i.if.end95.i_crit_edge, %if.end86.6.i.if.end95.i_crit_edge, %if.end86.5.i.if.end95.i_crit_edge, %if.end86.4.i.if.end95.i_crit_edge, %if.end86.3.i.if.end95.i_crit_edge, %if.end86.2.i.if.end95.i_crit_edge, %if.end86.1.i.if.end95.i_crit_edge, %if.end86.i.if.end95.i_crit_edge, %if.end78.i.if.end95.i_crit_edge
  %.lcssa.i = phi i32 [ %259, %if.end78.i.if.end95.i_crit_edge ], [ %264, %if.end86.i.if.end95.i_crit_edge ], [ %269, %if.end86.1.i.if.end95.i_crit_edge ], [ %274, %if.end86.2.i.if.end95.i_crit_edge ], [ %279, %if.end86.3.i.if.end95.i_crit_edge ], [ %284, %if.end86.4.i.if.end95.i_crit_edge ], [ %289, %if.end86.5.i.if.end95.i_crit_edge ], [ %294, %if.end86.6.i.if.end95.i_crit_edge ], [ %299, %if.end86.7.i.if.end95.i_crit_edge ]
  %and96.i = and i32 %.lcssa.i, -16385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %301 = tail call i32 @llvm.bswap.i32(i32 %and96.i) #6
  %302 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i205.i = getelementptr i8, ptr %303, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i205.i, i32 %301) #6, !srcloc !94
  br label %out.i

error.i:                                          ; preds = %if.end86.8.i, %if.then41.i.error.i_crit_edge, %if.then30.i.error.i_crit_edge
  %.str.36.sink.i = phi ptr [ @.str.36, %if.end86.8.i ], [ @.str.27, %if.then41.i.error.i_crit_edge ], [ @.str.24, %if.then30.i.error.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull %.str.36.sink.i) #9
  %304 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i.i207.i = getelementptr i8, ptr %305, i32 4
  %306 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i207.i) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %307 = or i32 %306, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %308 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i14.i.i = getelementptr i8, ptr %309, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i.i, i32 %307) #6, !srcloc !94
  %310 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %311, i32 4
  %312 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i.i) #6, !srcloc !91
  %313 = tail call i32 @llvm.bswap.i32(i32 %312) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %and.i.i = and i32 %313, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %error.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge, label %if.end.i208.i

error.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge: ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %a3700_spi_transfer_abort_fifo.exit.i

if.end.i208.i:                                    ; preds = %error.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %314 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %314(i32 noundef 214748) #6
  %315 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i16.1.i.i = getelementptr i8, ptr %316, i32 4
  %317 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.1.i.i) #6, !srcloc !91
  %318 = tail call i32 @llvm.bswap.i32(i32 %317) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %and.1.i.i = and i32 %318, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool2.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool2.not.1.i.i, label %if.end.i208.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge, label %if.end.1.i.i

if.end.i208.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge: ; preds = %if.end.i208.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %a3700_spi_transfer_abort_fifo.exit.i

if.end.1.i.i:                                     ; preds = %if.end.i208.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %319 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %319(i32 noundef 214748) #6
  %320 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i16.2.i.i = getelementptr i8, ptr %321, i32 4
  %322 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.2.i.i) #6, !srcloc !91
  %323 = tail call i32 @llvm.bswap.i32(i32 %322) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %and.2.i.i = and i32 %323, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i)
  %tobool2.not.2.i.i = icmp eq i32 %and.2.i.i, 0
  br i1 %tobool2.not.2.i.i, label %if.end.1.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge, label %if.end.2.i.i

if.end.1.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge: ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %a3700_spi_transfer_abort_fifo.exit.i

if.end.2.i.i:                                     ; preds = %if.end.1.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %324 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %324(i32 noundef 214748) #6
  %325 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i16.3.i.i = getelementptr i8, ptr %326, i32 4
  %327 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.3.i.i) #6, !srcloc !91
  %328 = tail call i32 @llvm.bswap.i32(i32 %327) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %and.3.i.i = and i32 %328, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i)
  %tobool2.not.3.i.i = icmp eq i32 %and.3.i.i, 0
  br i1 %tobool2.not.3.i.i, label %if.end.2.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge, label %if.end.3.i.i

if.end.2.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge: ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %a3700_spi_transfer_abort_fifo.exit.i

if.end.3.i.i:                                     ; preds = %if.end.2.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %329 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %329(i32 noundef 214748) #6
  %330 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i16.4.i.i = getelementptr i8, ptr %331, i32 4
  %332 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.4.i.i) #6, !srcloc !91
  %333 = tail call i32 @llvm.bswap.i32(i32 %332) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %and.4.i.i = and i32 %333, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i.i)
  %tobool2.not.4.i.i = icmp eq i32 %and.4.i.i, 0
  br i1 %tobool2.not.4.i.i, label %if.end.3.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge, label %if.end.4.i.i

if.end.3.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge: ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %a3700_spi_transfer_abort_fifo.exit.i

if.end.4.i.i:                                     ; preds = %if.end.3.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %334 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %334(i32 noundef 214748) #6
  %335 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i16.5.i.i = getelementptr i8, ptr %336, i32 4
  %337 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.5.i.i) #6, !srcloc !91
  %338 = tail call i32 @llvm.bswap.i32(i32 %337) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %and.5.i.i = and i32 %338, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i.i)
  %tobool2.not.5.i.i = icmp eq i32 %and.5.i.i, 0
  br i1 %tobool2.not.5.i.i, label %if.end.4.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge, label %if.end.5.i.i

if.end.4.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge: ; preds = %if.end.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %a3700_spi_transfer_abort_fifo.exit.i

if.end.5.i.i:                                     ; preds = %if.end.4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %339 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %339(i32 noundef 214748) #6
  %340 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i16.6.i.i = getelementptr i8, ptr %341, i32 4
  %342 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.6.i.i) #6, !srcloc !91
  %343 = tail call i32 @llvm.bswap.i32(i32 %342) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %and.6.i.i = and i32 %343, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i.i)
  %tobool2.not.6.i.i = icmp eq i32 %and.6.i.i, 0
  br i1 %tobool2.not.6.i.i, label %if.end.5.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge, label %if.end.6.i.i

if.end.5.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge: ; preds = %if.end.5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %a3700_spi_transfer_abort_fifo.exit.i

if.end.6.i.i:                                     ; preds = %if.end.5.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %344 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %344(i32 noundef 214748) #6
  %345 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i16.7.i.i = getelementptr i8, ptr %346, i32 4
  %347 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.7.i.i) #6, !srcloc !91
  %348 = tail call i32 @llvm.bswap.i32(i32 %347) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %and.7.i.i = and i32 %348, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i.i)
  %tobool2.not.7.i.i = icmp eq i32 %and.7.i.i, 0
  br i1 %tobool2.not.7.i.i, label %if.end.6.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge, label %if.end.7.i.i

if.end.6.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge: ; preds = %if.end.6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %a3700_spi_transfer_abort_fifo.exit.i

if.end.7.i.i:                                     ; preds = %if.end.6.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %349 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %349(i32 noundef 214748) #6
  %350 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i16.8.i.i = getelementptr i8, ptr %351, i32 4
  %352 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.8.i.i) #6, !srcloc !91
  %353 = tail call i32 @llvm.bswap.i32(i32 %352) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %and.8.i.i = and i32 %353, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8.i.i)
  %tobool2.not.8.i.i = icmp eq i32 %and.8.i.i, 0
  br i1 %tobool2.not.8.i.i, label %if.end.7.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge, label %if.end.8.i.i

if.end.7.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge: ; preds = %if.end.7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %a3700_spi_transfer_abort_fifo.exit.i

if.end.8.i.i:                                     ; preds = %if.end.7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %354 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %354(i32 noundef 214748) #6
  br label %a3700_spi_transfer_abort_fifo.exit.i

a3700_spi_transfer_abort_fifo.exit.i:             ; preds = %if.end.8.i.i, %if.end.7.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge, %if.end.6.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge, %if.end.5.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge, %if.end.4.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge, %if.end.3.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge, %if.end.2.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge, %if.end.1.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge, %if.end.i208.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge, %error.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %313, %error.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge ], [ %318, %if.end.i208.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge ], [ %323, %if.end.1.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge ], [ %328, %if.end.2.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge ], [ %333, %if.end.3.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge ], [ %338, %if.end.4.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge ], [ %343, %if.end.5.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge ], [ %348, %if.end.6.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge ], [ %353, %if.end.7.i.i.a3700_spi_transfer_abort_fifo.exit.i_crit_edge ], [ %353, %if.end.8.i.i ]
  %call3.i.i = tail call fastcc i32 @a3700_spi_fifo_flush(ptr noundef %96) #6
  %and4.i.i = and i32 %.lcssa.i.i, -16385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %355 = tail call i32 @llvm.bswap.i32(i32 %and4.i.i) #6
  %356 = ptrtoint ptr %base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %base.i.i.i18, align 4
  %add.ptr.i18.i.i = getelementptr i8, ptr %357, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i.i, i32 %355) #6, !srcloc !94
  br label %out.i

out.i:                                            ; preds = %a3700_spi_transfer_abort_fifo.exit.i, %if.end95.i
  %ret.3.i = phi i32 [ -110, %a3700_spi_transfer_abort_fifo.exit.i ], [ 0, %if.end95.i ]
  tail call void @spi_finalize_current_transfer(ptr noundef %master) #6
  br label %return

return:                                           ; preds = %out.i, %do.end73.i, %do.end65.i, %a3700_spi_transfer_one_full_duplex.exit
  %retval.0 = phi i32 [ 0, %a3700_spi_transfer_one_full_duplex.exit ], [ %ret.3.i, %out.i ], [ -110, %do.end73.i ], [ -110, %do.end65.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a3700_spi_unprepare_message(ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %message) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.a3700_spi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a3700_spi_set_cs(ptr nocapture noundef readonly %spi, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %chip_select1 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %4 = ptrtoint ptr %chip_select1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_select1, align 4
  %conv2 = zext i8 %5 to i32
  %base.i.i6 = getelementptr inbounds %struct.a3700_spi, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %base.i.i6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %shl.i7 = shl i32 65536, %conv2
  br i1 %enable, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or.i = or i32 %9, %shl.i7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %11 = ptrtoint ptr %base.i.i6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #6, !srcloc !94
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %neg.i = xor i32 %shl.i7, -1
  %and.i = and i32 %9, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %14 = ptrtoint ptr %base.i.i6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #6, !srcloc !94
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a3700_spi_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base.i = getelementptr inbounds %struct.a3700_spi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 40
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %wait_mask = getelementptr inbounds %struct.a3700_spi, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %wait_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wait_mask, align 4
  %and = and i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %9, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 0) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %11, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %4) #6, !srcloc !94
  %done = getelementptr inbounds %struct.a3700_spi, ptr %1, i32 0, i32 11
  tail call void @complete(ptr noundef %done) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @a3700_spi_fifo_flush(ptr nocapture noundef readonly %a3700_spi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.a3700_spi, ptr %a3700_spi, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %3 = or i32 %2, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %3) #6, !srcloc !94
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %9 = and i32 %8, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #6
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i11.1 = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.1) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %14 = and i32 %13, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.not.1 = icmp eq i32 %14, 0
  br i1 %tobool2.not.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #6
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i11.2 = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.2) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %19 = and i32 %18, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool2.not.2 = icmp eq i32 %19, 0
  br i1 %tobool2.not.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #6
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr.i11.3 = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.3) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %24 = and i32 %23, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool2.not.3 = icmp eq i32 %24, 0
  br i1 %tobool2.not.3, label %if.end.2.cleanup_crit_edge, label %if.end.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #6
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr.i11.4 = getelementptr i8, ptr %27, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.4) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %29 = and i32 %28, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool2.not.4 = icmp eq i32 %29, 0
  br i1 %tobool2.not.4, label %if.end.3.cleanup_crit_edge, label %if.end.4

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #6
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 4
  %add.ptr.i11.5 = getelementptr i8, ptr %32, i32 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.5) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %34 = and i32 %33, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool2.not.5 = icmp eq i32 %34, 0
  br i1 %tobool2.not.5, label %if.end.4.cleanup_crit_edge, label %if.end.5

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #6
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %add.ptr.i11.6 = getelementptr i8, ptr %37, i32 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.6) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %39 = and i32 %38, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool2.not.6 = icmp eq i32 %39, 0
  br i1 %tobool2.not.6, label %if.end.5.cleanup_crit_edge, label %if.end.6

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.6:                                         ; preds = %if.end.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748) #6
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  %add.ptr.i11.7 = getelementptr i8, ptr %42, i32 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.7) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %44 = and i32 %43, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool2.not.7 = icmp eq i32 %44, 0
  br i1 %tobool2.not.7, label %if.end.6.cleanup_crit_edge, label %if.end.7

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.7:                                         ; preds = %if.end.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748) #6
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr.i11.8 = getelementptr i8, ptr %47, i32 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.8) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %49 = and i32 %48, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool2.not.8 = icmp eq i32 %49, 0
  br i1 %tobool2.not.8, label %if.end.7.cleanup_crit_edge, label %if.end.8

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.8:                                         ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.end.7.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.1.cleanup_crit_edge ], [ 0, %if.end.2.cleanup_crit_edge ], [ 0, %if.end.3.cleanup_crit_edge ], [ 0, %if.end.4.cleanup_crit_edge ], [ 0, %if.end.5.cleanup_crit_edge ], [ 0, %if.end.6.cleanup_crit_edge ], [ 0, %if.end.7.cleanup_crit_edge ], [ -110, %if.end.8 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @a3700_spi_transfer_wait(ptr nocapture noundef readonly %spi, i32 noundef %bit_mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %wait_mask = getelementptr inbounds %struct.a3700_spi, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %wait_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %bit_mask, ptr %wait_mask, align 4
  %5 = load ptr, ptr %master, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.a3700_spi, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !91
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %wait_mask.i = getelementptr inbounds %struct.a3700_spi, ptr %7, i32 0, i32 10
  %12 = ptrtoint ptr %wait_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wait_mask.i, align 4
  %and.i = and i32 %13, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.a3700_spi_wait_completion.exit_crit_edge

entry.a3700_spi_wait_completion.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %a3700_spi_wait_completion.exit

if.end.i:                                         ; preds = %entry
  %done.i = getelementptr inbounds %struct.a3700_spi, ptr %7, i32 0, i32 11
  %14 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %done.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %15) #6, !srcloc !94
  %call5.i = tail call i32 @wait_for_completion_timeout(ptr noundef %done.i, i32 noundef 1) #6
  %18 = ptrtoint ptr %wait_mask.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %wait_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool7.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i.a3700_spi_wait_completion.exit_crit_edge

if.end.i.a3700_spi_wait_completion.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %a3700_spi_wait_completion.exit

if.end9.i:                                        ; preds = %if.end.i
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !91
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %23 = ptrtoint ptr %wait_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wait_mask.i, align 4
  %and12.i = and i32 %24, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end9.i.a3700_spi_wait_completion.exit_crit_edge

if.end9.i.a3700_spi_wait_completion.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %a3700_spi_wait_completion.exit

if.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %26, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 0) #6, !srcloc !94
  br label %a3700_spi_wait_completion.exit

a3700_spi_wait_completion.exit:                   ; preds = %if.end15.i, %if.end9.i.a3700_spi_wait_completion.exit_crit_edge, %if.end.i.a3700_spi_wait_completion.exit_crit_edge, %entry.a3700_spi_wait_completion.exit_crit_edge
  %retval.0.i = phi i1 [ false, %if.end15.i ], [ true, %entry.a3700_spi_wait_completion.exit_crit_edge ], [ true, %if.end.i.a3700_spi_wait_completion.exit_crit_edge ], [ true, %if.end9.i.a3700_spi_wait_completion.exit_crit_edge ]
  ret i1 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__initcall__kmod_spi_armada_3700__236_930_a3700_spi_driver_init6, !1, !"__initcall__kmod_spi_armada_3700__236_930_a3700_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-armada-3700.c", i32 930, i32 1}
!2 = !{ptr @__exitcall_a3700_spi_driver_exit, !1, !"__exitcall_a3700_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description237, !4, !"__UNIQUE_ID_description237", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-armada-3700.c", i32 932, i32 1}
!5 = !{ptr @__UNIQUE_ID_author238, !6, !"__UNIQUE_ID_author238", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-armada-3700.c", i32 933, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-armada-3700.c", i32 934, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias241, !11, !"__UNIQUE_ID_alias241", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-armada-3700.c", i32 935, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-armada-3700.c", i32 923, i32 11}
!14 = !{ptr @a3700_spi_driver, !15, !"a3700_spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-armada-3700.c", i32 921, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-armada-3700.c", i32 825, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @a3700_spi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @a3700_spi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-armada-3700.c", i32 830, i32 36}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-armada-3700.c", i32 831, i32 3}
!28 = !{ptr @a3700_spi_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @a3700_spi_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-armada-3700.c", i32 871, i32 3}
!32 = !{ptr @a3700_spi_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @a3700_spi_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-armada-3700.c", i32 877, i32 3}
!36 = !{ptr @a3700_spi_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @a3700_spi_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/spi/spi-armada-3700.c", i32 891, i32 3}
!40 = !{ptr @a3700_spi_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @a3700_spi_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/spi/spi-armada-3700.c", i32 897, i32 3}
!44 = !{ptr @a3700_spi_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @a3700_spi_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/spi/spi-armada-3700.c", i32 577, i32 3}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @a3700_spi_prepare_message._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @a3700_spi_prepare_message._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/spi/spi-armada-3700.c", i32 654, i32 5}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @a3700_spi_transfer_one_fifo._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @a3700_spi_transfer_one_fifo._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/spi/spi-armada-3700.c", i32 667, i32 5}
!58 = !{ptr @a3700_spi_transfer_one_fifo._entry.26, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @a3700_spi_transfer_one_fifo._entry_ptr.28, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/spi/spi-armada-3700.c", i32 700, i32 5}
!62 = !{ptr @a3700_spi_transfer_one_fifo._entry.29, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @a3700_spi_transfer_one_fifo._entry_ptr.31, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/spi/spi-armada-3700.c", i32 706, i32 4}
!66 = !{ptr @a3700_spi_transfer_one_fifo._entry.32, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @a3700_spi_transfer_one_fifo._entry_ptr.34, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/spi/spi-armada-3700.c", i32 723, i32 3}
!70 = !{ptr @a3700_spi_transfer_one_fifo._entry.35, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @a3700_spi_transfer_one_fifo._entry_ptr.37, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/spi/spi-armada-3700.c", i32 177, i32 3}
!74 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @a3700_spi_pin_mode_set._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @a3700_spi_pin_mode_set._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @init_completion.__key, !78, !"__key", i1 false, i1 false}
!78 = !{!"../include/linux/completion.h", i32 87, i32 2}
!79 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @a3700_spi_dt_ids, !81, !"a3700_spi_dt_ids", i1 false, i1 false}
!81 = !{!"../drivers/spi/spi-armada-3700.c", i32 807, i32 34}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i64 4259983}
!92 = !{i64 2154436066}
!93 = !{i64 2154436288}
!94 = !{i64 4259565}
!95 = !{i64 2154454885}
!96 = !{i64 2154454727}
!97 = !{i8 0, i8 2}
