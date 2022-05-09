; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-davinci.c_pt.bc'
source_filename = "../drivers/spi/spi-davinci.c"
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
%struct.davinci_spi_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.davinci_spi_of_data = type { i8, i8 }
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
%struct.davinci_spi = type { %struct.spi_bitbang, ptr, i8, i32, ptr, i32, %struct.completion, ptr, ptr, i32, i32, ptr, ptr, %struct.davinci_spi_platform_data, ptr, ptr, ptr, i8 }
%struct.spi_bitbang = type { %struct.mutex, i8, i8, i16, ptr, ptr, ptr, ptr, [4 x ptr], ptr }
%struct.davinci_spi_platform_data = type { i8, i8, i8, i8, i8, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_spi_davinci__238_1050_davinci_spi_driver_init6 = internal global ptr @davinci_spi_driver_init, section ".initcall6.init", align 4
@davinci_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @davinci_spi_probe, ptr @davinci_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @davinci_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_davinci_spi_driver_exit = internal global ptr @davinci_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [64 x i8] c"spi_davinci.description=TI DaVinci SPI Master Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [41 x i8] c"spi_davinci.file=drivers/spi/spi-davinci\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [24 x i8] c"spi_davinci.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_davinci\00", [20 x i8] zeroinitializer }, align 32
@davinci_spi_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm6441-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dm6441_spi_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,da830-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @da830_spi_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @keystone_spi_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@davinci_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 962, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DMA is not supported (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"davinci_spi_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/spi/spi-davinci.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@davinci_spi_probe._entry_ptr = internal global ptr @davinci_spi_probe._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@davinci_spi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 995, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Controller at 0x%p\0A\00", [44 x i8] zeroinitializer }, align 32
@davinci_spi_probe._entry_ptr.8 = internal global ptr @davinci_spi_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"num-cs\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ti,davinci-spi-intr-line\00", [39 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@davinci_spi_default_cfg = internal constant { %struct.davinci_spi_config, [23 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,spi-wdelay\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: error reported but no error found!\0A\00", [56 x i8] zeroinitializer }, align 32
@davinci_spi_bufs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 695, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SPI data transfer error\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"davinci_spi_bufs\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@davinci_spi_bufs._entry_ptr = internal global ptr @davinci_spi_bufs._entry, section ".printk_index", align 4
@davinci_spi_check_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 466, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SPI Time-out Error\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"davinci_spi_check_error\00", [40 x i8] zeroinitializer }, align 32
@davinci_spi_check_error._entry_ptr = internal global ptr @davinci_spi_check_error._entry, section ".printk_index", align 4
@davinci_spi_check_error._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 470, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SPI Desynchronization Error\0A\00", [35 x i8] zeroinitializer }, align 32
@davinci_spi_check_error._entry_ptr.21 = internal global ptr @davinci_spi_check_error._entry.19, section ".printk_index", align 4
@davinci_spi_check_error._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.3, i32 474, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SPI Bit error\0A\00", [17 x i8] zeroinitializer }, align 32
@davinci_spi_check_error._entry_ptr.24 = internal global ptr @davinci_spi_check_error._entry.22, section ".printk_index", align 4
@davinci_spi_check_error._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.3, i32 480, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SPI Data Length Error\0A\00", [41 x i8] zeroinitializer }, align 32
@davinci_spi_check_error._entry_ptr.27 = internal global ptr @davinci_spi_check_error._entry.25, section ".printk_index", align 4
@davinci_spi_check_error._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.3, i32 484, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SPI Parity Error\0A\00", [46 x i8] zeroinitializer }, align 32
@davinci_spi_check_error._entry_ptr.30 = internal global ptr @davinci_spi_check_error._entry.28, section ".printk_index", align 4
@davinci_spi_check_error._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.18, ptr @.str.3, i32 488, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SPI Data Overrun error\0A\00", [40 x i8] zeroinitializer }, align 32
@davinci_spi_check_error._entry_ptr.33 = internal global ptr @davinci_spi_check_error._entry.31, section ".printk_index", align 4
@davinci_spi_check_error._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.18, ptr @.str.3, i32 492, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SPI Buffer Init Active\0A\00", [40 x i8] zeroinitializer }, align 32
@davinci_spi_check_error._entry_ptr.36 = internal global ptr @davinci_spi_check_error._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@dm6441_spi_data = internal constant { %struct.davinci_spi_of_data, [30 x i8] } { %struct.davinci_spi_of_data { i8 0, i8 2 }, [30 x i8] zeroinitializer }, align 32
@da830_spi_data = internal constant { %struct.davinci_spi_of_data, [30 x i8] } { %struct.davinci_spi_of_data { i8 1, i8 2 }, [30 x i8] zeroinitializer }, align 32
@keystone_spi_data = internal constant { %struct.davinci_spi_of_data, [30 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"davinci_spi_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1042, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1044, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [21 x i8] c"davinci_spi_of_match\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 784, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 962, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 995, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 832, i32 29 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 834, i32 29 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 87, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [24 x i8] c"davinci_spi_default_cfg\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 133, i32 34 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 392, i32 33 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 689, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 695, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 466, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 470, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 474, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 480, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 484, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 488, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 492, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 748, i32 40 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 752, i32 40 }
@___asan_gen_.156 = private unnamed_addr constant [16 x i8] c"dm6441_spi_data\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 769, i32 41 }
@___asan_gen_.159 = private unnamed_addr constant [15 x i8] c"da830_spi_data\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 774, i32 41 }
@___asan_gen_.162 = private unnamed_addr constant [18 x i8] c"keystone_spi_data\00", align 1
@___asan_gen_.163 = private constant [29 x i8] c"../drivers/spi/spi-davinci.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 779, i32 41 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_davinci_spi_driver_exit, ptr @__initcall__kmod_spi_davinci__238_1050_davinci_spi_driver_init6, ptr @davinci_spi_bufs._entry, ptr @davinci_spi_bufs._entry_ptr, ptr @davinci_spi_check_error._entry, ptr @davinci_spi_check_error._entry.19, ptr @davinci_spi_check_error._entry.22, ptr @davinci_spi_check_error._entry.25, ptr @davinci_spi_check_error._entry.28, ptr @davinci_spi_check_error._entry.31, ptr @davinci_spi_check_error._entry.34, ptr @davinci_spi_check_error._entry_ptr, ptr @davinci_spi_check_error._entry_ptr.21, ptr @davinci_spi_check_error._entry_ptr.24, ptr @davinci_spi_check_error._entry_ptr.27, ptr @davinci_spi_check_error._entry_ptr.30, ptr @davinci_spi_check_error._entry_ptr.33, ptr @davinci_spi_check_error._entry_ptr.36, ptr @davinci_spi_driver_exit, ptr @davinci_spi_probe._entry, ptr @davinci_spi_probe._entry.6, ptr @davinci_spi_probe._entry_ptr, ptr @davinci_spi_probe._entry_ptr.8, ptr @davinci_spi_driver, ptr @.str, ptr @davinci_spi_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @init_completion.__key, ptr @.str.11, ptr @davinci_spi_default_cfg, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @dm6441_spi_data, ptr @da830_spi_data, ptr @keystone_spi_data], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_spi_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_spi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_spi_default_cfg to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_spi_bufs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_spi_check_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_spi_check_error._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_spi_check_error._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_spi_check_error._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_spi_check_error._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_spi_check_error._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_spi_check_error._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm6441_spi_data to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da830_spi_data to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_spi_data to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @davinci_spi_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @davinci_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @davinci_spi_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %num_cs.i = alloca i32, align 4
  %intr_line.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 260, i1 noundef zeroext false) #10
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup135_crit_edge, label %if.end

entry.cleanup135_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup135

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i231 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i231 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i231, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %3 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %pdata7 = getelementptr inbounds %struct.davinci_spi, ptr %2, i32 0, i32 13
  %5 = call ptr @memcpy(ptr %pdata7, ptr %4, i32 12)
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_cs.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intr_line.i) #10
  %8 = ptrtoint ptr %intr_line.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %intr_line.i, align 4
  %pdata1.i = getelementptr inbounds %struct.davinci_spi, ptr %2, i32 0, i32 13
  %call.i233 = tail call ptr @device_get_match_data(ptr noundef %dev) #10
  %9 = ptrtoint ptr %call.i233 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call.i233, align 1
  %11 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %pdata1.i, align 4
  %prescaler_limit.i = getelementptr inbounds %struct.davinci_spi_of_data, ptr %call.i233, i32 0, i32 1
  %12 = ptrtoint ptr %prescaler_limit.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %prescaler_limit.i, align 1
  %prescaler_limit4.i = getelementptr inbounds %struct.davinci_spi, ptr %2, i32 0, i32 13, i32 3
  %14 = ptrtoint ptr %prescaler_limit4.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %prescaler_limit4.i, align 1
  %15 = ptrtoint ptr %num_cs.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %num_cs.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.9, ptr noundef nonnull %num_cs.i, i32 noundef 1, i32 noundef 0) #10
  %16 = ptrtoint ptr %num_cs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_cs.i, align 4
  %conv.i = trunc i32 %17 to i8
  %num_chipselect.i = getelementptr inbounds %struct.davinci_spi, ptr %2, i32 0, i32 13, i32 1
  %18 = ptrtoint ptr %num_chipselect.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i, ptr %num_chipselect.i, align 1
  %call.i.i1.i = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.10, ptr noundef nonnull %intr_line.i, i32 noundef 1, i32 noundef 0) #10
  %19 = ptrtoint ptr %intr_line.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %intr_line.i, align 4
  %conv7.i = trunc i32 %20 to i8
  %intr_line8.i = getelementptr inbounds %struct.davinci_spi, ptr %2, i32 0, i32 13, i32 2
  %21 = ptrtoint ptr %intr_line8.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv7.i, ptr %intr_line8.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intr_line.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_cs.i) #10
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then4
  %pdata13 = getelementptr inbounds %struct.davinci_spi, ptr %2, i32 0, i32 13
  %num_chipselect = getelementptr inbounds %struct.davinci_spi, ptr %2, i32 0, i32 13, i32 1
  %22 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_chipselect, align 1
  %conv = zext i8 %23 to i32
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %conv, i32 noundef 3520) #10
  %bytes_per_word = getelementptr inbounds %struct.davinci_spi, ptr %2, i32 0, i32 16
  %24 = ptrtoint ptr %bytes_per_word to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call5.i.i, ptr %bytes_per_word, align 4
  %cmp17 = icmp eq ptr %call5.i.i, null
  br i1 %cmp17, label %if.end12.spi_controller_put.exit_crit_edge, label %if.end20

