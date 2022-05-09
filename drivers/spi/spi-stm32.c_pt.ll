; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-stm32.c_pt.bc'
source_filename = "../drivers/spi/spi-stm32.c"
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
%struct.atomic_t = type { i32 }
%struct.stm32_spi_cfg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i16 }
%struct.stm32_spi_regspec = type { %struct.stm32_spi_reg, %struct.stm32_spi_reg, %struct.stm32_spi_reg, %struct.stm32_spi_reg, %struct.stm32_spi_reg, %struct.stm32_spi_reg, %struct.stm32_spi_reg, %struct.stm32_spi_reg, %struct.stm32_spi_reg }
%struct.stm32_spi_reg = type { i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.stm32_spi = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, i32, i32, ptr, ptr, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
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

@__initcall__kmod_spi_stm32__310_2034_stm32_spi_driver_init6 = internal global ptr @stm32_spi_driver_init, section ".initcall6.init", align 4
@stm32_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_spi_probe, ptr @stm32_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_spi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_spi_driver_exit = internal global ptr @stm32_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias311 = internal constant [35 x i8] c"spi_stm32.alias=platform:spi_stm32\00", section ".modinfo", align 1
@__UNIQUE_ID_description312 = internal constant [69 x i8] c"spi_stm32.description=STMicroelectronics STM32 SPI Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author313 = internal constant [58 x i8] c"spi_stm32.author=Amelie Delaunay <amelie.delaunay@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file314 = internal constant [37 x i8] c"spi_stm32.file=drivers/spi/spi-stm32\00", section ".modinfo", align 1
@__UNIQUE_ID_license315 = internal constant [25 x i8] c"spi_stm32.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi_stm32\00", [22 x i8] zeroinitializer }, align 32
@stm32_spi_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32h7_spi_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f4-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32f4_spi_cfg }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@stm32_spi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_spi_suspend, ptr @stm32_spi_resume, ptr @stm32_spi_suspend, ptr @stm32_spi_resume, ptr @stm32_spi_suspend, ptr @stm32_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_spi_runtime_suspend, ptr @stm32_spi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@stm32_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1768, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"spi master allocation failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stm32_spi_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/spi/spi-stm32.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_spi_probe._entry_ptr = internal global ptr @stm32_spi_probe._entry, section ".printk_index", align 4
@stm32_spi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&spi->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to get irq\0A\00", [45 x i8] zeroinitializer }, align 32
@stm32_spi_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1800, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"irq%d request failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@stm32_spi_probe._entry_ptr.10 = internal global ptr @stm32_spi_probe._entry.8, section ".printk_index", align 4
@stm32_spi_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1807, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk get failed: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32_spi_probe._entry_ptr.13 = internal global ptr @stm32_spi_probe._entry.11, section ".printk_index", align 4
@stm32_spi_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1813, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clk enable failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@stm32_spi_probe._entry_ptr.16 = internal global ptr @stm32_spi_probe._entry.14, section ".printk_index", align 4
@stm32_spi_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1818, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk rate = 0\0A\00", [18 x i8] zeroinitializer }, align 32
@stm32_spi_probe._entry_ptr.19 = internal global ptr @stm32_spi_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get reset\0A\00", [43 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@stm32_spi_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1842, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"controller configuration failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@stm32_spi_probe._entry_ptr.23 = internal global ptr @stm32_spi_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@stm32_spi_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 1867, ptr @.str.27, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to request tx dma channel\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@stm32_spi_probe._entry_ptr.28 = internal global ptr @stm32_spi_probe._entry.25, section ".printk_index", align 4
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@stm32_spi_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1879, ptr @.str.27, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to request rx dma channel\0A\00", [62 x i8] zeroinitializer }, align 32
@stm32_spi_probe._entry_ptr.32 = internal global ptr @stm32_spi_probe._entry.30, section ".printk_index", align 4
@stm32_spi_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 1897, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"spi master registration failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@stm32_spi_probe._entry_ptr.35 = internal global ptr @stm32_spi_probe._entry.33, section ".printk_index", align 4
@stm32_spi_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.2, ptr @.str.3, i32 1904, ptr @.str.38, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"driver initialized\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@stm32_spi_probe._entry_ptr.39 = internal global ptr @stm32_spi_probe._entry.36, section ".printk_index", align 4
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"st,spi-midi-ns\00", [17 x i8] zeroinitializer }, align 32
@stm32_spi_prepare_msg.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 -17, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32_spi_prepare_msg\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%dns inter-data idleness\0A\00", [38 x i8] zeroinitializer }, align 32
@stm32_spi_prepare_msg.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.43, i8 0, i8 -12, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cpol=%d cpha=%d lsb_first=%d cs_high=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@stm32_spi_transfer_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 1615, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SPI transfer setup failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32_spi_transfer_one\00", [41 x i8] zeroinitializer }, align 32
@stm32_spi_transfer_one._entry_ptr = internal global ptr @stm32_spi_transfer_one._entry, section ".printk_index", align 4
@stm32_spi_transfer_one_setup.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.3, ptr @.str.47, i8 1, i8 -119, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"stm32_spi_transfer_one_setup\00", [35 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"transfer communication mode set to %d\0A\00", [57 x i8] zeroinitializer }, align 32
@stm32_spi_transfer_one_setup.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.3, ptr @.str.48, i8 1, i8 -118, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"data frame of %d-bit, data packet of %d data frames\0A\00", [43 x i8] zeroinitializer }, align 32
@stm32_spi_transfer_one_setup.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.3, ptr @.str.49, i8 1, i8 -118, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"speed set to %dHz\0A\00", [45 x i8] zeroinitializer }, align 32
@stm32_spi_transfer_one_setup.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.3, ptr @.str.50, i8 1, i8 -118, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"transfer of %d bytes (%d data frames)\0A\00", [57 x i8] zeroinitializer }, align 32
@stm32_spi_transfer_one_setup.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.3, ptr @.str.51, i8 1, i8 -117, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dma %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@stm32_spi_transfer_one_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 1270, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Rx DMA submit failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stm32_spi_transfer_one_dma\00", [37 x i8] zeroinitializer }, align 32
@stm32_spi_transfer_one_dma._entry_ptr = internal global ptr @stm32_spi_transfer_one_dma._entry, section ".printk_index", align 4
@stm32_spi_transfer_one_dma._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.3, i32 1285, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Tx DMA submit failed\0A\00", [42 x i8] zeroinitializer }, align 32
@stm32_spi_transfer_one_dma._entry_ptr.58 = internal global ptr @stm32_spi_transfer_one_dma._entry.56, section ".printk_index", align 4
@stm32_spi_transfer_one_dma._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.3, i32 1312, ptr @.str.38, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DMA issue: fall back to irq transfer\0A\00", [58 x i8] zeroinitializer }, align 32
@stm32_spi_transfer_one_dma._entry_ptr.61 = internal global ptr @stm32_spi_transfer_one_dma._entry.59, section ".printk_index", align 4
@stm32_spi_dma_config.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.3, ptr @.str.63, i8 1, i8 13, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stm32_spi_dma_config\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Rx DMA config buswidth=%d, maxburst=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@stm32_spi_dma_config.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.3, ptr @.str.64, i8 1, i8 14, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Tx DMA config buswidth=%d, maxburst=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@stm32_spi_can_dma.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.3, ptr @.str.66, i8 0, i8 -72, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32_spi_can_dma\00", [46 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@stm32h7_spi_cfg = internal constant { %struct.stm32_spi_cfg, [56 x i8] } { %struct.stm32_spi_cfg { ptr @stm32h7_spi_regspec, ptr @stm32h7_spi_get_fifo_size, ptr @stm32h7_spi_get_bpw_mask, ptr @stm32h7_spi_disable, ptr @stm32h7_spi_config, ptr @stm32h7_spi_set_bpw, ptr @stm32h7_spi_set_mode, ptr @stm32h7_spi_data_idleness, ptr @stm32h7_spi_number_of_data, ptr @stm32h7_spi_transfer_one_dma_start, ptr @stm32_spi_dma_rx_cb, ptr null, ptr @stm32h7_spi_transfer_one_irq, ptr null, ptr @stm32h7_spi_irq_thread, i32 2, i32 256, i8 1, i16 0 }, [56 x i8] zeroinitializer }, align 32
@stm32f4_spi_cfg = internal constant { %struct.stm32_spi_cfg, [56 x i8] } { %struct.stm32_spi_cfg { ptr @stm32f4_spi_regspec, ptr null, ptr @stm32f4_spi_get_bpw_mask, ptr @stm32f4_spi_disable, ptr @stm32f4_spi_config, ptr @stm32f4_spi_set_bpw, ptr @stm32f4_spi_set_mode, ptr null, ptr null, ptr @stm32f4_spi_transfer_one_dma_start, ptr @stm32_spi_dma_rx_cb, ptr @stm32f4_spi_dma_tx_cb, ptr @stm32f4_spi_transfer_one_irq, ptr @stm32f4_spi_irq_event, ptr @stm32f4_spi_irq_thread, i32 2, i32 256, i8 0, i16 16 }, [56 x i8] zeroinitializer }, align 32
@stm32h7_spi_regspec = internal constant { %struct.stm32_spi_regspec, [52 x i8] } { %struct.stm32_spi_regspec { %struct.stm32_spi_reg { i32 0, i32 1, i32 0 }, %struct.stm32_spi_reg { i32 8, i32 16384, i32 0 }, %struct.stm32_spi_reg { i32 8, i32 32768, i32 0 }, %struct.stm32_spi_reg { i32 12, i32 33554432, i32 0 }, %struct.stm32_spi_reg { i32 12, i32 16777216, i32 0 }, %struct.stm32_spi_reg { i32 12, i32 8388608, i32 0 }, %struct.stm32_spi_reg { i32 8, i32 1879048192, i32 28 }, %struct.stm32_spi_reg { i32 48, i32 0, i32 0 }, %struct.stm32_spi_reg { i32 32, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@stm32h7_spi_get_fifo_size.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.3, ptr @.str.70, i8 0, i8 95, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stm32h7_spi_get_fifo_size\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%d x 8-bit fifo size\0A\00", [42 x i8] zeroinitializer }, align 32
@stm32h7_spi_get_bpw_mask.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.3, ptr @.str.72, i8 0, i8 104, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stm32h7_spi_get_bpw_mask\00", [39 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%d-bit maximum data frame\0A\00", [37 x i8] zeroinitializer }, align 32
@stm32h7_spi_disable.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.3, ptr @.str.74, i8 0, i8 -85, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32h7_spi_disable\00", [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"disable controller\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32h7_spi_data_idleness.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.76, i8 1, i8 115, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stm32h7_spi_data_idleness\00", [38 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"period=%dns, midi=%d(=%dns)\0A\00", [35 x i8] zeroinitializer }, align 32
@stm32_spi_enable.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.3, ptr @.str.78, i8 0, i8 -101, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stm32_spi_enable\00", [47 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enable controller\0A\00", [45 x i8] zeroinitializer }, align 32
@stm32h7_spi_write_txfifo.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.3, ptr @.str.80, i8 0, i8 -122, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stm32h7_spi_write_txfifo\00", [39 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: %d bytes left\0A\00", [45 x i8] zeroinitializer }, align 32
@stm32h7_spi_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 880, ptr @.str.27, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"spurious IT (sr=0x%08x, ier=0x%08x)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32h7_spi_irq_thread\00", [41 x i8] zeroinitializer }, align 32
@stm32h7_spi_irq_thread._entry_ptr = internal global ptr @stm32h7_spi_irq_thread._entry, section ".printk_index", align 4
@stm32h7_spi_irq_thread.rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.83, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 5000, i32 1, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rs.lock\00", [24 x i8] zeroinitializer }, align 32
@stm32h7_spi_irq_thread._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.84, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@stm32h7_spi_irq_thread.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.3, ptr @.str.85, i8 0, i8 -34, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Communication suspended\0A\00", [39 x i8] zeroinitializer }, align 32
@stm32h7_spi_irq_thread._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.82, ptr @.str.3, i32 902, ptr @.str.27, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Mode fault: transfer aborted\0A\00", [34 x i8] zeroinitializer }, align 32
@stm32h7_spi_irq_thread._entry_ptr.88 = internal global ptr @stm32h7_spi_irq_thread._entry.86, section ".printk_index", align 4
@stm32h7_spi_irq_thread._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.82, ptr @.str.3, i32 907, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Overrun: RX data lost\0A\00", [41 x i8] zeroinitializer }, align 32
@stm32h7_spi_irq_thread._entry_ptr.91 = internal global ptr @stm32h7_spi_irq_thread._entry.89, section ".printk_index", align 4
@stm32h7_spi_read_rxfifo.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.92, ptr @.str.3, ptr @.str.93, i8 0, i8 -103, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stm32h7_spi_read_rxfifo\00", [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: %d bytes left (sr=%08x)\0A\00", [35 x i8] zeroinitializer }, align 32
@stm32f4_spi_regspec = internal constant { %struct.stm32_spi_regspec, [52 x i8] } { %struct.stm32_spi_regspec { %struct.stm32_spi_reg { i32 0, i32 64, i32 0 }, %struct.stm32_spi_reg { i32 4, i32 1, i32 0 }, %struct.stm32_spi_reg { i32 4, i32 2, i32 0 }, %struct.stm32_spi_reg { i32 0, i32 2, i32 0 }, %struct.stm32_spi_reg { i32 0, i32 1, i32 0 }, %struct.stm32_spi_reg { i32 0, i32 128, i32 0 }, %struct.stm32_spi_reg { i32 0, i32 56, i32 3 }, %struct.stm32_spi_reg { i32 12, i32 0, i32 0 }, %struct.stm32_spi_reg { i32 12, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@stm32f4_spi_get_bpw_mask.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.3, ptr @.str.95, i8 0, i8 97, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stm32f4_spi_get_bpw_mask\00", [39 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"8-bit or 16-bit data frame supported\0A\00", [58 x i8] zeroinitializer }, align 32
@stm32f4_spi_disable.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.96, ptr @.str.3, ptr @.str.74, i8 0, i8 -97, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32f4_spi_disable\00", [44 x i8] zeroinitializer }, align 32
@stm32f4_spi_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.96, ptr @.str.3, i32 656, ptr @.str.27, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"disabling condition timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@stm32f4_spi_disable._entry_ptr = internal global ptr @stm32f4_spi_disable._entry, section ".printk_index", align 4
@stm32f4_spi_write_tx.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.98, ptr @.str.3, ptr @.str.80, i8 0, i8 125, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stm32f4_spi_write_tx\00", [43 x i8] zeroinitializer }, align 32
@stm32f4_spi_irq_event.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.99, ptr @.str.3, ptr @.str.100, i8 0, i8 -62, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32f4_spi_irq_event\00", [42 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"spurious IT (sr=0x%08x)\0A\00", [39 x i8] zeroinitializer }, align 32
@stm32f4_spi_irq_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.3, i32 785, ptr @.str.27, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Overrun: received value discarded\0A\00", [61 x i8] zeroinitializer }, align 32
@stm32f4_spi_irq_event._entry_ptr = internal global ptr @stm32f4_spi_irq_event._entry, section ".printk_index", align 4
@stm32f4_spi_read_rx.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.3, ptr @.str.80, i8 0, i8 -115, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32f4_spi_read_rx\00", [44 x i8] zeroinitializer }, align 32
@stm32_spi_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.3, i32 2006, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to power device:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stm32_spi_resume\00", [47 x i8] zeroinitializer }, align 32
@stm32_spi_resume._entry_ptr = internal global ptr @stm32_spi_resume._entry, section ".printk_index", align 4
@switch.table.stm32f4_spi_transfer_one_irq = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 96, i32 128, i32 96, i32 128, i32 96], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.105 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.107 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 4]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.111 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 4]
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"stm32_spi_driver\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 2024, i32 31 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 2028, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant [19 x i8] c"stm32_spi_of_match\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1751, i32 34 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"stm32_spi_pm_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 2018, i32 32 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1768, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1776, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1792, i32 10 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1799, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1807, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1813, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1818, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1827, i32 10 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1841, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1860, i32 43 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1867, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1872, i32 43 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1879, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1896, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1904, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 955, i32 38 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 956, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 973, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1615, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1572, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1574, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1577, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1578, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1580, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1270, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1285, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1312, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1075, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1082, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 736, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant [16 x i8] c"stm32h7_spi_cfg\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1728, i32 35 }
@___asan_gen_.310 = private unnamed_addr constant [16 x i8] c"stm32f4_spi_cfg\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1709, i32 35 }
@___asan_gen_.313 = private unnamed_addr constant [20 x i8] c"stm32h7_spi_regspec\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 327, i32 39 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 380, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 417, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 687, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1486, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 622, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 538, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 879, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 886, i32 10 }
@___asan_gen_.367 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 890, i32 4 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 902, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 907, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 612, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant [20 x i8] c"stm32f4_spi_regspec\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 312, i32 39 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 391, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 637, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 656, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 503, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 779, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 785, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 567, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.436 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.437 = private constant [27 x i8] c"../drivers/spi/spi-stm32.c\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 2006, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant [42 x i8] c"switch.table.stm32f4_spi_transfer_one_irq\00", align 1
@llvm.compiler.used = appending global [138 x ptr] [ptr @__UNIQUE_ID_alias311, ptr @__UNIQUE_ID_author313, ptr @__UNIQUE_ID_description312, ptr @__UNIQUE_ID_file314, ptr @__UNIQUE_ID_license315, ptr @__exitcall_stm32_spi_driver_exit, ptr @__initcall__kmod_spi_stm32__310_2034_stm32_spi_driver_init6, ptr @stm32_spi_driver_exit, ptr @stm32_spi_probe._entry, ptr @stm32_spi_probe._entry.11, ptr @stm32_spi_probe._entry.14, ptr @stm32_spi_probe._entry.17, ptr @stm32_spi_probe._entry.21, ptr @stm32_spi_probe._entry.25, ptr @stm32_spi_probe._entry.30, ptr @stm32_spi_probe._entry.33, ptr @stm32_spi_probe._entry.36, ptr @stm32_spi_probe._entry.8, ptr @stm32_spi_probe._entry_ptr, ptr @stm32_spi_probe._entry_ptr.10, ptr @stm32_spi_probe._entry_ptr.13, ptr @stm32_spi_probe._entry_ptr.16, ptr @stm32_spi_probe._entry_ptr.19, ptr @stm32_spi_probe._entry_ptr.23, ptr @stm32_spi_probe._entry_ptr.28, ptr @stm32_spi_probe._entry_ptr.32, ptr @stm32_spi_probe._entry_ptr.35, ptr @stm32_spi_probe._entry_ptr.39, ptr @stm32_spi_resume._entry, ptr @stm32_spi_resume._entry_ptr, ptr @stm32_spi_transfer_one._entry, ptr @stm32_spi_transfer_one._entry_ptr, ptr @stm32_spi_transfer_one_dma._entry, ptr @stm32_spi_transfer_one_dma._entry.56, ptr @stm32_spi_transfer_one_dma._entry.59, ptr @stm32_spi_transfer_one_dma._entry_ptr, ptr @stm32_spi_transfer_one_dma._entry_ptr.58, ptr @stm32_spi_transfer_one_dma._entry_ptr.61, ptr @stm32f4_spi_disable._entry, ptr @stm32f4_spi_disable._entry_ptr, ptr @stm32f4_spi_irq_event._entry, ptr @stm32f4_spi_irq_event._entry_ptr, ptr @stm32h7_spi_irq_thread._entry, ptr @stm32h7_spi_irq_thread._entry.86, ptr @stm32h7_spi_irq_thread._entry.89, ptr @stm32h7_spi_irq_thread._entry_ptr, ptr @stm32h7_spi_irq_thread._entry_ptr.88, ptr @stm32h7_spi_irq_thread._entry_ptr.91, ptr @stm32_spi_driver, ptr @.str, ptr @stm32_spi_of_match, ptr @stm32_spi_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @stm32_spi_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @stm32h7_spi_cfg, ptr @stm32f4_spi_cfg, ptr @stm32h7_spi_regspec, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @stm32h7_spi_irq_thread.rs, ptr @.str.83, ptr @stm32h7_spi_irq_thread._rs, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @stm32f4_spi_regspec, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @switch.table.stm32f4_spi_transfer_one_irq], section "llvm.metadata"
@0 = internal global [110 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spi_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spi_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spi_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spi_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spi_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spi_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spi_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spi_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spi_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spi_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spi_transfer_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spi_transfer_one_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spi_transfer_one_dma._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spi_transfer_one_dma._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_spi_cfg to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_spi_cfg to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_spi_regspec to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_spi_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_spi_irq_thread.rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_spi_irq_thread._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_spi_irq_thread._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_spi_irq_thread._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_spi_regspec to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_spi_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_spi_irq_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spi_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stm32f4_spi_transfer_one_irq to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_spi_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_spi_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__devm_spi_alloc_controller(ptr noundef %dev, i32 noundef 132, i1 noundef zeroext false) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i328 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i328 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i328, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %2, align 4
  %master5 = getelementptr inbounds %struct.stm32_spi, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %master5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %master5, align 4
  %lock = getelementptr inbounds %struct.stm32_spi, ptr %2, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @stm32_spi_probe.__key, i16 noundef signext 3) #8
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %5 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver, align 4
  %of_match_table = getelementptr inbounds %struct.device_driver, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %of_match_table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_match_table, align 4
  %call12 = tail call ptr @of_match_device(ptr noundef %8, ptr noundef %dev) #8
  %data = getelementptr inbounds %struct.of_device_id, ptr %call12, i32 0, i32 3
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %cfg = getelementptr inbounds %struct.stm32_spi, ptr %2, i32 0, i32 2
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %cfg, align 4
  %call13 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call15 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call13) #8
  %base = getelementptr inbounds %struct.stm32_spi, ptr %2, i32 0, i32 3
  %12 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call15, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %14 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call13, align 4
  %phys_addr = getelementptr inbounds %struct.stm32_spi, ptr %2, i32 0, i32 22
  %16 = ptrtoint ptr %phys_addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %phys_addr, align 4
  %call22 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.stm32_spi, ptr %2, i32 0, i32 7
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call22, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call22)
  %cmp = icmp slt i32 %call22, 1
  br i1 %cmp, label %if.then24, label %if.end28

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call22, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %18 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg, align 4
  %irq_handler_event = getelementptr inbounds %struct.stm32_spi_cfg, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %irq_handler_event to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %irq_handler_event, align 4
  %irq_handler_thread = getelementptr inbounds %struct.stm32_spi_cfg, ptr %19, i32 0, i32 14
  %22 = ptrtoint ptr %irq_handler_thread to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %irq_handler_thread, align 4
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 8
  %call33 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call22, ptr noundef %21, ptr noundef %23, i32 noundef 8192, ptr noundef %25, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end41, label %do.end38

