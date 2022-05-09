; ModuleID = '/llk/IR_all_yes/drivers/soc/rockchip/io-domain.c_pt.bc'
source_filename = "../drivers/soc/rockchip/io-domain.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rockchip_iodomain_soc_data = type { i32, [16 x ptr], ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.rockchip_iodomain = type { ptr, ptr, ptr, [16 x %struct.rockchip_iodomain_supply], ptr }
%struct.rockchip_iodomain_supply = type { ptr, ptr, %struct.notifier_block, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pre_voltage_change_data = type { i32, i32, i32 }

@__initcall__kmod_io_domain__293_695_rockchip_iodomain_driver_init6 = internal global ptr @rockchip_iodomain_driver_init, section ".initcall6.init", align 4
@rockchip_iodomain_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rockchip_iodomain_probe, ptr @rockchip_iodomain_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_iodomain_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rockchip_iodomain_driver_exit = internal global ptr @rockchip_iodomain_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [48 x i8] c"io_domain.description=Rockchip IO-domain driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [50 x i8] c"io_domain.author=Heiko Stuebner <heiko@sntech.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [55 x i8] c"io_domain.author=Doug Anderson <dianders@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [46 x i8] c"io_domain.file=drivers/soc/rockchip/io-domain\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [25 x i8] c"io_domain.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rockchip-iodomain\00", [46 x i8] zeroinitializer }, align 32
@rockchip_iodomain_match = internal constant { [14 x %struct.of_device_id], [680 x i8] } { [14 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-io-voltage-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_px30 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-pmu-io-voltage-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_px30_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3188-io-voltage-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_rk3188 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3228-io-voltage-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_rk3228 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-io-voltage-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_rk3288 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3328-io-voltage-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_rk3328 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3368-io-voltage-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_rk3368 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3368-pmu-io-voltage-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_rk3368_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-io-voltage-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_rk3399 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-pmu-io-voltage-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_rk3399_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3568-pmu-io-voltage-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_rk3568_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rv1108-io-voltage-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_rv1108 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rv1108-pmu-io-voltage-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_rv1108_pmu }, %struct.of_device_id zeroinitializer], [680 x i8] zeroinitializer }, align 32
@rockchip_iodomain_probe.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"io_domain\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rockchip_iodomain_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/soc/rockchip/io-domain.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"falling back to old binding\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip,grf\00", [19 x i8] zeroinitializer }, align 32
@rockchip_iodomain_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 586, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"couldn't find grf regmap\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rockchip_iodomain_probe._entry_ptr = internal global ptr @rockchip_iodomain_probe._entry, section ".printk_index", align 4
@rockchip_iodomain_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 608, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"couldn't get regulator %s\0A\00", [37 x i8] zeroinitializer }, align 32
@rockchip_iodomain_probe._entry_ptr.11 = internal global ptr @rockchip_iodomain_probe._entry.9, section ".printk_index", align 4
@rockchip_iodomain_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 618, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Can't determine voltage: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@rockchip_iodomain_probe._entry_ptr.14 = internal global ptr @rockchip_iodomain_probe._entry.12, section ".printk_index", align 4
@rockchip_iodomain_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 626, ptr @.str.17, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%d uV is too high. May damage SoC!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@rockchip_iodomain_probe._entry_ptr.18 = internal global ptr @rockchip_iodomain_probe._entry.15, section ".printk_index", align 4
@rockchip_iodomain_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 647, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"regulator notifier request failed\0A\00", [61 x i8] zeroinitializer }, align 32
@rockchip_iodomain_probe._entry_ptr.21 = internal global ptr @rockchip_iodomain_probe._entry.19, section ".printk_index", align 4
@rockchip_iodomain_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 139, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Couldn't write to GRF\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rockchip_iodomain_write\00", [40 x i8] zeroinitializer }, align 32
@rockchip_iodomain_write._entry_ptr = internal global ptr @rockchip_iodomain_write._entry, section ".printk_index", align 4
@rockchip_iodomain_notify.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rockchip_iodomain_notify\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Setting to %d\0A\00", [17 x i8] zeroinitializer }, align 32
@rockchip_iodomain_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 180, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Voltage too high: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@rockchip_iodomain_notify._entry_ptr = internal global ptr @rockchip_iodomain_notify._entry, section ".printk_index", align 4
@rockchip_iodomain_notify.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.27, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Setting to %d done\0A\00", [44 x i8] zeroinitializer }, align 32
@soc_data_px30_pmu = internal constant { %struct.rockchip_iodomain_soc_data, [52 x i8] } { %struct.rockchip_iodomain_soc_data { i32 256, [16 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.39, ptr @.str.40], ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@soc_data_rk3188 = internal constant { %struct.rockchip_iodomain_soc_data, [52 x i8] } { %struct.rockchip_iodomain_soc_data { i32 260, [16 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.29, ptr @.str.46, ptr @.str.47], ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@soc_data_rk3288 = internal constant { %struct.rockchip_iodomain_soc_data, [52 x i8] } { %struct.rockchip_iodomain_soc_data { i32 896, [16 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], ptr @rk3288_iodomain_init, ptr null }, [52 x i8] zeroinitializer }, align 32
@soc_data_rk3368 = internal constant { %struct.rockchip_iodomain_soc_data, [52 x i8] } { %struct.rockchip_iodomain_soc_data { i32 2304, [16 x ptr] [ptr null, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr null, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], ptr @rk3368_iodomain_init, ptr null }, [52 x i8] zeroinitializer }, align 32
@soc_data_rk3399_pmu = internal constant { %struct.rockchip_iodomain_soc_data, [52 x i8] } { %struct.rockchip_iodomain_soc_data { i32 384, [16 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.72, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], ptr @rk3399_pmu_iodomain_init, ptr null }, [52 x i8] zeroinitializer }, align 32
@soc_data_rk3568_pmu = internal constant { %struct.rockchip_iodomain_soc_data, [52 x i8] } { %struct.rockchip_iodomain_soc_data { i32 320, [16 x ptr] [ptr @.str.39, ptr @.str.40, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.28, ptr @.str.75, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], ptr null, ptr @rk3568_iodomain_write }, [52 x i8] zeroinitializer }, align 32
@soc_data_rv1108 = internal constant { %struct.rockchip_iodomain_soc_data, [52 x i8] } { %struct.rockchip_iodomain_soc_data { i32 1028, [16 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.28], ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vccio6\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vccio1\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vccio2\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vccio3\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vccio4\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vccio5\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vccio-oscgpi\00", [19 x i8] zeroinitializer }, align 32
@soc_data_px30 = internal constant { { i32, <{ [8 x ptr], [8 x ptr] }>, ptr, ptr }, [52 x i8] } { { i32, <{ [8 x ptr], [8 x ptr] }>, ptr, ptr } { i32 384, <{ [8 x ptr], [8 x ptr] }> <{ [8 x ptr] [ptr null, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], [8 x ptr] zeroinitializer }>, ptr @px30_iodomain_init, ptr null }, [52 x i8] zeroinitializer }, align 32
@px30_iodomain_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 210, ptr @.str.38, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"couldn't update vccio6 ctrl\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"px30_iodomain_init\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@px30_iodomain_init._entry_ptr = internal global ptr @px30_iodomain_init._entry, section ".printk_index", align 4
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pmuio1\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pmuio2\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ap0\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ap1\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cif\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flash\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vccio0\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lcdc0\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lcdc1\00", [26 x i8] zeroinitializer }, align 32
@soc_data_rk3228 = internal constant { { i32, <{ ptr, ptr, ptr, ptr, [12 x ptr] }>, ptr, ptr }, [52 x i8] } { { i32, <{ ptr, ptr, ptr, ptr, [12 x ptr] }>, ptr, ptr } { i32 1048, <{ ptr, ptr, ptr, ptr, [12 x ptr] }> <{ ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, [12 x ptr] zeroinitializer }>, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lcdc\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dvp\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"flash0\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"flash1\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wifi\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"bb\00", [29 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"audio\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sdcard\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio30\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio1830\00", [23 x i8] zeroinitializer }, align 32
@rk3288_iodomain_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 229, ptr @.str.38, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"couldn't update flash0 ctrl\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rk3288_iodomain_init\00", [43 x i8] zeroinitializer }, align 32
@rk3288_iodomain_init._entry_ptr = internal global ptr @rk3288_iodomain_init._entry, section ".printk_index", align 4
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pmuio\00", [26 x i8] zeroinitializer }, align 32
@soc_data_rk3328 = internal constant { { i32, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [9 x ptr] }>, ptr, ptr }, [52 x i8] } { { i32, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [9 x ptr] }>, ptr, ptr } { i32 1040, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [9 x ptr] }> <{ ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.28, ptr @.str.61, [9 x ptr] zeroinitializer }>, ptr @rk3328_iodomain_init, ptr null }, [52 x i8] zeroinitializer }, align 32
@rk3328_iodomain_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 248, ptr @.str.38, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"couldn't update vccio2 vsel ctrl\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rk3328_iodomain_init\00", [43 x i8] zeroinitializer }, align 32
@rk3328_iodomain_init._entry_ptr = internal global ptr @rk3328_iodomain_init._entry, section ".printk_index", align 4
@rk3368_iodomain_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.65, ptr @.str.3, i32 267, ptr @.str.38, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rk3368_iodomain_init\00", [43 x i8] zeroinitializer }, align 32
@rk3368_iodomain_init._entry_ptr = internal global ptr @rk3368_iodomain_init._entry, section ".printk_index", align 4
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pmu\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vop\00", [28 x i8] zeroinitializer }, align 32
@soc_data_rk3368_pmu = internal constant { { i32, <{ ptr, ptr, ptr, ptr, ptr, ptr, [10 x ptr] }>, ptr, ptr }, [52 x i8] } { { i32, <{ ptr, ptr, ptr, ptr, ptr, ptr, [10 x ptr] }>, ptr, ptr } { i32 256, <{ ptr, ptr, ptr, ptr, ptr, ptr, [10 x ptr] }> <{ ptr null, ptr null, ptr null, ptr null, ptr @.str.66, ptr @.str.67, [10 x ptr] zeroinitializer }>, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bt656\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdmmc\00", [26 x i8] zeroinitializer }, align 32
@soc_data_rk3399 = internal constant { { i32, <{ ptr, ptr, ptr, ptr, [12 x ptr] }>, ptr, ptr }, [52 x i8] } { { i32, <{ ptr, ptr, ptr, ptr, [12 x ptr] }>, ptr, ptr } { i32 58944, <{ ptr, ptr, ptr, ptr, [12 x ptr] }> <{ ptr @.str.69, ptr @.str.55, ptr @.str.70, ptr @.str.58, [12 x ptr] zeroinitializer }>, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pmu1830\00", [24 x i8] zeroinitializer }, align 32
@rk3399_pmu_iodomain_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 286, ptr @.str.38, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"couldn't update pmu io iodomain ctrl\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rk3399_pmu_iodomain_init\00", [39 x i8] zeroinitializer }, align 32
@rk3399_pmu_iodomain_init._entry_ptr = internal global ptr @rk3399_pmu_iodomain_init._entry, section ".printk_index", align 4
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vccio7\00", [25 x i8] zeroinitializer }, align 32
@soc_data_rv1108_pmu = internal constant { { i32, <{ ptr, [15 x ptr] }>, ptr, ptr }, [52 x i8] } { { i32, <{ ptr, [15 x ptr] }>, ptr, ptr } { i32 260, <{ ptr, [15 x ptr] }> <{ ptr @.str.66, [15 x ptr] zeroinitializer }>, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967277]
@__sancov_gen_cov_switch_values.77 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.78 = private unnamed_addr constant [25 x i8] c"rockchip_iodomain_driver\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 686, i32 31 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 690, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant [24 x i8] c"rockchip_iodomain_match\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 494, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 581, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 582, i32 50 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 586, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 607, i32 5 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 617, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 624, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 646, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 139, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 177, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 180, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 190, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [18 x i8] c"soc_data_px30_pmu\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 304, i32 48 }
@___asan_gen_.168 = private unnamed_addr constant [16 x i8] c"soc_data_rk3188\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 330, i32 48 }
@___asan_gen_.171 = private unnamed_addr constant [16 x i8] c"soc_data_rk3288\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 362, i32 48 }
@___asan_gen_.174 = private unnamed_addr constant [16 x i8] c"soc_data_rk3368\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 393, i32 48 }
@___asan_gen_.177 = private unnamed_addr constant [20 x i8] c"soc_data_rk3399_pmu\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 431, i32 48 }
@___asan_gen_.180 = private unnamed_addr constant [20 x i8] c"soc_data_rk3568_pmu\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 448, i32 48 }
@___asan_gen_.183 = private unnamed_addr constant [16 x i8] c"soc_data_rv1108\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 464, i32 48 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 293, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 294, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 295, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 296, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 297, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 298, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 299, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant [14 x i8] c"soc_data_px30\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 289, i32 48 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 210, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 321, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 322, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 341, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 342, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 343, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 344, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 345, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 347, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 348, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [16 x i8] c"soc_data_rk3228\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 352, i32 48 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 365, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 366, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 367, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 368, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 369, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 370, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 371, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 372, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 373, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 374, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 229, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 388, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant [16 x i8] c"soc_data_rk3328\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 379, i32 48 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 248, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 267, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 416, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 417, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant [20 x i8] c"soc_data_rk3368_pmu\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 409, i32 48 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 424, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 426, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant [16 x i8] c"soc_data_rk3399\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 421, i32 48 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 443, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 286, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 459, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant [20 x i8] c"soc_data_rv1108_pmu\00", align 1
@___asan_gen_.346 = private constant [36 x i8] c"../drivers/soc/rockchip/io-domain.c\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 487, i32 48 }
@llvm.compiler.used = appending global [110 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_rockchip_iodomain_driver_exit, ptr @__initcall__kmod_io_domain__293_695_rockchip_iodomain_driver_init6, ptr @px30_iodomain_init._entry, ptr @px30_iodomain_init._entry_ptr, ptr @rk3288_iodomain_init._entry, ptr @rk3288_iodomain_init._entry_ptr, ptr @rk3328_iodomain_init._entry, ptr @rk3328_iodomain_init._entry_ptr, ptr @rk3368_iodomain_init._entry, ptr @rk3368_iodomain_init._entry_ptr, ptr @rk3399_pmu_iodomain_init._entry, ptr @rk3399_pmu_iodomain_init._entry_ptr, ptr @rockchip_iodomain_driver_exit, ptr @rockchip_iodomain_notify._entry, ptr @rockchip_iodomain_notify._entry_ptr, ptr @rockchip_iodomain_probe._entry, ptr @rockchip_iodomain_probe._entry.12, ptr @rockchip_iodomain_probe._entry.15, ptr @rockchip_iodomain_probe._entry.19, ptr @rockchip_iodomain_probe._entry.9, ptr @rockchip_iodomain_probe._entry_ptr, ptr @rockchip_iodomain_probe._entry_ptr.11, ptr @rockchip_iodomain_probe._entry_ptr.14, ptr @rockchip_iodomain_probe._entry_ptr.18, ptr @rockchip_iodomain_probe._entry_ptr.21, ptr @rockchip_iodomain_write._entry, ptr @rockchip_iodomain_write._entry_ptr, ptr @rockchip_iodomain_driver, ptr @.str, ptr @rockchip_iodomain_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @soc_data_px30_pmu, ptr @soc_data_rk3188, ptr @soc_data_rk3288, ptr @soc_data_rk3368, ptr @soc_data_rk3399_pmu, ptr @soc_data_rk3568_pmu, ptr @soc_data_rv1108, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @soc_data_px30, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @soc_data_rk3228, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @soc_data_rk3328, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @soc_data_rk3368_pmu, ptr @.str.69, ptr @.str.70, ptr @soc_data_rk3399, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @soc_data_rv1108_pmu], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_iodomain_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_iodomain_match to i32), i32 2744, i32 3424, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_iodomain_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_iodomain_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_iodomain_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_iodomain_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_iodomain_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_iodomain_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_iodomain_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_data_px30_pmu to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_data_rk3188 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_data_rk3288 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_data_rk3368 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_data_rk3399_pmu to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_data_rk3568_pmu to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_data_rv1108 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_data_px30 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @px30_iodomain_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_data_rk3228 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_iodomain_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_data_rk3328 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3328_iodomain_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3368_iodomain_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_data_rk3368_pmu to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_data_rk3399 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_pmu_iodomain_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_data_rv1108_pmu to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_iodomain_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_iodomain_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_iodomain_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_iodomain_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_iodomain_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup123_crit_edge, label %if.end

entry.cleanup123_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup123

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 400, i32 noundef 3520) #5
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup123_crit_edge, label %if.end4

if.end.cleanup123_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup123

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call7 = tail call ptr @of_match_node(ptr noundef nonnull @rockchip_iodomain_match, ptr noundef nonnull %1) #5
  %data = getelementptr inbounds %struct.of_device_id, ptr %call7, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %soc_data = getelementptr inbounds %struct.rockchip_iodomain, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %soc_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %soc_data, align 4
  %write = getelementptr inbounds %struct.rockchip_iodomain_soc_data, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write, align 4
  %tobool9.not = icmp eq ptr %8, null
  %spec.select = select i1 %tobool9.not, ptr @rockchip_iodomain_write, ptr %8
  %9 = getelementptr inbounds %struct.rockchip_iodomain, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %spec.select, ptr %9, align 4
  %parent17 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %parent17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent17, align 8
  %tobool18.not = icmp eq ptr %12, null
  br i1 %tobool18.not, label %if.end4.do.body_crit_edge, label %land.lhs.true

if.end4.do.body_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

land.lhs.true:                                    ; preds = %if.end4
  %of_node19 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %of_node19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node19, align 8
  %tobool20.not = icmp eq ptr %14, null
  br i1 %tobool20.not, label %land.lhs.true.do.body_crit_edge, label %if.then21

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call ptr @syscon_node_to_regmap(ptr noundef nonnull %14) #5
  br label %if.end34

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %if.end4.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_iodomain_probe.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_iodomain_probe, %if.then29)) #5
          to label %do.end [label %if.then29], !srcloc !191

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_iodomain_probe.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.4) #5
  br label %do.end

do.end:                                           ; preds = %if.then29, %do.body
  %call32 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef nonnull %1, ptr noundef nonnull @.str.5) #5
  br label %if.end34

if.end34:                                         ; preds = %do.end, %if.then21
  %call32.sink = phi ptr [ %call32, %do.end ], [ %call23, %if.then21 ]
  %grf33 = getelementptr inbounds %struct.rockchip_iodomain, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %grf33 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call32.sink, ptr %grf33, align 4
  %cmp.i = icmp ugt ptr %call32.sink, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end40, label %if.end34.for.body_crit_edge

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  br label %for.body

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %grf35 = getelementptr inbounds %struct.rockchip_iodomain, ptr %call.i, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #8
  %16 = ptrtoint ptr %grf35 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %grf35, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup123

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end34.for.body_crit_edge
  %i.0217 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end34.for.body_crit_edge ]
  %19 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %soc_data, align 4
  %arrayidx = getelementptr %struct.rockchip_iodomain_soc_data, ptr %20, i32 0, i32 1, i32 %i.0217
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %arrayidx46 = getelementptr %struct.rockchip_iodomain, ptr %call.i, i32 0, i32 3, i32 %i.0217
  %tobool47.not = icmp eq ptr %22, null
  br i1 %tobool47.not, label %for.body.for.inc_crit_edge, label %if.end49

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end49:                                         ; preds = %for.body
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %call51 = tail call ptr @devm_regulator_get_optional(ptr noundef %24, ptr noundef nonnull %22) #5
  %cmp.i200 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i200, label %if.then53, label %if.end66