if.end12.spi_controller_put.exit_crit_edge:       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_controller_put.exit

if.end20:                                         ; preds = %if.end12
  %call21 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %cmp22 = icmp eq ptr %call21, null
  br i1 %cmp22, label %if.end20.spi_controller_put.exit_crit_edge, label %if.end25

if.end20.spi_controller_put.exit_crit_edge:       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_controller_put.exit

if.end25:                                         ; preds = %if.end20
  %25 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call21, align 4
  %pbase = getelementptr inbounds %struct.davinci_spi, ptr %2, i32 0, i32 3
  %27 = ptrtoint ptr %pbase to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %pbase, align 4
  %call27 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call21) #10
  %base = getelementptr inbounds %struct.davinci_spi, ptr %2, i32 0, i32 4
  %28 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call27, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %call27 to i32
  br label %spi_controller_put.exit

if.end33:                                         ; preds = %if.end25
  %done = getelementptr inbounds %struct.davinci_spi, ptr %2, i32 0, i32 6
  %30 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.davinci_spi, ptr %2, i32 0, i32 6, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #10
  %call34 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp eq i32 %call34, 0
  %spec.store.select = select i1 %cmp35, i32 -22, i32 %call34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp39 = icmp slt i32 %spec.store.select, 0
  br i1 %cmp39, label %if.end33.spi_controller_put.exit_crit_edge, label %if.end42

if.end33.spi_controller_put.exit_crit_edge:       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_controller_put.exit

if.end42:                                         ; preds = %if.end33
  %irq = getelementptr inbounds %struct.davinci_spi, ptr %2, i32 0, i32 5
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %spec.store.select, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %32 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end42.dev_name.exit_crit_edge

if.end42.dev_name.exit_crit_edge:                 ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end42.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %35, %if.end.i ], [ %33, %if.end42.dev_name.exit_crit_edge ]
  %call47 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %spec.store.select, ptr noundef nonnull @davinci_spi_irq, ptr noundef nonnull @dummy_thread_fn, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %dev_name.exit.spi_controller_put.exit_crit_edge

dev_name.exit.spi_controller_put.exit_crit_edge:  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_controller_put.exit

if.end50:                                         ; preds = %dev_name.exit
  %master51 = getelementptr inbounds %struct.spi_bitbang, ptr %2, i32 0, i32 4
  %36 = ptrtoint ptr %master51 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %master51, align 4
  %call53 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #10
  %clk = getelementptr inbounds %struct.davinci_spi, ptr %2, i32 0, i32 1
  %37 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call53, ptr %clk, align 4
  %cmp.i234 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i234, label %if.end50.spi_controller_put.exit_crit_edge, label %if.end57

if.end50.spi_controller_put.exit_crit_edge:       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_controller_put.exit

if.end57:                                         ; preds = %if.end50
  %call59 = call fastcc i32 @clk_prepare_enable(ptr noundef %call53)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end57.spi_controller_put.exit_crit_edge

if.end57.spi_controller_put.exit_crit_edge:       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_controller_put.exit

if.end62:                                         ; preds = %if.end57
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 56
  %38 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %use_gpio_descriptors, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %39 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %of_node, align 8
  %of_node65 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %41 = ptrtoint ptr %of_node65 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %of_node65, align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %42 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id, align 4
  %conv66 = trunc i32 %43 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %44 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv66, ptr %bus_num, align 8
  %45 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %num_chipselect, align 1
  %conv68 = zext i8 %46 to i16
  %num_chipselect69 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %47 = ptrtoint ptr %num_chipselect69 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv68, ptr %num_chipselect69, align 2
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %48 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 65534, ptr %bits_per_word_mask, align 8
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 10
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 40, ptr %flags, align 4
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %50 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @davinci_spi_setup, ptr %setup, align 4
  %cleanup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 23
  %51 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @davinci_spi_cleanup, ptr %cleanup, align 8
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 24
  %52 = ptrtoint ptr %can_dma to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @davinci_spi_can_dma, ptr %can_dma, align 4
  %chipselect = getelementptr inbounds %struct.spi_bitbang, ptr %2, i32 0, i32 6
  %53 = ptrtoint ptr %chipselect to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @davinci_spi_chipselect, ptr %chipselect, align 4
  %setup_transfer = getelementptr inbounds %struct.spi_bitbang, ptr %2, i32 0, i32 5
  %54 = ptrtoint ptr %setup_transfer to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @davinci_spi_setup_transfer, ptr %setup_transfer, align 4
  %prescaler_limit = getelementptr inbounds %struct.davinci_spi, ptr %2, i32 0, i32 13, i32 3
  %55 = ptrtoint ptr %prescaler_limit to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %prescaler_limit, align 1
  %prescaler_limit72 = getelementptr inbounds %struct.davinci_spi, ptr %2, i32 0, i32 17
  %57 = ptrtoint ptr %prescaler_limit72 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %prescaler_limit72, align 4
  %58 = ptrtoint ptr %pdata13 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %pdata13, align 4
  %version73 = getelementptr inbounds %struct.davinci_spi, ptr %2, i32 0, i32 2
  %60 = ptrtoint ptr %version73 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %version73, align 4
  %flags75 = getelementptr inbounds %struct.spi_bitbang, ptr %2, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %59)
  %cmp78 = icmp eq i8 %59, 1
  %spec.select = select i1 %cmp78, i16 4328, i16 4200
  %61 = ptrtoint ptr %flags75 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %spec.select, ptr %flags75, align 2
  %txrx_bufs = getelementptr inbounds %struct.spi_bitbang, ptr %2, i32 0, i32 7
  %62 = ptrtoint ptr %txrx_bufs to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @davinci_spi_bufs, ptr %txrx_bufs, align 4
  %call87 = call fastcc i32 @davinci_spi_request_dma(ptr noundef %2)
  %63 = zext i32 %call87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call87, label %do.end [
    i32 -517, label %if.end62.free_clk_crit_edge
    i32 0, label %if.end62.if.end96_crit_edge
  ]

if.end62.if.end96_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.end62.free_clk_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_clk

do.end:                                           ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call87) #13
  %dma_rx = getelementptr inbounds %struct.davinci_spi, ptr %2, i32 0, i32 11
  %64 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %dma_rx, align 4
  %dma_tx = getelementptr inbounds %struct.davinci_spi, ptr %2, i32 0, i32 12
  %65 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %dma_tx, align 4
  br label %if.end96

if.end96:                                         ; preds = %do.end, %if.end62.if.end96_crit_edge
  %get_rx = getelementptr inbounds %struct.davinci_spi, ptr %2, i32 0, i32 14
  %66 = ptrtoint ptr %get_rx to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @davinci_spi_rx_buf_u8, ptr %get_rx, align 4
  %get_tx = getelementptr inbounds %struct.davinci_spi, ptr %2, i32 0, i32 15
  %67 = ptrtoint ptr %get_tx to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @davinci_spi_tx_buf_u8, ptr %get_tx, align 4
  %68 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 0) #10, !srcloc !94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %70(i32 noundef 21474800) #10
  %71 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 16777216) #10, !srcloc !94
  %73 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base, align 4
  %add.ptr101 = getelementptr i8, ptr %74, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 917504) #10, !srcloc !94
  %intr_line = getelementptr inbounds %struct.davinci_spi, ptr %2, i32 0, i32 13, i32 2
  %75 = ptrtoint ptr %intr_line to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %intr_line, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool102.not = icmp eq i8 %76, 0
  %77 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base, align 4
  %add.ptr108 = getelementptr i8, ptr %78, i32 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  br i1 %tobool102.not, label %if.else106, label %if.then103

if.then103:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 -16711680) #10, !srcloc !94
  br label %if.end109

if.else106:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 0) #10, !srcloc !94
  br label %if.end109

if.end109:                                        ; preds = %if.else106, %if.then103
  %79 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base, align 4
  %add.ptr111 = getelementptr i8, ptr %80, i32 76
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111, i32 -16777216) #10, !srcloc !94
  %81 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base, align 4
  %add.ptr113 = getelementptr i8, ptr %82, i32 4
  call fastcc void @set_io_bits(ptr noundef %add.ptr113, i32 noundef 2)
  %83 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base, align 4
  %add.ptr115 = getelementptr i8, ptr %84, i32 4
  call fastcc void @set_io_bits(ptr noundef %add.ptr115, i32 noundef 1)
  %85 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base, align 4
  %add.ptr117 = getelementptr i8, ptr %86, i32 4
  call fastcc void @set_io_bits(ptr noundef %add.ptr117, i32 noundef 256)
  %call119 = call i32 @spi_bitbang_start(ptr noundef %2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %do.end125, label %free_dma

do.end125:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %88) #13
  br label %cleanup135

free_dma:                                         ; preds = %if.end109
  %dma_rx128 = getelementptr inbounds %struct.davinci_spi, ptr %2, i32 0, i32 11
  %89 = ptrtoint ptr %dma_rx128 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dma_rx128, align 4
  %tobool129.not = icmp eq ptr %90, null
  br i1 %tobool129.not, label %free_dma.free_clk_crit_edge, label %if.then130

free_dma.free_clk_crit_edge:                      ; preds = %free_dma
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_clk

