; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-pic32.c_pt.bc'
source_filename = "../drivers/spi/spi-pic32.c"
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
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
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
%struct.pic32_spi = type { i32, ptr, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, %struct.completion, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.pic32_spi_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], i32, i32, i32, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__initcall__kmod_spi_pic32__256_875_pic32_spi_driver_init6 = internal global ptr @pic32_spi_driver_init, section ".initcall6.init", align 4
@pic32_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pic32_spi_probe, ptr @pic32_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pic32_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pic32_spi_driver_exit = internal global ptr @pic32_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author257 = internal constant [67 x i8] c"spi_pic32.author=Purna Chandra Mandal <purna.mandal@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description258 = internal constant [69 x i8] c"spi_pic32.description=Microchip SPI driver for PIC32 SPI controller.\00", section ".modinfo", align 1
@__UNIQUE_ID_file259 = internal constant [37 x i8] c"spi_pic32.file=drivers/spi/spi-pic32\00", section ".modinfo", align 1
@__UNIQUE_ID_license260 = internal constant [25 x i8] c"spi_pic32.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi-pic32\00", [22 x i8] zeroinitializer }, align 32
@pic32_spi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,pic32mzda-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pic32_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 805, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"request fault-irq %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pic32_spi_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/spi/spi-pic32.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pic32_spi_probe._entry_ptr = internal global ptr @pic32_spi_probe._entry, section ".printk_index", align 4
@pic32_spi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 815, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"request rx-irq %d\0A\00", [45 x i8] zeroinitializer }, align 32
@pic32_spi_probe._entry_ptr.8 = internal global ptr @pic32_spi_probe._entry.6, section ".printk_index", align 4
@pic32_spi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 825, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"request tx-irq %d\0A\00", [45 x i8] zeroinitializer }, align 32
@pic32_spi_probe._entry_ptr.11 = internal global ptr @pic32_spi_probe._entry.9, section ".printk_index", align 4
@pic32_spi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 832, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed registering spi master\0A\00", [33 x i8] zeroinitializer }, align 32
@pic32_spi_probe._entry_ptr.14 = internal global ptr @pic32_spi_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fault\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mck0\00", [27 x i8] zeroinitializer }, align 32
@pic32_spi_hw_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 738, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk not found\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pic32_spi_hw_probe\00", [45 x i8] zeroinitializer }, align 32
@pic32_spi_hw_probe._entry_ptr = internal global ptr @pic32_spi_hw_probe._entry, section ".printk_index", align 4
@pic32_spi_hw_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 752, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s failed, err %d\0A\00", [45 x i8] zeroinitializer }, align 32
@pic32_spi_hw_probe._entry_ptr.23 = internal global ptr @pic32_spi_hw_probe._entry.21, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pic32_spi_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 583, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No max speed HZ parameter\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pic32_spi_setup\00", [16 x i8] zeroinitializer }, align 32
@pic32_spi_setup._entry_ptr = internal global ptr @pic32_spi_setup._entry, section ".printk_index", align 4
@pic32_spi_one_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 527, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dma submit error\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pic32_spi_one_transfer\00", [41 x i8] zeroinitializer }, align 32
@pic32_spi_one_transfer._entry_ptr = internal global ptr @pic32_spi_one_transfer._entry, section ".printk_index", align 4
@pic32_spi_one_transfer._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 550, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wait error/timedout\0A\00", [43 x i8] zeroinitializer }, align 32
@pic32_spi_one_transfer._entry_ptr.30 = internal global ptr @pic32_spi_one_transfer._entry.28, section ".printk_index", align 4
@pic32_spi_dma_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 376, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tx channel setup failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pic32_spi_dma_config\00", [43 x i8] zeroinitializer }, align 32
@pic32_spi_dma_config._entry_ptr = internal global ptr @pic32_spi_dma_config._entry, section ".printk_index", align 4
@pic32_spi_dma_config._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 383, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rx channel setup failed\0A\00", [39 x i8] zeroinitializer }, align 32
@pic32_spi_dma_config._entry_ptr.35 = internal global ptr @pic32_spi_dma_config._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spi-rx\00", [25 x i8] zeroinitializer }, align 32
@pic32_spi_dma_prep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 618, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX channel not found.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pic32_spi_dma_prep\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pic32_spi_dma_prep._entry_ptr = internal global ptr @pic32_spi_dma_prep._entry, section ".printk_index", align 4
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spi-tx\00", [25 x i8] zeroinitializer }, align 32
@pic32_spi_dma_prep._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.38, ptr @.str.3, i32 629, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TX channel not found.\0A\00", [41 x i8] zeroinitializer }, align 32
@pic32_spi_dma_prep._entry_ptr.43 = internal global ptr @pic32_spi_dma_prep._entry.41, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"err_irq: fifo ov/ur-run\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"err_irq: frame error\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"err_irq: no mesg\00", [47 x i8] zeroinitializer }, align 32
@pic32_err_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 227, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pic32_err_stop\00", [17 x i8] zeroinitializer }, align 32
@pic32_err_stop._entry_ptr = internal global ptr @pic32_err_stop._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 16, i64 32]
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"pic32_spi_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 866, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 868, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant [19 x i8] c"pic32_spi_of_match\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 860, i32 34 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 805, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 815, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 825, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 832, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 723, i32 52 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 727, i32 49 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 731, i32 49 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 736, i32 41 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 738, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 752, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 583, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 527, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 550, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 376, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 383, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 613, i32 41 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 618, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 624, i32 41 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 629, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 87, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 244, i32 26 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 249, i32 26 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 254, i32 26 }
@___asan_gen_.200 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private constant [27 x i8] c"../drivers/spi/spi-pic32.c\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 227, i32 2 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_author257, ptr @__UNIQUE_ID_description258, ptr @__UNIQUE_ID_file259, ptr @__UNIQUE_ID_license260, ptr @__exitcall_pic32_spi_driver_exit, ptr @__initcall__kmod_spi_pic32__256_875_pic32_spi_driver_init6, ptr @pic32_err_stop._entry, ptr @pic32_err_stop._entry_ptr, ptr @pic32_spi_dma_config._entry, ptr @pic32_spi_dma_config._entry.33, ptr @pic32_spi_dma_config._entry_ptr, ptr @pic32_spi_dma_config._entry_ptr.35, ptr @pic32_spi_dma_prep._entry, ptr @pic32_spi_dma_prep._entry.41, ptr @pic32_spi_dma_prep._entry_ptr, ptr @pic32_spi_dma_prep._entry_ptr.43, ptr @pic32_spi_driver_exit, ptr @pic32_spi_hw_probe._entry, ptr @pic32_spi_hw_probe._entry.21, ptr @pic32_spi_hw_probe._entry_ptr, ptr @pic32_spi_hw_probe._entry_ptr.23, ptr @pic32_spi_one_transfer._entry, ptr @pic32_spi_one_transfer._entry.28, ptr @pic32_spi_one_transfer._entry_ptr, ptr @pic32_spi_one_transfer._entry_ptr.30, ptr @pic32_spi_probe._entry, ptr @pic32_spi_probe._entry.12, ptr @pic32_spi_probe._entry.6, ptr @pic32_spi_probe._entry.9, ptr @pic32_spi_probe._entry_ptr, ptr @pic32_spi_probe._entry_ptr.11, ptr @pic32_spi_probe._entry_ptr.14, ptr @pic32_spi_probe._entry_ptr.8, ptr @pic32_spi_setup._entry, ptr @pic32_spi_setup._entry_ptr, ptr @pic32_spi_driver, ptr @.str, ptr @pic32_spi_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @init_completion.__key, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_spi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_spi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_spi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_spi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_spi_hw_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_spi_hw_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_spi_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_spi_one_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_spi_one_transfer._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_spi_dma_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_spi_dma_config._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_spi_dma_prep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_spi_dma_prep._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic32_err_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pic32_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pic32_spi_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pic32_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @pic32_spi_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pic32_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %cfg.i.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 136, i1 noundef zeroext false) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup66_crit_edge, label %if.end

entry.cleanup66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %master2 = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %master2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %master2, align 4
  %call.i129 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call1.i = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call.i129) #8
  %regs.i = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1.i, ptr %regs.i, align 4
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call1.i to i32
  br label %pic32_spi_hw_probe.exit

if.end.i:                                         ; preds = %if.end
  %5 = ptrtoint ptr %call.i129 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call.i129, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %1, align 4
  %call6.i = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.15) #8
  %fault_irq.i = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %fault_irq.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call6.i, ptr %fault_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %if.end.i.spi_controller_put.exit_crit_edge, label %if.end10.i

if.end.i.spi_controller_put.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_controller_put.exit

if.end10.i:                                       ; preds = %if.end.i
  %call11.i = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.16) #8
  %rx_irq.i = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %rx_irq.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call11.i, ptr %rx_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp13.i = icmp slt i32 %call11.i, 0
  br i1 %cmp13.i, label %if.end10.i.spi_controller_put.exit_crit_edge, label %if.end16.i

if.end10.i.spi_controller_put.exit_crit_edge:     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_controller_put.exit

if.end16.i:                                       ; preds = %if.end10.i
  %call17.i = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.17) #8
  %tx_irq.i = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %tx_irq.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call17.i, ptr %tx_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp19.i = icmp slt i32 %call17.i, 0
  br i1 %cmp19.i, label %if.end16.i.spi_controller_put.exit_crit_edge, label %if.end22.i

if.end16.i.spi_controller_put.exit_crit_edge:     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_controller_put.exit

if.end22.i:                                       ; preds = %if.end16.i
  %call24.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  %clk.i = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call24.i, ptr %clk.i, align 4
  %cmp.i68.i = icmp ugt ptr %call24.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68.i, label %do.end.i, label %if.end31.i

do.end.i:                                         ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #11
  %12 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk.i, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %do.end38.i

if.end31.i:                                       ; preds = %if.end22.i
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %call24.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end31.i.do.end38.i_crit_edge

if.end31.i.do.end38.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end38.i

if.end.i.i:                                       ; preds = %if.end31.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %call24.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %pic32_spi_hw_probe.exit.thread164, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call24.i) #8
  br label %do.end38.i

pic32_spi_hw_probe.exit.thread164:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %ctrl_clr.i.i.i = getelementptr inbounds %struct.pic32_spi_regs, ptr %16, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_clr.i.i.i, i32 10485760) #8, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #8
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  %fifo_n_byte.i.i = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %fifo_n_byte.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16, ptr %fifo_n_byte.i.i, align 4
  %22 = and i32 %20, -788562321
  %23 = or i32 %22, 687866112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %ctrl2_set.i.i = getelementptr inbounds %struct.pic32_spi_regs, ptr %27, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl2_set.i.i, i32 1835008) #8, !srcloc !114
  br label %if.end6

