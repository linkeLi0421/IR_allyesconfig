; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-bcm63xx.c_pt.bc'
source_filename = "../drivers/spi/spi-bcm63xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.bcm63xx_spi = type { %struct.completion, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }

@__initcall__kmod_spi_bcm63xx__237_677_bcm63xx_spi_driver_init6 = internal global ptr @bcm63xx_spi_driver_init, section ".initcall6.init", align 4
@bcm63xx_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm63xx_spi_probe, ptr @bcm63xx_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm63xx_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm63xx_spi_pm_ops, ptr null, ptr null }, ptr @bcm63xx_spi_dev_match, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm63xx_spi_driver_exit = internal global ptr @bcm63xx_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias238 = internal constant [39 x i8] c"spi_bcm63xx.alias=platform:bcm63xx_spi\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [58 x i8] c"spi_bcm63xx.author=Florian Fainelli <florian@openwrt.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [63 x i8] c"spi_bcm63xx.author=Tanguy Bouzeloc <tanguy.bouzeloc@efixo.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [63 x i8] c"spi_bcm63xx.description=Broadcom BCM63xx SPI Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [41 x i8] c"spi_bcm63xx.file=drivers/spi/spi-bcm63xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [24 x i8] c"spi_bcm63xx.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bcm63xx-spi\00", [20 x i8] zeroinitializer }, align 32
@bcm63xx_spi_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm6348-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm6348_spi_reg_offsets }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm6358-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm6358_spi_reg_offsets }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@bcm63xx_spi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @bcm63xx_spi_suspend, ptr @bcm63xx_spi_resume, ptr @bcm63xx_spi_suspend, ptr @bcm63xx_spi_resume, ptr @bcm63xx_spi_suspend, ptr @bcm63xx_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bcm63xx_spi_dev_match = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"bcm6348-spi\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @bcm6348_spi_reg_offsets to i32) }, %struct.platform_device_id { [20 x i8] c"bcm6358-spi\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @bcm6358_spi_reg_offsets to i32) }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"num-cs\00", [25 x i8] zeroinitializer }, align 32
@bcm63xx_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 510, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"unsupported number of cs (%i), reducing to 8\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm63xx_spi_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/spi/spi-bcm63xx.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm63xx_spi_probe._entry_ptr = internal global ptr @bcm63xx_spi_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@bcm63xx_spi_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 530, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no clock for device\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@bcm63xx_spi_probe._entry_ptr.11 = internal global ptr @bcm63xx_spi_probe._entry.8, section ".printk_index", align 4
@bcm63xx_spi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 540, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"out of memory\0A\00", [17 x i8] zeroinitializer }, align 32
@bcm63xx_spi_probe._entry_ptr.14 = internal global ptr @bcm63xx_spi_probe._entry.12, section ".printk_index", align 4
@bcm63xx_spi_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 565, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@bcm63xx_spi_probe._entry_ptr.17 = internal global ptr @bcm63xx_spi_probe._entry.15, section ".printk_index", align 4
@bcm63xx_spi_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 590, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to reset device: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@bcm63xx_spi_probe._entry_ptr.20 = internal global ptr @bcm63xx_spi_probe._entry.18, section ".printk_index", align 4
@bcm63xx_spi_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 601, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spi register failed\0A\00", [43 x i8] zeroinitializer }, align 32
@bcm63xx_spi_probe._entry_ptr.23 = internal global ptr @bcm63xx_spi_probe._entry.21, section ".printk_index", align 4
@bcm63xx_spi_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 606, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"at %pr (irq %d, FIFOs size %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bcm63xx_spi_probe._entry_ptr.27 = internal global ptr @bcm63xx_spi_probe._entry.24, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@bcm63xx_spi_transfer_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 359, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"unable to do transfers larger than FIFO size (%i > %i)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bcm63xx_spi_transfer_one\00", [39 x i8] zeroinitializer }, align 32
@bcm63xx_spi_transfer_one._entry_ptr = internal global ptr @bcm63xx_spi_transfer_one._entry, section ".printk_index", align 4
@bcm63xx_spi_transfer_one._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.4, i32 366, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to change speed between transfers\0A\00", [54 x i8] zeroinitializer }, align 32
@bcm63xx_spi_transfer_one._entry_ptr.33 = internal global ptr @bcm63xx_spi_transfer_one._entry.31, section ".printk_index", align 4
@bcm63xx_spi_transfer_one._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.4, i32 373, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unable to keep CS asserted after transfer\0A\00", [53 x i8] zeroinitializer }, align 32
@bcm63xx_spi_transfer_one._entry_ptr.36 = internal global ptr @bcm63xx_spi_transfer_one._entry.34, section ".printk_index", align 4
@bcm63xx_spi_freq_table = internal constant { [7 x [2 x i32]], [40 x i8] } { [7 x [2 x i32]] [[2 x i32] [i32 20000000, i32 0], [2 x i32] [i32 12500000, i32 6], [2 x i32] [i32 6250000, i32 5], [2 x i32] [i32 3125000, i32 4], [2 x i32] [i32 1563000, i32 3], [2 x i32] [i32 781000, i32 2], [2 x i32] [i32 391000, i32 1]], [40 x i8] zeroinitializer }, align 32
@bcm63xx_spi_setup_transfer.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.38, ptr @.str.4, ptr @.str.39, i8 0, i8 55, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_bcm63xx\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bcm63xx_spi_setup_transfer\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Setting clock register to %02x (hz %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@bcm63xx_txrx_bufs.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.40, ptr @.str.4, ptr @.str.41, i8 0, i8 60, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm63xx_txrx_bufs\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"txrx: tx %p, rx %p, len %d\0A\00", [36 x i8] zeroinitializer }, align 32
@bcm6348_spi_reg_offsets = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 9, i32 11, i32 64, i32 65, i32 128, i32 6, i32 8, i32 63], [36 x i8] zeroinitializer }, align 32
@bcm6358_spi_reg_offsets = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 1792, i32 1794, i32 1795, i32 1796, i32 1797, i32 1798, i32 1799, i32 1801, i32 1803, i32 0, i32 2, i32 1024, i32 14, i32 16, i32 542], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"bcm63xx_spi_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 666, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 668, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"bcm63xx_spi_of_match\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 480, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant [19 x i8] c"bcm63xx_spi_pm_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 662, i32 32 }
@___asan_gen_.54 = private unnamed_addr constant [22 x i8] c"bcm63xx_spi_dev_match\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 467, i32 40 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 507, i32 38 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 509, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 528, i32 26 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 530, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 540, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 565, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 590, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 601, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 605, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 87, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 358, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 366, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 373, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant [23 x i8] c"bcm63xx_spi_freq_table\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 186, i32 27 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 220, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 241, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [24 x i8] c"bcm6348_spi_reg_offsets\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 431, i32 28 }
@___asan_gen_.171 = private unnamed_addr constant [24 x i8] c"bcm6358_spi_reg_offsets\00", align 1
@___asan_gen_.172 = private constant [29 x i8] c"../drivers/spi/spi-bcm63xx.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 449, i32 28 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_alias238, ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_bcm63xx_spi_driver_exit, ptr @__initcall__kmod_spi_bcm63xx__237_677_bcm63xx_spi_driver_init6, ptr @bcm63xx_spi_driver_exit, ptr @bcm63xx_spi_probe._entry, ptr @bcm63xx_spi_probe._entry.12, ptr @bcm63xx_spi_probe._entry.15, ptr @bcm63xx_spi_probe._entry.18, ptr @bcm63xx_spi_probe._entry.21, ptr @bcm63xx_spi_probe._entry.24, ptr @bcm63xx_spi_probe._entry.8, ptr @bcm63xx_spi_probe._entry_ptr, ptr @bcm63xx_spi_probe._entry_ptr.11, ptr @bcm63xx_spi_probe._entry_ptr.14, ptr @bcm63xx_spi_probe._entry_ptr.17, ptr @bcm63xx_spi_probe._entry_ptr.20, ptr @bcm63xx_spi_probe._entry_ptr.23, ptr @bcm63xx_spi_probe._entry_ptr.27, ptr @bcm63xx_spi_transfer_one._entry, ptr @bcm63xx_spi_transfer_one._entry.31, ptr @bcm63xx_spi_transfer_one._entry.34, ptr @bcm63xx_spi_transfer_one._entry_ptr, ptr @bcm63xx_spi_transfer_one._entry_ptr.33, ptr @bcm63xx_spi_transfer_one._entry_ptr.36, ptr @bcm63xx_spi_driver, ptr @.str, ptr @bcm63xx_spi_of_match, ptr @bcm63xx_spi_pm_ops, ptr @bcm63xx_spi_dev_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @init_completion.__key, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @bcm63xx_spi_freq_table, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @bcm6348_spi_reg_offsets, ptr @bcm6358_spi_reg_offsets], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_spi_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_spi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_spi_dev_match to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_spi_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_spi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_spi_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_spi_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_spi_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_spi_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_spi_transfer_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_spi_transfer_one._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_spi_transfer_one._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_spi_freq_table to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6348_spi_reg_offsets to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6358_spi_reg_offsets to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm63xx_spi_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm63xx_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm63xx_spi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %num_cs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_cs) #6
  %0 = ptrtoint ptr %num_cs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8, ptr %num_cs, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call ptr @of_match_node(ptr noundef nonnull @bcm63xx_spi_of_match, ptr noundef nonnull %2) #6
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then.cleanup104_crit_edge, label %if.end