if.then130:                                       ; preds = %free_dma
  call void @__sanitizer_cov_trace_pc() #12
  call void @dma_release_channel(ptr noundef nonnull %90) #10
  %dma_tx132 = getelementptr inbounds %struct.davinci_spi, ptr %2, i32 0, i32 12
  %91 = ptrtoint ptr %dma_tx132 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dma_tx132, align 4
  call void @dma_release_channel(ptr noundef %92) #10
  br label %free_clk

free_clk:                                         ; preds = %if.then130, %free_dma.free_clk_crit_edge, %if.end62.free_clk_crit_edge
  %ret.0 = phi i32 [ %call87, %if.end62.free_clk_crit_edge ], [ %call119, %if.then130 ], [ %call119, %free_dma.free_clk_crit_edge ]
  %93 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %94) #10
  call void @clk_unprepare(ptr noundef %94) #10
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %free_clk, %if.end57.spi_controller_put.exit_crit_edge, %if.end50.spi_controller_put.exit_crit_edge, %dev_name.exit.spi_controller_put.exit_crit_edge, %if.end33.spi_controller_put.exit_crit_edge, %if.then30, %if.end20.spi_controller_put.exit_crit_edge, %if.end12.spi_controller_put.exit_crit_edge
  %ret.1 = phi i32 [ %29, %if.then30 ], [ %spec.store.select, %if.end33.spi_controller_put.exit_crit_edge ], [ %call47, %dev_name.exit.spi_controller_put.exit_crit_edge ], [ %call59, %if.end57.spi_controller_put.exit_crit_edge ], [ %ret.0, %free_clk ], [ -12, %if.end12.spi_controller_put.exit_crit_edge ], [ -2, %if.end20.spi_controller_put.exit_crit_edge ], [ -19, %if.end50.spi_controller_put.exit_crit_edge ]
  call void @put_device(ptr noundef nonnull %call.i) #10
  br label %cleanup135

cleanup135:                                       ; preds = %spi_controller_put.exit, %do.end125, %entry.cleanup135_crit_edge
  %retval.0 = phi i32 [ 0, %do.end125 ], [ %ret.1, %spi_controller_put.exit ], [ -12, %entry.cleanup135_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_spi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i8 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i8, align 4
  tail call void @spi_bitbang_stop(ptr noundef %3) #10
  %clk = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  %dma_rx = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_rx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %7) #10
  %dma_tx = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_tx, align 4
  tail call void @dma_release_channel(ptr noundef %9) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.spi_controller_put.exit_crit_edge, label %if.then.i

if.end.spi_controller_put.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_controller_put.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @put_device(ptr noundef nonnull %1) #10
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %if.then.i, %if.end.spi_controller_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_spi_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @davinci_spi_process_events(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.end.thread, !prof !95

if.end:                                           ; preds = %entry
  %rcount = getelementptr inbounds %struct.davinci_spi, ptr %data, i32 0, i32 9
  %0 = ptrtoint ptr %rcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %base = getelementptr inbounds %struct.davinci_spi, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  tail call fastcc void @clear_io_bits(ptr noundef %add.ptr, i32 noundef 351)
  br label %if.then5

land.lhs.true:                                    ; preds = %if.end
  %wcount = getelementptr inbounds %struct.davinci_spi, ptr %data, i32 0, i32 10
  %4 = ptrtoint ptr %wcount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %land.lhs.true.if.then5_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

land.lhs.true.if.then5_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.then5:                                         ; preds = %land.lhs.true.if.then5_crit_edge, %if.end.thread
  %done = getelementptr inbounds %struct.davinci_spi, ptr %data, i32 0, i32 6
  tail call void @complete(ptr noundef %done) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dummy_thread_fn(i32 noundef %irq, ptr nocapture noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_spi_setup(ptr nocapture noundef %spi) #2 align 64 {
entry:
  %prop.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
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
  %and = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.then.if.then5_crit_edge, label %land.lhs.true

if.then.if.then5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

land.lhs.true:                                    ; preds = %if.then
  %cs_gpiod = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 14
  %8 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cs_gpiod, align 8
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %land.lhs.true.if.then5_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true.if.then5_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.then5:                                         ; preds = %land.lhs.true.if.then5_crit_edge, %if.then.if.then5_crit_edge
  %base = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 20
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %12 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %13 to i32
  %shl = shl nuw i32 1, %conv
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !96
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %or.i = or i32 %15, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %16) #10, !srcloc !94
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode, align 8
  %and9 = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.if.end14_crit_edge, label %if.then11

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %base12 = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %base12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base12, align 4
  %add.ptr13 = getelementptr i8, ptr %20, i32 20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #10, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %22 = or i32 %21, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %22) #10, !srcloc !94
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end7.if.end14_crit_edge
  %23 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode, align 8
  %and16 = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %base21 = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 4
  %25 = ptrtoint ptr %base21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base21, align 4
  %add.ptr22 = getelementptr i8, ptr %26, i32 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %28 = or i32 %27, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %28) #10, !srcloc !94
  br label %if.end23

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %29 = and i32 %27, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %29) #10, !srcloc !94
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then18
  %controller_data.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 10
  %30 = ptrtoint ptr %controller_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %controller_data.i, align 4
  %32 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node, align 8
  %34 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %master, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop.i) #10
  %38 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %prop.i, align 4, !annotation !98
  %cmp.i = icmp ne ptr %31, null
  %tobool.not.i = icmp eq ptr %33, null
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %if.end23.davinci_spi_of_setup.exit_crit_edge, label %if.then.i

if.end23.davinci_spi_of_setup.exit_crit_edge:     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %davinci_spi_of_setup.exit

if.then.i:                                        ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 9) #14
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.then.i.davinci_spi_of_setup.exit_crit_edge, label %if.end.i

if.then.i.davinci_spi_of_setup.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %davinci_spi_of_setup.exit

if.end.i:                                         ; preds = %if.then.i
  %40 = call ptr @memset(ptr %call7.i.i.i, i32 0, i32 9)
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %33, ptr noundef nonnull @.str.12, ptr noundef nonnull %prop.i, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool5.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %prop.i, align 4
  %conv.i = trunc i32 %42 to i8
  %43 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv.i, ptr %call7.i.i.i, align 8
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end.i.if.end7.i_crit_edge
  %44 = ptrtoint ptr %controller_data.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i.i, ptr %controller_data.i, align 4
  %dma_rx.i = getelementptr inbounds %struct.davinci_spi, ptr %37, i32 0, i32 11
  %45 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dma_rx.i, align 4
  %tobool9.not.i = icmp eq ptr %46, null
  br i1 %tobool9.not.i, label %if.end7.i.davinci_spi_of_setup.exit_crit_edge, label %land.lhs.true10.i

if.end7.i.davinci_spi_of_setup.exit_crit_edge:    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %davinci_spi_of_setup.exit

land.lhs.true10.i:                                ; preds = %if.end7.i
  %dma_tx.i = getelementptr inbounds %struct.davinci_spi, ptr %37, i32 0, i32 12
  %47 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dma_tx.i, align 4
  %tobool11.not.i = icmp eq ptr %48, null
  br i1 %tobool11.not.i, label %land.lhs.true10.i.davinci_spi_of_setup.exit_crit_edge, label %if.then12.i

land.lhs.true10.i.davinci_spi_of_setup.exit_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %davinci_spi_of_setup.exit

if.then12.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  %io_type.i = getelementptr inbounds %struct.davinci_spi_config, ptr %call7.i.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %io_type.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 2, ptr %io_type.i, align 1
  br label %davinci_spi_of_setup.exit

davinci_spi_of_setup.exit:                        ; preds = %if.then12.i, %land.lhs.true10.i.davinci_spi_of_setup.exit_crit_edge, %if.end7.i.davinci_spi_of_setup.exit_crit_edge, %if.then.i.davinci_spi_of_setup.exit_crit_edge, %if.end23.davinci_spi_of_setup.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %if.then.i.davinci_spi_of_setup.exit_crit_edge ], [ 0, %if.end7.i.davinci_spi_of_setup.exit_crit_edge ], [ 0, %land.lhs.true10.i.davinci_spi_of_setup.exit_crit_edge ], [ 0, %if.then12.i ], [ 0, %if.end23.davinci_spi_of_setup.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @davinci_spi_cleanup(ptr nocapture noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_data = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 10
  %0 = ptrtoint ptr %controller_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_data, align 4
  store ptr null, ptr %controller_data, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @davinci_spi_can_dma(ptr nocapture noundef readnone %master, ptr nocapture noundef readonly %spi, ptr nocapture noundef readonly %xfer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_data = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 10
  %0 = ptrtoint ptr %controller_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %io_type = getelementptr inbounds %struct.davinci_spi_config, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %io_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %io_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp eq i8 %3, 2
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %5)
  %cmp2 = icmp ugt i32 %5, 15
  br i1 %cmp2, label %land.lhs.true4, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %6 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_buf, align 4
  %call = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %7) #10
  br i1 %call, label %land.lhs.true4.if.end_crit_edge, label %land.rhs

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xfer, align 4
  %call5 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %9) #10
  %lnot = xor i1 %call5, true
  br label %if.end