if.then53:                                        ; preds = %if.end49
  %25 = ptrtoint ptr %call51 to i32
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %25, label %do.end62 [
    i32 -19, label %if.then53.for.inc_crit_edge
    i32 -517, label %cleanup.loopexit
  ]

if.then53.for.inc_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end62:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %call51 to i32
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.10, ptr noundef nonnull %22) #8
  br label %cleanup

if.end66:                                         ; preds = %if.end49
  %call67 = tail call i32 @regulator_get_voltage(ptr noundef %call51) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %do.end72, label %if.end74

do.end72:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.13, ptr noundef nonnull %22) #8
  br label %cleanup

if.end74:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_const_cmp4(i32 3600000, i32 %call67)
  %cmp75 = icmp ugt i32 %call67, 3600000
  br i1 %cmp75, label %do.end79, label %if.end81

do.end79:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %33, ptr noundef nonnull @.str.16, i32 noundef %call67) #8
  br label %cleanup

if.end81:                                         ; preds = %if.end74
  %idx = getelementptr %struct.rockchip_iodomain, ptr %call.i, i32 0, i32 3, i32 %i.0217, i32 3
  %34 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %i.0217, ptr %idx, align 4
  %35 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %arrayidx46, align 4
  %reg83 = getelementptr %struct.rockchip_iodomain, ptr %call.i, i32 0, i32 3, i32 %i.0217, i32 1
  %36 = ptrtoint ptr %reg83 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call51, ptr %reg83, align 4
  %nb = getelementptr %struct.rockchip_iodomain, ptr %call.i, i32 0, i32 3, i32 %i.0217, i32 2
  %37 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @rockchip_iodomain_notify, ptr %nb, align 4
  %38 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %9, align 4
  %call85 = tail call i32 %39(ptr noundef %arrayidx46, i32 noundef %call67) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end89, label %if.then87

