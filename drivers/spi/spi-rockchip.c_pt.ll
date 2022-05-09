; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-rockchip.c_pt.bc'
source_filename = "../drivers/spi/spi-rockchip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.rockchip_spi = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.atomic_t, i32, i32, i8, i8, [4 x i8], i8 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_spi_rockchip__241_977_rockchip_spi_driver_init6 = internal global ptr @rockchip_spi_driver_init, section ".initcall6.init", align 4
@rockchip_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rockchip_spi_probe, ptr @rockchip_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_spi_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_spi_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rockchip_spi_driver_exit = internal global ptr @rockchip_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author242 = internal constant [53 x i8] c"spi_rockchip.author=Addy Ke <addy.ke@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [56 x i8] c"spi_rockchip.description=ROCKCHIP SPI Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [43 x i8] c"spi_rockchip.file=drivers/spi/spi-rockchip\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [28 x i8] c"spi_rockchip.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip-spi\00", [19 x i8] zeroinitializer }, align 32
@rockchip_spi_dt_match = internal constant { [13 x %struct.of_device_id], [620 x i8] } { [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3036-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3066-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3188-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3228-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3308-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3328-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3368-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rv1108-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rv1126-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [620 x i8] zeroinitializer }, align 32
@rockchip_spi_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rockchip_spi_suspend, ptr @rockchip_spi_resume, ptr @rockchip_spi_suspend, ptr @rockchip_spi_resume, ptr @rockchip_spi_suspend, ptr @rockchip_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_spi_runtime_suspend, ptr @rockchip_spi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi-slave\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apb_pclk\00", [23 x i8] zeroinitializer }, align 32
@rockchip_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 693, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to get apb_pclk\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rockchip_spi_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/spi/spi-rockchip.c\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rockchip_spi_probe._entry_ptr = internal global ptr @rockchip_spi_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spiclk\00", [25 x i8] zeroinitializer }, align 32
@rockchip_spi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 700, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to get spi_pclk\0A\00", [40 x i8] zeroinitializer }, align 32
@rockchip_spi_probe._entry_ptr.11 = internal global ptr @rockchip_spi_probe._entry.9, section ".printk_index", align 4
@rockchip_spi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 707, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to enable apb_pclk\0A\00", [37 x i8] zeroinitializer }, align 32
@rockchip_spi_probe._entry_ptr.14 = internal global ptr @rockchip_spi_probe._entry.12, section ".printk_index", align 4
@rockchip_spi_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 713, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to enable spi_clk\0A\00", [38 x i8] zeroinitializer }, align 32
@rockchip_spi_probe._entry_ptr.17 = internal global ptr @rockchip_spi_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx-sample-delay-ns\00", [45 x i8] zeroinitializer }, align 32
@rockchip_spi_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 738, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%u Hz are too slow to express %u ns delay\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rockchip_spi_probe._entry_ptr.22 = internal global ptr @rockchip_spi_probe._entry.19, section ".printk_index", align 4
@rockchip_spi_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.5, i32 743, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%u Hz are too fast to express %u ns delay, clamping at %u ns\0A\00", [34 x i8] zeroinitializer }, align 32
@rockchip_spi_probe._entry_ptr.25 = internal global ptr @rockchip_spi_probe._entry.23, section ".printk_index", align 4
@rockchip_spi_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.4, ptr @.str.5, i32 750, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get fifo length\0A\00", [37 x i8] zeroinitializer }, align 32
@rockchip_spi_probe._entry_ptr.28 = internal global ptr @rockchip_spi_probe._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"num-cs\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@rockchip_spi_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.4, ptr @.str.5, i32 795, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to request TX DMA channel\0A\00", [62 x i8] zeroinitializer }, align 32
@rockchip_spi_probe._entry_ptr.33 = internal global ptr @rockchip_spi_probe._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@rockchip_spi_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.4, ptr @.str.5, i32 805, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to request RX DMA channel\0A\00", [62 x i8] zeroinitializer }, align 32
@rockchip_spi_probe._entry_ptr.37 = internal global ptr @rockchip_spi_probe._entry.35, section ".printk_index", align 4
@rockchip_spi_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.4, ptr @.str.5, i32 825, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register controller\0A\00", [33 x i8] zeroinitializer }, align 32
@rockchip_spi_probe._entry_ptr.40 = internal global ptr @rockchip_spi_probe._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@rockchip_spi_transfer_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.5, i32 619, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No buffer for transfer\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rockchip_spi_transfer_one\00", [38 x i8] zeroinitializer }, align 32
@rockchip_spi_transfer_one._entry_ptr = internal global ptr @rockchip_spi_transfer_one._entry, section ".printk_index", align 4
@rockchip_spi_transfer_one._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.5, i32 624, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Transfer is too long (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@rockchip_spi_transfer_one._entry_ptr.46 = internal global ptr @rockchip_spi_transfer_one._entry.44, section ".printk_index", align 4
@rockchip_spi_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 541, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unknown bits per word: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rockchip_spi_config\00", [44 x i8] zeroinitializer }, align 32
@rockchip_spi_config._entry_ptr = internal global ptr @rockchip_spi_config._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wait_for_tx_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.5, i32 219, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"spi controller is in busy state!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wait_for_tx_idle\00", [47 x i8] zeroinitializer }, align 32
@wait_for_tx_idle._entry_ptr = internal global ptr @wait_for_tx_idle._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 8, i64 16]
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"rockchip_spi_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 967, i32 31 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 969, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [22 x i8] c"rockchip_spi_dt_match\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 950, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"rockchip_spi_pm\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 944, i32 32 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 666, i32 41 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 691, i32 42 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 693, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 698, i32 40 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 700, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 707, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 713, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 731, i32 47 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 737, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 741, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 750, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 773, i32 32 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 788, i32 43 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 795, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 799, i32 43 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 805, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 825, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1169, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 619, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 624, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 540, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.193 = private constant [30 x i8] c"../drivers/spi/spi-rockchip.c\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 219, i32 2 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_rockchip_spi_driver_exit, ptr @__initcall__kmod_spi_rockchip__241_977_rockchip_spi_driver_init6, ptr @rockchip_spi_config._entry, ptr @rockchip_spi_config._entry_ptr, ptr @rockchip_spi_driver_exit, ptr @rockchip_spi_probe._entry, ptr @rockchip_spi_probe._entry.12, ptr @rockchip_spi_probe._entry.15, ptr @rockchip_spi_probe._entry.19, ptr @rockchip_spi_probe._entry.23, ptr @rockchip_spi_probe._entry.26, ptr @rockchip_spi_probe._entry.31, ptr @rockchip_spi_probe._entry.35, ptr @rockchip_spi_probe._entry.38, ptr @rockchip_spi_probe._entry.9, ptr @rockchip_spi_probe._entry_ptr, ptr @rockchip_spi_probe._entry_ptr.11, ptr @rockchip_spi_probe._entry_ptr.14, ptr @rockchip_spi_probe._entry_ptr.17, ptr @rockchip_spi_probe._entry_ptr.22, ptr @rockchip_spi_probe._entry_ptr.25, ptr @rockchip_spi_probe._entry_ptr.28, ptr @rockchip_spi_probe._entry_ptr.33, ptr @rockchip_spi_probe._entry_ptr.37, ptr @rockchip_spi_probe._entry_ptr.40, ptr @rockchip_spi_transfer_one._entry, ptr @rockchip_spi_transfer_one._entry.44, ptr @rockchip_spi_transfer_one._entry_ptr, ptr @rockchip_spi_transfer_one._entry_ptr.46, ptr @wait_for_tx_idle._entry, ptr @wait_for_tx_idle._entry_ptr, ptr @rockchip_spi_driver, ptr @.str, ptr @rockchip_spi_dt_match, ptr @rockchip_spi_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_spi_dt_match to i32), i32 2548, i32 3168, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_spi_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_spi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_spi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_spi_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_spi_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_spi_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_spi_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_spi_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_spi_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_spi_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_spi_transfer_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_spi_transfer_one._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_spi_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_tx_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_spi_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_spi_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %rsd_nsecs = alloca i32, align 4
  %num_cs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsd_nsecs) #9
  %2 = ptrtoint ptr %rsd_nsecs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rsd_nsecs, align 4, !annotation !107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_cs) #9
  %3 = ptrtoint ptr %num_cs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %num_cs, align 4, !annotation !107
  %call.i = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null) #9
  %tobool.i = icmp ne ptr %call.i, null
  %call.i335 = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 60, i1 noundef zeroext %tobool.i) #9
  %tobool5.not = icmp eq ptr %call.i335, null
  br i1 %tobool5.not, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %entry
  %frombool = zext i1 %tobool.i to i8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i335, ptr %driver_data.i.i, align 4
  %driver_data.i.i336 = getelementptr inbounds %struct.device, ptr %call.i335, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i336 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i336, align 4
  %slave = getelementptr inbounds %struct.spi_controller, ptr %call.i335, i32 0, i32 12
  %7 = ptrtoint ptr %slave to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %slave, align 1
  %call11 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call13 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call11) #9
  %regs = getelementptr inbounds %struct.rockchip_spi, ptr %6, i32 0, i32 3
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call13, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call13 to i32
  br label %spi_controller_put.exit

if.end19:                                         ; preds = %if.end7
  %call21 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %apb_pclk = getelementptr inbounds %struct.rockchip_spi, ptr %6, i32 0, i32 2
  %10 = ptrtoint ptr %apb_pclk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call21, ptr %apb_pclk, align 4
  %cmp.i337 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i337, label %do.end, label %if.end28

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #12
  %11 = ptrtoint ptr %apb_pclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %apb_pclk, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %spi_controller_put.exit

if.end28:                                         ; preds = %if.end19
  %call30 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  %spiclk = getelementptr inbounds %struct.rockchip_spi, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %spiclk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call30, ptr %spiclk, align 4
  %cmp.i338 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i338, label %do.end36, label %if.end40

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #12
  %15 = ptrtoint ptr %spiclk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %spiclk, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %spi_controller_put.exit

if.end40:                                         ; preds = %if.end28
  %18 = ptrtoint ptr %apb_pclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %apb_pclk, align 4
  %call.i339 = tail call i32 @clk_prepare(ptr noundef %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i339)
  %tobool.not.i = icmp eq i32 %call.i339, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end40.clk_prepare_enable.exit_crit_edge

if.end40.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end40
  %call1.i = tail call i32 @clk_enable(ptr noundef %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end48_crit_edge, label %if.then3.i

if.end.i.if.end48_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %19) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end40.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i339, %if.end40.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end46, label %clk_prepare_enable.exit.if.end48_crit_edge

clk_prepare_enable.exit.if.end48_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

do.end46:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #12
  br label %spi_controller_put.exit

if.end48:                                         ; preds = %clk_prepare_enable.exit.if.end48_crit_edge, %if.end.i.if.end48_crit_edge
  %20 = ptrtoint ptr %spiclk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spiclk, align 4
  %call.i340 = tail call i32 @clk_prepare(ptr noundef %21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i340)
  %tobool.not.i341 = icmp eq i32 %call.i340, 0
  br i1 %tobool.not.i341, label %if.end.i344, label %if.end48.clk_prepare_enable.exit347_crit_edge