do.end38:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %27, i32 noundef %call33) #11
  br label %cleanup

if.end41:                                         ; preds = %if.end28
  %call43 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.stm32_spi, ptr %2, i32 0, i32 4
  %28 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call43, ptr %clk, align 4
  %cmp.i329 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i329, label %if.then46, label %if.end53

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %call43 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %29) #11
  br label %cleanup

if.end53:                                         ; preds = %if.end41
  %call.i330 = tail call i32 @clk_prepare(ptr noundef %call43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i330)
  %tobool.not.i = icmp eq i32 %call.i330, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end53.do.end60_crit_edge

if.end53.do.end60_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end60

if.end.i:                                         ; preds = %if.end53
  %call1.i = tail call i32 @clk_enable(ptr noundef %call43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end62, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call43) #8
  br label %do.end60

do.end60:                                         ; preds = %if.then3.i, %if.end53.do.end60_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i330, %if.end53.do.end60_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i.ph) #11
  br label %cleanup

if.end62:                                         ; preds = %if.end.i
  %30 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk, align 4
  %call64 = tail call i32 @clk_get_rate(ptr noundef %31) #8
  %clk_rate = getelementptr inbounds %struct.stm32_spi, ptr %2, i32 0, i32 5
  %32 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call64, ptr %clk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool66.not = icmp eq i32 %call64, 0
  br i1 %tobool66.not, label %do.end70, label %if.end72

do.end70:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #11
  br label %err_clk_disable

if.end72:                                         ; preds = %if.end62
  %call.i331 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #8
  %tobool75.not = icmp eq ptr %call.i331, null
  br i1 %tobool75.not, label %if.end72.if.end85_crit_edge, label %if.then76

if.end72.if.end85_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then76:                                        ; preds = %if.end72
  %cmp.i332 = icmp ugt ptr %call.i331, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i332, label %if.then78, label %if.end82

if.then78:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %call.i331 to i32
  %call81 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %33, ptr noundef nonnull @.str.20) #8
  br label %err_clk_disable

if.end82:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  %call83 = tail call i32 @reset_control_assert(ptr noundef nonnull %call.i331) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 429496) #8
  %call84 = tail call i32 @reset_control_deassert(ptr noundef nonnull %call.i331) #8
  br label %if.end85

if.end85:                                         ; preds = %if.end82, %if.end72.if.end85_crit_edge
  %35 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg, align 4
  %has_fifo = getelementptr inbounds %struct.stm32_spi_cfg, ptr %36, i32 0, i32 17
  %37 = ptrtoint ptr %has_fifo to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %has_fifo, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool87.not = icmp eq i8 %38, 0
  br i1 %tobool87.not, label %if.end85.if.end91_crit_edge, label %if.then88

if.end85.if.end91_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %get_fifo_size = getelementptr inbounds %struct.stm32_spi_cfg, ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %get_fifo_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %get_fifo_size, align 4
  %call90 = tail call i32 %40(ptr noundef %2) #8
  %fifo_size = getelementptr inbounds %struct.stm32_spi, ptr %2, i32 0, i32 8
  %41 = ptrtoint ptr %fifo_size to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call90, ptr %fifo_size, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %if.end85.if.end91_crit_edge
  %42 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfg, align 4
  %config = getelementptr inbounds %struct.stm32_spi_cfg, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %config, align 4
  %call93 = tail call i32 %45(ptr noundef %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end100, label %do.end98

do.end98:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call93) #11
  br label %err_clk_disable

if.end100:                                        ; preds = %if.end91
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %46 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %of_node, align 8
  %of_node103 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %48 = ptrtoint ptr %of_node103 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %of_node103, align 8
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %49 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %auto_runtime_pm, align 4
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %50 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %id, align 4
  %conv = trunc i32 %51 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %52 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv, ptr %bus_num, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %53 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 31, ptr %mode_bits, align 8
  %54 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cfg, align 4
  %get_bpw_mask = getelementptr inbounds %struct.stm32_spi_cfg, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %get_bpw_mask to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %get_bpw_mask, align 4
  %call105 = tail call i32 %57(ptr noundef %2) #8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %58 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call105, ptr %bits_per_word_mask, align 8
  %59 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %clk_rate, align 4
  %61 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cfg, align 4
  %baud_rate_div_min = getelementptr inbounds %struct.stm32_spi_cfg, ptr %62, i32 0, i32 15
  %63 = ptrtoint ptr %baud_rate_div_min to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %baud_rate_div_min, align 4
  %div = udiv i32 %60, %64
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %65 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %div, ptr %max_speed_hz, align 8
  %66 = load i32, ptr %clk_rate, align 4
  %67 = load ptr, ptr %cfg, align 4
  %baud_rate_div_max = getelementptr inbounds %struct.stm32_spi_cfg, ptr %67, i32 0, i32 16
  %68 = ptrtoint ptr %baud_rate_div_max to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %baud_rate_div_max, align 4
  %div110 = udiv i32 %66, %69
  %min_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 8
  %70 = ptrtoint ptr %min_speed_hz to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %div110, ptr %min_speed_hz, align 4
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 56
  %71 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %use_gpio_descriptors, align 8
  %prepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 47
  %72 = ptrtoint ptr %prepare_message to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @stm32_spi_prepare_msg, ptr %prepare_message, align 4
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %73 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @stm32_spi_transfer_one, ptr %transfer_one, align 4
  %unprepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 48
  %74 = ptrtoint ptr %unprepare_message to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @stm32_spi_unprepare_msg, ptr %unprepare_message, align 8
  %75 = load ptr, ptr %cfg, align 4
  %flags = getelementptr inbounds %struct.stm32_spi_cfg, ptr %75, i32 0, i32 18
  %76 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %flags, align 2
  %flags112 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 10
  %78 = ptrtoint ptr %flags112 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %flags112, align 4
  %79 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %2, align 4
  %call114 = tail call ptr @dma_request_chan(ptr noundef %80, ptr noundef nonnull @.str.24) #8
  %dma_tx = getelementptr inbounds %struct.stm32_spi, ptr %2, i32 0, i32 20
  %81 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call114, ptr %dma_tx, align 4
  %cmp.i333 = icmp ugt ptr %call114, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i333, label %if.then117, label %if.else

if.then117:                                       ; preds = %if.end100
  %82 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %dma_tx, align 4
  %cmp121 = icmp eq ptr %call114, inttoptr (i32 -517 to ptr)
  br i1 %cmp121, label %if.then117.err_clk_disable_crit_edge, label %do.end127

if.then117.err_clk_disable_crit_edge:             ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clk_disable

do.end127:                                        ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.26) #11
  br label %if.end131

if.else:                                          ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  %dma_tx130 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 60
  %83 = ptrtoint ptr %dma_tx130 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call114, ptr %dma_tx130, align 8
  br label %if.end131

if.end131:                                        ; preds = %if.else, %do.end127
  %84 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %2, align 4
  %call133 = tail call ptr @dma_request_chan(ptr noundef %85, ptr noundef nonnull @.str.29) #8
  %dma_rx = getelementptr inbounds %struct.stm32_spi, ptr %2, i32 0, i32 21
  %86 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call133, ptr %dma_rx, align 4
  %cmp.i334 = icmp ugt ptr %call133, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i334, label %if.then136, label %if.else148

if.then136:                                       ; preds = %if.end131
  %87 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %dma_rx, align 4
  %cmp140 = icmp eq ptr %call133, inttoptr (i32 -517 to ptr)
  br i1 %cmp140, label %if.then136.err_dma_release_crit_edge, label %do.end146

if.then136.err_dma_release_crit_edge:             ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_dma_release

do.end146:                                        ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.31) #11
  br label %if.end151

if.else148:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  %dma_rx150 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 61
  %88 = ptrtoint ptr %dma_rx150 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call133, ptr %dma_rx150, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.else148, %do.end146
  %89 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dma_tx, align 4
  %tobool153.not = icmp eq ptr %90, null
  br i1 %tobool153.not, label %lor.lhs.false, label %if.end151.if.then156_crit_edge

if.end151.if.then156_crit_edge:                   ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then156

lor.lhs.false:                                    ; preds = %if.end151
  %91 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dma_rx, align 4
  %tobool155.not = icmp eq ptr %92, null
  br i1 %tobool155.not, label %lor.lhs.false.if.end157_crit_edge, label %lor.lhs.false.if.then156_crit_edge

lor.lhs.false.if.then156_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then156

lor.lhs.false.if.end157_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end157

if.then156:                                       ; preds = %lor.lhs.false.if.then156_crit_edge, %if.end151.if.then156_crit_edge
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 24
  %93 = ptrtoint ptr %can_dma to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @stm32_spi_can_dma, ptr %can_dma, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then156, %lor.lhs.false.if.end157_crit_edge
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 1) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #8
  %call.i335 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #8
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %94 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !232
  tail call void @pm_runtime_enable(ptr noundef %dev) #8
  %call164 = tail call i32 @spi_register_controller(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end171, label %do.end169

do.end169:                                        ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %call164) #11
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev)
  %call.i336 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #8
  br label %err_dma_release

if.end171:                                        ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  %call.i337 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %95 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store volatile i64 %call.i337, ptr %last_busy.i, align 8
  %call.i338 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.37) #11
  br label %cleanup

err_dma_release:                                  ; preds = %do.end169, %if.then136.err_dma_release_crit_edge
  %ret.0 = phi i32 [ -517, %if.then136.err_dma_release_crit_edge ], [ %call164, %do.end169 ]
  %96 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dma_tx, align 4
  %tobool185.not = icmp eq ptr %97, null
  br i1 %tobool185.not, label %err_dma_release.if.end188_crit_edge, label %if.then186

err_dma_release.if.end188_crit_edge:              ; preds = %err_dma_release
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

if.then186:                                       ; preds = %err_dma_release
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %97) #8
  br label %if.end188

if.end188:                                        ; preds = %if.then186, %err_dma_release.if.end188_crit_edge
  %98 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dma_rx, align 4
  %tobool190.not = icmp eq ptr %99, null
  br i1 %tobool190.not, label %if.end188.err_clk_disable_crit_edge, label %if.then191

if.end188.err_clk_disable_crit_edge:              ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clk_disable

if.then191:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %99) #8
  br label %err_clk_disable

err_clk_disable:                                  ; preds = %if.then191, %if.end188.err_clk_disable_crit_edge, %if.then117.err_clk_disable_crit_edge, %do.end98, %if.then78, %do.end70
  %ret.1 = phi i32 [ %call81, %if.then78 ], [ %call93, %do.end98 ], [ -517, %if.then117.err_clk_disable_crit_edge ], [ %ret.0, %if.then191 ], [ %ret.0, %if.end188.err_clk_disable_crit_edge ], [ -22, %do.end70 ]
  %100 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %101) #8
  tail call void @clk_unprepare(ptr noundef %101) #8
  br label %cleanup

cleanup:                                          ; preds = %err_clk_disable, %if.end171, %do.end60, %if.then46, %do.end38, %if.then24, %if.then18, %do.end
  %retval.0 = phi i32 [ %13, %if.then18 ], [ %call27, %if.then24 ], [ %call33, %do.end38 ], [ %29, %if.then46 ], [ %retval.0.i.ph, %do.end60 ], [ %ret.1, %err_clk_disable ], [ 0, %if.end171 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_spi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i29 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i29 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i29, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  tail call void @spi_unregister_controller(ptr noundef %1) #8
  %cfg = getelementptr inbounds %struct.stm32_spi, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg, align 4
  %disable = getelementptr inbounds %struct.stm32_spi_cfg, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable, align 4
  tail call void %7(ptr noundef %3) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !233
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !234
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !235
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  %call.i30 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #8
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 60
  %9 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma_tx, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %pm_runtime_put_noidle.exit.if.end_crit_edge, label %if.then

pm_runtime_put_noidle.exit.if.end_crit_edge:      ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %10) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %pm_runtime_put_noidle.exit.if.end_crit_edge
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 61
  %11 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_rx, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.end.if.end12_crit_edge, label %if.then10

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %12) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  %clk = getelementptr inbounds %struct.stm32_spi, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %14) #8
  tail call void @clk_unprepare(ptr noundef %14) #8
  %call14 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_spi_prepare_msg(ptr noundef %master, ptr noundef %msg) #2 align 64 {
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
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %cur_midi = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %cur_midi to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cur_midi, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %land.lhs.true

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.40, ptr noundef %cur_midi, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool4.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool4.not, label %do.body, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_spi_prepare_msg.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_spi_prepare_msg, %if.end13)) #8
          to label %if.then10 [label %if.end13], !srcloc !236

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %cur_midi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur_midi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_spi_prepare_msg.__UNIQUE_ID_ddebug268, ptr noundef %8, ptr noundef nonnull @.str.42, i32 noundef %10) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %do.body, %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  %mode = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 7
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode, align 8
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  %cfg16 = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %cfg16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg16, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %mask19 = getelementptr inbounds %struct.stm32_spi_regspec, ptr %16, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %mask19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mask19, align 4
  %. = select i1 %tobool14.not, i32 0, i32 %18
  %.181 = select i1 %tobool14.not, i32 %18, i32 0
  %and23 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %cfg31 = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %cfg31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cfg31, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %mask34 = getelementptr inbounds %struct.stm32_spi_regspec, ptr %22, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %mask34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mask34, align 4
  %or29 = select i1 %tobool24.not, i32 0, i32 %24
  %setb.1 = or i32 %., %or29
  %or35 = select i1 %tobool24.not, i32 %24, i32 0
  %clrb.1 = or i32 %.181, %or35
  %and38 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %cfg46 = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %cfg46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfg46, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %mask49 = getelementptr inbounds %struct.stm32_spi_regspec, ptr %28, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %mask49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mask49, align 4
  %or44 = select i1 %tobool39.not, i32 0, i32 %30
  %setb.2 = or i32 %setb.1, %or44
  %or50 = select i1 %tobool39.not, i32 %30, i32 0
  %clrb.2 = or i32 %clrb.1, %or50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_spi_prepare_msg.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_spi_prepare_msg, %do.end98)) #8
          to label %if.then66 [label %do.end98], !srcloc !236

if.then66:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %33 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mode, align 8
  %and69 = lshr i32 %34, 1
  %and69.lobit = and i32 %and69, 1
  %and76 = and i32 %34, 1
  %and83 = lshr i32 %34, 3
  %and83.lobit = and i32 %and83, 1
  %and90 = lshr i32 %34, 2
  %and90.lobit = and i32 %and90, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_spi_prepare_msg.__UNIQUE_ID_ddebug269, ptr noundef %32, ptr noundef nonnull @.str.43, i32 noundef %and69.lobit, i32 noundef %and76, i32 noundef %and83.lobit, i32 noundef %and90.lobit) #8
  br label %do.end98

do.end98:                                         ; preds = %if.then66, %if.end13
  %cfg99 = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %cfg99 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg99, align 4
  %set_number_of_data = getelementptr inbounds %struct.stm32_spi_cfg, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %set_number_of_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_number_of_data, align 4
  %tobool100.not = icmp eq ptr %38, null
  br i1 %tobool100.not, label %do.end98.do.body108_crit_edge, label %if.then101

do.end98.do.body108_crit_edge:                    ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body108

if.then101:                                       ; preds = %do.end98
  %call102 = tail call i32 @spi_split_transfers_maxsize(ptr noundef %master, ptr noundef %msg, i32 noundef 65535, i32 noundef 3265) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.then101.do.body108_crit_edge, label %if.then101.cleanup134_crit_edge

if.then101.cleanup134_crit_edge:                  ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup134

if.then101.do.body108_crit_edge:                  ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body108

