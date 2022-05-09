; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-lantiq-ssc.c_pt.bc'
source_filename = "../drivers/spi/spi-lantiq-ssc.c"
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
%struct.atomic_t = type { i32 }
%struct.lantiq_ssc_hwcfg = type { ptr, i32, i32, i32, i32, i8, i32 }
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
%struct.lantiq_ssc_spi = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.work_struct, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_spi_lantiq_ssc__237_1051_lantiq_ssc_driver_init6 = internal global ptr @lantiq_ssc_driver_init, section ".initcall6.init", align 4
@lantiq_ssc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lantiq_ssc_probe, ptr @lantiq_ssc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lantiq_ssc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lantiq_ssc_driver_exit = internal global ptr @lantiq_ssc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description238 = internal constant [60 x i8] c"spi_lantiq_ssc.description=Lantiq SSC SPI controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [72 x i8] c"spi_lantiq_ssc.author=Daniel Schwierzeck <daniel.schwierzeck@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [56 x i8] c"spi_lantiq_ssc.author=Hauke Mehrtens <hauke@hauke-m.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [47 x i8] c"spi_lantiq_ssc.file=drivers/spi/spi-lantiq-ssc\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [27 x i8] c"spi_lantiq_ssc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias243 = internal constant [45 x i8] c"spi_lantiq_ssc.alias=platform:spi-lantiq-ssc\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spi-lantiq-ssc\00", [17 x i8] zeroinitializer }, align 32
@lantiq_ssc_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lantiq,ase-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lantiq_ssc_xway }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lantiq,falcon-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lantiq_ssc_xrx }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lantiq,xrx100-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lantiq_ssc_xrx }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,lgm-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intel_ssc_lgm }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@lantiq_ssc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 916, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no device match\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lantiq_ssc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/spi/spi-lantiq-ssc.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lantiq_ssc_probe._entry_ptr = internal global ptr @lantiq_ssc_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gate\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"freq\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"num-cs\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"base-cs\00", [24 x i8] zeroinitializer }, align 32
@lantiq_ssc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&spi->lock\00", [21 x i8] zeroinitializer }, align 32
@lantiq_ssc_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&spi->work)\00", [34 x i8] zeroinitializer }, align 32
@lantiq_ssc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1004, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Lantiq SSC SPI controller (Rev %i, TXFS %u, RXFS %u, DMA %u)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lantiq_ssc_probe._entry_ptr.16 = internal global ptr @lantiq_ssc_probe._entry.13, section ".printk_index", align 4
@lantiq_ssc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1008, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register spi_master\0A\00", [33 x i8] zeroinitializer }, align 32
@lantiq_ssc_probe._entry_ptr.19 = internal global ptr @lantiq_ssc_probe._entry.17, section ".printk_index", align 4
@lantiq_ssc_setup.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 99, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spi_lantiq_ssc\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lantiq_ssc_setup\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"using internal chipselect %u\0A\00", [34 x i8] zeroinitializer }, align 32
@lantiq_ssc_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 402, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"chipselect %i too small (min %i)\0A\00", [62 x i8] zeroinitializer }, align 32
@lantiq_ssc_setup._entry_ptr = internal global ptr @lantiq_ssc_setup._entry, section ".printk_index", align 4
@hw_setup_speed_hz.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 72, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hw_setup_speed_hz\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"spi_clk %u, max_speed_hz %u, brt %u\0A\00", [59 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@lantiq_ssc_xway = internal constant { %struct.lantiq_ssc_hwcfg, [36 x i8] } { %struct.lantiq_ssc_hwcfg { ptr @lantiq_cfg_irq, i32 1, i32 2, i32 252, i32 248, i8 0, i32 63 }, [36 x i8] zeroinitializer }, align 32
@lantiq_ssc_xrx = internal constant { %struct.lantiq_ssc_hwcfg, [36 x i8] } { %struct.lantiq_ssc_hwcfg { ptr @lantiq_cfg_irq, i32 2, i32 1, i32 252, i32 248, i8 0, i32 63 }, [36 x i8] zeroinitializer }, align 32
@intel_ssc_lgm = internal constant { %struct.lantiq_ssc_hwcfg, [36 x i8] } { %struct.lantiq_ssc_hwcfg { ptr @intel_lgm_cfg_irq, i32 2, i32 1, i32 248, i32 252, i8 1, i32 255 }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spi_rx\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spi_tx\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_err\00", [24 x i8] zeroinitializer }, align 32
@lantiq_ssc_err_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 679, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"receive underflow error\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lantiq_ssc_err_interrupt\00", [39 x i8] zeroinitializer }, align 32
@lantiq_ssc_err_interrupt._entry_ptr = internal global ptr @lantiq_ssc_err_interrupt._entry, section ".printk_index", align 4
@lantiq_ssc_err_interrupt._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 681, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"transmit underflow error\0A\00", [38 x i8] zeroinitializer }, align 32
@lantiq_ssc_err_interrupt._entry_ptr.33 = internal global ptr @lantiq_ssc_err_interrupt._entry.31, section ".printk_index", align 4
@lantiq_ssc_err_interrupt._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.3, i32 683, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"abort error\0A\00", [19 x i8] zeroinitializer }, align 32
@lantiq_ssc_err_interrupt._entry_ptr.36 = internal global ptr @lantiq_ssc_err_interrupt._entry.34, section ".printk_index", align 4
@lantiq_ssc_err_interrupt._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.3, i32 685, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"receive overflow error\0A\00", [40 x i8] zeroinitializer }, align 32
@lantiq_ssc_err_interrupt._entry_ptr.39 = internal global ptr @lantiq_ssc_err_interrupt._entry.37, section ".printk_index", align 4
@lantiq_ssc_err_interrupt._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.30, ptr @.str.3, i32 687, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"transmit overflow error\0A\00", [39 x i8] zeroinitializer }, align 32
@lantiq_ssc_err_interrupt._entry_ptr.42 = internal global ptr @lantiq_ssc_err_interrupt._entry.40, section ".printk_index", align 4
@lantiq_ssc_err_interrupt._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.30, ptr @.str.3, i32 689, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mode error\0A\00", [20 x i8] zeroinitializer }, align 32
@lantiq_ssc_err_interrupt._entry_ptr.45 = internal global ptr @lantiq_ssc_err_interrupt._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.47 = internal global [11 x i64] [i64 9, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 16, i64 32]
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"lantiq_ssc_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1043, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1047, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"lantiq_ssc_match\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 894, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 916, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 940, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 956, i32 30 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 964, i32 42 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 967, i32 42 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 969, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 992, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1002, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1008, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 398, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 401, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 289, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [16 x i8] c"lantiq_ssc_xway\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 864, i32 38 }
@___asan_gen_.138 = private unnamed_addr constant [15 x i8] c"lantiq_ssc_xrx\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 874, i32 38 }
@___asan_gen_.141 = private unnamed_addr constant [14 x i8] c"intel_ssc_lgm\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 884, i32 38 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 836, i32 38 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 845, i32 38 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 855, i32 38 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 679, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 681, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 683, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 685, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 687, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 689, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.193 = private constant [32 x i8] c"../drivers/spi/spi-lantiq-ssc.c\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 829, i32 65 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_alias243, ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_lantiq_ssc_driver_exit, ptr @__initcall__kmod_spi_lantiq_ssc__237_1051_lantiq_ssc_driver_init6, ptr @lantiq_ssc_driver_exit, ptr @lantiq_ssc_err_interrupt._entry, ptr @lantiq_ssc_err_interrupt._entry.31, ptr @lantiq_ssc_err_interrupt._entry.34, ptr @lantiq_ssc_err_interrupt._entry.37, ptr @lantiq_ssc_err_interrupt._entry.40, ptr @lantiq_ssc_err_interrupt._entry.43, ptr @lantiq_ssc_err_interrupt._entry_ptr, ptr @lantiq_ssc_err_interrupt._entry_ptr.33, ptr @lantiq_ssc_err_interrupt._entry_ptr.36, ptr @lantiq_ssc_err_interrupt._entry_ptr.39, ptr @lantiq_ssc_err_interrupt._entry_ptr.42, ptr @lantiq_ssc_err_interrupt._entry_ptr.45, ptr @lantiq_ssc_probe._entry, ptr @lantiq_ssc_probe._entry.13, ptr @lantiq_ssc_probe._entry.17, ptr @lantiq_ssc_probe._entry_ptr, ptr @lantiq_ssc_probe._entry_ptr.16, ptr @lantiq_ssc_probe._entry_ptr.19, ptr @lantiq_ssc_setup._entry, ptr @lantiq_ssc_setup._entry_ptr, ptr @lantiq_ssc_driver, ptr @.str, ptr @lantiq_ssc_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @lantiq_ssc_probe.__key, ptr @.str.10, ptr @lantiq_ssc_probe.__key.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @lantiq_ssc_xway, ptr @lantiq_ssc_xrx, ptr @intel_ssc_lgm, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lantiq_ssc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lantiq_ssc_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lantiq_ssc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lantiq_ssc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lantiq_ssc_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lantiq_ssc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lantiq_ssc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lantiq_ssc_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lantiq_ssc_xway to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lantiq_ssc_xrx to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_ssc_lgm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lantiq_ssc_err_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lantiq_ssc_err_interrupt._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lantiq_ssc_err_interrupt._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lantiq_ssc_err_interrupt._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lantiq_ssc_err_interrupt._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lantiq_ssc_err_interrupt._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lantiq_ssc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lantiq_ssc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lantiq_ssc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @lantiq_ssc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lantiq_ssc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %num_cs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_cs) #6
  %0 = ptrtoint ptr %num_cs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num_cs, align 4, !annotation !112
  %call = tail call ptr @of_match_device(ptr noundef nonnull @lantiq_ssc_match, ptr noundef %dev1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev1, i32 noundef 156, i1 noundef zeroext false) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %4, align 4
  %dev8 = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %dev8, align 4
  %hwcfg9 = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %hwcfg9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %2, ptr %hwcfg9, align 4
  %driver_data.i.i175 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i175 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %4, ptr %driver_data.i.i175, align 4
  %call10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %regbase = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %4, i32 0, i32 2
  %9 = ptrtoint ptr %regbase to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call10, ptr %regbase, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call10 to i32
  br label %spi_controller_put.exit