do.end38.i:                                       ; preds = %if.then3.i.i, %if.end31.i.do.end38.i_crit_edge, %do.end.i
  %ret.0.i = phi i32 [ %14, %do.end.i ], [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end31.i.do.end38.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef %ret.0.i) #11
  br label %pic32_spi_hw_probe.exit

pic32_spi_hw_probe.exit:                          ; preds = %do.end38.i, %if.then.i
  %retval.0.i = phi i32 [ %4, %if.then.i ], [ %ret.0.i, %do.end38.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool4.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool4.not, label %pic32_spi_hw_probe.exit.if.end6_crit_edge, label %pic32_spi_hw_probe.exit.spi_controller_put.exit_crit_edge

pic32_spi_hw_probe.exit.spi_controller_put.exit_crit_edge: ; preds = %pic32_spi_hw_probe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_controller_put.exit

pic32_spi_hw_probe.exit.if.end6_crit_edge:        ; preds = %pic32_spi_hw_probe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end6:                                          ; preds = %pic32_spi_hw_probe.exit.if.end6_crit_edge, %pic32_spi_hw_probe.exit.thread164
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %28 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_node, align 8
  %of_node9 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %30 = ptrtoint ptr %of_node9 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %of_node9, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %31 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 7, ptr %mode_bits, align 8
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %32 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %num_chipselect, align 2
  %clk = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk, align 4
  %call10 = tail call i32 @clk_get_rate(ptr noundef %34) #8
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %35 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call10, ptr %max_speed_hz, align 8
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %36 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @pic32_spi_setup, ptr %setup, align 4
  %cleanup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 23
  %37 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @pic32_spi_cleanup, ptr %cleanup, align 8
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 10
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 24, ptr %flags, align 4
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %39 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -2147450752, ptr %bits_per_word_mask, align 8
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %40 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @pic32_spi_one_transfer, ptr %transfer_one, align 4
  %prepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 47
  %41 = ptrtoint ptr %prepare_message to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @pic32_spi_prepare_message, ptr %prepare_message, align 4
  %unprepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 48
  %42 = ptrtoint ptr %unprepare_message to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @pic32_spi_unprepare_message, ptr %unprepare_message, align 8
  %prepare_transfer_hardware = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 44
  %43 = ptrtoint ptr %prepare_transfer_hardware to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @pic32_spi_prepare_hardware, ptr %prepare_transfer_hardware, align 8
  %unprepare_transfer_hardware = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 46
  %44 = ptrtoint ptr %unprepare_transfer_hardware to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @pic32_spi_unprepare_hardware, ptr %unprepare_transfer_hardware, align 8
  %45 = ptrtoint ptr %master2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %master2, align 4
  %call.i130 = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.36) #8
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %46, i32 0, i32 61
  %47 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i130, ptr %dma_rx.i, align 4
  %cmp.i.i131 = icmp ugt ptr %call.i130, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i131, label %if.then.i133, label %if.end8.i

if.then.i133:                                     ; preds = %if.end6
  %cmp.i132 = icmp eq ptr %call.i130, inttoptr (i32 -517 to ptr)
  br i1 %cmp.i132, label %if.then.i133.if.end32.sink.split.i_crit_edge, label %do.end.i134

if.then.i133.if.end32.sink.split.i_crit_edge:     ; preds = %if.then.i133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.sink.split.i

do.end.i134:                                      ; preds = %if.then.i133
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.37) #11
  br label %if.end32.sink.split.i

if.end8.i:                                        ; preds = %if.end6
  %call9.i = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.40) #8
  %dma_tx.i = getelementptr inbounds %struct.spi_controller, ptr %46, i32 0, i32 60
  %48 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call9.i, ptr %dma_tx.i, align 8
  %cmp.i59.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59.i, label %if.then12.i, label %if.end23.i

if.then12.i:                                      ; preds = %if.end8.i
  %cmp15.i = icmp eq ptr %call9.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp15.i, label %if.then12.i.if.end21.i_crit_edge, label %do.end20.i

if.then12.i.if.end21.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

do.end20.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.42) #11
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end20.i, %if.then12.i.if.end21.i_crit_edge
  %ret.1.i = phi i32 [ 0, %do.end20.i ], [ -517, %if.then12.i.if.end21.i_crit_edge ]
  %49 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %dma_tx.i, align 8
  br label %out_err.i

if.end23.i:                                       ; preds = %if.end8.i
  %50 = ptrtoint ptr %master2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %master2, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg.i.i) #8
  %52 = getelementptr inbounds i8, ptr %cfg.i.i, i32 28
  %53 = call ptr @memset(ptr %52, i32 0, i32 20)
  %device_fc.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i.i, i32 0, i32 9
  %54 = ptrtoint ptr %device_fc.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %device_fc.i.i, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %1, align 4
  %add.i.i = add i32 %56, 32
  %src_addr.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %src_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add.i.i, ptr %src_addr.i.i, align 4
  %dst_addr.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i.i, i32 0, i32 2
  %58 = ptrtoint ptr %dst_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add.i.i, ptr %dst_addr.i.i, align 4
  %fifo_n_elm.i.i = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 11
  %59 = ptrtoint ptr %fifo_n_elm.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fifo_n_elm.i.i, align 4
  %div30.i.i = lshr i32 %60, 1
  %src_maxburst.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i.i, i32 0, i32 5
  %61 = ptrtoint ptr %src_maxburst.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %div30.i.i, ptr %src_maxburst.i.i, align 4
  %dst_maxburst.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i.i, i32 0, i32 6
  %62 = ptrtoint ptr %dst_maxburst.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %div30.i.i, ptr %dst_maxburst.i.i, align 4
  %src_addr_width.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i.i, i32 0, i32 3
  %63 = ptrtoint ptr %src_addr_width.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %src_addr_width.i.i, align 4
  %dst_addr_width.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i.i, i32 0, i32 4
  %64 = ptrtoint ptr %dst_addr_width.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %dst_addr_width.i.i, align 4
  %65 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %cfg.i.i, align 4
  %dma_tx.i.i = getelementptr inbounds %struct.spi_controller, ptr %51, i32 0, i32 60
  %66 = ptrtoint ptr %dma_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dma_tx.i.i, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %device_config.i.i.i = getelementptr inbounds %struct.dma_device, ptr %69, i32 0, i32 44
  %70 = ptrtoint ptr %device_config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %device_config.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %71, null
  br i1 %tobool.not.i.i.i, label %if.end23.i.pic32_spi_dma_config.exit.i_crit_edge, label %dmaengine_slave_config.exit.i.i

if.end23.i.pic32_spi_dma_config.exit.i_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pic32_spi_dma_config.exit.i

dmaengine_slave_config.exit.i.i:                  ; preds = %if.end23.i
  %call.i.i.i = call i32 %71(ptr noundef %67, ptr noundef nonnull %cfg.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i135 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i135, label %if.end.i.i136, label %dmaengine_slave_config.exit.i.i.pic32_spi_dma_config.exit.i_crit_edge

dmaengine_slave_config.exit.i.i.pic32_spi_dma_config.exit.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pic32_spi_dma_config.exit.i

if.end.i.i136:                                    ; preds = %dmaengine_slave_config.exit.i.i
  %72 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %cfg.i.i, align 4
  %dma_rx.i.i = getelementptr inbounds %struct.spi_controller, ptr %51, i32 0, i32 61
  %73 = ptrtoint ptr %dma_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dma_rx.i.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %device_config.i32.i.i = getelementptr inbounds %struct.dma_device, ptr %76, i32 0, i32 44
  %77 = ptrtoint ptr %device_config.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %device_config.i32.i.i, align 4
  %tobool.not.i33.i.i = icmp eq ptr %78, null
  br i1 %tobool.not.i33.i.i, label %if.end.i.i136.pic32_spi_dma_config.exit.i_crit_edge, label %dmaengine_slave_config.exit37.i.i

if.end.i.i136.pic32_spi_dma_config.exit.i_crit_edge: ; preds = %if.end.i.i136
  call void @__sanitizer_cov_trace_pc() #10
  br label %pic32_spi_dma_config.exit.i

dmaengine_slave_config.exit37.i.i:                ; preds = %if.end.i.i136
  %call.i34.i.i = call i32 %78(ptr noundef %74, ptr noundef nonnull %cfg.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i.i)
  %tobool8.not.i.i = icmp eq i32 %call.i34.i.i, 0
  br i1 %tobool8.not.i.i, label %pic32_spi_dma_prep.exit.thread, label %dmaengine_slave_config.exit37.i.i.pic32_spi_dma_config.exit.i_crit_edge

dmaengine_slave_config.exit37.i.i.pic32_spi_dma_config.exit.i_crit_edge: ; preds = %dmaengine_slave_config.exit37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pic32_spi_dma_config.exit.i

pic32_spi_dma_config.exit.i:                      ; preds = %dmaengine_slave_config.exit37.i.i.pic32_spi_dma_config.exit.i_crit_edge, %if.end.i.i136.pic32_spi_dma_config.exit.i_crit_edge, %dmaengine_slave_config.exit.i.i.pic32_spi_dma_config.exit.i_crit_edge, %if.end23.i.pic32_spi_dma_config.exit.i_crit_edge
  %.str.34.sink.i.i = phi ptr [ @.str.31, %if.end23.i.pic32_spi_dma_config.exit.i_crit_edge ], [ @.str.31, %dmaengine_slave_config.exit.i.i.pic32_spi_dma_config.exit.i_crit_edge ], [ @.str.34, %if.end.i.i136.pic32_spi_dma_config.exit.i_crit_edge ], [ @.str.34, %dmaengine_slave_config.exit37.i.i.pic32_spi_dma_config.exit.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull %.str.34.sink.i.i) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i.i) #8
  br label %out_err.i

pic32_spi_dma_prep.exit.thread:                   ; preds = %dmaengine_slave_config.exit37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i.i) #8
  %flags.i = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 12
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #8
  br label %if.end15

out_err.i:                                        ; preds = %pic32_spi_dma_config.exit.i, %if.end21.i
  %ret.2.ph.i = phi i32 [ 0, %pic32_spi_dma_config.exit.i ], [ %ret.1.i, %if.end21.i ]
  %79 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pr.i = load ptr, ptr %dma_rx.i, align 4
  %tobool28.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool28.not.i, label %out_err.i.if.end32.i_crit_edge, label %if.then29.i

out_err.i.if.end32.i_crit_edge:                   ; preds = %out_err.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then29.i:                                      ; preds = %out_err.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dma_release_channel(ptr noundef nonnull %.pr.i) #8
  br label %if.end32.sink.split.i