if.end48.clk_prepare_enable.exit347_crit_edge:    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit347

if.end.i344:                                      ; preds = %if.end48
  %call1.i342 = tail call i32 @clk_enable(ptr noundef %21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i342)
  %tobool2.not.i343 = icmp eq i32 %call1.i342, 0
  br i1 %tobool2.not.i343, label %if.end.i344.if.end57_crit_edge, label %if.then3.i345

if.end.i344.if.end57_crit_edge:                   ; preds = %if.end.i344
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then3.i345:                                    ; preds = %if.end.i344
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %21) #9
  br label %clk_prepare_enable.exit347

clk_prepare_enable.exit347:                       ; preds = %if.then3.i345, %if.end48.clk_prepare_enable.exit347_crit_edge
  %retval.0.i346 = phi i32 [ %call.i340, %if.end48.clk_prepare_enable.exit347_crit_edge ], [ %call1.i342, %if.then3.i345 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i346)
  %cmp51 = icmp slt i32 %retval.0.i346, 0
  br i1 %cmp51, label %do.end55, label %clk_prepare_enable.exit347.if.end57_crit_edge

clk_prepare_enable.exit347.if.end57_crit_edge:    ; preds = %clk_prepare_enable.exit347
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

do.end55:                                         ; preds = %clk_prepare_enable.exit347
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #12
  br label %err_disable_apbclk

if.end57:                                         ; preds = %clk_prepare_enable.exit347.if.end57_crit_edge, %if.end.i344.if.end57_crit_edge
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !108
  %call58 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.end57.err_disable_spiclk_crit_edge, label %if.end61

if.end57.err_disable_spiclk_crit_edge:            ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_disable_spiclk

if.end61:                                         ; preds = %if.end57
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i348 = icmp eq ptr %25, null
  br i1 %tobool.not.i348, label %if.end.i349, label %if.end61.dev_name.exit_crit_edge

if.end61.dev_name.exit_crit_edge:                 ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i349:                                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i349, %if.end61.dev_name.exit_crit_edge
  %retval.0.i350 = phi ptr [ %27, %if.end.i349 ], [ %25, %if.end61.dev_name.exit_crit_edge ]
  %call65 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call58, ptr noundef nonnull @rockchip_spi_isr, ptr noundef null, i32 noundef 8192, ptr noundef %retval.0.i350, ptr noundef nonnull %call.i335) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %dev_name.exit.err_disable_spiclk_crit_edge

dev_name.exit.err_disable_spiclk_crit_edge:       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_disable_spiclk

if.end68:                                         ; preds = %dev_name.exit
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev, ptr %6, align 4
  %29 = ptrtoint ptr %spiclk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %spiclk, align 4
  %call72 = tail call i32 @clk_get_rate(ptr noundef %30) #9
  %freq = getelementptr inbounds %struct.rockchip_spi, ptr %6, i32 0, i32 12
  %31 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call72, ptr %freq, align 4
  %32 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %33, ptr noundef nonnull @.str.18, ptr noundef nonnull %rsd_nsecs, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool76.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool76.not, label %if.then77, label %if.end68.if.end100_crit_edge

if.end68.if.end100_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.then77:                                        ; preds = %if.end68
  %34 = ptrtoint ptr %rsd_nsecs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rsd_nsecs, align 4
  %36 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %freq, align 4
  %shr = lshr i32 %37, 8
  %mul = mul i32 %shr, %35
  %add = add i32 %mul, 1953125
  call void @__sanitizer_cov_trace_const_cmp4(i32 3906250, i32 %add)
  %38 = icmp ult i32 %add, 3906250
  br i1 %38, label %do.end84, label %if.else87

do.end84:                                         ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.20, i32 noundef %37, i32 noundef %35) #12
  br label %if.end98

if.else87:                                        ; preds = %if.then77
  %div79 = udiv i32 %add, 3906250
  call void @__sanitizer_cov_trace_const_cmp4(i32 15624999, i32 %add)
  %cmp88 = icmp ugt i32 %add, 15624999
  br i1 %cmp88, label %if.then89, label %if.else87.if.end98_crit_edge

if.else87.if.end98_crit_edge:                     ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then89:                                        ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %6, align 4
  %div96 = udiv i32 -1294967296, %37
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.24, i32 noundef %37, i32 noundef %35, i32 noundef %div96) #12
  br label %if.end98

if.end98:                                         ; preds = %if.then89, %if.else87.if.end98_crit_edge, %do.end84
  %rsd.0 = phi i32 [ 3, %if.then89 ], [ %div79, %if.else87.if.end98_crit_edge ], [ 0, %do.end84 ]
  %conv = trunc i32 %rsd.0 to i8
  %rsd99 = getelementptr inbounds %struct.rockchip_spi, ptr %6, i32 0, i32 14
  %43 = ptrtoint ptr %rsd99 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv, ptr %rsd99, align 1
  br label %if.end100

if.end100:                                        ; preds = %if.end98, %if.end68.if.end100_crit_edge
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %add.ptr.i352 = getelementptr i8, ptr %45, i32 72
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i352) #9, !srcloc !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 33614853, i32 %46)
  %switch.selectcmp.case1.i = icmp eq i32 %46, 33614853
  call void @__sanitizer_cov_trace_const_cmp4(i32 33558784, i32 %46)
  %switch.selectcmp.case2.i = icmp eq i32 %46, 33558784
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %47 = select i1 %switch.selectcmp.i, i32 64, i32 32
  %fifo_len = getelementptr inbounds %struct.rockchip_spi, ptr %6, i32 0, i32 11
  %48 = ptrtoint ptr %fifo_len to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %fifo_len, align 4
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #9
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #9
  %call.i353 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #9
  call void @pm_runtime_enable(ptr noundef %dev) #9
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i335, i32 0, i32 36
  %49 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %auto_runtime_pm, align 4
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %50 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %id, align 4
  %conv115 = trunc i32 %51 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i335, i32 0, i32 2
  %52 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv115, ptr %bus_num, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i335, i32 0, i32 5
  %53 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 43, ptr %mode_bits, align 8
  br i1 %tobool.i, label %if.then117, label %if.else119

if.then117:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 107, ptr %mode_bits, align 8
  %slave_abort = getelementptr inbounds %struct.spi_controller, ptr %call.i335, i32 0, i32 49
  %55 = ptrtoint ptr %slave_abort to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @rockchip_spi_slave_abort, ptr %slave_abort, align 4
  br label %if.end125

if.else119:                                       ; preds = %if.end100
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i335, i32 0, i32 10
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 32, ptr %flags, align 4
  %max_native_cs = getelementptr inbounds %struct.spi_controller, ptr %call.i335, i32 0, i32 58
  %57 = ptrtoint ptr %max_native_cs to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 4, ptr %max_native_cs, align 2
  %call.i.i354 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef nonnull %num_cs, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i354)
  %tobool121.not = icmp sgt i32 %call.i.i354, -1
  br i1 %tobool121.not, label %if.else119.if.end123_crit_edge, label %if.then122

if.else119.if.end123_crit_edge:                   ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123

if.then122:                                       ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %num_cs to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %num_cs, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %if.else119.if.end123_crit_edge
  %59 = ptrtoint ptr %num_cs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_cs, align 4
  %conv124 = trunc i32 %60 to i16
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i335, i32 0, i32 3
  %61 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv124, ptr %num_chipselect, align 2
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i335, i32 0, i32 56
  %62 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %use_gpio_descriptors, align 8
  br label %if.end125

if.end125:                                        ; preds = %if.end123, %if.then117
  %63 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %of_node, align 8
  %of_node129 = getelementptr inbounds %struct.device, ptr %call.i335, i32 0, i32 27
  %65 = ptrtoint ptr %of_node129 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %of_node129, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i335, i32 0, i32 7
  %66 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 32904, ptr %bits_per_word_mask, align 8
  %67 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %freq, align 4
  %div131 = udiv i32 %68, 65534
  %min_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i335, i32 0, i32 8
  %69 = ptrtoint ptr %min_speed_hz to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %div131, ptr %min_speed_hz, align 4
  %70 = load i32, ptr %freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %70)
  %cmp135 = icmp ult i32 %70, 100000000
  %div133333 = lshr i32 %70, 1
  %cond = select i1 %cmp135, i32 %div133333, i32 50000000
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i335, i32 0, i32 9
  %71 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %cond, ptr %max_speed_hz, align 8
  %set_cs = getelementptr inbounds %struct.spi_controller, ptr %call.i335, i32 0, i32 50
  %72 = ptrtoint ptr %set_cs to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @rockchip_spi_set_cs, ptr %set_cs, align 8
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i335, i32 0, i32 51
  %73 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @rockchip_spi_transfer_one, ptr %transfer_one, align 4
  %max_transfer_size = getelementptr inbounds %struct.spi_controller, ptr %call.i335, i32 0, i32 13
  %74 = ptrtoint ptr %max_transfer_size to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @rockchip_spi_max_transfer_size, ptr %max_transfer_size, align 8
  %handle_err = getelementptr inbounds %struct.spi_controller, ptr %call.i335, i32 0, i32 52
  %75 = ptrtoint ptr %handle_err to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @rockchip_spi_handle_err, ptr %handle_err, align 8
  %76 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %6, align 4
  %call138 = call ptr @dma_request_chan(ptr noundef %77, ptr noundef nonnull @.str.30) #9
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %call.i335, i32 0, i32 60
  %78 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call138, ptr %dma_tx, align 8
  %cmp.i355 = icmp ugt ptr %call138, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i355, label %if.then141, label %if.end125.if.end153_crit_edge

if.end125.if.end153_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153

if.then141:                                       ; preds = %if.end125
  %cmp144 = icmp eq ptr %call138, inttoptr (i32 -517 to ptr)
  br i1 %cmp144, label %if.then141.err_disable_pm_runtime_crit_edge, label %do.end150

if.then141.err_disable_pm_runtime_crit_edge:      ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_disable_pm_runtime

do.end150:                                        ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %80, ptr noundef nonnull @.str.32) #12
  %81 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %dma_tx, align 8
  br label %if.end153

if.end153:                                        ; preds = %do.end150, %if.end125.if.end153_crit_edge
  %82 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %6, align 4
  %call155 = call ptr @dma_request_chan(ptr noundef %83, ptr noundef nonnull @.str.34) #9
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %call.i335, i32 0, i32 61
  %84 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call155, ptr %dma_rx, align 4
  %cmp.i356 = icmp ugt ptr %call155, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i356, label %if.then158, label %if.end153.if.end170_crit_edge

if.end153.if.end170_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end170

if.then158:                                       ; preds = %if.end153
  %cmp161 = icmp eq ptr %call155, inttoptr (i32 -517 to ptr)
  br i1 %cmp161, label %if.then158.err_free_dma_tx_crit_edge, label %do.end167

if.then158.err_free_dma_tx_crit_edge:             ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_dma_tx

do.end167:                                        ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %86, ptr noundef nonnull @.str.36) #12
  %87 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %dma_rx, align 4
  br label %if.end170