if.then.cleanup104_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup104

if.end:                                           ; preds = %if.then
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull %num_cs, i32 noundef 1, i32 noundef 0) #6
  %7 = ptrtoint ptr %num_cs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_cs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp = icmp ugt i32 %8, 8
  br i1 %cmp, label %do.end, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %8) #9
  %9 = ptrtoint ptr %num_cs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %num_cs, align 4
  br label %if.end16

if.else:                                          ; preds = %entry
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %10 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not = icmp eq i32 %13, 0
  br i1 %tobool9.not, label %if.else.cleanup104_crit_edge, label %if.then10

if.else.cleanup104_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup104

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %14 = inttoptr i32 %13 to ptr
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %do.end, %if.end.if.end16_crit_edge
  %bcm63xx_spireg.1 = phi ptr [ %14, %if.then10 ], [ %4, %if.end.if.end16_crit_edge ], [ %4, %do.end ]
  %bus_num.1 = phi i16 [ 0, %if.then10 ], [ -1, %if.end.if.end16_crit_edge ], [ -1, %do.end ]
  %call17 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end16.cleanup104_crit_edge, label %if.end20

if.end16.cleanup104_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup104

if.end20:                                         ; preds = %if.end16
  %call21 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #6
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end26, label %if.end28

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  %15 = ptrtoint ptr %call21 to i32
  br label %cleanup104

if.end28:                                         ; preds = %if.end20
  %call.i = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #6
  %cmp.i194 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i194, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call.i to i32
  br label %cleanup104

if.end33:                                         ; preds = %if.end28
  %call.i195 = call ptr @__spi_alloc_controller(ptr noundef %dev1, i32 noundef 96, i1 noundef zeroext false) #6
  %tobool35.not = icmp eq ptr %call.i195, null
  br i1 %tobool35.not, label %do.end39, label %if.end40

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  br label %cleanup104

if.end40:                                         ; preds = %if.end33
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i195, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %18, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %18, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @init_completion.__key) #6
  %driver_data.i.i196 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %driver_data.i.i196 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i195, ptr %driver_data.i.i196, align 4
  %pdev42 = getelementptr inbounds %struct.bcm63xx_spi, ptr %18, i32 0, i32 10
  %21 = ptrtoint ptr %pdev42 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pdev, ptr %pdev42, align 4
  %call43 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call45 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call43) #6
  %regs = getelementptr inbounds %struct.bcm63xx_spi, ptr %18, i32 0, i32 1
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call45, ptr %regs, align 4
  %cmp.i197 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i197, label %if.then48, label %if.end51

if.then48:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %call45 to i32
  br label %spi_controller_put.exit

if.end51:                                         ; preds = %if.end40
  %irq52 = getelementptr inbounds %struct.bcm63xx_spi, ptr %18, i32 0, i32 2
  %24 = ptrtoint ptr %irq52 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call17, ptr %irq52, align 4
  %clk53 = getelementptr inbounds %struct.bcm63xx_spi, ptr %18, i32 0, i32 9
  %25 = ptrtoint ptr %clk53 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call21, ptr %clk53, align 4
  %reg_offsets = getelementptr inbounds %struct.bcm63xx_spi, ptr %18, i32 0, i32 3
  %26 = ptrtoint ptr %reg_offsets to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %bcm63xx_spireg.1, ptr %reg_offsets, align 4
  %arrayidx = getelementptr i32, ptr %bcm63xx_spireg.1, i32 14
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %fifo_size = getelementptr inbounds %struct.bcm63xx_spi, ptr %18, i32 0, i32 4
  %29 = ptrtoint ptr %fifo_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %fifo_size, align 4
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 8
  %call.i198 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call17, ptr noundef nonnull @bcm63xx_spi_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %31, ptr noundef nonnull %call.i195) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %tobool57.not = icmp eq i32 %call.i198, 0
  br i1 %tobool57.not, label %if.end62, label %do.end61