if.end:                                           ; preds = %land.rhs, %land.lhs.true4.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %can_dma.0.off0 = phi i1 [ false, %entry.if.end_crit_edge ], [ false, %land.lhs.true4.if.end_crit_edge ], [ false, %land.lhs.true.if.end_crit_edge ], [ false, %if.then.if.end_crit_edge ], [ %lnot, %land.rhs ]
  ret i1 %can_dma.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @davinci_spi_chipselect(ptr nocapture noundef readonly %spi, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_data = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 10
  %0 = ptrtoint ptr %controller_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_data, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %2 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_select, align 4
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  %spec.select = select i1 %tobool1.not, i16 255, i16 1279
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %spidat1.0 = phi i16 [ 255, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %cs_gpiod = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 14
  %10 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cs_gpiod, align 8
  %tobool4.not = icmp eq ptr %11, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %value)
  %cmp12 = icmp eq i32 %value, 1
  br i1 %tobool4.not, label %if.else11, label %if.then5

if.then5:                                         ; preds = %if.end
  br i1 %cmp12, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_set_value(ptr noundef nonnull %11, i32 noundef 1) #10
  br label %if.end26

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_set_value(ptr noundef nonnull %11, i32 noundef 0) #10
  br label %if.end26

if.else11:                                        ; preds = %if.end
  br i1 %cmp12, label %if.then14, label %if.else11.if.end26_crit_edge

if.else11.if.end26_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then14:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #12
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode, align 8
  %14 = trunc i32 %13 to i16
  %15 = and i16 %14, 4096
  %16 = or i16 %15, %spidat1.0
  %17 = xor i16 %16, 4096
  %conv21 = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv21
  %18 = trunc i32 %shl to i16
  %19 = xor i16 %18, -1
  %conv24 = and i16 %17, %19
  br label %if.end26

if.end26:                                         ; preds = %if.then14, %if.else11.if.end26_crit_edge, %if.else, %if.then7
  %spidat1.2 = phi i16 [ %spidat1.0, %if.then7 ], [ %spidat1.0, %if.else ], [ %conv24, %if.then14 ], [ %spidat1.0, %if.else11.if.end26_crit_edge ]
  %base = getelementptr inbounds %struct.davinci_spi, ptr %7, i32 0, i32 4
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr27 = getelementptr i8, ptr %21, i32 62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void @arm_heavy_mb() #10
  %22 = tail call i16 @llvm.bswap.i16(i16 %spidat1.2) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr27, i16 %22) #10, !srcloc !100
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_spi_setup_transfer(ptr nocapture noundef readonly %spi, ptr noundef readonly %t) #2 align 64 {
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
  %controller_data = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 10
  %4 = ptrtoint ptr %controller_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controller_data, align 4
  %tobool.not = icmp eq ptr %5, null
  %spec.store.select = select i1 %tobool.not, ptr @davinci_spi_default_cfg, ptr %5
  %tobool1.not = icmp eq ptr %t, null
  br i1 %tobool1.not, label %entry.if.then6_crit_edge, label %if.end4

entry.if.then6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.end4:                                          ; preds = %entry
  %bits_per_word3 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %6 = ptrtoint ptr %bits_per_word3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bits_per_word3, align 1
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %8 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.end4.if.then6_crit_edge, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end4.if.then6_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.then6:                                         ; preds = %if.end4.if.then6_crit_edge, %entry.if.then6_crit_edge
  %hz.0150 = phi i32 [ %9, %if.end4.if.then6_crit_edge ], [ 0, %entry.if.then6_crit_edge ]
  %bits_per_word7 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %10 = ptrtoint ptr %bits_per_word7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bits_per_word7, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %hz.0149 = phi i32 [ %9, %if.end4.if.end8_crit_edge ], [ %hz.0150, %if.then6 ]
  %bits_per_word.1 = phi i8 [ %7, %if.end4.if.end8_crit_edge ], [ %11, %if.then6 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %bits_per_word.1)
  %cmp = icmp ult i8 %bits_per_word.1, 9
  %get_rx = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 14
  %davinci_spi_rx_buf_u8.davinci_spi_rx_buf_u16 = select i1 %cmp, ptr @davinci_spi_rx_buf_u8, ptr @davinci_spi_rx_buf_u16
  %davinci_spi_tx_buf_u8.davinci_spi_tx_buf_u16 = select i1 %cmp, ptr @davinci_spi_tx_buf_u8, ptr @davinci_spi_tx_buf_u16
  %. = select i1 %cmp, i8 1, i8 2
  %12 = ptrtoint ptr %get_rx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %davinci_spi_rx_buf_u8.davinci_spi_rx_buf_u16, ptr %get_rx, align 4
  %get_tx12 = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 15
  %13 = ptrtoint ptr %get_tx12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %davinci_spi_tx_buf_u8.davinci_spi_tx_buf_u16, ptr %get_tx12, align 4
  %bytes_per_word13 = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 16
  %14 = ptrtoint ptr %bytes_per_word13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bytes_per_word13, align 4
  %chip_select14 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %16 = ptrtoint ptr %chip_select14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %chip_select14, align 4
  %idxprom15 = zext i8 %17 to i32
  %arrayidx16 = getelementptr i8, ptr %15, i32 %idxprom15
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %., ptr %arrayidx16, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hz.0149)
  %tobool18.not = icmp eq i32 %hz.0149, 0
  br i1 %tobool18.not, label %if.then19, label %if.end8.if.end20_crit_edge

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then19:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %19 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_speed_hz, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end8.if.end20_crit_edge
  %hz.1 = phi i32 [ %hz.0149, %if.end8.if.end20_crit_edge ], [ %20, %if.then19 ]
  %clk.i = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %22) #10
  %add.i = add i32 %hz.1, -1
  %sub.i = add i32 %add.i, %call.i
  %div.i = udiv i32 %sub.i, %hz.1
  %sub1.i = add i32 %div.i, -1
  %prescaler_limit.i = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 17
  %23 = ptrtoint ptr %prescaler_limit.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %prescaler_limit.i, align 4
  %conv.i = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %conv.i)
  %cmp.i = icmp slt i32 %sub1.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub1.i)
  %cmp3.i = icmp sgt i32 %sub1.i, 255
  %or.cond.i = or i1 %cmp3.i, %cmp.i
  %retval.0.i = select i1 %or.cond.i, i32 -22, i32 %sub1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp22 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp22, label %if.end20.cleanup_crit_edge, label %if.end25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %shl = shl nuw nsw i32 %retval.0.i, 8
  %25 = and i8 %bits_per_word.1, 31
  %and = zext i8 %25 to i32
  %or = or i32 %shl, %and
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mode, align 8
  %and27 = shl i32 %27, 17
  %28 = and i32 %and27, 1048576
  %29 = or i32 %28, %or
  %and33 = shl i32 %27, 16
  %30 = and i32 %and33, 131072
  %31 = or i32 %29, %30
  %32 = and i32 %and33, 65536
  %33 = xor i32 %32, 65536
  %34 = or i32 %31, %33
  %35 = ptrtoint ptr %spec.store.select to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %spec.store.select, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool44.not = icmp eq i8 %36, 0
  %conv47 = zext i8 %36 to i32
  %shl48 = shl nuw i32 %conv47, 24
  %and49 = and i32 %shl48, 1056964608
  %or50 = select i1 %tobool44.not, i32 0, i32 %and49
  %spifmt.3 = or i32 %34, %or50
  %version = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 2
  %37 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp53 = icmp eq i8 %38, 1
  br i1 %cmp53, label %if.then55, label %if.end25.if.end91_crit_edge

if.end25.if.end91_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then55:                                        ; preds = %if.end25
  %odd_parity = getelementptr inbounds %struct.davinci_spi_config, ptr %spec.store.select, i32 0, i32 1
  %39 = ptrtoint ptr %odd_parity to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %odd_parity, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool56.not = icmp eq i8 %40, 0
  %or58 = or i32 %spifmt.3, 8388608
  %spec.select145 = select i1 %tobool56.not, i32 %spifmt.3, i32 %or58
  %parity_enable = getelementptr inbounds %struct.davinci_spi_config, ptr %spec.store.select, i32 0, i32 2
  %41 = ptrtoint ptr %parity_enable to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %parity_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool60.not = icmp eq i8 %42, 0
  %or62 = or i32 %spec.select145, 4194304
  %spifmt.5 = select i1 %tobool60.not, i32 %spec.select145, i32 %or62
  %timer_disable = getelementptr inbounds %struct.davinci_spi_config, ptr %spec.store.select, i32 0, i32 4
  %43 = ptrtoint ptr %timer_disable to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %timer_disable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool64.not = icmp eq i8 %44, 0
  br i1 %tobool64.not, label %if.else67, label %if.then65

if.then65:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  %or66 = or i32 %spifmt.5, 262144
  br label %if.end76

if.else67:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  %c2tdelay = getelementptr inbounds %struct.davinci_spi_config, ptr %spec.store.select, i32 0, i32 5
  %45 = ptrtoint ptr %c2tdelay to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %c2tdelay, align 1
  %conv68 = zext i8 %46 to i32
  %shl69 = shl nuw i32 %conv68, 24
  %t2cdelay = getelementptr inbounds %struct.davinci_spi_config, ptr %spec.store.select, i32 0, i32 6
  %47 = ptrtoint ptr %t2cdelay to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %t2cdelay, align 1
  %conv72 = zext i8 %48 to i32
  %shl73 = shl nuw nsw i32 %conv72, 16
  %or75 = or i32 %shl73, %shl69
  br label %if.end76

if.end76:                                         ; preds = %if.else67, %if.then65
  %spifmt.6 = phi i32 [ %or66, %if.then65 ], [ %spifmt.5, %if.else67 ]
  %delay.0 = phi i32 [ 0, %if.then65 ], [ %or75, %if.else67 ]
  %and78 = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end76.if.end90_crit_edge, label %if.then80

if.end76.if.end90_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then80:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %or81 = or i32 %spifmt.6, 2097152
  %t2edelay = getelementptr inbounds %struct.davinci_spi_config, ptr %spec.store.select, i32 0, i32 7
  %49 = ptrtoint ptr %t2edelay to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %t2edelay, align 1
  %conv82 = zext i8 %50 to i32
  %shl83 = shl nuw nsw i32 %conv82, 8
  %or85 = or i32 %shl83, %delay.0
  %c2edelay = getelementptr inbounds %struct.davinci_spi_config, ptr %spec.store.select, i32 0, i32 8
  %51 = ptrtoint ptr %c2edelay to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %c2edelay, align 1
  %conv86 = zext i8 %52 to i32
  %or89 = or i32 %or85, %conv86
  br label %if.end90