if.end16:                                         ; preds = %if.end5
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 4
  %call17 = tail call i32 %12(ptr noundef %pdev, ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.spi_controller_put.exit_crit_edge

if.end16.spi_controller_put.exit_crit_edge:       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_controller_put.exit

if.end20:                                         ; preds = %if.end16
  %call21 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #6
  %spi_clk = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %4, i32 0, i32 3
  %13 = ptrtoint ptr %spi_clk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call21, ptr %spi_clk, align 4
  %cmp.i176 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call21 to i32
  br label %spi_controller_put.exit

if.end27:                                         ; preds = %if.end20
  %call.i177 = tail call i32 @clk_prepare(ptr noundef %call21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %tobool.not.i = icmp eq i32 %call.i177, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end27.spi_controller_put.exit_crit_edge

if.end27.spi_controller_put.exit_crit_edge:       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_controller_put.exit

if.end.i:                                         ; preds = %if.end27
  %call1.i = tail call i32 @clk_enable(ptr noundef %call21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end32, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call21) #6
  br label %spi_controller_put.exit

if.end32:                                         ; preds = %if.end.i
  %call33 = tail call ptr @clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #6
  %fpi_clk = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %4, i32 0, i32 4
  %15 = ptrtoint ptr %fpi_clk to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call33, ptr %fpi_clk, align 4
  %cmp.i178 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i178, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call33 to i32
  br label %err_clk_disable

if.end39:                                         ; preds = %if.end32
  %17 = ptrtoint ptr %num_cs to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8, ptr %num_cs, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %19, ptr noundef nonnull @.str.8, ptr noundef nonnull %num_cs, i32 noundef 1, i32 noundef 0) #6
  %base_cs = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %4, i32 0, i32 17
  %20 = ptrtoint ptr %base_cs to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %base_cs, align 4
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %call.i.i179 = call i32 @of_property_read_variable_u32_array(ptr noundef %22, ptr noundef nonnull @.str.9, ptr noundef %base_cs, i32 noundef 1, i32 noundef 0) #6
  %lock = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %4, i32 0, i32 6
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @lantiq_ssc_probe.__key, i16 noundef signext 3) #6
  %bits_per_word = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %4, i32 0, i32 13
  %23 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8, ptr %bits_per_word, align 4
  %speed_hz = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %4, i32 0, i32 14
  %24 = ptrtoint ptr %speed_hz to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %speed_hz, align 4
  %25 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node, align 8
  %of_node53 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %27 = ptrtoint ptr %of_node53 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %of_node53, align 8
  %28 = ptrtoint ptr %num_cs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_cs, align 4
  %conv = trunc i32 %29 to i16
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %30 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv, ptr %num_chipselect, align 2
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 56
  %31 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %use_gpio_descriptors, align 8
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %32 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @lantiq_ssc_setup, ptr %setup, align 4
  %set_cs = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 50
  %33 = ptrtoint ptr %set_cs to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @lantiq_ssc_set_cs, ptr %set_cs, align 8
  %handle_err = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 52
  %34 = ptrtoint ptr %handle_err to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @lantiq_ssc_handle_err, ptr %handle_err, align 8
  %prepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 47
  %35 = ptrtoint ptr %prepare_message to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @lantiq_ssc_prepare_message, ptr %prepare_message, align 4
  %unprepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 48
  %36 = ptrtoint ptr %unprepare_message to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @lantiq_ssc_unprepare_message, ptr %unprepare_message, align 8
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %37 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @lantiq_ssc_transfer_one, ptr %transfer_one, align 4
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %38 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 47, ptr %mode_bits, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %39 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -2147450626, ptr %bits_per_word_mask, align 8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %40 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i180 = icmp eq ptr %41, null
  br i1 %tobool.not.i180, label %if.end.i181, label %if.end39.dev_name.exit_crit_edge

if.end39.dev_name.exit_crit_edge:                 ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i181:                                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i181, %if.end39.dev_name.exit_crit_edge
  %retval.0.i182 = phi ptr [ %43, %if.end.i181 ], [ %41, %if.end39.dev_name.exit_crit_edge ]
  %call55 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef %retval.0.i182, i32 noundef 655370, i32 noundef 1) #6
  %wq = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %4, i32 0, i32 7
  %44 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call55, ptr %wq, align 4
  %tobool57.not = icmp eq ptr %call55, null
  br i1 %tobool57.not, label %dev_name.exit.err_clk_put_crit_edge, label %do.body60

dev_name.exit.err_clk_put_crit_edge:              ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clk_put