do.end61:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #9
  br label %spi_controller_put.exit

if.end62:                                         ; preds = %if.end51
  %32 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node, align 8
  %of_node65 = getelementptr inbounds %struct.device, ptr %call.i195, i32 0, i32 27
  %34 = ptrtoint ptr %of_node65 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %of_node65, align 8
  %bus_num66 = getelementptr inbounds %struct.spi_controller, ptr %call.i195, i32 0, i32 2
  %35 = ptrtoint ptr %bus_num66 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %bus_num.1, ptr %bus_num66, align 8
  %36 = ptrtoint ptr %num_cs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_cs, align 4
  %conv67 = trunc i32 %37 to i16
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i195, i32 0, i32 3
  %38 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv67, ptr %num_chipselect, align 2
  %transfer_one_message = getelementptr inbounds %struct.spi_controller, ptr %call.i195, i32 0, i32 45
  %39 = ptrtoint ptr %transfer_one_message to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @bcm63xx_spi_transfer_one, ptr %transfer_one_message, align 4
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i195, i32 0, i32 5
  %40 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3, ptr %mode_bits, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i195, i32 0, i32 7
  %41 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 128, ptr %bits_per_word_mask, align 8
  %max_transfer_size = getelementptr inbounds %struct.spi_controller, ptr %call.i195, i32 0, i32 13
  %42 = ptrtoint ptr %max_transfer_size to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @bcm63xx_spi_max_length, ptr %max_transfer_size, align 8
  %max_message_size = getelementptr inbounds %struct.spi_controller, ptr %call.i195, i32 0, i32 14
  %43 = ptrtoint ptr %max_message_size to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @bcm63xx_spi_max_length, ptr %max_message_size, align 4
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i195, i32 0, i32 36
  %44 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %auto_runtime_pm, align 4
  %45 = ptrtoint ptr %reg_offsets to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_offsets, align 4
  %arrayidx69 = getelementptr i32, ptr %46, i32 12
  %47 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx69, align 4
  %msg_type_shift = getelementptr inbounds %struct.bcm63xx_spi, ptr %18, i32 0, i32 5
  %49 = ptrtoint ptr %msg_type_shift to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %msg_type_shift, align 4
  %arrayidx71 = getelementptr i32, ptr %46, i32 13
  %50 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx71, align 4
  %msg_ctl_width = getelementptr inbounds %struct.bcm63xx_spi, ptr %18, i32 0, i32 6
  %52 = ptrtoint ptr %msg_ctl_width to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %msg_ctl_width, align 4
  %53 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs, align 4
  %arrayidx74 = getelementptr i32, ptr %46, i32 10
  %55 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx74, align 4
  %add.ptr = getelementptr i8, ptr %54, i32 %56
  %tx_io = getelementptr inbounds %struct.bcm63xx_spi, ptr %18, i32 0, i32 7
  %57 = ptrtoint ptr %tx_io to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr, ptr %tx_io, align 4
  %arrayidx77 = getelementptr i32, ptr %46, i32 11
  %58 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx77, align 4
  %add.ptr78 = getelementptr i8, ptr %54, i32 %59
  %rx_io = getelementptr inbounds %struct.bcm63xx_spi, ptr %18, i32 0, i32 8
  %60 = ptrtoint ptr %rx_io to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr78, ptr %rx_io, align 4
  %61 = ptrtoint ptr %clk53 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %clk53, align 4
  %call.i199 = call i32 @clk_prepare(ptr noundef %62) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %tobool.not.i = icmp eq i32 %call.i199, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end62.spi_controller_put.exit_crit_edge

if.end62.spi_controller_put.exit_crit_edge:       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_controller_put.exit

if.end.i:                                         ; preds = %if.end62
  %call1.i = call i32 @clk_enable(ptr noundef %62) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end83, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %62) #6
  br label %spi_controller_put.exit

if.end83:                                         ; preds = %if.end.i
  %call84 = call i32 @reset_control_reset(ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end90, label %do.end89

do.end89:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %call84) #9
  br label %out_clk_disable

if.end90:                                         ; preds = %if.end83
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  call void @arm_heavy_mb() #6
  %63 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs, align 4
  %65 = ptrtoint ptr %reg_offsets to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_offsets, align 4
  %arrayidx.i = getelementptr i32, ptr %66, i32 1
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %64, i32 %68
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 31) #6, !srcloc !103
  call void @pm_runtime_enable(ptr noundef %dev1) #6
  %call92 = call i32 @devm_spi_register_controller(ptr noundef %dev1, ptr noundef nonnull %call.i195) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %do.end101, label %do.end97

do.end97:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #9
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  br label %out_clk_disable

do.end101:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fifo_size, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.25, ptr noundef %call43, i32 noundef %call17, i32 noundef %70) #9
  br label %cleanup104

out_clk_disable:                                  ; preds = %do.end97, %do.end89
  %ret.0 = phi i32 [ %call84, %do.end89 ], [ %call92, %do.end97 ]
  call void @clk_disable(ptr noundef %call21) #6
  call void @clk_unprepare(ptr noundef %call21) #6
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %out_clk_disable, %if.then3.i, %if.end62.spi_controller_put.exit_crit_edge, %do.end61, %if.then48
  %ret.1 = phi i32 [ %23, %if.then48 ], [ %call.i198, %do.end61 ], [ %ret.0, %out_clk_disable ], [ %call1.i, %if.then3.i ], [ %call.i199, %if.end62.spi_controller_put.exit_crit_edge ]
  call void @put_device(ptr noundef nonnull %call.i195) #6
  br label %cleanup104