if.end170:                                        ; preds = %do.end167, %if.end153.if.end170_crit_edge
  %88 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dma_tx, align 8
  %tobool172.not = icmp eq ptr %89, null
  br i1 %tobool172.not, label %if.end170.if.end179_crit_edge, label %land.lhs.true

if.end170.if.end179_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end179

land.lhs.true:                                    ; preds = %if.end170
  %90 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dma_rx, align 4
  %tobool174.not = icmp eq ptr %91, null
  br i1 %tobool174.not, label %land.lhs.true.if.end179_crit_edge, label %if.then175

land.lhs.true.if.end179_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end179

if.then175:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %call11, align 4
  %add176 = add i32 %93, 1024
  %dma_addr_tx = getelementptr inbounds %struct.rockchip_spi, ptr %6, i32 0, i32 5
  %94 = ptrtoint ptr %dma_addr_tx to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %add176, ptr %dma_addr_tx, align 4
  %95 = load i32, ptr %call11, align 4
  %add178 = add i32 %95, 2048
  %dma_addr_rx = getelementptr inbounds %struct.rockchip_spi, ptr %6, i32 0, i32 4
  %96 = ptrtoint ptr %dma_addr_rx to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %add178, ptr %dma_addr_rx, align 4
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %call.i335, i32 0, i32 24
  %97 = ptrtoint ptr %can_dma to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @rockchip_spi_can_dma, ptr %can_dma, align 4
  br label %if.end179

if.end179:                                        ; preds = %if.then175, %land.lhs.true.if.end179_crit_edge, %if.end170.if.end179_crit_edge
  %98 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %99, i32 72
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 33558784, i32 %100)
  %cond215 = icmp eq i32 %100, 33558784
  br i1 %cond215, label %sw.bb, label %if.end179.sw.epilog_crit_edge

if.end179.sw.epilog_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %mode_bits to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %mode_bits, align 8
  %or184 = or i32 %102, 4
  store i32 %or184, ptr %mode_bits, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end179.sw.epilog_crit_edge
  %call186 = call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i335) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %cmp187 = icmp slt i32 %call186, 0
  br i1 %cmp187, label %do.end192, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end192:                                        ; preds = %sw.epilog
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #12
  %103 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dma_rx, align 4
  %tobool196.not = icmp eq ptr %104, null
  br i1 %tobool196.not, label %do.end192.err_free_dma_tx_crit_edge, label %if.then197

do.end192.err_free_dma_tx_crit_edge:              ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_dma_tx

if.then197:                                       ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_release_channel(ptr noundef nonnull %104) #9
  br label %err_free_dma_tx

err_free_dma_tx:                                  ; preds = %if.then197, %do.end192.err_free_dma_tx_crit_edge, %if.then158.err_free_dma_tx_crit_edge
  %ret.0 = phi i32 [ %call186, %if.then197 ], [ %call186, %do.end192.err_free_dma_tx_crit_edge ], [ -517, %if.then158.err_free_dma_tx_crit_edge ]
  %105 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dma_tx, align 8
  %tobool201.not = icmp eq ptr %106, null
  br i1 %tobool201.not, label %err_free_dma_tx.err_disable_pm_runtime_crit_edge, label %if.then202

err_free_dma_tx.err_disable_pm_runtime_crit_edge: ; preds = %err_free_dma_tx
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_disable_pm_runtime

if.then202:                                       ; preds = %err_free_dma_tx
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_release_channel(ptr noundef nonnull %106) #9
  br label %err_disable_pm_runtime

err_disable_pm_runtime:                           ; preds = %if.then202, %err_free_dma_tx.err_disable_pm_runtime_crit_edge, %if.then141.err_disable_pm_runtime_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.then202 ], [ %ret.0, %err_free_dma_tx.err_disable_pm_runtime_crit_edge ], [ -517, %if.then141.err_disable_pm_runtime_crit_edge ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  br label %err_disable_spiclk

err_disable_spiclk:                               ; preds = %err_disable_pm_runtime, %dev_name.exit.err_disable_spiclk_crit_edge, %if.end57.err_disable_spiclk_crit_edge
  %ret.2 = phi i32 [ %call58, %if.end57.err_disable_spiclk_crit_edge ], [ %call65, %dev_name.exit.err_disable_spiclk_crit_edge ], [ %ret.1, %err_disable_pm_runtime ]
  %107 = ptrtoint ptr %spiclk to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %spiclk, align 4
  call void @clk_disable(ptr noundef %108) #9
  call void @clk_unprepare(ptr noundef %108) #9
  br label %err_disable_apbclk

err_disable_apbclk:                               ; preds = %err_disable_spiclk, %do.end55
  %ret.3 = phi i32 [ %retval.0.i346, %do.end55 ], [ %ret.2, %err_disable_spiclk ]
  %109 = ptrtoint ptr %apb_pclk to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %apb_pclk, align 4
  call void @clk_disable(ptr noundef %110) #9
  call void @clk_unprepare(ptr noundef %110) #9
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %err_disable_apbclk, %do.end46, %do.end36, %do.end, %if.then16
  %ret.4 = phi i32 [ %9, %if.then16 ], [ %13, %do.end ], [ %17, %do.end36 ], [ %retval.0.i, %do.end46 ], [ %ret.3, %err_disable_apbclk ]
  call void @put_device(ptr noundef nonnull %call.i335) #9
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4, %spi_controller_put.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_cs) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsd_nsecs) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_spi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.spi_controller_get.exit_crit_edge, label %lor.lhs.false.i

entry.spi_controller_get.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_controller_get.exit

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call ptr @get_device(ptr noundef nonnull %1) #9
  %tobool1.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool1.not.i, ptr null, ptr %1
  br label %spi_controller_get.exit

spi_controller_get.exit:                          ; preds = %lor.lhs.false.i, %entry.spi_controller_get.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.spi_controller_get.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %driver_data.i.i24 = getelementptr inbounds %struct.device, ptr %retval.0.i, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i24 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i24, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i25 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  %spiclk = getelementptr inbounds %struct.rockchip_spi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %spiclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spiclk, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  %apb_pclk = getelementptr inbounds %struct.rockchip_spi, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %apb_pclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %apb_pclk, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !111
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %spi_controller_get.exit.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

spi_controller_get.exit.pm_runtime_put_noidle.exit_crit_edge: ; preds = %spi_controller_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %spi_controller_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !112
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %spi_controller_get.exit.pm_runtime_put_noidle.exit_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %call.i26 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #9
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %retval.0.i, i32 0, i32 60
  %9 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma_tx, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %pm_runtime_put_noidle.exit.if.end_crit_edge, label %if.then

pm_runtime_put_noidle.exit.if.end_crit_edge:      ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %10) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %pm_runtime_put_noidle.exit.if.end_crit_edge
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %retval.0.i, i32 0, i32 61
  %11 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_rx, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.end.if.end12_crit_edge, label %if.then10

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %12) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  %tobool.not.i27 = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not.i27, label %if.end12.spi_controller_put.exit_crit_edge, label %if.then.i

if.end12.spi_controller_put.exit_crit_edge:       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_controller_put.exit

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @put_device(ptr noundef nonnull %retval.0.i) #9
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %if.then.i, %if.end12.spi_controller_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_spi_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tx_left = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %tx_left to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %fifo_len.i = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %fifo_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fifo_len.i, align 4
  %regs.i = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 28
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !109
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  %sub.i = sub i32 %5, %9
  %10 = ptrtoint ptr %tx_left to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_left, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %sub.i) #9
  %sub3.i = sub i32 %11, %12
  %13 = ptrtoint ptr %tx_left to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub3.i, ptr %tx_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not28.i = icmp eq i32 %12, 0
  br i1 %tobool.not28.i, label %if.then.if.end_crit_edge, label %for.body.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then
  %n_bytes.i = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 13
  %tx7.i = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %words.029.i = phi i32 [ %12, %for.body.lr.ph.i ], [ %dec.i, %if.end.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %n_bytes.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %n_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp4.i = icmp eq i8 %15, 1
  %16 = ptrtoint ptr %tx7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx7.i, align 4
  br i1 %cmp4.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  %conv6.i = zext i8 %19 to i32
  br label %if.end.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %17, align 2
  %conv8.i = zext i16 %21 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %txw.0.i = phi i32 [ %conv6.i, %if.then.i ], [ %conv8.i, %if.else.i ]
  %22 = tail call i32 @llvm.bswap.i32(i32 %txw.0.i) #9
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %24, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %22) #9, !srcloc !108
  %25 = ptrtoint ptr %n_bytes.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %n_bytes.i, align 4
  %conv12.i = zext i8 %26 to i32
  %27 = ptrtoint ptr %tx7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tx7.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %28, i32 %conv12.i
  store ptr %add.ptr14.i, ptr %tx7.i, align 4
  %dec.i = add i32 %words.029.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %regs.i10 = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %regs.i10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i10, align 4
  %add.ptr.i11 = getelementptr i8, ptr %30, i32 32
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #9, !srcloc !109
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  %rx_left1.i = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 9
  %33 = ptrtoint ptr %rx_left1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_left1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %32)
  %tobool.not.not.i = icmp ugt i32 %34, %32
  br i1 %tobool.not.not.i, label %if.then.i13, label %if.end.if.end12.i_crit_edge

if.end.if.end12.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then.i13:                                      ; preds = %if.end
  %35 = tail call i32 @llvm.usub.sat.i32(i32 %34, i32 %32) #9
  %sub.i12 = sub i32 %34, %32
  %36 = ptrtoint ptr %regs.i10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i10, align 4
  %add.ptr5.i = getelementptr i8, ptr %37, i32 24
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #9, !srcloc !109
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #9
  %add.i = add i32 %39, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %add.i)
  %cmp8.i = icmp ult i32 %35, %add.i
  br i1 %cmp8.i, label %if.then9.i, label %if.then.i13.if.end12.i_crit_edge

if.then.i13.if.end12.i_crit_edge:                 ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %rx_left1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_left1.i, align 4
  %sub11.i = sub i32 %41, %add.i
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.then.i13.if.end12.i_crit_edge, %if.end.if.end12.i_crit_edge
  %rx_left.1.i = phi i32 [ 0, %if.end.if.end12.i_crit_edge ], [ %add.i, %if.then9.i ], [ %sub.i12, %if.then.i13.if.end12.i_crit_edge ]
  %words.1.i = phi i32 [ %32, %if.end.if.end12.i_crit_edge ], [ %sub11.i, %if.then9.i ], [ %32, %if.then.i13.if.end12.i_crit_edge ]
  %42 = ptrtoint ptr %rx_left1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %rx_left.1.i, ptr %rx_left1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %words.1.i)
  %tobool14.not57.i = icmp eq i32 %words.1.i, 0
  br i1 %tobool14.not57.i, label %if.end12.i.rockchip_spi_pio_reader.exit_crit_edge, label %for.body.lr.ph.i15

if.end12.i.rockchip_spi_pio_reader.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rockchip_spi_pio_reader.exit

for.body.lr.ph.i15:                               ; preds = %if.end12.i
  %rx.i = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 7
  %n_bytes.i14 = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 13
  br label %for.body.i16

