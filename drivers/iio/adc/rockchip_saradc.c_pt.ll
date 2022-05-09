; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/rockchip_saradc.c_pt.bc'
source_filename = "../drivers/iio/adc/rockchip_saradc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rockchip_saradc_data = type { ptr, i32, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.rockchip_saradc = type { ptr, ptr, ptr, %struct.completion, ptr, i32, ptr, ptr, i16, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.anon.86 = type { [8 x i16], i64 }

@__initcall__kmod_rockchip_saradc__289_531_rockchip_saradc_driver_init6 = internal global ptr @rockchip_saradc_driver_init, section ".initcall6.init", align 4
@rockchip_saradc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rockchip_saradc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_saradc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_saradc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rockchip_saradc_driver_exit = internal global ptr @rockchip_saradc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [56 x i8] c"rockchip_saradc.author=Heiko Stuebner <heiko@sntech.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [51 x i8] c"rockchip_saradc.description=Rockchip SARADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [53 x i8] c"rockchip_saradc.file=drivers/iio/adc/rockchip_saradc\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [31 x i8] c"rockchip_saradc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rockchip-saradc\00", [16 x i8] zeroinitializer }, align 32
@rockchip_saradc_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,saradc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @saradc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3066-tsadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3066_tsadc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-saradc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_saradc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3568-saradc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3568_saradc_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@rockchip_saradc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rockchip_saradc_suspend, ptr @rockchip_saradc_resume, ptr @rockchip_saradc_suspend, ptr @rockchip_saradc_resume, ptr @rockchip_saradc_suspend, ptr @rockchip_saradc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rockchip_saradc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 331, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed allocating iio device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rockchip_saradc_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/iio/adc/rockchip_saradc.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rockchip_saradc_probe._entry_ptr = internal global ptr @rockchip_saradc_probe._entry, section ".printk_index", align 4
@rockchip_saradc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 338, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to match device\0A\00", [40 x i8] zeroinitializer }, align 32
@rockchip_saradc_probe._entry_ptr.8 = internal global ptr @rockchip_saradc_probe._entry.6, section ".printk_index", align 4
@rockchip_saradc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 346, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max channels exceeded\00", [42 x i8] zeroinitializer }, align 32
@rockchip_saradc_probe._entry_ptr.11 = internal global ptr @rockchip_saradc_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"saradc-apb\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get saradc-apb\0A\00", [38 x i8] zeroinitializer }, align 32
@rockchip_saradc_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.2, ptr @.str.3, ptr @.str.15, i8 0, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rockchip_saradc\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no reset control found\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to get irq\0A\00", [45 x i8] zeroinitializer }, align 32
@rockchip_saradc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 379, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed requesting irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rockchip_saradc_probe._entry_ptr.19 = internal global ptr @rockchip_saradc_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apb_pclk\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to get pclk\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"saradc\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get adc clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get regulator\0A\00", [39 x i8] zeroinitializer }, align 32
@rockchip_saradc_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 407, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to set adc clk rate, %d\0A\00", [32 x i8] zeroinitializer }, align 32
@rockchip_saradc_probe._entry_ptr.28 = internal global ptr @rockchip_saradc_probe._entry.26, section ".printk_index", align 4
@rockchip_saradc_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 413, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable vref regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@rockchip_saradc_probe._entry_ptr.31 = internal global ptr @rockchip_saradc_probe._entry.29, section ".printk_index", align 4
@rockchip_saradc_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 420, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register devm action, %d\0A\00", [60 x i8] zeroinitializer }, align 32
@rockchip_saradc_probe._entry_ptr.34 = internal global ptr @rockchip_saradc_probe._entry.32, section ".printk_index", align 4
@rockchip_saradc_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.2, ptr @.str.3, i32 432, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to enable pclk\0A\00", [41 x i8] zeroinitializer }, align 32
@rockchip_saradc_probe._entry_ptr.37 = internal global ptr @rockchip_saradc_probe._entry.35, section ".printk_index", align 4
@rockchip_saradc_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 439, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rockchip_saradc_probe._entry_ptr.39 = internal global ptr @rockchip_saradc_probe._entry.38, section ".printk_index", align 4
@rockchip_saradc_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.2, ptr @.str.3, i32 445, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to enable converter clock\0A\00", [62 x i8] zeroinitializer }, align 32
@rockchip_saradc_probe._entry_ptr.42 = internal global ptr @rockchip_saradc_probe._entry.40, section ".printk_index", align 4
@rockchip_saradc_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 452, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rockchip_saradc_probe._entry_ptr.44 = internal global ptr @rockchip_saradc_probe._entry.43, section ".printk_index", align 4
@rockchip_saradc_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @rockchip_saradc_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@saradc_data = internal constant { %struct.rockchip_saradc_data, [20 x i8] } { %struct.rockchip_saradc_data { ptr @rockchip_saradc_iio_channels, i32 3, i32 1000000 }, [20 x i8] zeroinitializer }, align 32
@rk3066_tsadc_data = internal constant { %struct.rockchip_saradc_data, [20 x i8] } { %struct.rockchip_saradc_data { ptr @rockchip_rk3066_tsadc_iio_channels, i32 2, i32 50000 }, [20 x i8] zeroinitializer }, align 32
@rk3399_saradc_data = internal constant { %struct.rockchip_saradc_data, [20 x i8] } { %struct.rockchip_saradc_data { ptr @rockchip_rk3399_saradc_iio_channels, i32 6, i32 1000000 }, [20 x i8] zeroinitializer }, align 32
@rk3568_saradc_data = internal constant { %struct.rockchip_saradc_data, [20 x i8] } { %struct.rockchip_saradc_data { ptr @rockchip_rk3568_saradc_iio_channels, i32 8, i32 1000000 }, [20 x i8] zeroinitializer }, align 32
@rockchip_saradc_iio_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.46, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.47, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 2, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.48, i8 64 }], [88 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc0\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc1\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc2\00", [27 x i8] zeroinitializer }, align 32
@rockchip_rk3066_tsadc_iio_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.46, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.47, i8 64 }], [48 x i8] zeroinitializer }, align 32
@rockchip_rk3399_saradc_iio_channels = internal constant { [6 x %struct.iio_chan_spec], [144 x i8] } { [6 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.46, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.47, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 2, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.48, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 3, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.49, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 4, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.50, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 5, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.51, i8 64 }], [144 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc3\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc4\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc5\00", [27 x i8] zeroinitializer }, align 32
@rockchip_rk3568_saradc_iio_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.46, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.47, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 2, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.48, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 3, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.49, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 4, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.50, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 5, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.51, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 6, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.52, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 7, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.53, i8 64 }], [160 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc6\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc7\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.54 = private unnamed_addr constant [23 x i8] c"rockchip_saradc_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 522, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 525, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [22 x i8] c"rockchip_saradc_match\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 208, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant [23 x i8] c"rockchip_saradc_pm_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 519, i32 8 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 331, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 338, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 346, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 359, i32 14 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 364, i32 11 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 366, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 374, i32 41 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 379, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 383, i32 40 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 386, i32 10 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 388, i32 39 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 391, i32 10 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 393, i32 46 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 396, i32 10 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 407, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 413, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 419, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 432, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 438, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 445, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 451, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [25 x i8] c"rockchip_saradc_iio_info\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 133, i32 30 }
@___asan_gen_.174 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 87, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [12 x i8] c"saradc_data\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 159, i32 42 }
@___asan_gen_.183 = private unnamed_addr constant [18 x i8] c"rk3066_tsadc_data\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 170, i32 42 }
@___asan_gen_.186 = private unnamed_addr constant [19 x i8] c"rk3399_saradc_data\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 185, i32 42 }
@___asan_gen_.189 = private unnamed_addr constant [19 x i8] c"rk3568_saradc_data\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 202, i32 42 }
@___asan_gen_.192 = private unnamed_addr constant [29 x i8] c"rockchip_saradc_iio_channels\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 153, i32 35 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 154, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 155, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 156, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [35 x i8] c"rockchip_rk3066_tsadc_iio_channels\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 165, i32 35 }
@___asan_gen_.207 = private unnamed_addr constant [36 x i8] c"rockchip_rk3399_saradc_iio_channels\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 176, i32 35 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 180, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 181, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 182, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [36 x i8] c"rockchip_rk3568_saradc_iio_channels\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 191, i32 35 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 198, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.226 = private constant [37 x i8] c"../drivers/iio/adc/rockchip_saradc.c\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 199, i32 2 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_rockchip_saradc_driver_exit, ptr @__initcall__kmod_rockchip_saradc__289_531_rockchip_saradc_driver_init6, ptr @rockchip_saradc_driver_exit, ptr @rockchip_saradc_probe._entry, ptr @rockchip_saradc_probe._entry.17, ptr @rockchip_saradc_probe._entry.26, ptr @rockchip_saradc_probe._entry.29, ptr @rockchip_saradc_probe._entry.32, ptr @rockchip_saradc_probe._entry.35, ptr @rockchip_saradc_probe._entry.38, ptr @rockchip_saradc_probe._entry.40, ptr @rockchip_saradc_probe._entry.43, ptr @rockchip_saradc_probe._entry.6, ptr @rockchip_saradc_probe._entry.9, ptr @rockchip_saradc_probe._entry_ptr, ptr @rockchip_saradc_probe._entry_ptr.11, ptr @rockchip_saradc_probe._entry_ptr.19, ptr @rockchip_saradc_probe._entry_ptr.28, ptr @rockchip_saradc_probe._entry_ptr.31, ptr @rockchip_saradc_probe._entry_ptr.34, ptr @rockchip_saradc_probe._entry_ptr.37, ptr @rockchip_saradc_probe._entry_ptr.39, ptr @rockchip_saradc_probe._entry_ptr.42, ptr @rockchip_saradc_probe._entry_ptr.44, ptr @rockchip_saradc_probe._entry_ptr.8, ptr @rockchip_saradc_driver, ptr @.str, ptr @rockchip_saradc_match, ptr @rockchip_saradc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.41, ptr @rockchip_saradc_iio_info, ptr @init_completion.__key, ptr @.str.45, ptr @saradc_data, ptr @rk3066_tsadc_data, ptr @rk3399_saradc_data, ptr @rk3568_saradc_data, ptr @rockchip_saradc_iio_channels, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @rockchip_rk3066_tsadc_iio_channels, ptr @rockchip_rk3399_saradc_iio_channels, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @rockchip_rk3568_saradc_iio_channels, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_saradc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_saradc_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_saradc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_saradc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_saradc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_saradc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_saradc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_saradc_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_saradc_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_saradc_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_saradc_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_saradc_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_saradc_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_saradc_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_saradc_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saradc_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3066_tsadc_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_saradc_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3568_saradc_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_saradc_iio_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_rk3066_tsadc_iio_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_rk3399_saradc_iio_channels to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_rk3568_saradc_iio_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_saradc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_saradc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_saradc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_saradc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_saradc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 104) #8
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %call8 = tail call ptr @of_match_device(ptr noundef nonnull @rockchip_saradc_match, ptr noundef %dev) #8
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  %data = getelementptr inbounds %struct.of_device_id, ptr %call8, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %data16 = getelementptr inbounds %struct.rockchip_saradc, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %data16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %data16, align 4
  %num_channels = getelementptr inbounds %struct.rockchip_saradc_data, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp = icmp sgt i32 %8, 8
  br i1 %cmp, label %do.end21, label %if.end23

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %call24 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call24, ptr %3, align 4
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %call.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %reset = getelementptr inbounds %struct.rockchip_saradc, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %reset, align 4
  %cmp.i322 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i322, label %if.then35, label %if.end30.if.end54_crit_edge