cleanup104:                                       ; preds = %spi_controller_put.exit, %do.end101, %do.end39, %if.then31, %do.end26, %if.end16.cleanup104_crit_edge, %if.else.cleanup104_crit_edge, %if.then.cleanup104_crit_edge
  %retval.1 = phi i32 [ %15, %do.end26 ], [ %16, %if.then31 ], [ %ret.1, %spi_controller_put.exit ], [ 0, %do.end101 ], [ -12, %do.end39 ], [ -22, %if.else.cleanup104_crit_edge ], [ %call17, %if.end16.cleanup104_crit_edge ], [ -22, %if.then.cleanup104_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_cs) #6
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_spi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %regs.i = getelementptr inbounds %struct.bcm63xx_spi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %reg_offsets.i = getelementptr inbounds %struct.bcm63xx_spi, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i = getelementptr i32, ptr %7, i32 3
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #6, !srcloc !103
  %clk = getelementptr inbounds %struct.bcm63xx_spi, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_spi_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs.i = getelementptr inbounds %struct.bcm63xx_spi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %reg_offsets.i = getelementptr inbounds %struct.bcm63xx_spi, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %7
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #6, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %11 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i7 = getelementptr i32, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i7, align 4
  %add.ptr.i8 = getelementptr i8, ptr %10, i32 %14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i8, i8 31) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %17 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i11 = getelementptr i32, ptr %18, i32 3
  %19 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i11, align 4
  %add.ptr.i12 = getelementptr i8, ptr %16, i32 %20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12, i8 0) #6, !srcloc !103
  %21 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @complete(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_spi_transfer_one(ptr noundef %master, ptr noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 1
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %2 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn108 = load ptr, ptr %m, align 4
  %cmp.not110 = icmp eq ptr %.pn108, %m
  br i1 %cmp.not110, label %entry.exit_crit_edge, label %for.body.lr.ph

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

for.body.lr.ph:                                   ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %fifo_size24 = getelementptr inbounds %struct.bcm63xx_spi, ptr %4, i32 0, i32 4
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn117 = phi ptr [ %.pn108, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %first.0116 = phi ptr [ null, %for.body.lr.ph ], [ %first.2, %for.inc.for.body_crit_edge ]
  %can_use_prepend.0.off0113 = phi i1 [ false, %for.body.lr.ph ], [ %can_use_prepend.2.off0, %for.inc.for.body_crit_edge ]
  %total_len.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %total_len.1, %for.inc.for.body_crit_edge ]
  %n_transfers.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %n_transfers.1, %for.inc.for.body_crit_edge ]
  %t.0118 = getelementptr i8, ptr %.pn117, i32 -84
  %tobool.not = icmp eq ptr %first.0116, null
  %spec.select = select i1 %tobool.not, ptr %t.0118, ptr %first.0116
  %inc = add i32 %n_transfers.0111, 1
  %len = getelementptr i8, ptr %.pn117, i32 -76
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %add = add i32 %6, %total_len.0112
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %cmp3 = icmp eq i32 %inc, 2
  br i1 %cmp3, label %land.lhs.true, label %for.body.if.else_crit_edge

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %spec.select, i32 0, i32 1
  %7 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_buf, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %land.lhs.true5, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true
  %9 = ptrtoint ptr %t.0118 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %t.0118, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %land.lhs.true7, label %land.lhs.true5.if.else_crit_edge

land.lhs.true5.if.else_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %len8 = getelementptr inbounds %struct.spi_transfer, ptr %spec.select, i32 0, i32 2
  %11 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %cmp9 = icmp ult i32 %12, 16
  %can_use_prepend.0.off0.not = xor i1 %can_use_prepend.0.off0113, true
  %brmerge = or i1 %cmp9, %can_use_prepend.0.off0.not
  br i1 %brmerge, label %if.end17, label %land.lhs.true7.land.lhs.true12_crit_edge

land.lhs.true7.land.lhs.true12_crit_edge:         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true12

if.else:                                          ; preds = %land.lhs.true5.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  br i1 %can_use_prepend.0.off0113, label %if.else.land.lhs.true12_crit_edge, label %if.else.land.lhs.true23.critedge_crit_edge

if.else.land.lhs.true23.critedge_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true23.critedge

if.else.land.lhs.true12_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.else.land.lhs.true12_crit_edge, %land.lhs.true7.land.lhs.true12_crit_edge
  %13 = ptrtoint ptr %t.0118 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %t.0118, align 4
  %tobool14.not = icmp eq ptr %14, null
  %spec.select101 = and i1 %can_use_prepend.0.off0113, %tobool14.not
  br i1 %spec.select101, label %land.lhs.true12.land.lhs.true19_crit_edge, label %land.lhs.true12.land.lhs.true23.critedge_crit_edge

land.lhs.true12.land.lhs.true23.critedge_crit_edge: ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true23.critedge

land.lhs.true12.land.lhs.true19_crit_edge:        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true19

if.end17:                                         ; preds = %land.lhs.true7
  %.mux = or i1 %can_use_prepend.0.off0113, %cmp9
  br i1 %.mux, label %if.end17.land.lhs.true19_crit_edge, label %if.end17.land.lhs.true23.critedge_crit_edge

if.end17.land.lhs.true23.critedge_crit_edge:      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true23.critedge

if.end17.land.lhs.true19_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true19

land.lhs.true19:                                  ; preds = %if.end17.land.lhs.true19_crit_edge, %land.lhs.true12.land.lhs.true19_crit_edge
  %15 = ptrtoint ptr %fifo_size24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fifo_size24, align 4
  %add20 = add i32 %16, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add20)
  %cmp21 = icmp ugt i32 %add, %add20
  br i1 %cmp21, label %land.lhs.true19.do.end_crit_edge, label %land.lhs.true19.if.end28_crit_edge

land.lhs.true19.if.end28_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

land.lhs.true19.do.end_crit_edge:                 ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true23.critedge:                         ; preds = %if.end17.land.lhs.true23.critedge_crit_edge, %land.lhs.true12.land.lhs.true23.critedge_crit_edge, %if.else.land.lhs.true23.critedge_crit_edge
  %17 = ptrtoint ptr %fifo_size24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fifo_size24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %18)
  %cmp25 = icmp ugt i32 %add, %18
  br i1 %cmp25, label %land.lhs.true23.critedge.do.end_crit_edge, label %land.lhs.true23.critedge.if.end28_crit_edge

land.lhs.true23.critedge.if.end28_crit_edge:      ; preds = %land.lhs.true23.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

land.lhs.true23.critedge.do.end_crit_edge:        ; preds = %land.lhs.true23.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %land.lhs.true23.critedge.do.end_crit_edge, %land.lhs.true19.do.end_crit_edge
  %19 = ptrtoint ptr %fifo_size24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fifo_size24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %add, i32 noundef %20) #9
  br label %exit

if.end28:                                         ; preds = %land.lhs.true23.critedge.if.end28_crit_edge, %land.lhs.true19.if.end28_crit_edge
  %can_use_prepend.1.off0103 = phi i1 [ true, %land.lhs.true19.if.end28_crit_edge ], [ false, %land.lhs.true23.critedge.if.end28_crit_edge ]
  %speed_hz = getelementptr i8, ptr %.pn117, i32 -24
  %21 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %speed_hz, align 4
  %speed_hz29 = getelementptr inbounds %struct.spi_transfer, ptr %spec.select, i32 0, i32 12
  %23 = ptrtoint ptr %speed_hz29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %speed_hz29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp30.not = icmp eq i32 %22, %24
  br i1 %cmp30.not, label %if.end36, label %do.end34

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.32) #9
  br label %exit