if.then87:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %reg83 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %reg83, align 4
  br label %cleanup

if.end89:                                         ; preds = %if.end81
  %call91 = tail call i32 @regulator_register_notifier(ptr noundef %call51, ptr noundef %nb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end89.for.inc_crit_edge, label %do.end96

if.end89.for.inc_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end96:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #8
  %41 = ptrtoint ptr %reg83 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %reg83, align 4
  br label %cleanup

cleanup.loopexit:                                 ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %call51 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %do.end96, %if.then87, %do.end79, %do.end72, %do.end62
  %ret.1 = phi i32 [ %call67, %do.end72 ], [ -22, %do.end79 ], [ %call85, %if.then87 ], [ %call91, %do.end96 ], [ %27, %do.end62 ], [ %42, %cleanup.loopexit ]
  br label %for.body111

for.inc:                                          ; preds = %if.end89.for.inc_crit_edge, %if.then53.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0217, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %43 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %soc_data, align 4
  %init = getelementptr inbounds %struct.rockchip_iodomain_soc_data, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init, align 4
  %tobool104.not = icmp eq ptr %46, null
  br i1 %tobool104.not, label %for.end.cleanup123_crit_edge, label %if.then105

for.end.cleanup123_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup123

if.then105:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %46(ptr noundef nonnull %call.i) #5
  br label %cleanup123

for.body111:                                      ; preds = %if.end120.for.body111_crit_edge, %cleanup
  %i.1219 = phi i32 [ 15, %cleanup ], [ %dec, %if.end120.for.body111_crit_edge ]
  %reg114 = getelementptr %struct.rockchip_iodomain, ptr %call.i, i32 0, i32 3, i32 %i.1219, i32 1
  %47 = ptrtoint ptr %reg114 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg114, align 4
  %tobool115.not = icmp eq ptr %48, null
  br i1 %tobool115.not, label %for.body111.if.end120_crit_edge, label %if.then116

for.body111.if.end120_crit_edge:                  ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

if.then116:                                       ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #7
  %nb118 = getelementptr %struct.rockchip_iodomain, ptr %call.i, i32 0, i32 3, i32 %i.1219, i32 2
  %call119 = tail call i32 @regulator_unregister_notifier(ptr noundef nonnull %48, ptr noundef %nb118) #5
  br label %if.end120

if.end120:                                        ; preds = %if.then116, %for.body111.if.end120_crit_edge
  %dec = add nsw i32 %i.1219, -1
  %cmp110.not = icmp eq i32 %i.1219, 0
  br i1 %cmp110.not, label %if.end120.cleanup123_crit_edge, label %if.end120.for.body111_crit_edge

if.end120.for.body111_crit_edge:                  ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body111

if.end120.cleanup123_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup123

cleanup123:                                       ; preds = %if.end120.cleanup123_crit_edge, %if.then105, %for.end.cleanup123_crit_edge, %do.end40, %if.end.cleanup123_crit_edge, %entry.cleanup123_crit_edge
  %retval.0 = phi i32 [ %18, %do.end40 ], [ -19, %entry.cleanup123_crit_edge ], [ -12, %if.end.cleanup123_crit_edge ], [ 0, %if.then105 ], [ 0, %for.end.cleanup123_crit_edge ], [ %ret.1, %if.end120.cleanup123_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_iodomain_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 15, %entry ], [ %dec, %if.end.for.body_crit_edge ]
  %reg = getelementptr %struct.rockchip_iodomain, ptr %1, i32 0, i32 3, i32 %i.07, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %nb = getelementptr %struct.rockchip_iodomain, ptr %1, i32 0, i32 3, i32 %i.07, i32 2
  %call2 = tail call i32 @regulator_unregister_notifier(ptr noundef nonnull %3, ptr noundef %nb) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %dec = add nsw i32 %i.07, -1
  %cmp.not = icmp eq i32 %i.07, 0
  br i1 %cmp.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_iodomain_write(ptr nocapture noundef readonly %supply, i32 noundef %uV) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %supply, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1980001, i32 %uV)
  %cmp = icmp slt i32 %uV, 1980001
  %idx = getelementptr inbounds %struct.rockchip_iodomain_supply, ptr %supply, i32 0, i32 3
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  %shl12 = select i1 %cmp, i32 65537, i32 65536
  %or = shl i32 %shl12, %3
  %grf = getelementptr inbounds %struct.rockchip_iodomain, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grf, align 4
  %soc_data = getelementptr inbounds %struct.rockchip_iodomain, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc_data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %9, i32 noundef %or) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.22) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_iodomain_notify(ptr noundef %nb, i32 noundef %event, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -8
  %and = and i32 %event, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %max_uV = getelementptr inbounds %struct.pre_voltage_change_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %max_uV to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_uV, align 4
  %4 = tail call i32 @llvm.umax.i32(i32 %1, i32 %3)
  br label %do.body

if.else:                                          ; preds = %entry
  %and2 = and i32 %event, 576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else.cleanup_crit_edge, label %if.then4

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %data to i32
  br label %do.body

do.body:                                          ; preds = %if.then4, %if.then
  %uV.0 = phi i32 [ %4, %if.then ], [ %5, %if.then4 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_iodomain_notify.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_iodomain_notify, %if.then11)) #5
          to label %do.end [label %if.then11], !srcloc !191

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_iodomain_notify.__UNIQUE_ID_ddebug290, ptr noundef %9, ptr noundef nonnull @.str.25, i32 noundef %uV.0) #5
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 3600000, i32 %uV.0)
  %cmp13 = icmp sgt i32 %uV.0, 3600000
  br i1 %cmp13, label %do.end17, label %do.end.if.end23_crit_edge

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