if.end30.if.end54_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then35:                                        ; preds = %if.end30
  %cmp38.not = icmp eq ptr %call.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp38.not, label %do.body43, label %if.then39

if.then39:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call.i to i32
  %call41 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %12, ptr noundef nonnull @.str.13) #8
  br label %cleanup

do.body43:                                        ; preds = %if.then35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_saradc_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_saradc_probe, %if.then48)) #8
          to label %do.end52 [label %if.then48], !srcloc !132

if.then48:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_saradc_probe.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  br label %do.end52

do.end52:                                         ; preds = %if.then48, %do.body43
  %13 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %reset, align 4
  br label %if.end54

if.end54:                                         ; preds = %do.end52, %if.end30.if.end54_crit_edge
  %completion = getelementptr inbounds %struct.rockchip_saradc, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.rockchip_saradc, ptr %3, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @init_completion.__key) #8
  %call55 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.then57, label %if.end60

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %call59 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call55, ptr noundef nonnull @.str.16) #8
  br label %cleanup

if.end60:                                         ; preds = %if.end54
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end60.dev_name.exit_crit_edge

if.end60.dev_name.exit_crit_edge:                 ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end60.dev_name.exit_crit_edge
  %retval.0.i323 = phi ptr [ %18, %if.end.i ], [ %16, %if.end60.dev_name.exit_crit_edge ]
  %call.i324 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call55, ptr noundef nonnull @rockchip_saradc_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i323, ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i324)
  %cmp65 = icmp slt i32 %call.i324, 0
  br i1 %cmp65, label %do.end69, label %if.end71