if.end90:                                         ; preds = %if.then80, %if.end76.if.end90_crit_edge
  %spifmt.7 = phi i32 [ %or81, %if.then80 ], [ %spifmt.6, %if.end76.if.end90_crit_edge ]
  %delay.1 = phi i32 [ %or89, %if.then80 ], [ %delay.0, %if.end76.if.end90_crit_edge ]
  %base = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 4
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %54, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  %55 = tail call i32 @llvm.bswap.i32(i32 %delay.1) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %55) #10, !srcloc !94
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.end25.if.end91_crit_edge
  %spifmt.8 = phi i32 [ %spifmt.7, %if.end90 ], [ %spifmt.3, %if.end25.if.end91_crit_edge ]
  %base92 = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 4
  %56 = ptrtoint ptr %base92 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base92, align 4
  %add.ptr93 = getelementptr i8, ptr %57, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  %58 = tail call i32 @llvm.bswap.i32(i32 %spifmt.8) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 %58) #10, !srcloc !94
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %if.end20.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end91 ], [ %retval.0.i, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_spi_bufs(ptr noundef %spi, ptr nocapture noundef %t) #2 align 64 {
entry:
  %dma_rx_conf = alloca %struct.dma_slave_config, align 4
  %dma_tx_conf = alloca %struct.dma_slave_config, align 4
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
  %controller_data = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 10
  %4 = ptrtoint ptr %controller_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controller_data, align 4
  %tobool.not = icmp eq ptr %5, null
  %spec.store.select = select i1 %tobool.not, ptr @davinci_spi_default_cfg, ptr %5
  %bytes_per_word = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %bytes_per_word to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bytes_per_word, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %8 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %chip_select, align 4
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr i8, ptr %7, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %12 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %t, align 4
  %tx = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %tx, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %15 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_buf, align 4
  %rx = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 8
  %17 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %rx, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %div = udiv i32 %19, %conv
  %wcount = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 10
  %20 = ptrtoint ptr %wcount to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div, ptr %wcount, align 4
  %rcount = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 9
  %21 = ptrtoint ptr %rcount to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div, ptr %rcount, align 4
  %base = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 60
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !96
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %27, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #10, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %29 = and i32 %28, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %29) #10, !srcloc !94
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %31, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #10, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %33 = or i32 %32, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %33) #10, !srcloc !94
  %done = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 6
  %34 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %done, align 4
  %35 = ptrtoint ptr %controller_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %controller_data, align 4
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %entry.if.then10_crit_edge, label %if.then.i

entry.if.then10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.then.i:                                        ; preds = %entry
  %io_type.i = getelementptr inbounds %struct.davinci_spi_config, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %io_type.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %io_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %38)
  %cmp.i = icmp eq i8 %38, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.i.if.then10_crit_edge

if.then.i.if.then10_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

land.lhs.true.i:                                  ; preds = %if.then.i
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %40)
  %cmp2.i = icmp ugt i32 %40, 15
  br i1 %cmp2.i, label %land.lhs.true4.i, label %land.lhs.true.i.if.then10_crit_edge

land.lhs.true.i.if.then10_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %41 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rx_buf, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %42) #10
  br i1 %call.i, label %land.lhs.true4.i.if.then10_crit_edge, label %davinci_spi_can_dma.exit

land.lhs.true4.i.if.then10_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

davinci_spi_can_dma.exit:                         ; preds = %land.lhs.true4.i
  %43 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %t, align 4
  %call5.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %44) #10
  br i1 %call5.i, label %davinci_spi_can_dma.exit.if.then10_crit_edge, label %if.else

davinci_spi_can_dma.exit.if.then10_crit_edge:     ; preds = %davinci_spi_can_dma.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.then10:                                        ; preds = %davinci_spi_can_dma.exit.if.then10_crit_edge, %land.lhs.true4.i.if.then10_crit_edge, %land.lhs.true.i.if.then10_crit_edge, %if.then.i.if.then10_crit_edge, %entry.if.then10_crit_edge
  %io_type = getelementptr inbounds %struct.davinci_spi_config, ptr %spec.store.select, i32 0, i32 3
  %45 = ptrtoint ptr %io_type to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %io_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %46)
  %cmp.not = icmp eq i8 %46, 1
  br i1 %cmp.not, label %if.then10.if.end16_crit_edge, label %if.then13

if.then10.if.end16_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %48, i32 8
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #10, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %50 = or i32 %49, 1593901056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %50) #10, !srcloc !94
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.then10.if.end16_crit_edge
  %51 = ptrtoint ptr %wcount to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %wcount, align 4
  %dec = add i32 %52, -1
  store i32 %dec, ptr %wcount, align 4
  %get_tx = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 15
  %53 = ptrtoint ptr %get_tx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %get_tx, align 4
  %call18 = tail call i32 %54(ptr noundef %3) #10
  %and = and i32 %25, -65536
  %and19 = and i32 %call18, 65535
  %or = or i32 %and19, %and
  %55 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base, align 4
  %add.ptr21 = getelementptr i8, ptr %56, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  %57 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %57) #10, !srcloc !94
  br label %if.end82

if.else:                                          ; preds = %davinci_spi_can_dma.exit
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dma_rx_conf) #10
  %58 = getelementptr inbounds i8, ptr %dma_rx_conf, i32 36
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %58, align 4, !annotation !98
  %60 = ptrtoint ptr %dma_rx_conf to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 2, ptr %dma_rx_conf, align 4
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %dma_rx_conf, i32 0, i32 1
  %pbase = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 3
  %61 = ptrtoint ptr %pbase to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pbase, align 4
  %add = add i32 %62, 64
  %63 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add, ptr %src_addr, align 4
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %dma_rx_conf, i32 0, i32 2
  %64 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %dst_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %dma_rx_conf, i32 0, i32 3
  %65 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv, ptr %src_addr_width, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %dma_rx_conf, i32 0, i32 4
  %66 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %dst_addr_width, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %dma_rx_conf, i32 0, i32 5
  %67 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %src_maxburst, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %dma_rx_conf, i32 0, i32 6
  %peripheral_config = getelementptr inbounds %struct.dma_slave_config, ptr %dma_rx_conf, i32 0, i32 10
  %68 = ptrtoint ptr %peripheral_config to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %peripheral_config, align 4
  %peripheral_size = getelementptr inbounds %struct.dma_slave_config, ptr %dma_rx_conf, i32 0, i32 11
  %69 = ptrtoint ptr %peripheral_size to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %peripheral_size, align 4
  %70 = call ptr @memset(ptr %dst_maxburst, i32 0, i32 13)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dma_tx_conf) #10
  %71 = getelementptr inbounds i8, ptr %dma_tx_conf, i32 36
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %71, align 4, !annotation !98
  %73 = ptrtoint ptr %dma_tx_conf to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %dma_tx_conf, align 4
  %src_addr23 = getelementptr inbounds %struct.dma_slave_config, ptr %dma_tx_conf, i32 0, i32 1
  %74 = ptrtoint ptr %src_addr23 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %src_addr23, align 4
  %dst_addr24 = getelementptr inbounds %struct.dma_slave_config, ptr %dma_tx_conf, i32 0, i32 2
  %add26 = add i32 %62, 60
  %75 = ptrtoint ptr %dst_addr24 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add26, ptr %dst_addr24, align 4
  %src_addr_width27 = getelementptr inbounds %struct.dma_slave_config, ptr %dma_tx_conf, i32 0, i32 3
  %76 = ptrtoint ptr %src_addr_width27 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %src_addr_width27, align 4
  %dst_addr_width28 = getelementptr inbounds %struct.dma_slave_config, ptr %dma_tx_conf, i32 0, i32 4
  %77 = ptrtoint ptr %dst_addr_width28 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv, ptr %dst_addr_width28, align 4
  %src_maxburst29 = getelementptr inbounds %struct.dma_slave_config, ptr %dma_tx_conf, i32 0, i32 5
  %78 = ptrtoint ptr %src_maxburst29 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %src_maxburst29, align 4
  %dst_maxburst30 = getelementptr inbounds %struct.dma_slave_config, ptr %dma_tx_conf, i32 0, i32 6
  %79 = ptrtoint ptr %dst_maxburst30 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %dst_maxburst30, align 4
  %src_port_window_size31 = getelementptr inbounds %struct.dma_slave_config, ptr %dma_tx_conf, i32 0, i32 7
  %80 = ptrtoint ptr %src_port_window_size31 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %src_port_window_size31, align 4
  %dst_port_window_size32 = getelementptr inbounds %struct.dma_slave_config, ptr %dma_tx_conf, i32 0, i32 8
  %81 = ptrtoint ptr %dst_port_window_size32 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %dst_port_window_size32, align 4
  %device_fc33 = getelementptr inbounds %struct.dma_slave_config, ptr %dma_tx_conf, i32 0, i32 9
  %82 = ptrtoint ptr %device_fc33 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %device_fc33, align 4
  %peripheral_config34 = getelementptr inbounds %struct.dma_slave_config, ptr %dma_tx_conf, i32 0, i32 10
  %83 = ptrtoint ptr %peripheral_config34 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %peripheral_config34, align 4
  %peripheral_size35 = getelementptr inbounds %struct.dma_slave_config, ptr %dma_tx_conf, i32 0, i32 11
  %84 = ptrtoint ptr %peripheral_size35 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %peripheral_size35, align 4
  %dma_rx = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 11
  %85 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dma_rx, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %88, i32 0, i32 44
  %89 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i256 = icmp eq ptr %90, null
  br i1 %tobool.not.i256, label %if.else.dmaengine_slave_config.exit_crit_edge, label %if.then.i258

if.else.dmaengine_slave_config.exit_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_slave_config.exit

if.then.i258:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call.i257 = call i32 %90(ptr noundef %86, ptr noundef nonnull %dma_rx_conf) #10
  br label %dmaengine_slave_config.exit

