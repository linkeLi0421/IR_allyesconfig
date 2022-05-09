; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-tegra20-sflash.c_pt.bc'
source_filename = "../drivers/spi/spi-tegra20-sflash.c"
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
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.tegra_sflash_data = type { ptr, ptr, %struct.spinlock, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_spi_tegra20_sflash__235_605_tegra_sflash_driver_init6 = internal global ptr @tegra_sflash_driver_init, section ".initcall6.init", align 4
@tegra_sflash_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_sflash_probe, ptr @tegra_sflash_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_sflash_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @slink_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_sflash_driver_exit = internal global ptr @tegra_sflash_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias236 = internal constant [51 x i8] c"spi_tegra20_sflash.alias=platform:spi-tegra-sflash\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [77 x i8] c"spi_tegra20_sflash.description=NVIDIA Tegra20 Serial Flash Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [65 x i8] c"spi_tegra20_sflash.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [55 x i8] c"spi_tegra20_sflash.file=drivers/spi/spi-tegra20-sflash\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [34 x i8] c"spi_tegra20_sflash.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spi-tegra-sflash\00", [47 x i8] zeroinitializer }, align 32
@tegra_sflash_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-sflash\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@slink_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_sflash_suspend, ptr @tegra_sflash_resume, ptr @tegra_sflash_suspend, ptr @tegra_sflash_resume, ptr @tegra_sflash_suspend, ptr @tegra_sflash_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_sflash_runtime_suspend, ptr @tegra_sflash_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_sflash_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 426, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error: No device match found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_sflash_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/spi/spi-tegra20-sflash.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_sflash_probe._entry_ptr = internal global ptr @tegra_sflash_probe._entry, section ".printk_index", align 4
@tegra_sflash_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 432, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"master allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_sflash_probe._entry_ptr.8 = internal global ptr @tegra_sflash_probe._entry.6, section ".printk_index", align 4
@tegra_sflash_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&tsd->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi-max-frequency\00", [46 x i8] zeroinitializer }, align 32
@tegra_sflash_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 463, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register ISR for IRQ %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_sflash_probe._entry_ptr.13 = internal global ptr @tegra_sflash_probe._entry.11, section ".printk_index", align 4
@tegra_sflash_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 469, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"can not get clock\0A\00", [45 x i8] zeroinitializer }, align 32
@tegra_sflash_probe._entry_ptr.16 = internal global ptr @tegra_sflash_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@tegra_sflash_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 476, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"can not get reset\0A\00", [45 x i8] zeroinitializer }, align 32
@tegra_sflash_probe._entry_ptr.20 = internal global ptr @tegra_sflash_probe._entry.18, section ".printk_index", align 4
@tegra_sflash_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 491, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pm runtime get failed, e = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_sflash_probe._entry_ptr.23 = internal global ptr @tegra_sflash_probe._entry.21, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tegra_sflash_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 508, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"can not register to master err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_sflash_probe._entry_ptr.26 = internal global ptr @tegra_sflash_probe._entry.24, section ".printk_index", align 4
@tegra_sflash_transfer_one_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 325, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"spi can not start transfer, err %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tegra_sflash_transfer_one_message\00", [62 x i8] zeroinitializer }, align 32
@tegra_sflash_transfer_one_message._entry_ptr = internal global ptr @tegra_sflash_transfer_one_message._entry, section ".printk_index", align 4
@tegra_sflash_transfer_one_message._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 333, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"spi transfer timeout, err %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_sflash_transfer_one_message._entry_ptr.31 = internal global ptr @tegra_sflash_transfer_one_message._entry.29, section ".printk_index", align 4
@tegra_sflash_transfer_one_message._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.3, i32 339, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Error in Transfer\0A\00", [45 x i8] zeroinitializer }, align 32
@tegra_sflash_transfer_one_message._entry_ptr.34 = internal global ptr @tegra_sflash_transfer_one_message._entry.32, section ".printk_index", align 4
@handle_cpu_based_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 365, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CpuXfer ERROR bit set 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"handle_cpu_based_xfer\00", [42 x i8] zeroinitializer }, align 32
@handle_cpu_based_xfer._entry_ptr = internal global ptr @handle_cpu_based_xfer._entry, section ".printk_index", align 4
@handle_cpu_based_xfer._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.3, i32 368, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CpuXfer 0x%08x:0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@handle_cpu_based_xfer._entry_ptr.39 = internal global ptr @handle_cpu_based_xfer._entry.37, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@tegra_sflash_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 585, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"clk_prepare failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tegra_sflash_runtime_resume\00", [36 x i8] zeroinitializer }, align 32
@tegra_sflash_runtime_resume._entry_ptr = internal global ptr @tegra_sflash_runtime_resume._entry, section ".printk_index", align 4
@tegra_sflash_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 555, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pm runtime failed, e = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra_sflash_resume\00", [44 x i8] zeroinitializer }, align 32
@tegra_sflash_resume._entry_ptr = internal global ptr @tegra_sflash_resume._entry, section ".printk_index", align 4
@___asan_gen_.45 = private unnamed_addr constant [20 x i8] c"tegra_sflash_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 596, i32 31 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 598, i32 12 }
@___asan_gen_.51 = private unnamed_addr constant [22 x i8] c"tegra_sflash_of_match\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 411, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"slink_pm_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 591, i32 32 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 426, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 432, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 446, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 448, i32 46 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 462, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 469, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 474, i32 58 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 476, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 491, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 508, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 324, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 332, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 339, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 364, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 366, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 87, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 585, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.181 = private constant [36 x i8] c"../drivers/spi/spi-tegra20-sflash.c\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 555, i32 3 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_alias236, ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_tegra_sflash_driver_exit, ptr @__initcall__kmod_spi_tegra20_sflash__235_605_tegra_sflash_driver_init6, ptr @handle_cpu_based_xfer._entry, ptr @handle_cpu_based_xfer._entry.37, ptr @handle_cpu_based_xfer._entry_ptr, ptr @handle_cpu_based_xfer._entry_ptr.39, ptr @tegra_sflash_driver_exit, ptr @tegra_sflash_probe._entry, ptr @tegra_sflash_probe._entry.11, ptr @tegra_sflash_probe._entry.14, ptr @tegra_sflash_probe._entry.18, ptr @tegra_sflash_probe._entry.21, ptr @tegra_sflash_probe._entry.24, ptr @tegra_sflash_probe._entry.6, ptr @tegra_sflash_probe._entry_ptr, ptr @tegra_sflash_probe._entry_ptr.13, ptr @tegra_sflash_probe._entry_ptr.16, ptr @tegra_sflash_probe._entry_ptr.20, ptr @tegra_sflash_probe._entry_ptr.23, ptr @tegra_sflash_probe._entry_ptr.26, ptr @tegra_sflash_probe._entry_ptr.8, ptr @tegra_sflash_resume._entry, ptr @tegra_sflash_resume._entry_ptr, ptr @tegra_sflash_runtime_resume._entry, ptr @tegra_sflash_runtime_resume._entry_ptr, ptr @tegra_sflash_transfer_one_message._entry, ptr @tegra_sflash_transfer_one_message._entry.29, ptr @tegra_sflash_transfer_one_message._entry.32, ptr @tegra_sflash_transfer_one_message._entry_ptr, ptr @tegra_sflash_transfer_one_message._entry_ptr.31, ptr @tegra_sflash_transfer_one_message._entry_ptr.34, ptr @tegra_sflash_driver, ptr @.str, ptr @tegra_sflash_of_match, ptr @slink_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @tegra_sflash_probe.__key, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @init_completion.__key, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sflash_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sflash_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slink_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sflash_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sflash_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sflash_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sflash_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sflash_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sflash_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sflash_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sflash_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sflash_transfer_one_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sflash_transfer_one_message._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sflash_transfer_one_message._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_cpu_based_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_cpu_based_xfer._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sflash_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sflash_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sflash_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_sflash_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_sflash_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_sflash_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sflash_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @tegra_sflash_of_match, ptr noundef %dev) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 188, i1 noundef zeroext false) #7
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %mode_bits, align 8
  %transfer_one_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 45
  %1 = ptrtoint ptr %transfer_one_message to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @tegra_sflash_transfer_one_message, ptr %transfer_one_message, align 4
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %2 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %auto_runtime_pm, align 4
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 4, ptr %num_chipselect, align 2
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i189 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i189 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i189, align 4
  %master12 = getelementptr inbounds %struct.tegra_sflash_data, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %master12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %master12, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %6, align 4
  %lock = getelementptr inbounds %struct.tegra_sflash_data, ptr %6, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @tegra_sflash_probe.__key, i16 noundef signext 3) #7
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.10, ptr noundef %max_speed_hz, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool21.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool21.not, label %if.end10.if.end24_crit_edge, label %if.then22

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then22:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 25000000, ptr %max_speed_hz, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end10.if.end24_crit_edge
  %call25 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base = getelementptr inbounds %struct.tegra_sflash_data, ptr %6, i32 0, i32 5
  %14 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call25, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call25 to i32
  br label %spi_controller_put.exit