if.end32.sink.split.i:                            ; preds = %if.then29.i, %do.end.i134, %if.then.i133.if.end32.sink.split.i_crit_edge
  %ret.264.ph.i = phi i32 [ %ret.2.ph.i, %if.then29.i ], [ 0, %do.end.i134 ], [ -517, %if.then.i133.if.end32.sink.split.i_crit_edge ]
  %80 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %dma_rx.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.end32.sink.split.i, %out_err.i.if.end32.i_crit_edge
  %ret.264.i = phi i32 [ %ret.2.ph.i, %out_err.i.if.end32.i_crit_edge ], [ %ret.264.ph.i, %if.end32.sink.split.i ]
  %dma_tx33.i = getelementptr inbounds %struct.spi_controller, ptr %46, i32 0, i32 60
  %81 = ptrtoint ptr %dma_tx33.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dma_tx33.i, align 8
  %tobool34.not.i = icmp eq ptr %82, null
  br i1 %tobool34.not.i, label %if.end32.i.pic32_spi_dma_prep.exit_crit_edge, label %if.then35.i

if.end32.i.pic32_spi_dma_prep.exit_crit_edge:     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pic32_spi_dma_prep.exit

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dma_release_channel(ptr noundef nonnull %82) #8
  %83 = ptrtoint ptr %dma_tx33.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %dma_tx33.i, align 8
  br label %pic32_spi_dma_prep.exit

pic32_spi_dma_prep.exit:                          ; preds = %if.then35.i, %if.end32.i.pic32_spi_dma_prep.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.264.i)
  %tobool13.not = icmp eq i32 %ret.264.i, 0
  br i1 %tobool13.not, label %pic32_spi_dma_prep.exit.if.end15_crit_edge, label %pic32_spi_dma_prep.exit.err_bailout_crit_edge

pic32_spi_dma_prep.exit.err_bailout_crit_edge:    ; preds = %pic32_spi_dma_prep.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_bailout

pic32_spi_dma_prep.exit.if.end15_crit_edge:       ; preds = %pic32_spi_dma_prep.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15:                                         ; preds = %pic32_spi_dma_prep.exit.if.end15_crit_edge, %pic32_spi_dma_prep.exit.thread
  %flags16 = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 12
  %84 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %flags16, align 4
  %and1.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool18.not = icmp eq i32 %and1.i, 0
  br i1 %tobool18.not, label %if.end15.if.end20_crit_edge, label %if.then19

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 24
  %86 = ptrtoint ptr %can_dma to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @pic32_spi_can_dma, ptr %can_dma, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end15.if.end20_crit_edge
  %xfer_done = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 13
  %87 = ptrtoint ptr %xfer_done to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %xfer_done, align 4
  %wait.i = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 13, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @init_completion.__key) #8
  %mode = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 9
  %88 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %mode, align 4
  %fault_irq = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 2
  %89 = ptrtoint ptr %fault_irq to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %fault_irq, align 4
  call void @irq_modify_status(i32 noundef %90, i32 noundef 0, i32 noundef 4096) #8
  %91 = ptrtoint ptr %fault_irq to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %fault_irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %93 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %94, null
  br i1 %tobool.not.i, label %if.end.i138, label %if.end20.dev_name.exit_crit_edge

if.end20.dev_name.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i138:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i138, %if.end20.dev_name.exit_crit_edge
  %retval.0.i139 = phi ptr [ %96, %if.end.i138 ], [ %94, %if.end20.dev_name.exit_crit_edge ]
  %call.i140 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %92, ptr noundef nonnull @pic32_spi_fault_irq, ptr noundef null, i32 noundef 65536, ptr noundef %retval.0.i139, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %cmp = icmp slt i32 %call.i140, 0
  %rx_irq = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 3
  %97 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rx_irq, align 4
  br i1 %cmp, label %do.end, label %if.end28

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %98) #11
  br label %err_bailout

if.end28:                                         ; preds = %dev_name.exit
  call void @irq_modify_status(i32 noundef %98, i32 noundef 0, i32 noundef 4096) #8
  %99 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rx_irq, align 4
  %101 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i142 = icmp eq ptr %102, null
  br i1 %tobool.not.i142, label %if.end.i143, label %if.end28.dev_name.exit145_crit_edge

if.end28.dev_name.exit145_crit_edge:              ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit145

if.end.i143:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev, align 4
  br label %dev_name.exit145

dev_name.exit145:                                 ; preds = %if.end.i143, %if.end28.dev_name.exit145_crit_edge
  %retval.0.i144 = phi ptr [ %104, %if.end.i143 ], [ %102, %if.end28.dev_name.exit145_crit_edge ]
  %call.i146 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %100, ptr noundef nonnull @pic32_spi_rx_irq, ptr noundef null, i32 noundef 65536, ptr noundef %retval.0.i144, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %cmp35 = icmp slt i32 %call.i146, 0
  br i1 %cmp35, label %do.end39, label %if.end42

do.end39:                                         ; preds = %dev_name.exit145
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rx_irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %106) #11
  br label %err_bailout

if.end42:                                         ; preds = %dev_name.exit145
  %tx_irq = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 4
  %107 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %tx_irq, align 4
  call void @irq_modify_status(i32 noundef %108, i32 noundef 0, i32 noundef 4096) #8
  %109 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %tx_irq, align 4
  %111 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i148 = icmp eq ptr %112, null
  br i1 %tobool.not.i148, label %if.end.i149, label %if.end42.dev_name.exit151_crit_edge

if.end42.dev_name.exit151_crit_edge:              ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit151

if.end.i149:                                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev, align 4
  br label %dev_name.exit151

dev_name.exit151:                                 ; preds = %if.end.i149, %if.end42.dev_name.exit151_crit_edge
  %retval.0.i150 = phi ptr [ %114, %if.end.i149 ], [ %112, %if.end42.dev_name.exit151_crit_edge ]
  %call.i152 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %110, ptr noundef nonnull @pic32_spi_tx_irq, ptr noundef null, i32 noundef 65536, ptr noundef %retval.0.i150, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %cmp48 = icmp slt i32 %call.i152, 0
  br i1 %cmp48, label %do.end52, label %if.end55

do.end52:                                         ; preds = %dev_name.exit151
  call void @__sanitizer_cov_trace_pc() #10
  %115 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %tx_irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %116) #11
  br label %err_bailout

if.end55:                                         ; preds = %dev_name.exit151
  %call57 = call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end64, label %do.end62

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.13) #11
  br label %err_bailout

if.end64:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i153 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %117 = ptrtoint ptr %driver_data.i.i153 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %1, ptr %driver_data.i.i153, align 4
  br label %cleanup66

err_bailout:                                      ; preds = %do.end62, %do.end52, %do.end39, %do.end, %pic32_spi_dma_prep.exit.err_bailout_crit_edge
  %ret.0 = phi i32 [ %ret.264.i, %pic32_spi_dma_prep.exit.err_bailout_crit_edge ], [ %call.i140, %do.end ], [ %call.i146, %do.end39 ], [ %call.i152, %do.end52 ], [ %call57, %do.end62 ]
  %flags.i154 = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 12
  %118 = ptrtoint ptr %flags.i154 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %flags.i154, align 4
  %and1.i.i = and i32 %119, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i155 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i155, label %err_bailout.pic32_spi_dma_unprep.exit_crit_edge, label %if.end.i157

err_bailout.pic32_spi_dma_unprep.exit_crit_edge:  ; preds = %err_bailout
  call void @__sanitizer_cov_trace_pc() #10
  br label %pic32_spi_dma_unprep.exit

if.end.i157:                                      ; preds = %err_bailout
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i154) #8
  %120 = ptrtoint ptr %master2 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %master2, align 4
  %dma_rx.i156 = getelementptr inbounds %struct.spi_controller, ptr %121, i32 0, i32 61
  %122 = ptrtoint ptr %dma_rx.i156 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dma_rx.i156, align 4
  %tobool2.not.i = icmp eq ptr %123, null
  br i1 %tobool2.not.i, label %if.end.i157.if.end6.i_crit_edge, label %if.then3.i

if.end.i157.if.end6.i_crit_edge:                  ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #10
  call void @dma_release_channel(ptr noundef nonnull %123) #8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i157.if.end6.i_crit_edge
  %124 = ptrtoint ptr %master2 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %master2, align 4
  %dma_tx.i158 = getelementptr inbounds %struct.spi_controller, ptr %125, i32 0, i32 60
  %126 = ptrtoint ptr %dma_tx.i158 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dma_tx.i158, align 8
  %tobool8.not.i = icmp eq ptr %127, null
  br i1 %tobool8.not.i, label %if.end6.i.pic32_spi_dma_unprep.exit_crit_edge, label %if.then9.i

if.end6.i.pic32_spi_dma_unprep.exit_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pic32_spi_dma_unprep.exit

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dma_release_channel(ptr noundef nonnull %127) #8
  br label %pic32_spi_dma_unprep.exit

pic32_spi_dma_unprep.exit:                        ; preds = %if.then9.i, %if.end6.i.pic32_spi_dma_unprep.exit_crit_edge, %err_bailout.pic32_spi_dma_unprep.exit_crit_edge
  %128 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %129) #8
  call void @clk_unprepare(ptr noundef %129) #8
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %pic32_spi_dma_unprep.exit, %pic32_spi_hw_probe.exit.spi_controller_put.exit_crit_edge, %if.end16.i.spi_controller_put.exit_crit_edge, %if.end10.i.spi_controller_put.exit_crit_edge, %if.end.i.spi_controller_put.exit_crit_edge
  %ret.1 = phi i32 [ %retval.0.i, %pic32_spi_hw_probe.exit.spi_controller_put.exit_crit_edge ], [ %ret.0, %pic32_spi_dma_unprep.exit ], [ %call17.i, %if.end16.i.spi_controller_put.exit_crit_edge ], [ %call11.i, %if.end10.i.spi_controller_put.exit_crit_edge ], [ %call6.i, %if.end.i.spi_controller_put.exit_crit_edge ]
  call void @put_device(ptr noundef nonnull %call.i) #8
  br label %cleanup66

cleanup66:                                        ; preds = %spi_controller_put.exit, %if.end64, %entry.cleanup66_crit_edge
  %retval.0 = phi i32 [ %ret.1, %spi_controller_put.exit ], [ 0, %if.end64 ], [ -12, %entry.cleanup66_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pic32_spi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %regs.i = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %ctrl_clr.i = getelementptr inbounds %struct.pic32_spi_regs, ptr %3, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_clr.i, i32 10485760) #8, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #8
  %clk = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %6) #8
  tail call void @clk_unprepare(ptr noundef %6) #8
  %flags.i = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %entry.pic32_spi_dma_unprep.exit_crit_edge, label %if.end.i