do.end69:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call55) #11
  br label %cleanup

if.end71:                                         ; preds = %dev_name.exit
  %call73 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.20) #8
  %pclk = getelementptr inbounds %struct.rockchip_saradc, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call73, ptr %pclk, align 4
  %cmp.i325 = icmp ugt ptr %call73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i325, label %if.then76, label %if.end81

if.then76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %call73 to i32
  %call80 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %20, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end81:                                         ; preds = %if.end71
  %call83 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.22) #8
  %clk = getelementptr inbounds %struct.rockchip_saradc, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call83, ptr %clk, align 4
  %cmp.i326 = icmp ugt ptr %call83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i326, label %if.then86, label %if.end91

if.then86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %call83 to i32
  %call90 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %22, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end91:                                         ; preds = %if.end81
  %call93 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.24) #8
  %vref = getelementptr inbounds %struct.rockchip_saradc, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %vref to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call93, ptr %vref, align 4
  %cmp.i327 = icmp ugt ptr %call93, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i327, label %if.then96, label %if.end101

if.then96:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %call93 to i32
  %call100 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %24, ptr noundef nonnull @.str.25) #8
  br label %cleanup

if.end101:                                        ; preds = %if.end91
  %25 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reset, align 4
  %tobool103.not = icmp eq ptr %26, null
  br i1 %tobool103.not, label %if.end101.if.end106_crit_edge, label %if.then104