do.body108:                                       ; preds = %if.then101.do.body108_crit_edge, %do.end98.do.body108_crit_edge
  %lock = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 6
  %call111 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clrb.2)
  %tobool116.not = icmp eq i32 %clrb.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %setb.2)
  %tobool117.not = icmp eq i32 %setb.2, 0
  %or.cond = select i1 %tobool116.not, i1 %tobool117.not, i1 false
  br i1 %or.cond, label %do.body108.if.end132_crit_edge, label %if.then118

do.body108.if.end132_crit_edge:                   ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132

if.then118:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #10
  %base = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %41 = ptrtoint ptr %cfg99 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfg99, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %cpol121 = getelementptr inbounds %struct.stm32_spi_regspec, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %cpol121 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cpol121, align 4
  %add.ptr = getelementptr i8, ptr %40, i32 %46
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !237
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %neg = xor i32 %clrb.2, -1
  %and124 = and i32 %48, %neg
  %or125 = or i32 %and124, %setb.2
  %49 = tail call i32 @llvm.bswap.i32(i32 %or125)
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base, align 4
  %52 = ptrtoint ptr %cfg99 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cfg99, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %cpol129 = getelementptr inbounds %struct.stm32_spi_regspec, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %cpol129 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cpol129, align 4
  %add.ptr131 = getelementptr i8, ptr %51, i32 %57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 %49) #8, !srcloc !238
  br label %if.end132

if.end132:                                        ; preds = %if.then118, %do.body108.if.end132_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call111) #8
  br label %cleanup134

cleanup134:                                       ; preds = %if.end132, %if.then101.cleanup134_crit_edge
  %retval.1 = phi i32 [ 0, %if.end132 ], [ %call102, %if.then101.cleanup134_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_spi_transfer_one(ptr noundef %master, ptr noundef %spi_dev, ptr noundef %transfer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %transfer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer, align 4
  %tx_buf1 = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %tx_buf1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %tx_buf1, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 1
  %5 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_buf, align 4
  %rx_buf2 = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %rx_buf2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %rx_buf2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %len = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %9, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %tx_len = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %tx_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %tx_len, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %cond.end.cond.end9_crit_edge, label %cond.true6

cond.end.cond.end9_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end9

cond.true6:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %len7 = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 2
  %11 = ptrtoint ptr %len7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len7, align 4
  br label %cond.end9

cond.end9:                                        ; preds = %cond.true6, %cond.end.cond.end9_crit_edge
  %cond10 = phi i32 [ %12, %cond.true6 ], [ 0, %cond.end.cond.end9_crit_edge ]
  %rx_len = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %rx_len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond10, ptr %rx_len, align 4
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 24
  %14 = ptrtoint ptr %can_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %can_dma, align 4
  %tobool11.not = icmp eq ptr %15, null
  br i1 %tobool11.not, label %cond.end9.land.end_crit_edge, label %land.rhs

cond.end9.land.end_crit_edge:                     ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call zeroext i1 %15(ptr noundef %master, ptr noundef %spi_dev, ptr noundef %transfer) #8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end9.land.end_crit_edge
  %16 = phi i1 [ false, %cond.end9.land.end_crit_edge ], [ %call13, %land.rhs ]
  %cur_usedma = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 15
  %frombool = zext i1 %16 to i8
  %17 = ptrtoint ptr %cur_usedma to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool, ptr %cur_usedma, align 4
  %call14 = tail call fastcc i32 @stm32_spi_transfer_one_setup(ptr noundef %1, ptr noundef %spi_dev, ptr noundef %transfer)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end, label %do.end

do.end:                                           ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.44) #11
  br label %cleanup

if.end:                                           ; preds = %land.end
  %20 = ptrtoint ptr %cur_usedma to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cur_usedma, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool17.not = icmp eq i8 %21, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call fastcc i32 @stm32_spi_transfer_one_dma(ptr noundef %1, ptr noundef %transfer)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cfg = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg, align 4
  %transfer_one_irq = getelementptr inbounds %struct.stm32_spi_cfg, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %transfer_one_irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %transfer_one_irq, align 4
  %call20 = tail call i32 %25(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then18, %do.end
  %retval.0 = phi i32 [ %call14, %do.end ], [ %call19, %if.then18 ], [ %call20, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_spi_unprepare_msg(ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cfg = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %disable = getelementptr inbounds %struct.stm32_spi_cfg, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable, align 4
  tail call void %5(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @stm32_spi_can_dma(ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %spi_dev, ptr nocapture noundef readonly %transfer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cfg = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %has_fifo = getelementptr inbounds %struct.stm32_spi_cfg, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %has_fifo to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_fifo, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fifo_size = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fifo_size, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %dma_size.0 = phi i32 [ %7, %if.then ], [ 16, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_spi_can_dma.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_spi_can_dma, %do.end)) #8
          to label %if.then6 [label %do.end], !srcloc !236

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %dma_size.0)
  %cmp = icmp ugt i32 %11, %dma_size.0
  %cond = select i1 %cmp, ptr @.str.67, ptr @.str.68
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_spi_can_dma.__UNIQUE_ID_ddebug266, ptr noundef %9, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.65, ptr noundef nonnull %cond) #8
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %len8 = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 2
  %12 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %dma_size.0)
  %cmp9 = icmp ugt i32 %13, %dma_size.0
  ret i1 %cmp9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !233
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #8, !srcloc !234
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !235
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_split_transfers_maxsize(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_spi_transfer_one_setup(ptr noundef %spi, ptr nocapture noundef readonly %spi_dev, ptr nocapture noundef %transfer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %len = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %cur_xferlen = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 14
  %2 = ptrtoint ptr %cur_xferlen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %cur_xferlen, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 8
  %3 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bits_per_word, align 1
  %conv5 = zext i8 %4 to i32
  %cur_bpw = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 11
  %5 = ptrtoint ptr %cur_bpw to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv5, ptr %cur_bpw, align 4
  %cfg = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 2
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg, align 4
  %set_bpw = getelementptr inbounds %struct.stm32_spi_cfg, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %set_bpw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_bpw, align 4
  tail call void %9(ptr noundef %spi) #8
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 12
  %10 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed_hz, align 4
  %12 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg, align 4
  %baud_rate_div_min = getelementptr inbounds %struct.stm32_spi_cfg, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %baud_rate_div_min to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %baud_rate_div_min, align 4
  %baud_rate_div_max = getelementptr inbounds %struct.stm32_spi_cfg, ptr %13, i32 0, i32 16
  %16 = ptrtoint ptr %baud_rate_div_max to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %baud_rate_div_max, align 4
  %clk_rate.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 5
  %18 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clk_rate.i, align 4
  %and.i = and i32 %19, -2
  %add.i = add i32 %11, -1
  %sub.i = add i32 %add.i, %and.i
  %div1.i = udiv i32 %sub.i, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %15)
  %cmp.i = icmp ult i32 %div1.i, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %17)
  %cmp2.i = icmp ugt i32 %div1.i, %17
  %or.cond.i = or i1 %cmp.i, %cmp2.i
  br i1 %or.cond.i, label %entry.out_crit_edge, label %stm32_spi_prepare_mbr.exit

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

stm32_spi_prepare_mbr.exit:                       ; preds = %entry
  %20 = tail call i32 @llvm.ctpop.i32(i32 %div1.i) #8, !range !239
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %tobool.not.i = icmp ult i32 %20, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %11)
  %tobool.not.i23.i = icmp ult i32 %sub.i, %11
  %21 = tail call i32 @llvm.ctlz.i32(i32 %div1.i, i1 true) #8, !range !239
  %sub.i.i = sub nuw nsw i32 32, %21
  %cond.i.i = select i1 %tobool.not.i23.i, i32 0, i32 %sub.i.i
  %sub.i24.op.i = xor i32 %21, 31
  %sub7.i = select i1 %tobool.not.i23.i, i32 -1, i32 %sub.i24.op.i
  %mbrdiv.0.i = select i1 %tobool.not.i, i32 %sub7.i, i32 %cond.i.i
  %div1022.i = lshr i32 %19, %mbrdiv.0.i
  %cur_speed.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 10
  %22 = ptrtoint ptr %cur_speed.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div1022.i, ptr %cur_speed.i, align 4
  %sub11.i = add nsw i32 %mbrdiv.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mbrdiv.0.i)
  %cmp9 = icmp slt i32 %mbrdiv.0.i, 1
  br i1 %cmp9, label %stm32_spi_prepare_mbr.exit.out_crit_edge, label %if.end

stm32_spi_prepare_mbr.exit.out_crit_edge:         ; preds = %stm32_spi_prepare_mbr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %stm32_spi_prepare_mbr.exit
  %23 = ptrtoint ptr %cur_speed.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cur_speed.i, align 4
  %25 = ptrtoint ptr %speed_hz to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %speed_hz, align 4
  %26 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %br.i = getelementptr inbounds %struct.stm32_spi_regspec, ptr %29, i32 0, i32 6
  %mask.i = getelementptr inbounds %struct.stm32_spi_regspec, ptr %29, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mask.i, align 4
  %shift.i = getelementptr inbounds %struct.stm32_spi_regspec, ptr %29, i32 0, i32 6, i32 2
  %32 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %shift.i, align 4
  %shl.i = shl i32 %sub11.i, %33
  %and.i211 = and i32 %shl.i, %31
  %base.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %36 = ptrtoint ptr %br.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %br.i, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 %37
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !237
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #8
  %neg.i = xor i32 %31, -1
  %and12.i = and i32 %39, %neg.i
  %or13.i = or i32 %and12.i, %and.i211
  %40 = tail call i32 @llvm.bswap.i32(i32 %or13.i) #8
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  %43 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cfg, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %br17.i = getelementptr inbounds %struct.stm32_spi_regspec, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %br17.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %br17.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %42, i32 %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %40) #8, !srcloc !238
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %spi_dev, i32 0, i32 7
  %49 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mode.i, align 8
  %and.i212 = and i32 %50, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i212)
  %tobool.not.i213 = icmp eq i32 %and.i212, 0
  %51 = ptrtoint ptr %transfer to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %transfer, align 4
  %tobool5.not.i = icmp eq ptr %52, null
  br i1 %tobool.not.i213, label %if.else3.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %..i = select i1 %tobool5.not.i, i32 4, i32 3
  br label %stm32_spi_communication_type.exit

if.else3.i:                                       ; preds = %if.end
  br i1 %tobool5.not.i, label %if.else3.i.stm32_spi_communication_type.exit_crit_edge, label %if.else7.i

if.else3.i.stm32_spi_communication_type.exit_crit_edge: ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_spi_communication_type.exit

if.else7.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 1
  %53 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rx_buf.i, align 4
  %tobool8.not.i = icmp eq ptr %54, null
  %spec.select.i = zext i1 %tobool8.not.i to i32
  br label %stm32_spi_communication_type.exit

stm32_spi_communication_type.exit:                ; preds = %if.else7.i, %if.else3.i.stm32_spi_communication_type.exit_crit_edge, %if.then.i
  %type.0.i = phi i32 [ %..i, %if.then.i ], [ 2, %if.else3.i.stm32_spi_communication_type.exit_crit_edge ], [ %spec.select.i, %if.else7.i ]
  %55 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfg, align 4
  %set_mode = getelementptr inbounds %struct.stm32_spi_cfg, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %set_mode to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %set_mode, align 4
  %call14 = tail call i32 %58(ptr noundef %spi, i32 noundef %type.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %stm32_spi_communication_type.exit.out_crit_edge, label %if.end18

stm32_spi_communication_type.exit.out_crit_edge:  ; preds = %stm32_spi_communication_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end18:                                         ; preds = %stm32_spi_communication_type.exit
  %cur_comm = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 13
  %59 = ptrtoint ptr %cur_comm to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %type.0.i, ptr %cur_comm, align 4
  %60 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cfg, align 4
  %set_data_idleness = getelementptr inbounds %struct.stm32_spi_cfg, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %set_data_idleness to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %set_data_idleness, align 4
  %tobool.not = icmp eq ptr %63, null
  br i1 %tobool.not, label %if.end18.if.end24_crit_edge, label %if.then20

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len, align 4
  tail call void %63(ptr noundef %spi, i32 noundef %65) #8
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end18.if.end24_crit_edge
  %66 = ptrtoint ptr %cur_bpw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cur_bpw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %67)
  %cmp26 = icmp ult i32 %67, 9
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len, align 4
  br label %if.end42

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %67)
  %cmp31 = icmp ult i32 %67, 17
  %70 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len, align 4
  %mul = shl i32 %71, 3
  br i1 %cmp31, label %if.then33, label %if.else35

if.then33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %mul, 15
  %div197 = lshr i32 %sub, 4
  br label %if.end42

if.else35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %sub39 = add i32 %mul, 31
  %div40196 = lshr i32 %sub39, 5
  br label %if.end42

if.end42:                                         ; preds = %if.else35, %if.then33, %if.then28
  %nb_words.0 = phi i32 [ %69, %if.then28 ], [ %div197, %if.then33 ], [ %div40196, %if.else35 ]
  %72 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cfg, align 4
  %set_number_of_data = getelementptr inbounds %struct.stm32_spi_cfg, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %set_number_of_data to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %set_number_of_data, align 4
  %tobool44.not = icmp eq ptr %75, null
  br i1 %tobool44.not, label %if.end42.do.body54_crit_edge, label %if.then45

if.end42.do.body54_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

if.then45:                                        ; preds = %if.end42
  %call48 = tail call i32 %75(ptr noundef %spi, i32 noundef %nb_words.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then45.out_crit_edge, label %if.then45.do.body54_crit_edge

if.then45.do.body54_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

if.then45.out_crit_edge:                          ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body54:                                        ; preds = %if.then45.do.body54_crit_edge, %if.end42.do.body54_crit_edge
  %ret.0 = phi i32 [ %call48, %if.then45.do.body54_crit_edge ], [ %call14, %if.end42.do.body54_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_spi_transfer_one_setup.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_spi_transfer_one_setup, %do.body66)) #8
          to label %if.then61 [label %do.body66], !srcloc !236

if.then61:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %spi, align 4
  %78 = ptrtoint ptr %cur_comm to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cur_comm, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_spi_transfer_one_setup.__UNIQUE_ID_ddebug305, ptr noundef %77, ptr noundef nonnull @.str.47, i32 noundef %79) #8
  br label %do.body66

do.body66:                                        ; preds = %if.then61, %do.body54
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_spi_transfer_one_setup.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_spi_transfer_one_setup, %do.body86)) #8
          to label %if.then80 [label %do.body86], !srcloc !236

if.then80:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %spi, align 4
  %82 = ptrtoint ptr %cur_bpw to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cur_bpw, align 4
  %cur_fthlv = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 12
  %84 = ptrtoint ptr %cur_fthlv to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cur_fthlv, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_spi_transfer_one_setup.__UNIQUE_ID_ddebug306, ptr noundef %81, ptr noundef nonnull @.str.48, i32 noundef %83, i32 noundef %85) #8
  br label %do.body86

do.body86:                                        ; preds = %if.then80, %do.body66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_spi_transfer_one_setup.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_spi_transfer_one_setup, %do.body106)) #8
          to label %if.then100 [label %do.body106], !srcloc !236

if.then100:                                       ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %spi, align 4
  %88 = ptrtoint ptr %cur_speed.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cur_speed.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_spi_transfer_one_setup.__UNIQUE_ID_ddebug307, ptr noundef %87, ptr noundef nonnull @.str.49, i32 noundef %89) #8
  br label %do.body106

do.body106:                                       ; preds = %if.then100, %do.body86
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_spi_transfer_one_setup.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_spi_transfer_one_setup, %do.body126)) #8
          to label %if.then120 [label %do.body126], !srcloc !236

if.then120:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %spi, align 4
  %92 = ptrtoint ptr %cur_xferlen to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cur_xferlen, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_spi_transfer_one_setup.__UNIQUE_ID_ddebug308, ptr noundef %91, ptr noundef nonnull @.str.50, i32 noundef %93, i32 noundef %nb_words.0) #8
  br label %do.body126

do.body126:                                       ; preds = %if.then120, %do.body106
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_spi_transfer_one_setup.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_spi_transfer_one_setup, %out)) #8
          to label %if.then140 [label %out], !srcloc !236

if.then140:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %spi, align 4
  %cur_usedma = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 15
  %96 = ptrtoint ptr %cur_usedma to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %cur_usedma, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool142.not = icmp eq i8 %97, 0
  %cond = select i1 %tobool142.not, ptr @.str.53, ptr @.str.52
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_spi_transfer_one_setup.__UNIQUE_ID_ddebug309, ptr noundef %95, ptr noundef nonnull @.str.51, ptr noundef nonnull %cond) #8
  br label %out

out:                                              ; preds = %if.then140, %do.body126, %if.then45.out_crit_edge, %stm32_spi_communication_type.exit.out_crit_edge, %stm32_spi_prepare_mbr.exit.out_crit_edge, %entry.out_crit_edge
  %ret.1 = phi i32 [ %call14, %stm32_spi_communication_type.exit.out_crit_edge ], [ %call48, %if.then45.out_crit_edge ], [ %ret.0, %if.then140 ], [ %sub11.i, %stm32_spi_prepare_mbr.exit.out_crit_edge ], [ -22, %entry.out_crit_edge ], [ %ret.0, %do.body126 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_spi_transfer_one_dma(ptr noundef %spi, ptr nocapture noundef readonly %xfer) unnamed_addr #2 align 64 {
entry:
  %tx_dma_conf = alloca %struct.dma_slave_config, align 4
  %rx_dma_conf = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %tx_dma_conf) #8
  %0 = call ptr @memset(ptr %tx_dma_conf, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rx_dma_conf) #8
  %1 = call ptr @memset(ptr %rx_dma_conf, i32 255, i32 48)
  %lock = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %rx_buf = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 17
  %2 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_buf, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dma_rx = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 21
  %4 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_rx, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %cur_bpw.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 11
  %6 = ptrtoint ptr %cur_bpw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_bpw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %7)
  %cmp.i = icmp ult i32 %7, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %7)
  %cmp2.i = icmp ult i32 %7, 17
  %..i = select i1 %cmp2.i, i32 2, i32 4
  %buswidth.0.i = select i1 %cmp.i, i32 1, i32 %..i
  %cfg.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 2
  %8 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg.i, align 4
  %has_fifo.i = getelementptr inbounds %struct.stm32_spi_cfg, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %has_fifo.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %has_fifo.i, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.then.if.end13.i_crit_edge, label %if.then6.i

if.then.if.end13.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then6.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %cur_fthlv.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 12
  %12 = ptrtoint ptr %cur_fthlv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur_fthlv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp7.i = icmp eq i32 %13, 2
  %.80.i = select i1 %cmp7.i, i32 1, i32 %13
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then6.i, %if.then.if.end13.i_crit_edge
  %maxburst.0.i = phi i32 [ %.80.i, %if.then6.i ], [ 1, %if.then.if.end13.i_crit_edge ]
  %14 = getelementptr inbounds i8, ptr %rx_dma_conf, i32 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 44)
  %16 = ptrtoint ptr %rx_dma_conf to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %rx_dma_conf, align 4
  %phys_addr.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 22
  %17 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %phys_addr.i, align 4
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %9, align 4
  %rx.i = getelementptr inbounds %struct.stm32_spi_regspec, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx.i, align 4
  %add.i = add i32 %22, %18
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.i, ptr %14, align 4
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %rx_dma_conf, i32 0, i32 3
  %24 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %buswidth.0.i, ptr %src_addr_width.i, align 4
  %src_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %rx_dma_conf, i32 0, i32 5
  %25 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %maxburst.0.i, ptr %src_maxburst.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_spi_dma_config.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_spi_transfer_one_dma, %stm32_spi_dma_config.exit)) #8
          to label %if.then22.i [label %stm32_spi_dma_config.exit], !srcloc !236