dmaengine_slave_config.exit:                      ; preds = %if.then.i258, %if.else.dmaengine_slave_config.exit_crit_edge
  %dma_tx = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 12
  %91 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dma_tx, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %device_config.i259 = getelementptr inbounds %struct.dma_device, ptr %94, i32 0, i32 44
  %95 = ptrtoint ptr %device_config.i259 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %device_config.i259, align 4
  %tobool.not.i260 = icmp eq ptr %96, null
  br i1 %tobool.not.i260, label %dmaengine_slave_config.exit.dmaengine_slave_config.exit263_crit_edge, label %if.then.i262

dmaengine_slave_config.exit.dmaengine_slave_config.exit263_crit_edge: ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_slave_config.exit263

if.then.i262:                                     ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i261 = call i32 %96(ptr noundef %92, ptr noundef nonnull %dma_tx_conf) #10
  br label %dmaengine_slave_config.exit263

dmaengine_slave_config.exit263:                   ; preds = %if.then.i262, %dmaengine_slave_config.exit.dmaengine_slave_config.exit263_crit_edge
  %97 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dma_rx, align 4
  %rx_sg = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 6
  %99 = ptrtoint ptr %rx_sg to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rx_sg, align 4
  %nents = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 6, i32 1
  %101 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %nents, align 4
  %tobool.not.i264 = icmp eq ptr %98, null
  br i1 %tobool.not.i264, label %dmaengine_slave_config.exit263.cleanup.thread_crit_edge, label %lor.lhs.false.i

dmaengine_slave_config.exit263.cleanup.thread_crit_edge: ; preds = %dmaengine_slave_config.exit263
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

lor.lhs.false.i:                                  ; preds = %dmaengine_slave_config.exit263
  %103 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %98, align 4
  %tobool1.not.i = icmp eq ptr %104, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %104, i32 0, i32 39
  %105 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %106, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.cleanup.thread_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.cleanup.thread_crit_edge:        ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i265 = call ptr %106(ptr noundef nonnull %98, ptr noundef %100, i32 noundef %102, i32 noundef 2, i32 noundef 3, ptr noundef null) #10
  %tobool41.not = icmp eq ptr %call.i265, null
  br i1 %tobool41.not, label %dmaengine_prep_slave_sg.exit.cleanup.thread_crit_edge, label %if.end43

dmaengine_prep_slave_sg.exit.cleanup.thread_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end43:                                         ; preds = %dmaengine_prep_slave_sg.exit
  %107 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %t, align 4
  %tobool45.not = icmp eq ptr %108, null
  br i1 %tobool45.not, label %if.then46, label %if.end43.if.end54_crit_edge

if.end43.if.end54_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %rx_sg to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rx_sg, align 4
  %tx_sg = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 5
  %111 = ptrtoint ptr %tx_sg to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %tx_sg, align 4
  %112 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %nents, align 4
  %nents53 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 5, i32 1
  %114 = ptrtoint ptr %nents53 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %nents53, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then46, %if.end43.if.end54_crit_edge
  %115 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dma_tx, align 4
  %tx_sg56 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 5
  %117 = ptrtoint ptr %tx_sg56 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %tx_sg56, align 4
  %nents59 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 5, i32 1
  %119 = ptrtoint ptr %nents59 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %nents59, align 4
  %tobool.not.i266 = icmp eq ptr %116, null
  br i1 %tobool.not.i266, label %if.end54.cleanup.thread_crit_edge, label %lor.lhs.false.i268

if.end54.cleanup.thread_crit_edge:                ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

lor.lhs.false.i268:                               ; preds = %if.end54
  %121 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %116, align 4
  %tobool1.not.i267 = icmp eq ptr %122, null
  br i1 %tobool1.not.i267, label %lor.lhs.false.i268.cleanup.thread_crit_edge, label %lor.lhs.false2.i271

lor.lhs.false.i268.cleanup.thread_crit_edge:      ; preds = %lor.lhs.false.i268
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

lor.lhs.false2.i271:                              ; preds = %lor.lhs.false.i268
  %device_prep_slave_sg.i269 = getelementptr inbounds %struct.dma_device, ptr %122, i32 0, i32 39
  %123 = ptrtoint ptr %device_prep_slave_sg.i269 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %device_prep_slave_sg.i269, align 4
  %tobool4.not.i270 = icmp eq ptr %124, null
  br i1 %tobool4.not.i270, label %lor.lhs.false2.i271.cleanup.thread_crit_edge, label %dmaengine_prep_slave_sg.exit275

lor.lhs.false2.i271.cleanup.thread_crit_edge:     ; preds = %lor.lhs.false2.i271
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

dmaengine_prep_slave_sg.exit275:                  ; preds = %lor.lhs.false2.i271
  %call.i272 = call ptr %124(ptr noundef nonnull %116, ptr noundef %118, i32 noundef %120, i32 noundef 1, i32 noundef 3, ptr noundef null) #10
  %tobool61.not = icmp eq ptr %call.i272, null
  br i1 %tobool61.not, label %dmaengine_prep_slave_sg.exit275.cleanup.thread_crit_edge, label %if.end63

dmaengine_prep_slave_sg.exit275.cleanup.thread_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit275
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end63:                                         ; preds = %dmaengine_prep_slave_sg.exit275
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i265, i32 0, i32 6
  %125 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @davinci_spi_dma_rx_callback, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i265, i32 0, i32 8
  %126 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %3, ptr %callback_param, align 4
  %callback64 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i272, i32 0, i32 6
  %127 = ptrtoint ptr %callback64 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @davinci_spi_dma_tx_callback, ptr %callback64, align 4
  %callback_param65 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i272, i32 0, i32 8
  %128 = ptrtoint ptr %callback_param65 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %3, ptr %callback_param65, align 4
  %cshold_bug = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 13, i32 4
  %129 = ptrtoint ptr %cshold_bug to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %cshold_bug, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool66.not = icmp eq i8 %130, 0
  br i1 %tobool66.not, label %if.end63.cleanup_crit_edge, label %if.then67

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  %shr = lshr i32 %25, 16
  %conv68 = trunc i32 %shr to i16
  %131 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %base, align 4
  %add.ptr71 = getelementptr i8, ptr %132, i32 62
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !99
  call void @arm_heavy_mb() #10
  %133 = call i16 @llvm.bswap.i16(i16 %conv68) #10
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr71, i16 %133) #10, !srcloc !100
  br label %cleanup

cleanup.thread:                                   ; preds = %dmaengine_prep_slave_sg.exit275.cleanup.thread_crit_edge, %lor.lhs.false2.i271.cleanup.thread_crit_edge, %lor.lhs.false.i268.cleanup.thread_crit_edge, %if.end54.cleanup.thread_crit_edge, %dmaengine_prep_slave_sg.exit.cleanup.thread_crit_edge, %lor.lhs.false2.i.cleanup.thread_crit_edge, %lor.lhs.false.i.cleanup.thread_crit_edge, %dmaengine_slave_config.exit263.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_tx_conf) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_rx_conf) #10
  br label %cleanup168

cleanup:                                          ; preds = %if.then67, %if.end63.cleanup_crit_edge
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i265, i32 0, i32 4
  %134 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %tx_submit.i, align 4
  %call.i276 = call i32 %135(ptr noundef nonnull %call.i265) #10
  %tx_submit.i277 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i272, i32 0, i32 4
  %136 = ptrtoint ptr %tx_submit.i277 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %tx_submit.i277, align 4
  %call.i278 = call i32 %137(ptr noundef nonnull %call.i272) #10
  %138 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dma_rx, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %141, i32 0, i32 50
  %142 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %device_issue_pending.i, align 4
  call void %143(ptr noundef %139) #10
  %144 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dma_tx, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %145, align 4
  %device_issue_pending.i279 = getelementptr inbounds %struct.dma_device, ptr %147, i32 0, i32 50
  %148 = ptrtoint ptr %device_issue_pending.i279 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %device_issue_pending.i279, align 4
  call void %149(ptr noundef %145) #10
  %150 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %base, align 4
  %add.ptr78 = getelementptr i8, ptr %151, i32 8
  %152 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78) #10, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %153 = or i32 %152, 256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %153) #10, !srcloc !94
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_tx_conf) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_rx_conf) #10
  br label %if.end82

if.end82:                                         ; preds = %cleanup, %if.end16
  %io_type83 = getelementptr inbounds %struct.davinci_spi_config, ptr %spec.store.select, i32 0, i32 3
  %154 = ptrtoint ptr %io_type83 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %io_type83, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %155)
  %cmp85.not = icmp eq i8 %155, 1
  br i1 %cmp85.not, label %if.end82.while.cond_crit_edge, label %if.then87

if.end82.while.cond_crit_edge:                    ; preds = %if.end82
  br label %while.cond

if.then87:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  %call89 = call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp eq i32 %call89, 0
  %spec.select = select i1 %cmp90, i32 2, i32 0
  br label %if.end111

while.cond:                                       ; preds = %do.end, %if.end82.while.cond_crit_edge
  %156 = ptrtoint ptr %rcount to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %rcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp96 = icmp sgt i32 %157, 0
  br i1 %cmp96, label %while.cond.while.body_crit_edge, label %lor.rhs

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  %158 = ptrtoint ptr %wcount to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %wcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp99 = icmp sgt i32 %159, 0
  br i1 %cmp99, label %lor.rhs.while.body_crit_edge, label %lor.rhs.if.end111_crit_edge

lor.rhs.if.end111_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  %call101 = call fastcc i32 @davinci_spi_process_events(ptr noundef %3)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %do.end, label %while.body.if.end111_crit_edge

while.body.if.end111_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !102
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !103
  br label %while.cond

if.end111:                                        ; preds = %while.body.if.end111_crit_edge, %lor.rhs.if.end111_crit_edge, %if.then87
  %errors.1 = phi i32 [ %spec.select, %if.then87 ], [ 0, %lor.rhs.if.end111_crit_edge ], [ %call101, %while.body.if.end111_crit_edge ]
  %160 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %base, align 4
  %add.ptr113 = getelementptr i8, ptr %161, i32 8
  %162 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr113) #10, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %163 = and i32 %162, -1594032386
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 %163) #10, !srcloc !94
  %164 = ptrtoint ptr %controller_data to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %controller_data, align 4
  %tobool.not.i283 = icmp eq ptr %165, null
  br i1 %tobool.not.i283, label %if.end111.if.end119_crit_edge, label %if.then.i286