if.end101.if.end106_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rockchip_saradc_reset_controller(ptr noundef nonnull %26)
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %if.end101.if.end106_crit_edge
  %27 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk, align 4
  %29 = ptrtoint ptr %data16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data16, align 4
  %clk_rate = getelementptr inbounds %struct.rockchip_saradc_data, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %clk_rate, align 4
  %call109 = tail call i32 @clk_set_rate(ptr noundef %28, i32 noundef %32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp110 = icmp slt i32 %call109, 0
  br i1 %cmp110, label %do.end114, label %if.end116

do.end114:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call109) #11
  br label %cleanup

if.end116:                                        ; preds = %if.end106
  %33 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vref, align 4
  %call118 = tail call i32 @regulator_enable(ptr noundef %34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %do.end123, label %if.end125

do.end123:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #11
  br label %cleanup

if.end125:                                        ; preds = %if.end116
  %call.i328 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @rockchip_saradc_regulator_disable, ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i328)
  %tobool.not.i329 = icmp eq i32 %call.i328, 0
  %35 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vref, align 4
  br i1 %tobool.not.i329, label %if.end134, label %do.end132

do.end132:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  %call.i351 = tail call i32 @regulator_disable(ptr noundef %36) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %call.i328) #11
  br label %cleanup

if.end134:                                        ; preds = %if.end125
  %call136 = tail call i32 @regulator_get_voltage(ptr noundef %36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %cmp137 = icmp slt i32 %call136, 0
  br i1 %cmp137, label %if.end134.cleanup_crit_edge, label %if.end139

if.end134.cleanup_crit_edge:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end139:                                        ; preds = %if.end134
  %uv_vref = getelementptr inbounds %struct.rockchip_saradc, ptr %3, i32 0, i32 5
  %37 = ptrtoint ptr %uv_vref to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call136, ptr %uv_vref, align 4
  %38 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pclk, align 4
  %call141 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %cmp142 = icmp slt i32 %call141, 0
  br i1 %cmp142, label %do.end146, label %if.end148

do.end146:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #11
  br label %cleanup

if.end148:                                        ; preds = %if.end139
  %call.i331 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @rockchip_saradc_pclk_disable, ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i331)
  %tobool.not.i332 = icmp eq i32 %call.i331, 0
  br i1 %tobool.not.i332, label %if.end157, label %do.end155

do.end155:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %41) #8
  tail call void @clk_unprepare(ptr noundef %41) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %call.i331) #11
  br label %cleanup