if.end31:                                         ; preds = %if.end24
  %call32 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.tegra_sflash_data, ptr %6, i32 0, i32 6
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end31.dev_name.exit_crit_edge

if.end31.dev_name.exit_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end31.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %20, %if.end.i ], [ %18, %if.end31.dev_name.exit_crit_edge ]
  %call.i190 = tail call i32 @request_threaded_irq(i32 noundef %call32, ptr noundef nonnull @tegra_sflash_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i190)
  %cmp = icmp slt i32 %call.i190, 0
  br i1 %cmp, label %do.end40, label %if.end43

do.end40:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %22) #10
  br label %spi_controller_put.exit

if.end43:                                         ; preds = %dev_name.exit
  %call45 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.tegra_sflash_data, ptr %6, i32 0, i32 3
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call45, ptr %clk, align 4
  %cmp.i191 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i191, label %do.end51, label %if.end55

do.end51:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  %24 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %exit_free_irq

if.end55:                                         ; preds = %if.end43
  %call.i192 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %rst = getelementptr inbounds %struct.tegra_sflash_data, ptr %6, i32 0, i32 4
  %27 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i192, ptr %rst, align 4
  %cmp.i193 = icmp ugt ptr %call.i192, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i193, label %do.end63, label %if.end67

do.end63:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #10
  %28 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rst, align 4
  %30 = ptrtoint ptr %29 to i32
  br label %exit_free_irq

if.end67:                                         ; preds = %if.end55
  %xfer_completion = getelementptr inbounds %struct.tegra_sflash_data, ptr %6, i32 0, i32 22
  %31 = ptrtoint ptr %xfer_completion to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %xfer_completion, align 4
  %wait.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %6, i32 0, i32 22, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_completion.__key) #7
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %32 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i194 = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i194, label %if.end67.if.end77_crit_edge, label %if.then71

if.end67.if.end77_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then71:                                        ; preds = %if.end67
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver_data.i.i.i, align 4
  %clk.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clk.i, align 4
  %call.i.i196 = tail call i32 @clk_prepare(ptr noundef %38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i196)
  %tobool.not.i.i = icmp eq i32 %call.i.i196, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then71.clk_prepare_enable.exit.i_crit_edge

if.then71.clk_prepare_enable.exit.i_crit_edge:    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %if.then71
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end77_crit_edge, label %if.then3.i.i

if.end.i.i.if.end77_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %38) #7
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.then71.clk_prepare_enable.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i196, %if.then71.clk_prepare_enable.exit.i_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i197 = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i197, label %tegra_sflash_runtime_resume.exit, label %clk_prepare_enable.exit.i.if.end77_crit_edge

clk_prepare_enable.exit.i.if.end77_crit_edge:     ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

tegra_sflash_runtime_resume.exit:                 ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.41, i32 noundef %retval.0.i.i) #10
  br label %exit_pm_disable

if.end77:                                         ; preds = %clk_prepare_enable.exit.i.if.end77_crit_edge, %if.end.i.i.if.end77_crit_edge, %if.end67.if.end77_crit_edge
  %call.i199 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %cmp80 = icmp slt i32 %call.i199, 0
  br i1 %cmp80, label %do.end84, label %if.end87

do.end84:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call.i199) #10
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev)
  br label %exit_pm_disable