for.body.i16:                                     ; preds = %cleanup.i.for.body.i16_crit_edge, %for.body.lr.ph.i15
  %words.258.i = phi i32 [ %words.1.i, %for.body.lr.ph.i15 ], [ %dec.i18, %cleanup.i.for.body.i16_crit_edge ]
  %43 = ptrtoint ptr %regs.i10 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i10, align 4
  %add.ptr17.i = getelementptr i8, ptr %44, i32 2048
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #9, !srcloc !109
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #9
  %47 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rx.i, align 4
  %tobool20.not.i = icmp eq ptr %48, null
  br i1 %tobool20.not.i, label %for.body.i16.cleanup.i_crit_edge, label %if.end22.i

for.body.i16.cleanup.i_crit_edge:                 ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end22.i:                                       ; preds = %for.body.i16
  %49 = ptrtoint ptr %n_bytes.i14 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %n_bytes.i14, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %cmp23.i = icmp eq i8 %50, 1
  br i1 %cmp23.i, label %if.then25.i, label %if.else.i17

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv26.i = trunc i32 %46 to i8
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv26.i, ptr %48, align 1
  br label %if.end30.i

if.else.i17:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv28.i = trunc i32 %46 to i16
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv28.i, ptr %48, align 2
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else.i17, %if.then25.i
  %53 = ptrtoint ptr %n_bytes.i14 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %n_bytes.i14, align 4
  %conv32.i = zext i8 %54 to i32
  %55 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rx.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %56, i32 %conv32.i
  store ptr %add.ptr34.i, ptr %rx.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end30.i, %for.body.i16.cleanup.i_crit_edge
  %dec.i18 = add i32 %words.258.i, -1
  %tobool14.not.i = icmp eq i32 %dec.i18, 0
  br i1 %tobool14.not.i, label %rockchip_spi_pio_reader.exitthread-pre-split, label %cleanup.i.for.body.i16_crit_edge

cleanup.i.for.body.i16_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i16

rockchip_spi_pio_reader.exitthread-pre-split:     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %rx_left1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr = load i32, ptr %rx_left1.i, align 4
  br label %rockchip_spi_pio_reader.exit

rockchip_spi_pio_reader.exit:                     ; preds = %rockchip_spi_pio_reader.exitthread-pre-split, %if.end12.i.rockchip_spi_pio_reader.exit_crit_edge
  %58 = phi i32 [ %.pr, %rockchip_spi_pio_reader.exitthread-pre-split ], [ %rx_left.1.i, %if.end12.i.rockchip_spi_pio_reader.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool1.not = icmp eq i32 %58, 0
  br i1 %tobool1.not, label %if.then2, label %rockchip_spi_pio_reader.exit.if.end3_crit_edge

rockchip_spi_pio_reader.exit.if.end3_crit_edge:   ; preds = %rockchip_spi_pio_reader.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %rockchip_spi_pio_reader.exit
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %regs.i10 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i10, align 4
  %add.ptr.i20 = getelementptr i8, ptr %60, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 0) #9, !srcloc !108
  %61 = ptrtoint ptr %regs.i10 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i10, align 4
  %add.ptr = getelementptr i8, ptr %62, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !108
  tail call void @spi_finalize_current_transfer(ptr noundef %dev_id) #9
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %rockchip_spi_pio_reader.exit.if.end3_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_spi_slave_abort(ptr noundef %ctlr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %state, i32 noundef 4) #9
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 61
  %4 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_rx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 47
  %8 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then.if.end_crit_edge, label %dmaengine_terminate_async.exit.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

dmaengine_terminate_async.exit.i:                 ; preds = %if.then
  %call.i.i20 = tail call i32 %9(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i20)
  %tobool.not.i = icmp eq i32 %call.i.i20, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.if.end_crit_edge

dmaengine_terminate_async.exit.i.if.end_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.41, i32 noundef 1169) #9
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 48
  %12 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %13, null
  br i1 %tobool.not.i1.i, label %if.end.i.if.end_crit_edge, label %if.then.i2.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %13(ptr noundef %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i2.i, %if.end.i.if.end_crit_edge, %dmaengine_terminate_async.exit.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i.i18 = tail call zeroext i1 @__kasan_check_read(ptr noundef %state, i32 noundef 4) #9
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state, align 4
  %and5 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.end
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 60
  %16 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_tx, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %device_terminate_all.i.i21 = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 47
  %20 = ptrtoint ptr %device_terminate_all.i.i21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_terminate_all.i.i21, align 4
  %tobool.not.i.i22 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i22, label %if.then7.if.end9_crit_edge, label %dmaengine_terminate_async.exit.i25

if.then7.if.end9_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

dmaengine_terminate_async.exit.i25:               ; preds = %if.then7
  %call.i.i23 = tail call i32 %21(ptr noundef %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i23)
  %tobool.not.i24 = icmp eq i32 %call.i.i23, 0
  br i1 %tobool.not.i24, label %if.end.i28, label %dmaengine_terminate_async.exit.i25.if.end9_crit_edge

dmaengine_terminate_async.exit.i25.if.end9_crit_edge: ; preds = %dmaengine_terminate_async.exit.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end.i28:                                       ; preds = %dmaengine_terminate_async.exit.i25
  tail call void @__might_sleep(ptr noundef nonnull @.str.41, i32 noundef 1169) #9
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %17, align 4
  %device_synchronize.i.i26 = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 48
  %24 = ptrtoint ptr %device_synchronize.i.i26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device_synchronize.i.i26, align 4
  %tobool.not.i1.i27 = icmp eq ptr %25, null
  br i1 %tobool.not.i1.i27, label %if.end.i28.if.end9_crit_edge, label %if.then.i2.i29

if.end.i28.if.end9_crit_edge:                     ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then.i2.i29:                                   ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %25(ptr noundef %17) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then.i2.i29, %if.end.i28.if.end9_crit_edge, %dmaengine_terminate_async.exit.i25.if.end9_crit_edge, %if.then7.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %call.i.i19 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #9
  %26 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %state, align 4
  %regs.i = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !108
  %slave_abort = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 16
  %29 = ptrtoint ptr %slave_abort to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %slave_abort, align 2
  tail call void @spi_finalize_current_transfer(ptr noundef %ctlr) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_spi_set_cs(ptr nocapture noundef readonly %spi, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 1
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = xor i1 %tobool.not, %enable
  %frombool4 = zext i1 %spec.select to i8
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %6 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %chip_select, align 4
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr %struct.rockchip_spi, ptr %3, i32 0, i32 15, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1, !range !113
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %frombool4)
  %cmp = icmp eq i8 %9, %frombool4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %spec.select, label %if.then12, label %if.else30

if.then12:                                        ; preds = %if.end
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #9
  %cs_gpiod = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 14
  %12 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cs_gpiod, align 8
  %tobool14.not = icmp eq ptr %13, null
  %regs20 = getelementptr inbounds %struct.rockchip_spi, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %regs20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs20, align 4
  %add.ptr21 = getelementptr i8, ptr %15, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #9
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %17 = or i32 %16, 16777216
  %18 = ptrtoint ptr %regs20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs20, align 4
  %add.ptr18 = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %17) #9, !srcloc !108
  br label %if.end57

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %20 = tail call i32 @llvm.bswap.i32(i32 %16)
  %21 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %chip_select, align 4
  %conv25 = zext i8 %22 to i32
  %shl = shl nuw i32 1, %conv25
  %or26 = or i32 %shl, %20
  %23 = tail call i32 @llvm.bswap.i32(i32 %or26)
  %24 = ptrtoint ptr %regs20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs20, align 4
  %add.ptr28 = getelementptr i8, ptr %25, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %23) #9, !srcloc !108
  br label %if.end57

if.else30:                                        ; preds = %if.end
  %cs_gpiod31 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 14
  %26 = ptrtoint ptr %cs_gpiod31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cs_gpiod31, align 8
  %tobool32.not = icmp eq ptr %27, null
  %regs44 = getelementptr inbounds %struct.rockchip_spi, ptr %3, i32 0, i32 3
  %28 = ptrtoint ptr %regs44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs44, align 4
  %add.ptr45 = getelementptr i8, ptr %29, i32 12
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #9
  br i1 %tobool32.not, label %if.else42, label %if.then33

if.then33:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #11
  %31 = and i32 %30, -16777217
  %32 = ptrtoint ptr %regs44 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs44, align 4
  %add.ptr41 = getelementptr i8, ptr %33, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %31) #9, !srcloc !108
  br label %if.end54

if.else42:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #11
  %34 = tail call i32 @llvm.bswap.i32(i32 %30)
  %35 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %chip_select, align 4
  %conv49 = zext i8 %36 to i32
  %shl50 = shl nuw i32 1, %conv49
  %neg = xor i32 %shl50, -1
  %and51 = and i32 %34, %neg
  %37 = tail call i32 @llvm.bswap.i32(i32 %and51)
  %38 = ptrtoint ptr %regs44 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs44, align 4
  %add.ptr53 = getelementptr i8, ptr %39, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %37) #9, !srcloc !108
  br label %if.end54

if.end54:                                         ; preds = %if.else42, %if.then33
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  %call.i87 = tail call i32 @__pm_runtime_idle(ptr noundef %41, i32 noundef 5) #9
  br label %if.end57

if.end57:                                         ; preds = %if.end54, %if.else, %if.then15
  %42 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %chip_select, align 4
  %idxprom61 = zext i8 %43 to i32
  %arrayidx62 = getelementptr %struct.rockchip_spi, ptr %3, i32 0, i32 15, i32 %idxprom61
  %44 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %frombool4, ptr %arrayidx62, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_spi_transfer_one(ptr noundef %ctlr, ptr noundef %spi, ptr noundef %xfer) #2 align 64 {
entry:
  %rxconf.i = alloca %struct.dma_slave_config, align 4
  %txconf.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @spi_finalize_current_transfer(ptr noundef %ctlr) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.end.if.end23_crit_edge, label %land.rhs

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.rhs:                                         ; preds = %if.end
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %8, i32 36
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !109
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %land.rhs.if.end23_crit_edge, label %do.end, !prof !114

land.rhs.if.end23_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 616, i32 noundef 9, ptr noundef null) #9
  br label %if.end23

if.end23:                                         ; preds = %do.end, %land.rhs.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %11 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xfer, align 4
  %tobool31.not = icmp eq ptr %12, null
  br i1 %tobool31.not, label %land.lhs.true, label %if.end23.if.end37_crit_edge

if.end23.if.end37_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end23
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %13 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_buf, align 4
  %tobool32.not = icmp eq ptr %14, null
  br i1 %tobool32.not, label %do.end36, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

do.end36:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.42) #12
  br label %cleanup

if.end37:                                         ; preds = %land.lhs.true.if.end37_crit_edge, %if.end23.if.end37_crit_edge
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %18)
  %cmp = icmp ugt i32 %18, 65535
  br i1 %cmp, label %do.end42, label %if.end45

do.end42:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.45, i32 noundef %18) #12
  br label %cleanup