if.end157:                                        ; preds = %if.end148
  %42 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk, align 4
  %call159 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %cmp160 = icmp slt i32 %call159, 0
  br i1 %cmp160, label %do.end164, label %if.end166

do.end164:                                        ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #11
  br label %cleanup

if.end166:                                        ; preds = %if.end157
  %call.i336 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @rockchip_saradc_clk_disable, ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i336)
  %tobool.not.i337 = icmp eq i32 %call.i336, 0
  br i1 %tobool.not.i337, label %if.end175, label %do.end173

do.end173:                                        ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %45) #8
  tail call void @clk_unprepare(ptr noundef %45) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %call.i336) #11
  br label %cleanup

if.end175:                                        ; preds = %if.end166
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %46 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call, ptr %driver_data.i.i, align 4
  %47 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i342 = icmp eq ptr %48, null
  br i1 %tobool.not.i342, label %if.end.i343, label %if.end175.dev_name.exit345_crit_edge

if.end175.dev_name.exit345_crit_edge:             ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit345

if.end.i343:                                      ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  br label %dev_name.exit345

dev_name.exit345:                                 ; preds = %if.end.i343, %if.end175.dev_name.exit345_crit_edge
  %retval.0.i344 = phi ptr [ %50, %if.end.i343 ], [ %48, %if.end175.dev_name.exit345_crit_edge ]
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %51 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %retval.0.i344, ptr %name, align 8
  %info178 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %52 = ptrtoint ptr %info178 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @rockchip_saradc_iio_info, ptr %info178, align 8
  %53 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %call, align 8
  %54 = ptrtoint ptr %data16 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data16, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %channels180 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %58 = ptrtoint ptr %channels180 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %channels180, align 8
  %59 = load ptr, ptr %data16, align 4
  %num_channels182 = getelementptr inbounds %struct.rockchip_saradc_data, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %num_channels182 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_channels182, align 4
  %num_channels183 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %62 = ptrtoint ptr %num_channels183 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %num_channels183, align 4
  %dev184 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  %call185 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev184, ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @rockchip_saradc_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end188, label %dev_name.exit345.cleanup_crit_edge

dev_name.exit345.cleanup_crit_edge:               ; preds = %dev_name.exit345
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end188:                                        ; preds = %dev_name.exit345
  %nb = getelementptr inbounds %struct.rockchip_saradc, ptr %3, i32 0, i32 10
  %63 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @rockchip_saradc_volt_notify, ptr %nb, align 4
  %64 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vref, align 4
  %call191 = tail call i32 @regulator_register_notifier(ptr noundef %65, ptr noundef %nb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %if.end194, label %if.end188.cleanup_crit_edge

if.end188.cleanup_crit_edge:                      ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end194:                                        ; preds = %if.end188
  %call.i346 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @rockchip_saradc_regulator_unreg_notifier, ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i346)
  %tobool.not.i347 = icmp eq i32 %call.i346, 0
  br i1 %tobool.not.i347, label %if.end199, label %devm_add_action_or_reset.exit350

devm_add_action_or_reset.exit350:                 ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vref, align 4
  %call.i353 = tail call i32 @regulator_unregister_notifier(ptr noundef %67, ptr noundef %nb) #8
  br label %cleanup