if.end87:                                         ; preds = %if.end77
  %41 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rst, align 4
  %call89 = tail call i32 @reset_control_assert(ptr noundef %42) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 429496) #7
  %44 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rst, align 4
  %call91 = tail call i32 @reset_control_deassert(ptr noundef %45) #7
  %def_command_reg = getelementptr inbounds %struct.tegra_sflash_data, ptr %6, i32 0, i32 19
  %46 = ptrtoint ptr %def_command_reg to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 268439552, ptr %def_command_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 1048592) #7, !srcloc !104
  %call.i200 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  %of_node96 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %49 = ptrtoint ptr %of_node96 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %of_node96, align 8
  %of_node98 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %51 = ptrtoint ptr %of_node98 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %of_node98, align 8
  %call100 = tail call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %do.end105, label %if.end87.cleanup_crit_edge

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end105:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call100) #10
  br label %exit_pm_disable

exit_pm_disable:                                  ; preds = %do.end105, %do.end84, %tegra_sflash_runtime_resume.exit
  %ret.0 = phi i32 [ %call.i199, %do.end84 ], [ %call100, %do.end105 ], [ %retval.0.i.i, %tegra_sflash_runtime_resume.exit ]
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %52 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp.i201 = icmp eq i32 %53, 2
  br i1 %cmp.i201, label %exit_pm_disable.exit_free_irq_crit_edge, label %if.then111

exit_pm_disable.exit_free_irq_crit_edge:          ; preds = %exit_pm_disable
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_free_irq

if.then111:                                       ; preds = %exit_pm_disable
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i.i203 = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %driver_data.i.i.i203 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %driver_data.i.i.i203, align 4
  %base.i.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i.i, align 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #7, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  %clk.i204 = getelementptr inbounds %struct.tegra_sflash_data, ptr %57, i32 0, i32 3
  %61 = ptrtoint ptr %clk.i204 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %clk.i204, align 4
  tail call void @clk_disable(ptr noundef %62) #7
  tail call void @clk_unprepare(ptr noundef %62) #7
  br label %exit_free_irq

exit_free_irq:                                    ; preds = %if.then111, %exit_pm_disable.exit_free_irq_crit_edge, %do.end63, %do.end51
  %ret.1 = phi i32 [ %26, %do.end51 ], [ %30, %do.end63 ], [ %ret.0, %exit_pm_disable.exit_free_irq_crit_edge ], [ %ret.0, %if.then111 ]
  %63 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %irq, align 4
  %call116 = tail call ptr @free_irq(i32 noundef %64, ptr noundef %6) #7
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %exit_free_irq, %do.end40, %if.then28
  %ret.2 = phi i32 [ %15, %if.then28 ], [ %call.i190, %do.end40 ], [ %ret.1, %exit_free_irq ]
  tail call void @put_device(ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end87.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ %ret.2, %spi_controller_put.exit ], [ -12, %do.end8 ], [ -19, %do.end ], [ %call100, %if.end87.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sflash_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i11 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i11, align 4
  %irq = getelementptr inbounds %struct.tegra_sflash_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %3) #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %6 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp eq i32 %7, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  %clk.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %11, i32 0, i32 3
  %15 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %16) #7
  tail call void @clk_unprepare(ptr noundef %16) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sflash_transfer_one_message(ptr noundef %master, ptr noundef %msg) #2 align 64 {
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
  %status = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 7
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %status, align 4
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 6
  %5 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %actual_length, align 4
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %msg, align 4
  %cmp.not99 = icmp eq ptr %7, %msg
  br i1 %cmp.not99, label %entry.exit_crit_edge, label %for.body.lr.ph

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