if.then22.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_spi_dma_config.__UNIQUE_ID_ddebug270, ptr noundef %27, ptr noundef nonnull @.str.63, i32 noundef %buswidth.0.i, i32 noundef %maxburst.0.i) #8
  br label %stm32_spi_dma_config.exit

stm32_spi_dma_config.exit:                        ; preds = %if.then22.i, %if.end13.i
  %28 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dma_rx, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 44
  %32 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i184 = icmp eq ptr %33, null
  br i1 %tobool.not.i184, label %stm32_spi_dma_config.exit.dmaengine_slave_config.exit_crit_edge, label %if.then.i

stm32_spi_dma_config.exit.dmaengine_slave_config.exit_crit_edge: ; preds = %stm32_spi_dma_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_slave_config.exit

if.then.i:                                        ; preds = %stm32_spi_dma_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 %33(ptr noundef %29, ptr noundef nonnull %rx_dma_conf) #8
  br label %dmaengine_slave_config.exit

dmaengine_slave_config.exit:                      ; preds = %if.then.i, %stm32_spi_dma_config.exit.dmaengine_slave_config.exit_crit_edge
  %34 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfg.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %dma_rx_en = getelementptr inbounds %struct.stm32_spi_regspec, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %dma_rx_en to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_rx_en, align 4
  %mask = getelementptr inbounds %struct.stm32_spi_regspec, ptr %37, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mask, align 4
  %base.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %42 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %43, i32 %39
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !237
  %45 = call i32 @llvm.bswap.i32(i32 %44) #8
  %or.i = or i32 %45, %41
  %46 = call i32 @llvm.bswap.i32(i32 %or.i) #8
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %48, i32 %39
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %46) #8, !srcloc !238
  %49 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dma_rx, align 4
  %rx_sg = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 6
  %51 = ptrtoint ptr %rx_sg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rx_sg, align 4
  %nents = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 6, i32 1
  %53 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nents, align 4
  %55 = ptrtoint ptr %rx_dma_conf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_dma_conf, align 4
  %tobool.not.i185 = icmp eq ptr %50, null
  br i1 %tobool.not.i185, label %dmaengine_slave_config.exit.if.end_crit_edge, label %lor.lhs.false.i

dmaengine_slave_config.exit.if.end_crit_edge:     ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.i:                                  ; preds = %dmaengine_slave_config.exit
  %57 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %50, align 4
  %tobool1.not.i = icmp eq ptr %58, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %58, i32 0, i32 39
  %59 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %60, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.if.end_crit_edge, label %if.end.i

lor.lhs.false2.i.if.end_crit_edge:                ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i186 = call ptr %60(ptr noundef nonnull %50, ptr noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef 1, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %if.end.i, %lor.lhs.false2.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %dmaengine_slave_config.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %rx_dma_desc.0 = phi ptr [ null, %land.lhs.true.if.end_crit_edge ], [ null, %entry.if.end_crit_edge ], [ %call.i186, %if.end.i ], [ null, %lor.lhs.false2.i.if.end_crit_edge ], [ null, %lor.lhs.false.i.if.end_crit_edge ], [ null, %dmaengine_slave_config.exit.if.end_crit_edge ]
  %tx_buf = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 16
  %61 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tx_buf, align 4
  %tobool14.not = icmp eq ptr %62, null
  br i1 %tobool14.not, label %if.end.lor.lhs.false_crit_edge, label %land.lhs.true15

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true15:                                  ; preds = %if.end
  %dma_tx = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 20
  %63 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dma_tx, align 4
  %tobool16.not = icmp eq ptr %64, null
  br i1 %tobool16.not, label %land.lhs.true15.if.end26_crit_edge, label %if.then17

land.lhs.true15.if.end26_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then17:                                        ; preds = %land.lhs.true15
  %cur_bpw.i187 = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 11
  %65 = ptrtoint ptr %cur_bpw.i187 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cur_bpw.i187, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %66)
  %cmp.i188 = icmp ult i32 %66, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %66)
  %cmp2.i189 = icmp ult i32 %66, 17
  %..i190 = select i1 %cmp2.i189, i32 2, i32 4
  %buswidth.0.i191 = select i1 %cmp.i188, i32 1, i32 %..i190
  %cfg.i192 = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 2
  %67 = ptrtoint ptr %cfg.i192 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cfg.i192, align 4
  %has_fifo.i193 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %68, i32 0, i32 17
  %69 = ptrtoint ptr %has_fifo.i193 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %has_fifo.i193, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i194 = icmp eq i8 %70, 0
  br i1 %tobool.not.i194, label %if.then17.if.end13.i201_crit_edge, label %if.then6.i198

if.then17.if.end13.i201_crit_edge:                ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i201

if.then6.i198:                                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %cur_fthlv.i195 = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 12
  %71 = ptrtoint ptr %cur_fthlv.i195 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cur_fthlv.i195, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %cmp7.i196 = icmp eq i32 %72, 2
  %.80.i197 = select i1 %cmp7.i196, i32 1, i32 %72
  br label %if.end13.i201

if.end13.i201:                                    ; preds = %if.then6.i198, %if.then17.if.end13.i201_crit_edge
  %maxburst.0.i199 = phi i32 [ %.80.i197, %if.then6.i198 ], [ 1, %if.then17.if.end13.i201_crit_edge ]
  %73 = getelementptr inbounds i8, ptr %tx_dma_conf, i32 4
  %74 = call ptr @memset(ptr %73, i32 0, i32 44)
  %75 = ptrtoint ptr %tx_dma_conf to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %tx_dma_conf, align 4
  %phys_addr.i200 = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 22
  %76 = ptrtoint ptr %phys_addr.i200 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %phys_addr.i200, align 4
  %78 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %68, align 4
  %tx.i = getelementptr inbounds %struct.stm32_spi_regspec, ptr %79, i32 0, i32 8
  %80 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tx.i, align 4
  %add32.i = add i32 %81, %77
  %dst_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %tx_dma_conf, i32 0, i32 2
  %82 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %add32.i, ptr %dst_addr.i, align 4
  %dst_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %tx_dma_conf, i32 0, i32 4
  %83 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %buswidth.0.i191, ptr %dst_addr_width.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %tx_dma_conf, i32 0, i32 6
  %84 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %maxburst.0.i199, ptr %dst_maxburst.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_spi_dma_config.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_spi_transfer_one_dma, %stm32_spi_dma_config.exit202)) #8
          to label %if.then47.i [label %stm32_spi_dma_config.exit202], !srcloc !236

if.then47.i:                                      ; preds = %if.end13.i201
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_spi_dma_config.__UNIQUE_ID_ddebug271, ptr noundef %86, ptr noundef nonnull @.str.64, i32 noundef %buswidth.0.i191, i32 noundef %maxburst.0.i199) #8
  br label %stm32_spi_dma_config.exit202

stm32_spi_dma_config.exit202:                     ; preds = %if.then47.i, %if.end13.i201
  %87 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dma_tx, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %device_config.i203 = getelementptr inbounds %struct.dma_device, ptr %90, i32 0, i32 44
  %91 = ptrtoint ptr %device_config.i203 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %device_config.i203, align 4
  %tobool.not.i204 = icmp eq ptr %92, null
  br i1 %tobool.not.i204, label %stm32_spi_dma_config.exit202.dmaengine_slave_config.exit207_crit_edge, label %if.then.i206

stm32_spi_dma_config.exit202.dmaengine_slave_config.exit207_crit_edge: ; preds = %stm32_spi_dma_config.exit202
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_slave_config.exit207

if.then.i206:                                     ; preds = %stm32_spi_dma_config.exit202
  call void @__sanitizer_cov_trace_pc() #10
  %call.i205 = call i32 %92(ptr noundef %88, ptr noundef nonnull %tx_dma_conf) #8
  %93 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pr = load ptr, ptr %dma_tx, align 4
  br label %dmaengine_slave_config.exit207

dmaengine_slave_config.exit207:                   ; preds = %if.then.i206, %stm32_spi_dma_config.exit202.dmaengine_slave_config.exit207_crit_edge
  %94 = phi ptr [ %88, %stm32_spi_dma_config.exit202.dmaengine_slave_config.exit207_crit_edge ], [ %.pr, %if.then.i206 ]
  %tx_sg = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 5
  %95 = ptrtoint ptr %tx_sg to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %tx_sg, align 4
  %nents23 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 5, i32 1
  %97 = ptrtoint ptr %nents23 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %nents23, align 4
  %99 = ptrtoint ptr %tx_dma_conf to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %tx_dma_conf, align 4
  %tobool.not.i208 = icmp eq ptr %94, null
  br i1 %tobool.not.i208, label %dmaengine_slave_config.exit207.if.end26_crit_edge, label %lor.lhs.false.i210

dmaengine_slave_config.exit207.if.end26_crit_edge: ; preds = %dmaengine_slave_config.exit207
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

lor.lhs.false.i210:                               ; preds = %dmaengine_slave_config.exit207
  %101 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %94, align 4
  %tobool1.not.i209 = icmp eq ptr %102, null
  br i1 %tobool1.not.i209, label %lor.lhs.false.i210.if.end26_crit_edge, label %lor.lhs.false2.i213

lor.lhs.false.i210.if.end26_crit_edge:            ; preds = %lor.lhs.false.i210
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

lor.lhs.false2.i213:                              ; preds = %lor.lhs.false.i210
  %device_prep_slave_sg.i211 = getelementptr inbounds %struct.dma_device, ptr %102, i32 0, i32 39
  %103 = ptrtoint ptr %device_prep_slave_sg.i211 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %device_prep_slave_sg.i211, align 4
  %tobool4.not.i212 = icmp eq ptr %104, null
  br i1 %tobool4.not.i212, label %lor.lhs.false2.i213.if.end26_crit_edge, label %if.end.i215

lor.lhs.false2.i213.if.end26_crit_edge:           ; preds = %lor.lhs.false2.i213
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end.i215:                                      ; preds = %lor.lhs.false2.i213
  call void @__sanitizer_cov_trace_pc() #10
  %call.i214 = call ptr %104(ptr noundef nonnull %94, ptr noundef %96, i32 noundef %98, i32 noundef %100, i32 noundef 1, ptr noundef null) #8
  br label %if.end26

if.end26:                                         ; preds = %if.end.i215, %lor.lhs.false2.i213.if.end26_crit_edge, %lor.lhs.false.i210.if.end26_crit_edge, %dmaengine_slave_config.exit207.if.end26_crit_edge, %land.lhs.true15.if.end26_crit_edge
  %tx_dma_desc.0.ph = phi ptr [ null, %dmaengine_slave_config.exit207.if.end26_crit_edge ], [ null, %lor.lhs.false.i210.if.end26_crit_edge ], [ null, %lor.lhs.false2.i213.if.end26_crit_edge ], [ %call.i214, %if.end.i215 ], [ null, %land.lhs.true15.if.end26_crit_edge ]
  %105 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %105)
  %.pr232 = load ptr, ptr %tx_buf, align 4
  %tobool28.not = icmp eq ptr %.pr232, null
  br i1 %tobool28.not, label %if.end26.lor.lhs.false_crit_edge, label %land.lhs.true29

if.end26.lor.lhs.false_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true29:                                  ; preds = %if.end26
  %106 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dma_tx, align 4
  %tobool31.not = icmp ne ptr %107, null
  %tobool33.not = icmp eq ptr %tx_dma_desc.0.ph, null
  %or.cond = select i1 %tobool31.not, i1 %tobool33.not, i1 false
  br i1 %or.cond, label %land.lhs.true29.dma_desc_error_crit_edge, label %land.lhs.true29.lor.lhs.false_crit_edge

land.lhs.true29.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true29.dma_desc_error_crit_edge:         ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_desc_error

lor.lhs.false:                                    ; preds = %land.lhs.true29.lor.lhs.false_crit_edge, %if.end26.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %tx_dma_desc.0235 = phi ptr [ %tx_dma_desc.0.ph, %land.lhs.true29.lor.lhs.false_crit_edge ], [ %tx_dma_desc.0.ph, %if.end26.lor.lhs.false_crit_edge ], [ null, %if.end.lor.lhs.false_crit_edge ]
  %108 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rx_buf, align 4
  %tobool35.not = icmp eq ptr %109, null
  br i1 %tobool35.not, label %lor.lhs.false.if.end42_crit_edge, label %land.lhs.true36

lor.lhs.false.if.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

land.lhs.true36:                                  ; preds = %lor.lhs.false
  %dma_rx37 = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 21
  %110 = ptrtoint ptr %dma_rx37 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dma_rx37, align 4
  %tobool38.not = icmp ne ptr %111, null
  %tobool40.not = icmp eq ptr %rx_dma_desc.0, null
  %or.cond182 = select i1 %tobool38.not, i1 %tobool40.not, i1 false
  br i1 %or.cond182, label %land.lhs.true36.dma_desc_error_crit_edge, label %land.lhs.true36.if.end42_crit_edge

land.lhs.true36.if.end42_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

land.lhs.true36.dma_desc_error_crit_edge:         ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_desc_error

if.end42:                                         ; preds = %land.lhs.true36.if.end42_crit_edge, %lor.lhs.false.if.end42_crit_edge
  %cur_comm = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 13
  %112 = ptrtoint ptr %cur_comm to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cur_comm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp43 = icmp eq i32 %113, 0
  br i1 %cmp43, label %land.lhs.true45, label %if.end50

land.lhs.true45:                                  ; preds = %if.end42
  %tobool46.not = icmp eq ptr %tx_dma_desc.0235, null
  %tobool48.not = icmp eq ptr %rx_dma_desc.0, null
  %or.cond183 = select i1 %tobool46.not, i1 true, i1 %tobool48.not
  br i1 %or.cond183, label %land.lhs.true45.dma_desc_error_crit_edge, label %land.lhs.true45.if.then52_crit_edge

land.lhs.true45.if.then52_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

land.lhs.true45.dma_desc_error_crit_edge:         ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_desc_error

if.end50:                                         ; preds = %if.end42
  %tobool51.not = icmp eq ptr %rx_dma_desc.0, null
  br i1 %tobool51.not, label %if.end50.if.end63_crit_edge, label %if.end50.if.then52_crit_edge

if.end50.if.then52_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

if.end50.if.end63_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then52:                                        ; preds = %if.end50.if.then52_crit_edge, %land.lhs.true45.if.then52_crit_edge
  %cfg53 = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 2
  %114 = ptrtoint ptr %cfg53 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cfg53, align 4
  %dma_rx_cb = getelementptr inbounds %struct.stm32_spi_cfg, ptr %115, i32 0, i32 10
  %116 = ptrtoint ptr %dma_rx_cb to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dma_rx_cb, align 4
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %rx_dma_desc.0, i32 0, i32 6
  %118 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %117, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %rx_dma_desc.0, i32 0, i32 8
  %119 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %spi, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %rx_dma_desc.0, i32 0, i32 4
  %120 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %tx_submit.i, align 4
  %call.i218 = call i32 %121(ptr noundef nonnull %rx_dma_desc.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i218)
  %tobool56.not = icmp sgt i32 %call.i218, -1
  br i1 %tobool56.not, label %if.end61, label %do.end60

do.end60:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  %122 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.54) #11
  br label %dma_desc_error

if.end61:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  %dma_rx62 = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 21
  %124 = ptrtoint ptr %dma_rx62 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dma_rx62, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %127, i32 0, i32 50
  %128 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %device_issue_pending.i, align 4
  call void %129(ptr noundef %125) #8
  br label %if.end63

if.end63:                                         ; preds = %if.end61, %if.end50.if.end63_crit_edge
  %tobool64.not = icmp eq ptr %tx_dma_desc.0235, null
  br i1 %tobool64.not, label %if.end63.if.end95_crit_edge, label %if.then65

if.end63.if.end95_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then65:                                        ; preds = %if.end63
  %130 = ptrtoint ptr %cur_comm to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %cur_comm, align 4
  %132 = zext i32 %131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values)
  switch i32 %131, label %if.then65.if.end77_crit_edge [
    i32 1, label %if.then65.if.then73_crit_edge
    i32 3, label %if.then65.if.then73_crit_edge242
  ]

if.then65.if.then73_crit_edge242:                 ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73

if.then65.if.then73_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73

if.then65.if.end77_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then73:                                        ; preds = %if.then65.if.then73_crit_edge, %if.then65.if.then73_crit_edge242
  %cfg74 = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 2
  %133 = ptrtoint ptr %cfg74 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %cfg74, align 4
  %dma_tx_cb = getelementptr inbounds %struct.stm32_spi_cfg, ptr %134, i32 0, i32 11
  %135 = ptrtoint ptr %dma_tx_cb to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dma_tx_cb, align 4
  %callback75 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx_dma_desc.0235, i32 0, i32 6
  %137 = ptrtoint ptr %callback75 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %136, ptr %callback75, align 4
  %callback_param76 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx_dma_desc.0235, i32 0, i32 8
  %138 = ptrtoint ptr %callback_param76 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %spi, ptr %callback_param76, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then73, %if.then65.if.end77_crit_edge
  %tx_submit.i219 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx_dma_desc.0235, i32 0, i32 4
  %139 = ptrtoint ptr %tx_submit.i219 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %tx_submit.i219, align 4
  %call.i220 = call i32 %140(ptr noundef nonnull %tx_dma_desc.0235) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i220)
  %tobool80.not = icmp sgt i32 %call.i220, -1
  br i1 %tobool80.not, label %if.end86, label %do.end84

do.end84:                                         ; preds = %if.end77
  %141 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.57) #11
  %dma_rx98 = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 21
  %143 = ptrtoint ptr %dma_rx98 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dma_rx98, align 4
  %tobool99.not = icmp eq ptr %144, null
  br i1 %tobool99.not, label %do.end84.dma_desc_error_crit_edge, label %if.then100

do.end84.dma_desc_error_crit_edge:                ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_desc_error

if.end86:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %dma_tx87 = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 20
  %145 = ptrtoint ptr %dma_tx87 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dma_tx87, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 4
  %device_issue_pending.i221 = getelementptr inbounds %struct.dma_device, ptr %148, i32 0, i32 50
  %149 = ptrtoint ptr %device_issue_pending.i221 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %device_issue_pending.i221, align 4
  call void %150(ptr noundef %146) #8
  %cfg88 = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 2
  %151 = ptrtoint ptr %cfg88 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %cfg88, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %152, align 4
  %dma_tx_en = getelementptr inbounds %struct.stm32_spi_regspec, ptr %154, i32 0, i32 2
  %155 = ptrtoint ptr %dma_tx_en to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %dma_tx_en, align 4
  %mask94 = getelementptr inbounds %struct.stm32_spi_regspec, ptr %154, i32 0, i32 2, i32 1
  %157 = ptrtoint ptr %mask94 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %mask94, align 4
  %base.i222 = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %159 = ptrtoint ptr %base.i222 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %base.i222, align 4
  %add.ptr.i223 = getelementptr i8, ptr %160, i32 %156
  %161 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i223) #8, !srcloc !237
  %162 = call i32 @llvm.bswap.i32(i32 %161) #8
  %or.i224 = or i32 %162, %158
  %163 = call i32 @llvm.bswap.i32(i32 %or.i224) #8
  %164 = ptrtoint ptr %base.i222 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %base.i222, align 4
  %add.ptr2.i225 = getelementptr i8, ptr %165, i32 %156
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i225, i32 %163) #8, !srcloc !238
  br label %if.end95