if.end199:                                        ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #10
  %call201 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end199, %devm_add_action_or_reset.exit350, %if.end188.cleanup_crit_edge, %dev_name.exit345.cleanup_crit_edge, %do.end173, %do.end164, %do.end155, %do.end146, %if.end134.cleanup_crit_edge, %do.end132, %do.end123, %do.end114, %if.then96, %if.then86, %if.then76, %do.end69, %if.then57, %if.then39, %if.then27, %do.end21, %do.end13, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end21 ], [ %10, %if.then27 ], [ %call41, %if.then39 ], [ %call59, %if.then57 ], [ %call.i324, %do.end69 ], [ %call80, %if.then76 ], [ %call90, %if.then86 ], [ %call100, %if.then96 ], [ %call109, %do.end114 ], [ %call118, %do.end123 ], [ %call.i328, %do.end132 ], [ %call141, %do.end146 ], [ %call.i331, %do.end155 ], [ %call159, %do.end164 ], [ %call.i336, %do.end173 ], [ %call201, %if.end199 ], [ -19, %do.end13 ], [ -12, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ %call136, %if.end134.cleanup_crit_edge ], [ %call185, %dev_name.exit345.cleanup_crit_edge ], [ %call191, %if.end188.cleanup_crit_edge ], [ %call.i346, %devm_add_action_or_reset.exit350 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_saradc_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !133
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %conv = trunc i32 %3 to i16
  %last_val = getelementptr inbounds %struct.rockchip_saradc, ptr %dev_id, i32 0, i32 8
  %4 = ptrtoint ptr %last_val to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %last_val, align 4
  %last_chan = getelementptr inbounds %struct.rockchip_saradc, ptr %dev_id, i32 0, i32 9
  %5 = ptrtoint ptr %last_chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %last_chan, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %6, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %realbits, align 1
  %conv1 = zext i8 %8 to i32
  %sub2 = sub nsw i32 32, %conv1
  %shr = lshr i32 -1, %sub2
  %and5 = and i32 %shr, %3
  %conv6 = trunc i32 %and5 to i16
  store i16 %conv6, ptr %last_val, align 4
  %9 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_id, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !134
  %completion = getelementptr inbounds %struct.rockchip_saradc, ptr %dev_id, i32 0, i32 3
  tail call void @complete(ptr noundef %completion) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rockchip_saradc_reset_controller(ptr noundef %reset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @reset_control_assert(ptr noundef %reset) #8
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #8
  %call1 = tail call i32 @reset_control_deassert(ptr noundef %reset) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_saradc_regulator_disable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vref = getelementptr inbounds %struct.rockchip_saradc, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vref, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %clk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_saradc_pclk_disable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pclk = getelementptr inbounds %struct.rockchip_saradc, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %1) #8
  tail call void @clk_unprepare(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_saradc_clk_disable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.rockchip_saradc, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %1) #8
  tail call void @clk_unprepare(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_saradc_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %data = alloca %struct.anon.86, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data) #8
  %mlock = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 5
  %4 = call ptr @memset(ptr %data, i32 255, i32 24)
  tail call void @mutex_lock_nested(ptr noundef %mlock, i32 noundef 0) #8
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %masklength, align 8
  %call1 = tail call i32 @_find_next_bit_be(ptr noundef %6, i32 noundef %8, i32 noundef 0) #8
  %9 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %10)
  %cmp39 = icmp ult i32 %call1, %10
  br i1 %cmp39, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channels = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 13
  %completion.i = getelementptr inbounds %struct.rockchip_saradc, ptr %3, i32 0, i32 3
  %last_chan.i = getelementptr inbounds %struct.rockchip_saradc, ptr %3, i32 0, i32 9
  %last_val = getelementptr inbounds %struct.rockchip_saradc, ptr %3, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %j.041 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %i.040 = phi i32 [ %call1, %for.body.lr.ph ], [ %call7, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %channels, align 8
  %arrayidx = getelementptr %struct.iio_chan_spec, ptr %12, i32 %i.040
  %13 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %completion.i, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 134217728) #8, !srcloc !134
  %16 = ptrtoint ptr %last_chan.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx, ptr %last_chan.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %channel.i = getelementptr %struct.iio_chan_spec, ptr %12, i32 %i.040, i32 1
  %17 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel.i, align 4
  %and.i = shl i32 %18, 24
  %or1.i = and i32 %and.i, 117440512
  %19 = or i32 %or1.i, 671088640
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %add.ptr3.i = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %19) #8, !srcloc !134
  %call5.i = tail call i32 @wait_for_completion_timeout(ptr noundef %completion.i, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i.not = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i.not, label %cleanup, label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %add.ptr.i34 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 0) #8, !srcloc !134
  br label %cleanup11

for.inc:                                          ; preds = %for.body
  %24 = ptrtoint ptr %last_val to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %last_val, align 4
  %arrayidx4 = getelementptr [8 x i16], ptr %data, i32 0, i32 %j.041
  %26 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %arrayidx4, align 2
  %inc = add i32 %j.041, 1
  %27 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %active_scan_mask, align 4
  %29 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %masklength, align 8
  %add = add nuw i32 %i.040, 1
  %call7 = tail call i32 @_find_next_bit_be(ptr noundef %28, i32 noundef %30, i32 noundef %add) #8
  %31 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %masklength, align 8
  %cmp = icmp ult i32 %call7, %32
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %call8 = tail call i64 @iio_get_time_ns(ptr noundef %1) #8
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %33 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %scan_timestamp.i, align 8, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i35 = icmp eq i8 %34, 0
  br i1 %tobool.not.i35, label %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %36, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %data, i32 %sub.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %call8, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef nonnull %data) #8
  br label %cleanup11