do.body60:                                        ; preds = %dev_name.exit
  %work = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %4, i32 0, i32 8
  call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %45 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %4, i32 0, i32 8, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @lantiq_ssc_probe.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry65 = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %4, i32 0, i32 8, i32 1
  %46 = ptrtoint ptr %entry65 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %entry65, ptr %entry65, align 4
  %prev.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %4, i32 0, i32 8, i32 1, i32 1
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %entry65, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %4, i32 0, i32 8, i32 2
  %48 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @lantiq_ssc_bussy_work, ptr %func, align 4
  %49 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regbase, align 4
  %add.ptr.i = getelementptr i8, ptr %50, i32 8
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !113
  %shr = lshr i32 %51, 24
  %fifo_size_mask = getelementptr inbounds %struct.lantiq_ssc_hwcfg, ptr %2, i32 0, i32 6
  %52 = ptrtoint ptr %fifo_size_mask to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fifo_size_mask, align 4
  %and = and i32 %shr, %53
  %tx_fifo_size = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %4, i32 0, i32 15
  %54 = ptrtoint ptr %tx_fifo_size to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and, ptr %tx_fifo_size, align 4
  %shr70 = lshr i32 %51, 16
  %55 = load i32, ptr %fifo_size_mask, align 4
  %and72 = and i32 %55, %shr70
  %rx_fifo_size = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %4, i32 0, i32 16
  %56 = ptrtoint ptr %rx_fifo_size to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and72, ptr %rx_fifo_size, align 4
  %and73 = lshr i32 %51, 5
  %shr74 = and i32 %and73, 1
  %and75 = and i32 %51, 31
  call fastcc void @lantiq_ssc_hw_init(ptr noundef %4)
  %57 = ptrtoint ptr %tx_fifo_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_fifo_size, align 4
  %59 = ptrtoint ptr %rx_fifo_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rx_fifo_size, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %and75, i32 noundef %58, i32 noundef %60, i32 noundef %shr74) #9
  %call81 = call i32 @devm_spi_register_controller(ptr noundef %dev1, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %do.body60.cleanup_crit_edge, label %do.end86

do.body60.cleanup_crit_edge:                      ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end86:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #9
  %61 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wq, align 4
  call void @destroy_workqueue(ptr noundef %62) #6
  br label %err_clk_put

err_clk_put:                                      ; preds = %do.end86, %dev_name.exit.err_clk_put_crit_edge
  %err.0 = phi i32 [ %call81, %do.end86 ], [ -12, %dev_name.exit.err_clk_put_crit_edge ]
  %63 = ptrtoint ptr %fpi_clk to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fpi_clk, align 4
  call void @clk_put(ptr noundef %64) #6
  br label %err_clk_disable

err_clk_disable:                                  ; preds = %err_clk_put, %if.then36
  %err.1 = phi i32 [ %16, %if.then36 ], [ %err.0, %err_clk_put ]
  %65 = ptrtoint ptr %spi_clk to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %spi_clk, align 4
  call void @clk_disable(ptr noundef %66) #6
  call void @clk_unprepare(ptr noundef %66) #6
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %err_clk_disable, %if.then3.i, %if.end27.spi_controller_put.exit_crit_edge, %if.then24, %if.end16.spi_controller_put.exit_crit_edge, %if.then13
  %err.2 = phi i32 [ %10, %if.then13 ], [ %call17, %if.end16.spi_controller_put.exit_crit_edge ], [ %14, %if.then24 ], [ %err.1, %err_clk_disable ], [ %call1.i, %if.then3.i ], [ %call.i177, %if.end27.spi_controller_put.exit_crit_edge ]
  call void @put_device(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %do.body60.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %err.2, %spi_controller_put.exit ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %do.body60.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_cs) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lantiq_ssc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regbase.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !114
  %4 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regbase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #6, !srcloc !114
  %6 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !113
  %or.i.i = or i32 %8, 2
  %9 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regbase.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %10, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %or.i.i) #6, !srcloc !114
  %11 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i10 = getelementptr i8, ptr %12, i32 52
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10) #6, !srcloc !113
  %or.i.i11 = or i32 %13, 2
  %14 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regbase.i, align 4
  %add.ptr2.i.i12 = getelementptr i8, ptr %15, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i12, i32 %or.i.i11) #6, !srcloc !114
  %16 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i14 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i14, i32 1) #6, !srcloc !114
  %wq = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %19) #6
  %spi_clk = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %spi_clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spi_clk, align 4
  tail call void @clk_disable(ptr noundef %21) #6
  tail call void @clk_unprepare(ptr noundef %21) #6
  %fpi_clk = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %fpi_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fpi_clk, align 4
  tail call void @clk_put(ptr noundef %23) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lantiq_ssc_setup(ptr nocapture noundef readonly %spidev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %master1 = getelementptr inbounds %struct.spi_device, ptr %spidev, i32 0, i32 2
  %0 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spidev, i32 0, i32 4
  %4 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %5 to i32
  %cs_gpiod = getelementptr inbounds %struct.spi_device, ptr %spidev, i32 0, i32 14
  %6 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cs_gpiod, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lantiq_ssc_setup.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lantiq_ssc_setup, %do.end)) #6
          to label %if.then7 [label %do.end], !srcloc !115

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lantiq_ssc_setup.__UNIQUE_ID_ddebug236, ptr noundef %9, ptr noundef nonnull @.str.22, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %base_cs = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %3, i32 0, i32 17
  %10 = ptrtoint ptr %base_cs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base_cs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp = icmp ugt i32 %11, %conv
  br i1 %cmp, label %do.end13, label %if.end16

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev14 = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.23, i32 noundef %conv, i32 noundef %11) #9
  br label %cleanup

if.end16:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %conv, %11
  %add = add i32 %sub, 8
  %shl = shl nuw i32 1, %add
  %mode = getelementptr inbounds %struct.spi_device, ptr %spidev, i32 0, i32 7
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode, align 8
  %and = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  %shl22 = shl nuw i32 1, %sub
  %or = select i1 %tobool18.not, i32 0, i32 %shl22
  %regbase.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 112
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !113
  %gpocon.0 = or i32 %18, %shl
  %or.i = or i32 %gpocon.0, %or
  %19 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regbase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %20, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %or.i) #6, !srcloc !114
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end13 ], [ 0, %if.end16 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lantiq_ssc_set_cs(ptr nocapture noundef readonly %spidev, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spidev, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spidev, i32 0, i32 4
  %4 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %5 to i32
  %mode = getelementptr inbounds %struct.spi_device, ptr %spidev, i32 0, i32 7
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 8
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  %cmp = xor i1 %9, %enable
  %base_cs = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %3, i32 0, i32 17
  %10 = ptrtoint ptr %base_cs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base_cs, align 4
  %sub6 = add nuw nsw i32 %conv, 8
  %sub6.sink = select i1 %cmp, i32 %conv, i32 %sub6
  %add = sub i32 %sub6.sink, %11
  %fgpo.0 = shl nuw i32 1, %add
  %regbase.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %fgpo.0) #6, !srcloc !114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lantiq_ssc_handle_err(ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %message) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regbase.i.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !113
  %or.i.i = or i32 %4, 2
  %5 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %6, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %or.i.i) #6, !srcloc !114
  %7 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i3 = getelementptr i8, ptr %8, i32 52
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3) #6, !srcloc !113
  %or.i.i4 = or i32 %9, 2
  %10 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr2.i.i5 = getelementptr i8, ptr %11, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i5, i32 %or.i.i4) #6, !srcloc !114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lantiq_ssc_prepare_message(ptr nocapture noundef readonly %master, ptr nocapture noundef readonly %message) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regbase.i.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1) #6, !srcloc !114
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 1
  %4 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi1, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 8
  %and.i = shl i32 %7, 5
  %8 = and i32 %and.i, 32
  %9 = xor i32 %8, 32
  %and2.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %or5.i = or i32 %9, 8388672
  %or7.i = or i32 %8, 8388672
  %con_set.1.i = select i1 %tobool3.not.i, i32 %9, i32 %or5.i
  %con_clr.1.i = select i1 %tobool3.not.i, i32 %or7.i, i32 %8
  %and9.i = shl i32 %7, 1
  %10 = and i32 %and9.i, 16
  %and16.i = shl i32 %7, 2
  %11 = and i32 %and16.i, 128
  %12 = or i32 %11, %10
  %13 = or i32 %12, %con_set.1.i
  %14 = xor i32 %13, 16
  %15 = or i32 %12, %con_clr.1.i
  %16 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i5 = getelementptr i8, ptr %17, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5) #6, !srcloc !113
  %neg.i.i = xor i32 %15, -129
  %and.i.i = and i32 %neg.i.i, %18
  %or.i.i = or i32 %and.i.i, %14
  %19 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %20, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %or.i.i) #6, !srcloc !114
  %21 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i7 = getelementptr i8, ptr %22, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7, i32 2) #6, !srcloc !114
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lantiq_ssc_unprepare_message(ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %message) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %wq = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wq, align 4
  tail call void @flush_workqueue(ptr noundef %3) #6
  %regbase.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !113
  %or.i = or i32 %6, 3
  %7 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regbase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %or.i) #6, !srcloc !114
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lantiq_ssc_transfer_one(ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %spidev, ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @hw_setup_transfer(ptr noundef %1, ptr noundef %t)
  %lock.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %1, i32 0, i32 6
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %2 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t, align 4
  %tx.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %tx.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %5 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_buf.i, align 4
  %rx.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %rx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %rx.i, align 4
  %8 = load ptr, ptr %t, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  %tx_todo.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %tx_todo.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tx_todo.i, align 4
  tail call fastcc void @tx_fifo_write(ptr noundef %1) #6
  %12 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr.i = load ptr, ptr %rx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %13 = phi ptr [ %.pr.i, %if.then.i ], [ %6, %entry.if.end.i_crit_edge ]
  %tobool7.not.i = icmp eq ptr %13, null
  br i1 %tobool7.not.i, label %if.end.i.transfer_start.exit_crit_edge, label %if.then8.i

if.end.i.transfer_start.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %transfer_start.exit

if.then8.i:                                       ; preds = %if.end.i
  %len9.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %14 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len9.i, align 4
  %rx_todo.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %rx_todo.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %rx_todo.i, align 4
  %17 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx.i, align 4
  %tobool11.not.i = icmp eq ptr %18, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.then8.i.transfer_start.exit_crit_edge

if.then8.i.transfer_start.exit_crit_edge:         ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %transfer_start.exit

if.then12.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  %rx_fifo_size.i.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %1, i32 0, i32 16
  %19 = ptrtoint ptr %rx_fifo_size.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_fifo_size.i.i, align 4
  %mul.i.i = shl i32 %20, 2
  %21 = tail call i32 @llvm.umin.i32(i32 %15, i32 %mul.i.i) #6
  %regbase.i.i.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %21) #6, !srcloc !114
  br label %transfer_start.exit

transfer_start.exit:                              ; preds = %if.then12.i, %if.then8.i.transfer_start.exit_crit_edge, %if.end.i.transfer_start.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  %len16.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %24 = ptrtoint ptr %len16.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len16.i, align 4
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lantiq_ssc_bussy_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -72
  %speed_hz = getelementptr i8, ptr %work, i32 64
  %0 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed_hz, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %div173 = udiv i32 8000, %1
  %3 = shl nuw nsw i32 %div173, 1
  %conv183 = add nuw nsw i32 %3, 100
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv183) #6
  %regbase.i = getelementptr i8, ptr %work, i32 -64
  %4 = add i32 %call2.i, %2
  br label %do.body