if.end95:                                         ; preds = %if.end86, %if.end63.if.end95_crit_edge
  %cfg96 = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 2
  %166 = ptrtoint ptr %cfg96 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %cfg96, align 4
  %transfer_one_dma_start = getelementptr inbounds %struct.stm32_spi_cfg, ptr %167, i32 0, i32 9
  %168 = ptrtoint ptr %transfer_one_dma_start to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %transfer_one_dma_start, align 4
  call void %169(ptr noundef %spi) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  br label %cleanup

if.then100:                                       ; preds = %do.end84
  %170 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %144, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %171, i32 0, i32 47
  %172 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i226 = icmp eq ptr %173, null
  br i1 %tobool.not.i226, label %if.then100.dma_desc_error_crit_edge, label %if.then.i228

if.then100.dma_desc_error_crit_edge:              ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_desc_error

if.then.i228:                                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #10
  %call.i227 = call i32 %173(ptr noundef nonnull %144) #8
  br label %dma_desc_error

dma_desc_error:                                   ; preds = %if.then.i228, %if.then100.dma_desc_error_crit_edge, %do.end84.dma_desc_error_crit_edge, %do.end60, %land.lhs.true45.dma_desc_error_crit_edge, %land.lhs.true36.dma_desc_error_crit_edge, %land.lhs.true29.dma_desc_error_crit_edge
  %cfg104 = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 2
  %174 = ptrtoint ptr %cfg104 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %cfg104, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %175, align 4
  %dma_rx_en106 = getelementptr inbounds %struct.stm32_spi_regspec, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %dma_rx_en106 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %dma_rx_en106, align 4
  %mask111 = getelementptr inbounds %struct.stm32_spi_regspec, ptr %177, i32 0, i32 1, i32 1
  %180 = ptrtoint ptr %mask111 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %mask111, align 4
  %base.i229 = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %182 = ptrtoint ptr %base.i229 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %base.i229, align 4
  %add.ptr.i230 = getelementptr i8, ptr %183, i32 %179
  %184 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i230) #8, !srcloc !237
  %185 = call i32 @llvm.bswap.i32(i32 %184) #8
  %neg.i = xor i32 %181, -1
  %and.i = and i32 %185, %neg.i
  %186 = call i32 @llvm.bswap.i32(i32 %and.i) #8
  %187 = ptrtoint ptr %base.i229 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %base.i229, align 4
  %add.ptr2.i231 = getelementptr i8, ptr %188, i32 %179
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i231, i32 %186) #8, !srcloc !238
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  %189 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %190, ptr noundef nonnull @.str.60) #11
  %cur_usedma = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 15
  %191 = ptrtoint ptr %cur_usedma to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 0, ptr %cur_usedma, align 4
  %192 = ptrtoint ptr %cfg104 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %cfg104, align 4
  %transfer_one_irq = getelementptr inbounds %struct.stm32_spi_cfg, ptr %193, i32 0, i32 12
  %194 = ptrtoint ptr %transfer_one_irq to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %transfer_one_irq, align 4
  %call118 = call i32 %195(ptr noundef %spi) #8
  br label %cleanup

cleanup:                                          ; preds = %dma_desc_error, %if.end95
  %retval.0 = phi i32 [ %call118, %dma_desc_error ], [ 1, %if.end95 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rx_dma_conf) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tx_dma_conf) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32h7_spi_get_fifo_size(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %base.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !237
  %3 = or i32 %2, 16777216
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #8, !srcloc !238
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr30 = getelementptr i8, ptr %7, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #8, !srcloc !237
  %9 = and i32 %8, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not31 = icmp eq i32 %9, 0
  br i1 %tobool.not31, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %count.032 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %inc = add i32 %count.032, 1
  %conv7 = trunc i32 %inc to i8
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr9 = getelementptr i8, ptr %11, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9, i8 %conv7) #8, !srcloc !240
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 20
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !237
  %15 = and i32 %14, 33554432
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !237
  %19 = and i32 %18, -16777217
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #8, !srcloc !238
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32h7_spi_get_fifo_size.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32h7_spi_get_fifo_size, %do.end19)) #8
          to label %if.then [label %do.end19], !srcloc !236

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32h7_spi_get_fifo_size.__UNIQUE_ID_ddebug237, ptr noundef %23, ptr noundef nonnull @.str.70, i32 noundef %count.0.lcssa) #8
  br label %do.end19

do.end19:                                         ; preds = %if.then, %while.end
  ret i32 %count.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32h7_spi_get_bpw_mask(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %base.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !237
  %3 = or i32 %2, 520093696
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %3) #8, !srcloc !238
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !237
  %9 = lshr i32 %8, 24
  %and = and i32 %9, 31
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32h7_spi_get_bpw_mask.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32h7_spi_get_bpw_mask, %do.end31)) #8
          to label %if.then [label %do.end31], !srcloc !236

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw nsw i32 %and, 1
  %10 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32h7_spi_get_bpw_mask.__UNIQUE_ID_ddebug244, ptr noundef %11, ptr noundef nonnull @.str.72, i32 noundef %add) #8
  br label %do.end31

do.end31:                                         ; preds = %if.then, %entry
  %sub32 = xor i32 %and, 31
  %shr33 = lshr i32 -1, %sub32
  %and34 = and i32 %shr33, -8
  ret i32 %and34
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32h7_spi_disable(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32h7_spi_disable.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32h7_spi_disable, %do.body5)) #8
          to label %if.then [label %do.body5], !srcloc !236

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32h7_spi_disable.__UNIQUE_ID_ddebug265, ptr noundef %1, ptr noundef nonnull @.str.74) #8
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 6
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %base = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !237
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool15.not = icmp eq i32 %5, 0
  br i1 %tobool15.not, label %do.body5.cleanup_crit_edge, label %if.end18

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %do.body5
  %cur_usedma = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 15
  %6 = ptrtoint ptr %cur_usedma to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cur_usedma, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool19.not = icmp eq i8 %7, 0
  br i1 %tobool19.not, label %if.end18.if.end34_crit_edge, label %land.lhs.true

if.end18.if.end34_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end18
  %dma_tx = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 20
  %8 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_tx, align 4
  %tobool21.not = icmp eq ptr %9, null
  br i1 %tobool21.not, label %land.lhs.true.if.end25_crit_edge, label %if.then22

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then22:                                        ; preds = %land.lhs.true
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 47
  %12 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then22.if.end25_crit_edge, label %if.then.i

if.then22.if.end25_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %13(ptr noundef nonnull %9) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then.i, %if.then22.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge
  %14 = ptrtoint ptr %cur_usedma to i32
  call void @__asan_load1_noabort(i32 %14)
  %.pr = load i8, ptr %cur_usedma, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool27.not = icmp eq i8 %.pr, 0
  br i1 %tobool27.not, label %if.end25.if.end34_crit_edge, label %land.lhs.true29

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

land.lhs.true29:                                  ; preds = %if.end25
  %dma_rx = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 21
  %15 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma_rx, align 4
  %tobool30.not = icmp eq ptr %16, null
  br i1 %tobool30.not, label %land.lhs.true29.if.end34_crit_edge, label %if.then31

land.lhs.true29.if.end34_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then31:                                        ; preds = %land.lhs.true29
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %device_terminate_all.i57 = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 47
  %19 = ptrtoint ptr %device_terminate_all.i57 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_terminate_all.i57, align 4
  %tobool.not.i58 = icmp eq ptr %20, null
  br i1 %tobool.not.i58, label %if.then31.if.end34_crit_edge, label %if.then.i60

if.then31.if.end34_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then.i60:                                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %call.i59 = tail call i32 %20(ptr noundef nonnull %16) #8
  br label %if.end34

if.end34:                                         ; preds = %if.then.i60, %if.then31.if.end34_crit_edge, %land.lhs.true29.if.end34_crit_edge, %if.end25.if.end34_crit_edge, %if.end18.if.end34_crit_edge
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !237
  %24 = and i32 %23, -16777217
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #8, !srcloc !238
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !237
  %30 = and i32 %29, -12582913
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add.ptr2.i = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %30) #8, !srcloc !238
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %add.ptr36 = getelementptr i8, ptr %34, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 0) #8, !srcloc !238
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add.ptr38 = getelementptr i8, ptr %36, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 -133234688) #8, !srcloc !238
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.body5.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32h7_spi_config(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %base.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 80
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !237
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %3) #8, !srcloc !238
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !237
  %9 = or i32 %8, 1638400
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #8, !srcloc !238
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %13, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #8, !srcloc !237
  %15 = or i32 %14, 16516
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr2.i14 = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i14, i32 %15) #8, !srcloc !238
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32h7_spi_set_bpw(ptr nocapture noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_bpw = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 11
  %0 = ptrtoint ptr %cur_bpw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_bpw, align 4
  %cur_xferlen = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 14
  %2 = ptrtoint ptr %cur_xferlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_xferlen, align 4
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 1) #8
  %fifo_size.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 8
  %5 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fifo_size.i, align 4
  %div17.i = lshr i32 %6, 1
  %7 = tail call i32 @llvm.umin.i32(i32 %4, i32 %div17.i) #8
  %sub.i = add i32 %1, 7
  %div718.i = lshr i32 %sub.i, 3
  %add8.i = add nsw i32 %div718.i, -1
  %sub9.i = add i32 %add8.i, %7
  %div10.i = udiv i32 %sub9.i, %div718.i
  %cur_fthlv = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 12
  %8 = ptrtoint ptr %cur_fthlv to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div10.i, ptr %cur_fthlv, align 4
  %sub = add i32 %1, 31
  %and13 = and i32 %sub, 31
  %sub16 = shl i32 %div10.i, 5
  %shl40 = add i32 %sub16, 480
  %and41 = and i32 %shl40, 480
  %or42 = or i32 %and41, %and13
  %base = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !237
  %12 = and i32 %11, 16711679
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %or46 = or i32 %or42, %13
  %14 = tail call i32 @llvm.bswap.i32(i32 %or46)
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr48 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %14) #8, !srcloc !238
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32h7_spi_set_mode(ptr nocapture noundef readonly %spi, i32 noundef %comm_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %comm_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %comm_type, label %if.else9 [
    i32 4, label %if.then
    i32 3, label %if.then2
    i32 2, label %entry.if.end12_crit_edge
    i32 1, label %if.then8
  ]

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #8, !srcloc !237
  %4 = and i32 %3, -524289
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #8, !srcloc !238
  br label %if.end12

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base.i44 = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %7 = ptrtoint ptr %base.i44 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i44, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !237
  %10 = or i32 %9, 524288
  %11 = ptrtoint ptr %base.i44 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i44, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #8, !srcloc !238
  br label %if.end12

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.else9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.then8, %if.then2, %if.then, %entry.if.end12_crit_edge
  %mode.0 = phi i32 [ 393216, %if.then ], [ 393216, %if.then2 ], [ 131072, %if.then8 ], [ 0, %if.else9 ], [ 262144, %entry.if.end12_crit_edge ]
  %base = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !237
  %16 = and i32 %15, -1537
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %or31 = or i32 %17, %mode.0
  %18 = tail call i32 @llvm.bswap.i32(i32 %or31)
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr33 = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %18) #8, !srcloc !238
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32h7_spi_data_idleness(ptr nocapture noundef readonly %spi, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp = icmp ugt i32 %len, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end52_crit_edge

entry.if.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

land.lhs.true:                                    ; preds = %entry
  %cur_midi = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 9
  %0 = ptrtoint ptr %cur_midi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_midi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.not = icmp eq i32 %1, 0
  br i1 %cmp1.not, label %land.lhs.true.if.end52_crit_edge, label %if.then

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then:                                          ; preds = %land.lhs.true
  %cur_speed = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 10
  %2 = ptrtoint ptr %cur_speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_speed, align 4
  %sub = add i32 %3, 999999999
  %div = udiv i32 %sub, %3
  %add4 = add i32 %1, -1
  %sub5 = add i32 %add4, %div
  %div6 = udiv i32 %sub5, %div
  %4 = tail call i32 @llvm.umin.i32(i32 %div6, i32 15)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32h7_spi_data_idleness.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32h7_spi_data_idleness, %do.end48)) #8
          to label %if.then26 [label %do.end48], !srcloc !236

if.then26:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spi, align 4
  %mul = mul i32 %4, %div
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32h7_spi_data_idleness.__UNIQUE_ID_ddebug294, ptr noundef %6, ptr noundef nonnull @.str.76, i32 noundef %div, i32 noundef %4, i32 noundef %mul) #8
  br label %do.end48

do.end48:                                         ; preds = %if.then26, %if.then
  %shl = shl nuw nsw i32 %4, 4
  br label %if.end52

if.end52:                                         ; preds = %do.end48, %land.lhs.true.if.end52_crit_edge, %entry.if.end52_crit_edge
  %cfg2_setb.0 = phi i32 [ %shl, %do.end48 ], [ 0, %land.lhs.true.if.end52_crit_edge ], [ 0, %entry.if.end52_crit_edge ]
  %base = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !237
  %10 = and i32 %9, 268435455
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %or56 = or i32 %11, %cfg2_setb.0
  %12 = tail call i32 @llvm.bswap.i32(i32 %or56)
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr58 = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %12) #8, !srcloc !238
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32h7_spi_number_of_data(ptr nocapture noundef readonly %spi, i32 noundef %nb_words) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %nb_words)
  %cmp = icmp ult i32 %nb_words, 65536
  br i1 %cmp, label %do.end9, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.bswap.i32(i32 %nb_words)
  %base = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !238
  br label %return

return:                                           ; preds = %do.end9, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end9 ], [ -90, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32h7_spi_transfer_one_dma_start(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_comm = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 13
  %0 = ptrtoint ptr %cur_comm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_comm, align 4
  %2 = add i32 %1, -1
  %switch.and = and i32 %2, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %3 = select i1 %switch.selectcmp, i32 600, i32 576
  %base.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !237
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %or.i = or i32 %3, %7
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %8) #8, !srcloc !238
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_spi_enable.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32h7_spi_transfer_one_dma_start, %stm32_spi_enable.exit)) #8
          to label %if.then.i [label %stm32_spi_enable.exit], !srcloc !236

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_spi_enable.__UNIQUE_ID_ddebug263, ptr noundef %12, ptr noundef nonnull @.str.78) #8
  br label %stm32_spi_enable.exit

stm32_spi_enable.exit:                            ; preds = %if.then.i, %entry
  %cfg.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 2
  %13 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %mask.i = getelementptr inbounds %struct.stm32_spi_reg, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mask.i, align 4
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 %18
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !237
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  %or.i.i = or i32 %24, %20
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %27, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %25) #8, !srcloc !238
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !237
  %31 = or i32 %30, 131072
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #8, !srcloc !238
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_spi_dma_rx_cb(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.stm32_spi, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  tail call void @spi_finalize_current_transfer(ptr noundef %1) #8
  %cfg = getelementptr inbounds %struct.stm32_spi, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %disable = getelementptr inbounds %struct.stm32_spi_cfg, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable, align 4
  tail call void %5(ptr noundef %data) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32h7_spi_transfer_one_irq(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_buf = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 16
  %0 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_buf, align 4
  %rx_buf7 = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 17
  %2 = ptrtoint ptr %rx_buf7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_buf7, align 4
  %lock = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 6
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_spi_enable.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32h7_spi_transfer_one_irq, %stm32_spi_enable.exit)) #8
          to label %if.then.i [label %stm32_spi_enable.exit], !srcloc !236

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_spi_enable.__UNIQUE_ID_ddebug263, ptr noundef %5, ptr noundef nonnull @.str.78) #8
  br label %stm32_spi_enable.exit

stm32_spi_enable.exit:                            ; preds = %if.then.i, %entry
  %cfg.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 2
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %mask.i = getelementptr inbounds %struct.stm32_spi_reg, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask.i, align 4
  %base.i.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %11
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !237
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %or.i.i = or i32 %17, %13
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %20, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %18) #8, !srcloc !238
  %21 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_buf, align 4
  %tobool19.not = icmp eq ptr %22, null
  br i1 %tobool19.not, label %stm32_spi_enable.exit.if.end21_crit_edge, label %if.then20

stm32_spi_enable.exit.if.end21_crit_edge:         ; preds = %stm32_spi_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then20:                                        ; preds = %stm32_spi_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @stm32h7_spi_write_txfifo(ptr noundef %spi)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %stm32_spi_enable.exit.if.end21_crit_edge
  %tobool.not = icmp eq ptr %1, null
  %tobool8.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool8.not, i32 600, i32 601
  %spec.select37 = select i1 %tobool8.not, i32 602, i32 604
  %ier.0 = select i1 %tobool.not, i32 %spec.select, i32 %spec.select37
  %23 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !237
  %26 = or i32 %25, 131072
  %27 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #8, !srcloc !238
  %29 = tail call i32 @llvm.bswap.i32(i32 %ier.0)
  %30 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i, align 4
  %add.ptr = getelementptr i8, ptr %31, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %29) #8, !srcloc !238
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call15) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32h7_spi_irq_thread(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %base = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !237
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #8, !srcloc !237
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %or = or i32 %9, 2048
  %cur_comm = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %cur_comm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_comm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp13 = icmp eq i32 %11, 0
  br i1 %cmp13, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cur_usedma = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %cur_usedma to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cur_usedma, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %or15 = or i32 %9, 2051
  %spec.select = select i1 %tobool.not, i32 %or15, i32 %or
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %mask.0 = phi i32 [ %or, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %and = and i32 %mask.0, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %do.end20, label %if.end22

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.81, i32 noundef %5, i32 noundef %9) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %and23 = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end58_crit_edge, label %if.then25

if.end22.if.end58_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then25:                                        ; preds = %if.end22
  %call26 = tail call i32 @___ratelimit(ptr noundef nonnull @stm32h7_spi_irq_thread.rs, ptr noundef nonnull @.str.82) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then25.if.end44_crit_edge, label %do.body29

if.then25.if.end44_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

do.body29:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32h7_spi_irq_thread.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32h7_spi_irq_thread, %if.end44)) #8
          to label %land.lhs.true36 [label %if.end44], !srcloc !236

land.lhs.true36:                                  ; preds = %do.body29
  %call37 = tail call i32 @___ratelimit(ptr noundef nonnull @stm32h7_spi_irq_thread._rs, ptr noundef nonnull @.str.82) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true36.if.end44_crit_edge, label %if.then39

land.lhs.true36.if.end44_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then39:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32h7_spi_irq_thread.descriptor, ptr noundef %17, ptr noundef nonnull @.str.85) #8
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %land.lhs.true36.if.end44_crit_edge, %do.body29, %if.then25.if.end44_crit_edge
  %cur_usedma45 = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 15
  %18 = ptrtoint ptr %cur_usedma45 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cur_usedma45, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool46.not = icmp eq i8 %19, 0
  br i1 %tobool46.not, label %land.lhs.true47, label %if.end44.if.end53_crit_edge

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