if.end36:                                         ; preds = %if.end28
  %delay = getelementptr i8, ptr %.pn117, i32 -38
  %25 = ptrtoint ptr %delay to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %delay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool37.not = icmp eq i16 %26, 0
  br i1 %tobool37.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.35) #9
  br label %exit

if.end43:                                         ; preds = %if.end36
  %cs_change = getelementptr i8, ptr %.pn117, i32 -40
  %27 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load = load i8, ptr %cs_change, align 4
  %28 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool44.not = icmp eq i8 %28, 0
  br i1 %tobool44.not, label %lor.lhs.false45, label %if.end43.if.then50_crit_edge

if.end43.if.then50_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50

lor.lhs.false45:                                  ; preds = %if.end43
  %29 = ptrtoint ptr %.pn117 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %.pn117, align 4
  %cmp.i.not = icmp eq ptr %30, %m
  br i1 %cmp.i.not, label %lor.lhs.false45.if.then50_crit_edge, label %lor.lhs.false45.for.inc_crit_edge

lor.lhs.false45.for.inc_crit_edge:                ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false45.if.then50_crit_edge:              ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50

if.then50:                                        ; preds = %lor.lhs.false45.if.then50_crit_edge, %if.end43.if.then50_crit_edge
  tail call fastcc void @bcm63xx_spi_setup_transfer(ptr noundef %1, ptr noundef %spec.select)
  %call51 = tail call fastcc i32 @bcm63xx_txrx_bufs(ptr noundef %1, ptr noundef %spec.select, i32 noundef %inc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.then50.exit_crit_edge

if.then50.exit_crit_edge:                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end54:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %actual_length, align 4
  %add55 = add i32 %32, %add
  store i32 %add55, ptr %actual_length, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end54, %lor.lhs.false45.for.inc_crit_edge
  %n_transfers.1 = phi i32 [ 0, %if.end54 ], [ %inc, %lor.lhs.false45.for.inc_crit_edge ]
  %total_len.1 = phi i32 [ 0, %if.end54 ], [ %add, %lor.lhs.false45.for.inc_crit_edge ]
  %can_use_prepend.2.off0 = phi i1 [ false, %if.end54 ], [ %can_use_prepend.1.off0103, %lor.lhs.false45.for.inc_crit_edge ]
  %first.2 = phi ptr [ null, %if.end54 ], [ %spec.select, %lor.lhs.false45.for.inc_crit_edge ]
  %33 = ptrtoint ptr %.pn117 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn = load ptr, ptr %.pn117, align 4
  %cmp.not = icmp eq ptr %.pn, %m
  br i1 %cmp.not, label %for.inc.exit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.exit_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

exit:                                             ; preds = %for.inc.exit_crit_edge, %if.then50.exit_crit_edge, %do.end41, %do.end34, %do.end, %entry.exit_crit_edge
  %status.2 = phi i32 [ -22, %do.end ], [ -22, %do.end34 ], [ -22, %do.end41 ], [ 0, %entry.exit_crit_edge ], [ %call51, %if.then50.exit_crit_edge ], [ 0, %for.inc.exit_crit_edge ]
  %status62 = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 7
  %34 = ptrtoint ptr %status62 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %status.2, ptr %status62, align 4
  tail call void @spi_finalize_current_message(ptr noundef %master) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm63xx_spi_max_length(ptr nocapture noundef readonly %spi) #5 align 64 {
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
  %fifo_size = getelementptr inbounds %struct.bcm63xx_spi, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fifo_size, align 4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm63xx_spi_setup_transfer(ptr noundef %spi, ptr nocapture noundef readonly %t) unnamed_addr #2 align 64 {
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
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %4 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %5)
  %cmp2.not = icmp ult i32 %5, 20000000
  br i1 %cmp2.not, label %for.inc, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.034.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ]
  %arrayidx4 = getelementptr [7 x [2 x i32]], ptr @bcm63xx_spi_freq_table, i32 0, i32 %i.034.lcssa, i32 1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %phi.cast = and i32 %7, 255
  br label %for.end

for.inc:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12500000, i32 %5)
  %cmp2.not.1 = icmp ult i32 %5, 12500000
  br i1 %cmp2.not.1, label %for.inc.1, label %for.inc.if.then_crit_edge

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 6250000, i32 %5)
  %cmp2.not.2 = icmp ult i32 %5, 6250000
  br i1 %cmp2.not.2, label %for.inc.2, label %for.inc.1.if.then_crit_edge

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3125000, i32 %5)
  %cmp2.not.3 = icmp ult i32 %5, 3125000
  br i1 %cmp2.not.3, label %for.inc.3, label %for.inc.2.if.then_crit_edge

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1563000, i32 %5)
  %cmp2.not.4 = icmp ult i32 %5, 1563000
  br i1 %cmp2.not.4, label %for.inc.4, label %for.inc.3.if.then_crit_edge

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 781000, i32 %5)
  %cmp2.not.5 = icmp ult i32 %5, 781000
  br i1 %cmp2.not.5, label %for.inc.5, label %for.inc.4.if.then_crit_edge

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 391000, i32 %5)
  %cmp2.not.6 = icmp ult i32 %5, 391000
  br i1 %cmp2.not.6, label %for.inc.5.for.end_crit_edge, label %for.inc.5.if.then_crit_edge

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.5.for.end_crit_edge, %if.then
  %clk_cfg.0 = phi i32 [ %phi.cast, %if.then ], [ 1, %for.inc.5.for.end_crit_edge ]
  %regs.i = getelementptr inbounds %struct.bcm63xx_spi, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %reg_offsets.i = getelementptr inbounds %struct.bcm63xx_spi, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i = getelementptr i32, ptr %11, i32 5
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %13
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #6, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  %15 = and i8 %14, -8
  %16 = trunc i32 %clk_cfg.0 to i8
  %conv10 = or i8 %15, %16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %19 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i30 = getelementptr i32, ptr %20, i32 5
  %21 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i30, align 4
  %add.ptr.i31 = getelementptr i8, ptr %18, i32 %22
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i31, i8 %conv10) #6, !srcloc !103
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm63xx_spi_setup_transfer.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm63xx_spi_setup_transfer, %do.end)) #6
          to label %if.then15 [label %do.end], !srcloc !106

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %speed_hz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm63xx_spi_setup_transfer.__UNIQUE_ID_ddebug235, ptr noundef %spi, ptr noundef nonnull @.str.39, i32 noundef %clk_cfg.0, i32 noundef %24) #6
  br label %do.end