do.body:                                          ; preds = %if.end190.do.body_crit_edge, %entry
  %5 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !113
  %and187 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  br i1 %tobool188.not, label %do.body.cleanup205_crit_edge, label %if.end190

do.body.cleanup205_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup205

if.end190:                                        ; preds = %do.body
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 778, i32 noundef 0) #6
  %call.i = tail call i32 @__cond_resched() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub193 = sub i32 %8, %4
  %cmp194 = icmp slt i32 %sub193, 0
  br i1 %cmp194, label %if.end190.do.body_crit_edge, label %do.end

if.end190.do.body_crit_edge:                      ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end:                                           ; preds = %if.end190
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %cur_msg = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 31
  %11 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_msg, align 4
  %tobool199.not = icmp eq ptr %12, null
  br i1 %tobool199.not, label %do.end.cleanup205_crit_edge, label %if.then200

do.end.cleanup205_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup205

if.then200:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %status = getelementptr inbounds %struct.spi_message, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -5, ptr %status, align 4
  br label %cleanup205

cleanup205:                                       ; preds = %if.then200, %do.end.cleanup205_crit_edge, %do.body.cleanup205_crit_edge
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  tail call void @spi_finalize_current_transfer(ptr noundef %15) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lantiq_ssc_hw_init(ptr nocapture noundef readonly %spi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwcfg1 = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %spi, i32 0, i32 5
  %0 = ptrtoint ptr %hwcfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwcfg1, align 4
  %regbase.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %spi, i32 0, i32 2
  %2 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 256) #6, !srcloc !114
  %4 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1) #6, !srcloc !114
  %6 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !113
  %or.i = or i32 %8, 3920
  %9 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regbase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %or.i) #6, !srcloc !114
  %11 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 5891) #6, !srcloc !114
  %bits_per_word = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %spi, i32 0, i32 13
  %13 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bits_per_word, align 4
  %sub.i = shl i32 %14, 16
  %shl.i = add i32 %sub.i, -65536
  %15 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %16, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i21) #6, !srcloc !113
  %and.i.i = and i32 %17, -2031617
  %or.i.i = or i32 %and.i.i, %shl.i
  %18 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regbase.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %or.i.i) #6, !srcloc !114
  %20 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %21, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i23) #6, !srcloc !113
  %and.i.i24 = and i32 %22, -8388849
  %or.i.i25 = or i32 %and.i.i24, 48
  %23 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regbase.i, align 4
  %add.ptr2.i.i26 = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i26, i32 %or.i.i25) #6, !srcloc !114
  %25 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %26, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 3928) #6, !srcloc !114
  %27 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %28, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 0) #6, !srcloc !114
  %29 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %30, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 65280) #6, !srcloc !114
  %rx_fifo_size.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %spi, i32 0, i32 16
  %31 = ptrtoint ptr %rx_fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_fifo_size.i, align 4
  %shl.i33 = shl i32 %32, 8
  %or.i34 = or i32 %shl.i33, 3
  %33 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i36 = getelementptr i8, ptr %34, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i36, i32 %or.i34) #6, !srcloc !114
  %35 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i38 = getelementptr i8, ptr %36, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i38, i32 259) #6, !srcloc !114
  %irnen_t = getelementptr inbounds %struct.lantiq_ssc_hwcfg, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %irnen_t to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irnen_t, align 4
  %irnen_r = getelementptr inbounds %struct.lantiq_ssc_hwcfg, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %irnen_r to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irnen_r, align 4
  %or = or i32 %38, %40
  %or2 = or i32 %or, 4
  %41 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %42, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %or2) #6, !srcloc !114
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hw_setup_transfer(ptr nocapture noundef %spi, ptr nocapture noundef readonly %t) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %speed_hz1 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %0 = ptrtoint ptr %speed_hz1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed_hz1, align 4
  %bits_per_word2 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %2 = ptrtoint ptr %bits_per_word2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bits_per_word2, align 1
  %conv = zext i8 %3 to i32
  %bits_per_word3 = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %spi, i32 0, i32 13
  %4 = ptrtoint ptr %bits_per_word3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_word3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp eq i32 %5, %conv
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %speed_hz5 = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %spi, i32 0, i32 14
  %6 = ptrtoint ptr %speed_hz5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed_hz5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %7)
  %cmp6.not = icmp eq i32 %1, %7
  br i1 %cmp6.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %regbase.i.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %spi, i32 0, i32 2
  %8 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1) #6, !srcloc !114
  %fpi_clk.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %spi, i32 0, i32 4
  %10 = ptrtoint ptr %fpi_clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fpi_clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %11) #6
  %div19.i = lshr i32 %call.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div19.i, i32 %1)
  %cmp.i = icmp ult i32 %div19.i, %1
  br i1 %cmp.i, label %if.then.if.end.i_crit_edge, label %if.else.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %div1.i = udiv i32 %div19.i, %1
  %sub.i = add nsw i32 %div1.i, -1
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.if.end.i_crit_edge
  %brt.0.i = phi i32 [ %sub.i, %if.else.i ], [ 0, %if.then.if.end.i_crit_edge ]
  %12 = tail call i32 @llvm.umin.i32(i32 %brt.0.i, i32 65535) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hw_setup_speed_hz.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hw_setup_transfer, %hw_setup_speed_hz.exit)) #6
          to label %if.then9.i [label %hw_setup_speed_hz.exit], !srcloc !115

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %spi, i32 0, i32 1
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hw_setup_speed_hz.__UNIQUE_ID_ddebug235, ptr noundef %14, ptr noundef nonnull @.str.25, i32 noundef %div19.i, i32 noundef %1, i32 noundef %12) #6
  br label %hw_setup_speed_hz.exit

hw_setup_speed_hz.exit:                           ; preds = %if.then9.i, %if.end.i
  %15 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i2 = getelementptr i8, ptr %16, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2, i32 %12) #6, !srcloc !114
  %sub.i3 = shl nuw nsw i32 %conv, 16
  %shl.i = add nsw i32 %sub.i3, -65536
  %17 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i5 = getelementptr i8, ptr %18, i32 16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5) #6, !srcloc !113
  %and.i.i = and i32 %19, -2031617
  %or.i.i = or i32 %and.i.i, %shl.i
  %20 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %21, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %or.i.i) #6, !srcloc !114
  %22 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i7 = getelementptr i8, ptr %23, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7, i32 2) #6, !srcloc !114
  %speed_hz8 = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %spi, i32 0, i32 14
  %24 = ptrtoint ptr %speed_hz8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %1, ptr %speed_hz8, align 4
  %25 = ptrtoint ptr %bits_per_word3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv, ptr %bits_per_word3, align 4
  br label %if.end