entry.pic32_spi_dma_unprep.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pic32_spi_dma_unprep.exit

if.end.i:                                         ; preds = %entry
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #8
  %master.i = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master.i, align 4
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 61
  %11 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_rx.i, align 4
  %tobool2.not.i = icmp eq ptr %12, null
  br i1 %tobool2.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then3.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %12) #8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i.if.end6.i_crit_edge
  %13 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master.i, align 4
  %dma_tx.i = getelementptr inbounds %struct.spi_controller, ptr %14, i32 0, i32 60
  %15 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma_tx.i, align 8
  %tobool8.not.i = icmp eq ptr %16, null
  br i1 %tobool8.not.i, label %if.end6.i.pic32_spi_dma_unprep.exit_crit_edge, label %if.then9.i

if.end6.i.pic32_spi_dma_unprep.exit_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pic32_spi_dma_unprep.exit

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %16) #8
  br label %pic32_spi_dma_unprep.exit

pic32_spi_dma_unprep.exit:                        ; preds = %if.then9.i, %if.end6.i.pic32_spi_dma_unprep.exit_crit_edge, %entry.pic32_spi_dma_unprep.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pic32_spi_setup(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %0 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.24) #11
  br label %return

if.end:                                           ; preds = %entry
  %cs_gpio = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 13
  %2 = ptrtoint ptr %cs_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cs_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %3)
  %4 = icmp ult i32 %3, 2048
  br i1 %4, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 8
  %and = lshr i32 %6, 2
  %and.lobit = and i32 %and, 1
  %7 = xor i32 %and.lobit, 1
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %3) #8
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i, i32 noundef %7) #8
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %do.end ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pic32_spi_cleanup(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cs_gpio = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 13
  %0 = ptrtoint ptr %cs_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cs_gpio, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 8
  %and = lshr i32 %3, 2
  %and.lobit = and i32 %and, 1
  %4 = xor i32 %and.lobit, 1
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %1) #8
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i, i32 noundef %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pic32_spi_one_transfer(ptr nocapture noundef readonly %master, ptr noundef %spi, ptr nocapture noundef readonly %transfer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 8
  %2 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %land.lhs.true

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true:                                    ; preds = %entry
  %conv = zext i8 %3 to i32
  %bits_per_word3 = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %bits_per_word3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_word3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp eq i32 %5, %conv
  br i1 %cmp.not, label %land.lhs.true.if.end12_crit_edge, label %if.then

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then:                                          ; preds = %land.lhs.true
  %call6 = tail call fastcc i32 @pic32_spi_set_word_size(ptr noundef %1, i8 noundef zeroext %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bits_per_word, align 1
  %conv10 = zext i8 %7 to i32
  %8 = ptrtoint ptr %bits_per_word3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv10, ptr %bits_per_word3, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end, %land.lhs.true.if.end12_crit_edge, %entry.if.end12_crit_edge
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 12
  %9 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speed_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool13.not = icmp eq i32 %10, 0
  br i1 %tobool13.not, label %if.end12.if.end23_crit_edge, label %land.lhs.true14

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

land.lhs.true14:                                  ; preds = %if.end12
  %speed_hz16 = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %speed_hz16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %speed_hz16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp17.not = icmp eq i32 %10, %12
  br i1 %cmp17.not, label %land.lhs.true14.if.end23_crit_edge, label %if.then19

land.lhs.true14.if.end23_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then19:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  %clk.i = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %14) #8
  %mul.i = shl i32 %10, 1
  %div15.i = and i32 %10, 2147483647
  %add.i = add i32 %call.i, %div15.i
  %div2.i = udiv i32 %add.i, %mul.i
  %sub.i = add i32 %div2.i, 511
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %and.i = and i32 %sub.i, 511
  %15 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %regs.i = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %baud.i = getelementptr inbounds %struct.pic32_spi_regs, ptr %17, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %baud.i, i32 %15) #8, !srcloc !114
  %18 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %speed_hz, align 4
  %20 = ptrtoint ptr %speed_hz16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %speed_hz16, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %land.lhs.true14.if.end23_crit_edge, %if.end12.if.end23_crit_edge
  %xfer_done = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 13
  %21 = ptrtoint ptr %xfer_done to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %xfer_done, align 4
  %nents = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool24.not = icmp eq i32 %23, 0
  br i1 %tobool24.not, label %if.end23.if.else_crit_edge, label %land.lhs.true25

if.end23.if.else_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true25:                                  ; preds = %if.end23
  %nents26 = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %nents26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nents26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool27.not = icmp eq i32 %25, 0
  br i1 %tobool27.not, label %land.lhs.true25.if.else_crit_edge, label %if.then28

land.lhs.true25.if.else_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then28:                                        ; preds = %land.lhs.true25
  %master1.i = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %master1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %master1.i, align 4
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %27, i32 0, i32 61
  %28 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dma_rx.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.then28.do.end_crit_edge, label %lor.lhs.false.i

if.then28.do.end_crit_edge:                       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false.i:                                  ; preds = %if.then28
  %dma_tx.i = getelementptr inbounds %struct.spi_controller, ptr %27, i32 0, i32 60
  %30 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma_tx.i, align 8
  %tobool2.not.i = icmp eq ptr %31, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.do.end_crit_edge, label %lor.lhs.false.i.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false.i.i:                                ; preds = %lor.lhs.false.i
  %rx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 6
  %32 = ptrtoint ptr %rx_sg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_sg.i, align 4
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %29, align 4
  %tobool1.not.i.i = icmp eq ptr %35, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.do.end_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.do.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %35, i32 0, i32 39
  %36 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %37, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.do.end_crit_edge, label %dmaengine_prep_slave_sg.exit.i

lor.lhs.false2.i.i.do.end_crit_edge:              ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

dmaengine_prep_slave_sg.exit.i:                   ; preds = %lor.lhs.false2.i.i
  %call.i.i = tail call ptr %37(ptr noundef nonnull %29, ptr noundef %33, i32 noundef %23, i32 noundef 2, i32 noundef 3, ptr noundef null) #8
  %tobool5.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not.i, label %dmaengine_prep_slave_sg.exit.i.do.end_crit_edge, label %if.end7.i

dmaengine_prep_slave_sg.exit.i.do.end_crit_edge:  ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end7.i:                                        ; preds = %dmaengine_prep_slave_sg.exit.i
  %38 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dma_tx.i, align 8
  %tx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 5
  %40 = ptrtoint ptr %tx_sg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_sg.i, align 4
  %42 = ptrtoint ptr %nents26 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nents26, align 4
  %tobool.not.i51.i = icmp eq ptr %39, null
  br i1 %tobool.not.i51.i, label %if.end7.i.do.end_crit_edge, label %lor.lhs.false.i53.i

if.end7.i.do.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false.i53.i:                              ; preds = %if.end7.i
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %39, align 4
  %tobool1.not.i52.i = icmp eq ptr %45, null
  br i1 %tobool1.not.i52.i, label %lor.lhs.false.i53.i.do.end_crit_edge, label %lor.lhs.false2.i56.i

lor.lhs.false.i53.i.do.end_crit_edge:             ; preds = %lor.lhs.false.i53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false2.i56.i:                             ; preds = %lor.lhs.false.i53.i
  %device_prep_slave_sg.i54.i = getelementptr inbounds %struct.dma_device, ptr %45, i32 0, i32 39
  %46 = ptrtoint ptr %device_prep_slave_sg.i54.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device_prep_slave_sg.i54.i, align 4
  %tobool4.not.i55.i = icmp eq ptr %47, null
  br i1 %tobool4.not.i55.i, label %lor.lhs.false2.i56.i.do.end_crit_edge, label %dmaengine_prep_slave_sg.exit60.i

lor.lhs.false2.i56.i.do.end_crit_edge:            ; preds = %lor.lhs.false2.i56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

dmaengine_prep_slave_sg.exit60.i:                 ; preds = %lor.lhs.false2.i56.i
  %call.i57.i = tail call ptr %47(ptr noundef nonnull %39, ptr noundef %41, i32 noundef %43, i32 noundef 1, i32 noundef 3, ptr noundef null) #8
  %tobool13.not.i = icmp eq ptr %call.i57.i, null
  br i1 %tobool13.not.i, label %dmaengine_prep_slave_sg.exit60.i.do.end_crit_edge, label %if.end15.i

dmaengine_prep_slave_sg.exit60.i.do.end_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end15.i:                                       ; preds = %dmaengine_prep_slave_sg.exit60.i
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 6
  %48 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @pic32_spi_dma_rx_notify, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 8
  %49 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %1, ptr %callback_param.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 4
  %50 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i61.i = tail call i32 %51(ptr noundef nonnull %call.i.i) #8
  %52 = tail call i32 @llvm.smin.i32(i32 %call.i61.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i61.i)
  %tobool18.not.i = icmp sgt i32 %call.i61.i, -1
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end15.i.pic32_spi_dma_transfer.exit_crit_edge

if.end15.i.pic32_spi_dma_transfer.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pic32_spi_dma_transfer.exit

if.end20.i:                                       ; preds = %if.end15.i
  %tx_submit.i62.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i57.i, i32 0, i32 4
  %53 = ptrtoint ptr %tx_submit.i62.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tx_submit.i62.i, align 4
  %call.i63.i = tail call i32 %54(ptr noundef nonnull %call.i57.i) #8
  %55 = tail call i32 @llvm.smin.i32(i32 %call.i63.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i63.i)
  %tobool23.not.i = icmp sgt i32 %call.i63.i, -1
  %56 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dma_rx.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  br i1 %tobool23.not.i, label %pic32_spi_dma_transfer.exit.thread109, label %err_dma_tx.i

pic32_spi_dma_transfer.exit.thread109:            ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %59, i32 0, i32 50
  %60 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device_issue_pending.i.i, align 4
  tail call void %61(ptr noundef %57) #8
  %62 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dma_tx.i, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %device_issue_pending.i64.i = getelementptr inbounds %struct.dma_device, ptr %65, i32 0, i32 50
  %66 = ptrtoint ptr %device_issue_pending.i64.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %device_issue_pending.i64.i, align 4
  tail call void %67(ptr noundef %63) #8
  br label %if.end39

err_dma_tx.i:                                     ; preds = %if.end20.i
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %59, i32 0, i32 47
  %68 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i65.i = icmp eq ptr %69, null
  br i1 %tobool.not.i65.i, label %err_dma_tx.i.pic32_spi_dma_transfer.exit_crit_edge, label %if.then.i.i

err_dma_tx.i.pic32_spi_dma_transfer.exit_crit_edge: ; preds = %err_dma_tx.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pic32_spi_dma_transfer.exit