for.body.lr.ph:                                   ; preds = %entry
  %xfer_completion = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 22
  %master.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 2
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 7
  %chip_select.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 4
  %tx_status = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 16
  %rx_status = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 17
  %def_command_reg = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 19
  %base.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn101 = phi ptr [ %7, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %is_first_msg.0.off0100 = phi i1 [ true, %for.body.lr.ph ], [ false, %for.inc.for.body_crit_edge ]
  %xfer.0102 = getelementptr i8, ptr %.pn101, i32 -84
  %8 = ptrtoint ptr %xfer_completion to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %xfer_completion, align 4
  %9 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i, align 4
  %speed_hz.i = getelementptr i8, ptr %.pn101, i32 -24
  %13 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %speed_hz.i, align 4
  %cur_speed.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %12, i32 0, i32 7
  %15 = ptrtoint ptr %cur_speed.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cur_speed.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.not.i = icmp eq i32 %14, %16
  br i1 %cmp.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %clk.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %12, i32 0, i32 3
  %17 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk.i, align 4
  %call2.i = tail call i32 @clk_set_rate(ptr noundef %18, i32 noundef %14) #7
  %19 = ptrtoint ptr %cur_speed.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %14, ptr %cur_speed.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %cur_spi.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %12, i32 0, i32 8
  %20 = ptrtoint ptr %cur_spi.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %3, ptr %cur_spi.i, align 4
  %cur_pos.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %12, i32 0, i32 9
  %21 = ptrtoint ptr %cur_pos.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %cur_pos.i, align 4
  %cur_rx_pos.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %12, i32 0, i32 14
  %22 = ptrtoint ptr %cur_rx_pos.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %cur_rx_pos.i, align 4
  %cur_tx_pos.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %12, i32 0, i32 15
  %23 = ptrtoint ptr %cur_tx_pos.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %cur_tx_pos.i, align 4
  %curr_xfer.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %12, i32 0, i32 23
  %24 = ptrtoint ptr %curr_xfer.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %xfer.0102, ptr %curr_xfer.i, align 4
  %len.i.i = getelementptr i8, ptr %.pn101, i32 -76
  %25 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i.i, align 4
  %bits_per_word.i.i = getelementptr i8, ptr %.pn101, i32 -39
  %27 = ptrtoint ptr %bits_per_word.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bits_per_word.i.i, align 1
  %conv.i.i = zext i8 %28 to i32
  %sub1.i.i = add nuw nsw i32 %conv.i.i, 7
  %div1.i.i = lshr i32 %sub1.i.i, 3
  %bytes_per_word.i.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %12, i32 0, i32 11
  %29 = ptrtoint ptr %bytes_per_word.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div1.i.i, ptr %bytes_per_word.i.i, align 4
  %div3.i.i = udiv i32 %26, %div1.i.i
  %30 = tail call i32 @llvm.umin.i32(i32 %div3.i.i, i32 4) #7
  %curr_xfer_words.i.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %12, i32 0, i32 13
  %31 = ptrtoint ptr %curr_xfer_words.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %curr_xfer_words.i.i, align 4
  br i1 %is_first_msg.0.off0100, label %if.then5.i, label %if.else23.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %def_command_reg.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %12, i32 0, i32 19
  %32 = ptrtoint ptr %def_command_reg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %def_command_reg.i, align 4
  %34 = ptrtoint ptr %bits_per_word.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bits_per_word.i.i, align 1
  %36 = add i8 %35, 31
  %37 = and i8 %36, 31
  %and.i = zext i8 %37 to i32
  %.masked.i = and i32 %33, -203431937
  %or6.i = or i32 %.masked.i, %and.i
  %38 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mode.i, align 8
  %and8.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %spec.select.v.i = select i1 %tobool9.not.i, i32 8192, i32 2105344
  %and14.i = shl i32 %39, 25
  %40 = and i32 %and14.i, 67108864
  %41 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %chip_select.i, align 4
  %conv20.i = zext i8 %42 to i32
  %shl21.i = shl i32 32, %conv20.i
  %spec.select.i = or i32 %or6.i, %40
  %43 = or i32 %spec.select.i, %spec.select.v.i
  %or22.i = or i32 %43, %shl21.i
  br label %if.end32.i

if.else23.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %command_reg.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %12, i32 0, i32 20
  %44 = ptrtoint ptr %command_reg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %command_reg.i, align 4
  %and24.i = and i32 %45, -49184
  %46 = ptrtoint ptr %bits_per_word.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bits_per_word.i.i, align 1
  %48 = add i8 %47, 31
  %49 = and i8 %48, 31
  %and28.i = zext i8 %49 to i32
  %or30.i = or i32 %and24.i, %and28.i
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.else23.i, %if.then5.i
  %command.2.i = phi i32 [ %or22.i, %if.then5.i ], [ %or30.i, %if.else23.i ]
  %cur_direction.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %12, i32 0, i32 12
  %50 = ptrtoint ptr %cur_direction.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %cur_direction.i, align 4
  %rx_buf.i = getelementptr i8, ptr %.pn101, i32 -80
  %51 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rx_buf.i, align 4
  %tobool33.not.i = icmp eq ptr %52, null
  br i1 %tobool33.not.i, label %if.end32.i.if.end38.i_crit_edge, label %if.then34.i

if.end32.i.if.end38.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

if.then34.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %or35.i = or i32 %command.2.i, 16384
  %53 = ptrtoint ptr %cur_direction.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %cur_direction.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then34.i, %if.end32.i.if.end38.i_crit_edge
  %command.3.i = phi i32 [ %or35.i, %if.then34.i ], [ %command.2.i, %if.end32.i.if.end38.i_crit_edge ]
  %54 = ptrtoint ptr %xfer.0102 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %xfer.0102, align 4
  %tobool39.not.i = icmp eq ptr %55, null
  br i1 %tobool39.not.i, label %if.end38.i.tegra_sflash_start_transfer_one.exit_crit_edge, label %if.then40.i

if.end38.i.tegra_sflash_start_transfer_one.exit_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_sflash_start_transfer_one.exit

if.then40.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  %or41.i = or i32 %command.3.i, 32768
  %56 = ptrtoint ptr %cur_direction.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cur_direction.i, align 4
  %or43.i = or i32 %57, 1
  store i32 %or43.i, ptr %cur_direction.i, align 4
  br label %tegra_sflash_start_transfer_one.exit

tegra_sflash_start_transfer_one.exit:             ; preds = %if.then40.i, %if.end38.i.tegra_sflash_start_transfer_one.exit_crit_edge
  %command.4.i = phi i32 [ %or41.i, %if.then40.i ], [ %command.3.i, %if.end38.i.tegra_sflash_start_transfer_one.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %58 = tail call i32 @llvm.bswap.i32(i32 %command.4.i) #7
  %base.i.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %12, i32 0, i32 5
  %59 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #7, !srcloc !104
  %command_reg45.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %12, i32 0, i32 20
  %61 = ptrtoint ptr %command_reg45.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %command.4.i, ptr %command_reg45.i, align 4
  tail call fastcc void @tegra_sflash_start_cpu_based_transfer(ptr noundef %12, ptr noundef %xfer.0102) #7
  %call10 = tail call i32 @wait_for_completion_timeout(ptr noundef %xfer_completion, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %do.end24, label %if.end44, !prof !107

do.end24:                                         ; preds = %tegra_sflash_start_transfer_one.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 331, i32 noundef 9, ptr noundef null) #7
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.30, i32 noundef 0) #10
  br label %exit

if.end44:                                         ; preds = %tegra_sflash_start_transfer_one.exit
  %64 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool45.not = icmp eq i32 %65, 0
  br i1 %tobool45.not, label %lor.lhs.false, label %if.end44.do.end50_crit_edge

if.end44.do.end50_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50

lor.lhs.false:                                    ; preds = %if.end44
  %66 = ptrtoint ptr %rx_status to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool46.not = icmp eq i32 %67, 0
  br i1 %tobool46.not, label %if.end52, label %lor.lhs.false.do.end50_crit_edge

lor.lhs.false.do.end50_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50

do.end50:                                         ; preds = %lor.lhs.false.do.end50_crit_edge, %if.end44.do.end50_crit_edge
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.33) #10
  br label %exit

if.end52:                                         ; preds = %lor.lhs.false
  %70 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len.i.i, align 4
  %72 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %actual_length, align 4
  %add = add i32 %73, %71
  store i32 %add, ptr %actual_length, align 4
  %cs_change = getelementptr i8, ptr %.pn101, i32 -40
  %74 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load = load i8, ptr %cs_change, align 4
  %75 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool54.not = icmp eq i8 %75, 0
  br i1 %tobool54.not, label %if.end52.for.inc_crit_edge, label %land.lhs.true