if.end45:                                         ; preds = %if.end37
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 8
  %21 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %22)
  %cmp46 = icmp ult i8 %22, 9
  %conv48 = select i1 %cmp46, i8 1, i8 2
  %n_bytes = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 13
  %23 = ptrtoint ptr %n_bytes to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv48, ptr %n_bytes, align 4
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 24
  %24 = ptrtoint ptr %can_dma to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %can_dma, align 4
  %tobool49.not = icmp eq ptr %25, null
  br i1 %tobool49.not, label %if.end45.cond.end_crit_edge, label %cond.true

if.end45.cond.end_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %call51 = tail call zeroext i1 %25(ptr noundef %ctlr, ptr noundef %spi, ptr noundef %xfer) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end45.cond.end_crit_edge
  %cond53 = phi i1 [ %call51, %cond.true ], [ false, %if.end45.cond.end_crit_edge ]
  %slave = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 12
  %26 = ptrtoint ptr %slave to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %slave, align 1, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool56.not = icmp eq i8 %27, 0
  %spec.select.i = select i1 %tobool56.not, i32 11264, i32 1059840
  %slave_abort.i = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 16
  %28 = ptrtoint ptr %slave_abort.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %slave_abort.i, align 2
  %rsd.i = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 14
  %29 = ptrtoint ptr %rsd.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rsd.i, align 1
  %conv.i = zext i8 %30 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 14
  %or2.i = or i32 %shl.i, %spec.select.i
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %31 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mode.i, align 8
  %and.i = shl i32 %32, 6
  %shl3.i = and i32 %and.i, 192
  %or4.i = or i32 %or2.i, %shl3.i
  %and6.i = shl i32 %32, 9
  %33 = and i32 %and6.i, 4096
  %34 = or i32 %or4.i, %33
  %and12.i = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %cond.end.if.end19.i_crit_edge, label %if.then14.i

cond.end.if.end19.i_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then14.i:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %chip_select.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %35 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %chip_select.i, align 4
  %conv15.i = zext i8 %36 to i32
  %shl17.i = shl i32 8388608, %conv15.i
  %or18.i = or i32 %shl17.i, %34
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then14.i, %cond.end.if.end19.i_crit_edge
  %cr0.2.i = phi i32 [ %or18.i, %if.then14.i ], [ %34, %cond.end.if.end19.i_crit_edge ]
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %37 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rx_buf.i, align 4
  %tobool20.not.i = icmp eq ptr %38, null
  br i1 %tobool20.not.i, label %if.end19.i.if.end34.i_crit_edge, label %land.lhs.true.i

if.end19.i.if.end34.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

land.lhs.true.i:                                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %xfer, align 4
  %tobool21.not.i = icmp eq ptr %40, null
  br label %if.end34.i

if.end34.i:                                       ; preds = %land.lhs.true.i, %if.end19.i.if.end34.i_crit_edge
  %.sink.i = phi i32 [ 524288, %land.lhs.true.i ], [ 262144, %if.end19.i.if.end34.i_crit_edge ]
  %tobool21.not.sink.i = phi i1 [ %tobool21.not.i, %land.lhs.true.i ], [ %cond53, %if.end19.i.if.end34.i_crit_edge ]
  %or27.i = select i1 %tobool21.not.sink.i, i32 %.sink.i, i32 0
  %spec.select158.i = or i32 %or27.i, %cr0.2.i
  %41 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bits_per_word, align 1
  %43 = zext i8 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i8 %42, label %rockchip_spi_config.exit [
    i8 4, label %sw.bb.i
    i8 8, label %sw.bb37.i
    i8 16, label %sw.bb41.i
  ]

sw.bb.i:                                          ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len, align 4
  br label %sw.epilog.i

sw.bb37.i:                                        ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  %or38.i = or i32 %spec.select158.i, 1
  %46 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len, align 4
  br label %sw.epilog.i

sw.bb41.i:                                        ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  %or42.i = or i32 %spec.select158.i, 2
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len, align 4
  %div152.i = lshr i32 %49, 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb41.i, %sw.bb37.i, %sw.bb.i
  %cr0.4.i = phi i32 [ %or42.i, %sw.bb41.i ], [ %or38.i, %sw.bb37.i ], [ %spec.select158.i, %sw.bb.i ]
  %cr1.0.in.i = phi i32 [ %div152.i, %sw.bb41.i ], [ %47, %sw.bb37.i ], [ %45, %sw.bb.i ]
  %cr1.0.i = add i32 %cr1.0.in.i, -1
  br i1 %cond53, label %if.then48.i, label %sw.epilog.i.if.end59.i_crit_edge

sw.epilog.i.if.end59.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i

if.then48.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %xfer, align 4
  %tobool50.not.i = icmp eq ptr %51, null
  %spec.select156.i = select i1 %tobool50.not.i, i32 0, i32 2
  %not.tobool20.not.i = xor i1 %tobool20.not.i, true
  %or57.i = zext i1 %not.tobool20.not.i to i32
  %spec.select157.i = or i32 %spec.select156.i, %or57.i
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then48.i, %sw.epilog.i.if.end59.i_crit_edge
  %dmacr.1.i = phi i32 [ 0, %sw.epilog.i.if.end59.i_crit_edge ], [ %spec.select157.i, %if.then48.i ]
  %52 = tail call i32 @llvm.bswap.i32(i32 %cr0.4.i) #9
  %53 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #9, !srcloc !108
  %55 = tail call i32 @llvm.bswap.i32(i32 %cr1.0.i) #9
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  %add.ptr61.i = getelementptr i8, ptr %57, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61.i, i32 %55) #9, !srcloc !108
  %58 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len, align 4
  %60 = ptrtoint ptr %n_bytes to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %n_bytes, align 4
  %conv63.i = zext i8 %61 to i32
  %div64.i = udiv i32 %59, %conv63.i
  %fifo_len.i = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 11
  %62 = ptrtoint ptr %fifo_len.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fifo_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div64.i, i32 %63)
  %cmp.i = icmp ult i32 %div64.i, %63
  br i1 %cmp.i, label %if.then66.i, label %if.else74.i

if.then66.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub71.i = add i32 %div64.i, -1
  %64 = tail call i32 @llvm.bswap.i32(i32 %sub71.i) #9
  %65 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs, align 4
  %add.ptr73.i = getelementptr i8, ptr %66, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.i, i32 %64) #9, !srcloc !108
  br label %if.end80.i

if.else74.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  %div76153.i = lshr i32 %63, 1
  %sub77.i = add nsw i32 %div76153.i, -1
  %67 = tail call i32 @llvm.bswap.i32(i32 %sub77.i) #9
  %68 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs, align 4
  %add.ptr79.i = getelementptr i8, ptr %69, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79.i, i32 %67) #9, !srcloc !108
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.else74.i, %if.then66.i
  %70 = ptrtoint ptr %fifo_len.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fifo_len.i, align 4
  %div82154.i = lshr i32 %71, 1
  %sub83.i = add nsw i32 %div82154.i, -1
  %72 = tail call i32 @llvm.bswap.i32(i32 %sub83.i) #9
  %73 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs, align 4
  %add.ptr85.i = getelementptr i8, ptr %74, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.i, i32 %72) #9, !srcloc !108
  %75 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len, align 4
  %77 = ptrtoint ptr %n_bytes to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %n_bytes, align 4
  %conv88.i = zext i8 %78 to i32
  %div89.i = udiv i32 %76, %conv88.i
  %79 = or i32 %div89.i, -8
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.end80.i
  %i.0.i.i = phi i32 [ 1, %if.end80.i ], [ %shl.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %80 = and i32 %i.0.i.i, %79
  %81 = icmp eq i32 %80, 0
  %shl.i.i = shl nuw nsw i32 %i.0.i.i, 1
  br i1 %81, label %for.cond.i.i.for.cond.i.i_crit_edge, label %if.end60

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

rockchip_spi_config.exit:                         ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv35.i = zext i8 %42 to i32
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.47, i32 noundef %conv35.i) #12
  br label %cleanup

if.end60:                                         ; preds = %for.cond.i.i
  %sub90.i = add i32 %i.0.i.i, -1
  %84 = tail call i32 @llvm.bswap.i32(i32 %sub90.i) #9
  %85 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs, align 4
  %add.ptr92.i = getelementptr i8, ptr %86, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.i, i32 %84) #9, !srcloc !108
  %87 = tail call i32 @llvm.bswap.i32(i32 %dmacr.1.i) #9
  %88 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs, align 4
  %add.ptr94.i = getelementptr i8, ptr %89, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94.i, i32 %87) #9, !srcloc !108
  %freq.i = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 12
  %90 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %freq.i, align 4
  %speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 12
  %92 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %speed_hz.i, align 4
  %mul.i = shl i32 %93, 1
  %add.i = add i32 %91, -1
  %sub95.i = add i32 %add.i, %mul.i
  %div98.i = udiv i32 %sub95.i, %mul.i
  %mul99.i = shl i32 %div98.i, 1
  %94 = tail call i32 @llvm.bswap.i32(i32 %mul99.i) #9
  %95 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs, align 4
  %add.ptr101.i = getelementptr i8, ptr %96, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101.i, i32 %94) #9, !srcloc !108
  br i1 %cond53, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end60
  %state.i = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i, i32 noundef 4) #9
  %97 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile i32 0, ptr %state.i, align 4
  %98 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rx_buf.i, align 4
  %tobool.not.i = icmp eq ptr %99, null
  br i1 %tobool.not.i, label %if.then62.if.end9.i_crit_edge, label %if.then.i

if.then62.if.end9.i_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then.i:                                        ; preds = %if.then62
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rxconf.i) #9
  %100 = getelementptr inbounds i8, ptr %rxconf.i, i32 36
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -1, ptr %100, align 4, !annotation !107
  %102 = ptrtoint ptr %rxconf.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 2, ptr %rxconf.i, align 4
  %src_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 1
  %dma_addr_rx.i = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 4
  %103 = ptrtoint ptr %dma_addr_rx.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %dma_addr_rx.i, align 4
  %105 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %src_addr.i, align 4
  %dst_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 2
  %106 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %dst_addr.i, align 4
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 3
  %107 = ptrtoint ptr %n_bytes to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %n_bytes, align 4
  %conv.i97 = zext i8 %108 to i32
  %109 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %conv.i97, ptr %src_addr_width.i, align 4
  %dst_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 4
  %110 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %dst_addr_width.i, align 4
  %111 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %len, align 4
  %div.i = udiv i32 %112, %conv.i97
  %113 = or i32 %div.i, -8
  br label %for.cond.i.i101

for.cond.i.i101:                                  ; preds = %for.cond.i.i101.for.cond.i.i101_crit_edge, %if.then.i
  %i.0.i.i99 = phi i32 [ 1, %if.then.i ], [ %shl.i.i100, %for.cond.i.i101.for.cond.i.i101_crit_edge ]
  %114 = and i32 %i.0.i.i99, %113
  %115 = icmp eq i32 %114, 0
  %shl.i.i100 = shl nuw nsw i32 %i.0.i.i99, 1
  br i1 %115, label %for.cond.i.i101.for.cond.i.i101_crit_edge, label %rockchip_spi_calc_burst_size.exit.i102

for.cond.i.i101.for.cond.i.i101_crit_edge:        ; preds = %for.cond.i.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i101