if.then.i.i:                                      ; preds = %err_dma_tx.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i66.i = tail call i32 %69(ptr noundef %57) #8
  br label %pic32_spi_dma_transfer.exit

pic32_spi_dma_transfer.exit:                      ; preds = %if.then.i.i, %err_dma_tx.i.pic32_spi_dma_transfer.exit_crit_edge, %if.end15.i.pic32_spi_dma_transfer.exit_crit_edge
  %retval.0.i = phi i32 [ %52, %if.end15.i.pic32_spi_dma_transfer.exit_crit_edge ], [ %55, %err_dma_tx.i.pic32_spi_dma_transfer.exit_crit_edge ], [ %55, %if.then.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool30.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool30.not, label %pic32_spi_dma_transfer.exit.if.end39_crit_edge, label %pic32_spi_dma_transfer.exit.do.end_crit_edge

pic32_spi_dma_transfer.exit.do.end_crit_edge:     ; preds = %pic32_spi_dma_transfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

pic32_spi_dma_transfer.exit.if.end39_crit_edge:   ; preds = %pic32_spi_dma_transfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

do.end:                                           ; preds = %pic32_spi_dma_transfer.exit.do.end_crit_edge, %dmaengine_prep_slave_sg.exit60.i.do.end_crit_edge, %lor.lhs.false2.i56.i.do.end_crit_edge, %lor.lhs.false.i53.i.do.end_crit_edge, %if.end7.i.do.end_crit_edge, %dmaengine_prep_slave_sg.exit.i.do.end_crit_edge, %lor.lhs.false2.i.i.do.end_crit_edge, %lor.lhs.false.i.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %if.then28.do.end_crit_edge
  %retval.0.i108 = phi i32 [ %retval.0.i, %pic32_spi_dma_transfer.exit.do.end_crit_edge ], [ -22, %if.end7.i.do.end_crit_edge ], [ -22, %lor.lhs.false.i53.i.do.end_crit_edge ], [ -22, %lor.lhs.false2.i56.i.do.end_crit_edge ], [ -22, %lor.lhs.false.i.i.do.end_crit_edge ], [ -22, %lor.lhs.false2.i.i.do.end_crit_edge ], [ -22, %dmaengine_prep_slave_sg.exit60.i.do.end_crit_edge ], [ -22, %dmaengine_prep_slave_sg.exit.i.do.end_crit_edge ], [ -19, %if.then28.do.end_crit_edge ], [ -19, %lor.lhs.false.i.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.26) #11
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true25.if.else_crit_edge, %if.end23.if.else_crit_edge
  %70 = ptrtoint ptr %transfer to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %transfer, align 4
  %tx = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 14
  %72 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %tx, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 1
  %73 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rx_buf, align 4
  %rx = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 16
  %75 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %rx, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 2
  %76 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len, align 4
  %add.ptr = getelementptr i8, ptr %71, i32 %77
  %tx_end = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 15
  %78 = ptrtoint ptr %tx_end to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %add.ptr, ptr %tx_end, align 4
  %79 = load i32, ptr %len, align 4
  %add.ptr36 = getelementptr i8, ptr %74, i32 %79
  %rx_end = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 17
  %80 = ptrtoint ptr %rx_end to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %add.ptr36, ptr %rx_end, align 4
  %81 = load i32, ptr %len, align 4
  %len38 = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 18
  %82 = ptrtoint ptr %len38 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %len38, align 4
  %fault_irq = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 2
  %83 = ptrtoint ptr %fault_irq to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %fault_irq, align 4
  tail call void @enable_irq(i32 noundef %84) #8
  %rx_irq = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 3
  %85 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rx_irq, align 4
  tail call void @enable_irq(i32 noundef %86) #8
  %tx_irq = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 4
  %87 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tx_irq, align 4
  tail call void @enable_irq(i32 noundef %88) #8
  br label %if.end39

if.end39:                                         ; preds = %if.else, %pic32_spi_dma_transfer.exit.if.end39_crit_edge, %pic32_spi_dma_transfer.exit.thread109
  %dma_issued.0.off0 = phi i1 [ false, %if.else ], [ true, %pic32_spi_dma_transfer.exit.if.end39_crit_edge ], [ true, %pic32_spi_dma_transfer.exit.thread109 ]
  %call41 = tail call i32 @wait_for_completion_timeout(ptr noundef %xfer_done, i32 noundef 200) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %do.end47, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end47:                                         ; preds = %if.end39
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.29) #11
  br i1 %dma_issued.0.off0, label %if.then50, label %do.end47.cleanup_crit_edge

do.end47.cleanup_crit_edge:                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then50:                                        ; preds = %do.end47
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 61
  %89 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dma_rx, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %92, i32 0, i32 47
  %93 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i99 = icmp eq ptr %94, null
  br i1 %tobool.not.i99, label %if.then50.dmaengine_terminate_all.exit_crit_edge, label %if.then.i

if.then50.dmaengine_terminate_all.exit_crit_edge: ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %call.i100 = tail call i32 %94(ptr noundef %90) #8
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %if.then50.dmaengine_terminate_all.exit_crit_edge
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 60
  %95 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dma_tx, align 8
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %device_terminate_all.i101 = getelementptr inbounds %struct.dma_device, ptr %98, i32 0, i32 47
  %99 = ptrtoint ptr %device_terminate_all.i101 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %device_terminate_all.i101, align 4
  %tobool.not.i102 = icmp eq ptr %100, null
  br i1 %tobool.not.i102, label %dmaengine_terminate_all.exit.cleanup_crit_edge, label %if.then.i104

dmaengine_terminate_all.exit.cleanup_crit_edge:   ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i104:                                     ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i103 = tail call i32 %100(ptr noundef %96) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i104, %dmaengine_terminate_all.exit.cleanup_crit_edge, %do.end47.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i108, %do.end ], [ %call6, %if.then.cleanup_crit_edge ], [ -110, %do.end47.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ], [ -110, %dmaengine_terminate_all.exit.cleanup_crit_edge ], [ -110, %if.then.i104 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pic32_spi_prepare_message(ptr nocapture noundef readonly %master, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi1, align 4
  %bits_per_word = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_word, align 4
  %bits_per_word2 = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %bits_per_word2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bits_per_word2, align 1
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp eq i32 %5, %conv
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call fastcc i32 @pic32_spi_set_word_size(ptr noundef %1, i8 noundef zeroext %7)
  %8 = ptrtoint ptr %bits_per_word2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bits_per_word2, align 1
  %conv7 = zext i8 %9 to i32
  %10 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv7, ptr %bits_per_word, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %speed_hz = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %speed_hz, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp9.not = icmp eq i32 %12, %14
  br i1 %cmp9.not, label %if.end.if.end15_crit_edge, label %if.then11

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %clk.i = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %16) #8
  %mul.i = shl i32 %14, 1
  %div15.i = and i32 %14, 2147483647
  %add.i = add i32 %call.i, %div15.i
  %div2.i = udiv i32 %add.i, %mul.i
  %sub.i = add i32 %div2.i, 511
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %and.i = and i32 %sub.i, 511
  %17 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %regs.i = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %baud.i = getelementptr inbounds %struct.pic32_spi_regs, ptr %19, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %baud.i, i32 %17) #8, !srcloc !114
  %20 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_speed_hz, align 8
  %22 = ptrtoint ptr %speed_hz to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %speed_hz, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end.if.end15_crit_edge
  %mode = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode, align 4
  %mode16 = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 7
  %25 = ptrtoint ptr %mode16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode16, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp17.not = icmp eq i32 %24, %26
  br i1 %cmp17.not, label %if.end15.if.end39_crit_edge, label %if.then19

if.end15.if.end39_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %regs = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %30 = ptrtoint ptr %mode16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mode16, align 8
  %and = shl i32 %31, 5
  %32 = and i32 %and, 64
  %and27 = shl i32 %31, 8
  %33 = and i32 %and27, 256
  %34 = and i32 %29, -1073938433
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %and30.masked = or i32 %32, %35
  %36 = or i32 %and30.masked, %33
  %or34 = xor i32 %36, 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %37 = tail call i32 @llvm.bswap.i32(i32 %or34)
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #8, !srcloc !114
  %40 = ptrtoint ptr %mode16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mode16, align 8
  %42 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %mode, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then19, %if.end15.if.end39_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pic32_spi_unprepare_message(ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %msg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pic32_spi_prepare_hardware(ptr nocapture noundef readonly %master) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @arm_heavy_mb() #8
  %regs.i = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %ctrl_set.i = getelementptr inbounds %struct.pic32_spi_regs, ptr %3, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_set.i, i32 10485760) #8, !srcloc !114
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pic32_spi_unprepare_hardware(ptr nocapture noundef readonly %master) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %regs.i = getelementptr inbounds %struct.pic32_spi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %ctrl_clr.i = getelementptr inbounds %struct.pic32_spi_regs, ptr %3, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_clr.i, i32 10485760) #8, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @pic32_spi_can_dma(ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %spi, ptr nocapture noundef readonly %xfer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %1)
  %cmp = icmp ugt i32 %1, 63
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %flags = getelementptr inbounds %struct.pic32_spi, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool = icmp ne i32 %and1.i, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %6 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool, %land.rhs ]
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pic32_spi_fault_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.pic32_spi, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %status1 = getelementptr inbounds %struct.pic32_spi_regs, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status1) #8, !srcloc !115
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %and = and i32 %3, 320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %status_clr = getelementptr inbounds %struct.pic32_spi_regs, ptr %5, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %status_clr, i32 1073741824) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %status_clr8 = getelementptr inbounds %struct.pic32_spi_regs, ptr %7, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %status_clr8, i32 65536) #8, !srcloc !114
  %fault_irq.i = getelementptr inbounds %struct.pic32_spi, ptr %dev_id, i32 0, i32 2
  %8 = ptrtoint ptr %fault_irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fault_irq.i, align 4
  tail call void @disable_irq_nosync(i32 noundef %9) #8
  %rx_irq.i = getelementptr inbounds %struct.pic32_spi, ptr %dev_id, i32 0, i32 3
  %10 = ptrtoint ptr %rx_irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_irq.i, align 4
  tail call void @disable_irq_nosync(i32 noundef %11) #8
  %tx_irq.i = getelementptr inbounds %struct.pic32_spi, ptr %dev_id, i32 0, i32 4
  %12 = ptrtoint ptr %tx_irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_irq.i, align 4
  tail call void @disable_irq_nosync(i32 noundef %13) #8
  %master.i = getelementptr inbounds %struct.pic32_spi, ptr %dev_id, i32 0, i32 7
  %14 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.45) #11
  %16 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %master.i, align 4
  %cur_msg.i = getelementptr inbounds %struct.spi_controller, ptr %17, i32 0, i32 31
  %18 = ptrtoint ptr %cur_msg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cur_msg.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %do.body.cleanup.sink.split_crit_edge, label %do.body.cleanup.sink.split.sink.split_crit_edge