do.end17:                                         ; preds = %do.end
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.26, i32 noundef %uV.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %event)
  %cmp20 = icmp eq i32 %event, 256
  br i1 %cmp20, label %do.end17.cleanup_crit_edge, label %do.end17.if.end23_crit_edge

do.end17.if.end23_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %do.end17.if.end23_crit_edge, %do.end.if.end23_crit_edge
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  %write = getelementptr inbounds %struct.rockchip_iodomain, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write, align 4
  %call25 = tail call i32 %17(ptr noundef %add.ptr, i32 noundef %uV.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp ne i32 %call25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %event)
  %cmp27 = icmp eq i32 %event, 256
  %or.cond = and i1 %cmp27, %tobool26.not
  br i1 %or.cond, label %if.end23.cleanup_crit_edge, label %do.body30

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_iodomain_notify.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_iodomain_notify, %if.then42)) #5
          to label %cleanup [label %if.then42], !srcloc !191

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_iodomain_notify.__UNIQUE_ID_ddebug291, ptr noundef %21, ptr noundef nonnull @.str.27, i32 noundef %uV.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %do.body30, %if.end23.cleanup_crit_edge, %do.end17.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.else.cleanup_crit_edge ], [ 32770, %do.end17.cleanup_crit_edge ], [ 32770, %if.end23.cleanup_crit_edge ], [ 1, %if.then42 ], [ 1, %do.body30 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_unregister_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @px30_iodomain_init(ptr nocapture noundef readonly %iod) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr %struct.rockchip_iodomain, ptr %iod, i32 0, i32 3, i32 1, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %grf = getelementptr inbounds %struct.rockchip_iodomain, ptr %iod, i32 0, i32 1
  %2 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf, align 4
  %call = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 384, i32 noundef 65537) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %iod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iod, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.36) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3288_iodomain_init(ptr nocapture noundef readonly %iod) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr %struct.rockchip_iodomain, ptr %iod, i32 0, i32 3, i32 2, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %grf = getelementptr inbounds %struct.rockchip_iodomain, ptr %iod, i32 0, i32 1
  %2 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf, align 4
  %call = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 588, i32 noundef 8388736) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %iod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iod, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.59) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3328_iodomain_init(ptr nocapture noundef readonly %iod) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr %struct.rockchip_iodomain, ptr %iod, i32 0, i32 3, i32 1, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %grf = getelementptr inbounds %struct.rockchip_iodomain, ptr %iod, i32 0, i32 1
  %2 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf, align 4
  %call = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 1040, i32 noundef 8388736) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %iod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iod, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.63) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3368_iodomain_init(ptr nocapture noundef readonly %iod) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr %struct.rockchip_iodomain, ptr %iod, i32 0, i32 3, i32 2, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %grf = getelementptr inbounds %struct.rockchip_iodomain, ptr %iod, i32 0, i32 1
  %2 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf, align 4
  %call = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 1084, i32 noundef 1073758208) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %iod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iod, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.59) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3399_pmu_iodomain_init(ptr nocapture noundef readonly %iod) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr %struct.rockchip_iodomain, ptr %iod, i32 0, i32 3, i32 9, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %grf = getelementptr inbounds %struct.rockchip_iodomain, ptr %iod, i32 0, i32 1
  %2 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf, align 4
  %call = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 384, i32 noundef 16777472) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %iod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iod, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.73) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3568_iodomain_write(ptr nocapture noundef readonly %supply, i32 noundef %uV) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %supply, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1980000, i32 %uV)
  %cmp = icmp sgt i32 %uV, 1980000
  %idx = getelementptr inbounds %struct.rockchip_iodomain_supply, ptr %supply, i32 0, i32 3
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb
    i32 3, label %entry.sw.epilog_crit_edge65
    i32 2, label %entry.sw.bb17_crit_edge
    i32 4, label %entry.sw.bb17_crit_edge66
    i32 5, label %entry.sw.bb17_crit_edge67
    i32 6, label %entry.sw.bb17_crit_edge68
    i32 7, label %entry.sw.bb17_crit_edge69
    i32 8, label %entry.sw.bb17_crit_edge70
  ]