if.end52.for.inc_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end52
  %delay = getelementptr i8, ptr %.pn101, i32 -38
  %76 = ptrtoint ptr %delay to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %delay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool55.not = icmp eq i16 %77, 0
  br i1 %tobool55.not, label %land.lhs.true.for.inc_crit_edge, label %if.then56

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then56:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %def_command_reg to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %def_command_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #7
  %81 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #7, !srcloc !104
  %call.i = tail call i32 @spi_delay_exec(ptr noundef %delay, ptr noundef %xfer.0102) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then56, %land.lhs.true.for.inc_crit_edge, %if.end52.for.inc_crit_edge
  %83 = ptrtoint ptr %.pn101 to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pn = load ptr, ptr %.pn101, align 4
  %cmp.not = icmp eq ptr %.pn, %msg
  br i1 %cmp.not, label %for.inc.exit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.exit_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

exit:                                             ; preds = %for.inc.exit_crit_edge, %do.end50, %do.end24, %entry.exit_crit_edge
  %ret.0 = phi i32 [ -5, %do.end24 ], [ -5, %do.end50 ], [ 0, %entry.exit_crit_edge ], [ 0, %for.inc.exit_crit_edge ]
  %def_command_reg64 = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 19
  %84 = ptrtoint ptr %def_command_reg64 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %def_command_reg64, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #7
  %base.i96 = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 5
  %87 = ptrtoint ptr %base.i96 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base.i96, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %86) #7, !srcloc !104
  %89 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %ret.0, ptr %status, align 4
  tail call void @spi_finalize_current_message(ptr noundef %master) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sflash_isr(i32 noundef %irq, ptr noundef %context_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %context_data, i32 0, i32 5
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !105
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  %status_reg = getelementptr inbounds %struct.tegra_sflash_data, ptr %context_data, i32 0, i32 18
  %4 = ptrtoint ptr %status_reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %status_reg, align 4
  %cur_direction = getelementptr inbounds %struct.tegra_sflash_data, ptr %context_data, i32 0, i32 12
  %5 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cur_direction, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and2 = and i32 %3, 67108864
  %tx_status = getelementptr inbounds %struct.tegra_sflash_data, ptr %context_data, i32 0, i32 16
  %7 = ptrtoint ptr %tx_status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and2, ptr %tx_status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and4 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and8 = and i32 %3, 134217728
  %rx_status = getelementptr inbounds %struct.tegra_sflash_data, ptr %context_data, i32 0, i32 17
  %8 = ptrtoint ptr %rx_status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and8, ptr %rx_status, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 76) #7, !srcloc !104
  %curr_xfer.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %context_data, i32 0, i32 23
  %11 = ptrtoint ptr %curr_xfer.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %curr_xfer.i, align 4
  %lock.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %context_data, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %tx_status.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %context_data, i32 0, i32 16
  %13 = ptrtoint ptr %tx_status.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end9.do.end.i_crit_edge

if.end9.do.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end9
  %rx_status.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %context_data, i32 0, i32 17
  %15 = ptrtoint ptr %rx_status.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool1.not.i = icmp eq i32 %16, 0
  br i1 %tobool1.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %17 = ptrtoint ptr %status_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %tobool3.not.i = icmp sgt i32 %18, -1
  br i1 %tobool3.not.i, label %if.end.i, label %lor.lhs.false2.i.do.end.i_crit_edge

lor.lhs.false2.i.do.end.i_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false2.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %if.end9.do.end.i_crit_edge
  %19 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %context_data, align 4
  %21 = ptrtoint ptr %status_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status_reg, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.35, i32 noundef %22) #10
  %23 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %context_data, align 4
  %command_reg.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %context_data, i32 0, i32 20
  %25 = ptrtoint ptr %command_reg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %command_reg.i, align 4
  %dma_control_reg.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %context_data, i32 0, i32 21
  %27 = ptrtoint ptr %dma_control_reg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_control_reg.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.38, i32 noundef %26, i32 noundef %28) #10
  %rst.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %context_data, i32 0, i32 4
  %29 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rst.i, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %30) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 429496) #7
  %32 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rst.i, align 4
  %call10.i = tail call i32 @reset_control_deassert(ptr noundef %33) #7
  %xfer_completion.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %context_data, i32 0, i32 22
  tail call void @complete(ptr noundef %xfer_completion.i) #7
  br label %handle_cpu_based_xfer.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  %34 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cur_direction, align 4
  %and11.i = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end.i.if.end15.i_crit_edge, label %if.then13.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then13.i:                                      ; preds = %if.end.i
  %rx_buf1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 1
  %36 = ptrtoint ptr %rx_buf1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rx_buf1.i.i, align 4
  %cur_rx_pos.i.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %context_data, i32 0, i32 14
  %38 = ptrtoint ptr %cur_rx_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cur_rx_pos.i.i, align 4
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %41, i32 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  %43 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not9.i.i = icmp eq i32 %43, 0
  br i1 %tobool.not9.i.i, label %while.body.lr.ph.i.i, label %if.then13.i.tegra_sflash_read_rx_fifo_to_client_rxbuf.exit.i_crit_edge

if.then13.i.tegra_sflash_read_rx_fifo_to_client_rxbuf.exit.i_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_sflash_read_rx_fifo_to_client_rxbuf.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.then13.i
  %add.ptr.i.i20 = getelementptr i8, ptr %37, i32 %39
  %bytes_per_word.i.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %context_data, i32 0, i32 11
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %for.end.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %rx_buf.011.i.i = phi ptr [ %add.ptr.i.i20, %while.body.lr.ph.i.i ], [ %rx_buf.1.lcssa.i.i, %for.end.i.i.while.body.i.i_crit_edge ]
  %read_words.010.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %inc4.i.i, %for.end.i.i.while.body.i.i_crit_edge ]
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %45, i32 32
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i.i) #7, !srcloc !105
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  %48 = ptrtoint ptr %bytes_per_word.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bytes_per_word.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp5.not.i.i = icmp eq i32 %49, 0
  br i1 %cmp5.not.i.i, label %while.body.i.i.for.end.i.i_crit_edge, label %while.body.i.i.for.body.i.i_crit_edge

while.body.i.i.for.body.i.i_crit_edge:            ; preds = %while.body.i.i
  br label %for.body.i.i