do.body.cleanup.sink.split.sink.split_crit_edge:  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %and9 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end
  %fault_irq.i24 = getelementptr inbounds %struct.pic32_spi, ptr %dev_id, i32 0, i32 2
  %20 = ptrtoint ptr %fault_irq.i24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fault_irq.i24, align 4
  tail call void @disable_irq_nosync(i32 noundef %21) #8
  %rx_irq.i25 = getelementptr inbounds %struct.pic32_spi, ptr %dev_id, i32 0, i32 3
  %22 = ptrtoint ptr %rx_irq.i25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_irq.i25, align 4
  tail call void @disable_irq_nosync(i32 noundef %23) #8
  %tx_irq.i26 = getelementptr inbounds %struct.pic32_spi, ptr %dev_id, i32 0, i32 4
  %24 = ptrtoint ptr %tx_irq.i26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_irq.i26, align 4
  tail call void @disable_irq_nosync(i32 noundef %25) #8
  %master.i27 = getelementptr inbounds %struct.pic32_spi, ptr %dev_id, i32 0, i32 7
  %26 = ptrtoint ptr %master.i27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %master.i27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46) #11
  %28 = ptrtoint ptr %master.i27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %master.i27, align 4
  %cur_msg.i28 = getelementptr inbounds %struct.spi_controller, ptr %29, i32 0, i32 31
  %30 = ptrtoint ptr %cur_msg.i28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cur_msg.i28, align 4
  %tobool.not.i29 = icmp eq ptr %31, null
  br i1 %tobool.not.i29, label %if.then11.cleanup.sink.split_crit_edge, label %if.then11.cleanup.sink.split.sink.split_crit_edge

if.then11.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split

if.then11.cleanup.sink.split_crit_edge:           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.end
  %master = getelementptr inbounds %struct.pic32_spi, ptr %dev_id, i32 0, i32 7
  %32 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %master, align 4
  %cur_msg = getelementptr inbounds %struct.spi_controller, ptr %33, i32 0, i32 31
  %34 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cur_msg, align 4
  %tobool13.not = icmp eq ptr %35, null
  br i1 %tobool13.not, label %if.then14, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then14:                                        ; preds = %if.end12
  %fault_irq.i34 = getelementptr inbounds %struct.pic32_spi, ptr %dev_id, i32 0, i32 2
  %36 = ptrtoint ptr %fault_irq.i34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fault_irq.i34, align 4
  tail call void @disable_irq_nosync(i32 noundef %37) #8
  %rx_irq.i35 = getelementptr inbounds %struct.pic32_spi, ptr %dev_id, i32 0, i32 3
  %38 = ptrtoint ptr %rx_irq.i35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_irq.i35, align 4
  tail call void @disable_irq_nosync(i32 noundef %39) #8
  %tx_irq.i36 = getelementptr inbounds %struct.pic32_spi, ptr %dev_id, i32 0, i32 4
  %40 = ptrtoint ptr %tx_irq.i36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_irq.i36, align 4
  tail call void @disable_irq_nosync(i32 noundef %41) #8
  %42 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %master, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47) #11
  %44 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %master, align 4
  %cur_msg.i38 = getelementptr inbounds %struct.spi_controller, ptr %45, i32 0, i32 31
  %46 = ptrtoint ptr %cur_msg.i38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur_msg.i38, align 4
  %tobool.not.i39 = icmp eq ptr %47, null
  br i1 %tobool.not.i39, label %if.then14.cleanup.sink.split_crit_edge, label %if.then14.cleanup.sink.split.sink.split_crit_edge

if.then14.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split

if.then14.cleanup.sink.split_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.then14.cleanup.sink.split.sink.split_crit_edge, %if.then11.cleanup.sink.split.sink.split_crit_edge, %do.body.cleanup.sink.split.sink.split_crit_edge
  %.sink = phi ptr [ %19, %do.body.cleanup.sink.split.sink.split_crit_edge ], [ %31, %if.then11.cleanup.sink.split.sink.split_crit_edge ], [ %47, %if.then14.cleanup.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph = phi i32 [ 1, %do.body.cleanup.sink.split.sink.split_crit_edge ], [ 1, %if.then11.cleanup.sink.split.sink.split_crit_edge ], [ 0, %if.then14.cleanup.sink.split.sink.split_crit_edge ]
  %status.i40 = getelementptr inbounds %struct.spi_message, ptr %.sink, i32 0, i32 7
  %48 = ptrtoint ptr %status.i40 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -5, ptr %status.i40, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.then14.cleanup.sink.split_crit_edge, %if.then11.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 1, %do.body.cleanup.sink.split_crit_edge ], [ 1, %if.then11.cleanup.sink.split_crit_edge ], [ 0, %if.then14.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  %xfer_done.i42 = getelementptr inbounds %struct.pic32_spi, ptr %dev_id, i32 0, i32 13
  tail call void @complete(ptr noundef %xfer_done.i42) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pic32_spi_rx_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_fifo = getelementptr inbounds %struct.pic32_spi, ptr %dev_id, i32 0, i32 19
  %0 = ptrtoint ptr %rx_fifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_fifo, align 4
  tail call void %1(ptr noundef %dev_id) #8
  %rx_end = getelementptr inbounds %struct.pic32_spi, ptr %dev_id, i32 0, i32 17
  %2 = ptrtoint ptr %rx_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_end, align 4
  %rx = getelementptr inbounds %struct.pic32_spi, ptr %dev_id, i32 0, i32 16
  %4 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx, align 4
  %cmp = icmp eq ptr %3, %5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fault_irq = getelementptr inbounds %struct.pic32_spi, ptr %dev_id, i32 0, i32 2
  %6 = ptrtoint ptr %fault_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fault_irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %7) #8
  %rx_irq = getelementptr inbounds %struct.pic32_spi, ptr %dev_id, i32 0, i32 3
  %8 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %9) #8
  %xfer_done = getelementptr inbounds %struct.pic32_spi, ptr %dev_id, i32 0, i32 13
  tail call void @complete(ptr noundef %xfer_done) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pic32_spi_tx_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_fifo = getelementptr inbounds %struct.pic32_spi, ptr %dev_id, i32 0, i32 20
  %0 = ptrtoint ptr %tx_fifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_fifo, align 4
  tail call void %1(ptr noundef %dev_id) #8
  %tx_end = getelementptr inbounds %struct.pic32_spi, ptr %dev_id, i32 0, i32 15
  %2 = ptrtoint ptr %tx_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_end, align 4
  %tx = getelementptr inbounds %struct.pic32_spi, ptr %dev_id, i32 0, i32 14
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx, align 4
  %cmp = icmp eq ptr %3, %5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tx_irq = getelementptr inbounds %struct.pic32_spi, ptr %dev_id, i32 0, i32 4
  %6 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %7) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pic32_spi_set_word_size(ptr noundef %pic32s, i8 noundef zeroext %bits_per_word) unnamed_addr #2 align 64 {