entry.sw.bb17_crit_edge70:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17

entry.sw.bb17_crit_edge69:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17

entry.sw.bb17_crit_edge68:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17

entry.sw.bb17_crit_edge67:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17

entry.sw.bb17_crit_edge66:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17

entry.sw.bb17_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17

entry.sw.epilog_crit_edge65:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %spec.select = select i1 %cmp, i32 131072, i32 131074
  %or14 = select i1 %cmp, i32 2097184, i32 2097152
  %grf = getelementptr inbounds %struct.rockchip_iodomain, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %grf, align 4
  %call = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 328, i32 noundef %spec.select) #5
  %7 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %grf, align 4
  %call16 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 328, i32 noundef %or14) #5
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry.sw.bb17_crit_edge, %entry.sw.bb17_crit_edge66, %entry.sw.bb17_crit_edge67, %entry.sw.bb17_crit_edge68, %entry.sw.bb17_crit_edge69, %entry.sw.bb17_crit_edge70
  %sub = add nsw i32 %3, -1
  %shl20 = shl nuw nsw i32 32768, %3
  %shl24 = shl nuw nsw i32 1, %sub
  %spec.select64 = select i1 %cmp, i32 0, i32 %shl24
  %or27 = or i32 %spec.select64, %shl20
  %cond35 = select i1 %cmp, i32 %shl24, i32 0
  %or36 = or i32 %cond35, %shl20
  %grf37 = getelementptr inbounds %struct.rockchip_iodomain, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %grf37 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %grf37, align 4
  %call38 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 320, i32 noundef %or27) #5
  %11 = ptrtoint ptr %grf37 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %grf37, align 4
  %call40 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 324, i32 noundef %or36) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge65
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85, !86, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !136, !137, !138, !140, !142, !144, !145, !146, !147, !149, !151, !152, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !172, !173, !174, !176, !178, !180}
!llvm.module.flags = !{!182, !183, !184, !185, !186, !187, !188, !189}
!llvm.ident = !{!190}