do.end:                                           ; preds = %if.then15, %for.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm63xx_txrx_bufs(ptr noundef %spi, ptr noundef readonly %first, i32 noundef %num_transfers) unnamed_addr #2 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %regs.i = getelementptr inbounds %struct.bcm63xx_spi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %reg_offsets.i = getelementptr inbounds %struct.bcm63xx_spi, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i = getelementptr i32, ptr %7, i32 3
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #6, !srcloc !103
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm63xx_txrx_bufs.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm63xx_txrx_bufs, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !106

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %first, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %first, i32 0, i32 1
  %12 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_buf, align 4
  %len5 = getelementptr inbounds %struct.spi_transfer, ptr %first, i32 0, i32 2
  %14 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm63xx_txrx_bufs.__UNIQUE_ID_ddebug236, ptr noundef %spi, ptr noundef nonnull @.str.41, ptr noundef %11, ptr noundef %13, i32 noundef %15) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_transfers)
  %cmp = icmp ugt i32 %num_transfers, 1
  br i1 %cmp, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %do.end
  %16 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %first, align 4
  %tobool7.not = icmp eq ptr %17, null
  br i1 %tobool7.not, label %land.lhs.true.for.body.lr.ph_crit_edge, label %land.lhs.true8

land.lhs.true.for.body.lr.ph_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph

land.lhs.true8:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %len9 = getelementptr inbounds %struct.spi_transfer, ptr %first, i32 0, i32 2
  %18 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %19)
  %cmp10 = icmp ult i32 %19, 16
  %spec.select = select i1 %cmp10, i32 %19, i32 0
  br label %for.body.lr.ph

if.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_transfers)
  %cmp14201.not = icmp eq i32 %num_transfers, 0
  br i1 %cmp14201.not, label %if.else53.thread, label %if.end13.for.body.lr.ph_crit_edge

if.end13.for.body.lr.ph_crit_edge:                ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph

if.else53.thread:                                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %3, align 4
  br label %if.end63

for.body.lr.ph:                                   ; preds = %if.end13.for.body.lr.ph_crit_edge, %land.lhs.true8, %land.lhs.true.for.body.lr.ph_crit_edge
  %prepend_len.0218 = phi i32 [ 0, %if.end13.for.body.lr.ph_crit_edge ], [ %spec.select, %land.lhs.true8 ], [ 0, %land.lhs.true.for.body.lr.ph_crit_edge ]
  %tx_io = getelementptr inbounds %struct.bcm63xx_spi, ptr %3, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %for.body.lr.ph
  %i.0207 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end23.for.body_crit_edge ]
  %do_tx.0.off0206 = phi i1 [ false, %for.body.lr.ph ], [ %do_tx.1.off0, %if.end23.for.body_crit_edge ]
  %do_rx.0.off0205 = phi i1 [ false, %for.body.lr.ph ], [ %do_rx.1.off0, %if.end23.for.body_crit_edge ]
  %t.0204 = phi ptr [ %first, %for.body.lr.ph ], [ %add.ptr33, %if.end23.for.body_crit_edge ]
  %len.0203 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end23.for.body_crit_edge ]
  %prepend_len.1202 = phi i32 [ %prepend_len.0218, %for.body.lr.ph ], [ %prepend_len.3, %if.end23.for.body_crit_edge ]
  %21 = ptrtoint ptr %t.0204 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %t.0204, align 4
  %tobool16.not = icmp eq ptr %22, null
  br i1 %tobool16.not, label %for.body.if.end23_crit_edge, label %if.then17

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %tx_io to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_io, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 %len.0203
  %len19 = getelementptr inbounds %struct.spi_transfer, ptr %t.0204, i32 0, i32 2
  %25 = ptrtoint ptr %len19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len19, align 4
  tail call void @mmiocpy(ptr noundef %add.ptr, ptr noundef nonnull %22, i32 noundef %26) #6
  %cmp20.not = icmp eq ptr %t.0204, %first
  %spec.select180 = select i1 %cmp20.not, i32 %prepend_len.1202, i32 0
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %for.body.if.end23_crit_edge
  %prepend_len.2 = phi i32 [ %prepend_len.1202, %for.body.if.end23_crit_edge ], [ %spec.select180, %if.then17 ]
  %do_tx.1.off0 = phi i1 [ %do_tx.0.off0206, %for.body.if.end23_crit_edge ], [ true, %if.then17 ]
  %rx_buf24 = getelementptr inbounds %struct.spi_transfer, ptr %t.0204, i32 0, i32 1
  %27 = ptrtoint ptr %rx_buf24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_buf24, align 4
  %tobool25.not = icmp eq ptr %28, null
  %cmp27 = icmp eq ptr %t.0204, %first
  %spec.select181 = select i1 %cmp27, i32 0, i32 %prepend_len.2
  %prepend_len.3 = select i1 %tobool25.not, i32 %prepend_len.2, i32 %spec.select181
  %not.tobool25.not = xor i1 %tobool25.not, true
  %do_rx.1.off0 = select i1 %not.tobool25.not, i1 true, i1 %do_rx.0.off0205
  %len31 = getelementptr inbounds %struct.spi_transfer, ptr %t.0204, i32 0, i32 2
  %29 = ptrtoint ptr %len31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len31, align 4
  %add = add i32 %30, %len.0203
  %transfer_list = getelementptr inbounds %struct.spi_transfer, ptr %t.0204, i32 0, i32 18
  %31 = ptrtoint ptr %transfer_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %transfer_list, align 4
  %add.ptr33 = getelementptr i8, ptr %32, i32 -84
  %inc = add nuw i32 %i.0207, 1
  %exitcond.not = icmp eq i32 %inc, %num_transfers
  br i1 %exitcond.not, label %for.end, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end23
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %3, align 4
  %do_rx.0.off0.not = xor i1 %do_rx.1.off0, true
  %34 = select i1 %do_rx.1.off0, i1 %do_tx.1.off0, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prepend_len.3)
  %cmp40 = icmp eq i32 %prepend_len.3, 0
  %or.cond = select i1 %34, i1 %cmp40, i1 false
  br i1 %or.cond, label %for.end.if.end63_crit_edge, label %if.else

for.end.if.end63_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.else:                                          ; preds = %for.end
  br i1 %do_rx.1.off0, label %if.then47, label %if.else53

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %msg_type_shift48 = getelementptr inbounds %struct.bcm63xx_spi, ptr %3, i32 0, i32 5
  %35 = ptrtoint ptr %msg_type_shift48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %msg_type_shift48, align 4
  %shl49 = shl i32 2, %36
  %or51 = or i32 %shl49, %add
  br label %if.end63

if.else53:                                        ; preds = %if.else
  br i1 %do_tx.1.off0, label %if.then55, label %if.else53.if.end63_crit_edge