while.body.i.i.for.end.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %while.body.i.i.for.body.i.i_crit_edge
  %i.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %while.body.i.i.for.body.i.i_crit_edge ]
  %rx_buf.16.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %rx_buf.011.i.i, %while.body.i.i.for.body.i.i_crit_edge ]
  %mul.i.i = shl i32 %i.07.i.i, 3
  %shr.i.i = lshr i32 %47, %mul.i.i
  %conv.i.i = trunc i32 %shr.i.i to i8
  %incdec.ptr.i.i = getelementptr i8, ptr %rx_buf.16.i.i, i32 1
  %50 = ptrtoint ptr %rx_buf.16.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv.i.i, ptr %rx_buf.16.i.i, align 1
  %inc.i.i = add nuw i32 %i.07.i.i, 1
  %51 = ptrtoint ptr %bytes_per_word.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bytes_per_word.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %52
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %while.body.i.i.for.end.i.i_crit_edge
  %rx_buf.1.lcssa.i.i = phi ptr [ %rx_buf.011.i.i, %while.body.i.i.for.end.i.i_crit_edge ], [ %incdec.ptr.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %inc4.i.i = add i32 %read_words.010.i.i, 1
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %54, i32 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i.i) #7, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  %56 = and i32 %55, 2
  %tobool.not.i.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i.i, label %for.end.i.i.while.body.i.i_crit_edge, label %for.end.i.i.tegra_sflash_read_rx_fifo_to_client_rxbuf.exit.i_crit_edge

for.end.i.i.tegra_sflash_read_rx_fifo_to_client_rxbuf.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_sflash_read_rx_fifo_to_client_rxbuf.exit.i

for.end.i.i.while.body.i.i_crit_edge:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

tegra_sflash_read_rx_fifo_to_client_rxbuf.exit.i: ; preds = %for.end.i.i.tegra_sflash_read_rx_fifo_to_client_rxbuf.exit.i_crit_edge, %if.then13.i.tegra_sflash_read_rx_fifo_to_client_rxbuf.exit.i_crit_edge
  %read_words.0.lcssa.i.i = phi i32 [ 0, %if.then13.i.tegra_sflash_read_rx_fifo_to_client_rxbuf.exit.i_crit_edge ], [ %inc4.i.i, %for.end.i.i.tegra_sflash_read_rx_fifo_to_client_rxbuf.exit.i_crit_edge ]
  %bytes_per_word6.i.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %context_data, i32 0, i32 11
  %57 = ptrtoint ptr %bytes_per_word6.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bytes_per_word6.i.i, align 4
  %mul7.i.i = mul i32 %58, %read_words.0.lcssa.i.i
  %59 = ptrtoint ptr %cur_rx_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cur_rx_pos.i.i, align 4
  %add.i.i = add i32 %60, %mul7.i.i
  store i32 %add.i.i, ptr %cur_rx_pos.i.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %tegra_sflash_read_rx_fifo_to_client_rxbuf.exit.i, %if.end.i.if.end15.i_crit_edge
  %61 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cur_direction, align 4
  %and17.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %cur_rx_pos.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %context_data, i32 0, i32 14
  %cur_tx_pos.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %context_data, i32 0, i32 15
  %.sink.in.i = select i1 %tobool18.not.i, ptr %cur_rx_pos.i, ptr %cur_tx_pos.i
  %63 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %64 = getelementptr inbounds %struct.tegra_sflash_data, ptr %context_data, i32 0, i32 9
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %.sink.i, ptr %64, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 2
  %66 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %.sink.i)
  %cmp.i = icmp eq i32 %67, %.sink.i
  br i1 %cmp.i, label %if.then23.i, label %if.end25.i

if.then23.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %xfer_completion24.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %context_data, i32 0, i32 22
  tail call void @complete(ptr noundef %xfer_completion24.i) #7
  br label %handle_cpu_based_xfer.exit

if.end25.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %67, %.sink.i
  %bits_per_word.i.i = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 8
  %68 = ptrtoint ptr %bits_per_word.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bits_per_word.i.i, align 1
  %conv.i1.i = zext i8 %69 to i32
  %sub1.i.i = add nuw nsw i32 %conv.i1.i, 7
  %div1.i.i = lshr i32 %sub1.i.i, 3
  %bytes_per_word.i2.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %context_data, i32 0, i32 11
  %70 = ptrtoint ptr %bytes_per_word.i2.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %div1.i.i, ptr %bytes_per_word.i2.i, align 4
  %div3.i.i = udiv i32 %sub.i.i, %div1.i.i
  %71 = tail call i32 @llvm.umin.i32(i32 %div3.i.i, i32 4) #7
  %curr_xfer_words.i.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %context_data, i32 0, i32 13
  %72 = ptrtoint ptr %curr_xfer_words.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %curr_xfer_words.i.i, align 4
  tail call fastcc void @tegra_sflash_start_cpu_based_transfer(ptr noundef %context_data, ptr noundef %12) #7
  br label %handle_cpu_based_xfer.exit

handle_cpu_based_xfer.exit:                       ; preds = %if.end25.i, %if.then23.i, %do.end.i
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sflash_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %clk = getelementptr inbounds %struct.tegra_sflash_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end, label %clk_prepare_enable.exit.cleanup_crit_edge

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.41, i32 noundef %retval.0.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %clk_prepare_enable.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ 0, %clk_prepare_enable.exit.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #7, !srcloc !109
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !110
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sflash_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %base.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  %clk = getelementptr inbounds %struct.tegra_sflash_data, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %8) #7
  tail call void @clk_unprepare(ptr noundef %8) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_sflash_start_cpu_based_transfer(ptr nocapture noundef %tsd, ptr nocapture noundef readonly %t) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_direction = getelementptr inbounds %struct.tegra_sflash_data, ptr %tsd, i32 0, i32 12
  %0 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_direction, align 4
  %and = shl i32 %1, 26
  %2 = and i32 %and, 201326592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %3 = lshr exact i32 %2, 24
  %base.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %tsd, i32 0, i32 5
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #7, !srcloc !104
  %dma_control_reg = getelementptr inbounds %struct.tegra_sflash_data, ptr %tsd, i32 0, i32 21
  %6 = ptrtoint ptr %dma_control_reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %2, ptr %dma_control_reg, align 4
  %7 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cur_direction, align 4
  %and8 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %curr_xfer_words = getelementptr inbounds %struct.tegra_sflash_data, ptr %tsd, i32 0, i32 13
  %9 = ptrtoint ptr %curr_xfer_words to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %curr_xfer_words, align 4
  br i1 %tobool9.not, label %entry.if.end11_crit_edge, label %if.then10

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %entry
  %11 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %t, align 4
  %cur_tx_pos.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %tsd, i32 0, i32 15
  %13 = ptrtoint ptr %cur_tx_pos.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cur_tx_pos.i, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %10, i32 4) #7
  %bytes_per_word.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %tsd, i32 0, i32 11
  %16 = ptrtoint ptr %bytes_per_word.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bytes_per_word.i, align 4
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  %21 = and i32 %20, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not53.i = icmp eq i32 %21, 0
  br i1 %tobool.not53.i, label %for.cond.preheader.preheader.i, label %if.then10.tegra_sflash_fill_tx_fifo_from_client_txbuf.exit_crit_edge