land.lhs.true47:                                  ; preds = %if.end44
  %rx_buf = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 17
  %20 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_buf, align 4
  %tobool48.not = icmp eq ptr %21, null
  br i1 %tobool48.not, label %land.lhs.true47.if.end53_crit_edge, label %land.lhs.true49

land.lhs.true47.if.end53_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

land.lhs.true49:                                  ; preds = %land.lhs.true47
  %rx_len = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 19
  %22 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp50 = icmp sgt i32 %23, 0
  br i1 %cmp50, label %if.then52, label %land.lhs.true49.if.end53_crit_edge

land.lhs.true49.if.end53_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then52:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @stm32h7_spi_read_rxfifo(ptr noundef %1)
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %land.lhs.true49.if.end53_crit_edge, %land.lhs.true47.if.end53_crit_edge, %if.end44.if.end53_crit_edge
  %24 = ptrtoint ptr %cur_usedma45 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cur_usedma45, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool55.not = icmp ne i8 %25, 0
  br label %if.end58

if.end58:                                         ; preds = %if.end53, %if.end22.if.end58_crit_edge
  %end.0.off0 = phi i1 [ false, %if.end22.if.end58_crit_edge ], [ %tobool55.not, %if.end53 ]
  %and59 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end58.if.end66_crit_edge, label %do.end64

if.end58.if.end66_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.87) #11
  br label %if.end66

if.end66:                                         ; preds = %do.end64, %if.end58.if.end66_crit_edge
  %end.1.off0 = phi i1 [ true, %do.end64 ], [ %end.0.off0, %if.end58.if.end66_crit_edge ]
  %and67 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.if.end74_crit_edge, label %do.end72

if.end66.if.end74_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

do.end72:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.90) #11
  br label %if.end74

if.end74:                                         ; preds = %do.end72, %if.end66.if.end74_crit_edge
  %end.2.off0 = phi i1 [ true, %do.end72 ], [ %end.1.off0, %if.end66.if.end74_crit_edge ]
  %and75 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end74.if.end100_crit_edge, label %if.then77

if.end74.if.end100_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then77:                                        ; preds = %if.end74
  %cur_usedma78 = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 15
  %30 = ptrtoint ptr %cur_usedma78 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %cur_usedma78, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool79.not = icmp eq i8 %31, 0
  br i1 %tobool79.not, label %land.lhs.true80, label %if.then77.lor.lhs.false_crit_edge

if.then77.lor.lhs.false_crit_edge:                ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true80:                                  ; preds = %if.then77
  %rx_buf81 = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 17
  %32 = ptrtoint ptr %rx_buf81 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_buf81, align 4
  %tobool82.not = icmp eq ptr %33, null
  br i1 %tobool82.not, label %land.lhs.true80.if.end88_crit_edge, label %land.lhs.true83

land.lhs.true80.if.end88_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

land.lhs.true83:                                  ; preds = %land.lhs.true80
  %rx_len84 = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 19
  %34 = ptrtoint ptr %rx_len84 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_len84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp85 = icmp sgt i32 %35, 0
  br i1 %cmp85, label %if.then87, label %land.lhs.true83.if.end88_crit_edge

land.lhs.true83.if.end88_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then87:                                        ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @stm32h7_spi_read_rxfifo(ptr noundef %1)
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %land.lhs.true83.if.end88_crit_edge, %land.lhs.true80.if.end88_crit_edge
  %36 = ptrtoint ptr %cur_usedma78 to i32
  call void @__asan_load1_noabort(i32 %36)
  %.pr = load i8, ptr %cur_usedma78, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool90.not = icmp eq i8 %.pr, 0
  br i1 %tobool90.not, label %if.end88.if.then98_crit_edge, label %if.end88.lor.lhs.false_crit_edge

if.end88.lor.lhs.false_crit_edge:                 ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.end88.if.then98_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then98

lor.lhs.false:                                    ; preds = %if.end88.lor.lhs.false_crit_edge, %if.then77.lor.lhs.false_crit_edge
  %37 = ptrtoint ptr %cur_comm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cur_comm, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %38, label %lor.lhs.false.if.end100_crit_edge [
    i32 1, label %lor.lhs.false.if.then98_crit_edge
    i32 3, label %lor.lhs.false.if.then98_crit_edge194
  ]

lor.lhs.false.if.then98_crit_edge194:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then98

lor.lhs.false.if.then98_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then98

lor.lhs.false.if.end100_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then98:                                        ; preds = %lor.lhs.false.if.then98_crit_edge, %lor.lhs.false.if.then98_crit_edge194, %if.end88.if.then98_crit_edge
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %lor.lhs.false.if.end100_crit_edge, %if.end74.if.end100_crit_edge
  %end.3.off0 = phi i1 [ true, %if.then98 ], [ %end.2.off0, %if.end74.if.end100_crit_edge ], [ %end.2.off0, %lor.lhs.false.if.end100_crit_edge ]
  %and101 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end100.if.end113_crit_edge, label %if.then103

if.end100.if.end113_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then103:                                       ; preds = %if.end100
  %cur_usedma104 = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 15
  %40 = ptrtoint ptr %cur_usedma104 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %cur_usedma104, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool105.not = icmp eq i8 %41, 0
  br i1 %tobool105.not, label %land.lhs.true106, label %if.then103.if.end113_crit_edge

if.then103.if.end113_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

land.lhs.true106:                                 ; preds = %if.then103
  %tx_buf = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 16
  %42 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_buf, align 4
  %tobool107.not = icmp eq ptr %43, null
  br i1 %tobool107.not, label %land.lhs.true106.if.end113_crit_edge, label %land.lhs.true108

land.lhs.true106.if.end113_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

land.lhs.true108:                                 ; preds = %land.lhs.true106
  %tx_len = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 18
  %44 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp109 = icmp sgt i32 %45, 0
  br i1 %cmp109, label %if.then111, label %land.lhs.true108.if.end113_crit_edge

land.lhs.true108.if.end113_crit_edge:             ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then111:                                       ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @stm32h7_spi_write_txfifo(ptr noundef %1)
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %land.lhs.true108.if.end113_crit_edge, %land.lhs.true106.if.end113_crit_edge, %if.then103.if.end113_crit_edge, %if.end100.if.end113_crit_edge
  %and114 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end113.if.end128_crit_edge, label %if.then116

if.end113.if.end128_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

if.then116:                                       ; preds = %if.end113
  %cur_usedma117 = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 15
  %46 = ptrtoint ptr %cur_usedma117 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %cur_usedma117, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool118.not = icmp eq i8 %47, 0
  br i1 %tobool118.not, label %land.lhs.true119, label %if.then116.if.end128_crit_edge

if.then116.if.end128_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

land.lhs.true119:                                 ; preds = %if.then116
  %rx_buf120 = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 17
  %48 = ptrtoint ptr %rx_buf120 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rx_buf120, align 4
  %tobool121.not = icmp eq ptr %49, null
  br i1 %tobool121.not, label %land.lhs.true119.if.end128_crit_edge, label %land.lhs.true122

land.lhs.true119.if.end128_crit_edge:             ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

land.lhs.true122:                                 ; preds = %land.lhs.true119
  %rx_len123 = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 19
  %50 = ptrtoint ptr %rx_len123 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_len123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp124 = icmp sgt i32 %51, 0
  br i1 %cmp124, label %if.then126, label %land.lhs.true122.if.end128_crit_edge

land.lhs.true122.if.end128_crit_edge:             ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

if.then126:                                       ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @stm32h7_spi_read_rxfifo(ptr noundef %1)
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %land.lhs.true122.if.end128_crit_edge, %land.lhs.true119.if.end128_crit_edge, %if.then116.if.end128_crit_edge, %if.end113.if.end128_crit_edge
  %52 = tail call i32 @llvm.bswap.i32(i32 %and)
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 4
  %add.ptr131 = getelementptr i8, ptr %54, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 %52) #8, !srcloc !238
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  br i1 %end.3.off0, label %if.then134, label %if.end128.cleanup_crit_edge

if.end128.cleanup_crit_edge:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then134:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @stm32h7_spi_disable(ptr noundef %1)
  tail call void @spi_finalize_current_transfer(ptr noundef %dev_id) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then134, %if.end128.cleanup_crit_edge, %do.end20
  %retval.0 = phi i32 [ 0, %do.end20 ], [ 1, %if.then134 ], [ 1, %if.end128.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32h7_spi_write_txfifo(ptr nocapture noundef %spi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %tx_len = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 18
  %0 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp54 = icmp sgt i32 %1, 0
  br i1 %cmp54, label %land.rhs.lr.ph, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.rhs.lr.ph:                                   ; preds = %entry
  %cur_xferlen = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 14
  %tx_buf19 = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 16
  br label %land.rhs

land.rhs:                                         ; preds = %if.end25.land.rhs_crit_edge, %land.rhs.lr.ph
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !237
  %5 = and i32 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %land.rhs.do.body_crit_edge, label %while.body

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

while.body:                                       ; preds = %land.rhs
  %6 = ptrtoint ptr %cur_xferlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_xferlen, align 4
  %8 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_len, align 4
  %sub = sub i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp3 = icmp ugt i32 %9, 3
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %tx_buf19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_buf19, align 4
  %add.ptr4 = getelementptr i8, ptr %11, i32 %sub
  %12 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr4, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %16, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %14) #8, !srcloc !238
  br label %if.end25

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp10 = icmp ugt i32 %9, 1
  %17 = ptrtoint ptr %tx_buf19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_buf19, align 4
  %add.ptr13 = getelementptr i8, ptr %18, i32 %sub
  br i1 %cmp10, label %if.then11, label %if.else18

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr13, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %23, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15, i16 %21) #8, !srcloc !241
  br label %if.end25

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr13, align 1
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr22 = getelementptr i8, ptr %27, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr22, i8 %25) #8, !srcloc !240
  br label %if.end25

if.end25:                                         ; preds = %if.else18, %if.then11, %if.then
  %.sink56 = phi i32 [ -2, %if.then11 ], [ -1, %if.else18 ], [ -4, %if.then ]
  %28 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_len, align 4
  %sub17 = add i32 %29, %.sink56
  store i32 %sub17, ptr %tx_len, align 4
  %cmp = icmp sgt i32 %sub17, 0
  br i1 %cmp, label %if.end25.land.rhs_crit_edge, label %if.end25.do.body_crit_edge

if.end25.do.body_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end25.land.rhs_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

do.body:                                          ; preds = %if.end25.do.body_crit_edge, %land.rhs.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32h7_spi_write_txfifo.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32h7_spi_write_txfifo, %do.end)) #8
          to label %if.then32 [label %do.end], !srcloc !236

if.then32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %spi, align 4
  %32 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32h7_spi_write_txfifo.__UNIQUE_ID_ddebug250, ptr noundef %31, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.79, i32 noundef %33) #8
  br label %do.end

do.end:                                           ; preds = %if.then32, %do.body
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32h7_spi_read_rxfifo(ptr nocapture noundef %spi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !237
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %rx_len = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 19
  %4 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp136 = icmp sgt i32 %5, 0
  br i1 %cmp136, label %land.rhs.lr.ph, label %entry.do.body89_crit_edge

entry.do.body89_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body89

land.rhs.lr.ph:                                   ; preds = %entry
  %cur_xferlen = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 14
  %rx_buf = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 17
  %cur_bpw = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 11
  br label %land.rhs

land.rhs:                                         ; preds = %if.end65.land.rhs_crit_edge, %land.rhs.lr.ph
  %6 = phi i32 [ %5, %land.rhs.lr.ph ], [ %38, %if.end65.land.rhs_crit_edge ]
  %sr.0137 = phi i32 [ %3, %land.rhs.lr.ph ], [ %36, %if.end65.land.rhs_crit_edge ]
  %rxplvl.0139.in = lshr i32 %sr.0137, 13
  %rxplvl.0139 = and i32 %rxplvl.0139.in, 3
  %and14 = and i32 %sr.0137, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool.not = icmp eq i32 %and14, 0
  br i1 %tobool.not, label %lor.rhs, label %land.rhs.while.body_crit_edge

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = and i32 %sr.0137, 32768
  br label %while.body

lor.rhs:                                          ; preds = %land.rhs
  %and15 = and i32 %sr.0137, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %lor.rhs.do.body89_crit_edge, label %land.rhs17

lor.rhs.do.body89_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body89

land.rhs17:                                       ; preds = %lor.rhs
  %and18 = and i32 %sr.0137, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rxplvl.0139)
  %cmp21.not = icmp eq i32 %rxplvl.0139, 0
  %or.cond = select i1 %tobool19.not, i1 %cmp21.not, i1 false
  br i1 %or.cond, label %land.rhs17.do.body89_crit_edge, label %land.rhs17.while.body_crit_edge

land.rhs17.while.body_crit_edge:                  ; preds = %land.rhs17
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

land.rhs17.do.body89_crit_edge:                   ; preds = %land.rhs17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body89

while.body:                                       ; preds = %land.rhs17.while.body_crit_edge, %land.rhs.while.body_crit_edge
  %and27.pre-phi = phi i32 [ %.pre, %land.rhs.while.body_crit_edge ], [ %and18, %land.rhs17.while.body_crit_edge ]
  %7 = ptrtoint ptr %cur_xferlen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cur_xferlen, align 4
  %sub = sub i32 %8, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp26 = icmp ult i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.pre-phi)
  %tobool28.not = icmp eq i32 %and27.pre-phi, 0
  %or.cond131 = select i1 %cmp26, i1 %tobool28.not, i1 false
  br i1 %or.cond131, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_buf, align 4
  %add.ptr29 = getelementptr i8, ptr %10, i32 %sub
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr32 = getelementptr i8, ptr %12, i32 48
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #8, !srcloc !237
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %add.ptr29, align 4
  br label %if.end65

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp38 = icmp ugt i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rxplvl.0139)
  %cmp42 = icmp ugt i32 %rxplvl.0139, 1
  %or.cond132 = select i1 %cmp38, i1 true, i1 %cmp42
  br i1 %or.cond132, label %if.else.if.then45_crit_edge, label %lor.lhs.false43

if.else.if.then45_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

lor.lhs.false43:                                  ; preds = %if.else
  %16 = ptrtoint ptr %cur_bpw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cur_bpw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %17)
  %cmp44 = icmp ugt i32 %17, 8
  br i1 %cmp44, label %lor.lhs.false43.if.then45_crit_edge, label %if.else55

lor.lhs.false43.if.then45_crit_edge:              ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false43.if.then45_crit_edge, %if.else.if.then45_crit_edge
  %18 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_buf, align 4
  %add.ptr47 = getelementptr i8, ptr %19, i32 %sub
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr50 = getelementptr i8, ptr %21, i32 48
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr50) #8, !srcloc !242
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %24 = ptrtoint ptr %add.ptr47 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %add.ptr47, align 2
  br label %if.end65

if.else55:                                        ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_buf, align 4
  %add.ptr57 = getelementptr i8, ptr %26, i32 %sub
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr60 = getelementptr i8, ptr %28, i32 48
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr60) #8, !srcloc !243
  %30 = ptrtoint ptr %add.ptr57 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %add.ptr57, align 1
  br label %if.end65

if.end65:                                         ; preds = %if.else55, %if.then45, %if.then
  %.sink145 = phi i32 [ -2, %if.then45 ], [ -1, %if.else55 ], [ -4, %if.then ]
  %31 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_len, align 4
  %sub54 = add i32 %32, %.sink145
  store i32 %sub54, ptr %rx_len, align 4
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %add.ptr68 = getelementptr i8, ptr %34, i32 20
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #8, !srcloc !237
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %37 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_len, align 4
  %cmp = icmp sgt i32 %38, 0
  br i1 %cmp, label %if.end65.land.rhs_crit_edge, label %if.end65.do.body89_crit_edge

if.end65.do.body89_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body89

if.end65.land.rhs_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

do.body89:                                        ; preds = %if.end65.do.body89_crit_edge, %land.rhs17.do.body89_crit_edge, %lor.rhs.do.body89_crit_edge, %entry.do.body89_crit_edge
  %sr.0.lcssa = phi i32 [ %3, %entry.do.body89_crit_edge ], [ %sr.0137, %land.rhs17.do.body89_crit_edge ], [ %36, %if.end65.do.body89_crit_edge ], [ %sr.0137, %lor.rhs.do.body89_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32h7_spi_read_rxfifo.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32h7_spi_read_rxfifo, %do.end100)) #8
          to label %if.then96 [label %do.end100], !srcloc !236

if.then96:                                        ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %spi, align 4
  %41 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32h7_spi_read_rxfifo.__UNIQUE_ID_ddebug262, ptr noundef %40, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.92, i32 noundef %42, i32 noundef %sr.0.lcssa) #8
  br label %do.end100

do.end100:                                        ; preds = %if.then96, %do.body89
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f4_spi_get_bpw_mask(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32f4_spi_get_bpw_mask.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32f4_spi_get_bpw_mask, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !236

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32f4_spi_get_bpw_mask.__UNIQUE_ID_ddebug238, ptr noundef %1, ptr noundef nonnull @.str.95) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 32896
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32f4_spi_disable(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32f4_spi_disable.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32f4_spi_disable, %do.body5)) #8
          to label %if.then [label %do.body5], !srcloc !236

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32f4_spi_disable.__UNIQUE_ID_ddebug264, ptr noundef %1, ptr noundef nonnull @.str.74) #8
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 6
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %base = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !237
  %5 = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool15.not = icmp eq i32 %5, 0
  br i1 %tobool15.not, label %do.body5.cleanup_crit_edge, label %if.end18

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %do.body5
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !237
  %9 = and i32 %8, 536870911
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr2.i = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %9) #8, !srcloc !238
  %call19 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call19, 100000000
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr23133 = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23133) #8, !srcloc !237
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %tobool27.not135 = icmp sgt i32 %14, -1
  br i1 %tobool27.not135, label %if.end18.if.end62_crit_edge, label %if.end18.land.lhs.true_crit_edge

if.end18.land.lhs.true_crit_edge:                 ; preds = %if.end18
  br label %land.lhs.true

if.end18.if.end62_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.end18.land.lhs.true_crit_edge
  %call31 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call31, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call31, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #8
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr23 = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #8, !srcloc !237
  %tobool27.not = icmp sgt i32 %18, -1
  br i1 %tobool27.not, label %cond.false.if.end62_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

cond.false.if.end62_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

for.end:                                          ; preds = %land.lhs.true
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr38 = getelementptr i8, ptr %20, i32 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #8, !srcloc !237
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %tobool52.not = icmp sgt i32 %21, -1
  br i1 %tobool52.not, label %for.end.if.end62_crit_edge, label %do.end60

for.end.if.end62_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

do.end60:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.97) #11
  br label %if.end62

if.end62:                                         ; preds = %do.end60, %for.end.if.end62_crit_edge, %cond.false.if.end62_crit_edge, %if.end18.if.end62_crit_edge
  %cur_usedma = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 15
  %24 = ptrtoint ptr %cur_usedma to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cur_usedma, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool63.not = icmp eq i8 %25, 0
  br i1 %tobool63.not, label %if.end62.if.end79_crit_edge, label %land.lhs.true65