if.end111.if.end119_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

if.then.i286:                                     ; preds = %if.end111
  %io_type.i284 = getelementptr inbounds %struct.davinci_spi_config, ptr %165, i32 0, i32 3
  %166 = ptrtoint ptr %io_type.i284 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %io_type.i284, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %167)
  %cmp.i285 = icmp eq i8 %167, 2
  br i1 %cmp.i285, label %land.lhs.true.i289, label %if.then.i286.if.end119_crit_edge

if.then.i286.if.end119_crit_edge:                 ; preds = %if.then.i286
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

land.lhs.true.i289:                               ; preds = %if.then.i286
  %168 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %169)
  %cmp2.i288 = icmp ugt i32 %169, 15
  br i1 %cmp2.i288, label %land.lhs.true4.i292, label %land.lhs.true.i289.if.end119_crit_edge

land.lhs.true.i289.if.end119_crit_edge:           ; preds = %land.lhs.true.i289
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

land.lhs.true4.i292:                              ; preds = %land.lhs.true.i289
  %170 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %rx_buf, align 4
  %call.i291 = call zeroext i1 @is_vmalloc_addr(ptr noundef %171) #10
  br i1 %call.i291, label %land.lhs.true4.i292.if.end119_crit_edge, label %davinci_spi_can_dma.exit298

land.lhs.true4.i292.if.end119_crit_edge:          ; preds = %land.lhs.true4.i292
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

davinci_spi_can_dma.exit298:                      ; preds = %land.lhs.true4.i292
  %172 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %t, align 4
  %call5.i293 = call zeroext i1 @is_vmalloc_addr(ptr noundef %173) #10
  br i1 %call5.i293, label %davinci_spi_can_dma.exit298.if.end119_crit_edge, label %if.then116

davinci_spi_can_dma.exit298.if.end119_crit_edge:  ; preds = %davinci_spi_can_dma.exit298
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

if.then116:                                       ; preds = %davinci_spi_can_dma.exit298
  call void @__sanitizer_cov_trace_pc() #12
  %174 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %base, align 4
  %add.ptr118 = getelementptr i8, ptr %175, i32 8
  %176 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr118) #10, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %177 = and i32 %176, -257
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %177) #10, !srcloc !94
  br label %if.end119

if.end119:                                        ; preds = %if.then116, %davinci_spi_can_dma.exit298.if.end119_crit_edge, %land.lhs.true4.i292.if.end119_crit_edge, %land.lhs.true.i289.if.end119_crit_edge, %if.then.i286.if.end119_crit_edge, %if.end111.if.end119_crit_edge
  %178 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %base, align 4
  %add.ptr121 = getelementptr i8, ptr %179, i32 4
  %180 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr121) #10, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %181 = and i32 %180, -2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 %181) #10, !srcloc !94
  %182 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %base, align 4
  %add.ptr123 = getelementptr i8, ptr %183, i32 4
  %184 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr123) #10, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %185 = or i32 %184, 65536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 %185) #10, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %errors.1)
  %tobool124.not = icmp eq i32 %errors.1, 0
  br i1 %tobool124.not, label %if.end154, label %if.then125

if.then125:                                       ; preds = %if.end119
  %master.i = getelementptr inbounds %struct.spi_bitbang, ptr %3, i32 0, i32 4
  %186 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %master.i, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %parent.i, align 8
  %and.i302 = and i32 %errors.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i302)
  %tobool.not.i303 = icmp eq i32 %and.i302, 0
  br i1 %tobool.not.i303, label %if.end.i304, label %if.then125.davinci_spi_check_error.exit_crit_edge

if.then125.davinci_spi_check_error.exit_crit_edge: ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #12
  br label %davinci_spi_check_error.exit

if.end.i304:                                      ; preds = %if.then125
  %and1.i = and i32 %errors.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end7.i, label %if.end.i304.davinci_spi_check_error.exit_crit_edge

if.end.i304.davinci_spi_check_error.exit_crit_edge: ; preds = %if.end.i304
  call void @__sanitizer_cov_trace_pc() #12
  br label %davinci_spi_check_error.exit

if.end7.i:                                        ; preds = %if.end.i304
  %and8.i = and i32 %errors.1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end14.i, label %if.end7.i.davinci_spi_check_error.exit_crit_edge

if.end7.i.davinci_spi_check_error.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %davinci_spi_check_error.exit

if.end14.i:                                       ; preds = %if.end7.i
  %version.i = getelementptr inbounds %struct.davinci_spi, ptr %3, i32 0, i32 2
  %190 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %191)
  %cmp.i305 = icmp eq i8 %191, 1
  br i1 %cmp.i305, label %if.then16.i, label %if.end14.i.do.end140_crit_edge

if.end14.i.do.end140_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end140

if.then16.i:                                      ; preds = %if.end14.i
  %and17.i = and i32 %errors.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end23.i, label %if.then16.i.davinci_spi_check_error.exit_crit_edge

if.then16.i.davinci_spi_check_error.exit_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %davinci_spi_check_error.exit

if.end23.i:                                       ; preds = %if.then16.i
  %and24.i = and i32 %errors.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end30.i, label %if.end23.i.davinci_spi_check_error.exit_crit_edge

if.end23.i.davinci_spi_check_error.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %davinci_spi_check_error.exit

if.end30.i:                                       ; preds = %if.end23.i
  %and31.i = and i32 %errors.1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.end37.i, label %if.end30.i.davinci_spi_check_error.exit_crit_edge

if.end30.i.davinci_spi_check_error.exit_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %davinci_spi_check_error.exit

if.end37.i:                                       ; preds = %if.end30.i
  %and38.i = and i32 %errors.1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %if.end37.i.do.end140_crit_edge, label %if.end37.i.davinci_spi_check_error.exit_crit_edge

if.end37.i.davinci_spi_check_error.exit_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %davinci_spi_check_error.exit

if.end37.i.do.end140_crit_edge:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end140

davinci_spi_check_error.exit:                     ; preds = %if.end37.i.davinci_spi_check_error.exit_crit_edge, %if.end30.i.davinci_spi_check_error.exit_crit_edge, %if.end23.i.davinci_spi_check_error.exit_crit_edge, %if.then16.i.davinci_spi_check_error.exit_crit_edge, %if.end7.i.davinci_spi_check_error.exit_crit_edge, %if.end.i304.davinci_spi_check_error.exit_crit_edge, %if.then125.davinci_spi_check_error.exit_crit_edge
  %.str.35.sink.i = phi ptr [ @.str.17, %if.then125.davinci_spi_check_error.exit_crit_edge ], [ @.str.20, %if.end.i304.davinci_spi_check_error.exit_crit_edge ], [ @.str.23, %if.end7.i.davinci_spi_check_error.exit_crit_edge ], [ @.str.26, %if.then16.i.davinci_spi_check_error.exit_crit_edge ], [ @.str.29, %if.end23.i.davinci_spi_check_error.exit_crit_edge ], [ @.str.32, %if.end30.i.davinci_spi_check_error.exit_crit_edge ], [ @.str.35, %if.end37.i.davinci_spi_check_error.exit_crit_edge ]
  %retval.0.ph.i = phi i32 [ -110, %if.then125.davinci_spi_check_error.exit_crit_edge ], [ -5, %if.end.i304.davinci_spi_check_error.exit_crit_edge ], [ -5, %if.end7.i.davinci_spi_check_error.exit_crit_edge ], [ -5, %if.then16.i.davinci_spi_check_error.exit_crit_edge ], [ -5, %if.end23.i.davinci_spi_check_error.exit_crit_edge ], [ -5, %if.end30.i.davinci_spi_check_error.exit_crit_edge ], [ -16, %if.end37.i.davinci_spi_check_error.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %189, ptr noundef nonnull %.str.35.sink.i) #13
  br label %cleanup168

do.end140:                                        ; preds = %if.end37.i.do.end140_crit_edge, %if.end14.i.do.end140_crit_edge
  %init_name.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 3
  %192 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i307 = icmp eq ptr %193, null
  br i1 %tobool.not.i307, label %if.end.i308, label %do.end140.dev_name.exit_crit_edge

do.end140.dev_name.exit_crit_edge:                ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i308:                                      ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #12
  %194 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %spi, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i308, %do.end140.dev_name.exit_crit_edge
  %retval.0.i309 = phi ptr [ %195, %if.end.i308 ], [ %193, %do.end140.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 690, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i309) #10
  br label %cleanup168

if.end154:                                        ; preds = %if.end119
  %196 = ptrtoint ptr %rcount to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %rcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %cmp156.not = icmp eq i32 %197, 0
  br i1 %cmp156.not, label %lor.lhs.false, label %if.end154.do.end164_crit_edge

if.end154.do.end164_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end164

lor.lhs.false:                                    ; preds = %if.end154
  %198 = ptrtoint ptr %wcount to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %wcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %cmp159.not = icmp eq i32 %199, 0
  br i1 %cmp159.not, label %if.end166, label %lor.lhs.false.do.end164_crit_edge

lor.lhs.false.do.end164_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end164

do.end164:                                        ; preds = %lor.lhs.false.do.end164_crit_edge, %if.end154.do.end164_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.14) #13
  br label %cleanup168

if.end166:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %200 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %len, align 4
  br label %cleanup168