if.then10.tegra_sflash_fill_tx_fifo_from_client_txbuf.exit_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_sflash_fill_tx_fifo_from_client_txbuf.exit

for.cond.preheader.preheader.i:                   ; preds = %if.then10
  %mul.i = mul i32 %17, %15
  %add.ptr.i1 = getelementptr i8, ptr %12, i32 %14
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %cleanup.i.for.cond.preheader.i_crit_edge, %for.cond.preheader.preheader.i
  %tx_buf.055.i = phi ptr [ %uglygep.i, %cleanup.i.for.cond.preheader.i_crit_edge ], [ %add.ptr.i1, %for.cond.preheader.preheader.i ]
  %nbytes.054.i = phi i32 [ %25, %cleanup.i.for.cond.preheader.i_crit_edge ], [ %mul.i, %for.cond.preheader.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.054.i)
  %tobool2.not46.i = icmp eq i32 %nbytes.054.i, 0
  br i1 %tobool2.not46.i, label %for.cond.preheader.i.cleanup.thread.i_crit_edge, label %land.rhs.lr.ph.i

for.cond.preheader.i.cleanup.thread.i_crit_edge:  ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

land.rhs.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %22 = ptrtoint ptr %bytes_per_word.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bytes_per_word.i, align 4
  %24 = add i32 %nbytes.054.i, -1
  %umin.i = tail call i32 @llvm.umin.i32(i32 %23, i32 %24) #7
  %uglygep.i = getelementptr i8, ptr %tx_buf.055.i, i32 %umin.i
  %25 = sub i32 %nbytes.054.i, %umin.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %x.050.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %or.i, %for.body.i.land.rhs.i_crit_edge ]
  %i.049.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc.i, %for.body.i.land.rhs.i_crit_edge ]
  %tx_buf.148.i = phi ptr [ %tx_buf.055.i, %land.rhs.lr.ph.i ], [ %incdec.ptr.i, %for.body.i.land.rhs.i_crit_edge ]
  %nbytes.147.i = phi i32 [ %nbytes.054.i, %land.rhs.lr.ph.i ], [ %dec.i, %for.body.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.049.i, i32 %23)
  %exitcond.not.i = icmp eq i32 %i.049.i, %23
  br i1 %exitcond.not.i, label %cleanup.i, label %for.body.i

for.body.i:                                       ; preds = %land.rhs.i
  %incdec.ptr.i = getelementptr i8, ptr %tx_buf.148.i, i32 1
  %26 = ptrtoint ptr %tx_buf.148.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tx_buf.148.i, align 1
  %conv.i = zext i8 %27 to i32
  %mul5.i = shl i32 %i.049.i, 3
  %shl.i = shl i32 %conv.i, %mul5.i
  %or.i = or i32 %shl.i, %x.050.i
  %inc.i = add nuw i32 %i.049.i, 1
  %dec.i = add i32 %nbytes.147.i, -1
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %for.body.i.cleanup.thread.i_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

for.body.i.cleanup.thread.i_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %for.body.i.cleanup.thread.i_crit_edge, %for.cond.preheader.i.cleanup.thread.i_crit_edge
  %x.0.lcssa.i = phi i32 [ %or.i, %for.body.i.cleanup.thread.i_crit_edge ], [ 0, %for.cond.preheader.i.cleanup.thread.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %28 = tail call i32 @llvm.bswap.i32(i32 %x.0.lcssa.i) #7
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %30, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 %28) #7, !srcloc !104
  br label %tegra_sflash_fill_tx_fifo_from_client_txbuf.exit

cleanup.i:                                        ; preds = %land.rhs.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %31 = tail call i32 @llvm.bswap.i32(i32 %x.050.i) #7
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr.i37.i = getelementptr i8, ptr %33, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i, i32 %31) #7, !srcloc !104
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %35, i32 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39.i) #7, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  %37 = and i32 %36, 16384
  %tobool.not.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i, label %cleanup.i.for.cond.preheader.i_crit_edge, label %cleanup.i.tegra_sflash_fill_tx_fifo_from_client_txbuf.exit_crit_edge

cleanup.i.tegra_sflash_fill_tx_fifo_from_client_txbuf.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_sflash_fill_tx_fifo_from_client_txbuf.exit

cleanup.i.for.cond.preheader.i_crit_edge:         ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader.i

tegra_sflash_fill_tx_fifo_from_client_txbuf.exit: ; preds = %cleanup.i.tegra_sflash_fill_tx_fifo_from_client_txbuf.exit_crit_edge, %cleanup.thread.i, %if.then10.tegra_sflash_fill_tx_fifo_from_client_txbuf.exit_crit_edge
  %38 = ptrtoint ptr %bytes_per_word.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bytes_per_word.i, align 4
  %mul12.i = mul i32 %39, %15
  %40 = ptrtoint ptr %cur_tx_pos.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cur_tx_pos.i, align 4
  %add.i = add i32 %41, %mul12.i
  store i32 %add.i, ptr %cur_tx_pos.i, align 4
  br label %if.end11