if.end62.if.end79_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

land.lhs.true65:                                  ; preds = %if.end62
  %dma_tx = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 20
  %26 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma_tx, align 4
  %tobool66.not = icmp eq ptr %27, null
  br i1 %tobool66.not, label %land.lhs.true65.if.end70_crit_edge, label %if.then67

land.lhs.true65.if.end70_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then67:                                        ; preds = %land.lhs.true65
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %29, i32 0, i32 47
  %30 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.then67.if.end70_crit_edge, label %if.then.i

if.then67.if.end70_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then.i:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %31(ptr noundef nonnull %27) #8
  br label %if.end70

if.end70:                                         ; preds = %if.then.i, %if.then67.if.end70_crit_edge, %land.lhs.true65.if.end70_crit_edge
  %32 = ptrtoint ptr %cur_usedma to i32
  call void @__asan_load1_noabort(i32 %32)
  %.pr = load i8, ptr %cur_usedma, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool72.not = icmp eq i8 %.pr, 0
  br i1 %tobool72.not, label %if.end70.if.end79_crit_edge, label %land.lhs.true74

if.end70.if.end79_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

land.lhs.true74:                                  ; preds = %if.end70
  %dma_rx = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 21
  %33 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma_rx, align 4
  %tobool75.not = icmp eq ptr %34, null
  br i1 %tobool75.not, label %land.lhs.true74.if.end79_crit_edge, label %if.then76

land.lhs.true74.if.end79_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then76:                                        ; preds = %land.lhs.true74
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %device_terminate_all.i119 = getelementptr inbounds %struct.dma_device, ptr %36, i32 0, i32 47
  %37 = ptrtoint ptr %device_terminate_all.i119 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device_terminate_all.i119, align 4
  %tobool.not.i120 = icmp eq ptr %38, null
  br i1 %tobool.not.i120, label %if.then76.if.end79_crit_edge, label %if.then.i122

if.then76.if.end79_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then.i122:                                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  %call.i121 = tail call i32 %38(ptr noundef nonnull %34) #8
  br label %if.end79

if.end79:                                         ; preds = %if.then.i122, %if.then76.if.end79_crit_edge, %land.lhs.true74.if.end79_crit_edge, %if.end70.if.end79_crit_edge, %if.end62.if.end79_crit_edge
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #8, !srcloc !237
  %42 = and i32 %41, -1073741825
  %43 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #8, !srcloc !238
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %add.ptr.i127 = getelementptr i8, ptr %46, i32 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127) #8, !srcloc !237
  %48 = and i32 %47, -50331649
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %add.ptr2.i129 = getelementptr i8, ptr %50, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i129, i32 %48) #8, !srcloc !238
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  %add.ptr82 = getelementptr i8, ptr %52, i32 12
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82) #8, !srcloc !237
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %add.ptr87 = getelementptr i8, ptr %55, i32 8
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #8, !srcloc !237
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %do.body5.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f4_spi_config(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %base.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !237
  %3 = and i32 %2, -524289
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %3) #8, !srcloc !238
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !237
  %9 = or i32 %8, 71499776
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #8, !srcloc !238
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32f4_spi_set_bpw(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_bpw = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 11
  %0 = ptrtoint ptr %cur_bpw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_bpw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp = icmp eq i32 %1, 16
  %base.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = or i32 %4, 524288
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #8, !srcloc !238
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = and i32 %4, -524289
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #8, !srcloc !238
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f4_spi_set_mode(ptr nocapture noundef readonly %spi, i32 noundef %comm_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %comm_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %comm_type, label %entry.return_crit_edge [
    i32 3, label %entry.if.then_crit_edge
    i32 1, label %entry.if.then_crit_edge24
    i32 0, label %entry.if.then5_crit_edge
    i32 2, label %entry.if.then5_crit_edge25
    i32 4, label %if.then8
  ]

entry.if.then5_crit_edge25:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

entry.if.then5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

entry.if.then_crit_edge24:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge24
  %base.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #8, !srcloc !237
  %4 = or i32 %3, 12582912
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #8, !srcloc !238
  br label %return

if.then5:                                         ; preds = %entry.if.then5_crit_edge, %entry.if.then5_crit_edge25
  %base.i19 = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %7 = ptrtoint ptr %base.i19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i19, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !237
  %10 = and i32 %9, -12582913
  %11 = ptrtoint ptr %base.i19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #8, !srcloc !238
  br label %return

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base.i20 = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %13 = ptrtoint ptr %base.i20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i20, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !237
  %16 = or i32 %15, 8388608
  %17 = ptrtoint ptr %base.i20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i20, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #8, !srcloc !238
  %19 = ptrtoint ptr %base.i20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i20, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !237
  %22 = and i32 %21, -4194305
  %23 = ptrtoint ptr %base.i20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i20, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #8, !srcloc !238
  br label %return

return:                                           ; preds = %if.then8, %if.then5, %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.then5 ], [ 0, %if.then8 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32f4_spi_transfer_one_dma_start(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_comm = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 13
  %0 = ptrtoint ptr %cur_comm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_comm, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %1, label %entry.if.end_crit_edge [
    i32 2, label %entry.if.then_crit_edge
    i32 4, label %entry.if.then_crit_edge10
    i32 0, label %entry.if.then_crit_edge11
  ]

entry.if.then_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge10:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge10, %entry.if.then_crit_edge11
  %base.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !237
  %6 = or i32 %5, 536870912
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %6) #8, !srcloc !238
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_spi_enable.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32f4_spi_transfer_one_dma_start, %stm32_spi_enable.exit)) #8
          to label %if.then.i [label %stm32_spi_enable.exit], !srcloc !236

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_spi_enable.__UNIQUE_ID_ddebug263, ptr noundef %10, ptr noundef nonnull @.str.78) #8
  br label %stm32_spi_enable.exit

stm32_spi_enable.exit:                            ; preds = %if.then.i, %if.end
  %cfg.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 2
  %11 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %mask.i = getelementptr inbounds %struct.stm32_spi_reg, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mask.i, align 4
  %base.i.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %16
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !237
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  %or.i.i = or i32 %22, %18
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  %24 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %25, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %23) #8, !srcloc !238
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32f4_spi_dma_tx_cb(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_comm = getelementptr inbounds %struct.stm32_spi, ptr %data, i32 0, i32 13
  %0 = ptrtoint ptr %cur_comm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_comm, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %1, label %entry.if.end_crit_edge [
    i32 1, label %entry.if.then_crit_edge
    i32 3, label %entry.if.then_crit_edge6
  ]

entry.if.then_crit_edge6:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge6
  %master = getelementptr inbounds %struct.stm32_spi, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %master, align 4
  tail call void @spi_finalize_current_transfer(ptr noundef %4) #8
  tail call void @stm32f4_spi_disable(ptr noundef %data)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f4_spi_transfer_one_irq(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_comm = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 13
  %0 = ptrtoint ptr %cur_comm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_comm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %2 = icmp ult i32 %1, 5
  br i1 %2, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.stm32f4_spi_transfer_one_irq, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %lock = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 6
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %base.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !237
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %or.i = or i32 %7, %switch.load
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %8) #8, !srcloc !238
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_spi_enable.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32f4_spi_transfer_one_irq, %stm32_spi_enable.exit)) #8
          to label %if.then.i [label %stm32_spi_enable.exit], !srcloc !236

if.then.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_spi_enable.__UNIQUE_ID_ddebug263, ptr noundef %12, ptr noundef nonnull @.str.78) #8
  br label %stm32_spi_enable.exit

stm32_spi_enable.exit:                            ; preds = %if.then.i, %switch.lookup
  %cfg.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 2
  %13 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %mask.i = getelementptr inbounds %struct.stm32_spi_reg, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mask.i, align 4
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 %18
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !237
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  %or.i.i = or i32 %24, %20
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %27, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %25) #8, !srcloc !238
  %tx_buf = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 16
  %28 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_buf, align 4
  %tobool.not = icmp eq ptr %29, null
  br i1 %tobool.not, label %stm32_spi_enable.exit.if.end21_crit_edge, label %if.then20

stm32_spi_enable.exit.if.end21_crit_edge:         ; preds = %stm32_spi_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then20:                                        ; preds = %stm32_spi_enable.exit
  %tx_len.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 18
  %30 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i = icmp sgt i32 %31, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then20.do.body.i_crit_edge

if.then20.do.body.i_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

land.lhs.true.i:                                  ; preds = %if.then20
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %33, i32 8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #8, !srcloc !237
  %35 = and i32 %34, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.body.i_crit_edge, label %if.then.i38

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then.i38:                                      ; preds = %land.lhs.true.i
  %cur_xferlen.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 14
  %36 = ptrtoint ptr %cur_xferlen.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cur_xferlen.i, align 4
  %38 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_len.i, align 4
  %sub.i = sub i32 %37, %39
  %cur_bpw.i = getelementptr inbounds %struct.stm32_spi, ptr %spi, i32 0, i32 11
  %40 = ptrtoint ptr %cur_bpw.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cur_bpw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %41)
  %cmp2.i = icmp eq i32 %41, 16
  %42 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_buf, align 4
  %add.ptr4.i = getelementptr i8, ptr %43, i32 %sub.i
  br i1 %cmp2.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %add.ptr4.i, align 2
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #8
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %48, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6.i, i16 %46) #8, !srcloc !241
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %add.ptr4.i, align 1
  %51 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %52, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i, i8 %50) #8, !srcloc !240
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then3.i
  %.sink39.i = phi i32 [ -1, %if.else.i ], [ -2, %if.then3.i ]
  %53 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_len.i, align 4
  %sub14.i = add i32 %54, %.sink39.i
  store i32 %sub14.i, ptr %tx_len.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i, %land.lhs.true.i.do.body.i_crit_edge, %if.then20.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32f4_spi_write_tx.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32f4_spi_transfer_one_irq, %if.end21)) #8
          to label %if.then22.i [label %if.end21], !srcloc !236

if.then22.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %spi, align 4
  %57 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_len.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32f4_spi_write_tx.__UNIQUE_ID_ddebug249, ptr noundef %56, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.98, i32 noundef %58) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then22.i, %do.body.i, %stm32_spi_enable.exit.if.end21_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call17) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end21 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f4_spi_irq_event(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %base = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !237
  %5 = and i32 %4, 2147483647
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %cur_usedma = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %cur_usedma to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cur_usedma, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

land.lhs.true:                                    ; preds = %entry
  %cur_comm = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %cur_comm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur_comm, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %10, label %land.lhs.true.land.lhs.true7_crit_edge [
    i32 1, label %land.lhs.true.if.then_crit_edge
    i32 3, label %land.lhs.true.if.then_crit_edge162
  ]

land.lhs.true.if.then_crit_edge162:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true.land.lhs.true7_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true7

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge162
  %and4 = and i32 %6, -193
  %12 = ptrtoint ptr %cur_comm to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %cur_comm, align 4
  br label %land.lhs.true7

land.lhs.true7:                                   ; preds = %if.then, %land.lhs.true.land.lhs.true7_crit_edge
  %13 = phi i32 [ %10, %land.lhs.true.land.lhs.true7_crit_edge ], [ %.pr, %if.then ]
  %mask.0.ph = phi i32 [ 0, %land.lhs.true.land.lhs.true7_crit_edge ], [ 2, %if.then ]
  %sr.0.ph = phi i32 [ %6, %land.lhs.true.land.lhs.true7_crit_edge ], [ %and4, %if.then ]
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %13, label %land.lhs.true7.if.end19_crit_edge [
    i32 0, label %land.lhs.true7.if.then16_crit_edge
    i32 2, label %land.lhs.true7.if.then16_crit_edge163
    i32 4, label %land.lhs.true7.if.then16_crit_edge164
  ]

land.lhs.true7.if.then16_crit_edge164:            ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

land.lhs.true7.if.then16_crit_edge163:            ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

land.lhs.true7.if.then16_crit_edge:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

land.lhs.true7.if.end19_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then16:                                        ; preds = %land.lhs.true7.if.then16_crit_edge, %land.lhs.true7.if.then16_crit_edge163, %land.lhs.true7.if.then16_crit_edge164
  %and17 = and i32 %sr.0.ph, -3
  %or18 = or i32 %mask.0.ph, 65
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %land.lhs.true7.if.end19_crit_edge, %entry.if.end19_crit_edge
  %mask.1 = phi i32 [ %or18, %if.then16 ], [ %mask.0.ph, %land.lhs.true7.if.end19_crit_edge ], [ 0, %entry.if.end19_crit_edge ]
  %sr.1 = phi i32 [ %and17, %if.then16 ], [ %sr.0.ph, %land.lhs.true7.if.end19_crit_edge ], [ %6, %entry.if.end19_crit_edge ]
  %and20 = and i32 %sr.1, %mask.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body, label %if.end32

do.body:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32f4_spi_irq_event.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32f4_spi_irq_event, %cleanup)) #8
          to label %if.then29 [label %cleanup], !srcloc !236

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32f4_spi_irq_event.__UNIQUE_ID_ddebug267, ptr noundef %16, ptr noundef nonnull @.str.100, i32 noundef %sr.1) #8
  br label %cleanup

if.end32:                                         ; preds = %if.end19
  %and33 = and i32 %sr.1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end50, label %do.end38

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.101) #11
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr42 = getelementptr i8, ptr %20, i32 12
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #8, !srcloc !237
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr47 = getelementptr i8, ptr %23, i32 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #8, !srcloc !237
  br label %if.then73

if.end50:                                         ; preds = %if.end32
  %and51 = and i32 %sr.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end50.if.end60_crit_edge, label %if.then53

if.end50.if.end60_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then53:                                        ; preds = %if.end50
  %tx_buf = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 16
  %25 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_buf, align 4
  %tobool54.not = icmp eq ptr %26, null
  br i1 %tobool54.not, label %if.then53.if.end56_crit_edge, label %if.then55

if.then53.if.end56_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then55:                                        ; preds = %if.then53
  %tx_len.i = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 18
  %27 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i = icmp sgt i32 %28, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then55.do.body.i_crit_edge

if.then55.do.body.i_crit_edge:                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

land.lhs.true.i:                                  ; preds = %if.then55
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !237
  %32 = and i32 %31, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.body.i_crit_edge, label %if.then.i

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %cur_xferlen.i = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 14
  %33 = ptrtoint ptr %cur_xferlen.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cur_xferlen.i, align 4
  %35 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_len.i, align 4
  %sub.i = sub i32 %34, %36
  %cur_bpw.i = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 11
  %37 = ptrtoint ptr %cur_bpw.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cur_bpw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %38)
  %cmp2.i = icmp eq i32 %38, 16
  %39 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_buf, align 4
  %add.ptr4.i = getelementptr i8, ptr %40, i32 %sub.i
  br i1 %cmp2.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %add.ptr4.i, align 2
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #8
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %add.ptr6.i = getelementptr i8, ptr %45, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6.i, i16 %43) #8, !srcloc !241
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr4.i, align 1
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base, align 4
  %add.ptr12.i = getelementptr i8, ptr %49, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i, i8 %47) #8, !srcloc !240
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then3.i
  %.sink39.i = phi i32 [ -1, %if.else.i ], [ -2, %if.then3.i ]
  %50 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_len.i, align 4
  %sub14.i = add i32 %51, %.sink39.i
  store i32 %sub14.i, ptr %tx_len.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i, %land.lhs.true.i.do.body.i_crit_edge, %if.then55.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32f4_spi_write_tx.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32f4_spi_irq_event, %if.end56)) #8
          to label %if.then22.i [label %if.end56], !srcloc !236

if.then22.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %54 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_len.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32f4_spi_write_tx.__UNIQUE_ID_ddebug249, ptr noundef %53, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.98, i32 noundef %55) #8
  br label %if.end56

if.end56:                                         ; preds = %if.then22.i, %do.body.i, %if.then53.if.end56_crit_edge
  %tx_len = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 18
  %56 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp57 = icmp eq i32 %57, 0
  br label %if.end60

if.end60:                                         ; preds = %if.end56, %if.end50.if.end60_crit_edge
  %end.0.off0 = phi i1 [ false, %if.end50.if.end60_crit_edge ], [ %cmp57, %if.end56 ]
  %and61 = and i32 %sr.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end60.end_irq_crit_edge, label %if.then63

if.end60.end_irq_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %end_irq

if.then63:                                        ; preds = %if.end60
  %rx_len.i = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 19
  %58 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i117 = icmp sgt i32 %59, 0
  br i1 %cmp.i117, label %land.lhs.true.i121, label %if.then63.do.body.i131_crit_edge

if.then63.do.body.i131_crit_edge:                 ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i131

land.lhs.true.i121:                               ; preds = %if.then63
  %60 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base, align 4
  %add.ptr.i119 = getelementptr i8, ptr %61, i32 8
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119) #8, !srcloc !237
  %63 = and i32 %62, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i120 = icmp eq i32 %63, 0
  br i1 %tobool.not.i120, label %land.lhs.true.i121.do.body.i131_crit_edge, label %if.then.i127

land.lhs.true.i121.do.body.i131_crit_edge:        ; preds = %land.lhs.true.i121
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i131

if.then.i127:                                     ; preds = %land.lhs.true.i121
  %cur_xferlen.i122 = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 14
  %64 = ptrtoint ptr %cur_xferlen.i122 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cur_xferlen.i122, align 4
  %66 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_len.i, align 4
  %sub.i123 = sub i32 %65, %67
  %cur_bpw.i124 = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 11
  %68 = ptrtoint ptr %cur_bpw.i124 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cur_bpw.i124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %69)
  %cmp2.i125 = icmp eq i32 %69, 16
  %rx_buf.i = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 17
  %70 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rx_buf.i, align 4
  %add.ptr4.i126 = getelementptr i8, ptr %71, i32 %sub.i123
  %72 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base, align 4
  %add.ptr7.i = getelementptr i8, ptr %73, i32 12
  br i1 %cmp2.i125, label %if.then3.i128, label %if.else.i129

if.then3.i128:                                    ; preds = %if.then.i127
  call void @__sanitizer_cov_trace_pc() #10
  %74 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr7.i) #8, !srcloc !242
  %75 = tail call i16 @llvm.bswap.i16(i16 %74) #8
  %76 = ptrtoint ptr %add.ptr4.i126 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %add.ptr4.i126, align 2
  br label %if.end.i130

if.else.i129:                                     ; preds = %if.then.i127
  call void @__sanitizer_cov_trace_pc() #10
  %77 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i) #8, !srcloc !243
  %78 = ptrtoint ptr %add.ptr4.i126 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %add.ptr4.i126, align 1
  br label %if.end.i130

if.end.i130:                                      ; preds = %if.else.i129, %if.then3.i128
  %.sink45.i = phi i32 [ -1, %if.else.i129 ], [ -2, %if.then3.i128 ]
  %79 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rx_len.i, align 4
  %sub20.i = add i32 %80, %.sink45.i
  store i32 %sub20.i, ptr %rx_len.i, align 4
  br label %do.body.i131

do.body.i131:                                     ; preds = %if.end.i130, %land.lhs.true.i121.do.body.i131_crit_edge, %if.then63.do.body.i131_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32f4_spi_read_rx.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32f4_spi_irq_event, %stm32f4_spi_read_rx.exit)) #8
          to label %if.then28.i [label %stm32f4_spi_read_rx.exit], !srcloc !236