cleanup168:                                       ; preds = %if.end166, %do.end164, %dev_name.exit, %davinci_spi_check_error.exit, %cleanup.thread
  %retval.0 = phi i32 [ -5, %do.end164 ], [ %201, %if.end166 ], [ 0, %dev_name.exit ], [ %retval.0.ph.i, %davinci_spi_check_error.exit ], [ -12, %cleanup.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @davinci_spi_request_dma(ptr nocapture noundef %dspi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_bitbang, ptr %dspi, i32 0, i32 4
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call = tail call ptr @dma_request_chan(ptr noundef %3, ptr noundef nonnull @.str.37) #10
  %dma_rx = getelementptr inbounds %struct.davinci_spi, ptr %dspi, i32 0, i32 11
  %4 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %dma_rx, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @dma_request_chan(ptr noundef %3, ptr noundef nonnull @.str.38) #10
  %dma_tx = getelementptr inbounds %struct.davinci_spi, ptr %dspi, i32 0, i32 12
  %6 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %dma_tx, align 4
  %cmp.i21 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i21, label %if.then8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_rx, align 4
  tail call void @dma_release_channel(ptr noundef %8) #10
  %9 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma_tx, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %11, %if.then8 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @davinci_spi_rx_buf_u8(i32 noundef %data, ptr nocapture noundef %dspi) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx = getelementptr inbounds %struct.davinci_spi, ptr %dspi, i32 0, i32 8
  %0 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i32 %data to i8
  %incdec.ptr = getelementptr i8, ptr %1, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %1, align 1
  %3 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %incdec.ptr, ptr %rx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @davinci_spi_tx_buf_u8(ptr nocapture noundef %dspi) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx = getelementptr inbounds %struct.davinci_spi, ptr %dspi, i32 0, i32 7
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr = getelementptr i8, ptr %1, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %incdec.ptr, ptr %tx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data.0 = phi i32 [ %conv, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %data.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_io_bits(ptr noundef %addr, i32 noundef %bits) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !96
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %or = or i32 %1, %bits
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %2) #10, !srcloc !94
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bitbang_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @davinci_spi_process_events(ptr noundef %dspi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.davinci_spi, ptr %dspi, i32 0, i32 4
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !96
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %rcount = getelementptr inbounds %struct.davinci_spi, ptr %dspi, i32 0, i32 9
  %4 = ptrtoint ptr %rcount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %get_rx = getelementptr inbounds %struct.davinci_spi, ptr %dspi, i32 0, i32 14
  %6 = ptrtoint ptr %get_rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_rx, align 4
  %and1 = and i32 %3, 65535
  tail call void %7(i32 noundef %and1, ptr noundef %dspi) #10
  %8 = ptrtoint ptr %rcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rcount, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %rcount, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #10, !srcloc !96
  %13 = lshr i32 %12, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %and6 = and i32 %13, 95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end12, label %if.end.out_crit_edge, !prof !95

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end12:                                         ; preds = %if.end
  %wcount = getelementptr inbounds %struct.davinci_spi, ptr %dspi, i32 0, i32 10
  %14 = ptrtoint ptr %wcount to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp13 = icmp sgt i32 %15, 0
  %and15 = and i32 %3, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %or.cond45 = select i1 %cmp13, i1 %tobool16.not, i1 false
  br i1 %or.cond45, label %if.then17, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr19 = getelementptr i8, ptr %17, i32 60
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #10, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %19 = ptrtoint ptr %wcount to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wcount, align 4
  %dec22 = add i32 %20, -1
  store i32 %dec22, ptr %wcount, align 4
  %21 = and i32 %18, 65535
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %get_tx = getelementptr inbounds %struct.davinci_spi, ptr %dspi, i32 0, i32 15
  %23 = ptrtoint ptr %get_tx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %get_tx, align 4
  %call24 = tail call i32 %24(ptr noundef %dspi) #10
  %and25 = and i32 %call24, 65535
  %or = or i32 %and25, %22
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr27 = getelementptr i8, ptr %26, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  %27 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %27) #10, !srcloc !94
  br label %out

out:                                              ; preds = %if.then17, %if.end12.out_crit_edge, %if.end.out_crit_edge
  ret i32 %and6
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clear_io_bits(ptr noundef %addr, i32 noundef %bits) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !96
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %neg = xor i32 %bits, -1
  %and = and i32 %1, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  %2 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %2) #10, !srcloc !94
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @davinci_spi_rx_buf_u16(i32 noundef %data, ptr nocapture noundef %dspi) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx = getelementptr inbounds %struct.davinci_spi, ptr %dspi, i32 0, i32 8
  %0 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i32 %data to i16
  %incdec.ptr = getelementptr i16, ptr %1, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %1, align 2
  %3 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %incdec.ptr, ptr %rx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @davinci_spi_tx_buf_u16(ptr nocapture noundef %dspi) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx = getelementptr inbounds %struct.davinci_spi, ptr %dspi, i32 0, i32 7
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr = getelementptr i16, ptr %1, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %conv = zext i16 %3 to i32
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %incdec.ptr, ptr %tx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data.0 = phi i32 [ %conv, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %data.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @davinci_spi_dma_rx_callback(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rcount = getelementptr inbounds %struct.davinci_spi, ptr %data, i32 0, i32 9
  %0 = ptrtoint ptr %rcount to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rcount, align 4
  %wcount = getelementptr inbounds %struct.davinci_spi, ptr %data, i32 0, i32 10
  %1 = ptrtoint ptr %wcount to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %wcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %done = getelementptr inbounds %struct.davinci_spi, ptr %data, i32 0, i32 6
  tail call void @complete(ptr noundef %done) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @davinci_spi_dma_tx_callback(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wcount = getelementptr inbounds %struct.davinci_spi, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %wcount to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %wcount, align 4
  %rcount = getelementptr inbounds %struct.davinci_spi, ptr %data, i32 0, i32 9
  %1 = ptrtoint ptr %rcount to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %done = getelementptr inbounds %struct.davinci_spi, ptr %data, i32 0, i32 6
  tail call void @complete(ptr noundef %done) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_bitbang_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !30, !31, !33, !35, !37, !39, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__initcall__kmod_spi_davinci__238_1050_davinci_spi_driver_init6, !1, !"__initcall__kmod_spi_davinci__238_1050_davinci_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-davinci.c", i32 1050, i32 1}
!2 = !{ptr @__exitcall_davinci_spi_driver_exit, !1, !"__exitcall_davinci_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description239, !4, !"__UNIQUE_ID_description239", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-davinci.c", i32 1052, i32 1}
!5 = !{ptr @__UNIQUE_ID_file240, !6, !"__UNIQUE_ID_file240", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-davinci.c", i32 1053, i32 1}
!7 = !{ptr @__UNIQUE_ID_license241, !6, !"__UNIQUE_ID_license241", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-davinci.c", i32 1044, i32 11}
!10 = !{ptr @davinci_spi_driver, !11, !"davinci_spi_driver", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-davinci.c", i32 1042, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-davinci.c", i32 962, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @davinci_spi_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @davinci_spi_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/spi/spi-davinci.c", i32 995, i32 2}
!22 = !{ptr @davinci_spi_probe._entry.6, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @davinci_spi_probe._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-davinci.c", i32 832, i32 29}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-davinci.c", i32 834, i32 29}
!28 = !{ptr @init_completion.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../include/linux/completion.h", i32 87, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/spi/spi-davinci.c", i32 392, i32 33}
!33 = !{ptr @davinci_spi_default_cfg, !34, !"davinci_spi_default_cfg", i1 false, i1 false}
!34 = !{!"../drivers/spi/spi-davinci.c", i32 133, i32 34}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/spi/spi-davinci.c", i32 689, i32 3}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/spi/spi-davinci.c", i32 695, i32 3}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @davinci_spi_bufs._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @davinci_spi_bufs._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-davinci.c", i32 466, i32 3}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @davinci_spi_check_error._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @davinci_spi_check_error._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/spi/spi-davinci.c", i32 470, i32 3}
!50 = !{ptr @davinci_spi_check_error._entry.19, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @davinci_spi_check_error._entry_ptr.21, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/spi/spi-davinci.c", i32 474, i32 3}
!54 = !{ptr @davinci_spi_check_error._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @davinci_spi_check_error._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/spi/spi-davinci.c", i32 480, i32 4}
!58 = !{ptr @davinci_spi_check_error._entry.25, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @davinci_spi_check_error._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/spi/spi-davinci.c", i32 484, i32 4}
!62 = !{ptr @davinci_spi_check_error._entry.28, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @davinci_spi_check_error._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/spi/spi-davinci.c", i32 488, i32 4}
!66 = !{ptr @davinci_spi_check_error._entry.31, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @davinci_spi_check_error._entry_ptr.33, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/spi/spi-davinci.c", i32 492, i32 4}
!70 = !{ptr @davinci_spi_check_error._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @davinci_spi_check_error._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/spi/spi-davinci.c", i32 748, i32 40}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/spi/spi-davinci.c", i32 752, i32 40}
!76 = !{ptr @davinci_spi_of_match, !77, !"davinci_spi_of_match", i1 false, i1 false}
!77 = !{!"../drivers/spi/spi-davinci.c", i32 784, i32 34}
!78 = !{ptr @dm6441_spi_data, !79, !"dm6441_spi_data", i1 false, i1 false}
!79 = !{!"../drivers/spi/spi-davinci.c", i32 769, i32 41}
!80 = !{ptr @da830_spi_data, !81, !"da830_spi_data", i1 false, i1 false}
!81 = !{!"../drivers/spi/spi-davinci.c", i32 774, i32 41}
!82 = !{ptr @keystone_spi_data, !83, !"keystone_spi_data", i1 false, i1 false}
!83 = !{!"../drivers/spi/spi-davinci.c", i32 779, i32 41}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i64 2151765296}
!94 = !{i64 4223174}
!95 = !{!"branch_weights", i32 2000, i32 1}
!96 = !{i64 4223592}
!97 = !{i64 2151763941}
!98 = !{!"auto-init"}
!99 = !{i64 2151764746}
!100 = !{i64 4222554}
!101 = !{i8 0, i8 2}
!102 = !{i64 2154521853}
!103 = !{i64 2154521695}