if.end11:                                         ; preds = %tegra_sflash_fill_tx_fifo_from_client_txbuf.exit, %entry.if.end11_crit_edge
  %cur_words.0 = phi i32 [ %15, %tegra_sflash_fill_tx_fifo_from_client_txbuf.exit ], [ %10, %entry.if.end11_crit_edge ]
  %sub = add i32 %cur_words.0, 65535
  %and12 = and i32 %sub, 65535
  %or13 = or i32 %and12, %2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %42 = tail call i32 @llvm.bswap.i32(i32 %or13) #7
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 4
  %add.ptr.i3 = getelementptr i8, ptr %44, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %42) #7, !srcloc !104
  %45 = ptrtoint ptr %dma_control_reg to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or13, ptr %dma_control_reg, align 4
  %or15 = or i32 %or13, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %46 = tail call i32 @llvm.bswap.i32(i32 %or15) #7
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %48, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %46) #7, !srcloc !104
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_delay_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sflash_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @spi_controller_suspend(ptr noundef %1) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sflash_resume(ptr noundef %dev) #2 align 64 {
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
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !109
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.then.pm_runtime_put_noidle.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !110
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.then.pm_runtime_put_noidle.exit_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %call.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %command_reg = getelementptr inbounds %struct.tegra_sflash_data, ptr %3, i32 0, i32 20
  %5 = ptrtoint ptr %command_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %command_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  %base.i = getelementptr inbounds %struct.tegra_sflash_data, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !104
  %call.i15 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  %call4 = tail call i32 @spi_controller_resume(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %pm_runtime_put_noidle.exit
  %retval.0 = phi i32 [ %call.i, %pm_runtime_put_noidle.exit ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !84, !85, !87, !89, !91, !92, !93}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__initcall__kmod_spi_tegra20_sflash__235_605_tegra_sflash_driver_init6, !1, !"__initcall__kmod_spi_tegra20_sflash__235_605_tegra_sflash_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-tegra20-sflash.c", i32 605, i32 1}
!2 = !{ptr @__exitcall_tegra_sflash_driver_exit, !1, !"__exitcall_tegra_sflash_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias236, !4, !"__UNIQUE_ID_alias236", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-tegra20-sflash.c", i32 607, i32 1}
!5 = !{ptr @__UNIQUE_ID_description237, !6, !"__UNIQUE_ID_description237", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-tegra20-sflash.c", i32 608, i32 1}
!7 = !{ptr @__UNIQUE_ID_author238, !8, !"__UNIQUE_ID_author238", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-tegra20-sflash.c", i32 609, i32 1}
!9 = !{ptr @__UNIQUE_ID_file239, !10, !"__UNIQUE_ID_file239", i1 false, i1 false}
!10 = !{!"../drivers/spi/spi-tegra20-sflash.c", i32 610, i32 1}
!11 = !{ptr @__UNIQUE_ID_license240, !10, !"__UNIQUE_ID_license240", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-tegra20-sflash.c", i32 598, i32 12}
!14 = !{ptr @tegra_sflash_driver, !15, !"tegra_sflash_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-tegra20-sflash.c", i32 596, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-tegra20-sflash.c", i32 426, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tegra_sflash_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tegra_sflash_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-tegra20-sflash.c", i32 432, i32 3}
!26 = !{ptr @tegra_sflash_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @tegra_sflash_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @tegra_sflash_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-tegra20-sflash.c", i32 446, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/spi/spi-tegra20-sflash.c", i32 448, i32 46}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/spi/spi-tegra20-sflash.c", i32 462, i32 3}
!35 = !{ptr @tegra_sflash_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @tegra_sflash_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/spi/spi-tegra20-sflash.c", i32 469, i32 3}
!39 = !{ptr @tegra_sflash_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @tegra_sflash_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/spi/spi-tegra20-sflash.c", i32 474, i32 58}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-tegra20-sflash.c", i32 476, i32 3}
!45 = !{ptr @tegra_sflash_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @tegra_sflash_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/spi/spi-tegra20-sflash.c", i32 491, i32 3}
!49 = !{ptr @tegra_sflash_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @tegra_sflash_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/spi/spi-tegra20-sflash.c", i32 508, i32 3}
!53 = !{ptr @tegra_sflash_probe._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @tegra_sflash_probe._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/spi/spi-tegra20-sflash.c", i32 324, i32 4}
!57 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @tegra_sflash_transfer_one_message._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @tegra_sflash_transfer_one_message._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/spi/spi-tegra20-sflash.c", i32 332, i32 4}
!62 = !{ptr @tegra_sflash_transfer_one_message._entry.29, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @tegra_sflash_transfer_one_message._entry_ptr.31, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/spi/spi-tegra20-sflash.c", i32 339, i32 4}
!66 = !{ptr @tegra_sflash_transfer_one_message._entry.32, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @tegra_sflash_transfer_one_message._entry_ptr.34, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/spi/spi-tegra20-sflash.c", i32 364, i32 3}
!70 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @handle_cpu_based_xfer._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @handle_cpu_based_xfer._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/spi/spi-tegra20-sflash.c", i32 366, i32 3}
!75 = !{ptr @handle_cpu_based_xfer._entry.37, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @handle_cpu_based_xfer._entry_ptr.39, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @init_completion.__key, !78, !"__key", i1 false, i1 false}
!78 = !{!"../include/linux/completion.h", i32 87, i32 2}
!79 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/spi/spi-tegra20-sflash.c", i32 585, i32 3}
!82 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @tegra_sflash_runtime_resume._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @tegra_sflash_runtime_resume._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @tegra_sflash_of_match, !86, !"tegra_sflash_of_match", i1 false, i1 false}
!86 = !{!"../drivers/spi/spi-tegra20-sflash.c", i32 411, i32 34}
!87 = !{ptr @slink_pm_ops, !88, !"slink_pm_ops", i1 false, i1 false}
!88 = !{!"../drivers/spi/spi-tegra20-sflash.c", i32 591, i32 32}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/spi/spi-tegra20-sflash.c", i32 555, i32 3}
!91 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @tegra_sflash_resume._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @tegra_sflash_resume._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i64 2154435878}
!104 = !{i64 4251528}
!105 = !{i64 4251946}
!106 = !{i64 2154435497}
!107 = !{!"branch_weights", i32 1, i32 2000}
!108 = !{i64 2148253671}
!109 = !{i64 738494, i64 738519, i64 738541, i64 738557, i64 738569, i64 738589, i64 738613, i64 738629, i64 738641}
!110 = !{i64 2148253859}