if.end:                                           ; preds = %hw_setup_speed_hz.exit, %lor.lhs.false.if.end_crit_edge
  %regbase.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %spi, i32 0, i32 2
  %26 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 16
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !113
  %29 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %t, align 4
  %tobool.not = icmp eq ptr %30, null
  %and = and i32 %28, -4
  %masksel = zext i1 %tobool.not to i32
  %con.0 = or i32 %and, %masksel
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %31 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_buf, align 4
  %tobool12.not = icmp eq ptr %32, null
  %masksel10 = select i1 %tobool12.not, i32 2, i32 0
  %con.1 = or i32 %con.0, %masksel10
  %33 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %34, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %con.1) #6, !srcloc !114
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tx_fifo_write(ptr nocapture noundef %spi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_fifo_size.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %spi, i32 0, i32 15
  %0 = ptrtoint ptr %tx_fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_fifo_size.i, align 4
  %hwcfg1.i.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %spi, i32 0, i32 5
  %2 = ptrtoint ptr %hwcfg1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwcfg1.i.i, align 4
  %regbase.i.i.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %spi, i32 0, i32 2
  %4 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 56
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !113
  %shr.i.i = lshr i32 %6, 8
  %fifo_size_mask.i.i = getelementptr inbounds %struct.lantiq_ssc_hwcfg, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %fifo_size_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fifo_size_mask.i.i, align 4
  %and.i.i = and i32 %shr.i.i, %8
  %sub.i = sub i32 %1, %and.i.i
  %fdx_tx_level = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %spi, i32 0, i32 18
  %tx_todo = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %spi, i32 0, i32 11
  %9 = ptrtoint ptr %fdx_tx_level to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %fdx_tx_level, align 4
  %10 = ptrtoint ptr %tx_todo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_todo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not49 = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool1.not50 = icmp eq i32 %sub.i, 0
  %or.cond51 = select i1 %tobool.not49, i1 true, i1 %tobool1.not50
  br i1 %or.cond51, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %bits_per_word = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %spi, i32 0, i32 13
  %tx11 = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %spi, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %12 = phi i32 [ %11, %while.body.lr.ph ], [ %36, %sw.epilog.while.body_crit_edge ]
  %tx_free.052 = phi i32 [ %sub.i, %while.body.lr.ph ], [ %dec31, %sw.epilog.while.body_crit_edge ]
  %13 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bits_per_word, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %do.end [
    i32 2, label %while.body.sw.bb_crit_edge
    i32 3, label %while.body.sw.bb_crit_edge53
    i32 4, label %while.body.sw.bb_crit_edge54
    i32 5, label %while.body.sw.bb_crit_edge55
    i32 6, label %while.body.sw.bb_crit_edge56
    i32 7, label %while.body.sw.bb_crit_edge57
    i32 8, label %while.body.sw.bb_crit_edge58
    i32 16, label %sw.bb4
    i32 32, label %sw.bb10
  ]

while.body.sw.bb_crit_edge58:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

while.body.sw.bb_crit_edge57:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

while.body.sw.bb_crit_edge56:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

while.body.sw.bb_crit_edge55:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

while.body.sw.bb_crit_edge54:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

while.body.sw.bb_crit_edge53:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

while.body.sw.bb_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %while.body.sw.bb_crit_edge, %while.body.sw.bb_crit_edge53, %while.body.sw.bb_crit_edge54, %while.body.sw.bb_crit_edge55, %while.body.sw.bb_crit_edge56, %while.body.sw.bb_crit_edge57, %while.body.sw.bb_crit_edge58
  %16 = ptrtoint ptr %tx11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx11, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  %conv = zext i8 %19 to i32
  %dec = add i32 %12, -1
  %20 = ptrtoint ptr %tx_todo to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %dec, ptr %tx_todo, align 4
  %incdec.ptr = getelementptr i8, ptr %17, i32 1
  store ptr %incdec.ptr, ptr %tx11, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %tx11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx11, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %22, align 2
  %conv6 = zext i16 %24 to i32
  %sub = add i32 %12, -2
  %25 = ptrtoint ptr %tx_todo to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub, ptr %tx_todo, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 2
  store ptr %add.ptr, ptr %tx11, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %tx11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx11, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %sub13 = add i32 %12, -4
  %30 = ptrtoint ptr %tx_todo to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub13, ptr %tx_todo, align 4
  %add.ptr15 = getelementptr i8, ptr %27, i32 4
  store ptr %add.ptr15, ptr %tx11, align 4
  br label %sw.epilog

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 507, i32 noundef 9, ptr noundef null) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb10, %sw.bb4, %sw.bb
  %data.0 = phi i32 [ 0, %do.end ], [ %29, %sw.bb10 ], [ %conv6, %sw.bb4 ], [ %conv, %sw.bb ]
  %31 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %data.0) #6, !srcloc !114
  %dec31 = add i32 %tx_free.052, -1
  %33 = ptrtoint ptr %fdx_tx_level to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fdx_tx_level, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr %fdx_tx_level, align 4
  %35 = ptrtoint ptr %tx_todo to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_todo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not = icmp eq i32 %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec31)
  %tobool1.not = icmp eq i32 %dec31, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lantiq_cfg_irq(ptr noundef %pdev, ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call, ptr noundef nonnull @lantiq_ssc_xmit_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef %spi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call.i39 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call4, ptr noundef nonnull @lantiq_ssc_xmit_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef %spi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool10.not = icmp eq i32 %call.i39, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %call13 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call.i40 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call13, ptr noundef nonnull @lantiq_ssc_err_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef %spi) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i40, %if.end16 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ %call.i39, %if.end7.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lantiq_ssc_xmit_interrupt(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwcfg1 = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %hwcfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwcfg1, align 4
  %irncr = getelementptr inbounds %struct.lantiq_ssc_hwcfg, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %irncr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irncr, align 4
  %regbase.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !113
  %lock = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %data, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %irq_ack = getelementptr inbounds %struct.lantiq_ssc_hwcfg, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %irq_ack to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %irq_ack, align 4, !range !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %irncr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irncr, align 4
  %11 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %12, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %6) #6, !srcloc !114
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %data, i32 0, i32 9
  %13 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx, align 4
  %tobool3.not = icmp eq ptr %14, null
  %rx17 = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %data, i32 0, i32 10
  %15 = ptrtoint ptr %rx17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx17, align 4
  %tobool18.not = icmp eq ptr %16, null
  br i1 %tobool3.not, label %if.else16, label %if.then4

if.then4:                                         ; preds = %if.end
  br i1 %tobool18.not, label %if.then4.if.end8_crit_edge, label %land.lhs.true

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

land.lhs.true:                                    ; preds = %if.then4
  %rx_todo = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %data, i32 0, i32 12
  %17 = ptrtoint ptr %rx_todo to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_todo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool6.not = icmp eq i32 %18, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end8_crit_edge, label %if.then7

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  %19 = ptrtoint ptr %hwcfg1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hwcfg1, align 4
  %21 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 56
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !113
  %fifo_size_mask.i.i = getelementptr inbounds %struct.lantiq_ssc_hwcfg, ptr %20, i32 0, i32 6
  %24 = ptrtoint ptr %fifo_size_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fifo_size_mask.i.i, align 4
  %and.i.i = and i32 %25, %23
  %fdx_tx_level.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %data, i32 0, i32 18
  %26 = ptrtoint ptr %fdx_tx_level.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fdx_tx_level.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %27)
  %cmp.not57.i = icmp eq i32 %and.i.i, %27
  br i1 %cmp.not57.i, label %if.then7.while.cond2.preheader.i_crit_edge, label %if.then7.while.body.i_crit_edge

if.then7.while.body.i_crit_edge:                  ; preds = %if.then7
  br label %while.body.i

if.then7.while.cond2.preheader.i_crit_edge:       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond2.preheader.i

while.cond2.preheader.i:                          ; preds = %while.body.i.while.cond2.preheader.i_crit_edge, %if.then7.while.cond2.preheader.i_crit_edge
  %rx_fill.0.lcssa.i = phi i32 [ %and.i.i, %if.then7.while.cond2.preheader.i_crit_edge ], [ %and.i56.i, %while.body.i.while.cond2.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_fill.0.lcssa.i)
  %tobool.not58.i = icmp eq i32 %rx_fill.0.lcssa.i, 0
  br i1 %tobool.not58.i, label %while.cond2.preheader.i.if.end8_crit_edge, label %while.body3.lr.ph.i

while.cond2.preheader.i.if.end8_crit_edge:        ; preds = %while.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

while.body3.lr.ph.i:                              ; preds = %while.cond2.preheader.i
  %bits_per_word.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %data, i32 0, i32 13
  br label %while.body3.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then7.while.body.i_crit_edge
  %28 = ptrtoint ptr %hwcfg1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hwcfg1, align 4
  %30 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i54.i = getelementptr i8, ptr %31, i32 56
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i54.i) #6, !srcloc !113
  %fifo_size_mask.i55.i = getelementptr inbounds %struct.lantiq_ssc_hwcfg, ptr %29, i32 0, i32 6
  %33 = ptrtoint ptr %fifo_size_mask.i55.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fifo_size_mask.i55.i, align 4
  %and.i56.i = and i32 %34, %32
  %35 = ptrtoint ptr %fdx_tx_level.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fdx_tx_level.i, align 4
  %cmp.not.i = icmp eq i32 %and.i56.i, %36
  br i1 %cmp.not.i, label %while.body.i.while.cond2.preheader.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.while.cond2.preheader.i_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond2.preheader.i

while.body3.i:                                    ; preds = %sw.epilog.i.while.body3.i_crit_edge, %while.body3.lr.ph.i
  %rx_fill.159.i = phi i32 [ %rx_fill.0.lcssa.i, %while.body3.lr.ph.i ], [ %dec32.i, %sw.epilog.i.while.body3.i_crit_edge ]
  %37 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 36
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !113
  %40 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bits_per_word.i, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %41, label %do.end.i [
    i32 2, label %while.body3.i.sw.bb.i_crit_edge
    i32 3, label %while.body3.i.sw.bb.i_crit_edge80
    i32 4, label %while.body3.i.sw.bb.i_crit_edge81
    i32 5, label %while.body3.i.sw.bb.i_crit_edge82
    i32 6, label %while.body3.i.sw.bb.i_crit_edge83
    i32 7, label %while.body3.i.sw.bb.i_crit_edge84
    i32 8, label %while.body3.i.sw.bb.i_crit_edge85
    i32 16, label %sw.bb6.i
    i32 32, label %sw.bb11.i
  ]