rockchip_spi_calc_burst_size.exit.i102:           ; preds = %for.cond.i.i101
  %src_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 5
  %116 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %i.0.i.i99, ptr %src_maxburst.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 6
  %peripheral_config.i = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 10
  %117 = ptrtoint ptr %peripheral_config.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %peripheral_config.i, align 4
  %peripheral_size.i = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 11
  %118 = ptrtoint ptr %peripheral_size.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %peripheral_size.i, align 4
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 61
  %119 = call ptr @memset(ptr %dst_maxburst.i, i32 0, i32 13)
  %120 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dma_rx.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %123, i32 0, i32 44
  %124 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %125, null
  br i1 %tobool.not.i.i, label %rockchip_spi_calc_burst_size.exit.i102.dmaengine_slave_config.exit.i_crit_edge, label %if.then.i.i

rockchip_spi_calc_burst_size.exit.i102.dmaengine_slave_config.exit.i_crit_edge: ; preds = %rockchip_spi_calc_burst_size.exit.i102
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_slave_config.exit.i

if.then.i.i:                                      ; preds = %rockchip_spi_calc_burst_size.exit.i102
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 %125(ptr noundef %121, ptr noundef nonnull %rxconf.i) #9
  %126 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %.pr.i = load ptr, ptr %dma_rx.i, align 4
  br label %dmaengine_slave_config.exit.i

dmaengine_slave_config.exit.i:                    ; preds = %if.then.i.i, %rockchip_spi_calc_burst_size.exit.i102.dmaengine_slave_config.exit.i_crit_edge
  %127 = phi ptr [ %121, %rockchip_spi_calc_burst_size.exit.i102.dmaengine_slave_config.exit.i_crit_edge ], [ %.pr.i, %if.then.i.i ]
  %rx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 6
  %128 = ptrtoint ptr %rx_sg.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rx_sg.i, align 4
  %nents.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 6, i32 1
  %130 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %nents.i, align 4
  %tobool.not.i100.i = icmp eq ptr %127, null
  br i1 %tobool.not.i100.i, label %dmaengine_slave_config.exit.i.cleanup59.critedge.i_crit_edge, label %lor.lhs.false.i.i

dmaengine_slave_config.exit.i.cleanup59.critedge.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup59.critedge.i

lor.lhs.false.i.i:                                ; preds = %dmaengine_slave_config.exit.i
  %132 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %127, align 4
  %tobool1.not.i.i = icmp eq ptr %133, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.cleanup59.critedge.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.cleanup59.critedge.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup59.critedge.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %133, i32 0, i32 39
  %134 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %135, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.cleanup59.critedge.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i

lor.lhs.false2.i.i.cleanup59.critedge.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup59.critedge.i

dmaengine_prep_slave_sg.exit.i:                   ; preds = %lor.lhs.false2.i.i
  %call.i101.i = call ptr %135(ptr noundef nonnull %127, ptr noundef %129, i32 noundef %131, i32 noundef 2, i32 noundef 1, ptr noundef null) #9
  %tobool7.not.i = icmp eq ptr %call.i101.i, null
  br i1 %tobool7.not.i, label %dmaengine_prep_slave_sg.exit.i.cleanup59.critedge.i_crit_edge, label %if.end.i

dmaengine_prep_slave_sg.exit.i.cleanup59.critedge.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup59.critedge.i

if.end.i:                                         ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i101.i, i32 0, i32 6
  %136 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @rockchip_spi_dma_rxcb, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i101.i, i32 0, i32 8
  %137 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %ctlr, ptr %callback_param.i, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rxconf.i) #9
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i, %if.then62.if.end9.i_crit_edge
  %rxdesc.0.i = phi ptr [ null, %if.then62.if.end9.i_crit_edge ], [ %call.i101.i, %if.end.i ]
  %138 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %xfer, align 4
  %tobool10.not.i = icmp eq ptr %139, null
  br i1 %tobool10.not.i, label %if.end9.i.if.end46.i_crit_edge, label %if.then11.i

if.end9.i.if.end46.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %txconf.i) #9
  %140 = getelementptr inbounds i8, ptr %txconf.i, i32 36
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 16777215, ptr %140, align 4, !annotation !107
  %142 = ptrtoint ptr %txconf.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1, ptr %txconf.i, align 4
  %src_addr13.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 1
  %143 = ptrtoint ptr %src_addr13.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %src_addr13.i, align 4
  %dst_addr14.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 2
  %dma_addr_tx.i = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 5
  %144 = ptrtoint ptr %dma_addr_tx.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %dma_addr_tx.i, align 4
  %146 = ptrtoint ptr %dst_addr14.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %dst_addr14.i, align 4
  %src_addr_width15.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 3
  %147 = ptrtoint ptr %src_addr_width15.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %src_addr_width15.i, align 4
  %dst_addr_width16.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 4
  %148 = ptrtoint ptr %n_bytes to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %n_bytes, align 4
  %conv18.i = zext i8 %149 to i32
  %150 = ptrtoint ptr %dst_addr_width16.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %conv18.i, ptr %dst_addr_width16.i, align 4
  %src_maxburst19.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 5
  %151 = ptrtoint ptr %src_maxburst19.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %src_maxburst19.i, align 4
  %dst_maxburst20.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 6
  %152 = ptrtoint ptr %fifo_len.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %fifo_len.i, align 4
  %div2195.i = lshr i32 %153, 2
  %154 = ptrtoint ptr %dst_maxburst20.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %div2195.i, ptr %dst_maxburst20.i, align 4
  %src_port_window_size22.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 7
  %155 = ptrtoint ptr %src_port_window_size22.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %src_port_window_size22.i, align 4
  %dst_port_window_size23.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 8
  %156 = ptrtoint ptr %dst_port_window_size23.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %dst_port_window_size23.i, align 4
  %peripheral_config25.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 10
  %157 = ptrtoint ptr %peripheral_config25.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr null, ptr %peripheral_config25.i, align 4
  %peripheral_size26.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 11
  %158 = ptrtoint ptr %peripheral_size26.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %peripheral_size26.i, align 4
  %dma_tx.i = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 60
  %159 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dma_tx.i, align 8
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %160, align 4
  %device_config.i102.i = getelementptr inbounds %struct.dma_device, ptr %162, i32 0, i32 44
  %163 = ptrtoint ptr %device_config.i102.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %device_config.i102.i, align 4
  %tobool.not.i103.i = icmp eq ptr %164, null
  br i1 %tobool.not.i103.i, label %if.then11.i.dmaengine_slave_config.exit106.i_crit_edge, label %if.then.i105.i

if.then11.i.dmaengine_slave_config.exit106.i_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_slave_config.exit106.i

if.then.i105.i:                                   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i104.i = call i32 %164(ptr noundef %160, ptr noundef nonnull %txconf.i) #9
  %165 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %.pr126.i = load ptr, ptr %dma_tx.i, align 8
  br label %dmaengine_slave_config.exit106.i

dmaengine_slave_config.exit106.i:                 ; preds = %if.then.i105.i, %if.then11.i.dmaengine_slave_config.exit106.i_crit_edge
  %166 = phi ptr [ %160, %if.then11.i.dmaengine_slave_config.exit106.i_crit_edge ], [ %.pr126.i, %if.then.i105.i ]
  %tx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 5
  %167 = ptrtoint ptr %tx_sg.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %tx_sg.i, align 4
  %nents31.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 5, i32 1
  %169 = ptrtoint ptr %nents31.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %nents31.i, align 4
  %tobool.not.i107.i = icmp eq ptr %166, null
  br i1 %tobool.not.i107.i, label %dmaengine_slave_config.exit106.i.if.then34.i_crit_edge, label %lor.lhs.false.i109.i

dmaengine_slave_config.exit106.i.if.then34.i_crit_edge: ; preds = %dmaengine_slave_config.exit106.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34.i

lor.lhs.false.i109.i:                             ; preds = %dmaengine_slave_config.exit106.i
  %171 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %166, align 4
  %tobool1.not.i108.i = icmp eq ptr %172, null
  br i1 %tobool1.not.i108.i, label %lor.lhs.false.i109.i.if.then34.i_crit_edge, label %lor.lhs.false2.i112.i

lor.lhs.false.i109.i.if.then34.i_crit_edge:       ; preds = %lor.lhs.false.i109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34.i

lor.lhs.false2.i112.i:                            ; preds = %lor.lhs.false.i109.i
  %device_prep_slave_sg.i110.i = getelementptr inbounds %struct.dma_device, ptr %172, i32 0, i32 39
  %173 = ptrtoint ptr %device_prep_slave_sg.i110.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %device_prep_slave_sg.i110.i, align 4
  %tobool4.not.i111.i = icmp eq ptr %174, null
  br i1 %tobool4.not.i111.i, label %lor.lhs.false2.i112.i.if.then34.i_crit_edge, label %dmaengine_prep_slave_sg.exit116.i

lor.lhs.false2.i112.i.if.then34.i_crit_edge:      ; preds = %lor.lhs.false2.i112.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34.i

dmaengine_prep_slave_sg.exit116.i:                ; preds = %lor.lhs.false2.i112.i
  %call.i113.i = call ptr %174(ptr noundef nonnull %166, ptr noundef %168, i32 noundef %170, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %tobool33.not.i = icmp eq ptr %call.i113.i, null
  br i1 %tobool33.not.i, label %dmaengine_prep_slave_sg.exit116.i.if.then34.i_crit_edge, label %if.end40.i

dmaengine_prep_slave_sg.exit116.i.if.then34.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34.i

if.then34.i:                                      ; preds = %dmaengine_prep_slave_sg.exit116.i.if.then34.i_crit_edge, %lor.lhs.false2.i112.i.if.then34.i_crit_edge, %lor.lhs.false.i109.i.if.then34.i_crit_edge, %dmaengine_slave_config.exit106.i.if.then34.i_crit_edge
  %tobool35.not.i = icmp eq ptr %rxdesc.0.i, null
  br i1 %tobool35.not.i, label %cleanup59.critedge96.i, label %if.then36.i

if.then36.i:                                      ; preds = %if.then34.i
  %dma_rx37.i = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 61
  %175 = ptrtoint ptr %dma_rx37.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dma_rx37.i, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 4
  %device_terminate_all.i.i.i = getelementptr inbounds %struct.dma_device, ptr %178, i32 0, i32 47
  %179 = ptrtoint ptr %device_terminate_all.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %device_terminate_all.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %180, null
  br i1 %tobool.not.i.i.i, label %if.then36.i.dmaengine_terminate_sync.exit.i_crit_edge, label %dmaengine_terminate_async.exit.i.i

if.then36.i.dmaengine_terminate_sync.exit.i_crit_edge: ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_sync.exit.i

dmaengine_terminate_async.exit.i.i:               ; preds = %if.then36.i
  %call.i.i117.i = call i32 %180(ptr noundef %176) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i117.i)
  %tobool.not.i118.i = icmp eq i32 %call.i.i117.i, 0
  br i1 %tobool.not.i118.i, label %if.end.i119.i, label %dmaengine_terminate_async.exit.i.i.dmaengine_terminate_sync.exit.i_crit_edge