cleanup11:                                        ; preds = %iio_push_to_buffers_with_timestamp.exit, %cleanup
  call void @mutex_unlock(ptr noundef %mlock) #8
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %38 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %39) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data) #8
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @rockchip_saradc_volt_notify(ptr nocapture noundef writeonly %nb, i32 noundef %event, ptr noundef %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %data to i32
  %uv_vref = getelementptr i8, ptr %nb, i32 -20
  %1 = ptrtoint ptr %uv_vref to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %uv_vref, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_saradc_regulator_unreg_notifier(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vref = getelementptr inbounds %struct.rockchip_saradc, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vref, align 4
  %nb = getelementptr inbounds %struct.rockchip_saradc, ptr %data, i32 0, i32 10
  %call = tail call i32 @regulator_unregister_notifier(ptr noundef %1, ptr noundef %nb) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_saradc_read_raw(ptr noundef %indio_dev, ptr noundef %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mlock = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mlock, i32 noundef 0) #8
  %completion.i = getelementptr inbounds %struct.rockchip_saradc, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %completion.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 134217728) #8, !srcloc !134
  %last_chan.i = getelementptr inbounds %struct.rockchip_saradc, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %last_chan.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %chan, ptr %last_chan.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %7 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel.i, align 4
  %and.i = shl i32 %8, 24
  %or1.i = and i32 %and.i, 117440512
  %9 = or i32 %or1.i, 671088640
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr3.i = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %9) #8, !srcloc !134
  %call5.i = tail call i32 @wait_for_completion_timeout(ptr noundef %completion.i, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i.not = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr.i16 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 0) #8, !srcloc !134
  tail call void @mutex_unlock(ptr noundef %mlock) #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %last_val = getelementptr inbounds %struct.rockchip_saradc, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %last_val to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %last_val, align 4
  %conv = zext i16 %15 to i32
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %val, align 4
  tail call void @mutex_unlock(ptr noundef %mlock) #8
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %uv_vref = getelementptr inbounds %struct.rockchip_saradc, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %uv_vref to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %uv_vref, align 4
  %div = sdiv i32 %18, 1000
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div, ptr %val, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %realbits, align 1
  %conv5 = zext i8 %21 to i32
  %22 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv5, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4, %if.end, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %sw.bb4 ], [ -110, %if.then ], [ 1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_unregister_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_saradc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %clk = getelementptr inbounds %struct.rockchip_saradc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %pclk = getelementptr inbounds %struct.rockchip_saradc, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  %vref = getelementptr inbounds %struct.rockchip_saradc, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vref, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %9) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_saradc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %vref = getelementptr inbounds %struct.rockchip_saradc, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vref, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pclk = getelementptr inbounds %struct.rockchip_saradc, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end6, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end.i
  %clk = getelementptr inbounds %struct.rockchip_saradc, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %call.i22 = tail call i32 @clk_prepare(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool.not.i23 = icmp eq i32 %call.i22, 0
  br i1 %tobool.not.i23, label %if.end.i26, label %if.end6.if.then9_crit_edge

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.end.i26:                                       ; preds = %if.end6
  %call1.i24 = tail call i32 @clk_enable(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool2.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool2.not.i25, label %if.end.i26.cleanup_crit_edge, label %if.then3.i27

if.end.i26.cleanup_crit_edge:                     ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i27:                                     ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %if.then9

if.then9:                                         ; preds = %if.then3.i27, %if.end6.if.then9_crit_edge
  %retval.0.i28.ph = phi i32 [ %call1.i24, %if.then3.i27 ], [ %call.i22, %if.end6.if.then9_crit_edge ]
  %10 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %11) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then9, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %11, %if.then9 ], [ %7, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %retval.0.i28.ph, %if.then9 ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i26.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ 0, %if.end.i26.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !79, !81, !82, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @__initcall__kmod_rockchip_saradc__289_531_rockchip_saradc_driver_init6, !1, !"__initcall__kmod_rockchip_saradc__289_531_rockchip_saradc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 531, i32 1}
!2 = !{ptr @__exitcall_rockchip_saradc_driver_exit, !1, !"__exitcall_rockchip_saradc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 533, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 534, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 535, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 525, i32 11}
!12 = !{ptr @rockchip_saradc_driver, !13, !"rockchip_saradc_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 522, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 331, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rockchip_saradc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rockchip_saradc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 338, i32 3}
!24 = !{ptr @rockchip_saradc_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @rockchip_saradc_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 346, i32 3}
!28 = !{ptr @rockchip_saradc_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rockchip_saradc_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 359, i32 14}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 364, i32 11}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 366, i32 3}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @rockchip_saradc_probe.__UNIQUE_ID_ddebug288, !35, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 374, i32 41}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 379, i32 3}
!42 = !{ptr @rockchip_saradc_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @rockchip_saradc_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 383, i32 40}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 386, i32 10}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 388, i32 39}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 391, i32 10}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 393, i32 46}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 396, i32 10}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 407, i32 3}
!58 = !{ptr @rockchip_saradc_probe._entry.26, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @rockchip_saradc_probe._entry_ptr.28, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 413, i32 3}
!62 = !{ptr @rockchip_saradc_probe._entry.29, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @rockchip_saradc_probe._entry_ptr.31, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 419, i32 3}
!66 = !{ptr @rockchip_saradc_probe._entry.32, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @rockchip_saradc_probe._entry_ptr.34, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 432, i32 3}
!70 = !{ptr @rockchip_saradc_probe._entry.35, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @rockchip_saradc_probe._entry_ptr.37, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @rockchip_saradc_probe._entry.38, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 438, i32 3}
!74 = !{ptr @rockchip_saradc_probe._entry_ptr.39, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 445, i32 3}
!77 = !{ptr @rockchip_saradc_probe._entry.40, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @rockchip_saradc_probe._entry_ptr.42, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @rockchip_saradc_probe._entry.43, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 451, i32 3}
!81 = !{ptr @rockchip_saradc_probe._entry_ptr.44, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @init_completion.__key, !83, !"__key", i1 false, i1 false}
!83 = !{!"../include/linux/completion.h", i32 87, i32 2}
!84 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @rockchip_saradc_iio_info, !86, !"rockchip_saradc_iio_info", i1 false, i1 false}
!86 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 133, i32 30}
!87 = !{ptr @rockchip_saradc_match, !88, !"rockchip_saradc_match", i1 false, i1 false}
!88 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 208, i32 34}
!89 = !{ptr @saradc_data, !90, !"saradc_data", i1 false, i1 false}
!90 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 159, i32 42}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 154, i32 2}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 155, i32 2}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 156, i32 2}
!97 = !{ptr @rockchip_saradc_iio_channels, !98, !"rockchip_saradc_iio_channels", i1 false, i1 false}
!98 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 153, i32 35}
!99 = !{ptr @rk3066_tsadc_data, !100, !"rk3066_tsadc_data", i1 false, i1 false}
!100 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 170, i32 42}
!101 = !{ptr @rockchip_rk3066_tsadc_iio_channels, !102, !"rockchip_rk3066_tsadc_iio_channels", i1 false, i1 false}
!102 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 165, i32 35}
!103 = !{ptr @rk3399_saradc_data, !104, !"rk3399_saradc_data", i1 false, i1 false}
!104 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 185, i32 42}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 180, i32 2}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 181, i32 2}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 182, i32 2}
!111 = !{ptr @rockchip_rk3399_saradc_iio_channels, !112, !"rockchip_rk3399_saradc_iio_channels", i1 false, i1 false}
!112 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 176, i32 35}
!113 = !{ptr @rk3568_saradc_data, !114, !"rk3568_saradc_data", i1 false, i1 false}
!114 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 202, i32 42}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 198, i32 2}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 199, i32 2}
!119 = !{ptr @rockchip_rk3568_saradc_iio_channels, !120, !"rockchip_rk3568_saradc_iio_channels", i1 false, i1 false}
!120 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 191, i32 35}
!121 = !{ptr @rockchip_saradc_pm_ops, !122, !"rockchip_saradc_pm_ops", i1 false, i1 false}
!122 = !{!"../drivers/iio/adc/rockchip_saradc.c", i32 519, i32 8}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{i64 2148964949, i64 2148964954, i64 2148964967, i64 2148965011, i64 2148965045, i64 2148965066}
!133 = !{i64 4884165}
!134 = !{i64 4883747}
!135 = !{i64 2155127390}
!136 = !{i8 0, i8 2}