while.body3.i.sw.bb.i_crit_edge85:                ; preds = %while.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

while.body3.i.sw.bb.i_crit_edge84:                ; preds = %while.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

while.body3.i.sw.bb.i_crit_edge83:                ; preds = %while.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

while.body3.i.sw.bb.i_crit_edge82:                ; preds = %while.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

while.body3.i.sw.bb.i_crit_edge81:                ; preds = %while.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

while.body3.i.sw.bb.i_crit_edge80:                ; preds = %while.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

while.body3.i.sw.bb.i_crit_edge:                  ; preds = %while.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %while.body3.i.sw.bb.i_crit_edge, %while.body3.i.sw.bb.i_crit_edge80, %while.body3.i.sw.bb.i_crit_edge81, %while.body3.i.sw.bb.i_crit_edge82, %while.body3.i.sw.bb.i_crit_edge83, %while.body3.i.sw.bb.i_crit_edge84, %while.body3.i.sw.bb.i_crit_edge85
  %43 = ptrtoint ptr %rx17 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx17, align 4
  %conv.i = trunc i32 %39 to i8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv.i, ptr %44, align 1
  %46 = ptrtoint ptr %rx_todo to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_todo, align 4
  %dec.i = add i32 %47, -1
  store i32 %dec.i, ptr %rx_todo, align 4
  %48 = load ptr, ptr %rx17, align 4
  %incdec.ptr.i = getelementptr i8, ptr %48, i32 1
  store ptr %incdec.ptr.i, ptr %rx17, align 4
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %while.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %rx17 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rx17, align 4
  %conv8.i = trunc i32 %39 to i16
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv8.i, ptr %50, align 2
  %52 = ptrtoint ptr %rx_todo to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_todo, align 4
  %sub.i = add i32 %53, -2
  store i32 %sub.i, ptr %rx_todo, align 4
  %54 = load ptr, ptr %rx17, align 4
  %add.ptr.i60 = getelementptr i8, ptr %54, i32 2
  store ptr %add.ptr.i60, ptr %rx17, align 4
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %while.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %rx17 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rx17, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %39, ptr %56, align 4
  %58 = ptrtoint ptr %rx_todo to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_todo, align 4
  %sub14.i = add i32 %59, -4
  store i32 %sub14.i, ptr %rx_todo, align 4
  %60 = load ptr, ptr %rx17, align 4
  %add.ptr16.i = getelementptr i8, ptr %60, i32 4
  store ptr %add.ptr16.i, ptr %rx17, align 4
  br label %sw.epilog.i

do.end.i:                                         ; preds = %while.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 556, i32 noundef 9, ptr noundef null) #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i, %sw.bb11.i, %sw.bb6.i, %sw.bb.i
  %dec32.i = add i32 %rx_fill.159.i, -1
  %tobool.not.i = icmp eq i32 %dec32.i, 0
  br i1 %tobool.not.i, label %sw.epilog.i.if.end8_crit_edge, label %sw.epilog.i.while.body3.i_crit_edge

sw.epilog.i.while.body3.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body3.i

sw.epilog.i.if.end8_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end8:                                          ; preds = %sw.epilog.i.if.end8_crit_edge, %while.cond2.preheader.i.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %if.then4.if.end8_crit_edge
  %tx_todo = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %data, i32 0, i32 11
  %61 = ptrtoint ptr %tx_todo to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_todo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool9.not = icmp eq i32 %62, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @tx_fifo_write(ptr noundef %data)
  br label %cleanup

if.else:                                          ; preds = %if.end8
  %63 = ptrtoint ptr %hwcfg1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hwcfg1, align 4
  %65 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i61 = getelementptr i8, ptr %66, i32 56
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i61) #6, !srcloc !113
  %shr.i = lshr i32 %67, 8
  %fifo_size_mask.i = getelementptr inbounds %struct.lantiq_ssc_hwcfg, ptr %64, i32 0, i32 6
  %68 = ptrtoint ptr %fifo_size_mask.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fifo_size_mask.i, align 4
  %and.i = and i32 %shr.i, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not = icmp eq i32 %and.i, 0
  br i1 %tobool12.not, label %if.else.completed_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.completed_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %completed

if.else16:                                        ; preds = %if.end
  br i1 %tobool18.not, label %if.else16.cleanup_crit_edge, label %if.then19

if.else16.cleanup_crit_edge:                      ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19:                                        ; preds = %if.else16
  %rx_todo20 = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %data, i32 0, i32 12
  %70 = ptrtoint ptr %rx_todo20 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_todo20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool21.not = icmp eq i32 %71, 0
  br i1 %tobool21.not, label %if.then19.completed_crit_edge, label %if.then22

if.then19.completed_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %completed

if.then22:                                        ; preds = %if.then19
  %72 = ptrtoint ptr %hwcfg1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hwcfg1, align 4
  %74 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i.i64 = getelementptr i8, ptr %75, i32 56
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i64) #6, !srcloc !113
  %fifo_size_mask.i.i65 = getelementptr inbounds %struct.lantiq_ssc_hwcfg, ptr %73, i32 0, i32 6
  %77 = ptrtoint ptr %fifo_size_mask.i.i65 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %fifo_size_mask.i.i65, align 4
  %and.i.i66 = and i32 %78, %76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i66)
  %tobool.not44.i = icmp eq i32 %and.i.i66, 0
  br i1 %tobool.not44.i, label %if.then22.rx_fifo_read_half_duplex.exit_crit_edge, label %if.then22.while.body.i67_crit_edge

if.then22.while.body.i67_crit_edge:               ; preds = %if.then22
  br label %while.body.i67

if.then22.rx_fifo_read_half_duplex.exit_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %rx_fifo_read_half_duplex.exit

while.body.i67:                                   ; preds = %if.end.i.while.body.i67_crit_edge, %if.then22.while.body.i67_crit_edge
  %rx_fill.045.i = phi i32 [ %dec19.i, %if.end.i.while.body.i67_crit_edge ], [ %and.i.i66, %if.then22.while.body.i67_crit_edge ]
  %79 = ptrtoint ptr %rx_todo20 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rx_todo20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %80)
  %cmp.i = icmp ult i32 %80, 4
  %81 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regbase.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i67
  %add.ptr.i.i68 = getelementptr i8, ptr %82, i32 20
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68) #6, !srcloc !113
  %and.i69 = lshr i32 %83, 28
  %shr.i70 = and i32 %and.i69, 7
  %84 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i37.i = getelementptr i8, ptr %85, i32 36
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37.i) #6, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i70)
  %tobool4.not40.i = icmp eq i32 %shr.i70, 0
  br i1 %tobool4.not40.i, label %if.then.i.if.end.i_crit_edge, label %while.body5.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

while.body5.i:                                    ; preds = %if.then.i
  %sub.i71 = shl nuw nsw i32 %shr.i70, 3
  %87 = ptrtoint ptr %rx17 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rx17, align 4
  %shift.0.i = add nsw i32 %sub.i71, -8
  %shr6.i = lshr i32 %86, %shift.0.i
  %conv.i72 = trunc i32 %shr6.i to i8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv.i72, ptr %88, align 1
  %90 = ptrtoint ptr %rx_todo20 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rx_todo20, align 4
  %dec10.i = add i32 %91, -1
  store i32 %dec10.i, ptr %rx_todo20, align 4
  %92 = load ptr, ptr %rx17, align 4
  %incdec.ptr12.i = getelementptr i8, ptr %92, i32 1
  store ptr %incdec.ptr12.i, ptr %rx17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i70)
  %tobool4.not.i = icmp eq i32 %shr.i70, 1
  br i1 %tobool4.not.i, label %while.body5.i.if.end.i_crit_edge, label %while.body5.i.1

while.body5.i.if.end.i_crit_edge:                 ; preds = %while.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

while.body5.i.1:                                  ; preds = %while.body5.i
  %incdec.ptr.i73 = getelementptr i8, ptr %88, i32 1
  %shift.0.i.1 = add nsw i32 %sub.i71, -16
  %shr6.i.1 = lshr i32 %86, %shift.0.i.1
  %conv.i72.1 = trunc i32 %shr6.i.1 to i8
  %93 = ptrtoint ptr %incdec.ptr.i73 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv.i72.1, ptr %incdec.ptr.i73, align 1
  %94 = ptrtoint ptr %rx_todo20 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rx_todo20, align 4
  %dec10.i.1 = add i32 %95, -1
  store i32 %dec10.i.1, ptr %rx_todo20, align 4
  %96 = ptrtoint ptr %rx17 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rx17, align 4
  %incdec.ptr12.i.1 = getelementptr i8, ptr %97, i32 1
  store ptr %incdec.ptr12.i.1, ptr %rx17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i70)
  %tobool4.not.i.1 = icmp eq i32 %shr.i70, 2
  br i1 %tobool4.not.i.1, label %while.body5.i.1.if.end.i_crit_edge, label %while.body5.i.2