dmaengine_terminate_async.exit.i.i.dmaengine_terminate_sync.exit.i_crit_edge: ; preds = %dmaengine_terminate_async.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_sync.exit.i

if.end.i119.i:                                    ; preds = %dmaengine_terminate_async.exit.i.i
  call void @__might_sleep(ptr noundef nonnull @.str.41, i32 noundef 1169) #9
  %181 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %176, align 4
  %device_synchronize.i.i.i = getelementptr inbounds %struct.dma_device, ptr %182, i32 0, i32 48
  %183 = ptrtoint ptr %device_synchronize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %device_synchronize.i.i.i, align 4
  %tobool.not.i1.i.i = icmp eq ptr %184, null
  br i1 %tobool.not.i1.i.i, label %if.end.i119.i.dmaengine_terminate_sync.exit.i_crit_edge, label %if.then.i2.i.i

if.end.i119.i.dmaengine_terminate_sync.exit.i_crit_edge: ; preds = %if.end.i119.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_sync.exit.i

if.then.i2.i.i:                                   ; preds = %if.end.i119.i
  call void @__sanitizer_cov_trace_pc() #11
  call void %184(ptr noundef %176) #9
  br label %dmaengine_terminate_sync.exit.i

dmaengine_terminate_sync.exit.i:                  ; preds = %if.then.i2.i.i, %if.end.i119.i.dmaengine_terminate_sync.exit.i_crit_edge, %dmaengine_terminate_async.exit.i.i.dmaengine_terminate_sync.exit.i_crit_edge, %if.then36.i.dmaengine_terminate_sync.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %txconf.i) #9
  br label %cleanup

if.end40.i:                                       ; preds = %dmaengine_prep_slave_sg.exit116.i
  call void @__sanitizer_cov_trace_pc() #11
  %callback41.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i113.i, i32 0, i32 6
  %185 = ptrtoint ptr %callback41.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr @rockchip_spi_dma_txcb, ptr %callback41.i, align 4
  %callback_param42.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i113.i, i32 0, i32 8
  %186 = ptrtoint ptr %callback_param42.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %ctlr, ptr %callback_param42.i, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %txconf.i) #9
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.end40.i, %if.end9.i.if.end46.i_crit_edge
  %txdesc.0.i = phi ptr [ null, %if.end9.i.if.end46.i_crit_edge ], [ %call.i113.i, %if.end40.i ]
  %tobool47.not.i = icmp eq ptr %rxdesc.0.i, null
  br i1 %tobool47.not.i, label %if.end46.i.if.end52.i_crit_edge, label %if.then48.i104

if.end46.i.if.end52.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

if.then48.i104:                                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i98.i = call zeroext i1 @__kasan_check_write(ptr noundef %state.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %state.i, i32 1, i32 3, i32 1) #9
  %187 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state.i, ptr %state.i, i32 1, ptr elementtype(i32) %state.i) #9, !srcloc !115
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %rxdesc.0.i, i32 0, i32 4
  %188 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i120.i = call i32 %189(ptr noundef nonnull %rxdesc.0.i) #9
  %dma_rx51.i = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 61
  %190 = ptrtoint ptr %dma_rx51.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dma_rx51.i, align 4
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %191, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %193, i32 0, i32 50
  %194 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %195(ptr noundef %191) #9
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then48.i104, %if.end46.i.if.end52.i_crit_edge
  %196 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %regs, align 4
  %add.ptr.i.i = getelementptr i8, ptr %197, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #9, !srcloc !108
  %tobool53.not.i = icmp eq ptr %txdesc.0.i, null
  br i1 %tobool53.not.i, label %if.end52.i.cleanup_crit_edge, label %if.then54.i

if.end52.i.cleanup_crit_edge:                     ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then54.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i99.i = call zeroext i1 @__kasan_check_write(ptr noundef %state.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %state.i, i32 1, i32 3, i32 1) #9
  %198 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state.i, ptr %state.i, i32 2, ptr elementtype(i32) %state.i) #9, !srcloc !115
  %tx_submit.i121.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %txdesc.0.i, i32 0, i32 4
  %199 = ptrtoint ptr %tx_submit.i121.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %tx_submit.i121.i, align 4
  %call.i122.i = call i32 %200(ptr noundef nonnull %txdesc.0.i) #9
  %dma_tx57.i = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 60
  %201 = ptrtoint ptr %dma_tx57.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dma_tx57.i, align 8
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %202, align 4
  %device_issue_pending.i123.i = getelementptr inbounds %struct.dma_device, ptr %204, i32 0, i32 50
  %205 = ptrtoint ptr %device_issue_pending.i123.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %device_issue_pending.i123.i, align 4
  call void %206(ptr noundef %202) #9
  br label %cleanup

cleanup59.critedge.i:                             ; preds = %dmaengine_prep_slave_sg.exit.i.cleanup59.critedge.i_crit_edge, %lor.lhs.false2.i.i.cleanup59.critedge.i_crit_edge, %lor.lhs.false.i.i.cleanup59.critedge.i_crit_edge, %dmaengine_slave_config.exit.i.cleanup59.critedge.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rxconf.i) #9
  br label %cleanup

cleanup59.critedge96.i:                           ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %txconf.i) #9
  br label %cleanup

if.end64:                                         ; preds = %if.end60
  %207 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %xfer, align 4
  %tx.i = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 6
  %209 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %208, ptr %tx.i, align 4
  %210 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %rx_buf.i, align 4
  %rx.i = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 7
  %212 = ptrtoint ptr %rx.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %211, ptr %rx.i, align 4
  %tobool.not.i106 = icmp eq ptr %208, null
  br i1 %tobool.not.i106, label %if.end64.cond.end.i_crit_edge, label %cond.true.i

if.end64.cond.end.i_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %213 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %len, align 4
  %215 = ptrtoint ptr %n_bytes to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %n_bytes, align 4
  %conv.i109 = zext i8 %216 to i32
  %div.i110 = udiv i32 %214, %conv.i109
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end64.cond.end.i_crit_edge
  %cond.i = phi i32 [ %div.i110, %cond.true.i ], [ 0, %if.end64.cond.end.i_crit_edge ]
  %tx_left.i = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 8
  %217 = ptrtoint ptr %tx_left.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %cond.i, ptr %tx_left.i, align 4
  %218 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %len, align 4
  %220 = ptrtoint ptr %n_bytes to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %n_bytes, align 4
  %conv4.i = zext i8 %221 to i32
  %div5.i = udiv i32 %219, %conv4.i
  %rx_left.i = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 9
  %222 = ptrtoint ptr %rx_left.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %div5.i, ptr %rx_left.i, align 4
  %223 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %224, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 268435456) #9, !srcloc !108
  %225 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %regs, align 4
  %add.ptr.i.i112 = getelementptr i8, ptr %226, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i112, i32 16777216) #9, !srcloc !108
  %227 = ptrtoint ptr %tx_left.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %tx_left.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool7.not.i113 = icmp eq i32 %228, 0
  br i1 %tobool7.not.i113, label %cond.end.i.cleanup_crit_edge, label %if.then.i114

cond.end.i.cleanup_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i114:                                     ; preds = %cond.end.i
  %229 = ptrtoint ptr %fifo_len.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %fifo_len.i, align 4
  %231 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %regs, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %232, i32 28
  %233 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #9, !srcloc !109
  %234 = tail call i32 @llvm.bswap.i32(i32 %233) #9
  %sub.i.i = sub i32 %230, %234
  %235 = ptrtoint ptr %tx_left.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %tx_left.i, align 4
  %237 = tail call i32 @llvm.umin.i32(i32 %236, i32 %sub.i.i) #9
  %sub3.i.i = sub i32 %236, %237
  %238 = ptrtoint ptr %tx_left.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %sub3.i.i, ptr %tx_left.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool.not28.i.i = icmp eq i32 %237, 0
  br i1 %tobool.not28.i.i, label %if.then.i114.cleanup_crit_edge, label %if.then.i114.for.body.i.i_crit_edge

if.then.i114.for.body.i.i_crit_edge:              ; preds = %if.then.i114
  br label %for.body.i.i

if.then.i114.cleanup_crit_edge:                   ; preds = %if.then.i114
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.then.i114.for.body.i.i_crit_edge
  %words.029.i.i = phi i32 [ %dec.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ %237, %if.then.i114.for.body.i.i_crit_edge ]
  %239 = ptrtoint ptr %n_bytes to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %n_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %240)
  %cmp4.i.i = icmp eq i8 %240, 1
  %241 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %tx.i, align 4
  br i1 %cmp4.i.i, label %if.then.i.i115, label %if.else.i.i