if.else53.if.end63_crit_edge:                     ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then55:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #8
  %msg_type_shift56 = getelementptr inbounds %struct.bcm63xx_spi, ptr %3, i32 0, i32 5
  %37 = ptrtoint ptr %msg_type_shift56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msg_type_shift56, align 4
  %shl57 = shl nuw i32 1, %38
  %or59 = or i32 %shl57, %add
  br label %if.end63

if.end63:                                         ; preds = %if.then55, %if.else53.if.end63_crit_edge, %if.then47, %for.end.if.end63_crit_edge, %if.else53.thread
  %cmp40239 = phi i1 [ %cmp40, %if.then47 ], [ %cmp40, %if.then55 ], [ %cmp40, %if.else53.if.end63_crit_edge ], [ %cmp40, %for.end.if.end63_crit_edge ], [ true, %if.else53.thread ]
  %do_rx.0.off0.not237 = phi i1 [ %do_rx.0.off0.not, %if.then47 ], [ true, %if.then55 ], [ true, %if.else53.if.end63_crit_edge ], [ %do_rx.0.off0.not, %for.end.if.end63_crit_edge ], [ true, %if.else53.thread ]
  %prepend_len.1.lcssa232 = phi i32 [ %prepend_len.3, %if.then47 ], [ %prepend_len.3, %if.then55 ], [ %prepend_len.3, %if.else53.if.end63_crit_edge ], [ 0, %for.end.if.end63_crit_edge ], [ 0, %if.else53.thread ]
  %cmp14201.not220230 = phi i1 [ false, %if.then47 ], [ false, %if.then55 ], [ false, %if.else53.if.end63_crit_edge ], [ false, %for.end.if.end63_crit_edge ], [ true, %if.else53.thread ]
  %msg_ctl.0.in = phi i32 [ %or51, %if.then47 ], [ %or59, %if.then55 ], [ %add, %if.else53.if.end63_crit_edge ], [ %add, %for.end.if.end63_crit_edge ], [ 0, %if.else53.thread ]
  %msg_ctl_width = getelementptr inbounds %struct.bcm63xx_spi, ptr %3, i32 0, i32 6
  %39 = ptrtoint ptr %msg_ctl_width to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg_ctl_width, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %40, label %if.end63.sw.epilog_crit_edge [
    i32 8, label %sw.bb
    i32 16, label %sw.bb65
  ]