if.then28.i:                                      ; preds = %do.body.i131
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %83 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rx_len.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32f4_spi_read_rx.__UNIQUE_ID_ddebug251, ptr noundef %82, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.102, i32 noundef %84) #8
  br label %stm32f4_spi_read_rx.exit

stm32f4_spi_read_rx.exit:                         ; preds = %if.then28.i, %do.body.i131
  %85 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rx_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp64 = icmp eq i32 %86, 0
  br i1 %cmp64, label %stm32f4_spi_read_rx.exit.if.then73_crit_edge, label %if.else

stm32f4_spi_read_rx.exit.if.then73_crit_edge:     ; preds = %stm32f4_spi_read_rx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73

if.else:                                          ; preds = %stm32f4_spi_read_rx.exit
  %tx_buf66 = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 16
  %87 = ptrtoint ptr %tx_buf66 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tx_buf66, align 4
  %tobool67.not = icmp eq ptr %88, null
  br i1 %tobool67.not, label %if.else.end_irq_crit_edge, label %if.then68

if.else.end_irq_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %end_irq

if.then68:                                        ; preds = %if.else
  %tx_len.i132 = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 18
  %89 = ptrtoint ptr %tx_len.i132 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tx_len.i132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i133 = icmp sgt i32 %90, 0
  br i1 %cmp.i133, label %land.lhs.true.i137, label %if.then68.do.body.i152_crit_edge

if.then68.do.body.i152_crit_edge:                 ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i152

land.lhs.true.i137:                               ; preds = %if.then68
  %91 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base, align 4
  %add.ptr.i135 = getelementptr i8, ptr %92, i32 8
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i135) #8, !srcloc !237
  %94 = and i32 %93, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i136 = icmp eq i32 %94, 0
  br i1 %tobool.not.i136, label %land.lhs.true.i137.do.body.i152_crit_edge, label %if.then.i144

land.lhs.true.i137.do.body.i152_crit_edge:        ; preds = %land.lhs.true.i137
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i152

if.then.i144:                                     ; preds = %land.lhs.true.i137
  %cur_xferlen.i138 = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 14
  %95 = ptrtoint ptr %cur_xferlen.i138 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cur_xferlen.i138, align 4
  %97 = ptrtoint ptr %tx_len.i132 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %tx_len.i132, align 4
  %sub.i139 = sub i32 %96, %98
  %cur_bpw.i140 = getelementptr inbounds %struct.stm32_spi, ptr %1, i32 0, i32 11
  %99 = ptrtoint ptr %cur_bpw.i140 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cur_bpw.i140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %100)
  %cmp2.i141 = icmp eq i32 %100, 16
  %101 = ptrtoint ptr %tx_buf66 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %tx_buf66, align 4
  %add.ptr4.i143 = getelementptr i8, ptr %102, i32 %sub.i139
  br i1 %cmp2.i141, label %if.then3.i146, label %if.else.i148

if.then3.i146:                                    ; preds = %if.then.i144
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %add.ptr4.i143 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %add.ptr4.i143, align 2
  %105 = tail call i16 @llvm.bswap.i16(i16 %104) #8
  %106 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base, align 4
  %add.ptr6.i145 = getelementptr i8, ptr %107, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6.i145, i16 %105) #8, !srcloc !241
  br label %if.end.i151

if.else.i148:                                     ; preds = %if.then.i144
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %add.ptr4.i143 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %add.ptr4.i143, align 1
  %110 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base, align 4
  %add.ptr12.i147 = getelementptr i8, ptr %111, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i147, i8 %109) #8, !srcloc !240
  br label %if.end.i151

if.end.i151:                                      ; preds = %if.else.i148, %if.then3.i146
  %.sink39.i149 = phi i32 [ -1, %if.else.i148 ], [ -2, %if.then3.i146 ]
  %112 = ptrtoint ptr %tx_len.i132 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %tx_len.i132, align 4
  %sub14.i150 = add i32 %113, %.sink39.i149
  store i32 %sub14.i150, ptr %tx_len.i132, align 4
  br label %do.body.i152

do.body.i152:                                     ; preds = %if.end.i151, %land.lhs.true.i137.do.body.i152_crit_edge, %if.then68.do.body.i152_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32f4_spi_write_tx.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32f4_spi_irq_event, %end_irq)) #8
          to label %if.then22.i153 [label %end_irq], !srcloc !236

if.then22.i153:                                   ; preds = %do.body.i152
  call void @__sanitizer_cov_trace_pc() #10
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %1, align 4
  %116 = ptrtoint ptr %tx_len.i132 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %tx_len.i132, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32f4_spi_write_tx.__UNIQUE_ID_ddebug249, ptr noundef %115, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.98, i32 noundef %117) #8
  br label %end_irq

end_irq:                                          ; preds = %if.then22.i153, %do.body.i152, %if.else.end_irq_crit_edge, %if.end60.end_irq_crit_edge
  br i1 %end.0.off0, label %end_irq.if.then73_crit_edge, label %end_irq.cleanup_crit_edge

end_irq.cleanup_crit_edge:                        ; preds = %end_irq
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

end_irq.if.then73_crit_edge:                      ; preds = %end_irq
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73

if.then73:                                        ; preds = %end_irq.if.then73_crit_edge, %stm32f4_spi_read_rx.exit.if.then73_crit_edge, %do.end38
  %118 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base, align 4
  %add.ptr.i156 = getelementptr i8, ptr %119, i32 4
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i156) #8, !srcloc !237
  %121 = and i32 %120, 536870911
  %122 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base, align 4
  %add.ptr2.i = getelementptr i8, ptr %123, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %121) #8, !srcloc !238
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %end_irq.cleanup_crit_edge, %if.then29, %do.body
  %retval.0 = phi i32 [ 2, %if.then73 ], [ 0, %do.body ], [ 0, %if.then29 ], [ 1, %end_irq.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f4_spi_irq_thread(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @spi_finalize_current_transfer(ptr noundef %dev_id) #8
  tail call void @stm32f4_spi_disable(ptr noundef %1)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_spi_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @spi_controller_suspend(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_spi_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @spi_controller_resume(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %clk = getelementptr inbounds %struct.stm32_spi, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.103, i32 noundef %call.i) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %cfg = getelementptr inbounds %struct.stm32_spi, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg, align 4
  %config = getelementptr inbounds %struct.stm32_spi_cfg, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config, align 4
  %call10 = tail call i32 %9(ptr noundef %3) #8
  %call.i29 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %10 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store volatile i64 %call.i29, ptr %last_busy.i, align 8
  %call.i30 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then5 ], [ %call.i, %if.then8 ], [ 0, %if.end9 ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_spi_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.stm32_spi, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %call2 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #8
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_spi_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.stm32_spi, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !53, !55, !56, !57, !58, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !77, !78, !79, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !127, !128, !129, !130, !131, !133, !135, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !166, !168, !169, !171, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !190, !192, !193, !194, !196, !197, !199, !200, !201, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !217, !219, !220, !221}
!llvm.module.flags = !{!222, !223, !224, !225, !226, !227, !228, !229}
!llvm.ident = !{!230}

!0 = !{ptr @__initcall__kmod_spi_stm32__310_2034_stm32_spi_driver_init6, !1, !"__initcall__kmod_spi_stm32__310_2034_stm32_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-stm32.c", i32 2034, i32 1}
!2 = !{ptr @__exitcall_stm32_spi_driver_exit, !1, !"__exitcall_stm32_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias311, !4, !"__UNIQUE_ID_alias311", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-stm32.c", i32 2036, i32 1}
!5 = !{ptr @__UNIQUE_ID_description312, !6, !"__UNIQUE_ID_description312", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-stm32.c", i32 2037, i32 1}
!7 = !{ptr @__UNIQUE_ID_author313, !8, !"__UNIQUE_ID_author313", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-stm32.c", i32 2038, i32 1}
!9 = !{ptr @__UNIQUE_ID_file314, !10, !"__UNIQUE_ID_file314", i1 false, i1 false}
!10 = !{!"../drivers/spi/spi-stm32.c", i32 2039, i32 1}
!11 = !{ptr @__UNIQUE_ID_license315, !10, !"__UNIQUE_ID_license315", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-stm32.c", i32 2028, i32 11}
!14 = !{ptr @stm32_spi_driver, !15, !"stm32_spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-stm32.c", i32 2024, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-stm32.c", i32 1768, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @stm32_spi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @stm32_spi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @stm32_spi_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-stm32.c", i32 1776, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/spi/spi-stm32.c", i32 1792, i32 10}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/spi/spi-stm32.c", i32 1799, i32 3}
!31 = !{ptr @stm32_spi_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @stm32_spi_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/spi/spi-stm32.c", i32 1807, i32 3}
!35 = !{ptr @stm32_spi_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @stm32_spi_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/spi/spi-stm32.c", i32 1813, i32 3}
!39 = !{ptr @stm32_spi_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @stm32_spi_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/spi/spi-stm32.c", i32 1818, i32 3}
!43 = !{ptr @stm32_spi_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @stm32_spi_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/spi/spi-stm32.c", i32 1827, i32 10}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/spi/spi-stm32.c", i32 1841, i32 3}
!49 = !{ptr @stm32_spi_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @stm32_spi_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/spi/spi-stm32.c", i32 1860, i32 43}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/spi/spi-stm32.c", i32 1867, i32 3}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @stm32_spi_probe._entry.25, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @stm32_spi_probe._entry_ptr.28, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/spi/spi-stm32.c", i32 1872, i32 43}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/spi/spi-stm32.c", i32 1879, i32 3}
!62 = !{ptr @stm32_spi_probe._entry.30, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @stm32_spi_probe._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/spi/spi-stm32.c", i32 1896, i32 3}
!66 = !{ptr @stm32_spi_probe._entry.33, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @stm32_spi_probe._entry_ptr.35, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/spi/spi-stm32.c", i32 1904, i32 2}
!70 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @stm32_spi_probe._entry.36, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @stm32_spi_probe._entry_ptr.39, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/spi/spi-stm32.c", i32 955, i32 38}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/spi/spi-stm32.c", i32 956, i32 3}
!77 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @stm32_spi_prepare_msg.__UNIQUE_ID_ddebug268, !76, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/spi/spi-stm32.c", i32 973, i32 2}
!81 = !{ptr @stm32_spi_prepare_msg.__UNIQUE_ID_ddebug269, !80, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/spi/spi-stm32.c", i32 1615, i32 3}
!84 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @stm32_spi_transfer_one._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @stm32_spi_transfer_one._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/spi/spi-stm32.c", i32 1572, i32 2}
!89 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @stm32_spi_transfer_one_setup.__UNIQUE_ID_ddebug305, !88, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!91 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/spi/spi-stm32.c", i32 1574, i32 2}
!93 = !{ptr @stm32_spi_transfer_one_setup.__UNIQUE_ID_ddebug306, !92, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/spi/spi-stm32.c", i32 1577, i32 2}
!96 = !{ptr @stm32_spi_transfer_one_setup.__UNIQUE_ID_ddebug307, !95, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/spi/spi-stm32.c", i32 1578, i32 2}
!99 = !{ptr @stm32_spi_transfer_one_setup.__UNIQUE_ID_ddebug308, !98, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/spi/spi-stm32.c", i32 1580, i32 2}
!102 = !{ptr @stm32_spi_transfer_one_setup.__UNIQUE_ID_ddebug309, !101, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!103 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/spi/spi-stm32.c", i32 1270, i32 4}
!107 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @stm32_spi_transfer_one_dma._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @stm32_spi_transfer_one_dma._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/spi/spi-stm32.c", i32 1285, i32 4}
!112 = !{ptr @stm32_spi_transfer_one_dma._entry.56, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @stm32_spi_transfer_one_dma._entry_ptr.58, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/spi/spi-stm32.c", i32 1312, i32 2}
!116 = !{ptr @stm32_spi_transfer_one_dma._entry.59, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @stm32_spi_transfer_one_dma._entry_ptr.61, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/spi/spi-stm32.c", i32 1075, i32 3}
!120 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @stm32_spi_dma_config.__UNIQUE_ID_ddebug270, !119, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!122 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/spi/spi-stm32.c", i32 1082, i32 3}
!124 = !{ptr @stm32_spi_dma_config.__UNIQUE_ID_ddebug271, !123, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!125 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/spi/spi-stm32.c", i32 736, i32 2}
!127 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @stm32_spi_can_dma.__UNIQUE_ID_ddebug266, !126, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!129 = !{ptr @.str.67, !126, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.68, !126, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @stm32_spi_of_match, !132, !"stm32_spi_of_match", i1 false, i1 false}
!132 = !{!"../drivers/spi/spi-stm32.c", i32 1751, i32 34}
!133 = !{ptr @stm32h7_spi_cfg, !134, !"stm32h7_spi_cfg", i1 false, i1 false}
!134 = !{!"../drivers/spi/spi-stm32.c", i32 1728, i32 35}
!135 = !{ptr @stm32h7_spi_regspec, !136, !"stm32h7_spi_regspec", i1 false, i1 false}
!136 = !{!"../drivers/spi/spi-stm32.c", i32 327, i32 39}
!137 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/spi/spi-stm32.c", i32 380, i32 2}
!139 = !{ptr @.str.70, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @stm32h7_spi_get_fifo_size.__UNIQUE_ID_ddebug237, !138, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!141 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/spi/spi-stm32.c", i32 417, i32 2}
!143 = !{ptr @.str.72, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @stm32h7_spi_get_bpw_mask.__UNIQUE_ID_ddebug244, !142, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!145 = !{ptr @.str.73, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/spi/spi-stm32.c", i32 687, i32 2}
!147 = !{ptr @.str.74, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @stm32h7_spi_disable.__UNIQUE_ID_ddebug265, !146, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!149 = !{ptr @.str.75, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/spi/spi-stm32.c", i32 1486, i32 3}
!151 = !{ptr @.str.76, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @stm32h7_spi_data_idleness.__UNIQUE_ID_ddebug294, !150, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!153 = !{ptr @.str.77, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/spi/spi-stm32.c", i32 622, i32 2}
!155 = !{ptr @.str.78, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @stm32_spi_enable.__UNIQUE_ID_ddebug263, !154, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!157 = !{ptr @.str.79, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/spi/spi-stm32.c", i32 538, i32 2}
!159 = !{ptr @.str.80, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @stm32h7_spi_write_txfifo.__UNIQUE_ID_ddebug250, !158, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!161 = !{ptr @.str.81, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/spi/spi-stm32.c", i32 879, i32 3}
!163 = !{ptr @.str.82, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @stm32h7_spi_irq_thread._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @stm32h7_spi_irq_thread._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.83, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/spi/spi-stm32.c", i32 886, i32 10}
!168 = !{ptr @stm32h7_spi_irq_thread.rs, !167, !"rs", i1 false, i1 false}
!169 = !{ptr @.str.84, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/spi/spi-stm32.c", i32 890, i32 4}
!171 = !{ptr @stm32h7_spi_irq_thread._rs, !170, !"_rs", i1 false, i1 false}
!172 = !{ptr @.str.85, !170, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @stm32h7_spi_irq_thread.descriptor, !170, !"descriptor", i1 false, i1 false}
!174 = !{ptr @.str.87, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/spi/spi-stm32.c", i32 902, i32 3}
!176 = !{ptr @stm32h7_spi_irq_thread._entry.86, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @stm32h7_spi_irq_thread._entry_ptr.88, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.90, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/spi/spi-stm32.c", i32 907, i32 3}
!180 = !{ptr @stm32h7_spi_irq_thread._entry.89, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @stm32h7_spi_irq_thread._entry_ptr.91, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.92, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/spi/spi-stm32.c", i32 612, i32 2}
!184 = !{ptr @.str.93, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @stm32h7_spi_read_rxfifo.__UNIQUE_ID_ddebug262, !183, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!186 = !{ptr @stm32f4_spi_cfg, !187, !"stm32f4_spi_cfg", i1 false, i1 false}
!187 = !{!"../drivers/spi/spi-stm32.c", i32 1709, i32 35}
!188 = !{ptr @stm32f4_spi_regspec, !189, !"stm32f4_spi_regspec", i1 false, i1 false}
!189 = !{!"../drivers/spi/spi-stm32.c", i32 312, i32 39}
!190 = !{ptr @.str.94, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/spi/spi-stm32.c", i32 391, i32 2}
!192 = !{ptr @.str.95, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @stm32f4_spi_get_bpw_mask.__UNIQUE_ID_ddebug238, !191, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!194 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/spi/spi-stm32.c", i32 637, i32 2}
!196 = !{ptr @stm32f4_spi_disable.__UNIQUE_ID_ddebug264, !195, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!197 = !{ptr @.str.97, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/spi/spi-stm32.c", i32 656, i32 3}
!199 = !{ptr @stm32f4_spi_disable._entry, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @stm32f4_spi_disable._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.98, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/spi/spi-stm32.c", i32 503, i32 2}
!203 = !{ptr @stm32f4_spi_write_tx.__UNIQUE_ID_ddebug249, !202, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!204 = !{ptr @.str.99, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/spi/spi-stm32.c", i32 779, i32 3}
!206 = !{ptr @.str.100, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @stm32f4_spi_irq_event.__UNIQUE_ID_ddebug267, !205, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!208 = !{ptr @.str.101, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/spi/spi-stm32.c", i32 785, i32 3}
!210 = !{ptr @stm32f4_spi_irq_event._entry, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @stm32f4_spi_irq_event._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.102, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/spi/spi-stm32.c", i32 567, i32 2}
!214 = !{ptr @stm32f4_spi_read_rx.__UNIQUE_ID_ddebug251, !213, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!215 = !{ptr @stm32_spi_pm_ops, !216, !"stm32_spi_pm_ops", i1 false, i1 false}
!216 = !{!"../drivers/spi/spi-stm32.c", i32 2018, i32 32}
!217 = !{ptr @.str.103, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/spi/spi-stm32.c", i32 2006, i32 3}
!219 = !{ptr @.str.104, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @stm32_spi_resume._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @stm32_spi_resume._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{i32 1, !"wchar_size", i32 2}
!223 = !{i32 1, !"min_enum_size", i32 4}
!224 = !{i32 8, !"branch-target-enforcement", i32 0}
!225 = !{i32 8, !"sign-return-address", i32 0}
!226 = !{i32 8, !"sign-return-address-all", i32 0}
!227 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!228 = !{i32 7, !"uwtable", i32 1}
!229 = !{i32 7, !"frame-pointer", i32 2}
!230 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!231 = !{i8 0, i8 2}
!232 = !{i64 2148764461, i64 2148764487, i64 2148764516, i64 2148764550, i64 2148764581, i64 2148764604}
!233 = !{i64 2148763880}
!234 = !{i64 1250480, i64 1250505, i64 1250527, i64 1250543, i64 1250555, i64 1250575, i64 1250599, i64 1250615, i64 1250627}
!235 = !{i64 2148764068}
!236 = !{i64 2148589059, i64 2148589064, i64 2148589077, i64 2148589121, i64 2148589155, i64 2148589176}
!237 = !{i64 6429011}
!238 = !{i64 6428593}
!239 = !{i32 0, i32 33}
!240 = !{i64 6428396}
!241 = !{i64 6427973}
!242 = !{i64 6428173}
!243 = !{i64 6428791}