if.then.i.i115:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %242, align 1
  %conv6.i.i = zext i8 %244 to i32
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %245 = ptrtoint ptr %242 to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %242, align 2
  %conv8.i.i = zext i16 %246 to i32
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i115
  %txw.0.i.i = phi i32 [ %conv6.i.i, %if.then.i.i115 ], [ %conv8.i.i, %if.else.i.i ]
  %247 = tail call i32 @llvm.bswap.i32(i32 %txw.0.i.i) #9
  %248 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %regs, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %249, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i, i32 %247) #9, !srcloc !108
  %250 = ptrtoint ptr %n_bytes to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %n_bytes, align 4
  %conv12.i.i = zext i8 %251 to i32
  %252 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %tx.i, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %253, i32 %conv12.i.i
  store ptr %add.ptr14.i.i, ptr %tx.i, align 4
  %dec.i.i = add i32 %words.029.i.i, -1
  %tobool.not.i.i116 = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i116, label %if.end.i.i.cleanup_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.cleanup_crit_edge, %if.then.i114.cleanup_crit_edge, %cond.end.i.cleanup_crit_edge, %cleanup59.critedge96.i, %cleanup59.critedge.i, %if.then54.i, %if.end52.i.cleanup_crit_edge, %dmaengine_terminate_sync.exit.i, %rockchip_spi_config.exit, %do.end42, %do.end36, %if.then
  %retval.0 = phi i32 [ -22, %do.end42 ], [ -22, %do.end36 ], [ 1, %if.then ], [ -22, %rockchip_spi_config.exit ], [ -22, %cleanup59.critedge.i ], [ -22, %cleanup59.critedge96.i ], [ -22, %dmaengine_terminate_sync.exit.i ], [ 1, %if.then54.i ], [ 1, %if.end52.i.cleanup_crit_edge ], [ 1, %cond.end.i.cleanup_crit_edge ], [ 1, %if.then.i114.cleanup_crit_edge ], [ 1, %if.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rockchip_spi_max_transfer_size(ptr nocapture noundef readnone %spi) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 65535
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_spi_handle_err(ptr nocapture noundef readonly %ctlr, ptr nocapture noundef readnone %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs.i = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !108
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !108
  %state = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %state, i32 noundef 4) #9
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 60
  %8 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_tx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 47
  %12 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %13(ptr noundef %9) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i.i15 = tail call zeroext i1 @__kasan_check_read(ptr noundef %state, i32 noundef 4) #9
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state, align 4
  %and5 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.end
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 61
  %16 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_rx, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %device_terminate_all.i16 = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 47
  %20 = ptrtoint ptr %device_terminate_all.i16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_terminate_all.i16, align 4
  %tobool.not.i17 = icmp eq ptr %21, null
  br i1 %tobool.not.i17, label %if.then7.if.end9_crit_edge, label %if.then.i19

if.then7.if.end9_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then.i19:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %call.i18 = tail call i32 %21(ptr noundef %17) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then.i19, %if.then7.if.end9_crit_edge, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rockchip_spi_can_dma(ptr nocapture noundef readonly %ctlr, ptr nocapture noundef readnone %spi, ptr nocapture noundef readonly %xfer) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 8
  %2 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp = icmp ugt i8 %3, 8
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %6 = zext i1 %cmp to i32
  %div5 = lshr i32 %5, %6
  %fifo_len = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %fifo_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fifo_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div5, i32 %8)
  %cmp2 = icmp uge i32 %div5, %8
  ret i1 %cmp2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_spi_dma_rxcb(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state1 = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state1, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @llvm.prefetch.p0(ptr %state1, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state1, ptr %state1, i32 1, ptr elementtype(i32) %state1) #9, !srcloc !117
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !118
  %and = and i32 %asmresult.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %slave_abort = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 16
  %3 = ptrtoint ptr %slave_abort to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %slave_abort, align 2, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %regs.i = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !108
  tail call void @spi_finalize_current_transfer(ptr noundef %data) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_spi_dma_txcb(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state1 = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state1, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @llvm.prefetch.p0(ptr %state1, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state1, ptr %state1, i32 2, ptr elementtype(i32) %state1) #9, !srcloc !117
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !118
  %and = and i32 %asmresult.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %slave_abort = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 16
  %3 = ptrtoint ptr %slave_abort to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %slave_abort, align 2, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %slave = getelementptr inbounds %struct.spi_controller, ptr %data, i32 0, i32 12
  %5 = ptrtoint ptr %slave to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %slave, align 1, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %7, 1
  %regs12.i = getelementptr inbounds %struct.rockchip_spi, ptr %1, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end
  %8 = ptrtoint ptr %regs12.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs12.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 36
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9
  br i1 %tobool4.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.body.i
  %11 = and i32 %10, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not.i = icmp eq i32 %11, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %if.then.i.do.cond.i_crit_edge

if.then.i.do.cond.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %12 = ptrtoint ptr %regs12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs12.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %13, i32 36
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #9, !srcloc !109
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not.i = icmp eq i32 %15, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.wait_for_tx_idle.exit_crit_edge, label %land.lhs.true.i.do.cond.i_crit_edge

land.lhs.true.i.do.cond.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

land.lhs.true.i.wait_for_tx_idle.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_for_tx_idle.exit

if.else.i:                                        ; preds = %do.body.i
  %16 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool17.not.i = icmp eq i32 %16, 0
  br i1 %tobool17.not.i, label %if.else.i.wait_for_tx_idle.exit_crit_edge, label %if.else.i.do.cond.i_crit_edge

if.else.i.do.cond.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

if.else.i.wait_for_tx_idle.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_for_tx_idle.exit

do.cond.i:                                        ; preds = %if.else.i.do.cond.i_crit_edge, %land.lhs.true.i.do.cond.i_crit_edge, %if.then.i.do.cond.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %17
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %do.cond.i.do.body.i_crit_edge, label %do.end23.i

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.end23.i:                                       ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.49) #12
  br label %wait_for_tx_idle.exit

wait_for_tx_idle.exit:                            ; preds = %do.end23.i, %if.else.i.wait_for_tx_idle.exit_crit_edge, %land.lhs.true.i.wait_for_tx_idle.exit_crit_edge
  %20 = ptrtoint ptr %regs12.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs12.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 0) #9, !srcloc !108
  tail call void @spi_finalize_current_transfer(ptr noundef %data) #9
  br label %cleanup

cleanup:                                          ; preds = %wait_for_tx_idle.exit, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_spi_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @spi_controller_suspend(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_spi_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #9
  %call3 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @spi_controller_resume(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %spiclk = getelementptr inbounds %struct.rockchip_spi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %spiclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spiclk, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  %apb_pclk = getelementptr inbounds %struct.rockchip_spi, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %apb_pclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %apb_pclk, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_spi_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %spiclk = getelementptr inbounds %struct.rockchip_spi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %spiclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spiclk, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  %apb_pclk = getelementptr inbounds %struct.rockchip_spi, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %apb_pclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %apb_pclk, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_spi_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %apb_pclk = getelementptr inbounds %struct.rockchip_spi, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %apb_pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apb_pclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %5) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %spiclk = getelementptr inbounds %struct.rockchip_spi, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %spiclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spiclk, align 4
  %call.i14 = tail call i32 @clk_prepare(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool.not.i15 = icmp eq i32 %call.i14, 0
  br i1 %tobool.not.i15, label %if.end.i18, label %if.end.clk_prepare_enable.exit21_crit_edge

if.end.clk_prepare_enable.exit21_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit21

if.end.i18:                                       ; preds = %if.end
  %call1.i16 = tail call i32 @clk_enable(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool2.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool2.not.i17, label %if.end.i18.cleanup_crit_edge, label %if.then3.i19

if.end.i18.cleanup_crit_edge:                     ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i19:                                     ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %7) #9
  br label %clk_prepare_enable.exit21

clk_prepare_enable.exit21:                        ; preds = %if.then3.i19, %if.end.clk_prepare_enable.exit21_crit_edge
  %retval.0.i20 = phi i32 [ %call.i14, %if.end.clk_prepare_enable.exit21_crit_edge ], [ %call1.i16, %if.then3.i19 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i20)
  %cmp4 = icmp slt i32 %retval.0.i20, 0
  br i1 %cmp4, label %if.then5, label %clk_prepare_enable.exit21.cleanup_crit_edge

clk_prepare_enable.exit21.cleanup_crit_edge:      ; preds = %clk_prepare_enable.exit21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %clk_prepare_enable.exit21
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %apb_pclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %apb_pclk, align 4
  tail call void @clk_disable(ptr noundef %9) #9
  tail call void @clk_unprepare(ptr noundef %9) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %clk_prepare_enable.exit21.cleanup_crit_edge, %if.end.i18.cleanup_crit_edge, %clk_prepare_enable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ], [ 0, %if.then5 ], [ 0, %clk_prepare_enable.exit21.cleanup_crit_edge ], [ 0, %if.end.i18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !61, !62, !63, !65, !67, !68, !69, !71, !72, !73, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__initcall__kmod_spi_rockchip__241_977_rockchip_spi_driver_init6, !1, !"__initcall__kmod_spi_rockchip__241_977_rockchip_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-rockchip.c", i32 977, i32 1}
!2 = !{ptr @__exitcall_rockchip_spi_driver_exit, !1, !"__exitcall_rockchip_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author242, !4, !"__UNIQUE_ID_author242", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-rockchip.c", i32 979, i32 1}
!5 = !{ptr @__UNIQUE_ID_description243, !6, !"__UNIQUE_ID_description243", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-rockchip.c", i32 980, i32 1}
!7 = !{ptr @__UNIQUE_ID_file244, !8, !"__UNIQUE_ID_file244", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-rockchip.c", i32 981, i32 1}
!9 = !{ptr @__UNIQUE_ID_license245, !8, !"__UNIQUE_ID_license245", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-rockchip.c", i32 969, i32 11}
!12 = !{ptr @rockchip_spi_driver, !13, !"rockchip_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-rockchip.c", i32 967, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-rockchip.c", i32 666, i32 41}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-rockchip.c", i32 691, i32 42}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-rockchip.c", i32 693, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rockchip_spi_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @rockchip_spi_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-rockchip.c", i32 698, i32 40}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-rockchip.c", i32 700, i32 3}
!30 = !{ptr @rockchip_spi_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @rockchip_spi_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/spi/spi-rockchip.c", i32 707, i32 3}
!34 = !{ptr @rockchip_spi_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @rockchip_spi_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/spi/spi-rockchip.c", i32 713, i32 3}
!38 = !{ptr @rockchip_spi_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @rockchip_spi_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/spi/spi-rockchip.c", i32 731, i32 47}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/spi/spi-rockchip.c", i32 737, i32 4}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @rockchip_spi_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @rockchip_spi_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/spi/spi-rockchip.c", i32 741, i32 4}
!49 = !{ptr @rockchip_spi_probe._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @rockchip_spi_probe._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/spi/spi-rockchip.c", i32 750, i32 3}
!53 = !{ptr @rockchip_spi_probe._entry.26, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @rockchip_spi_probe._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/spi/spi-rockchip.c", i32 773, i32 32}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/spi/spi-rockchip.c", i32 788, i32 43}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/spi/spi-rockchip.c", i32 795, i32 3}
!61 = !{ptr @rockchip_spi_probe._entry.31, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @rockchip_spi_probe._entry_ptr.33, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/spi/spi-rockchip.c", i32 799, i32 43}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/spi/spi-rockchip.c", i32 805, i32 3}
!67 = !{ptr @rockchip_spi_probe._entry.35, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @rockchip_spi_probe._entry_ptr.37, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/spi/spi-rockchip.c", i32 825, i32 3}
!71 = !{ptr @rockchip_spi_probe._entry.38, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @rockchip_spi_probe._entry_ptr.40, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/spi/spi-rockchip.c", i32 619, i32 3}
!77 = !{ptr @.str.43, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @rockchip_spi_transfer_one._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @rockchip_spi_transfer_one._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/spi/spi-rockchip.c", i32 624, i32 3}
!82 = !{ptr @rockchip_spi_transfer_one._entry.44, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @rockchip_spi_transfer_one._entry_ptr.46, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/spi/spi-rockchip.c", i32 540, i32 3}
!86 = !{ptr @.str.48, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @rockchip_spi_config._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @rockchip_spi_config._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/spi/spi-rockchip.c", i32 219, i32 2}
!91 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @wait_for_tx_idle._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @wait_for_tx_idle._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @rockchip_spi_dt_match, !95, !"rockchip_spi_dt_match", i1 false, i1 false}
!95 = !{!"../drivers/spi/spi-rockchip.c", i32 950, i32 34}
!96 = !{ptr @rockchip_spi_pm, !97, !"rockchip_spi_pm", i1 false, i1 false}
!97 = !{!"../drivers/spi/spi-rockchip.c", i32 944, i32 32}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{!"auto-init"}
!108 = !{i64 6321718}
!109 = !{i64 6322136}
!110 = !{i64 2148262480}
!111 = !{i64 747303, i64 747328, i64 747350, i64 747366, i64 747378, i64 747398, i64 747422, i64 747438, i64 747450}
!112 = !{i64 2148262668}
!113 = !{i8 0, i8 2}
!114 = !{!"branch_weights", i32 2000, i32 1}
!115 = !{i64 2148271199, i64 2148271225, i64 2148271254, i64 2148271288, i64 2148271319, i64 2148271342}
!116 = !{i64 2148360331}
!117 = !{i64 2148270306, i64 2148270338, i64 2148270367, i64 2148270401, i64 2148270432, i64 2148270455}
!118 = !{i64 2148360562}