while.body5.i.1.if.end.i_crit_edge:               ; preds = %while.body5.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

while.body5.i.2:                                  ; preds = %while.body5.i.1
  %incdec.ptr.i73.1 = getelementptr i8, ptr %88, i32 2
  %shift.0.i.2 = add nsw i32 %sub.i71, -24
  %shr6.i.2 = lshr i32 %86, %shift.0.i.2
  %conv.i72.2 = trunc i32 %shr6.i.2 to i8
  %98 = ptrtoint ptr %incdec.ptr.i73.1 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv.i72.2, ptr %incdec.ptr.i73.1, align 1
  %99 = ptrtoint ptr %rx_todo20 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rx_todo20, align 4
  %dec10.i.2 = add i32 %100, -1
  store i32 %dec10.i.2, ptr %rx_todo20, align 4
  %101 = ptrtoint ptr %rx17 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rx17, align 4
  %incdec.ptr12.i.2 = getelementptr i8, ptr %102, i32 1
  store ptr %incdec.ptr12.i.2, ptr %rx17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i70)
  %tobool4.not.i.2 = icmp eq i32 %shr.i70, 3
  br i1 %tobool4.not.i.2, label %while.body5.i.2.if.end.i_crit_edge, label %while.body5.i.3

while.body5.i.2.if.end.i_crit_edge:               ; preds = %while.body5.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

while.body5.i.3:                                  ; preds = %while.body5.i.2
  %incdec.ptr.i73.2 = getelementptr i8, ptr %88, i32 3
  %shift.0.i.3 = add nsw i32 %sub.i71, -32
  %shr6.i.3 = lshr i32 %86, %shift.0.i.3
  %conv.i72.3 = trunc i32 %shr6.i.3 to i8
  %103 = ptrtoint ptr %incdec.ptr.i73.2 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv.i72.3, ptr %incdec.ptr.i73.2, align 1
  %104 = ptrtoint ptr %rx_todo20 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rx_todo20, align 4
  %dec10.i.3 = add i32 %105, -1
  store i32 %dec10.i.3, ptr %rx_todo20, align 4
  %106 = ptrtoint ptr %rx17 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rx17, align 4
  %incdec.ptr12.i.3 = getelementptr i8, ptr %107, i32 1
  store ptr %incdec.ptr12.i.3, ptr %rx17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr.i70)
  %tobool4.not.i.3 = icmp eq i32 %shr.i70, 4
  br i1 %tobool4.not.i.3, label %while.body5.i.3.if.end.i_crit_edge, label %while.body5.i.4

while.body5.i.3.if.end.i_crit_edge:               ; preds = %while.body5.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

while.body5.i.4:                                  ; preds = %while.body5.i.3
  %incdec.ptr.i73.3 = getelementptr i8, ptr %88, i32 4
  %shift.0.i.4 = add nsw i32 %sub.i71, -40
  %shr6.i.4 = lshr i32 %86, %shift.0.i.4
  %conv.i72.4 = trunc i32 %shr6.i.4 to i8
  %108 = ptrtoint ptr %incdec.ptr.i73.3 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv.i72.4, ptr %incdec.ptr.i73.3, align 1
  %109 = ptrtoint ptr %rx_todo20 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rx_todo20, align 4
  %dec10.i.4 = add i32 %110, -1
  store i32 %dec10.i.4, ptr %rx_todo20, align 4
  %111 = ptrtoint ptr %rx17 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rx17, align 4
  %incdec.ptr12.i.4 = getelementptr i8, ptr %112, i32 1
  store ptr %incdec.ptr12.i.4, ptr %rx17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %shr.i70)
  %tobool4.not.i.4 = icmp eq i32 %shr.i70, 5
  br i1 %tobool4.not.i.4, label %while.body5.i.4.if.end.i_crit_edge, label %while.body5.i.5

while.body5.i.4.if.end.i_crit_edge:               ; preds = %while.body5.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

while.body5.i.5:                                  ; preds = %while.body5.i.4
  %incdec.ptr.i73.4 = getelementptr i8, ptr %88, i32 5
  %shift.0.i.5 = add nsw i32 %sub.i71, -48
  %shr6.i.5 = lshr i32 %86, %shift.0.i.5
  %conv.i72.5 = trunc i32 %shr6.i.5 to i8
  %113 = ptrtoint ptr %incdec.ptr.i73.4 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv.i72.5, ptr %incdec.ptr.i73.4, align 1
  %114 = ptrtoint ptr %rx_todo20 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rx_todo20, align 4
  %dec10.i.5 = add i32 %115, -1
  store i32 %dec10.i.5, ptr %rx_todo20, align 4
  %116 = ptrtoint ptr %rx17 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rx17, align 4
  %incdec.ptr12.i.5 = getelementptr i8, ptr %117, i32 1
  store ptr %incdec.ptr12.i.5, ptr %rx17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %shr.i70)
  %tobool4.not.i.5 = icmp eq i32 %shr.i70, 6
  br i1 %tobool4.not.i.5, label %while.body5.i.5.if.end.i_crit_edge, label %while.body5.i.6

while.body5.i.5.if.end.i_crit_edge:               ; preds = %while.body5.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

while.body5.i.6:                                  ; preds = %while.body5.i.5
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr.i73.5 = getelementptr i8, ptr %88, i32 6
  %shift.0.i.6 = add nsw i32 %sub.i71, -56
  %shr6.i.6 = lshr i32 %86, %shift.0.i.6
  %conv.i72.6 = trunc i32 %shr6.i.6 to i8
  %118 = ptrtoint ptr %incdec.ptr.i73.5 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv.i72.6, ptr %incdec.ptr.i73.5, align 1
  %119 = ptrtoint ptr %rx_todo20 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rx_todo20, align 4
  %dec10.i.6 = add i32 %120, -1
  store i32 %dec10.i.6, ptr %rx_todo20, align 4
  %121 = ptrtoint ptr %rx17 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %rx17, align 4
  %incdec.ptr12.i.6 = getelementptr i8, ptr %122, i32 1
  store ptr %incdec.ptr12.i.6, ptr %rx17, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %while.body.i67
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i39.i = getelementptr i8, ptr %82, i32 36
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39.i) #6, !srcloc !113
  %124 = ptrtoint ptr %rx17 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rx17, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %123, ptr %125, align 4
  %127 = ptrtoint ptr %rx_todo20 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rx_todo20, align 4
  %sub17.i = add i32 %128, -4
  store i32 %sub17.i, ptr %rx_todo20, align 4
  %129 = load ptr, ptr %rx17, align 4
  %add.ptr.i75 = getelementptr i8, ptr %129, i32 4
  store ptr %add.ptr.i75, ptr %rx17, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %while.body5.i.6, %while.body5.i.5.if.end.i_crit_edge, %while.body5.i.4.if.end.i_crit_edge, %while.body5.i.3.if.end.i_crit_edge, %while.body5.i.2.if.end.i_crit_edge, %while.body5.i.1.if.end.i_crit_edge, %while.body5.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %dec19.i = add i32 %rx_fill.045.i, -1
  %tobool.not.i76 = icmp eq i32 %dec19.i, 0
  br i1 %tobool.not.i76, label %if.end.i.rx_fifo_read_half_duplex.exit_crit_edge, label %if.end.i.while.body.i67_crit_edge

if.end.i.while.body.i67_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i67

if.end.i.rx_fifo_read_half_duplex.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rx_fifo_read_half_duplex.exit

rx_fifo_read_half_duplex.exit:                    ; preds = %if.end.i.rx_fifo_read_half_duplex.exit_crit_edge, %if.then22.rx_fifo_read_half_duplex.exit_crit_edge
  %130 = ptrtoint ptr %rx_todo20 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %rx_todo20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool24.not = icmp eq i32 %131, 0
  br i1 %tobool24.not, label %rx_fifo_read_half_duplex.exit.completed_crit_edge, label %if.then25

rx_fifo_read_half_duplex.exit.completed_crit_edge: ; preds = %rx_fifo_read_half_duplex.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %completed