!0 = !{ptr @__initcall__kmod_io_domain__293_695_rockchip_iodomain_driver_init6, !1, !"__initcall__kmod_io_domain__293_695_rockchip_iodomain_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/rockchip/io-domain.c", i32 695, i32 1}
!2 = !{ptr @__exitcall_rockchip_iodomain_driver_exit, !1, !"__exitcall_rockchip_iodomain_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description294, !4, !"__UNIQUE_ID_description294", i1 false, i1 false}
!4 = !{!"../drivers/soc/rockchip/io-domain.c", i32 697, i32 1}
!5 = !{ptr @__UNIQUE_ID_author295, !6, !"__UNIQUE_ID_author295", i1 false, i1 false}
!6 = !{!"../drivers/soc/rockchip/io-domain.c", i32 698, i32 1}
!7 = !{ptr @__UNIQUE_ID_author296, !8, !"__UNIQUE_ID_author296", i1 false, i1 false}
!8 = !{!"../drivers/soc/rockchip/io-domain.c", i32 699, i32 1}
!9 = !{ptr @__UNIQUE_ID_file297, !10, !"__UNIQUE_ID_file297", i1 false, i1 false}
!10 = !{!"../drivers/soc/rockchip/io-domain.c", i32 700, i32 1}
!11 = !{ptr @__UNIQUE_ID_license298, !10, !"__UNIQUE_ID_license298", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/soc/rockchip/io-domain.c", i32 690, i32 12}
!14 = !{ptr @rockchip_iodomain_driver, !15, !"rockchip_iodomain_driver", i1 false, i1 false}
!15 = !{!"../drivers/soc/rockchip/io-domain.c", i32 686, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/rockchip/io-domain.c", i32 581, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rockchip_iodomain_probe.__UNIQUE_ID_ddebug292, !17, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/rockchip/io-domain.c", i32 582, i32 50}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/soc/rockchip/io-domain.c", i32 586, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rockchip_iodomain_probe._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @rockchip_iodomain_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/soc/rockchip/io-domain.c", i32 607, i32 5}
!32 = !{ptr @rockchip_iodomain_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rockchip_iodomain_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/soc/rockchip/io-domain.c", i32 617, i32 4}
!36 = !{ptr @rockchip_iodomain_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @rockchip_iodomain_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/soc/rockchip/io-domain.c", i32 624, i32 4}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @rockchip_iodomain_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @rockchip_iodomain_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/soc/rockchip/io-domain.c", i32 646, i32 4}
!45 = !{ptr @rockchip_iodomain_probe._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @rockchip_iodomain_probe._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/soc/rockchip/io-domain.c", i32 139, i32 3}
!49 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @rockchip_iodomain_write._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @rockchip_iodomain_write._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/soc/rockchip/io-domain.c", i32 177, i32 2}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @rockchip_iodomain_notify.__UNIQUE_ID_ddebug290, !53, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/soc/rockchip/io-domain.c", i32 180, i32 3}
!58 = !{ptr @rockchip_iodomain_notify._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @rockchip_iodomain_notify._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/soc/rockchip/io-domain.c", i32 190, i32 2}
!62 = !{ptr @rockchip_iodomain_notify.__UNIQUE_ID_ddebug291, !61, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!63 = !{ptr @rockchip_iodomain_match, !64, !"rockchip_iodomain_match", i1 false, i1 false}
!64 = !{!"../drivers/soc/rockchip/io-domain.c", i32 494, i32 34}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/soc/rockchip/io-domain.c", i32 293, i32 3}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/soc/rockchip/io-domain.c", i32 294, i32 3}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/soc/rockchip/io-domain.c", i32 295, i32 3}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/soc/rockchip/io-domain.c", i32 296, i32 3}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/soc/rockchip/io-domain.c", i32 297, i32 3}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/soc/rockchip/io-domain.c", i32 298, i32 3}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/soc/rockchip/io-domain.c", i32 299, i32 3}
!79 = !{ptr @soc_data_px30, !80, !"soc_data_px30", i1 false, i1 false}
!80 = !{!"../drivers/soc/rockchip/io-domain.c", i32 289, i32 48}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/soc/rockchip/io-domain.c", i32 210, i32 3}
!83 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @px30_iodomain_init._entry, !82, !"_entry", i1 false, i1 false}
!86 = !{ptr @px30_iodomain_init._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/soc/rockchip/io-domain.c", i32 321, i32 3}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/soc/rockchip/io-domain.c", i32 322, i32 3}
!91 = !{ptr @soc_data_px30_pmu, !92, !"soc_data_px30_pmu", i1 false, i1 false}
!92 = !{!"../drivers/soc/rockchip/io-domain.c", i32 304, i32 48}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/soc/rockchip/io-domain.c", i32 341, i32 3}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/soc/rockchip/io-domain.c", i32 342, i32 3}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/soc/rockchip/io-domain.c", i32 343, i32 3}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/soc/rockchip/io-domain.c", i32 344, i32 3}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/soc/rockchip/io-domain.c", i32 345, i32 3}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/soc/rockchip/io-domain.c", i32 347, i32 3}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/soc/rockchip/io-domain.c", i32 348, i32 3}
!107 = !{ptr @soc_data_rk3188, !108, !"soc_data_rk3188", i1 false, i1 false}
!108 = !{!"../drivers/soc/rockchip/io-domain.c", i32 330, i32 48}
!109 = !{ptr @soc_data_rk3228, !110, !"soc_data_rk3228", i1 false, i1 false}
!110 = !{!"../drivers/soc/rockchip/io-domain.c", i32 352, i32 48}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/soc/rockchip/io-domain.c", i32 365, i32 3}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/soc/rockchip/io-domain.c", i32 366, i32 3}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/soc/rockchip/io-domain.c", i32 367, i32 3}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/soc/rockchip/io-domain.c", i32 368, i32 3}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/soc/rockchip/io-domain.c", i32 369, i32 3}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/soc/rockchip/io-domain.c", i32 370, i32 3}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/soc/rockchip/io-domain.c", i32 371, i32 3}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/soc/rockchip/io-domain.c", i32 372, i32 3}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/soc/rockchip/io-domain.c", i32 373, i32 3}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/soc/rockchip/io-domain.c", i32 374, i32 3}
!131 = !{ptr @soc_data_rk3288, !132, !"soc_data_rk3288", i1 false, i1 false}
!132 = !{!"../drivers/soc/rockchip/io-domain.c", i32 362, i32 48}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/soc/rockchip/io-domain.c", i32 229, i32 3}
!135 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @rk3288_iodomain_init._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @rk3288_iodomain_init._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/soc/rockchip/io-domain.c", i32 388, i32 3}
!140 = !{ptr @soc_data_rk3328, !141, !"soc_data_rk3328", i1 false, i1 false}
!141 = !{!"../drivers/soc/rockchip/io-domain.c", i32 379, i32 48}
!142 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/soc/rockchip/io-domain.c", i32 248, i32 3}
!144 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @rk3328_iodomain_init._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @rk3328_iodomain_init._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @soc_data_rk3368, !148, !"soc_data_rk3368", i1 false, i1 false}
!148 = !{!"../drivers/soc/rockchip/io-domain.c", i32 393, i32 48}
!149 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/soc/rockchip/io-domain.c", i32 267, i32 3}
!151 = !{ptr @rk3368_iodomain_init._entry, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @rk3368_iodomain_init._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.66, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/soc/rockchip/io-domain.c", i32 416, i32 3}
!155 = !{ptr @.str.67, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/soc/rockchip/io-domain.c", i32 417, i32 3}
!157 = !{ptr @soc_data_rk3368_pmu, !158, !"soc_data_rk3368_pmu", i1 false, i1 false}
!158 = !{!"../drivers/soc/rockchip/io-domain.c", i32 409, i32 48}
!159 = !{ptr @.str.69, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/soc/rockchip/io-domain.c", i32 424, i32 3}
!161 = !{ptr @.str.70, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/soc/rockchip/io-domain.c", i32 426, i32 3}
!163 = !{ptr @soc_data_rk3399, !164, !"soc_data_rk3399", i1 false, i1 false}
!164 = !{!"../drivers/soc/rockchip/io-domain.c", i32 421, i32 48}
!165 = !{ptr @.str.72, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/soc/rockchip/io-domain.c", i32 443, i32 3}
!167 = !{ptr @soc_data_rk3399_pmu, !168, !"soc_data_rk3399_pmu", i1 false, i1 false}
!168 = !{!"../drivers/soc/rockchip/io-domain.c", i32 431, i32 48}
!169 = !{ptr @.str.73, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/soc/rockchip/io-domain.c", i32 286, i32 3}
!171 = !{ptr @.str.74, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @rk3399_pmu_iodomain_init._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @rk3399_pmu_iodomain_init._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.75, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/soc/rockchip/io-domain.c", i32 459, i32 3}
!176 = !{ptr @soc_data_rk3568_pmu, !177, !"soc_data_rk3568_pmu", i1 false, i1 false}
!177 = !{!"../drivers/soc/rockchip/io-domain.c", i32 448, i32 48}
!178 = !{ptr @soc_data_rv1108, !179, !"soc_data_rv1108", i1 false, i1 false}
!179 = !{!"../drivers/soc/rockchip/io-domain.c", i32 464, i32 48}
!180 = !{ptr @soc_data_rv1108_pmu, !181, !"soc_data_rv1108_pmu", i1 false, i1 false}
!181 = !{!"../drivers/soc/rockchip/io-domain.c", i32 487, i32 48}
!182 = !{i32 1, !"wchar_size", i32 2}
!183 = !{i32 1, !"min_enum_size", i32 4}
!184 = !{i32 8, !"branch-target-enforcement", i32 0}
!185 = !{i32 8, !"sign-return-address", i32 0}
!186 = !{i32 8, !"sign-return-address-all", i32 0}
!187 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!188 = !{i32 7, !"uwtable", i32 1}
!189 = !{i32 7, !"frame-pointer", i32 2}
!190 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!191 = !{i64 2148705738, i64 2148705743, i64 2148705756, i64 2148705800, i64 2148705834, i64 2148705855}