if.end63.sw.epilog_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %conv64 = trunc i32 %msg_ctl.0.in to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %42 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i, align 4
  %44 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i187 = getelementptr i32, ptr %45, i32 9
  %46 = ptrtoint ptr %arrayidx.i187 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i187, align 4
  %add.ptr.i188 = getelementptr i8, ptr %43, i32 %47
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i188, i8 %conv64) #6, !srcloc !103
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %msg_ctl.0 = trunc i32 %msg_ctl.0.in to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  %50 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i191 = getelementptr i32, ptr %51, i32 9
  %52 = ptrtoint ptr %arrayidx.i191 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i191, align 4
  %add.ptr.i192 = getelementptr i8, ptr %49, i32 %53
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i192, i16 %msg_ctl.0) #6, !srcloc !108
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb65, %sw.bb, %if.end63.sw.epilog_crit_edge
  %54 = shl i32 %prepend_len.1.lcssa232, 8
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %55 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %chip_select, align 4
  %conv70 = zext i8 %56 to i32
  %shl71 = shl nuw nsw i32 %conv70, 4
  %conv72 = or i32 %shl71, %54
  %57 = trunc i32 %conv72 to i16
  %conv74 = or i16 %57, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %58 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i, align 4
  %60 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_offsets.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %add.ptr.i195 = getelementptr i8, ptr %59, i32 %63
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i195, i16 %conv74) #6, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %64 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i, align 4
  %66 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i198 = getelementptr i32, ptr %67, i32 3
  %68 = ptrtoint ptr %arrayidx.i198 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i198, align 4
  %add.ptr.i199 = getelementptr i8, ptr %65, i32 %69
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i199, i8 1) #6, !srcloc !103
  %call76 = tail call i32 @wait_for_completion_timeout(ptr noundef %3, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  %brmerge184 = select i1 %tobool77.not, i1 true, i1 %do_rx.0.off0.not237
  %brmerge = or i1 %brmerge184, %cmp14201.not220230
  %.mux.mux = select i1 %tobool77.not, i32 -110, i32 0
  br i1 %brmerge, label %sw.epilog.cleanup_crit_edge, label %for.body86.lr.ph

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body86.lr.ph:                                 ; preds = %sw.epilog
  %rx_io = getelementptr inbounds %struct.bcm63xx_spi, ptr %3, i32 0, i32 8
  br label %for.body86

for.body86:                                       ; preds = %if.end101.for.body86_crit_edge, %for.body86.lr.ph
  %i.1214 = phi i32 [ 0, %for.body86.lr.ph ], [ %inc108, %if.end101.for.body86_crit_edge ]
  %t.1213 = phi ptr [ %first, %for.body86.lr.ph ], [ %add.ptr106, %if.end101.for.body86_crit_edge ]
  %len.1212 = phi i32 [ 0, %for.body86.lr.ph ], [ %len.2, %if.end101.for.body86_crit_edge ]
  %rx_buf87 = getelementptr inbounds %struct.spi_transfer, ptr %t.1213, i32 0, i32 1
  %70 = ptrtoint ptr %rx_buf87 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rx_buf87, align 4
  %tobool88.not = icmp eq ptr %71, null
  br i1 %tobool88.not, label %for.body86.if.end93_crit_edge, label %if.then89

for.body86.if.end93_crit_edge:                    ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.then89:                                        ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %rx_io to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rx_io, align 4
  %add.ptr91 = getelementptr i8, ptr %73, i32 %len.1212
  %len92 = getelementptr inbounds %struct.spi_transfer, ptr %t.1213, i32 0, i32 2
  %74 = ptrtoint ptr %len92 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len92, align 4
  tail call void @mmiocpy(ptr noundef nonnull %71, ptr noundef %add.ptr91, i32 noundef %75) #6
  br label %if.end93

if.end93:                                         ; preds = %if.then89, %for.body86.if.end93_crit_edge
  %cmp94.not = icmp ne ptr %t.1213, %first
  %or.cond182 = select i1 %cmp94.not, i1 true, i1 %cmp40239
  br i1 %or.cond182, label %if.then98, label %if.end93.if.end101_crit_edge

if.end93.if.end101_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.then98:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  %len99 = getelementptr inbounds %struct.spi_transfer, ptr %t.1213, i32 0, i32 2
  %76 = ptrtoint ptr %len99 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len99, align 4
  %add100 = add i32 %77, %len.1212
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %if.end93.if.end101_crit_edge
  %len.2 = phi i32 [ %add100, %if.then98 ], [ %len.1212, %if.end93.if.end101_crit_edge ]
  %transfer_list103 = getelementptr inbounds %struct.spi_transfer, ptr %t.1213, i32 0, i32 18
  %78 = ptrtoint ptr %transfer_list103 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %transfer_list103, align 4
  %add.ptr106 = getelementptr i8, ptr %79, i32 -84
  %inc108 = add nuw i32 %i.1214, 1
  %exitcond215.not = icmp eq i32 %inc108, %num_transfers
  br i1 %exitcond215.not, label %if.end101.cleanup_crit_edge, label %if.end101.for.body86_crit_edge

if.end101.for.body86_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body86

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end101.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %.mux.mux, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end101.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_spi_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @spi_controller_suspend(ptr noundef %1) #6
  %clk = getelementptr inbounds %struct.bcm63xx_spi, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_spi_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.bcm63xx_spi, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @spi_controller_resume(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !81, !82, !83, !85, !87, !89, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__initcall__kmod_spi_bcm63xx__237_677_bcm63xx_spi_driver_init6, !1, !"__initcall__kmod_spi_bcm63xx__237_677_bcm63xx_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-bcm63xx.c", i32 677, i32 1}
!2 = !{ptr @__exitcall_bcm63xx_spi_driver_exit, !1, !"__exitcall_bcm63xx_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias238, !4, !"__UNIQUE_ID_alias238", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-bcm63xx.c", i32 679, i32 1}
!5 = !{ptr @__UNIQUE_ID_author239, !6, !"__UNIQUE_ID_author239", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-bcm63xx.c", i32 680, i32 1}
!7 = !{ptr @__UNIQUE_ID_author240, !8, !"__UNIQUE_ID_author240", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-bcm63xx.c", i32 681, i32 1}
!9 = !{ptr @__UNIQUE_ID_description241, !10, !"__UNIQUE_ID_description241", i1 false, i1 false}
!10 = !{!"../drivers/spi/spi-bcm63xx.c", i32 682, i32 1}
!11 = !{ptr @__UNIQUE_ID_file242, !12, !"__UNIQUE_ID_file242", i1 false, i1 false}
!12 = !{!"../drivers/spi/spi-bcm63xx.c", i32 683, i32 1}
!13 = !{ptr @__UNIQUE_ID_license243, !12, !"__UNIQUE_ID_license243", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-bcm63xx.c", i32 668, i32 11}
!16 = !{ptr @bcm63xx_spi_driver, !17, !"bcm63xx_spi_driver", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-bcm63xx.c", i32 666, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-bcm63xx.c", i32 507, i32 38}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/spi/spi-bcm63xx.c", i32 509, i32 4}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @bcm63xx_spi_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @bcm63xx_spi_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-bcm63xx.c", i32 528, i32 26}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-bcm63xx.c", i32 530, i32 3}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @bcm63xx_spi_probe._entry.8, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @bcm63xx_spi_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/spi/spi-bcm63xx.c", i32 540, i32 3}
!37 = !{ptr @bcm63xx_spi_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @bcm63xx_spi_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/spi/spi-bcm63xx.c", i32 565, i32 3}
!41 = !{ptr @bcm63xx_spi_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @bcm63xx_spi_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-bcm63xx.c", i32 590, i32 3}
!45 = !{ptr @bcm63xx_spi_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @bcm63xx_spi_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/spi/spi-bcm63xx.c", i32 601, i32 3}
!49 = !{ptr @bcm63xx_spi_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @bcm63xx_spi_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/spi/spi-bcm63xx.c", i32 605, i32 2}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @bcm63xx_spi_probe._entry.24, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @bcm63xx_spi_probe._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @init_completion.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../include/linux/completion.h", i32 87, i32 2}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/spi/spi-bcm63xx.c", i32 358, i32 4}
!61 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @bcm63xx_spi_transfer_one._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @bcm63xx_spi_transfer_one._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/spi/spi-bcm63xx.c", i32 366, i32 4}
!66 = !{ptr @bcm63xx_spi_transfer_one._entry.31, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @bcm63xx_spi_transfer_one._entry_ptr.33, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/spi/spi-bcm63xx.c", i32 373, i32 4}
!70 = !{ptr @bcm63xx_spi_transfer_one._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @bcm63xx_spi_transfer_one._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/spi/spi-bcm63xx.c", i32 220, i32 2}
!74 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @bcm63xx_spi_setup_transfer.__UNIQUE_ID_ddebug235, !73, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!77 = !{ptr @bcm63xx_spi_freq_table, !78, !"bcm63xx_spi_freq_table", i1 false, i1 false}
!78 = !{!"../drivers/spi/spi-bcm63xx.c", i32 186, i32 27}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/spi/spi-bcm63xx.c", i32 241, i32 2}
!81 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @bcm63xx_txrx_bufs.__UNIQUE_ID_ddebug236, !80, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!83 = !{ptr @bcm63xx_spi_of_match, !84, !"bcm63xx_spi_of_match", i1 false, i1 false}
!84 = !{!"../drivers/spi/spi-bcm63xx.c", i32 480, i32 34}
!85 = !{ptr @bcm6348_spi_reg_offsets, !86, !"bcm6348_spi_reg_offsets", i1 false, i1 false}
!86 = !{!"../drivers/spi/spi-bcm63xx.c", i32 431, i32 28}
!87 = !{ptr @bcm6358_spi_reg_offsets, !88, !"bcm6358_spi_reg_offsets", i1 false, i1 false}
!88 = !{!"../drivers/spi/spi-bcm63xx.c", i32 449, i32 28}
!89 = !{ptr @bcm63xx_spi_pm_ops, !90, !"bcm63xx_spi_pm_ops", i1 false, i1 false}
!90 = !{!"../drivers/spi/spi-bcm63xx.c", i32 662, i32 32}
!91 = !{ptr @bcm63xx_spi_dev_match, !92, !"bcm63xx_spi_dev_match", i1 false, i1 false}
!92 = !{!"../drivers/spi/spi-bcm63xx.c", i32 467, i32 40}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{i64 2154391335}
!103 = !{i64 2044293}
!104 = !{i64 2044688}
!105 = !{i64 2154390430}
!106 = !{i64 2148707102, i64 2148707107, i64 2148707120, i64 2148707164, i64 2148707198, i64 2148707219}
!107 = !{i64 2154391836}
!108 = !{i64 2043870}