if.then25:                                        ; preds = %rx_fifo_read_half_duplex.exit
  call void @__sanitizer_cov_trace_pc() #8
  %rx_fifo_size.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %data, i32 0, i32 16
  %132 = ptrtoint ptr %rx_fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %rx_fifo_size.i, align 4
  %mul.i = shl i32 %133, 2
  %134 = tail call i32 @llvm.umin.i32(i32 %131, i32 %mul.i) #6
  %135 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i79 = getelementptr i8, ptr %136, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i79, i32 %134) #6, !srcloc !114
  br label %cleanup

completed:                                        ; preds = %rx_fifo_read_half_duplex.exit.completed_crit_edge, %if.then19.completed_crit_edge, %if.else.completed_crit_edge
  %wq = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %data, i32 0, i32 7
  %137 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %wq, align 4
  %work = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %data, i32 0, i32 8
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %138, ptr noundef %work) #6
  br label %cleanup

cleanup:                                          ; preds = %completed, %if.then25, %if.else16.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then10
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lantiq_ssc_err_interrupt(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwcfg1 = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %hwcfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwcfg1, align 4
  %regbase.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !113
  %irncr = getelementptr inbounds %struct.lantiq_ssc_hwcfg, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %irncr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irncr, align 4
  %7 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %8, i32 %6
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i86) #6, !srcloc !113
  %and = and i32 %4, 8064
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %data, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %irq_ack = getelementptr inbounds %struct.lantiq_ssc_hwcfg, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %irq_ack to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %irq_ack, align 4, !range !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %irncr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irncr, align 4
  %14 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %15, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 %9) #6, !srcloc !114
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %and7 = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end10_crit_edge, label %do.end

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %data, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.29) #9
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.end6.if.end10_crit_edge
  %and11 = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end18_crit_edge, label %do.end16

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %dev17 = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.32) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end16, %if.end10.if.end18_crit_edge
  %and19 = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end26_crit_edge, label %do.end24

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %dev25 = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %data, i32 0, i32 1
  %20 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.35) #9
  br label %if.end26

if.end26:                                         ; preds = %do.end24, %if.end18.if.end26_crit_edge
  %and27 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end34_crit_edge, label %do.end32

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %dev33 = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %data, i32 0, i32 1
  %22 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.38) #9
  br label %if.end34

if.end34:                                         ; preds = %do.end32, %if.end26.if.end34_crit_edge
  %and35 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end42_crit_edge, label %do.end40

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %dev41 = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %data, i32 0, i32 1
  %24 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.41) #9
  br label %if.end42

if.end42:                                         ; preds = %do.end40, %if.end34.if.end42_crit_edge
  %and43 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.if.end50_crit_edge, label %do.end48

if.end42.if.end50_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %dev49 = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %data, i32 0, i32 1
  %26 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.44) #9
  br label %if.end50

if.end50:                                         ; preds = %do.end48, %if.end42.if.end50_crit_edge
  %28 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %29, i32 24
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90) #6, !srcloc !113
  %or.i = or i32 %30, 3920
  %31 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regbase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %32, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %or.i) #6, !srcloc !114
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %cur_msg = getelementptr inbounds %struct.spi_controller, ptr %34, i32 0, i32 31
  %35 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cur_msg, align 4
  %tobool51.not = icmp eq ptr %36, null
  br i1 %tobool51.not, label %if.end50.if.end55_crit_edge, label %if.then52

if.end50.if.end55_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %status = getelementptr inbounds %struct.spi_message, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -5, ptr %status, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.end50.if.end55_crit_edge
  %wq = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %data, i32 0, i32 7
  %38 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wq, align 4
  %work = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %data, i32 0, i32 8
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %39, ptr noundef %work) #6
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end55 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_lgm_cfg_irq(ptr noundef %pdev, ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call, ptr noundef nonnull @intel_lgm_ssc_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.46, ptr noundef %spi) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_lgm_ssc_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwcfg1 = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %hwcfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwcfg1, align 4
  %irncr = getelementptr inbounds %struct.lantiq_ssc_hwcfg, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %irncr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irncr, align 4
  %regbase.i = getelementptr inbounds %struct.lantiq_ssc_spi, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !113
  %and = and i32 %6, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 @lantiq_ssc_err_interrupt(i32 noundef %irq, ptr noundef %data)
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %irnen_t = getelementptr inbounds %struct.lantiq_ssc_hwcfg, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %irnen_t to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irnen_t, align 4
  %and7 = and i32 %8, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.end6.if.then11_crit_edge

if.end6.if.then11_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end6
  %irnen_r = getelementptr inbounds %struct.lantiq_ssc_hwcfg, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %irnen_r to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irnen_r, align 4
  %and9 = and i32 %10, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.end6.if.then11_crit_edge
  %call12 = tail call i32 @lantiq_ssc_xmit_interrupt(i32 noundef %irq, ptr noundef %data)
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %lor.lhs.false.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then4 ], [ 1, %if.then11 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36, !37, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !68, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__initcall__kmod_spi_lantiq_ssc__237_1051_lantiq_ssc_driver_init6, !1, !"__initcall__kmod_spi_lantiq_ssc__237_1051_lantiq_ssc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 1051, i32 1}
!2 = !{ptr @__exitcall_lantiq_ssc_driver_exit, !1, !"__exitcall_lantiq_ssc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description238, !4, !"__UNIQUE_ID_description238", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 1053, i32 1}
!5 = !{ptr @__UNIQUE_ID_author239, !6, !"__UNIQUE_ID_author239", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 1054, i32 1}
!7 = !{ptr @__UNIQUE_ID_author240, !8, !"__UNIQUE_ID_author240", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 1055, i32 1}
!9 = !{ptr @__UNIQUE_ID_file241, !10, !"__UNIQUE_ID_file241", i1 false, i1 false}
!10 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 1056, i32 1}
!11 = !{ptr @__UNIQUE_ID_license242, !10, !"__UNIQUE_ID_license242", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias243, !13, !"__UNIQUE_ID_alias243", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 1057, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 1047, i32 11}
!16 = !{ptr @lantiq_ssc_driver, !17, !"lantiq_ssc_driver", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 1043, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 916, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @lantiq_ssc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @lantiq_ssc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 940, i32 35}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 956, i32 30}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 964, i32 42}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 967, i32 42}
!34 = !{ptr @lantiq_ssc_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 969, i32 2}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @lantiq_ssc_probe.__key.11, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 992, i32 2}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 1002, i32 2}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @lantiq_ssc_probe._entry.13, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @lantiq_ssc_probe._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 1008, i32 3}
!47 = !{ptr @lantiq_ssc_probe._entry.17, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @lantiq_ssc_probe._entry_ptr.19, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 398, i32 2}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @lantiq_ssc_setup.__UNIQUE_ID_ddebug236, !50, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 401, i32 3}
!56 = !{ptr @lantiq_ssc_setup._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @lantiq_ssc_setup._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 289, i32 2}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @hw_setup_speed_hz.__UNIQUE_ID_ddebug235, !59, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!62 = !{ptr @lantiq_ssc_match, !63, !"lantiq_ssc_match", i1 false, i1 false}
!63 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 894, i32 34}
!64 = !{ptr @lantiq_ssc_xway, !65, !"lantiq_ssc_xway", i1 false, i1 false}
!65 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 864, i32 38}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 836, i32 38}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 845, i32 38}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 855, i32 38}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 679, i32 3}
!74 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @lantiq_ssc_err_interrupt._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @lantiq_ssc_err_interrupt._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 681, i32 3}
!79 = !{ptr @lantiq_ssc_err_interrupt._entry.31, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @lantiq_ssc_err_interrupt._entry_ptr.33, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 683, i32 3}
!83 = !{ptr @lantiq_ssc_err_interrupt._entry.34, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @lantiq_ssc_err_interrupt._entry_ptr.36, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 685, i32 3}
!87 = !{ptr @lantiq_ssc_err_interrupt._entry.37, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @lantiq_ssc_err_interrupt._entry_ptr.39, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 687, i32 3}
!91 = !{ptr @lantiq_ssc_err_interrupt._entry.40, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @lantiq_ssc_err_interrupt._entry_ptr.42, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 689, i32 3}
!95 = !{ptr @lantiq_ssc_err_interrupt._entry.43, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @lantiq_ssc_err_interrupt._entry_ptr.45, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @lantiq_ssc_xrx, !98, !"lantiq_ssc_xrx", i1 false, i1 false}
!98 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 874, i32 38}
!99 = !{ptr @intel_ssc_lgm, !100, !"intel_ssc_lgm", i1 false, i1 false}
!100 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 884, i32 38}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/spi/spi-lantiq-ssc.c", i32 829, i32 65}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{!"auto-init"}
!113 = !{i64 5002862}
!114 = !{i64 5002444}
!115 = !{i64 2148717818, i64 2148717823, i64 2148717836, i64 2148717880, i64 2148717914, i64 2148717935}
!116 = !{i8 0, i8 2}