entry:
  %cfg.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %bits_per_word to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %bits_per_word, label %entry.cleanup_crit_edge [
    i8 8, label %entry.sw.epilog_crit_edge
    i8 16, label %sw.bb1
    i8 32, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb1, %entry.sw.epilog_crit_edge
  %pic32_spi_rx_dword.sink = phi ptr [ @pic32_spi_rx_dword, %sw.bb4 ], [ @pic32_spi_rx_word, %sw.bb1 ], [ @pic32_spi_rx_byte, %entry.sw.epilog_crit_edge ]
  %pic32_spi_tx_dword.sink = phi ptr [ @pic32_spi_tx_dword, %sw.bb4 ], [ @pic32_spi_tx_word, %sw.bb1 ], [ @pic32_spi_tx_byte, %entry.sw.epilog_crit_edge ]
  %buswidth.0 = phi i32 [ 2048, %sw.bb4 ], [ 1024, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %dmawidth.0 = phi i32 [ 4, %sw.bb4 ], [ 2, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ]
  %rx_fifo5 = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 19
  %1 = ptrtoint ptr %rx_fifo5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pic32_spi_rx_dword.sink, ptr %rx_fifo5, align 4
  %tx_fifo6 = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 20
  %2 = ptrtoint ptr %tx_fifo6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pic32_spi_tx_dword.sink, ptr %tx_fifo6, align 4
  %fifo_n_byte = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 5
  %3 = ptrtoint ptr %fifo_n_byte to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fifo_n_byte, align 4
  %5 = lshr i8 %bits_per_word, 3
  %div = zext i8 %5 to i32
  %add = add nsw i32 %div, -1
  %sub = add i32 %add, %4
  %div10 = udiv i32 %sub, %div
  %fifo_n_elm = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 11
  %6 = ptrtoint ptr %fifo_n_elm to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div10, ptr %fifo_n_elm, align 4
  %regs = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 1
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  %10 = and i32 %9, -786433
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %or = or i32 %11, %buswidth.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #8, !srcloc !114
  %flags = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 12
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.then

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %sw.epilog
  %master1.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 7
  %17 = ptrtoint ptr %master1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %master1.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg.i) #8
  %19 = getelementptr inbounds i8, ptr %cfg.i, i32 28
  %20 = call ptr @memset(ptr %19, i32 0, i32 20)
  %device_fc.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 9
  %21 = ptrtoint ptr %device_fc.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %device_fc.i, align 4
  %22 = ptrtoint ptr %pic32s to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pic32s, align 4
  %add.i = add i32 %23, 32
  %src_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 1
  %24 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add.i, ptr %src_addr.i, align 4
  %dst_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 2
  %25 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i, ptr %dst_addr.i, align 4
  %26 = ptrtoint ptr %fifo_n_elm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fifo_n_elm, align 4
  %div30.i = lshr i32 %27, 1
  %src_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 5
  %28 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div30.i, ptr %src_maxburst.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 6
  %29 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div30.i, ptr %dst_maxburst.i, align 4
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 3
  %30 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %dmawidth.0, ptr %src_addr_width.i, align 4
  %dst_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 4
  %31 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %dmawidth.0, ptr %dst_addr_width.i, align 4
  %32 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %cfg.i, align 4
  %dma_tx.i = getelementptr inbounds %struct.spi_controller, ptr %18, i32 0, i32 60
  %33 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma_tx.i, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %36, i32 0, i32 44
  %37 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.then.cleanup.sink.split.i_crit_edge, label %dmaengine_slave_config.exit.i

if.then.cleanup.sink.split.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

dmaengine_slave_config.exit.i:                    ; preds = %if.then
  %call.i.i = call i32 %38(ptr noundef %34, ptr noundef nonnull %cfg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_slave_config.exit.i.cleanup.sink.split.i_crit_edge

dmaengine_slave_config.exit.i.cleanup.sink.split.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %dmaengine_slave_config.exit.i
  %39 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %cfg.i, align 4
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %18, i32 0, i32 61
  %40 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dma_rx.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %device_config.i32.i = getelementptr inbounds %struct.dma_device, ptr %43, i32 0, i32 44
  %44 = ptrtoint ptr %device_config.i32.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device_config.i32.i, align 4
  %tobool.not.i33.i = icmp eq ptr %45, null
  br i1 %tobool.not.i33.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %dmaengine_slave_config.exit37.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

dmaengine_slave_config.exit37.i:                  ; preds = %if.end.i
  %call.i34.i = call i32 %45(ptr noundef %41, ptr noundef nonnull %cfg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i)
  %tobool8.not.i = icmp eq i32 %call.i34.i, 0
  br i1 %tobool8.not.i, label %dmaengine_slave_config.exit37.i.pic32_spi_dma_config.exit_crit_edge, label %dmaengine_slave_config.exit37.i.cleanup.sink.split.i_crit_edge

dmaengine_slave_config.exit37.i.cleanup.sink.split.i_crit_edge: ; preds = %dmaengine_slave_config.exit37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

dmaengine_slave_config.exit37.i.pic32_spi_dma_config.exit_crit_edge: ; preds = %dmaengine_slave_config.exit37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pic32_spi_dma_config.exit

cleanup.sink.split.i:                             ; preds = %dmaengine_slave_config.exit37.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge, %dmaengine_slave_config.exit.i.cleanup.sink.split.i_crit_edge, %if.then.cleanup.sink.split.i_crit_edge
  %.str.34.sink.i = phi ptr [ @.str.31, %if.then.cleanup.sink.split.i_crit_edge ], [ @.str.31, %dmaengine_slave_config.exit.i.cleanup.sink.split.i_crit_edge ], [ @.str.34, %if.end.i.cleanup.sink.split.i_crit_edge ], [ @.str.34, %dmaengine_slave_config.exit37.i.cleanup.sink.split.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull %.str.34.sink.i) #11
  br label %pic32_spi_dma_config.exit

pic32_spi_dma_config.exit:                        ; preds = %cleanup.sink.split.i, %dmaengine_slave_config.exit37.i.pic32_spi_dma_config.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i) #8
  br label %cleanup

cleanup:                                          ; preds = %pic32_spi_dma_config.exit, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %pic32_spi_dma_config.exit ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pic32_spi_rx_byte(ptr nocapture noundef %pic32s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_end.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 17
  %0 = ptrtoint ptr %rx_end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_end.i, align 4
  %rx.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 16
  %2 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %regs.i.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %status.i.i = getelementptr inbounds %struct.pic32_spi_regs, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status.i.i) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %and.i.i = and i32 %6, 31
  %7 = tail call i32 @llvm.umin.i32(i32 %sub.ptr.sub.i, i32 %and.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not12 = icmp eq i32 %7, 0
  br i1 %tobool.not12, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %len = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %mx.013 = phi i32 [ %7, %for.body.lr.ph ], [ %dec, %if.end.for.body_crit_edge ]
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %buf = getelementptr inbounds %struct.pic32_spi_regs, ptr %9, i32 0, i32 8
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %buf) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %11 = ptrtoint ptr %rx_end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_end.i, align 4
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %idx.neg = sub i32 0, %14
  %add.ptr = getelementptr i8, ptr %12, i32 %idx.neg
  %tobool3.not = icmp eq ptr %add.ptr, null
  br i1 %tobool3.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %10, ptr %16, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %18 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx.i, align 4
  %add.ptr5 = getelementptr i8, ptr %19, i32 1
  store ptr %add.ptr5, ptr %rx.i, align 4
  %dec = add nsw i32 %mx.013, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pic32_spi_tx_byte(ptr nocapture noundef %pic32s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_end.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 15
  %0 = ptrtoint ptr %tx_end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_end.i, align 4
  %tx.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 14
  %2 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %fifo_n_elm.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 11
  %4 = ptrtoint ptr %fifo_n_elm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fifo_n_elm.i, align 4
  %regs.i.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %status.i.i = getelementptr inbounds %struct.pic32_spi_regs, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status.i.i) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  %9 = lshr i32 %8, 8
  %and.i.i = and i32 %9, 31
  %sub.i = sub i32 %5, %and.i.i
  %rx_end.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 17
  %10 = ptrtoint ptr %rx_end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_end.i, align 4
  %rx.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 16
  %12 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx.i, align 4
  %sub.ptr.lhs.cast1.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast2.i = ptrtoint ptr %13 to i32
  %14 = ptrtoint ptr %tx_end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_end.i, align 4
  %16 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx.i, align 4
  %sub.ptr.lhs.cast6.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast7.i = ptrtoint ptr %17 to i32
  %18 = tail call i32 @llvm.umin.i32(i32 %sub.ptr.sub.i, i32 %sub.i) #8
  %19 = ptrtoint ptr %fifo_n_elm.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fifo_n_elm.i, align 4
  %21 = add i32 %sub.ptr.rhs.cast2.i, %sub.ptr.lhs.cast6.i
  %22 = add i32 %sub.ptr.lhs.cast1.i, %sub.ptr.rhs.cast7.i
  %sub9.i.neg = sub i32 %21, %22
  %sub12.i = add i32 %sub9.i.neg, %20
  %23 = tail call i32 @llvm.umin.i32(i32 %18, i32 %sub12.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not10 = icmp eq i32 %23, 0
  br i1 %tobool.not10, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %len = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %do.body.for.body_crit_edge, %for.body.lr.ph
  %mx.011 = phi i32 [ %23, %for.body.lr.ph ], [ %dec, %do.body.for.body_crit_edge ]
  %24 = ptrtoint ptr %tx_end.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_end.i, align 4
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %idx.neg = sub i32 0, %27
  %add.ptr = getelementptr i8, ptr %25, i32 %idx.neg
  %tobool1.not = icmp eq ptr %add.ptr, null
  br i1 %tobool1.not, label %for.body.do.body_crit_edge, label %if.then

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  br label %do.body

do.body:                                          ; preds = %if.then, %for.body.do.body_crit_edge
  %v.0 = phi i8 [ %31, %if.then ], [ -1, %for.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i, align 4
  %buf = getelementptr inbounds %struct.pic32_spi_regs, ptr %33, i32 0, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %buf, i8 %v.0) #8, !srcloc !133
  %34 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx.i, align 4
  %add.ptr3 = getelementptr i8, ptr %35, i32 1
  store ptr %add.ptr3, ptr %tx.i, align 4
  %dec = add i32 %mx.011, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.body.for.end_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pic32_spi_rx_word(ptr nocapture noundef %pic32s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_end.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 17
  %0 = ptrtoint ptr %rx_end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_end.i, align 4
  %rx.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 16
  %2 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %div.i = sdiv i32 %sub.ptr.sub.i, 2
  %regs.i.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %status.i.i = getelementptr inbounds %struct.pic32_spi_regs, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status.i.i) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %and.i.i = and i32 %6, 31
  %7 = tail call i32 @llvm.umin.i32(i32 %div.i, i32 %and.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not12 = icmp eq i32 %7, 0
  br i1 %tobool.not12, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %len = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %mx.013 = phi i32 [ %7, %for.body.lr.ph ], [ %dec, %if.end.for.body_crit_edge ]
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %buf = getelementptr inbounds %struct.pic32_spi_regs, ptr %9, i32 0, i32 8
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %buf) #8, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  %11 = ptrtoint ptr %rx_end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_end.i, align 4
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %idx.neg = sub i32 0, %14
  %add.ptr = getelementptr i8, ptr %12, i32 %idx.neg
  %tobool3.not = icmp eq ptr %add.ptr, null
  br i1 %tobool3.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %15 = tail call i16 @llvm.bswap.i16(i16 %10)
  %16 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %15, ptr %17, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %19 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx.i, align 4
  %add.ptr5 = getelementptr i8, ptr %20, i32 2
  store ptr %add.ptr5, ptr %rx.i, align 4
  %dec = add nsw i32 %mx.013, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pic32_spi_tx_word(ptr nocapture noundef %pic32s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_end.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 15
  %0 = ptrtoint ptr %tx_end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_end.i, align 4
  %tx.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 14
  %2 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %div.i = sdiv i32 %sub.ptr.sub.i, 2
  %fifo_n_elm.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 11
  %4 = ptrtoint ptr %fifo_n_elm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fifo_n_elm.i, align 4
  %regs.i.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %status.i.i = getelementptr inbounds %struct.pic32_spi_regs, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status.i.i) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  %9 = lshr i32 %8, 8
  %and.i.i = and i32 %9, 31
  %sub.i = sub i32 %5, %and.i.i
  %rx_end.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 17
  %10 = ptrtoint ptr %rx_end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_end.i, align 4
  %rx.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 16
  %12 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx.i, align 4
  %sub.ptr.lhs.cast1.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast2.i = ptrtoint ptr %13 to i32
  %14 = ptrtoint ptr %tx_end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_end.i, align 4
  %16 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx.i, align 4
  %sub.ptr.lhs.cast6.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast7.i = ptrtoint ptr %17 to i32
  %18 = add i32 %sub.ptr.rhs.cast2.i, %sub.ptr.lhs.cast6.i
  %sub.ptr.sub3.i = sub i32 %sub.ptr.lhs.cast1.i, %18
  %sub9.i = add i32 %sub.ptr.sub3.i, %sub.ptr.rhs.cast7.i
  %div10.i.neg = sdiv i32 %sub9.i, -2
  %19 = tail call i32 @llvm.umin.i32(i32 %div.i, i32 %sub.i) #8
  %20 = ptrtoint ptr %fifo_n_elm.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fifo_n_elm.i, align 4
  %sub12.i = add i32 %div10.i.neg, %21
  %22 = tail call i32 @llvm.umin.i32(i32 %19, i32 %sub12.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not10 = icmp eq i32 %22, 0
  br i1 %tobool.not10, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %len = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %do.body.for.body_crit_edge, %for.body.lr.ph
  %mx.011 = phi i32 [ %22, %for.body.lr.ph ], [ %dec, %do.body.for.body_crit_edge ]
  %23 = ptrtoint ptr %tx_end.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_end.i, align 4
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %idx.neg = sub i32 0, %26
  %add.ptr = getelementptr i8, ptr %24, i32 %idx.neg
  %tobool1.not = icmp eq ptr %add.ptr, null
  br i1 %tobool1.not, label %for.body.do.body_crit_edge, label %if.then

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tx.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %28, align 2
  br label %do.body

do.body:                                          ; preds = %if.then, %for.body.do.body_crit_edge
  %v.0 = phi i16 [ %30, %if.then ], [ -1, %for.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  tail call void @arm_heavy_mb() #8
  %31 = tail call i16 @llvm.bswap.i16(i16 %v.0)
  %32 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i, align 4
  %buf = getelementptr inbounds %struct.pic32_spi_regs, ptr %33, i32 0, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %buf, i16 %31) #8, !srcloc !137
  %34 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx.i, align 4
  %add.ptr3 = getelementptr i8, ptr %35, i32 2
  store ptr %add.ptr3, ptr %tx.i, align 4
  %dec = add i32 %mx.011, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.body.for.end_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pic32_spi_rx_dword(ptr nocapture noundef %pic32s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_end.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 17
  %0 = ptrtoint ptr %rx_end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_end.i, align 4
  %rx.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 16
  %2 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %div.i = sdiv i32 %sub.ptr.sub.i, 4
  %regs.i.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %status.i.i = getelementptr inbounds %struct.pic32_spi_regs, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status.i.i) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %and.i.i = and i32 %6, 31
  %7 = tail call i32 @llvm.umin.i32(i32 %div.i, i32 %and.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not12 = icmp eq i32 %7, 0
  br i1 %tobool.not12, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %len = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %mx.013 = phi i32 [ %7, %for.body.lr.ph ], [ %dec, %if.end.for.body_crit_edge ]
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %buf = getelementptr inbounds %struct.pic32_spi_regs, ptr %9, i32 0, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %buf) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %11 = ptrtoint ptr %rx_end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_end.i, align 4
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %idx.neg = sub i32 0, %14
  %add.ptr = getelementptr i8, ptr %12, i32 %idx.neg
  %tobool3.not = icmp eq ptr %add.ptr, null
  br i1 %tobool3.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %15 = tail call i32 @llvm.bswap.i32(i32 %10)
  %16 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %17, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %19 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx.i, align 4
  %add.ptr5 = getelementptr i8, ptr %20, i32 4
  store ptr %add.ptr5, ptr %rx.i, align 4
  %dec = add nsw i32 %mx.013, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pic32_spi_tx_dword(ptr nocapture noundef %pic32s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_end.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 15
  %0 = ptrtoint ptr %tx_end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_end.i, align 4
  %tx.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 14
  %2 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %div.i = sdiv i32 %sub.ptr.sub.i, 4
  %fifo_n_elm.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 11
  %4 = ptrtoint ptr %fifo_n_elm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fifo_n_elm.i, align 4
  %regs.i.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %status.i.i = getelementptr inbounds %struct.pic32_spi_regs, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status.i.i) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  %9 = lshr i32 %8, 8
  %and.i.i = and i32 %9, 31
  %sub.i = sub i32 %5, %and.i.i
  %rx_end.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 17
  %10 = ptrtoint ptr %rx_end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_end.i, align 4
  %rx.i = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 16
  %12 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx.i, align 4
  %sub.ptr.lhs.cast1.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast2.i = ptrtoint ptr %13 to i32
  %14 = ptrtoint ptr %tx_end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_end.i, align 4
  %16 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx.i, align 4
  %sub.ptr.lhs.cast6.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast7.i = ptrtoint ptr %17 to i32
  %18 = add i32 %sub.ptr.rhs.cast2.i, %sub.ptr.lhs.cast6.i
  %sub.ptr.sub3.i = sub i32 %sub.ptr.lhs.cast1.i, %18
  %sub9.i = add i32 %sub.ptr.sub3.i, %sub.ptr.rhs.cast7.i
  %div10.i.neg = sdiv i32 %sub9.i, -4
  %19 = tail call i32 @llvm.umin.i32(i32 %div.i, i32 %sub.i) #8
  %20 = ptrtoint ptr %fifo_n_elm.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fifo_n_elm.i, align 4
  %sub12.i = add i32 %div10.i.neg, %21
  %22 = tail call i32 @llvm.umin.i32(i32 %19, i32 %sub12.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not10 = icmp eq i32 %22, 0
  br i1 %tobool.not10, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %len = getelementptr inbounds %struct.pic32_spi, ptr %pic32s, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %do.body.for.body_crit_edge, %for.body.lr.ph
  %mx.011 = phi i32 [ %22, %for.body.lr.ph ], [ %dec, %do.body.for.body_crit_edge ]
  %23 = ptrtoint ptr %tx_end.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_end.i, align 4
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %idx.neg = sub i32 0, %26
  %add.ptr = getelementptr i8, ptr %24, i32 %idx.neg
  %tobool1.not = icmp eq ptr %add.ptr, null
  br i1 %tobool1.not, label %for.body.do.body_crit_edge, label %if.then

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tx.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %for.body.do.body_crit_edge
  %v.0 = phi i32 [ %30, %if.then ], [ -1, %for.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void @arm_heavy_mb() #8
  %31 = tail call i32 @llvm.bswap.i32(i32 %v.0)
  %32 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i, align 4
  %buf = getelementptr inbounds %struct.pic32_spi_regs, ptr %33, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %buf, i32 %31) #8, !srcloc !114
  %34 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx.i, align 4
  %add.ptr3 = getelementptr i8, ptr %35, i32 4
  store ptr %add.ptr3, ptr %tx.i, align 4
  %dec = add i32 %mx.011, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.body.for.end_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pic32_spi_dma_rx_notify(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %xfer_done = getelementptr inbounds %struct.pic32_spi, ptr %data, i32 0, i32 13
  tail call void @complete(ptr noundef %xfer_done) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !78, !79, !80, !81, !82, !84, !86, !87, !88, !90, !91, !93, !95, !97, !99, !100, !101, !102}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @__initcall__kmod_spi_pic32__256_875_pic32_spi_driver_init6, !1, !"__initcall__kmod_spi_pic32__256_875_pic32_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-pic32.c", i32 875, i32 1}
!2 = !{ptr @__exitcall_pic32_spi_driver_exit, !1, !"__exitcall_pic32_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author257, !4, !"__UNIQUE_ID_author257", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-pic32.c", i32 877, i32 1}
!5 = !{ptr @__UNIQUE_ID_description258, !6, !"__UNIQUE_ID_description258", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-pic32.c", i32 878, i32 1}
!7 = !{ptr @__UNIQUE_ID_file259, !8, !"__UNIQUE_ID_file259", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-pic32.c", i32 879, i32 1}
!9 = !{ptr @__UNIQUE_ID_license260, !8, !"__UNIQUE_ID_license260", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-pic32.c", i32 868, i32 11}
!12 = !{ptr @pic32_spi_driver, !13, !"pic32_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-pic32.c", i32 866, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-pic32.c", i32 805, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pic32_spi_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pic32_spi_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/spi/spi-pic32.c", i32 815, i32 3}
!24 = !{ptr @pic32_spi_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @pic32_spi_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-pic32.c", i32 825, i32 3}
!28 = !{ptr @pic32_spi_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @pic32_spi_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-pic32.c", i32 832, i32 3}
!32 = !{ptr @pic32_spi_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @pic32_spi_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-pic32.c", i32 723, i32 52}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/spi/spi-pic32.c", i32 727, i32 49}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/spi/spi-pic32.c", i32 731, i32 49}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/spi/spi-pic32.c", i32 736, i32 41}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/spi/spi-pic32.c", i32 738, i32 3}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @pic32_spi_hw_probe._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @pic32_spi_hw_probe._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/spi/spi-pic32.c", i32 752, i32 2}
!49 = !{ptr @pic32_spi_hw_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @pic32_spi_hw_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/spi/spi-pic32.c", i32 583, i32 3}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @pic32_spi_setup._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @pic32_spi_setup._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/spi/spi-pic32.c", i32 527, i32 4}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @pic32_spi_one_transfer._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @pic32_spi_one_transfer._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/spi/spi-pic32.c", i32 550, i32 3}
!63 = !{ptr @pic32_spi_one_transfer._entry.28, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @pic32_spi_one_transfer._entry_ptr.30, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/spi/spi-pic32.c", i32 376, i32 3}
!67 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @pic32_spi_dma_config._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @pic32_spi_dma_config._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/spi/spi-pic32.c", i32 383, i32 3}
!72 = !{ptr @pic32_spi_dma_config._entry.33, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @pic32_spi_dma_config._entry_ptr.35, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/spi/spi-pic32.c", i32 613, i32 41}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/spi/spi-pic32.c", i32 618, i32 4}
!78 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @pic32_spi_dma_prep._entry, !77, !"_entry", i1 false, i1 false}
!81 = !{ptr @pic32_spi_dma_prep._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/spi/spi-pic32.c", i32 624, i32 41}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/spi/spi-pic32.c", i32 629, i32 4}
!86 = !{ptr @pic32_spi_dma_prep._entry.41, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @pic32_spi_dma_prep._entry_ptr.43, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @init_completion.__key, !89, !"__key", i1 false, i1 false}
!89 = !{!"../include/linux/completion.h", i32 87, i32 2}
!90 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/spi/spi-pic32.c", i32 244, i32 26}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/spi/spi-pic32.c", i32 249, i32 26}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/spi/spi-pic32.c", i32 254, i32 26}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/spi/spi-pic32.c", i32 227, i32 2}
!99 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @pic32_err_stop._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @pic32_err_stop._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @pic32_spi_of_match, !103, !"pic32_spi_of_match", i1 false, i1 false}
!103 = !{!"../drivers/spi/spi-pic32.c", i32 860, i32 34}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{i64 2154692030}
!114 = !{i64 6370159}
!115 = !{i64 6370577}
!116 = !{i64 2154729790}
!117 = !{i64 2154730437}
!118 = !{i64 2154731091}
!119 = !{i64 2154692999}
!120 = !{i64 2154719821}
!121 = !{i64 2154720595}
!122 = !{i64 2154691068}
!123 = !{i64 2154713426}
!124 = !{i64 2154713918}
!125 = !{i64 2154714501}
!126 = !{i64 2154718803}
!127 = !{i64 2154719028}
!128 = !{i64 2154693871}
!129 = !{i64 6370357}
!130 = !{i64 2154707821}
!131 = !{i64 2154694550}
!132 = !{i64 2154708059}
!133 = !{i64 6369962}
!134 = !{i64 6369739}
!135 = !{i64 2154709387}
!136 = !{i64 2154709625}
!137 = !{i64 6369539}
!138 = !{i64 2154711074}
!139 = !{i64 2154711313}
