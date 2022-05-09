; ModuleID = '/llk/IR_all_yes/drivers/thermal/tegra/soctherm.c_pt.bc'
source_filename = "../drivers/thermal/tegra/soctherm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.soctherm_oc_irq_chip_data = type { %struct.mutex, %struct.irq_chip, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_soctherm_soc = type { ptr, i32, ptr, i32, ptr, i32, i32, i8, ptr }
%struct.tsensor_shared_calib = type { i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_soctherm = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, [7 x %struct.soctherm_throt_cfg], ptr, %struct.mutex }
%struct.soctherm_throt_cfg = type { ptr, i32, i8, i8, i32, i32, %struct.soctherm_oc_cfg, ptr, i8 }
%struct.soctherm_oc_cfg = type { i32, i32, i32, i32, i32, i8 }
%struct.tegra_tsensor = type { ptr, i32, ptr, i32, i32, i32, ptr }
%struct.tegra_tsensor_group = type { ptr, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32 }
%struct.tegra_thermctl_zone = type { ptr, ptr, ptr, ptr, ptr }
%struct.tsensor_group_thermtrips = type { i8, i32 }
%struct.tegra_tsensor_configuration = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_tegra_soctherm__244_2322_tegra_soctherm_driver_init6 = internal global ptr @tegra_soctherm_driver_init, section ".initcall6.init", align 4
@tegra_soctherm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_soctherm_probe, ptr @tegra_soctherm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_soctherm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_soctherm_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_soctherm_driver_exit = internal global ptr @tegra_soctherm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author245 = internal constant [62 x i8] c"tegra_soctherm.author=Mikko Perttunen <mperttunen@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description246 = internal constant [75 x i8] c"tegra_soctherm.description=NVIDIA Tegra SOCTHERM thermal management driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file247 = internal constant [57 x i8] c"tegra_soctherm.file=drivers/thermal/tegra/tegra-soctherm\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [30 x i8] c"tegra_soctherm.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tegra_soctherm\00", [17 x i8] zeroinitializer }, align 32
@tegra_soctherm_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-soctherm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_soctherm }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tegra_soctherm_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @soctherm_suspend, ptr @soctherm_resume, ptr @soctherm_suspend, ptr @soctherm_resume, ptr @soctherm_suspend, ptr @soctherm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_soctherm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&tegra->thermctl_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"soctherm-reg\00", [19 x i8] zeroinitializer }, align 32
@tegra_soctherm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 2144, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can't get soctherm registers\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tegra_soctherm_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/thermal/tegra/soctherm.c\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_soctherm_probe._entry_ptr = internal global ptr @tegra_soctherm_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"car-reg\00", [24 x i8] zeroinitializer }, align 32
@tegra_soctherm_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 2151, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't get car clk registers\00", [36 x i8] zeroinitializer }, align 32
@tegra_soctherm_probe._entry_ptr.11 = internal global ptr @tegra_soctherm_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ccroc-reg\00", [22 x i8] zeroinitializer }, align 32
@tegra_soctherm_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 2157, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't get ccroc registers\00", [38 x i8] zeroinitializer }, align 32
@tegra_soctherm_probe._entry_ptr.15 = internal global ptr @tegra_soctherm_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"soctherm\00", [23 x i8] zeroinitializer }, align 32
@tegra_soctherm_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 2164, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't get soctherm reset\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_soctherm_probe._entry_ptr.19 = internal global ptr @tegra_soctherm_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tsensor\00", [24 x i8] zeroinitializer }, align 32
@tegra_soctherm_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 2170, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't get tsensor clock\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_soctherm_probe._entry_ptr.23 = internal global ptr @tegra_soctherm_probe._entry.21, section ".printk_index", align 4
@tegra_soctherm_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 2176, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't get soctherm clock\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_soctherm_probe._entry_ptr.26 = internal global ptr @tegra_soctherm_probe._entry.24, section ".printk_index", align 4
@tegra_of_thermal_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @tegra_thermctl_get_temp, ptr @tegra_thermctl_get_trend, ptr @tegra_thermctl_set_trips, ptr null, ptr @tegra_thermctl_set_trip_temp }, [44 x i8] zeroinitializer }, align 32
@tegra_soctherm_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 2235, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register sensor: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_soctherm_probe._entry_ptr.29 = internal global ptr @tegra_soctherm_probe._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvidia,thermtrips\00", [46 x i8] zeroinitializer }, align 32
@soctherm_thermtrips_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.5, i32 1587, ptr @.str.33, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"missing thermtrips, will use critical trips as shut down temp\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"soctherm_thermtrips_parse\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@soctherm_thermtrips_parse._entry_ptr = internal global ptr @soctherm_thermtrips_parse._entry, section ".printk_index", align 4
@soctherm_thermtrips_parse._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.32, ptr @.str.5, i32 1599, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid num ele: thermtrips:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@soctherm_thermtrips_parse._entry_ptr.36 = internal global ptr @soctherm_thermtrips_parse._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"throttle-cfgs\00", [18 x i8] zeroinitializer }, align 32
@soctherm_init_hw_throt_cdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.5, i32 1708, ptr @.str.33, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"throttle-cfg: no throttle-cfgs - not enabling\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"soctherm_init_hw_throt_cdev\00", [36 x i8] zeroinitializer }, align 32
@soctherm_init_hw_throt_cdev._entry_ptr = internal global ptr @soctherm_init_hw_throt_cdev._entry, section ".printk_index", align 4
@soctherm_init_hw_throt_cdev._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.5, i32 1721, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"throttle-cfg: could not find %s\0A\00", [63 x i8] zeroinitializer }, align 32
@soctherm_init_hw_throt_cdev._entry_ptr.42 = internal global ptr @soctherm_init_hw_throt_cdev._entry.40, section ".printk_index", align 4
@soctherm_init_hw_throt_cdev._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.5, i32 1726, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"throttle-cfg: %s: redefined!\0A\00", [34 x i8] zeroinitializer }, align 32
@soctherm_init_hw_throt_cdev._entry_ptr.45 = internal global ptr @soctherm_init_hw_throt_cdev._entry.43, section ".printk_index", align 4
@throt_cooling_ops = internal constant { %struct.thermal_cooling_device_ops, [40 x i8] } { %struct.thermal_cooling_device_ops { ptr @throt_get_cdev_max_state, ptr @throt_get_cdev_cur_state, ptr @throt_set_cdev_state, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@soctherm_init_hw_throt_cdev._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.5, i32 1746, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"throttle-cfg: %s: failed to register cooling device\0A\00", [43 x i8] zeroinitializer }, align 32
@soctherm_init_hw_throt_cdev._entry_ptr.48 = internal global ptr @soctherm_init_hw_throt_cdev._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"light\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"heavy\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"oc1\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"oc2\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"oc3\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"oc4\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"oc5\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvidia,priority\00", [16 x i8] zeroinitializer }, align 32
@soctherm_throt_cfg_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.5, i32 1652, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"throttle-cfg: %s: invalid priority\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"soctherm_throt_cfg_parse\00", [39 x i8] zeroinitializer }, align 32
@soctherm_throt_cfg_parse._entry_ptr = internal global ptr @soctherm_throt_cfg_parse._entry, section ".printk_index", align 4
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvidia,cpu-throt-level\00", [41 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvidia,cpu-throt-percent\00", [39 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvidia,gpu-throt-level\00", [41 x i8] zeroinitializer }, align 32
@soctherm_throt_cfg_parse._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.5, i32 1682, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"throttle-cfg: %s: no throt prop or invalid prop\0A\00", [47 x i8] zeroinitializer }, align 32
@soctherm_throt_cfg_parse._entry_ptr.64 = internal global ptr @soctherm_throt_cfg_parse._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvidia,polarity-active-low\00", [37 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvidia,count-threshold\00", [41 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvidia,throttle-period-us\00", [38 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvidia,alarm-filter\00", [44 x i8] zeroinitializer }, align 32
@tegra_thermctl_set_trips.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.5, ptr @.str.70, i8 0, i8 -80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_thermctl_set_trips\00", [39 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s hi:%d, lo:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@enforce_temp_range.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.5, ptr @.str.72, i8 0, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enforce_temp_range\00", [45 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"soctherm: trip temperature %d forced to %d\0A\00", [52 x i8] zeroinitializer }, align 32
@throttrip_program._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.5, i32 541, ptr @.str.75, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid throt id %d - assuming HEAVY\00", [59 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"throttrip_program\00", [46 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@throttrip_program._entry_ptr = internal global ptr @throttrip_program._entry, section ".printk_index", align 4
@tegra_soctherm_set_hwtrips._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.5, i32 788, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"thermtrip: %s: error during enable\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_soctherm_set_hwtrips\00", [37 x i8] zeroinitializer }, align 32
@tegra_soctherm_set_hwtrips._entry_ptr = internal global ptr @tegra_soctherm_set_hwtrips._entry, section ".printk_index", align 4
@tegra_soctherm_set_hwtrips._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.5, i32 793, ptr @.str.33, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"thermtrip: will shut down when %s reaches %d mC\0A\00", [47 x i8] zeroinitializer }, align 32
@tegra_soctherm_set_hwtrips._entry_ptr.80 = internal global ptr @tegra_soctherm_set_hwtrips._entry.78, section ".printk_index", align 4
@tegra_soctherm_set_hwtrips._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.77, ptr @.str.5, i32 798, ptr @.str.33, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"throttrip: %s: missing hot temperature\0A\00", [56 x i8] zeroinitializer }, align 32
@tegra_soctherm_set_hwtrips._entry_ptr.83 = internal global ptr @tegra_soctherm_set_hwtrips._entry.81, section ".printk_index", align 4
@tegra_soctherm_set_hwtrips._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.77, ptr @.str.5, i32 817, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"throttrip: %s: error during enable\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_soctherm_set_hwtrips._entry_ptr.86 = internal global ptr @tegra_soctherm_set_hwtrips._entry.84, section ".printk_index", align 4
@tegra_soctherm_set_hwtrips._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.77, ptr @.str.5, i32 823, ptr @.str.33, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"throttrip: will throttle when %s reaches %d mC\0A\00", [48 x i8] zeroinitializer }, align 32
@tegra_soctherm_set_hwtrips._entry_ptr.89 = internal global ptr @tegra_soctherm_set_hwtrips._entry.87, section ".printk_index", align 4
@tegra_soctherm_set_hwtrips._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.77, ptr @.str.5, i32 829, ptr @.str.33, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"throttrip: %s: missing throttle cdev\0A\00", [58 x i8] zeroinitializer }, align 32
@tegra_soctherm_set_hwtrips._entry_ptr.92 = internal global ptr @tegra_soctherm_set_hwtrips._entry.90, section ".printk_index", align 4
@soctherm_interrupts_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.5, i32 2018, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"soctherm_oc_int_init failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"soctherm_interrupts_init\00", [39 x i8] zeroinitializer }, align 32
@soctherm_interrupts_init._entry_ptr = internal global ptr @soctherm_interrupts_init._entry, section ".printk_index", align 4
@soctherm_interrupts_init.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.5, ptr @.str.95, i8 1, i8 -6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"get 'thermal_irq' failed.\0A\00", [37 x i8] zeroinitializer }, align 32
@soctherm_interrupts_init.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.5, ptr @.str.96, i8 1, i8 -5, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"get 'edp_irq' failed.\0A\00", [41 x i8] zeroinitializer }, align 32
@soctherm_interrupts_init._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.94, ptr @.str.5, i32 2042, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"request_irq 'thermal_irq' failed.\0A\00", [61 x i8] zeroinitializer }, align 32
@soctherm_interrupts_init._entry_ptr.99 = internal global ptr @soctherm_interrupts_init._entry.97, section ".printk_index", align 4
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"soctherm_edp\00", [19 x i8] zeroinitializer }, align 32
@soctherm_interrupts_init._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.94, ptr @.str.5, i32 2054, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"request_irq 'edp_irq' failed.\0A\00", [33 x i8] zeroinitializer }, align 32
@soctherm_interrupts_init._entry_ptr.103 = internal global ptr @soctherm_interrupts_init._entry.101, section ".printk_index", align 4
@soctherm_oc_int_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.5, i32 1262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s(): OC interrupts are not enabled\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"soctherm_oc_int_init\00", [43 x i8] zeroinitializer }, align 32
@soctherm_oc_int_init._entry_ptr = internal global ptr @soctherm_oc_int_init._entry, section ".printk_index", align 4
@soctherm_oc_int_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@soc_irq_cdata = internal global { %struct.soctherm_oc_irq_chip_data, [52 x i8] } zeroinitializer, align 32
@.str.106 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&soc_irq_cdata.irq_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"soc_therm_oc\00", [19 x i8] zeroinitializer }, align 32
@soctherm_oc_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @soctherm_oc_irq_map, ptr null, ptr @soctherm_irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@soctherm_oc_int_init._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.105, ptr @.str.5, i32 1283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Failed to create IRQ domain\0A\00", [61 x i8] zeroinitializer }, align 32
@soctherm_oc_int_init._entry_ptr.110 = internal global ptr @soctherm_oc_int_init._entry.108, section ".printk_index", align 4
@soctherm_oc_int_init.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.5, ptr @.str.111, i8 1, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(): OC interrupts enabled successful\0A\00", [56 x i8] zeroinitializer }, align 32
@soctherm_thermal_isr_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.5, i32 928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013soctherm: Ignored unexpected INTRs 0x%08x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"soctherm_thermal_isr_thread\00", [36 x i8] zeroinitializer }, align 32
@soctherm_thermal_isr_thread._entry_ptr = internal global ptr @soctherm_thermal_isr_thread._entry, section ".printk_index", align 4
@soctherm_edp_isr_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.5, i32 1047, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013soctherm: OC ALARM 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"soctherm_edp_isr_thread\00", [40 x i8] zeroinitializer }, align 32
@soctherm_edp_isr_thread._entry_ptr = internal global ptr @soctherm_edp_isr_thread._entry, section ".printk_index", align 4
@soctherm_edp_isr_thread._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.5, i32 1082, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013soctherm: Ignored unexpected OC ALARM 0x%08x\0A\00", [48 x i8] zeroinitializer }, align 32
@soctherm_edp_isr_thread._entry_ptr.118 = internal global ptr @soctherm_edp_isr_thread._entry.116, section ".printk_index", align 4
@soctherm_handle_alarm.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.5, ptr @.str.120, i8 0, i8 -9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"soctherm_handle_alarm\00", [42 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"soctherm: Successfully handled OC1 alarm\0A\00", [54 x i8] zeroinitializer }, align 32
@soctherm_handle_alarm.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.5, ptr @.str.121, i8 0, i8 -8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"soctherm: Successfully handled OC2 alarm\0A\00", [54 x i8] zeroinitializer }, align 32
@soctherm_handle_alarm.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.5, ptr @.str.122, i8 0, i8 -6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"soctherm: Successfully handled OC3 alarm\0A\00", [54 x i8] zeroinitializer }, align 32
@soctherm_handle_alarm.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.5, ptr @.str.123, i8 0, i8 -5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"soctherm: Successfully handled OC4 alarm\0A\00", [54 x i8] zeroinitializer }, align 32
@soctherm_handle_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.119, ptr @.str.5, i32 1015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013soctherm: ERROR in handling %s alarm\0A\00", [56 x i8] zeroinitializer }, align 32
@soctherm_handle_alarm._entry_ptr = internal global ptr @soctherm_handle_alarm._entry, section ".printk_index", align 4
@.str.125 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_contents\00", [19 x i8] zeroinitializer }, align 32
@regs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @regs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"-----TSENSE (convert HW)-----\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s: \00", [27 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"En(%d) \00", [24 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tiddq(%d) \00", [21 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ten_count(%d) \00", [17 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tsample(%d) \00", [19 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Temp(%d/\00", [23 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%d) \00", [27 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Capture(%d/\00", [20 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Stop(%d) \00", [22 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Tall(%d) \00", [22 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Over(%d/\00", [23 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d/\00", [28 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Therm_A/B(%d/\00", [18 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%d)\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PDIV: 0x%x\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HOTSPOT: 0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"-----SOC_THERM-----\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Temperatures: CPU(%d) \00", [41 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" GPU(%d) \00", [22 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" PLLX(%d) \00", [21 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" MEM(%d)\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"   %d: Up/Dn(%d /\00", [46 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%d ) \00", [26 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CPU Throt\00", [22 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"(%s) \00", [26 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"L\00", [30 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"H\00", [30 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"H+L\00", [28 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"GPU Throt\00", [22 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Status(%s)\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LO\00", [29 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"In\00", [29 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Res\00", [28 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HI\00", [29 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"STATS: Up(%s) Dn(%s)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"En\00", [29 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"--\00", [29 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  Level_%d Up(%d) \00", [45 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Dn(%d)\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Thermtrip Any En(%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"     %s En(%d) \00", [16 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Thresh(%d)\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"GLOBAL THROTTLE CONFIG: 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"---------------------------------------------------\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"THROT STATUS: breach(%d) \00", [38 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"state(%d) \00", [21 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"enabled(%d)\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CPU PSKIP STATUS: enabled(%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CPU PSKIP STATUS: M(%d) \00", [39 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"N(%d) \00", [25 x i8] zeroinitializer }, align 32
@tegra124_soctherm = external dso_local constant %struct.tegra_soctherm_soc, align 4
@soctherm_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.5, i32 2290, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Resume failed: enable clocks failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"soctherm_resume\00", [16 x i8] zeroinitializer }, align 32
@soctherm_resume._entry_ptr = internal global ptr @soctherm_resume._entry, section ".printk_index", align 4
@soctherm_resume._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.181, ptr @.str.5, i32 2303, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Resume failed: set hwtrips failed\0A\00", [61 x i8] zeroinitializer }, align 32
@soctherm_resume._entry_ptr.184 = internal global ptr @soctherm_resume._entry.182, section ".printk_index", align 4
@switch.table.soctherm_init = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 3, i32 7], [20 x i8] zeroinitializer }, align 32
@switch.table.regs_show = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.154, ptr @.str.155, ptr @.str.156], [20 x i8] zeroinitializer }, align 32
@switch.table.regs_show.185 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.154, ptr @.str.155, ptr @.str.156], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.186 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.187 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.188 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.189 = private unnamed_addr constant [22 x i8] c"tegra_soctherm_driver\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2313, i32 31 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2317, i32 11 }
@___asan_gen_.195 = private unnamed_addr constant [24 x i8] c"tegra_soctherm_of_match\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2092, i32 34 }
@___asan_gen_.198 = private unnamed_addr constant [18 x i8] c"tegra_soctherm_pm\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2311, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2137, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2142, i32 60 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2144, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2149, i32 65 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2151, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2155, i32 67 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2157, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2162, i32 52 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2164, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2168, i32 50 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2170, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2176, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant [21 x i8] c"tegra_of_thermal_ops\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 716, i32 48 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2234, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1584, i32 48 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1586, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1599, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1705, i32 46 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1707, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1720, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1726, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant [18 x i8] c"throt_cooling_ops\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1566, i32 48 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1744, i32 5 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 290, i32 21 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 291, i32 21 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 292, i32 21 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 293, i32 21 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 294, i32 21 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 295, i32 21 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 296, i32 21 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1650, i32 33 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1652, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1658, i32 8 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1659, i32 8 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1672, i32 33 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1681, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1622, i32 35 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1627, i32 35 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1632, i32 35 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1635, i32 35 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 704, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 453, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 539, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 788, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 792, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 797, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 816, i32 4 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 821, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 828, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2018, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2024, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2030, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2042, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2051, i32 6 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2054, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1262, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.498 = private unnamed_addr constant [14 x i8] c"soc_irq_cdata\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 358, i32 41 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1266, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1269, i32 32 }
@___asan_gen_.507 = private unnamed_addr constant [23 x i8] c"soctherm_oc_domain_ops\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1242, i32 36 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1283, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1287, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 928, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1047, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1082, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 990, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 995, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1000, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1005, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1014, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1499, i32 22 }
@___asan_gen_.567 = private unnamed_addr constant [10 x i8] c"regs_fops\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1488, i32 1 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1301, i32 14 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1307, i32 17 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1308, i32 17 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1311, i32 16 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1316, i32 17 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1318, i32 17 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1320, i32 17 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1324, i32 17 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1326, i32 17 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1330, i32 17 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1336, i32 17 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1338, i32 17 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1340, i32 17 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1342, i32 17 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1348, i32 17 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1350, i32 17 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1354, i32 16 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1357, i32 16 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1360, i32 14 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1364, i32 16 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1366, i32 16 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1369, i32 16 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1371, i32 16 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1374, i32 17 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1386, i32 18 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1392, i32 18 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1400, i32 16 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1402, i32 19 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1402, i32 28 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1404, i32 28 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1406, i32 28 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1408, i32 28 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1412, i32 16 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1424, i32 18 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1425, i32 21 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1426, i32 21 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1427, i32 21 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1427, i32 29 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1432, i32 16 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1433, i32 28 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1433, i32 35 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1441, i32 17 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1445, i32 17 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1450, i32 16 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1453, i32 17 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1456, i32 17 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1461, i32 16 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1463, i32 14 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1466, i32 16 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1468, i32 16 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1470, i32 16 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1475, i32 17 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1478, i32 17 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1480, i32 17 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2289, i32 3 }
@___asan_gen_.741 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.744 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.745 = private constant [36 x i8] c"../drivers/thermal/tegra/soctherm.c\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2302, i32 4 }
@___asan_gen_.747 = private unnamed_addr constant [27 x i8] c"switch.table.soctherm_init\00", align 1
@___asan_gen_.748 = private unnamed_addr constant [23 x i8] c"switch.table.regs_show\00", align 1
@___asan_gen_.749 = private unnamed_addr constant [27 x i8] c"switch.table.regs_show.185\00", align 1
@llvm.compiler.used = appending global [229 x ptr] [ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_description246, ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_license248, ptr @__exitcall_tegra_soctherm_driver_exit, ptr @__initcall__kmod_tegra_soctherm__244_2322_tegra_soctherm_driver_init6, ptr @soctherm_edp_isr_thread._entry, ptr @soctherm_edp_isr_thread._entry.116, ptr @soctherm_edp_isr_thread._entry_ptr, ptr @soctherm_edp_isr_thread._entry_ptr.118, ptr @soctherm_handle_alarm._entry, ptr @soctherm_handle_alarm._entry_ptr, ptr @soctherm_init_hw_throt_cdev._entry, ptr @soctherm_init_hw_throt_cdev._entry.40, ptr @soctherm_init_hw_throt_cdev._entry.43, ptr @soctherm_init_hw_throt_cdev._entry.46, ptr @soctherm_init_hw_throt_cdev._entry_ptr, ptr @soctherm_init_hw_throt_cdev._entry_ptr.42, ptr @soctherm_init_hw_throt_cdev._entry_ptr.45, ptr @soctherm_init_hw_throt_cdev._entry_ptr.48, ptr @soctherm_interrupts_init._entry, ptr @soctherm_interrupts_init._entry.101, ptr @soctherm_interrupts_init._entry.97, ptr @soctherm_interrupts_init._entry_ptr, ptr @soctherm_interrupts_init._entry_ptr.103, ptr @soctherm_interrupts_init._entry_ptr.99, ptr @soctherm_oc_int_init._entry, ptr @soctherm_oc_int_init._entry.108, ptr @soctherm_oc_int_init._entry_ptr, ptr @soctherm_oc_int_init._entry_ptr.110, ptr @soctherm_resume._entry, ptr @soctherm_resume._entry.182, ptr @soctherm_resume._entry_ptr, ptr @soctherm_resume._entry_ptr.184, ptr @soctherm_thermal_isr_thread._entry, ptr @soctherm_thermal_isr_thread._entry_ptr, ptr @soctherm_thermtrips_parse._entry, ptr @soctherm_thermtrips_parse._entry.34, ptr @soctherm_thermtrips_parse._entry_ptr, ptr @soctherm_thermtrips_parse._entry_ptr.36, ptr @soctherm_throt_cfg_parse._entry, ptr @soctherm_throt_cfg_parse._entry.62, ptr @soctherm_throt_cfg_parse._entry_ptr, ptr @soctherm_throt_cfg_parse._entry_ptr.64, ptr @tegra_soctherm_driver_exit, ptr @tegra_soctherm_probe._entry, ptr @tegra_soctherm_probe._entry.13, ptr @tegra_soctherm_probe._entry.17, ptr @tegra_soctherm_probe._entry.21, ptr @tegra_soctherm_probe._entry.24, ptr @tegra_soctherm_probe._entry.27, ptr @tegra_soctherm_probe._entry.9, ptr @tegra_soctherm_probe._entry_ptr, ptr @tegra_soctherm_probe._entry_ptr.11, ptr @tegra_soctherm_probe._entry_ptr.15, ptr @tegra_soctherm_probe._entry_ptr.19, ptr @tegra_soctherm_probe._entry_ptr.23, ptr @tegra_soctherm_probe._entry_ptr.26, ptr @tegra_soctherm_probe._entry_ptr.29, ptr @tegra_soctherm_set_hwtrips._entry, ptr @tegra_soctherm_set_hwtrips._entry.78, ptr @tegra_soctherm_set_hwtrips._entry.81, ptr @tegra_soctherm_set_hwtrips._entry.84, ptr @tegra_soctherm_set_hwtrips._entry.87, ptr @tegra_soctherm_set_hwtrips._entry.90, ptr @tegra_soctherm_set_hwtrips._entry_ptr, ptr @tegra_soctherm_set_hwtrips._entry_ptr.80, ptr @tegra_soctherm_set_hwtrips._entry_ptr.83, ptr @tegra_soctherm_set_hwtrips._entry_ptr.86, ptr @tegra_soctherm_set_hwtrips._entry_ptr.89, ptr @tegra_soctherm_set_hwtrips._entry_ptr.92, ptr @throttrip_program._entry, ptr @throttrip_program._entry_ptr, ptr @tegra_soctherm_driver, ptr @.str, ptr @tegra_soctherm_of_match, ptr @tegra_soctherm_pm, ptr @tegra_soctherm_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @tegra_of_thermal_ops, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @throt_cooling_ops, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @soctherm_oc_int_init.__key, ptr @soc_irq_cdata, ptr @.str.106, ptr @.str.107, ptr @soctherm_oc_domain_ops, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @regs_fops, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.183, ptr @switch.table.soctherm_init, ptr @switch.table.regs_show, ptr @switch.table.regs_show.185], section "llvm.metadata"
@0 = internal global [189 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_soctherm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_soctherm_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_soctherm_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_soctherm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_soctherm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_soctherm_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_soctherm_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_soctherm_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_soctherm_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_soctherm_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_of_thermal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_soctherm_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soctherm_thermtrips_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soctherm_thermtrips_parse._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soctherm_init_hw_throt_cdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soctherm_init_hw_throt_cdev._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soctherm_init_hw_throt_cdev._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @throt_cooling_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soctherm_init_hw_throt_cdev._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soctherm_throt_cfg_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soctherm_throt_cfg_parse._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @throttrip_program._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_soctherm_set_hwtrips._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_soctherm_set_hwtrips._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_soctherm_set_hwtrips._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_soctherm_set_hwtrips._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_soctherm_set_hwtrips._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_soctherm_set_hwtrips._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soctherm_interrupts_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soctherm_interrupts_init._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soctherm_interrupts_init._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soctherm_oc_int_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soctherm_oc_int_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_irq_cdata to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soctherm_oc_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soctherm_oc_int_init._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soctherm_thermal_isr_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soctherm_edp_isr_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soctherm_edp_isr_thread._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soctherm_handle_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soctherm_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soctherm_resume._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.soctherm_init to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.regs_show to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.regs_show.185 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_soctherm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_soctherm_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_soctherm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_soctherm_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_soctherm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %shared_calib = alloca %struct.tsensor_shared_calib, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %shared_calib) #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = call ptr @memset(ptr %shared_calib, i32 255, i32 16)
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @tegra_soctherm_of_match, ptr noundef %2) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup158_crit_edge, label %if.end

entry.cleanup158_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup158

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %num_ttgs = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %num_ttgs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_ttgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp = icmp ugt i32 %6, 4
  br i1 %cmp, label %if.end.cleanup158_crit_edge, label %if.end2

if.end.cleanup158_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup158

if.end2:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 504, i32 noundef 3520) #10
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end2.cleanup158_crit_edge, label %do.body

if.end2.cleanup158_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup158

do.body:                                          ; preds = %if.end2
  %thermctl_lock = getelementptr inbounds %struct.tegra_soctherm, ptr %call.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %thermctl_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @tegra_soctherm_probe.__key) #10
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i, align 4
  %soc9 = getelementptr inbounds %struct.tegra_soctherm, ptr %call.i, i32 0, i32 10
  %8 = ptrtoint ptr %soc9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %4, ptr %soc9, align 4
  %call10 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.2) #10
  %regs = getelementptr inbounds %struct.tegra_soctherm, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call10, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end16, label %if.end20

do.end16:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #13
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup158

if.end20:                                         ; preds = %do.body
  %13 = ptrtoint ptr %soc9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %soc9, align 4
  %use_ccroc = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %use_ccroc to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %use_ccroc, align 4, !range !381
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool22.not = icmp eq i8 %16, 0
  br i1 %tobool22.not, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end20
  %call24 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.8) #10
  %clk_regs = getelementptr inbounds %struct.tegra_soctherm, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %clk_regs to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call24, ptr %clk_regs, align 4
  %cmp.i265 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i265, label %do.end30, label %if.then23.if.end46_crit_edge

if.then23.if.end46_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

do.end30:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #13
  %18 = ptrtoint ptr %clk_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_regs, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %cleanup158

if.else:                                          ; preds = %if.end20
  %call35 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.12) #10
  %ccroc_regs = getelementptr inbounds %struct.tegra_soctherm, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %ccroc_regs to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call35, ptr %ccroc_regs, align 4
  %cmp.i266 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i266, label %do.end41, label %if.else.if.end46_crit_edge

if.else.if.end46_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

do.end41:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #13
  %22 = ptrtoint ptr %ccroc_regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ccroc_regs, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %cleanup158

if.end46:                                         ; preds = %if.else.if.end46_crit_edge, %if.then23.if.end46_crit_edge
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i.i, ptr %call.i, align 4
  %cmp.i267 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i267, label %do.end54, label %if.end58

do.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #13
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %28 = ptrtoint ptr %27 to i32
  br label %cleanup158

if.end58:                                         ; preds = %if.end46
  %call60 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.20) #10
  %clock_tsensor = getelementptr inbounds %struct.tegra_soctherm, ptr %call.i, i32 0, i32 1
  %29 = ptrtoint ptr %clock_tsensor to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call60, ptr %clock_tsensor, align 4
  %cmp.i268 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i268, label %do.end66, label %if.end70

do.end66:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #13
  %30 = ptrtoint ptr %clock_tsensor to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clock_tsensor, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %cleanup158

if.end70:                                         ; preds = %if.end58
  %call72 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  %clock_soctherm = getelementptr inbounds %struct.tegra_soctherm, ptr %call.i, i32 0, i32 2
  %33 = ptrtoint ptr %clock_soctherm to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call72, ptr %clock_soctherm, align 4
  %cmp.i269 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i269, label %do.end78, label %if.end82

do.end78:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #13
  %34 = ptrtoint ptr %clock_soctherm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clock_soctherm, align 4
  %36 = ptrtoint ptr %35 to i32
  br label %cleanup158

if.end82:                                         ; preds = %if.end70
  %num_tsensors = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %4, i32 0, i32 1
  %37 = ptrtoint ptr %num_tsensors to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_tsensors, align 4
  %39 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %38, i32 4) #10
  %40 = extractvalue { i32, i1 } %39, 1
  br i1 %40, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !382

devm_kcalloc.exit.thread:                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  %calib277 = getelementptr inbounds %struct.tegra_soctherm, ptr %call.i, i32 0, i32 8
  %41 = ptrtoint ptr %calib277 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %calib277, align 4
  br label %cleanup158

devm_kcalloc.exit:                                ; preds = %if.end82
  %42 = extractvalue { i32, i1 } %39, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %42, i32 noundef 3520) #10
  %calib = getelementptr inbounds %struct.tegra_soctherm, ptr %call.i, i32 0, i32 8
  %43 = ptrtoint ptr %calib to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call5.i.i, ptr %calib, align 4
  %tobool86.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool86.not, label %devm_kcalloc.exit.cleanup158_crit_edge, label %if.end88

devm_kcalloc.exit.cleanup158_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup158

if.end88:                                         ; preds = %devm_kcalloc.exit
  %tfuse = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %4, i32 0, i32 4
  %44 = ptrtoint ptr %tfuse to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tfuse, align 4
  %call89 = call i32 @tegra_calc_shared_calib(ptr noundef %45, ptr noundef nonnull %shared_calib) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %for.cond.preheader, label %if.end88.cleanup158_crit_edge

if.end88.cleanup158_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup158

for.cond.preheader:                               ; preds = %if.end88
  %46 = ptrtoint ptr %num_tsensors to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_tsensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp94285.not = icmp eq i32 %47, 0
  br i1 %cmp94285.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0286, 1
  %48 = ptrtoint ptr %num_tsensors to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_tsensors, align 4
  %cmp94 = icmp ult i32 %inc, %49
  br i1 %cmp94, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0286 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %50 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %4, align 4
  %arrayidx = getelementptr %struct.tegra_tsensor, ptr %51, i32 %i.0286
  %52 = ptrtoint ptr %calib to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %calib, align 4
  %arrayidx96 = getelementptr i32, ptr %53, i32 %i.0286
  %call97 = call i32 @tegra_calc_tsensor_calib(ptr noundef %arrayidx, ptr noundef nonnull %shared_calib, ptr noundef %arrayidx96) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %for.cond, label %for.body.cleanup158_crit_edge

for.body.cleanup158_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup158

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %54 = ptrtoint ptr %num_ttgs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_ttgs, align 4
  %56 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %55, i32 4) #10
  %57 = extractvalue { i32, i1 } %56, 1
  br i1 %57, label %devm_kcalloc.exit273.thread, label %devm_kcalloc.exit273, !prof !382

devm_kcalloc.exit273.thread:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %thermctl_tzs280 = getelementptr inbounds %struct.tegra_soctherm, ptr %call.i, i32 0, i32 9
  %58 = ptrtoint ptr %thermctl_tzs280 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %thermctl_tzs280, align 4
  br label %cleanup158

devm_kcalloc.exit273:                             ; preds = %for.end
  %59 = extractvalue { i32, i1 } %56, 0
  %call5.i.i270 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %59, i32 noundef 3520) #10
  %thermctl_tzs = getelementptr inbounds %struct.tegra_soctherm, ptr %call.i, i32 0, i32 9
  %60 = ptrtoint ptr %thermctl_tzs to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call5.i.i270, ptr %thermctl_tzs, align 4
  %tobool105.not = icmp eq ptr %call5.i.i270, null
  br i1 %tobool105.not, label %devm_kcalloc.exit273.cleanup158_crit_edge, label %if.end107

devm_kcalloc.exit273.cleanup158_crit_edge:        ; preds = %devm_kcalloc.exit273
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup158

if.end107:                                        ; preds = %devm_kcalloc.exit273
  %call108 = call fastcc i32 @soctherm_clk_enable(ptr noundef %pdev, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end111, label %if.end107.cleanup158_crit_edge

if.end107.cleanup158_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup158

if.end111:                                        ; preds = %if.end107
  call fastcc void @soctherm_thermtrips_parse(ptr noundef %pdev)
  call fastcc void @soctherm_init_hw_throt_cdev(ptr noundef %pdev)
  call fastcc void @soctherm_init(ptr noundef %pdev)
  %61 = ptrtoint ptr %num_ttgs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_ttgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp115287.not = icmp eq i32 %62, 0
  br i1 %cmp115287.not, label %if.end111.for.end155_crit_edge, label %for.body116.lr.ph

if.end111.for.end155_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end155

for.body116.lr.ph:                                ; preds = %if.end111
  %ttgs = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %4, i32 0, i32 2
  br label %for.body116

for.cond113:                                      ; preds = %if.end140
  %inc154 = add nuw i32 %i.1288, 1
  %63 = ptrtoint ptr %num_ttgs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_ttgs, align 4
  %cmp115 = icmp ult i32 %inc154, %64
  br i1 %cmp115, label %for.cond113.for.body116_crit_edge, label %for.cond113.for.end155_crit_edge

for.cond113.for.end155_crit_edge:                 ; preds = %for.cond113
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end155

for.cond113.for.body116_crit_edge:                ; preds = %for.cond113
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body116

for.body116:                                      ; preds = %for.cond113.for.body116_crit_edge, %for.body116.lr.ph
  %i.1288 = phi i32 [ 0, %for.body116.lr.ph ], [ %inc154, %for.cond113.for.body116_crit_edge ]
  %call.i274 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #10
  %tobool119.not = icmp eq ptr %call.i274, null
  br i1 %tobool119.not, label %for.body116.disable_clocks_crit_edge, label %if.end121

for.body116.disable_clocks_crit_edge:             ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_clocks

if.end121:                                        ; preds = %for.body116
  %65 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs, align 4
  %67 = ptrtoint ptr %ttgs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ttgs, align 4
  %arrayidx123 = getelementptr ptr, ptr %68, i32 %i.1288
  %69 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx123, align 4
  %sensor_temp_offset = getelementptr inbounds %struct.tegra_tsensor_group, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %sensor_temp_offset to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %sensor_temp_offset, align 2
  %conv = zext i16 %72 to i32
  %add.ptr = getelementptr i8, ptr %66, i32 %conv
  %73 = ptrtoint ptr %call.i274 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %add.ptr, ptr %call.i274, align 4
  %dev125 = getelementptr inbounds %struct.tegra_thermctl_zone, ptr %call.i274, i32 0, i32 1
  %74 = ptrtoint ptr %dev125 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %dev, ptr %dev125, align 4
  %75 = load ptr, ptr %ttgs, align 4
  %arrayidx127 = getelementptr ptr, ptr %75, i32 %i.1288
  %76 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx127, align 4
  %sg = getelementptr inbounds %struct.tegra_thermctl_zone, ptr %call.i274, i32 0, i32 4
  %78 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %sg, align 4
  %ts = getelementptr inbounds %struct.tegra_thermctl_zone, ptr %call.i274, i32 0, i32 2
  %79 = ptrtoint ptr %ts to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call.i, ptr %ts, align 4
  %80 = load ptr, ptr %ttgs, align 4
  %arrayidx130 = getelementptr ptr, ptr %80, i32 %i.1288
  %81 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx130, align 4
  %id = getelementptr inbounds %struct.tegra_tsensor_group, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %id, align 4
  %conv131 = zext i8 %84 to i32
  %call132 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %dev, i32 noundef %conv131, ptr noundef nonnull %call.i274, ptr noundef nonnull @tegra_of_thermal_ops) #10
  %cmp.i275 = icmp ugt ptr %call132, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i275, label %if.then134, label %if.end140

if.then134:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %call132 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %85) #13
  br label %disable_clocks

if.end140:                                        ; preds = %if.end121
  %tz = getelementptr inbounds %struct.tegra_thermctl_zone, ptr %call.i274, i32 0, i32 3
  %86 = ptrtoint ptr %tz to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call132, ptr %tz, align 4
  %87 = ptrtoint ptr %thermctl_tzs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %thermctl_tzs, align 4
  %89 = ptrtoint ptr %ttgs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ttgs, align 4
  %arrayidx143 = getelementptr ptr, ptr %90, i32 %i.1288
  %91 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx143, align 4
  %id144 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %id144 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %id144, align 4
  %idxprom = zext i8 %94 to i32
  %arrayidx145 = getelementptr ptr, ptr %88, i32 %idxprom
  %95 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call132, ptr %arrayidx145, align 4
  %96 = load ptr, ptr %ttgs, align 4
  %arrayidx148 = getelementptr ptr, ptr %96, i32 %i.1288
  %97 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx148, align 4
  %call149 = call fastcc i32 @tegra_soctherm_set_hwtrips(ptr noundef %dev, ptr noundef %98, ptr noundef %call132)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %for.cond113, label %if.end140.disable_clocks_crit_edge

if.end140.disable_clocks_crit_edge:               ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_clocks

for.end155:                                       ; preds = %for.cond113.for.end155_crit_edge, %if.end111.for.end155_crit_edge
  call fastcc void @soctherm_interrupts_init(ptr noundef %pdev, ptr noundef nonnull %call.i)
  call fastcc void @soctherm_debug_init(ptr noundef %pdev)
  br label %cleanup158

disable_clocks:                                   ; preds = %if.end140.disable_clocks_crit_edge, %if.then134, %for.body116.disable_clocks_crit_edge
  %err.0.ph = phi i32 [ %85, %if.then134 ], [ -12, %for.body116.disable_clocks_crit_edge ], [ %call149, %if.end140.disable_clocks_crit_edge ]
  %call157 = call fastcc i32 @soctherm_clk_enable(ptr noundef %pdev, i1 noundef zeroext false)
  br label %cleanup158

cleanup158:                                       ; preds = %disable_clocks, %for.end155, %if.end107.cleanup158_crit_edge, %devm_kcalloc.exit273.cleanup158_crit_edge, %devm_kcalloc.exit273.thread, %for.body.cleanup158_crit_edge, %if.end88.cleanup158_crit_edge, %devm_kcalloc.exit.cleanup158_crit_edge, %devm_kcalloc.exit.thread, %do.end78, %do.end66, %do.end54, %do.end41, %do.end30, %do.end16, %if.end2.cleanup158_crit_edge, %if.end.cleanup158_crit_edge, %entry.cleanup158_crit_edge
  %retval.0 = phi i32 [ %12, %do.end16 ], [ %24, %do.end41 ], [ %28, %do.end54 ], [ %32, %do.end66 ], [ %36, %do.end78 ], [ %err.0.ph, %disable_clocks ], [ 0, %for.end155 ], [ %20, %do.end30 ], [ -19, %entry.cleanup158_crit_edge ], [ -22, %if.end.cleanup158_crit_edge ], [ -12, %if.end2.cleanup158_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup158_crit_edge ], [ %call89, %if.end88.cleanup158_crit_edge ], [ -12, %devm_kcalloc.exit273.cleanup158_crit_edge ], [ %call108, %if.end107.cleanup158_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit273.thread ], [ %call97, %for.body.cleanup158_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %shared_calib) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_soctherm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %debugfs_dir = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %3) #10
  %call1 = tail call fastcc i32 @soctherm_clk_enable(ptr noundef %pdev, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_calc_shared_calib(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_calc_tsensor_calib(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @soctherm_clk_enable(ptr nocapture noundef readonly %pdev, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clock_soctherm = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clock_soctherm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock_soctherm, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %clock_tsensor = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clock_tsensor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clock_tsensor, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %7) #10
  br i1 %enable, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %8 = ptrtoint ptr %clock_soctherm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clock_soctherm, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then4.cleanup.sink.split_crit_edge

if.then4.cleanup.sink.split_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.then4
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end11, label %if.end.i.cleanup.sink.split.sink.split_crit_edge

if.end.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

if.end11:                                         ; preds = %if.end.i
  %10 = ptrtoint ptr %clock_tsensor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clock_tsensor, align 4
  %call.i39 = tail call i32 @clk_prepare(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool.not.i40 = icmp eq i32 %call.i39, 0
  br i1 %tobool.not.i40, label %if.end.i43, label %if.end11.cleanup.sink.split.sink.split.sink.split_crit_edge

if.end11.cleanup.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split.sink.split

if.end.i43:                                       ; preds = %if.end11
  %call1.i41 = tail call i32 @clk_enable(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %tobool2.not.i42 = icmp eq i32 %call1.i41, 0
  br i1 %tobool2.not.i42, label %if.end.i43.cleanup.sink.split_crit_edge, label %if.end.i43.cleanup.sink.split.sink.split.sink.split.sink.split_crit_edge

if.end.i43.cleanup.sink.split.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split.sink.split.sink.split

if.end.i43.cleanup.sink.split_crit_edge:          ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %clock_tsensor to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clock_tsensor, align 4
  tail call void @clk_disable(ptr noundef %13) #10
  br label %cleanup.sink.split.sink.split.sink.split.sink.split

cleanup.sink.split.sink.split.sink.split.sink.split: ; preds = %if.else, %if.end.i43.cleanup.sink.split.sink.split.sink.split.sink.split_crit_edge
  %.sink54 = phi ptr [ %13, %if.else ], [ %11, %if.end.i43.cleanup.sink.split.sink.split.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph.ph.ph = phi i32 [ 0, %if.else ], [ %call1.i41, %if.end.i43.cleanup.sink.split.sink.split.sink.split.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink54) #10
  br label %cleanup.sink.split.sink.split.sink.split

cleanup.sink.split.sink.split.sink.split:         ; preds = %cleanup.sink.split.sink.split.sink.split.sink.split, %if.end11.cleanup.sink.split.sink.split.sink.split_crit_edge
  %retval.0.ph.ph.ph = phi i32 [ %call.i39, %if.end11.cleanup.sink.split.sink.split.sink.split_crit_edge ], [ %retval.0.ph.ph.ph.ph, %cleanup.sink.split.sink.split.sink.split.sink.split ]
  %14 = ptrtoint ptr %clock_soctherm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clock_soctherm, align 4
  tail call void @clk_disable(ptr noundef %15) #10
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %cleanup.sink.split.sink.split.sink.split, %if.end.i.cleanup.sink.split.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.end.i.cleanup.sink.split.sink.split_crit_edge ], [ %15, %cleanup.sink.split.sink.split.sink.split ]
  %retval.0.ph.ph = phi i32 [ %call1.i, %if.end.i.cleanup.sink.split.sink.split_crit_edge ], [ %retval.0.ph.ph.ph, %cleanup.sink.split.sink.split.sink.split ]
  tail call void @clk_unprepare(ptr noundef %.sink) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end.i43.cleanup.sink.split_crit_edge, %if.then4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call.i, %if.then4.cleanup.sink.split_crit_edge ], [ 0, %if.end.i43.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call24 = tail call i32 @reset_control_deassert(ptr noundef %17) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @soctherm_thermtrips_parse(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %soc = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 4
  %thermtrips = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %thermtrips to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %thermtrips, align 4
  %num_ttgs = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %num_ttgs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ttgs, align 4
  %mul = shl i32 %7, 1
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call.i = tail call i32 @of_property_count_elems_of_size(ptr noundef %9, ptr noundef nonnull @.str.30, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 1
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.31) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %10 = tail call i32 @llvm.smin.i32(i32 %mul, i32 %call.i)
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul, i32 4) #10
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %if.end5.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !382

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end5
  %13 = extractvalue { i32, i1 } %11, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %13, i32 noundef 3520) #10
  %tobool9.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool9.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end11

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %devm_kcalloc.exit
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call.i1 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.30, ptr noundef nonnull %call5.i.i, i32 noundef %10, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %tobool14.not = icmp sgt i32 %call.i1, -1
  br i1 %tobool14.not, label %for.cond.preheader, label %do.end18

for.cond.preheader:                               ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp204 = icmp sgt i32 %10, 0
  br i1 %cmp204, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35, i32 noundef %call.i1) #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %j.06 = phi i32 [ %add28, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.05 = phi i32 [ %i.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %call5.i.i, i32 %j.06
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp21 = icmp ugt i32 %17, 3
  br i1 %cmp21, label %for.body.for.inc_crit_edge, label %if.end23

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end23:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i32 %17 to i8
  %arrayidx25 = getelementptr %struct.tsensor_group_thermtrips, ptr %5, i32 %i.05
  %18 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %arrayidx25, align 4
  %add = or i32 %j.06, 1
  %arrayidx26 = getelementptr i32, ptr %call5.i.i, i32 %add
  %19 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx26, align 4
  %temp = getelementptr %struct.tsensor_group_thermtrips, ptr %5, i32 %i.05, i32 1
  %21 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %temp, align 4
  %inc = add i32 %i.05, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end23, %for.body.for.inc_crit_edge
  %i.1 = phi i32 [ %i.05, %for.body.for.inc_crit_edge ], [ %inc, %if.end23 ]
  %add28 = add nuw nsw i32 %j.06, 2
  %cmp20 = icmp slt i32 %add28, %10
  br i1 %cmp20, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end18, %for.cond.preheader.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @soctherm_init_hw_throt_cdev(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %val.i99 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx2 = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 0
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.49, ptr %arrayidx2, align 4
  %id = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 0, i32 1
  %3 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %id, align 4
  %init = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 0, i32 8
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %init, align 4
  %arrayidx2.1 = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 1
  %5 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.50, ptr %arrayidx2.1, align 4
  %id.1 = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 1, i32 1
  %6 = ptrtoint ptr %id.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %id.1, align 4
  %init.1 = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 1, i32 8
  %7 = ptrtoint ptr %init.1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %init.1, align 4
  %arrayidx2.2 = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 2
  %8 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.51, ptr %arrayidx2.2, align 4
  %id.2 = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 2, i32 1
  %9 = ptrtoint ptr %id.2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %id.2, align 4
  %init.2 = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 2, i32 8
  %10 = ptrtoint ptr %init.2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %init.2, align 4
  %arrayidx2.3 = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 3
  %11 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.52, ptr %arrayidx2.3, align 4
  %id.3 = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 3, i32 1
  %12 = ptrtoint ptr %id.3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %id.3, align 4
  %init.3 = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 3, i32 8
  %13 = ptrtoint ptr %init.3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %init.3, align 4
  %arrayidx2.4 = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 4
  %14 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.53, ptr %arrayidx2.4, align 4
  %id.4 = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 4, i32 1
  %15 = ptrtoint ptr %id.4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %id.4, align 4
  %init.4 = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 4, i32 8
  %16 = ptrtoint ptr %init.4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %init.4, align 4
  %arrayidx2.5 = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 5
  %17 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.54, ptr %arrayidx2.5, align 4
  %id.5 = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 5, i32 1
  %18 = ptrtoint ptr %id.5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %id.5, align 4
  %init.5 = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 5, i32 8
  %19 = ptrtoint ptr %init.5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %init.5, align 4
  %arrayidx2.6 = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 6
  %20 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.55, ptr %arrayidx2.6, align 4
  %id.6 = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 6, i32 1
  %21 = ptrtoint ptr %id.6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 6, ptr %id.6, align 4
  %init.6 = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 6, i32 8
  %22 = ptrtoint ptr %init.6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %init.6, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  %call8 = tail call ptr @of_get_child_by_name(ptr noundef %24, ptr noundef nonnull @.str.37) #10
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.38) #13
  br label %cleanup50

if.end:                                           ; preds = %entry
  %call9 = tail call ptr @of_get_next_child(ptr noundef nonnull %call8, ptr noundef null) #10
  %cmp11.not120 = icmp eq ptr %call9, null
  br i1 %cmp11.not120, label %if.end.for.end49_crit_edge, label %if.end.for.body12_crit_edge

if.end.for.body12_crit_edge:                      ; preds = %if.end
  br label %for.body12

if.end.for.end49_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end49

for.body12:                                       ; preds = %for.inc47.for.body12_crit_edge, %if.end.for.body12_crit_edge
  %np_stcc.0121 = phi ptr [ %call48, %for.inc47.for.body12_crit_edge ], [ %call9, %if.end.for.body12_crit_edge ]
  %25 = ptrtoint ptr %np_stcc.0121 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %np_stcc.0121, align 4
  %27 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx2, align 4
  %tobool.not14.i = icmp eq ptr %28, null
  br i1 %tobool.not14.i, label %for.body12.do.end19_crit_edge, label %for.body.i.preheader

for.body12.do.end19_crit_edge:                    ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

for.body.i.preheader:                             ; preds = %for.body12
  %call.i117 = call i32 @strcmp(ptr noundef nonnull %28, ptr noundef %26) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %tobool5.not.i118 = icmp eq i32 %call.i117, 0
  br i1 %tobool5.not.i118, label %for.body.i.preheader.find_throttle_cfg_by_name.exit_crit_edge, label %for.body.i.preheader.for.cond.i_crit_edge

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.body.i.preheader.find_throttle_cfg_by_name.exit_crit_edge: ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_throttle_cfg_by_name.exit

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %i.015.i119 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.i.preheader.for.cond.i_crit_edge ]
  %inc.i = add i32 %i.015.i119, 1
  %arrayidx.i = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 %inc.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %for.cond.i.do.end19_crit_edge, label %for.body.i

for.cond.i.do.end19_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

for.body.i:                                       ; preds = %for.cond.i
  %call.i = call i32 @strcmp(ptr noundef nonnull %30, ptr noundef %26) #14
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %for.body.i.find_throttle_cfg_by_name.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

for.body.i.find_throttle_cfg_by_name.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_throttle_cfg_by_name.exit

find_throttle_cfg_by_name.exit:                   ; preds = %for.body.i.find_throttle_cfg_by_name.exit_crit_edge, %for.body.i.preheader.find_throttle_cfg_by_name.exit_crit_edge
  %arrayidx16.i.lcssa = phi ptr [ %arrayidx2, %for.body.i.preheader.find_throttle_cfg_by_name.exit_crit_edge ], [ %arrayidx.i, %for.body.i.find_throttle_cfg_by_name.exit_crit_edge ]
  %tobool15.not = icmp eq ptr %arrayidx16.i.lcssa, null
  br i1 %tobool15.not, label %find_throttle_cfg_by_name.exit.do.end19_crit_edge, label %if.end20

find_throttle_cfg_by_name.exit.do.end19_crit_edge: ; preds = %find_throttle_cfg_by_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

do.end19:                                         ; preds = %find_throttle_cfg_by_name.exit.do.end19_crit_edge, %for.cond.i.do.end19_crit_edge, %for.body12.do.end19_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.41, ptr noundef %26) #13
  br label %for.inc47

if.end20:                                         ; preds = %find_throttle_cfg_by_name.exit
  %init21 = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %arrayidx16.i.lcssa, i32 0, i32 8
  %31 = ptrtoint ptr %init21 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %init21, align 4, !range !381
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool22.not = icmp eq i8 %32, 0
  br i1 %tobool22.not, label %if.end27, label %cleanup

if.end27:                                         ; preds = %if.end20
  %33 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %35 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %val.i, align 4, !annotation !383
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_stcc.0121, ptr noundef nonnull @.str.56, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i96 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i96, label %if.end.i, label %if.end27.soctherm_throt_cfg_parse.exit.thread_crit_edge

if.end27.soctherm_throt_cfg_parse.exit.thread_crit_edge: ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %soctherm_throt_cfg_parse.exit.thread

if.end.i:                                         ; preds = %if.end27
  %36 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val.i, align 4
  %conv.i = trunc i32 %37 to i8
  %priority.i = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %arrayidx16.i.lcssa, i32 0, i32 2
  %38 = ptrtoint ptr %priority.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv.i, ptr %priority.i, align 4
  %soc.i = getelementptr inbounds %struct.tegra_soctherm, ptr %34, i32 0, i32 10
  %39 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %soc.i, align 4
  %use_ccroc.i = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %use_ccroc.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %use_ccroc.i, align 4, !range !381
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool2.not.i = icmp eq i8 %42, 0
  %cond.i = select i1 %tobool2.not.i, ptr @.str.60, ptr @.str.59
  %call.i.i55.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_stcc.0121, ptr noundef nonnull %cond.i, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i55.i)
  %tobool5.not.i97 = icmp sgt i32 %call.i.i55.i, -1
  br i1 %tobool5.not.i97, label %if.then6.i, label %if.end.i.soctherm_throt_cfg_parse.exit.thread_crit_edge

if.end.i.soctherm_throt_cfg_parse.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %soctherm_throt_cfg_parse.exit.thread

if.then6.i:                                       ; preds = %if.end.i
  %43 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %soc.i, align 4
  %use_ccroc8.i = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %use_ccroc8.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %use_ccroc8.i, align 4, !range !381
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool9.not.i = icmp eq i8 %46, 0
  %47 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val.i, align 4
  br i1 %tobool9.not.i, label %land.lhs.true17.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp.i = icmp ult i32 %48, 4
  br i1 %cmp.i, label %if.then12.i, label %land.lhs.true.i.soctherm_throt_cfg_parse.exit.thread_crit_edge

land.lhs.true.i.soctherm_throt_cfg_parse.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %soctherm_throt_cfg_parse.exit.thread

if.then12.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv13.i = trunc i32 %48 to i8
  %cpu_throt_level.i = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %arrayidx16.i.lcssa, i32 0, i32 3
  %49 = ptrtoint ptr %cpu_throt_level.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv13.i, ptr %cpu_throt_level.i, align 1
  br label %if.end25.i

land.lhs.true17.i:                                ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %48)
  %cmp18.i = icmp ult i32 %48, 101
  br i1 %cmp18.i, label %if.then20.i, label %land.lhs.true17.i.soctherm_throt_cfg_parse.exit.thread_crit_edge

land.lhs.true17.i.soctherm_throt_cfg_parse.exit.thread_crit_edge: ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %soctherm_throt_cfg_parse.exit.thread

if.then20.i:                                      ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #12
  %cpu_throt_depth.i = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %arrayidx16.i.lcssa, i32 0, i32 4
  %50 = ptrtoint ptr %cpu_throt_depth.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %48, ptr %cpu_throt_depth.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then20.i, %if.then12.i
  %call.i.i56.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_stcc.0121, ptr noundef nonnull @.str.61, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i56.i)
  %tobool27.not.i = icmp sgt i32 %call.i.i56.i, -1
  br i1 %tobool27.not.i, label %land.lhs.true28.i, label %if.end25.i.soctherm_throt_cfg_parse.exit.thread_crit_edge

if.end25.i.soctherm_throt_cfg_parse.exit.thread_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %soctherm_throt_cfg_parse.exit.thread

land.lhs.true28.i:                                ; preds = %if.end25.i
  %51 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %52)
  %cmp29.i = icmp ult i32 %52, 4
  br i1 %cmp29.i, label %if.end31, label %land.lhs.true28.i.soctherm_throt_cfg_parse.exit.thread_crit_edge

land.lhs.true28.i.soctherm_throt_cfg_parse.exit.thread_crit_edge: ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %soctherm_throt_cfg_parse.exit.thread

soctherm_throt_cfg_parse.exit.thread:             ; preds = %land.lhs.true28.i.soctherm_throt_cfg_parse.exit.thread_crit_edge, %if.end25.i.soctherm_throt_cfg_parse.exit.thread_crit_edge, %land.lhs.true17.i.soctherm_throt_cfg_parse.exit.thread_crit_edge, %land.lhs.true.i.soctherm_throt_cfg_parse.exit.thread_crit_edge, %if.end.i.soctherm_throt_cfg_parse.exit.thread_crit_edge, %if.end27.soctherm_throt_cfg_parse.exit.thread_crit_edge
  %.str.57.sink = phi ptr [ @.str.57, %if.end27.soctherm_throt_cfg_parse.exit.thread_crit_edge ], [ @.str.63, %land.lhs.true28.i.soctherm_throt_cfg_parse.exit.thread_crit_edge ], [ @.str.63, %if.end25.i.soctherm_throt_cfg_parse.exit.thread_crit_edge ], [ @.str.63, %land.lhs.true17.i.soctherm_throt_cfg_parse.exit.thread_crit_edge ], [ @.str.63, %land.lhs.true.i.soctherm_throt_cfg_parse.exit.thread_crit_edge ], [ @.str.63, %if.end.i.soctherm_throt_cfg_parse.exit.thread_crit_edge ]
  %53 = ptrtoint ptr %arrayidx16.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx16.i.lcssa, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.57.sink, ptr noundef %54) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  br label %for.inc47

if.end31:                                         ; preds = %land.lhs.true28.i
  %gpu_throt_level.i = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %arrayidx16.i.lcssa, i32 0, i32 5
  %55 = ptrtoint ptr %gpu_throt_level.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %52, ptr %gpu_throt_level.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %id32 = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %arrayidx16.i.lcssa, i32 0, i32 1
  %56 = ptrtoint ptr %id32 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %id32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp33 = icmp ugt i32 %57, 1
  br i1 %cmp33, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i99) #10
  %58 = ptrtoint ptr %val.i99 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %val.i99, align 4, !annotation !383
  %call.i.i = call ptr @of_find_property(ptr noundef nonnull %np_stcc.0121, ptr noundef nonnull @.str.65, ptr noundef null) #10
  %tobool.i.not.i = icmp ne ptr %call.i.i, null
  %spec.select.i = zext i1 %tobool.i.not.i to i32
  %59 = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %arrayidx16.i.lcssa, i32 0, i32 6
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %spec.select.i, ptr %59, align 4
  %call.i.i.i100 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_stcc.0121, ptr noundef nonnull @.str.66, ptr noundef nonnull %val.i99, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i100)
  %tobool.not.i101 = icmp sgt i32 %call.i.i.i100, -1
  br i1 %tobool.not.i101, label %if.then4.i, label %if.then34.if.end7.i_crit_edge

if.then34.if.end7.i_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  %intr_en.i = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %arrayidx16.i.lcssa, i32 0, i32 6, i32 5
  %61 = ptrtoint ptr %intr_en.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %intr_en.i, align 4
  %62 = ptrtoint ptr %val.i99 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val.i99, align 4
  %alarm_cnt_thresh.i = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %arrayidx16.i.lcssa, i32 0, i32 6, i32 2
  %64 = ptrtoint ptr %alarm_cnt_thresh.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %alarm_cnt_thresh.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.then34.if.end7.i_crit_edge
  %call.i.i1.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_stcc.0121, ptr noundef nonnull @.str.67, ptr noundef nonnull %val.i99, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i1.i)
  %tobool9.not.i102 = icmp sgt i32 %call.i.i1.i, -1
  br i1 %tobool9.not.i102, label %if.then10.i, label %if.end7.i.if.end12.i_crit_edge

if.end7.i.if.end12.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %val.i99 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %val.i99, align 4
  %throt_period.i = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %arrayidx16.i.lcssa, i32 0, i32 6, i32 1
  %67 = ptrtoint ptr %throt_period.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %throt_period.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.end7.i.if.end12.i_crit_edge
  %call.i.i2.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_stcc.0121, ptr noundef nonnull @.str.68, ptr noundef nonnull %val.i99, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i2.i)
  %tobool14.not.i = icmp sgt i32 %call.i.i2.i, -1
  br i1 %tobool14.not.i, label %if.then15.i, label %if.end12.i.soctherm_oc_cfg_parse.exit_crit_edge

if.end12.i.soctherm_oc_cfg_parse.exit_crit_edge:  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %soctherm_oc_cfg_parse.exit

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %val.i99 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %val.i99, align 4
  %alarm_filter.i = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %arrayidx16.i.lcssa, i32 0, i32 6, i32 3
  %70 = ptrtoint ptr %alarm_filter.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %alarm_filter.i, align 4
  br label %soctherm_oc_cfg_parse.exit

soctherm_oc_cfg_parse.exit:                       ; preds = %if.then15.i, %if.end12.i.soctherm_oc_cfg_parse.exit_crit_edge
  %mode.i = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %arrayidx16.i.lcssa, i32 0, i32 6, i32 4
  %71 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2, ptr %mode.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i99) #10
  br label %if.end44

if.else:                                          ; preds = %if.end31
  %call36 = call ptr @thermal_of_cooling_device_register(ptr noundef nonnull %np_stcc.0121, ptr noundef %26, ptr noundef %1, ptr noundef nonnull @throt_cooling_ops) #10
  %tobool.not.i103 = icmp eq ptr %call36, null
  %cmp.i104 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  %spec.select.i105 = or i1 %tobool.not.i103, %cmp.i104
  br i1 %spec.select.i105, label %do.end41, label %if.end42

do.end41:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.47, ptr noundef %26) #13
  br label %for.inc47

if.end42:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %cdev = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %arrayidx16.i.lcssa, i32 0, i32 7
  %72 = ptrtoint ptr %cdev to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call36, ptr %cdev, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end42, %soctherm_oc_cfg_parse.exit
  %73 = ptrtoint ptr %init21 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %init21, align 4
  br label %for.inc47

cleanup:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.44, ptr noundef %26) #13
  call void @of_node_put(ptr noundef nonnull %np_stcc.0121) #10
  br label %for.end49

for.inc47:                                        ; preds = %if.end44, %do.end41, %soctherm_throt_cfg_parse.exit.thread, %do.end19
  %call48 = call ptr @of_get_next_child(ptr noundef nonnull %call8, ptr noundef nonnull %np_stcc.0121) #10
  %cmp11.not = icmp eq ptr %call48, null
  br i1 %cmp11.not, label %for.inc47.for.end49_crit_edge, label %for.inc47.for.body12_crit_edge

for.inc47.for.body12_crit_edge:                   ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12

for.inc47.for.end49_crit_edge:                    ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end49

for.end49:                                        ; preds = %for.inc47.for.end49_crit_edge, %cleanup, %if.end.for.end49_crit_edge
  call void @of_node_put(ptr noundef nonnull %call8) #10
  br label %cleanup50

cleanup50:                                        ; preds = %for.end49, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @soctherm_init(ptr nocapture noundef readonly %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %soc = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 4
  %ttgs1 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ttgs1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ttgs1, align 4
  %num_tsensors99 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %num_tsensors99 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tsensors99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp100.not = icmp eq i32 %7, 0
  br i1 %cmp100.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %regs.i = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 3
  %calib.i = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %8 = phi ptr [ %3, %for.body.lr.ph ], [ %36, %for.body.for.body_crit_edge ]
  %i.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %base1.i = getelementptr %struct.tegra_tsensor, ptr %10, i32 %i.0101, i32 1
  %13 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %14
  %config.i = getelementptr %struct.tegra_tsensor, ptr %10, i32 %i.0101, i32 2
  %15 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %config.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !384
  tail call void @arm_heavy_mb() #10
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  %20 = lshr i32 %19, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %20) #10, !srcloc !385
  %21 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %config.i, align 4
  %tsample.i = getelementptr inbounds %struct.tegra_tsensor_configuration, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %tsample.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tsample.i, align 4
  %sub.i = add i32 %24, 2147483647
  %tiddq_en.i = getelementptr inbounds %struct.tegra_tsensor_configuration, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %tiddq_en.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tiddq_en.i, align 4
  %shl6.i = shl i32 %26, 15
  %ten_count.i = getelementptr inbounds %struct.tegra_tsensor_configuration, ptr %22, i32 0, i32 2
  %27 = ptrtoint ptr %ten_count.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ten_count.i, align 4
  %shl8.i = shl i32 %28, 24
  %or.i = or i32 %sub.i, %shl6.i
  %or9.i = or i32 %or.i, %shl8.i
  %or10.i = or i32 %or9.i, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !386
  tail call void @arm_heavy_mb() #10
  %29 = tail call i32 @llvm.bswap.i32(i32 %or10.i) #10
  %add.ptr14.i = getelementptr i8, ptr %add.ptr.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %29) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !387
  tail call void @arm_heavy_mb() #10
  %30 = ptrtoint ptr %calib.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %calib.i, align 4
  %arrayidx18.i = getelementptr i32, ptr %31, i32 %i.0101
  %32 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx18.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  %add.ptr19.i = getelementptr i8, ptr %add.ptr.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %34) #10, !srcloc !385
  %inc = add nuw i32 %i.0101, 1
  %35 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %soc, align 4
  %num_tsensors = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %num_tsensors to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_tsensors, align 4
  %cmp = icmp ult i32 %inc, %38
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %regs = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %40, i32 448
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !388
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !389
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 4
  %add.ptr8 = getelementptr i8, ptr %44, i32 452
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #10, !srcloc !388
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !390
  %47 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %soc, align 4
  %num_ttgs = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %num_ttgs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_ttgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp14102.not = icmp eq i32 %50, 0
  br i1 %cmp14102.not, label %for.end.do.body_crit_edge, label %for.end.for.body15_crit_edge

for.end.for.body15_crit_edge:                     ; preds = %for.end
  br label %for.body15

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.body15:                                       ; preds = %for.inc51.for.body15_crit_edge, %for.end.for.body15_crit_edge
  %i.1105 = phi i32 [ %inc52, %for.inc51.for.body15_crit_edge ], [ 0, %for.end.for.body15_crit_edge ]
  %pdiv.0104 = phi i32 [ %or, %for.inc51.for.body15_crit_edge ], [ %42, %for.end.for.body15_crit_edge ]
  %hotspot.0103 = phi i32 [ %hotspot.1, %for.inc51.for.body15_crit_edge ], [ %46, %for.end.for.body15_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.1105
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx, align 4
  %pdiv_mask = getelementptr inbounds %struct.tegra_tsensor_group, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %pdiv_mask to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pdiv_mask, align 4
  %neg = xor i32 %54, -1
  %and = and i32 %pdiv.0104, %neg
  %pdiv17 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %52, i32 0, i32 4
  %55 = ptrtoint ptr %pdiv17 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pdiv17, align 4
  %57 = tail call i32 @llvm.cttz.i32(i32 %54, i1 true), !range !391
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %iszero = icmp eq i32 %54, 0
  %sub = select i1 %iszero, i32 -1, i32 %57
  %shr = lshr i32 %54, %sub
  %and22 = and i32 %shr, %56
  %shl = shl i32 %and22, %sub
  %or = or i32 %shl, %and
  %id = getelementptr inbounds %struct.tegra_tsensor_group, ptr %52, i32 0, i32 1
  %58 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %59)
  %cmp29 = icmp eq i8 %59, 3
  br i1 %cmp29, label %for.body15.for.inc51_crit_edge, label %if.end

for.body15.for.inc51_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc51

if.end:                                           ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #12
  %pllx_hotspot_mask = getelementptr inbounds %struct.tegra_tsensor_group, ptr %52, i32 0, i32 8
  %60 = ptrtoint ptr %pllx_hotspot_mask to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pllx_hotspot_mask, align 4
  %neg32 = xor i32 %61, -1
  %and33 = and i32 %hotspot.0103, %neg32
  %pllx_hotspot_diff = getelementptr inbounds %struct.tegra_tsensor_group, ptr %52, i32 0, i32 7
  %62 = ptrtoint ptr %pllx_hotspot_diff to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pllx_hotspot_diff, align 4
  %64 = tail call i32 @llvm.cttz.i32(i32 %61, i1 true), !range !391
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %iszero39 = icmp eq i32 %61, 0
  %sub41 = select i1 %iszero39, i32 -1, i32 %64
  %shr42 = lshr i32 %61, %sub41
  %and43 = and i32 %shr42, %63
  %shl49 = shl i32 %and43, %sub41
  %or50 = or i32 %shl49, %and33
  br label %for.inc51

for.inc51:                                        ; preds = %if.end, %for.body15.for.inc51_crit_edge
  %hotspot.1 = phi i32 [ %hotspot.0103, %for.body15.for.inc51_crit_edge ], [ %or50, %if.end ]
  %inc52 = add nuw i32 %i.1105, 1
  %exitcond.not = icmp eq i32 %inc52, %50
  br i1 %exitcond.not, label %for.inc51.do.body_crit_edge, label %for.inc51.for.body15_crit_edge

for.inc51.for.body15_crit_edge:                   ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body15

for.inc51.do.body_crit_edge:                      ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %for.inc51.do.body_crit_edge, %for.end.do.body_crit_edge
  %hotspot.0.lcssa = phi i32 [ %46, %for.end.do.body_crit_edge ], [ %hotspot.1, %for.inc51.do.body_crit_edge ]
  %pdiv.0.lcssa = phi i32 [ %42, %for.end.do.body_crit_edge ], [ %or, %for.inc51.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !392
  tail call void @arm_heavy_mb() #10
  %65 = tail call i32 @llvm.bswap.i32(i32 %pdiv.0.lcssa)
  %66 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs, align 4
  %add.ptr55 = getelementptr i8, ptr %67, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %65) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  %68 = tail call i32 @llvm.bswap.i32(i32 %hotspot.0.lcssa)
  %69 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs, align 4
  %add.ptr60 = getelementptr i8, ptr %70, i32 452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %68) #10, !srcloc !385
  %71 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %driver_data.i.i, align 4
  %soc.i97 = getelementptr inbounds %struct.tegra_soctherm, ptr %72, i32 0, i32 10
  %73 = ptrtoint ptr %soc.i97 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %soc.i97, align 4
  %use_ccroc.i = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %74, i32 0, i32 7
  %75 = ptrtoint ptr %use_ccroc.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %use_ccroc.i, align 4, !range !381
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i = icmp eq i8 %76, 0
  br i1 %tobool.not.i, label %do.body.if.end.i_crit_edge, label %if.then.i

do.body.if.end.i_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %ccroc_regs.i.i.i = getelementptr inbounds %struct.tegra_soctherm, ptr %72, i32 0, i32 5
  %77 = ptrtoint ptr %ccroc_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ccroc_regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %78, i32 348
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !388
  %80 = shl i32 %79, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  %or8.i.i = or i32 %80, 65295
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !395
  tail call void @arm_heavy_mb() #10
  %81 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i) #10
  %82 = ptrtoint ptr %ccroc_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ccroc_regs.i.i.i, align 4
  %add.ptr.i40.i.i = getelementptr i8, ptr %83, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i.i, i32 %81) #10, !srcloc !385
  %84 = ptrtoint ptr %ccroc_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ccroc_regs.i.i.i, align 4
  %add.ptr.i42.i.i = getelementptr i8, ptr %85, i32 352
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i.i) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  %87 = and i32 %86, 65407
  %88 = or i32 %87, -8454016
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !395
  tail call void @arm_heavy_mb() #10
  %89 = ptrtoint ptr %ccroc_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ccroc_regs.i.i.i, align 4
  %add.ptr.i44.i.i = getelementptr i8, ptr %90, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i.i, i32 %88) #10, !srcloc !385
  %91 = ptrtoint ptr %ccroc_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ccroc_regs.i.i.i, align 4
  %add.ptr.i.i43.i = getelementptr i8, ptr %92, i32 360
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43.i) #10, !srcloc !388
  %94 = shl i32 %93, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  %or8.i44.i = or i32 %94, 65295
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !395
  tail call void @arm_heavy_mb() #10
  %95 = tail call i32 @llvm.bswap.i32(i32 %or8.i44.i) #10
  %96 = ptrtoint ptr %ccroc_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ccroc_regs.i.i.i, align 4
  %add.ptr.i40.i45.i = getelementptr i8, ptr %97, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i45.i, i32 %95) #10, !srcloc !385
  %98 = ptrtoint ptr %ccroc_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ccroc_regs.i.i.i, align 4
  %add.ptr.i42.i46.i = getelementptr i8, ptr %99, i32 364
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i46.i) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  %101 = and i32 %100, 65407
  %102 = or i32 %101, -12648320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !395
  tail call void @arm_heavy_mb() #10
  %103 = ptrtoint ptr %ccroc_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ccroc_regs.i.i.i, align 4
  %add.ptr.i44.i48.i = getelementptr i8, ptr %104, i32 364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i48.i, i32 %102) #10, !srcloc !385
  %105 = ptrtoint ptr %ccroc_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ccroc_regs.i.i.i, align 4
  %add.ptr.i.i50.i = getelementptr i8, ptr %106, i32 372
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50.i) #10, !srcloc !388
  %108 = shl i32 %107, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  %or8.i51.i = or i32 %108, 65295
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !395
  tail call void @arm_heavy_mb() #10
  %109 = tail call i32 @llvm.bswap.i32(i32 %or8.i51.i) #10
  %110 = ptrtoint ptr %ccroc_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ccroc_regs.i.i.i, align 4
  %add.ptr.i40.i52.i = getelementptr i8, ptr %111, i32 372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i52.i, i32 %109) #10, !srcloc !385
  %112 = ptrtoint ptr %ccroc_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ccroc_regs.i.i.i, align 4
  %add.ptr.i42.i53.i = getelementptr i8, ptr %113, i32 376
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i53.i) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  %115 = and i32 %114, 65407
  %116 = or i32 %115, -13500288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !395
  tail call void @arm_heavy_mb() #10
  %117 = ptrtoint ptr %ccroc_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ccroc_regs.i.i.i, align 4
  %add.ptr.i44.i55.i = getelementptr i8, ptr %118, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i55.i, i32 %116) #10, !srcloc !385
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body.if.end.i_crit_edge
  %regs.i.i.i = getelementptr inbounds %struct.tegra_soctherm, ptr %72, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %soctherm_throttle_program.exit.i.for.body.i_crit_edge, %if.end.i
  %i.062.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %soctherm_throttle_program.exit.i.for.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.tegra_soctherm, ptr %72, i32 0, i32 11, i32 %i.062.i
  %stc.sroa.4.0.arrayidx.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 8
  %119 = ptrtoint ptr %stc.sroa.4.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %stc.sroa.4.0.copyload.i.i = load i8, ptr %stc.sroa.4.0.arrayidx.sroa_idx.i.i, align 4
  %stc.sroa.738.0.arrayidx.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 48
  %120 = ptrtoint ptr %stc.sroa.738.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %stc.sroa.738.0.copyload.i.i = load i8, ptr %stc.sroa.738.0.arrayidx.sroa_idx.i.i, align 4
  %121 = and i8 %stc.sroa.738.0.copyload.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool.not.i.i = icmp eq i8 %121, 0
  br i1 %tobool.not.i.i, label %for.body.i.soctherm_throttle_program.exit.i_crit_edge, label %if.end.i.i

for.body.i.soctherm_throttle_program.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %soctherm_throttle_program.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.062.i)
  %cmp.i.i = icmp ugt i32 %i.062.i, 1
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i.i.if.end3.i.i_crit_edge

if.end.i.i.if.end3.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %mode.i.i.i = getelementptr %struct.tegra_soctherm, ptr %72, i32 0, i32 11, i32 %i.062.i, i32 6, i32 4
  %122 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %mode.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp.i.i.i = icmp eq i32 %123, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.soctherm_throttle_program.exit.i_crit_edge, label %if.end.i.i.i

land.lhs.true.i.i.soctherm_throttle_program.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %soctherm_throttle_program.exit.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i
  %oc_cfg.i.i.i = getelementptr %struct.tegra_soctherm, ptr %72, i32 0, i32 11, i32 %i.062.i, i32 6
  %and2.i.i.i = shl i32 %123, 26
  %shl.i.i.i = and i32 %and2.i.i.i, 201326592
  %124 = ptrtoint ptr %oc_cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %oc_cfg.i.i.i, align 4
  %and4.i.i.i = shl i32 %125, 25
  %shl5.i.i.i = and i32 %and4.i.i.i, 33554432
  %or.i.i.i = or i32 %shl.i.i.i, %shl5.i.i.i
  %or8.i.i.i = or i32 %or.i.i.i, 553648128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !396
  tail call void @arm_heavy_mb() #10
  %126 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regs.i.i.i, align 4
  %128 = mul nuw nsw i32 %i.062.i, 20
  %add.i.i.i = add nuw nsw i32 %128, 744
  %add.ptr.i.i56.i = getelementptr i8, ptr %127, i32 %add.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i56.i, i32 %or8.i.i.i) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !397
  tail call void @arm_heavy_mb() #10
  %throt_period.i.i.i = getelementptr %struct.tegra_soctherm, ptr %72, i32 0, i32 11, i32 %i.062.i, i32 6, i32 1
  %129 = ptrtoint ptr %throt_period.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %throt_period.i.i.i, align 4
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #10
  %132 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs.i.i.i, align 4
  %add15.i.i.i = add nuw nsw i32 %128, 752
  %add.ptr16.i.i.i = getelementptr i8, ptr %133, i32 %add15.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i.i, i32 %131) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !398
  tail call void @arm_heavy_mb() #10
  %alarm_cnt_thresh.i.i.i = getelementptr %struct.tegra_soctherm, ptr %72, i32 0, i32 11, i32 %i.062.i, i32 6, i32 2
  %134 = ptrtoint ptr %alarm_cnt_thresh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %alarm_cnt_thresh.i.i.i, align 4
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #10
  %137 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regs.i.i.i, align 4
  %add23.i.i.i = add nuw nsw i32 %128, 748
  %add.ptr24.i.i.i = getelementptr i8, ptr %138, i32 %add23.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i.i.i, i32 %136) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !399
  tail call void @arm_heavy_mb() #10
  %alarm_filter.i.i.i = getelementptr %struct.tegra_soctherm, ptr %72, i32 0, i32 11, i32 %i.062.i, i32 6, i32 3
  %139 = ptrtoint ptr %alarm_filter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %alarm_filter.i.i.i, align 4
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #10
  %142 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regs.i.i.i, align 4
  %add31.i.i.i = add nuw nsw i32 %128, 760
  %add.ptr32.i.i.i = getelementptr i8, ptr %143, i32 %add31.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i.i.i, i32 %141) #10, !srcloc !385
  %intr_en.i.i.i = getelementptr %struct.tegra_soctherm, ptr %72, i32 0, i32 11, i32 %i.062.i, i32 6, i32 5
  %144 = ptrtoint ptr %intr_en.i.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %intr_en.i.i.i, align 4, !range !381
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool.not.i.i.i = icmp eq i8 %145, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.if.end3.i.i_crit_edge, label %if.end.i.i.i.i

if.end.i.i.i.if.end3.i.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i.i
  %146 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %147, i32 928
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #10, !srcloc !388
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %150 = zext i32 %i.062.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.062.i, label %if.end.i.i.i.i.do.body.i.i.i.i_crit_edge [
    i32 2, label %sw.bb.i.i.i.i
    i32 3, label %sw.bb2.i.i.i.i
    i32 4, label %sw.bb5.i.i.i.i
    i32 5, label %sw.bb8.i.i.i.i
  ]

if.end.i.i.i.i.do.body.i.i.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i

sw.bb.i.i.i.i:                                    ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i.i.i.i = or i32 %149, 1
  br label %do.body.i.i.i.i

sw.bb2.i.i.i.i:                                   ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or4.i.i.i.i = or i32 %149, 2
  br label %do.body.i.i.i.i

sw.bb5.i.i.i.i:                                   ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or7.i.i.i.i = or i32 %149, 4
  br label %do.body.i.i.i.i

sw.bb8.i.i.i.i:                                   ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or10.i.i.i.i = or i32 %149, 8
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %sw.bb8.i.i.i.i, %sw.bb5.i.i.i.i, %sw.bb2.i.i.i.i, %sw.bb.i.i.i.i, %if.end.i.i.i.i.do.body.i.i.i.i_crit_edge
  %r.0.i.i.i.i = phi i32 [ %or10.i.i.i.i, %sw.bb8.i.i.i.i ], [ %or7.i.i.i.i, %sw.bb5.i.i.i.i ], [ %or4.i.i.i.i, %sw.bb2.i.i.i.i ], [ %or.i.i.i.i, %sw.bb.i.i.i.i ], [ 0, %if.end.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %151 = tail call i32 @llvm.bswap.i32(i32 %r.0.i.i.i.i) #10
  %152 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr12.i.i.i.i = getelementptr i8, ptr %153, i32 928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i.i.i, i32 %151) #10, !srcloc !385
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %do.body.i.i.i.i, %if.end.i.i.i.if.end3.i.i_crit_edge, %if.end.i.i.if.end3.i.i_crit_edge
  %154 = ptrtoint ptr %soc.i97 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %soc.i97, align 4
  %use_ccroc.i.i = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %155, i32 0, i32 7
  %156 = ptrtoint ptr %use_ccroc.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %use_ccroc.i.i, align 4, !range !381
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool4.not.i.i = icmp eq i8 %157, 0
  br i1 %tobool4.not.i.i, label %if.else.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end3.i.i
  %cpu_throt_level.i.i.i = getelementptr %struct.tegra_soctherm, ptr %72, i32 0, i32 11, i32 %i.062.i, i32 3
  %158 = ptrtoint ptr %cpu_throt_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %cpu_throt_level.i.i.i, align 1
  %switch.tableidx = add i8 %159, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %160 = icmp ult i8 %switch.tableidx, 3
  br i1 %160, label %switch.lookup, label %if.then5.i.i.throttlectl_cpu_level_select.exit.i.i_crit_edge

if.then5.i.i.throttlectl_cpu_level_select.exit.i.i_crit_edge: ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %throttlectl_cpu_level_select.exit.i.i

switch.lookup:                                    ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %161 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.soctherm_init, i32 0, i32 %161
  %162 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %162)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %throttlectl_cpu_level_select.exit.i.i

throttlectl_cpu_level_select.exit.i.i:            ; preds = %switch.lookup, %if.then5.i.i.throttlectl_cpu_level_select.exit.i.i_crit_edge
  %throt_vect.0.i.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.then5.i.i.throttlectl_cpu_level_select.exit.i.i_crit_edge ]
  %163 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regs.i.i.i, align 4
  %mul.i.i.i = mul nuw nsw i32 %i.062.i, 48
  %add.i62.i.i = add nuw nsw i32 %mul.i.i.i, 1072
  %add.ptr.i63.i.i = getelementptr i8, ptr %164, i32 %add.i62.i.i
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63.i.i) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %shl.i64.i.i = shl nuw nsw i32 %throt_vect.0.i.i.i, 8
  %166 = and i32 %165, -117899393
  %167 = or i32 %166, 128
  %168 = tail call i32 @llvm.bswap.i32(i32 %167) #10
  %and8.i.i.i = or i32 %168, %shl.i64.i.i
  %or11.i.i.i = or i32 %and8.i.i.i, %throt_vect.0.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  tail call void @arm_heavy_mb() #10
  %169 = tail call i32 @llvm.bswap.i32(i32 %or11.i.i.i) #10
  %170 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr16.i65.i.i = getelementptr i8, ptr %171, i32 %add.i62.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i65.i.i, i32 %169) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !404
  tail call void @arm_heavy_mb() #10
  %172 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regs.i.i.i, align 4
  %add22.i.i.i = add nuw nsw i32 %mul.i.i.i, 1076
  %add.ptr24.i66.i.i = getelementptr i8, ptr %173, i32 %add22.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i66.i.i, i32 128) #10, !srcloc !385
  br label %if.end6.i.i

if.else.i.i:                                      ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %cpu_throt_depth.i.i.i = getelementptr %struct.tegra_soctherm, ptr %72, i32 0, i32 11, i32 %i.062.i, i32 4
  %174 = ptrtoint ptr %cpu_throt_depth.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %cpu_throt_depth.i.i.i, align 4
  %.neg.i.i.i = mul i32 %175, -256
  %mul.i67.i.i = add i32 %.neg.i.i.i, 25600
  %div.i.i.i = sdiv i32 %mul.i67.i.i, 100
  %176 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %regs.i.i.i, align 4
  %mul2.i.i.i = mul nuw nsw i32 %i.062.i, 48
  %add.i69.i.i = add nuw nsw i32 %mul2.i.i.i, 1072
  %add.ptr.i70.i.i = getelementptr i8, ptr %177, i32 %add.i69.i.i
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70.i.i) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !405
  %conv.i.i.i = shl i32 %div.i.i.i, 8
  %conv6.i.i.i = add i32 %conv.i.i.i, 65280
  %shl.i71.i.i = and i32 %conv6.i.i.i, 65280
  %179 = and i32 %178, 65407
  %180 = or i32 %179, -16777088
  %181 = tail call i32 @llvm.bswap.i32(i32 %180) #10
  %or10.i.i.i = or i32 %shl.i71.i.i, %181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !406
  tail call void @arm_heavy_mb() #10
  %182 = tail call i32 @llvm.bswap.i32(i32 %or10.i.i.i) #10
  %183 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr15.i.i.i = getelementptr i8, ptr %184, i32 %add.i69.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i.i, i32 %182) #10, !srcloc !385
  %185 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %regs.i.i.i, align 4
  %add20.i.i.i = add nuw nsw i32 %mul2.i.i.i, 1076
  %add.ptr22.i.i.i = getelementptr i8, ptr %186, i32 %add20.i.i.i
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i.i.i) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !407
  %188 = and i32 %187, 255
  %189 = or i32 %188, 268369920
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !408
  tail call void @arm_heavy_mb() #10
  %190 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr37.i.i.i = getelementptr i8, ptr %191, i32 %add20.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i.i.i, i32 %189) #10, !srcloc !385
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.else.i.i, %throttlectl_cpu_level_select.exit.i.i
  %mul.i73.pre-phi.i.i = phi i32 [ %mul2.i.i.i, %if.else.i.i ], [ %mul.i.i.i, %throttlectl_cpu_level_select.exit.i.i ]
  %gpu_throt_level.i.i.i = getelementptr %struct.tegra_soctherm, ptr %72, i32 0, i32 11, i32 %i.062.i, i32 5
  %192 = ptrtoint ptr %gpu_throt_level.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %gpu_throt_level.i.i.i, align 4
  %194 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %regs.i.i.i, align 4
  %add1.i.i.i = add i32 %mul.i73.pre-phi.i.i, 1080
  %add.ptr.i74.i.i = getelementptr i8, ptr %195, i32 %add1.i.i.i
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74.i.i) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !409
  %197 = and i32 %196, -1921
  %198 = or i32 %197, 128
  %199 = tail call i32 @llvm.bswap.i32(i32 %198) #10
  %sub.i.i.i = shl i32 -65536, %193
  %and4.i75.i.i = and i32 %sub.i.i.i, 458752
  %200 = or i32 %199, %and4.i75.i.i
  %or6.i.i.i = xor i32 %200, 458752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !410
  tail call void @arm_heavy_mb() #10
  %201 = tail call i32 @llvm.bswap.i32(i32 %or6.i.i.i) #10
  %202 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr11.i.i.i = getelementptr i8, ptr %203, i32 %add1.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i.i.i, i32 %201) #10, !srcloc !385
  %conv.i.i = zext i8 %stc.sroa.4.0.copyload.i.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !411
  tail call void @arm_heavy_mb() #10
  %204 = shl nuw i32 %conv.i.i, 24
  %205 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %regs.i.i.i, align 4
  %add.i.i = add i32 %mul.i73.pre-phi.i.i, 1092
  %add.ptr.i.i = getelementptr i8, ptr %206, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %204) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !412
  tail call void @arm_heavy_mb() #10
  %207 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %regs.i.i.i, align 4
  %add12.i.i = add i32 %mul.i73.pre-phi.i.i, 1096
  %add.ptr13.i.i = getelementptr i8, ptr %208, i32 %add12.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i, i32 0) #10, !srcloc !385
  %209 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr15.i.i = getelementptr i8, ptr %210, i32 1060
  %211 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i.i) #10, !srcloc !388
  %212 = lshr i32 %211, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !413
  call void @__sanitizer_cov_trace_cmp4(i32 %212, i32 %conv.i.i)
  %cmp21.not.i.i = icmp ult i32 %212, %conv.i.i
  br i1 %cmp21.not.i.i, label %if.end24.i.i, label %if.end6.i.i.soctherm_throttle_program.exit.i_crit_edge

if.end6.i.i.soctherm_throttle_program.exit.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %soctherm_throttle_program.exit.i

if.end24.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !414
  tail call void @arm_heavy_mb() #10
  %213 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr34.i.i = getelementptr i8, ptr %214, i32 1060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i.i, i32 %204) #10, !srcloc !385
  br label %soctherm_throttle_program.exit.i

soctherm_throttle_program.exit.i:                 ; preds = %if.end24.i.i, %if.end6.i.i.soctherm_throttle_program.exit.i_crit_edge, %land.lhs.true.i.i.soctherm_throttle_program.exit.i_crit_edge, %for.body.i.soctherm_throttle_program.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.062.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 7
  br i1 %exitcond.not.i, label %for.end.i, label %soctherm_throttle_program.exit.i.for.body.i_crit_edge

soctherm_throttle_program.exit.i.for.body.i_crit_edge: ; preds = %soctherm_throttle_program.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %soctherm_throttle_program.exit.i
  %215 = ptrtoint ptr %soc.i97 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %soc.i97, align 4
  %use_ccroc2.i = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %216, i32 0, i32 7
  %217 = ptrtoint ptr %use_ccroc2.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %use_ccroc2.i, align 4, !range !381
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool3.not.i = icmp eq i8 %218, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool3.not.i, label %do.body.i, label %if.then4.i

if.then4.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %ccroc_regs.i.i = getelementptr inbounds %struct.tegra_soctherm, ptr %72, i32 0, i32 5
  %219 = ptrtoint ptr %ccroc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %ccroc_regs.i.i, align 4
  %add.ptr.i57.i = getelementptr i8, ptr %220, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i, i32 16777216) #10, !srcloc !385
  %221 = ptrtoint ptr %ccroc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %ccroc_regs.i.i, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %222, i32 36
  %223 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.i) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  %224 = or i32 %223, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !395
  tail call void @arm_heavy_mb() #10
  %225 = ptrtoint ptr %ccroc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %ccroc_regs.i.i, align 4
  %add.ptr.i61.i = getelementptr i8, ptr %226, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 %224) #10, !srcloc !385
  br label %tegra_soctherm_throttle.exit

do.body.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %227 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i98 = getelementptr i8, ptr %228, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98, i32 16777216) #10, !srcloc !385
  %clk_regs.i = getelementptr inbounds %struct.tegra_soctherm, ptr %72, i32 0, i32 4
  %229 = ptrtoint ptr %clk_regs.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %clk_regs.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %230, i32 876
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !415
  %232 = or i32 %231, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !416
  tail call void @arm_heavy_mb() #10
  %233 = ptrtoint ptr %clk_regs.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %clk_regs.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %234, i32 876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %232) #10, !srcloc !385
  br label %tegra_soctherm_throttle.exit

tegra_soctherm_throttle.exit:                     ; preds = %do.body.i, %if.then4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !417
  tail call void @arm_heavy_mb() #10
  %235 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %236, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 251658240) #10, !srcloc !385
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_soctherm_set_hwtrips(ptr noundef %dev, ptr noundef %sg, ptr noundef %tz) unnamed_addr #2 align 64 {
entry:
  %type.i = alloca i32, align 4
  %temperature = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temperature) #10
  %id = getelementptr inbounds %struct.tegra_tsensor_group, ptr %sg, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 4
  %soc.i = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc.i, align 4
  %thermtrips.i = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %thermtrips.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %thermtrips.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp.i = icmp ugt i8 %3, 3
  %tobool.not.i = icmp eq ptr %7, null
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %entry.tsensor_group_thermtrip_get.exit.thread_crit_edge, label %for.cond.preheader.i

entry.tsensor_group_thermtrip_get.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tsensor_group_thermtrip_get.exit.thread

for.cond.preheader.i:                             ; preds = %entry
  %num_ttgs.i = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %num_ttgs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_ttgs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp323.not.i = icmp eq i32 %9, 0
  br i1 %cmp323.not.i, label %for.cond.preheader.i.tsensor_group_thermtrip_get.exit.thread_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.tsensor_group_thermtrip_get.exit.thread_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tsensor_group_thermtrip_get.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.tsensor_group_thermtrips, ptr %7, i32 %i.024.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %3)
  %cmp5.i = icmp eq i8 %11, %3
  br i1 %cmp5.i, label %tsensor_group_thermtrip_get.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.inc.i.tsensor_group_thermtrip_get.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.tsensor_group_thermtrip_get.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tsensor_group_thermtrip_get.exit.thread

tsensor_group_thermtrip_get.exit.thread:          ; preds = %for.inc.i.tsensor_group_thermtrip_get.exit.thread_crit_edge, %for.cond.preheader.i.tsensor_group_thermtrip_get.exit.thread_crit_edge, %entry.tsensor_group_thermtrip_get.exit.thread_crit_edge
  %12 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -127000, ptr %temperature, align 4
  br label %if.then

tsensor_group_thermtrip_get.exit:                 ; preds = %for.body.i
  %temp9.i = getelementptr %struct.tsensor_group_thermtrips, ptr %7, i32 %i.024.i, i32 1
  %13 = ptrtoint ptr %temp9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %temp9.i, align 4
  %15 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %temperature, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127000, i32 %14)
  %cmp = icmp eq i32 %14, -127000
  br i1 %cmp, label %tsensor_group_thermtrip_get.exit.if.then_crit_edge, label %tsensor_group_thermtrip_get.exit.if.end5_crit_edge

tsensor_group_thermtrip_get.exit.if.end5_crit_edge: ; preds = %tsensor_group_thermtrip_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

tsensor_group_thermtrip_get.exit.if.then_crit_edge: ; preds = %tsensor_group_thermtrip_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %tsensor_group_thermtrip_get.exit.if.then_crit_edge, %tsensor_group_thermtrip_get.exit.thread
  %ops = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 20
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %get_crit_temp = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %get_crit_temp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_crit_temp, align 4
  %call3 = call i32 %19(ptr noundef %tz, ptr noundef nonnull %temperature) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %if.then4

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 127000, ptr %temperature, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then.if.end5_crit_edge, %tsensor_group_thermtrip_get.exit.if.end5_crit_edge
  %21 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %temperature, align 4
  %call6 = call fastcc i32 @thermtrip_program(ptr noundef %dev, ptr noundef %sg, i32 noundef %22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %23 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sg, align 4
  br i1 %tobool7.not, label %do.end12, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.76, ptr noundef %24) #13
  br label %cleanup55

do.end12:                                         ; preds = %if.end5
  %25 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %temperature, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.79, ptr noundef %24, i32 noundef %26) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.i) #10
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %type.i, align 4, !annotation !383
  %call.i = call i32 @of_thermal_get_ntrips(ptr noundef %tz) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i92 = icmp sgt i32 %call.i, 0
  br i1 %cmp.i92, label %for.body.lr.ph.i, label %do.end12.do.end19_crit_edge

do.end12.do.end19_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

for.body.lr.ph.i:                                 ; preds = %do.end12
  %ops.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 20
  br label %for.body.i94

for.body.i94:                                     ; preds = %for.inc.i98.for.body.i94_crit_edge, %for.body.lr.ph.i
  %i.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i96, %for.inc.i98.for.body.i94_crit_edge ]
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 4
  %get_trip_type.i = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %get_trip_type.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_trip_type.i, align 4
  %call2.i = call i32 %31(ptr noundef %tz, i32 noundef %i.029.i, ptr noundef nonnull %type.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i93 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i93, label %if.end4.i, label %for.body.i94.do.end19_crit_edge

for.body.i94.do.end19_crit_edge:                  ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

if.end4.i:                                        ; preds = %for.body.i94
  %32 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp5.i95 = icmp eq i32 %33, 2
  br i1 %cmp5.i95, label %if.then6.i, label %for.inc.i98

if.then6.i:                                       ; preds = %if.end4.i
  %34 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i, align 4
  %get_trip_temp.i = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %get_trip_temp.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %get_trip_temp.i, align 4
  %call8.i = call i32 %37(ptr noundef %tz, i32 noundef %i.029.i, ptr noundef nonnull %temperature) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %get_hot_temp.exit, label %if.then6.i.do.end19_crit_edge

if.then6.i.do.end19_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

for.inc.i98:                                      ; preds = %if.end4.i
  %inc.i96 = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i97 = icmp eq i32 %inc.i96, %call.i
  br i1 %exitcond.not.i97, label %for.inc.i98.do.end19_crit_edge, label %for.inc.i98.for.body.i94_crit_edge

for.inc.i98.for.body.i94_crit_edge:               ; preds = %for.inc.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i94

for.inc.i98.do.end19_crit_edge:                   ; preds = %for.inc.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

get_hot_temp.exit:                                ; preds = %if.then6.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #10
  %init = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 0, i32 8
  %38 = ptrtoint ptr %init to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %init, align 4, !range !381
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool24.not = icmp eq i8 %39, 0
  br i1 %tobool24.not, label %get_hot_temp.exit.for.inc_crit_edge, label %if.end26

get_hot_temp.exit.for.inc_crit_edge:              ; preds = %get_hot_temp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end19:                                         ; preds = %for.inc.i98.do.end19_crit_edge, %if.then6.i.do.end19_crit_edge, %for.body.i94.do.end19_crit_edge, %do.end12.do.end19_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #10
  %40 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sg, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.82, ptr noundef %41) #13
  br label %cleanup55

if.end26:                                         ; preds = %get_hot_temp.exit
  %cdev29 = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 0, i32 7
  %42 = ptrtoint ptr %cdev29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cdev29, align 4
  %call30 = call ptr @get_thermal_instance(ptr noundef %tz, ptr noundef %43, i32 noundef %i.029.i) #10
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.end26.for.inc_crit_edge, label %if.end26.if.then32_crit_edge

if.end26.if.then32_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then32:                                        ; preds = %if.end26.1.if.then32_crit_edge, %if.end26.if.then32_crit_edge
  %.lcssa = phi ptr [ %43, %if.end26.if.then32_crit_edge ], [ %59, %if.end26.1.if.then32_crit_edge ]
  %type = getelementptr inbounds %struct.thermal_cooling_device, ptr %.lcssa, i32 0, i32 1
  %44 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %type, align 4
  %arrayidx13.i = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 0
  %46 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx13.i, align 4
  %tobool.not14.i = icmp eq ptr %47, null
  br i1 %tobool.not14.i, label %if.then32.find_throttle_cfg_by_name.exit_crit_edge, label %for.body.i104.preheader

if.then32.find_throttle_cfg_by_name.exit_crit_edge: ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_throttle_cfg_by_name.exit

for.body.i104.preheader:                          ; preds = %if.then32
  %call.i103121 = call i32 @strcmp(ptr noundef nonnull %47, ptr noundef %45) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103121)
  %tobool5.not.i122 = icmp eq i32 %call.i103121, 0
  br i1 %tobool5.not.i122, label %for.body.i104.preheader.find_throttle_cfg_by_name.exit_crit_edge, label %for.body.i104.preheader.for.cond.i_crit_edge

for.body.i104.preheader.for.cond.i_crit_edge:     ; preds = %for.body.i104.preheader
  br label %for.cond.i

for.body.i104.preheader.find_throttle_cfg_by_name.exit_crit_edge: ; preds = %for.body.i104.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_throttle_cfg_by_name.exit

for.cond.i:                                       ; preds = %for.body.i104.for.cond.i_crit_edge, %for.body.i104.preheader.for.cond.i_crit_edge
  %i.015.i123 = phi i32 [ %inc.i100, %for.body.i104.for.cond.i_crit_edge ], [ 0, %for.body.i104.preheader.for.cond.i_crit_edge ]
  %inc.i100 = add i32 %i.015.i123, 1
  %arrayidx.i101 = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 %inc.i100
  %48 = ptrtoint ptr %arrayidx.i101 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i101, align 4
  %tobool.not.i102 = icmp eq ptr %49, null
  br i1 %tobool.not.i102, label %for.cond.i.find_throttle_cfg_by_name.exit_crit_edge, label %for.body.i104

for.cond.i.find_throttle_cfg_by_name.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_throttle_cfg_by_name.exit

for.body.i104:                                    ; preds = %for.cond.i
  %call.i103 = call i32 @strcmp(ptr noundef nonnull %49, ptr noundef %45) #14
  %tobool5.not.i = icmp eq i32 %call.i103, 0
  br i1 %tobool5.not.i, label %for.body.i104.find_throttle_cfg_by_name.exit_crit_edge, label %for.body.i104.for.cond.i_crit_edge

for.body.i104.for.cond.i_crit_edge:               ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

for.body.i104.find_throttle_cfg_by_name.exit_crit_edge: ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_throttle_cfg_by_name.exit

find_throttle_cfg_by_name.exit:                   ; preds = %for.body.i104.find_throttle_cfg_by_name.exit_crit_edge, %for.cond.i.find_throttle_cfg_by_name.exit_crit_edge, %for.body.i104.preheader.find_throttle_cfg_by_name.exit_crit_edge, %if.then32.find_throttle_cfg_by_name.exit_crit_edge
  %retval.0.i105 = phi ptr [ null, %if.then32.find_throttle_cfg_by_name.exit_crit_edge ], [ %arrayidx13.i, %for.body.i104.preheader.find_throttle_cfg_by_name.exit_crit_edge ], [ %arrayidx.i101, %for.body.i104.find_throttle_cfg_by_name.exit_crit_edge ], [ null, %for.cond.i.find_throttle_cfg_by_name.exit_crit_edge ]
  %50 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %temperature, align 4
  %call35 = call fastcc i32 @throttrip_program(ptr noundef %dev, ptr noundef %sg, ptr noundef %retval.0.i105, i32 noundef %51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  %52 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sg, align 4
  br i1 %tobool36.not, label %cleanup, label %cleanup.thread114

cleanup.thread114:                                ; preds = %find_throttle_cfg_by_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.85, ptr noundef %53) #13
  br label %cleanup55

cleanup:                                          ; preds = %find_throttle_cfg_by_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %temperature, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.88, ptr noundef %53, i32 noundef %55) #13
  br label %cleanup55

for.inc:                                          ; preds = %if.end26.for.inc_crit_edge, %get_hot_temp.exit.for.inc_crit_edge
  %init.1 = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 1, i32 8
  %56 = ptrtoint ptr %init.1 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %init.1, align 4, !range !381
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool24.not.1 = icmp eq i8 %57, 0
  br i1 %tobool24.not.1, label %for.inc.cleanup55_crit_edge, label %if.end26.1

for.inc.cleanup55_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup55

if.end26.1:                                       ; preds = %for.inc
  %cdev29.1 = getelementptr %struct.tegra_soctherm, ptr %1, i32 0, i32 11, i32 1, i32 7
  %58 = ptrtoint ptr %cdev29.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cdev29.1, align 4
  %call30.1 = call ptr @get_thermal_instance(ptr noundef %tz, ptr noundef %59, i32 noundef %i.029.i) #10
  %tobool31.not.1 = icmp eq ptr %call30.1, null
  br i1 %tobool31.not.1, label %if.end26.1.cleanup55_crit_edge, label %if.end26.1.if.then32_crit_edge

if.end26.1.if.then32_crit_edge:                   ; preds = %if.end26.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

if.end26.1.cleanup55_crit_edge:                   ; preds = %if.end26.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup55

cleanup55:                                        ; preds = %if.end26.1.cleanup55_crit_edge, %for.inc.cleanup55_crit_edge, %cleanup, %cleanup.thread114, %do.end19, %do.end
  %retval.2 = phi i32 [ %call6, %do.end ], [ 0, %do.end19 ], [ %call35, %cleanup.thread114 ], [ 0, %cleanup ], [ 0, %if.end26.1.cleanup55_crit_edge ], [ 0, %for.inc.cleanup55_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temperature) #10
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @soctherm_interrupts_init(ptr noundef %pdev, ptr noundef %tegra) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call fastcc i32 @soctherm_oc_int_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.93) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  %thermal_irq = getelementptr inbounds %struct.tegra_soctherm, ptr %tegra, i32 0, i32 6
  %2 = ptrtoint ptr %thermal_irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2, ptr %thermal_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp4 = icmp slt i32 %call2, 0
  br i1 %cmp4, label %do.body6, label %if.end15

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @soctherm_interrupts_init.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@soctherm_interrupts_init, %if.then10)) #10
          to label %cleanup [label %if.then10], !srcloc !418

if.then10:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @soctherm_interrupts_init.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.95) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call16 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #10
  %edp_irq = getelementptr inbounds %struct.tegra_soctherm, ptr %tegra, i32 0, i32 7
  %3 = ptrtoint ptr %edp_irq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call16, ptr %edp_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp18 = icmp slt i32 %call16, 0
  br i1 %cmp18, label %do.body20, label %if.end37

do.body20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @soctherm_interrupts_init.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@soctherm_interrupts_init, %if.then32)) #10
          to label %cleanup [label %if.then32], !srcloc !418

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @soctherm_interrupts_init.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.96) #10
  br label %cleanup

if.end37:                                         ; preds = %if.end15
  %4 = ptrtoint ptr %thermal_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %thermal_irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end37.dev_name.exit_crit_edge

if.end37.dev_name.exit_crit_edge:                 ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end37.dev_name.exit_crit_edge
  %retval.0.i4 = phi ptr [ %9, %if.end.i ], [ %7, %if.end37.dev_name.exit_crit_edge ]
  %call42 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %5, ptr noundef nonnull @soctherm_thermal_isr, ptr noundef nonnull @soctherm_thermal_isr_thread, i32 noundef 8192, ptr noundef %retval.0.i4, ptr noundef %tegra) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %do.end47, label %if.end49

do.end47:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.98) #13
  br label %cleanup

if.end49:                                         ; preds = %dev_name.exit
  %10 = ptrtoint ptr %edp_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %edp_irq, align 4
  %call52 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %11, ptr noundef nonnull @soctherm_edp_isr, ptr noundef nonnull @soctherm_edp_isr_thread, i32 noundef 8192, ptr noundef nonnull @.str.100, ptr noundef %tegra) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %do.end57, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end57:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.102) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end57, %if.end49.cleanup_crit_edge, %do.end47, %if.then32, %do.body20, %if.then10, %do.body6, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @soctherm_debug_init(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.16, ptr noundef null) #10
  %debugfs_dir = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %debugfs_dir, align 4
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.125, i16 noundef zeroext 420, ptr noundef %call1, ptr noundef %pdev, ptr noundef nonnull @regs_fops) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_of_cooling_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @throt_get_cdev_max_state(ptr nocapture noundef readnone %cdev, ptr nocapture noundef writeonly %max_state) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %max_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %max_state, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @throt_get_cdev_cur_state(ptr nocapture noundef readonly %cdev, ptr nocapture noundef writeonly %cur_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %regs = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1064
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  %5 = and i32 %4, -267452416
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp ne i32 %5, 0
  %. = zext i1 %tobool.not to i32
  %6 = ptrtoint ptr %cur_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %., ptr %cur_state, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @throt_set_cdev_state(ptr nocapture noundef readnone %cdev, i32 noundef %cur_state) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_thermctl_get_temp(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %out_temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10, !srcloc !388
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !420
  %sg = getelementptr inbounds %struct.tegra_thermctl_zone, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg, align 4
  %sensor_temp_mask = getelementptr inbounds %struct.tegra_tsensor_group, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %sensor_temp_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sensor_temp_mask, align 4
  %and = and i32 %7, %3
  %8 = tail call i32 @llvm.cttz.i32(i32 %7, i1 true), !range !391
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %iszero = icmp eq i32 %7, 0
  %sub = select i1 %iszero, i32 -1, i32 %8
  %shr = lshr i32 %and, %sub
  %conv.i = lshr i32 %shr, 8
  %9 = and i32 %conv.i, 255
  %mul.i = mul nuw nsw i32 %9, 1000
  %and2.i = and i32 %shr, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  %add.i = add nuw nsw i32 %mul.i, 500
  %spec.select.i = select i1 %tobool.not.i, i32 %mul.i, i32 %add.i
  %and4.i = and i32 %shr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %mul7.i = sub nsw i32 0, %spec.select.i
  %t.1.i = select i1 %tobool5.not.i, i32 %spec.select.i, i32 %mul7.i
  %10 = ptrtoint ptr %out_temp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %t.1.i, ptr %out_temp, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_thermctl_get_trend(ptr nocapture noundef readonly %data, i32 noundef %trip, ptr nocapture noundef writeonly %trend) #2 align 64 {
entry:
  %trip_temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tz1 = getelementptr inbounds %struct.tegra_thermctl_zone, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %tz1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tz1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trip_temp) #10
  %2 = ptrtoint ptr %trip_temp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %trip_temp, align 4, !annotation !383
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 20
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %get_trip_temp = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %get_trip_temp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_trip_temp, align 4
  %call = call i32 %6(ptr noundef nonnull %1, i32 noundef %trip, ptr noundef nonnull %trip_temp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %temperature = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %temperature, align 8
  %last_temperature = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %last_temperature to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %last_temperature, align 4
  %11 = ptrtoint ptr %trip_temp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %trip_temp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %12)
  %cmp = icmp sgt i32 %8, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp11.not = icmp sge i32 %8, %10
  %. = zext i1 %cmp11.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %12)
  %cmp15 = icmp slt i32 %8, %12
  %.37 = select i1 %cmp15, i32 2, i32 0
  %.sink = select i1 %cmp, i32 %., i32 %.37
  %13 = ptrtoint ptr %trend to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %trend, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trip_temp) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_thermctl_set_trips(ptr nocapture noundef readonly %data, i32 noundef %lo, i32 noundef %hi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ts.i = getelementptr inbounds %struct.tegra_thermctl_zone, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts.i, align 4
  %thermctl_lock.i = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %thermctl_lock.i, i32 noundef 0) #10
  %2 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ts.i, align 4
  %regs.i = getelementptr inbounds %struct.tegra_soctherm, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 140
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !388
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !421
  %sg.i = getelementptr inbounds %struct.tegra_thermctl_zone, ptr %data, i32 0, i32 4
  %8 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sg.i, align 4
  %thermctl_isr_mask.i = getelementptr inbounds %struct.tegra_tsensor_group, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %thermctl_isr_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %thermctl_isr_mask.i, align 4
  %neg.i = xor i32 %11, -1
  %and.i = and i32 %7, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  %13 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ts.i, align 4
  %regs14.i = getelementptr inbounds %struct.tegra_soctherm, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %regs14.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs14.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %16, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %12) #10, !srcloc !385
  %17 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ts.i, align 4
  %thermctl_lock17.i = getelementptr inbounds %struct.tegra_soctherm, ptr %18, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %thermctl_lock17.i) #10
  %19 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ts.i, align 4
  %regs = getelementptr inbounds %struct.tegra_soctherm, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %23 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sg.i, align 4
  %thermctl_lvl0_offset = getelementptr inbounds %struct.tegra_tsensor_group, ptr %24, i32 0, i32 13
  %25 = ptrtoint ptr %thermctl_lvl0_offset to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %thermctl_lvl0_offset, align 4
  %conv = zext i16 %26 to i32
  %add.ptr = getelementptr i8, ptr %22, i32 %conv
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !423
  %28 = and i32 %27, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !424
  tail call void @arm_heavy_mb() #10
  %29 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ts.i, align 4
  %regs3 = getelementptr inbounds %struct.tegra_soctherm, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %regs3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs3, align 4
  %33 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sg.i, align 4
  %thermctl_lvl0_offset5 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %34, i32 0, i32 13
  %35 = ptrtoint ptr %thermctl_lvl0_offset5 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %thermctl_lvl0_offset5, align 4
  %conv6 = zext i16 %36 to i32
  %add.ptr7 = getelementptr i8, ptr %32, i32 %conv6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %28) #10, !srcloc !385
  %dev = getelementptr inbounds %struct.tegra_thermctl_zone, ptr %data, i32 0, i32 1
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %39 = tail call i32 @llvm.smax.i32(i32 %lo, i32 -127000) #10
  %40 = tail call i32 @llvm.smin.i32(i32 %39, i32 127000) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %lo)
  %cmp7.not.i = icmp eq i32 %40, %lo
  br i1 %cmp7.not.i, label %entry.enforce_temp_range.exit_crit_edge, label %do.body.i

entry.enforce_temp_range.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %enforce_temp_range.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @enforce_temp_range.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_thermctl_set_trips, %if.then11.i)) #10
          to label %enforce_temp_range.exit [label %if.then11.i], !srcloc !418

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @enforce_temp_range.__UNIQUE_ID_ddebug231, ptr noundef %38, ptr noundef nonnull @.str.72, i32 noundef %lo, i32 noundef %40) #10
  br label %enforce_temp_range.exit

enforce_temp_range.exit:                          ; preds = %if.then11.i, %do.body.i, %entry.enforce_temp_range.exit_crit_edge
  %41 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ts.i, align 4
  %soc = getelementptr inbounds %struct.tegra_soctherm, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %soc, align 4
  %thresh_grain = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %thresh_grain to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %thresh_grain, align 4
  %div = sdiv i32 %40, %46
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %49 = tail call i32 @llvm.smax.i32(i32 %hi, i32 -127000) #10
  %50 = tail call i32 @llvm.smin.i32(i32 %49, i32 127000) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %hi)
  %cmp7.not.i96 = icmp eq i32 %50, %hi
  br i1 %cmp7.not.i96, label %enforce_temp_range.exit.enforce_temp_range.exit99_crit_edge, label %do.body.i97

enforce_temp_range.exit.enforce_temp_range.exit99_crit_edge: ; preds = %enforce_temp_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %enforce_temp_range.exit99

do.body.i97:                                      ; preds = %enforce_temp_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @enforce_temp_range.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_thermctl_set_trips, %if.then11.i98)) #10
          to label %enforce_temp_range.exit99 [label %if.then11.i98], !srcloc !418

if.then11.i98:                                    ; preds = %do.body.i97
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @enforce_temp_range.__UNIQUE_ID_ddebug231, ptr noundef %48, ptr noundef nonnull @.str.72, i32 noundef %hi, i32 noundef %50) #10
  br label %enforce_temp_range.exit99

enforce_temp_range.exit99:                        ; preds = %if.then11.i98, %do.body.i97, %enforce_temp_range.exit.enforce_temp_range.exit99_crit_edge
  %51 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ts.i, align 4
  %soc13 = getelementptr inbounds %struct.tegra_soctherm, ptr %52, i32 0, i32 10
  %53 = ptrtoint ptr %soc13 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %soc13, align 4
  %thresh_grain14 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %thresh_grain14 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %thresh_grain14, align 4
  %div15 = sdiv i32 %50, %56
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_thermctl_set_trips.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_thermctl_set_trips, %if.then)) #10
          to label %do.end23 [label %if.then], !srcloc !418

if.then:                                          ; preds = %enforce_temp_range.exit99
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_thermctl_set_trips.__UNIQUE_ID_ddebug234, ptr noundef %58, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, i32 noundef %div15, i32 noundef %div) #10
  br label %do.end23

do.end23:                                         ; preds = %if.then, %enforce_temp_range.exit99
  %59 = tail call i32 @llvm.bswap.i32(i32 %28)
  %60 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sg.i, align 4
  %thermctl_lvl0_up_thresh_mask = getelementptr inbounds %struct.tegra_tsensor_group, ptr %61, i32 0, i32 14
  %62 = ptrtoint ptr %thermctl_lvl0_up_thresh_mask to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %thermctl_lvl0_up_thresh_mask, align 4
  %neg = xor i32 %63, -1
  %and25 = and i32 %59, %neg
  %64 = tail call i32 @llvm.cttz.i32(i32 %63, i1 true), !range !391
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %iszero = icmp eq i32 %63, 0
  %sub = select i1 %iszero, i32 -1, i32 %64
  %shr = lshr i32 %63, %sub
  %and30 = and i32 %shr, %div15
  %shl = shl i32 %and30, %sub
  %or36 = or i32 %shl, %and25
  %thermctl_lvl0_dn_thresh_mask = getelementptr inbounds %struct.tegra_tsensor_group, ptr %61, i32 0, i32 15
  %65 = ptrtoint ptr %thermctl_lvl0_dn_thresh_mask to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %thermctl_lvl0_dn_thresh_mask, align 4
  %neg38 = xor i32 %66, -1
  %and39 = and i32 %or36, %neg38
  %67 = tail call i32 @llvm.cttz.i32(i32 %66, i1 true), !range !391
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %iszero44 = icmp eq i32 %66, 0
  %sub46 = select i1 %iszero44, i32 -1, i32 %67
  %shr47 = lshr i32 %66, %sub46
  %and48 = and i32 %shr47, %div
  %shl54 = shl i32 %and48, %sub46
  %or55 = or i32 %shl54, %and39
  %or57 = or i32 %or55, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !425
  tail call void @arm_heavy_mb() #10
  %68 = tail call i32 @llvm.bswap.i32(i32 %or57)
  %69 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ts.i, align 4
  %regs62 = getelementptr inbounds %struct.tegra_soctherm, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %regs62 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs62, align 4
  %73 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sg.i, align 4
  %thermctl_lvl0_offset64 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %74, i32 0, i32 13
  %75 = ptrtoint ptr %thermctl_lvl0_offset64 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %thermctl_lvl0_offset64, align 4
  %conv65 = zext i16 %76 to i32
  %add.ptr66 = getelementptr i8, ptr %72, i32 %conv65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %68) #10, !srcloc !385
  %77 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ts.i, align 4
  %thermctl_lock.i101 = getelementptr inbounds %struct.tegra_soctherm, ptr %78, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %thermctl_lock.i101, i32 noundef 0) #10
  %79 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ts.i, align 4
  %regs.i102 = getelementptr inbounds %struct.tegra_soctherm, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %regs.i102 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i102, align 4
  %add.ptr.i103 = getelementptr i8, ptr %82, i32 136
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103) #10, !srcloc !388
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !426
  %85 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sg.i, align 4
  %thermctl_isr_mask.i105 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %86, i32 0, i32 12
  %87 = ptrtoint ptr %thermctl_isr_mask.i105 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %thermctl_isr_mask.i105, align 4
  %neg.i106 = xor i32 %88, -1
  %and.i107 = and i32 %84, %neg.i106
  %89 = tail call i32 @llvm.cttz.i32(i32 %88, i1 true) #10, !range !391
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %iszero.i = icmp eq i32 %88, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %89
  %shr.i = lshr i32 %88, %sub.i
  %and7.i = and i32 %shr.i, 3
  %shl.i = shl i32 %and7.i, %sub.i
  %or.i = or i32 %shl.i, %and.i107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !427
  tail call void @arm_heavy_mb() #10
  %90 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %91 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ts.i, align 4
  %regs14.i108 = getelementptr inbounds %struct.tegra_soctherm, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %regs14.i108 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs14.i108, align 4
  %add.ptr15.i109 = getelementptr i8, ptr %94, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i109, i32 %90) #10, !srcloc !385
  %95 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ts.i, align 4
  %thermctl_lock17.i110 = getelementptr inbounds %struct.tegra_soctherm, ptr %96, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %thermctl_lock17.i110) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_thermctl_set_trip_temp(ptr nocapture noundef readonly %data, i32 noundef %trip, i32 noundef %temp) #2 align 64 {
entry:
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tz1 = getelementptr inbounds %struct.tegra_thermctl_zone, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %tz1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tz1, align 4
  %ts2 = getelementptr inbounds %struct.tegra_thermctl_zone, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %ts2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ts2, align 4
  %sg3 = getelementptr inbounds %struct.tegra_thermctl_zone, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %sg3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg3, align 4
  %dev4 = getelementptr inbounds %struct.tegra_thermctl_zone, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #10
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %type, align 4, !annotation !383
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup39_crit_edge, label %if.end

entry.cleanup39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup39

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %get_trip_type = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %get_trip_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_trip_type, align 4
  %call = call i32 %12(ptr noundef nonnull %1, i32 noundef %trip, ptr noundef nonnull %type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup39_crit_edge

if.end.cleanup39_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup39

if.end7:                                          ; preds = %if.end
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %14, label %if.end7.cleanup39_crit_edge [
    i32 3, label %if.then8
    i32 2, label %for.body.preheader
  ]

if.end7.cleanup39_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup39

for.body.preheader:                               ; preds = %if.end7
  %init = getelementptr %struct.tegra_soctherm, ptr %3, i32 0, i32 11, i32 0, i32 8
  %16 = ptrtoint ptr %init to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %init, align 4, !range !381
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool20.not = icmp eq i8 %17, 0
  br i1 %tobool20.not, label %for.body.preheader.for.inc_crit_edge, label %if.end22

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then8:                                         ; preds = %if.end7
  %id = getelementptr inbounds %struct.tegra_tsensor_group, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %id, align 4
  %soc.i = getelementptr inbounds %struct.tegra_soctherm, ptr %3, i32 0, i32 10
  %20 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %soc.i, align 4
  %thermtrips.i = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %thermtrips.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %thermtrips.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp.i = icmp ugt i8 %19, 3
  %tobool.not.i = icmp eq ptr %23, null
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %if.then8.if.then12_crit_edge, label %for.cond.preheader.i

if.then8.if.then12_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

for.cond.preheader.i:                             ; preds = %if.then8
  %num_ttgs.i = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %21, i32 0, i32 3
  %24 = ptrtoint ptr %num_ttgs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_ttgs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp323.not.i = icmp eq i32 %25, 0
  br i1 %cmp323.not.i, label %for.cond.preheader.i.if.then12_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.then12_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.tsensor_group_thermtrips, ptr %23, i32 %i.024.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %19)
  %cmp5.i = icmp eq i8 %27, %19
  br i1 %cmp5.i, label %tsensor_group_thermtrip_get.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %25
  br i1 %exitcond.not.i, label %for.inc.i.if.then12_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.then12_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

tsensor_group_thermtrip_get.exit:                 ; preds = %for.body.i
  %temp9.i = getelementptr %struct.tsensor_group_thermtrips, ptr %23, i32 %i.024.i, i32 1
  %28 = ptrtoint ptr %temp9.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %temp9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127000, i32 %29)
  %cmp10 = icmp eq i32 %29, -127000
  br i1 %cmp10, label %tsensor_group_thermtrip_get.exit.if.then12_crit_edge, label %tsensor_group_thermtrip_get.exit.cleanup39_crit_edge

tsensor_group_thermtrip_get.exit.cleanup39_crit_edge: ; preds = %tsensor_group_thermtrip_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup39

tsensor_group_thermtrip_get.exit.if.then12_crit_edge: ; preds = %tsensor_group_thermtrip_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.then12:                                        ; preds = %tsensor_group_thermtrip_get.exit.if.then12_crit_edge, %for.inc.i.if.then12_crit_edge, %for.cond.preheader.i.if.then12_crit_edge, %if.then8.if.then12_crit_edge
  %call13 = call fastcc i32 @thermtrip_program(ptr noundef %7, ptr noundef %5, i32 noundef %temp)
  br label %cleanup39

if.end22:                                         ; preds = %for.body.preheader
  %cdev25 = getelementptr %struct.tegra_soctherm, ptr %3, i32 0, i32 11, i32 0, i32 7
  %30 = ptrtoint ptr %cdev25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cdev25, align 4
  %call26 = call ptr @get_thermal_instance(ptr noundef nonnull %1, ptr noundef %31, i32 noundef %trip) #10
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end22.for.inc_crit_edge, label %if.end22.if.then28_crit_edge

if.end22.if.then28_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then28:                                        ; preds = %if.end22.6.if.then28_crit_edge, %if.end22.5.if.then28_crit_edge, %if.end22.4.if.then28_crit_edge, %if.end22.3.if.then28_crit_edge, %if.end22.2.if.then28_crit_edge, %if.end22.1.if.then28_crit_edge, %if.end22.if.then28_crit_edge
  %.lcssa = phi ptr [ %31, %if.end22.if.then28_crit_edge ], [ %41, %if.end22.1.if.then28_crit_edge ], [ %45, %if.end22.2.if.then28_crit_edge ], [ %49, %if.end22.3.if.then28_crit_edge ], [ %53, %if.end22.4.if.then28_crit_edge ], [ %57, %if.end22.5.if.then28_crit_edge ], [ %61, %if.end22.6.if.then28_crit_edge ]
  %type29 = getelementptr inbounds %struct.thermal_cooling_device, ptr %.lcssa, i32 0, i32 1
  %32 = ptrtoint ptr %type29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %type29, align 4
  %arrayidx13.i = getelementptr %struct.tegra_soctherm, ptr %3, i32 0, i32 11, i32 0
  %34 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx13.i, align 4
  %tobool.not14.i = icmp eq ptr %35, null
  br i1 %tobool.not14.i, label %cleanup35.thread79, label %for.body.i71.preheader

for.body.i71.preheader:                           ; preds = %if.then28
  %call.i87 = call i32 @strcmp(ptr noundef nonnull %35, ptr noundef %33) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool5.not.i88 = icmp eq i32 %call.i87, 0
  br i1 %tobool5.not.i88, label %for.body.i71.preheader.cleanup35_crit_edge, label %for.body.i71.preheader.for.cond.i_crit_edge

for.body.i71.preheader.for.cond.i_crit_edge:      ; preds = %for.body.i71.preheader
  br label %for.cond.i

for.body.i71.preheader.cleanup35_crit_edge:       ; preds = %for.body.i71.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup35

cleanup35.thread79:                               ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %call3381 = call fastcc i32 @throttrip_program(ptr noundef %7, ptr noundef %5, ptr noundef null, i32 noundef %temp)
  br label %cleanup39

for.cond.i:                                       ; preds = %for.body.i71.for.cond.i_crit_edge, %for.body.i71.preheader.for.cond.i_crit_edge
  %i.015.i89 = phi i32 [ %inc.i68, %for.body.i71.for.cond.i_crit_edge ], [ 0, %for.body.i71.preheader.for.cond.i_crit_edge ]
  %inc.i68 = add i32 %i.015.i89, 1
  %arrayidx.i69 = getelementptr %struct.tegra_soctherm, ptr %3, i32 0, i32 11, i32 %inc.i68
  %36 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i69, align 4
  %tobool.not.i70 = icmp eq ptr %37, null
  br i1 %tobool.not.i70, label %for.cond.i.cleanup35_crit_edge, label %for.body.i71

for.cond.i.cleanup35_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup35

for.body.i71:                                     ; preds = %for.cond.i
  %call.i = call i32 @strcmp(ptr noundef nonnull %37, ptr noundef %33) #14
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %for.body.i71.cleanup35_crit_edge, label %for.body.i71.for.cond.i_crit_edge

for.body.i71.for.cond.i_crit_edge:                ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

for.body.i71.cleanup35_crit_edge:                 ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup35

for.inc:                                          ; preds = %if.end22.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %init.1 = getelementptr %struct.tegra_soctherm, ptr %3, i32 0, i32 11, i32 1, i32 8
  %38 = ptrtoint ptr %init.1 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %init.1, align 4, !range !381
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool20.not.1 = icmp eq i8 %39, 0
  br i1 %tobool20.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end22.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end22.1:                                       ; preds = %for.inc
  %cdev25.1 = getelementptr %struct.tegra_soctherm, ptr %3, i32 0, i32 11, i32 1, i32 7
  %40 = ptrtoint ptr %cdev25.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cdev25.1, align 4
  %call26.1 = call ptr @get_thermal_instance(ptr noundef nonnull %1, ptr noundef %41, i32 noundef %trip) #10
  %tobool27.not.1 = icmp eq ptr %call26.1, null
  br i1 %tobool27.not.1, label %if.end22.1.for.inc.1_crit_edge, label %if.end22.1.if.then28_crit_edge

if.end22.1.if.then28_crit_edge:                   ; preds = %if.end22.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.end22.1.for.inc.1_crit_edge:                   ; preds = %if.end22.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end22.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %init.2 = getelementptr %struct.tegra_soctherm, ptr %3, i32 0, i32 11, i32 2, i32 8
  %42 = ptrtoint ptr %init.2 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %init.2, align 4, !range !381
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool20.not.2 = icmp eq i8 %43, 0
  br i1 %tobool20.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end22.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end22.2:                                       ; preds = %for.inc.1
  %cdev25.2 = getelementptr %struct.tegra_soctherm, ptr %3, i32 0, i32 11, i32 2, i32 7
  %44 = ptrtoint ptr %cdev25.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cdev25.2, align 4
  %call26.2 = call ptr @get_thermal_instance(ptr noundef nonnull %1, ptr noundef %45, i32 noundef %trip) #10
  %tobool27.not.2 = icmp eq ptr %call26.2, null
  br i1 %tobool27.not.2, label %if.end22.2.for.inc.2_crit_edge, label %if.end22.2.if.then28_crit_edge

if.end22.2.if.then28_crit_edge:                   ; preds = %if.end22.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.end22.2.for.inc.2_crit_edge:                   ; preds = %if.end22.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end22.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %init.3 = getelementptr %struct.tegra_soctherm, ptr %3, i32 0, i32 11, i32 3, i32 8
  %46 = ptrtoint ptr %init.3 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %init.3, align 4, !range !381
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool20.not.3 = icmp eq i8 %47, 0
  br i1 %tobool20.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end22.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.end22.3:                                       ; preds = %for.inc.2
  %cdev25.3 = getelementptr %struct.tegra_soctherm, ptr %3, i32 0, i32 11, i32 3, i32 7
  %48 = ptrtoint ptr %cdev25.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cdev25.3, align 4
  %call26.3 = call ptr @get_thermal_instance(ptr noundef nonnull %1, ptr noundef %49, i32 noundef %trip) #10
  %tobool27.not.3 = icmp eq ptr %call26.3, null
  br i1 %tobool27.not.3, label %if.end22.3.for.inc.3_crit_edge, label %if.end22.3.if.then28_crit_edge

if.end22.3.if.then28_crit_edge:                   ; preds = %if.end22.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.end22.3.for.inc.3_crit_edge:                   ; preds = %if.end22.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end22.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %init.4 = getelementptr %struct.tegra_soctherm, ptr %3, i32 0, i32 11, i32 4, i32 8
  %50 = ptrtoint ptr %init.4 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %init.4, align 4, !range !381
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool20.not.4 = icmp eq i8 %51, 0
  br i1 %tobool20.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end22.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.end22.4:                                       ; preds = %for.inc.3
  %cdev25.4 = getelementptr %struct.tegra_soctherm, ptr %3, i32 0, i32 11, i32 4, i32 7
  %52 = ptrtoint ptr %cdev25.4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cdev25.4, align 4
  %call26.4 = call ptr @get_thermal_instance(ptr noundef nonnull %1, ptr noundef %53, i32 noundef %trip) #10
  %tobool27.not.4 = icmp eq ptr %call26.4, null
  br i1 %tobool27.not.4, label %if.end22.4.for.inc.4_crit_edge, label %if.end22.4.if.then28_crit_edge

if.end22.4.if.then28_crit_edge:                   ; preds = %if.end22.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.end22.4.for.inc.4_crit_edge:                   ; preds = %if.end22.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end22.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %init.5 = getelementptr %struct.tegra_soctherm, ptr %3, i32 0, i32 11, i32 5, i32 8
  %54 = ptrtoint ptr %init.5 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %init.5, align 4, !range !381
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool20.not.5 = icmp eq i8 %55, 0
  br i1 %tobool20.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end22.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.end22.5:                                       ; preds = %for.inc.4
  %cdev25.5 = getelementptr %struct.tegra_soctherm, ptr %3, i32 0, i32 11, i32 5, i32 7
  %56 = ptrtoint ptr %cdev25.5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cdev25.5, align 4
  %call26.5 = call ptr @get_thermal_instance(ptr noundef nonnull %1, ptr noundef %57, i32 noundef %trip) #10
  %tobool27.not.5 = icmp eq ptr %call26.5, null
  br i1 %tobool27.not.5, label %if.end22.5.for.inc.5_crit_edge, label %if.end22.5.if.then28_crit_edge

if.end22.5.if.then28_crit_edge:                   ; preds = %if.end22.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.end22.5.for.inc.5_crit_edge:                   ; preds = %if.end22.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end22.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %init.6 = getelementptr %struct.tegra_soctherm, ptr %3, i32 0, i32 11, i32 6, i32 8
  %58 = ptrtoint ptr %init.6 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %init.6, align 4, !range !381
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool20.not.6 = icmp eq i8 %59, 0
  br i1 %tobool20.not.6, label %for.inc.5.cleanup39_crit_edge, label %if.end22.6

for.inc.5.cleanup39_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup39

if.end22.6:                                       ; preds = %for.inc.5
  %cdev25.6 = getelementptr %struct.tegra_soctherm, ptr %3, i32 0, i32 11, i32 6, i32 7
  %60 = ptrtoint ptr %cdev25.6 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cdev25.6, align 4
  %call26.6 = call ptr @get_thermal_instance(ptr noundef nonnull %1, ptr noundef %61, i32 noundef %trip) #10
  %tobool27.not.6 = icmp eq ptr %call26.6, null
  br i1 %tobool27.not.6, label %if.end22.6.cleanup39_crit_edge, label %if.end22.6.if.then28_crit_edge

if.end22.6.if.then28_crit_edge:                   ; preds = %if.end22.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.end22.6.cleanup39_crit_edge:                   ; preds = %if.end22.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup39

cleanup35:                                        ; preds = %for.body.i71.cleanup35_crit_edge, %for.cond.i.cleanup35_crit_edge, %for.body.i71.preheader.cleanup35_crit_edge
  %retval.0.i72 = phi ptr [ %arrayidx13.i, %for.body.i71.preheader.cleanup35_crit_edge ], [ null, %for.cond.i.cleanup35_crit_edge ], [ %arrayidx.i69, %for.body.i71.cleanup35_crit_edge ]
  %call33 = call fastcc i32 @throttrip_program(ptr noundef %7, ptr noundef %5, ptr noundef %retval.0.i72, i32 noundef %temp)
  br label %cleanup39

cleanup39:                                        ; preds = %cleanup35, %if.end22.6.cleanup39_crit_edge, %for.inc.5.cleanup39_crit_edge, %cleanup35.thread79, %if.then12, %tsensor_group_thermtrip_get.exit.cleanup39_crit_edge, %if.end7.cleanup39_crit_edge, %if.end.cleanup39_crit_edge, %entry.cleanup39_crit_edge
  %retval.3 = phi i32 [ %call13, %if.then12 ], [ %call33, %cleanup35 ], [ -22, %entry.cleanup39_crit_edge ], [ %call, %if.end.cleanup39_crit_edge ], [ 0, %tsensor_group_thermtrip_get.exit.cleanup39_crit_edge ], [ %call3381, %cleanup35.thread79 ], [ 0, %for.inc.5.cleanup39_crit_edge ], [ 0, %if.end22.6.cleanup39_crit_edge ], [ 0, %if.end7.cleanup39_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #10
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @thermtrip_program(ptr noundef %dev, ptr noundef readonly %sg, i32 noundef %trip_temp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %sg, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %thermtrip_threshold_mask = getelementptr inbounds %struct.tegra_tsensor_group, ptr %sg, i32 0, i32 11
  %2 = ptrtoint ptr %thermtrip_threshold_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %thermtrip_threshold_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = tail call i32 @llvm.smax.i32(i32 %trip_temp, i32 -127000) #10
  %5 = tail call i32 @llvm.smin.i32(i32 %4, i32 127000) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %trip_temp)
  %cmp7.not.i = icmp eq i32 %5, %trip_temp
  br i1 %cmp7.not.i, label %if.end.enforce_temp_range.exit_crit_edge, label %do.body.i

if.end.enforce_temp_range.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %enforce_temp_range.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @enforce_temp_range.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@thermtrip_program, %if.then11.i)) #10
          to label %enforce_temp_range.exit [label %if.then11.i], !srcloc !418

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @enforce_temp_range.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %trip_temp, i32 noundef %5) #10
  br label %enforce_temp_range.exit

enforce_temp_range.exit:                          ; preds = %if.then11.i, %do.body.i, %if.end.enforce_temp_range.exit_crit_edge
  %soc = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc, align 4
  %thresh_grain = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %thresh_grain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %thresh_grain, align 4
  %div = sdiv i32 %5, %9
  %regs = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 128
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !388
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !428
  %14 = ptrtoint ptr %thermtrip_threshold_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %thermtrip_threshold_mask, align 4
  %neg = xor i32 %15, -1
  %and = and i32 %13, %neg
  %16 = tail call i32 @llvm.cttz.i32(i32 %15, i1 true), !range !391
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %iszero = icmp eq i32 %15, 0
  %sub = select i1 %iszero, i32 -1, i32 %16
  %shr = lshr i32 %15, %sub
  %and8 = and i32 %shr, %div
  %shl = shl i32 %and8, %sub
  %or = or i32 %shl, %and
  %thermtrip_enable_mask = getelementptr inbounds %struct.tegra_tsensor_group, ptr %sg, i32 0, i32 9
  %17 = ptrtoint ptr %thermtrip_enable_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %thermtrip_enable_mask, align 4
  %neg13 = xor i32 %18, -1
  %and14 = and i32 %or, %neg13
  %19 = tail call i32 @llvm.cttz.i32(i32 %18, i1 true), !range !391
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %iszero17 = icmp eq i32 %18, 0
  %sub19 = select i1 %iszero17, i32 -1, i32 %19
  %shr20 = lshr i32 %18, %sub19
  %and21 = and i32 %shr20, 1
  %shl26 = shl nuw i32 %and21, %sub19
  %or27 = or i32 %and14, %shl26
  %thermtrip_any_en_mask = getelementptr inbounds %struct.tegra_tsensor_group, ptr %sg, i32 0, i32 10
  %20 = ptrtoint ptr %thermtrip_any_en_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %thermtrip_any_en_mask, align 4
  %neg28 = xor i32 %21, -1
  %and29 = and i32 %or27, %neg28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !429
  tail call void @arm_heavy_mb() #10
  %22 = tail call i32 @llvm.bswap.i32(i32 %and29)
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr44 = getelementptr i8, ptr %24, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %22) #10, !srcloc !385
  br label %cleanup

cleanup:                                          ; preds = %enforce_temp_range.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %enforce_temp_range.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_thermal_instance(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @throttrip_program(ptr noundef %dev, ptr noundef readonly %sg, ptr noundef readonly %stc, i32 noundef %trip_temp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %sg, null
  %tobool1.not = icmp eq ptr %stc, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %init = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %stc, i32 0, i32 8
  %2 = ptrtoint ptr %init to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %init, align 4, !range !381
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %4 = tail call i32 @llvm.smax.i32(i32 %trip_temp, i32 -127000) #10
  %5 = tail call i32 @llvm.smin.i32(i32 %4, i32 127000) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %trip_temp)
  %cmp7.not.i = icmp eq i32 %5, %trip_temp
  br i1 %cmp7.not.i, label %if.end.enforce_temp_range.exit_crit_edge, label %do.body.i

if.end.enforce_temp_range.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %enforce_temp_range.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @enforce_temp_range.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@throttrip_program, %if.then11.i)) #10
          to label %enforce_temp_range.exit [label %if.then11.i], !srcloc !418

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @enforce_temp_range.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %trip_temp, i32 noundef %5) #10
  br label %enforce_temp_range.exit

enforce_temp_range.exit:                          ; preds = %if.then11.i, %do.body.i, %if.end.enforce_temp_range.exit_crit_edge
  %soc = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc, align 4
  %thresh_grain = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %thresh_grain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %thresh_grain, align 4
  %div = sdiv i32 %5, %9
  %id = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %stc, i32 0, i32 1
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %thermctl_lvl0_offset = getelementptr inbounds %struct.tegra_tsensor_group, ptr %sg, i32 0, i32 13
  %12 = ptrtoint ptr %thermctl_lvl0_offset to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %thermctl_lvl0_offset, align 4
  %conv = zext i16 %13 to i32
  %add = shl i32 %11, 5
  %mul = add i32 %add, 32
  %add5 = add i32 %mul, %conv
  %14 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %11, label %do.end [
    i32 0, label %enforce_temp_range.exit.if.end12_crit_edge
    i32 1, label %if.end12.fold.split
  ]

enforce_temp_range.exit.if.end12_crit_edge:       ; preds = %enforce_temp_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

do.end:                                           ; preds = %enforce_temp_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.73, i32 noundef %11) #13
  br label %if.end12

if.end12.fold.split:                              ; preds = %enforce_temp_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end12:                                         ; preds = %if.end12.fold.split, %do.end, %enforce_temp_range.exit.if.end12_crit_edge
  %cpu_throt.0 = phi i32 [ 2, %do.end ], [ 1, %enforce_temp_range.exit.if.end12_crit_edge ], [ 2, %if.end12.fold.split ]
  %regs = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %add5
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !388
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !430
  %thermctl_lvl0_up_thresh_mask = getelementptr inbounds %struct.tegra_tsensor_group, ptr %sg, i32 0, i32 14
  %19 = ptrtoint ptr %thermctl_lvl0_up_thresh_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %thermctl_lvl0_up_thresh_mask, align 4
  %neg = xor i32 %20, -1
  %and = and i32 %18, %neg
  %21 = tail call i32 @llvm.cttz.i32(i32 %20, i1 true), !range !391
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %iszero = icmp eq i32 %20, 0
  %sub = select i1 %iszero, i32 -1, i32 %21
  %shr = lshr i32 %20, %sub
  %and17 = and i32 %shr, %div
  %shl = shl i32 %and17, %sub
  %or = or i32 %shl, %and
  %thermctl_lvl0_dn_thresh_mask = getelementptr inbounds %struct.tegra_tsensor_group, ptr %sg, i32 0, i32 15
  %22 = ptrtoint ptr %thermctl_lvl0_dn_thresh_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %thermctl_lvl0_dn_thresh_mask, align 4
  %neg22 = xor i32 %23, -1
  %and23 = and i32 %or, %neg22
  %24 = tail call i32 @llvm.cttz.i32(i32 %23, i1 true), !range !391
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %iszero26 = icmp eq i32 %23, 0
  %sub28 = select i1 %iszero26, i32 -1, i32 %24
  %shr29 = lshr i32 %23, %sub28
  %and30 = and i32 %shr29, %div
  %shl35 = shl i32 %and30, %sub28
  %or36 = or i32 %and23, %shl35
  %and37 = and i32 %or36, -377
  %shl39 = shl nuw nsw i32 %cpu_throt.0, 5
  %or40 = or i32 %and37, %shl39
  %shl43 = shl nuw nsw i32 %cpu_throt.0, 3
  %or44 = or i32 %or40, %shl43
  %or46 = or i32 %or44, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !431
  tail call void @arm_heavy_mb() #10
  %25 = tail call i32 @llvm.bswap.i32(i32 %or46)
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr51 = getelementptr i8, ptr %27, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %25) #10, !srcloc !385
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_thermal_get_ntrips(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @soctherm_oc_int_init(ptr noundef %np) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__mutex_init(ptr noundef nonnull @soc_irq_cdata, ptr noundef nonnull @.str.106, ptr noundef nonnull @soctherm_oc_int_init.__key) #10
  store i32 0, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 3), align 4
  store ptr @.str.107, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 1, i32 1), align 4
  store ptr @soctherm_oc_irq_lock, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 1, i32 15), align 4
  store ptr @soctherm_oc_irq_sync_unlock, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 1, i32 16), align 4
  store ptr @soctherm_oc_irq_disable, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 1, i32 5), align 4
  store ptr @soctherm_oc_irq_enable, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 1, i32 4), align 4
  store ptr @soctherm_oc_irq_set_type, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 1, i32 13), align 4
  store ptr null, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 1, i32 14), align 4
  %tobool.not.i.i = icmp eq ptr %np, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef 5, i32 noundef 5, i32 noundef 0, ptr noundef nonnull @soctherm_oc_domain_ops, ptr noundef nonnull @soc_irq_cdata) #10
  store ptr %call1.i, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 2), align 4
  %tobool4.not = icmp eq ptr %call1.i, null
  br i1 %tobool4.not, label %do.end7, label %do.body11

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.105) #13
  br label %return

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @soctherm_oc_int_init.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@soctherm_oc_int_init, %if.then17)) #10
          to label %return [label %if.then17], !srcloc !418

if.then17:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @soctherm_oc_int_init.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.105) #10
  br label %return

return:                                           ; preds = %if.then17, %do.body11, %do.end7
  %retval.0 = phi i32 [ -12, %do.end7 ], [ 0, %if.then17 ], [ 0, %do.body11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soctherm_thermal_isr(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.tegra_soctherm, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 132
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !433
  tail call void @arm_heavy_mb() #10
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #10, !srcloc !385
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soctherm_thermal_isr_thread(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.tegra_soctherm, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 132
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !388
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !434
  %or7 = and i32 %3, 196608
  %or11 = and i32 %3, 3
  %or15 = and i32 %3, 50331648
  %or18 = and i32 %3, 50529027
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or18)
  %tobool.not = icmp eq i32 %or18, 0
  br i1 %tobool.not, label %entry.if.end40_crit_edge, label %do.body

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

do.body:                                          ; preds = %entry
  %or3 = and i32 %3, 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !435
  tail call void @arm_heavy_mb() #10
  %4 = tail call i32 @llvm.bswap.i32(i32 %or18)
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr21 = getelementptr i8, ptr %6, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %4) #10, !srcloc !385
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or3)
  %tobool23.not = icmp eq i32 %or3, 0
  br i1 %tobool23.not, label %do.body.if.end_crit_edge, label %if.then24

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %thermctl_tzs = getelementptr inbounds %struct.tegra_soctherm, ptr %dev_id, i32 0, i32 9
  %7 = ptrtoint ptr %thermctl_tzs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %thermctl_tzs, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  tail call void @thermal_zone_device_update(ptr noundef %10, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then24, %do.body.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or7)
  %tobool25.not = icmp eq i32 %or7, 0
  br i1 %tobool25.not, label %if.end.if.end29_crit_edge, label %if.then26

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %thermctl_tzs27 = getelementptr inbounds %struct.tegra_soctherm, ptr %dev_id, i32 0, i32 9
  %11 = ptrtoint ptr %thermctl_tzs27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %thermctl_tzs27, align 4
  %arrayidx28 = getelementptr ptr, ptr %12, i32 2
  %13 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx28, align 4
  tail call void @thermal_zone_device_update(ptr noundef %14, i32 noundef 0) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end.if.end29_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or11)
  %tobool30.not = icmp eq i32 %or11, 0
  br i1 %tobool30.not, label %if.end29.if.end34_crit_edge, label %if.then31

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %thermctl_tzs32 = getelementptr inbounds %struct.tegra_soctherm, ptr %dev_id, i32 0, i32 9
  %15 = ptrtoint ptr %thermctl_tzs32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %thermctl_tzs32, align 4
  %arrayidx33 = getelementptr ptr, ptr %16, i32 3
  %17 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx33, align 4
  tail call void @thermal_zone_device_update(ptr noundef %18, i32 noundef 0) #10
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end29.if.end34_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or15)
  %tobool35.not = icmp eq i32 %or15, 0
  br i1 %tobool35.not, label %if.end34.if.end40_crit_edge, label %if.then36

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %thermctl_tzs37 = getelementptr inbounds %struct.tegra_soctherm, ptr %dev_id, i32 0, i32 9
  %19 = ptrtoint ptr %thermctl_tzs37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %thermctl_tzs37, align 4
  %arrayidx38 = getelementptr ptr, ptr %20, i32 1
  %21 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx38, align 4
  tail call void @thermal_zone_device_update(ptr noundef %22, i32 noundef 0) #10
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end34.if.end40_crit_edge, %entry.if.end40_crit_edge
  %st.0 = phi i32 [ 0, %if.then36 ], [ 0, %if.end34.if.end40_crit_edge ], [ %3, %entry.if.end40_crit_edge ]
  %neg42 = xor i32 %or18, 50529027
  %and43 = and i32 %st.0, %neg42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end40.if.end56_crit_edge, label %do.end48

if.end40.if.end56_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

do.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef %and43) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !436
  tail call void @arm_heavy_mb() #10
  %23 = tail call i32 @llvm.bswap.i32(i32 %and43)
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr55 = getelementptr i8, ptr %25, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %23) #10, !srcloc !385
  br label %if.end56

if.end56:                                         ; preds = %do.end48, %if.end40.if.end56_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soctherm_edp_isr(i32 noundef %irq, ptr noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regs = getelementptr inbounds %struct.tegra_soctherm, ptr %arg, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 924
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !438
  tail call void @arm_heavy_mb() #10
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #10, !srcloc !385
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soctherm_edp_isr_thread(i32 noundef %irq, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  %irq.i128 = alloca i32, align 4
  %irq.i122 = alloca i32, align 4
  %irq.i116 = alloca i32, align 4
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.tegra_soctherm, ptr %arg, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 924
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !388
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !439
  %and2 = and i32 %3, 2
  %and3 = and i32 %3, 4
  %and4 = and i32 %3, 8
  %or6 = and i32 %3, 15
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %or6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or6)
  %tobool.not = icmp eq i32 %or6, 0
  br i1 %tobool.not, label %entry.if.end65_crit_edge, label %do.body9

entry.if.end65_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

do.body9:                                         ; preds = %entry
  %and = and i32 %3, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !440
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr13 = getelementptr i8, ptr %5, i32 924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %2) #10, !srcloc !385
  %and14 = and i32 %3, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %do.body9.if.end_crit_edge, label %land.lhs.true

do.body9.if.end_crit_edge:                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %do.body9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @soctherm_handle_alarm.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@soctherm_edp_isr_thread, %if.then.i)) #10
          to label %if.then18 [label %if.then.i], !srcloc !418

if.then.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @soctherm_handle_alarm.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.120) #10
  br label %if.then18

if.then18:                                        ; preds = %if.then.i, %land.lhs.true
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 928
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %9 = or i32 %8, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr12.i = getelementptr i8, ptr %11, i32 928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %9) #10, !srcloc !385
  br label %if.end

if.end:                                           ; preds = %if.then18, %do.body9.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool19.not = icmp eq i32 %and2, 0
  br i1 %tobool19.not, label %if.end.if.end24_crit_edge, label %land.lhs.true20

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true20:                                  ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @soctherm_handle_alarm.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@soctherm_edp_isr_thread, %if.then16.i)) #10
          to label %if.then23 [label %if.then16.i], !srcloc !418

if.then16.i:                                      ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @soctherm_handle_alarm.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.121) #10
  br label %if.then23

if.then23:                                        ; preds = %if.then16.i, %land.lhs.true20
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr.i105 = getelementptr i8, ptr %13, i32 928
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %15 = or i32 %14, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr12.i106 = getelementptr i8, ptr %17, i32 928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i106, i32 %15) #10, !srcloc !385
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end.if.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool25.not = icmp eq i32 %and3, 0
  br i1 %tobool25.not, label %if.end24.if.end30_crit_edge, label %land.lhs.true26

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.lhs.true26:                                  ; preds = %if.end24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @soctherm_handle_alarm.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@soctherm_edp_isr_thread, %if.then33.i)) #10
          to label %if.then29 [label %if.then33.i], !srcloc !418

if.then33.i:                                      ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @soctherm_handle_alarm.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.122) #10
  br label %if.then29

if.then29:                                        ; preds = %if.then33.i, %land.lhs.true26
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr.i109 = getelementptr i8, ptr %19, i32 928
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i109) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %21 = or i32 %20, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr12.i110 = getelementptr i8, ptr %23, i32 928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i110, i32 %21) #10, !srcloc !385
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end24.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool31.not = icmp eq i32 %and4, 0
  br i1 %tobool31.not, label %if.end30.if.end36_crit_edge, label %land.lhs.true32

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

land.lhs.true32:                                  ; preds = %if.end30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @soctherm_handle_alarm.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@soctherm_edp_isr_thread, %if.then50.i)) #10
          to label %if.then35 [label %if.then50.i], !srcloc !418

if.then50.i:                                      ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @soctherm_handle_alarm.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.123) #10
  br label %if.then35

if.then35:                                        ; preds = %if.then50.i, %land.lhs.true32
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr.i113 = getelementptr i8, ptr %25, i32 928
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %27 = or i32 %26, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add.ptr12.i114 = getelementptr i8, ptr %29, i32 928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i114, i32 %27) #10, !srcloc !385
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end30.if.end36_crit_edge
  br i1 %tobool15.not, label %if.end36.if.end43_crit_edge, label %land.lhs.true38

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

land.lhs.true38:                                  ; preds = %if.end36
  %30 = load i32, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 3), align 4
  %and39 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %land.lhs.true38.if.end43_crit_edge, label %if.then41

land.lhs.true38.if.end43_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then41:                                        ; preds = %land.lhs.true38
  %31 = load ptr, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 2), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #10
  %32 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %irq.i, align 4, !annotation !383
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %31, i32 noundef 0, ptr noundef nonnull %irq.i) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then41.irq_find_mapping.exit_crit_edge, label %if.then.i115

if.then41.irq_find_mapping.exit_crit_edge:        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %irq_find_mapping.exit

if.then.i115:                                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i115, %if.then41.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %34, %if.then.i115 ], [ 0, %if.then41.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #10
  call void @handle_nested_irq(i32 noundef %retval.0.i) #10
  br label %if.end43

if.end43:                                         ; preds = %irq_find_mapping.exit, %land.lhs.true38.if.end43_crit_edge, %if.end36.if.end43_crit_edge
  br i1 %tobool19.not, label %if.end43.if.end50_crit_edge, label %land.lhs.true45

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

land.lhs.true45:                                  ; preds = %if.end43
  %35 = load i32, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 3), align 4
  %and46 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %land.lhs.true45.if.end50_crit_edge, label %if.then48

land.lhs.true45.if.end50_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then48:                                        ; preds = %land.lhs.true45
  %36 = load ptr, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 2), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i116) #10
  %37 = ptrtoint ptr %irq.i116 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %irq.i116, align 4, !annotation !383
  %call.i117 = call ptr @__irq_resolve_mapping(ptr noundef %36, i32 noundef 1, ptr noundef nonnull %irq.i116) #10
  %tobool.not.i118 = icmp eq ptr %call.i117, null
  br i1 %tobool.not.i118, label %if.then48.irq_find_mapping.exit121_crit_edge, label %if.then.i119

if.then48.irq_find_mapping.exit121_crit_edge:     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %irq_find_mapping.exit121

if.then.i119:                                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %irq.i116 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq.i116, align 4
  br label %irq_find_mapping.exit121

irq_find_mapping.exit121:                         ; preds = %if.then.i119, %if.then48.irq_find_mapping.exit121_crit_edge
  %retval.0.i120 = phi i32 [ %39, %if.then.i119 ], [ 0, %if.then48.irq_find_mapping.exit121_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i116) #10
  call void @handle_nested_irq(i32 noundef %retval.0.i120) #10
  br label %if.end50

if.end50:                                         ; preds = %irq_find_mapping.exit121, %land.lhs.true45.if.end50_crit_edge, %if.end43.if.end50_crit_edge
  br i1 %tobool25.not, label %if.end50.if.end57_crit_edge, label %land.lhs.true52

if.end50.if.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

land.lhs.true52:                                  ; preds = %if.end50
  %40 = load i32, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 3), align 4
  %and53 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %land.lhs.true52.if.end57_crit_edge, label %if.then55

land.lhs.true52.if.end57_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then55:                                        ; preds = %land.lhs.true52
  %41 = load ptr, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 2), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i122) #10
  %42 = ptrtoint ptr %irq.i122 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %irq.i122, align 4, !annotation !383
  %call.i123 = call ptr @__irq_resolve_mapping(ptr noundef %41, i32 noundef 2, ptr noundef nonnull %irq.i122) #10
  %tobool.not.i124 = icmp eq ptr %call.i123, null
  br i1 %tobool.not.i124, label %if.then55.irq_find_mapping.exit127_crit_edge, label %if.then.i125

if.then55.irq_find_mapping.exit127_crit_edge:     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %irq_find_mapping.exit127

if.then.i125:                                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %irq.i122 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq.i122, align 4
  br label %irq_find_mapping.exit127

irq_find_mapping.exit127:                         ; preds = %if.then.i125, %if.then55.irq_find_mapping.exit127_crit_edge
  %retval.0.i126 = phi i32 [ %44, %if.then.i125 ], [ 0, %if.then55.irq_find_mapping.exit127_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i122) #10
  call void @handle_nested_irq(i32 noundef %retval.0.i126) #10
  br label %if.end57

if.end57:                                         ; preds = %irq_find_mapping.exit127, %land.lhs.true52.if.end57_crit_edge, %if.end50.if.end57_crit_edge
  br i1 %tobool31.not, label %if.end57.if.end65_crit_edge, label %land.lhs.true59

if.end57.if.end65_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

land.lhs.true59:                                  ; preds = %if.end57
  %45 = load i32, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 3), align 4
  %and60 = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %land.lhs.true59.if.end65_crit_edge, label %if.then62

land.lhs.true59.if.end65_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then62:                                        ; preds = %land.lhs.true59
  %46 = load ptr, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 2), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i128) #10
  %47 = ptrtoint ptr %irq.i128 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %irq.i128, align 4, !annotation !383
  %call.i129 = call ptr @__irq_resolve_mapping(ptr noundef %46, i32 noundef 3, ptr noundef nonnull %irq.i128) #10
  %tobool.not.i130 = icmp eq ptr %call.i129, null
  br i1 %tobool.not.i130, label %if.then62.irq_find_mapping.exit133_crit_edge, label %if.then.i131

if.then62.irq_find_mapping.exit133_crit_edge:     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  br label %irq_find_mapping.exit133

if.then.i131:                                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %irq.i128 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq.i128, align 4
  br label %irq_find_mapping.exit133

irq_find_mapping.exit133:                         ; preds = %if.then.i131, %if.then62.irq_find_mapping.exit133_crit_edge
  %retval.0.i132 = phi i32 [ %49, %if.then.i131 ], [ 0, %if.then62.irq_find_mapping.exit133_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i128) #10
  call void @handle_nested_irq(i32 noundef %retval.0.i132) #10
  br label %if.end65

if.end65:                                         ; preds = %irq_find_mapping.exit133, %land.lhs.true59.if.end65_crit_edge, %if.end57.if.end65_crit_edge, %entry.if.end65_crit_edge
  %st.0 = phi i32 [ %and14, %irq_find_mapping.exit133 ], [ %and14, %land.lhs.true59.if.end65_crit_edge ], [ %and14, %if.end57.if.end65_crit_edge ], [ %3, %entry.if.end65_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %st.0)
  %tobool66.not = icmp eq i32 %st.0, 0
  br i1 %tobool66.not, label %if.end65.if.end78_crit_edge, label %do.end70

if.end65.if.end78_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

do.end70:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %st.0) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !441
  call void @arm_heavy_mb() #10
  %50 = call i32 @llvm.bswap.i32(i32 %st.0)
  %51 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs, align 4
  %add.ptr77 = getelementptr i8, ptr %52, i32 924
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %50) #10, !srcloc !385
  br label %if.end78

if.end78:                                         ; preds = %do.end70, %if.end65.if.end78_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @soctherm_oc_irq_lock(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @soctherm_oc_irq_sync_unlock(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  tail call void @mutex_unlock(ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @soctherm_oc_irq_disable(ptr nocapture noundef readonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  %neg = xor i32 %shl, -1
  %irq_enable = getelementptr inbounds %struct.soctherm_oc_irq_chip_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_enable, align 4
  %and = and i32 %5, %neg
  store i32 %and, ptr %irq_enable, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @soctherm_oc_irq_enable(ptr nocapture noundef readonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  %irq_enable = getelementptr inbounds %struct.soctherm_oc_irq_chip_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_enable, align 4
  %or = or i32 %5, %shl
  store i32 %or, ptr %irq_enable, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @soctherm_oc_irq_set_type(ptr nocapture noundef readnone %data, i32 noundef %type) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soctherm_oc_irq_map(ptr nocapture noundef readonly %h, i32 noundef %virq, i32 noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %h, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef %1) #10
  %irq_chip = getelementptr inbounds %struct.soctherm_oc_irq_chip_data, ptr %1, i32 0, i32 1
  %call1 = tail call i32 @irq_set_chip(i32 noundef %virq, ptr noundef %irq_chip) #10
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 32768) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soctherm_irq_domain_xlate_twocell(ptr nocapture noundef readnone %d, ptr nocapture noundef readnone %ctrlr, ptr nocapture noundef readonly %intspec, i32 noundef %intsize, ptr nocapture noundef writeonly %out_hwirq, ptr nocapture noundef writeonly %out_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %intsize)
  %cmp = icmp ult i32 %intsize, 2
  br i1 %cmp, label %do.end, label %if.end21, !prof !382

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1230, i32 noundef 9, ptr noundef null) #10
  br label %return

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %intspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intspec, align 4
  %sub = add i32 %1, -1
  %2 = ptrtoint ptr %out_hwirq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sub, ptr %out_hwirq, align 4
  %arrayidx22 = getelementptr i32, ptr %intspec, i32 1
  %3 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx22, align 4
  %and = and i32 %4, 15
  %5 = ptrtoint ptr %out_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %out_type, align 4
  br label %return

return:                                           ; preds = %if.end21, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @regs_show, ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regs_show(ptr noundef %s, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %soc = getelementptr inbounds %struct.tegra_soctherm, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %ttgs3 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %ttgs3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ttgs3, align 4
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.126) #10
  %10 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %soc, align 4
  %num_tsensors626 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %num_tsensors626 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_tsensors626, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp627.not = icmp eq i32 %13, 0
  br i1 %cmp627.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %regs = getelementptr inbounds %struct.tegra_soctherm, ptr %3, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0628 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr %struct.tegra_tsensor, ptr %7, i32 %i.0628
  %base = getelementptr %struct.tegra_tsensor, ptr %7, i32 %i.0628, i32 1
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 4
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #10, !srcloc !388
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !442
  %shr = lshr i32 %19, 31
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.127, ptr noundef %21) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.128, i32 noundef %shr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %tobool.not = icmp sgt i32 %19, -1
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.129) #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %and9 = lshr i32 %19, 15
  %shr10 = and i32 %and9, 63
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.130, i32 noundef %shr10) #10
  %and11 = lshr i32 %19, 24
  %shr12 = and i32 %and11, 63
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.131, i32 noundef %shr12) #10
  %and13 = and i32 %19, 1023
  %add = add nuw nsw i32 %and13, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.132, i32 noundef %add) #10
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %23, i32 16
  %add.ptr21 = getelementptr i8, ptr %add.ptr20, i32 %25
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #10, !srcloc !388
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !443
  %shr26 = lshr i32 %27, 31
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.133, i32 noundef %shr26) #10
  %conv.i585 = lshr i32 %27, 8
  %28 = and i32 %conv.i585, 255
  %mul.i = mul nuw nsw i32 %28, 1000
  %and2.i = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  %add.i = add nuw nsw i32 %mul.i, 500
  %spec.select.i = select i1 %tobool.not.i, i32 %mul.i, i32 %add.i
  %and4.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %mul7.i = sub nsw i32 0, %spec.select.i
  %t.1.i = select i1 %tobool5.not.i, i32 %spec.select.i, i32 %mul7.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.134, i32 noundef %t.1.i) #10
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %base, align 4
  %add.ptr35 = getelementptr i8, ptr %30, i32 12
  %add.ptr36 = getelementptr i8, ptr %add.ptr35, i32 %32
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #10, !srcloc !388
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !444
  %shr41 = lshr i32 %34, 31
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.135, i32 noundef %shr41) #10
  %and42 = and i32 %34, 65535
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.134, i32 noundef %and42) #10
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %base, align 4
  %add.ptr49 = getelementptr i8, ptr %36, i32 %38
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #10, !srcloc !388
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !445
  %and54 = and i32 %40, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.136, i32 noundef %and54) #10
  %and56 = lshr i32 %40, 8
  %shr57 = and i32 %and56, 1048575
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.137, i32 noundef %shr57) #10
  %and58 = lshr i32 %40, 4
  %shr59 = and i32 %and58, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.138, i32 noundef %shr59) #10
  %and60 = lshr i32 %40, 3
  %shr61 = and i32 %and60, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.139, i32 noundef %shr61) #10
  %and62 = lshr i32 %40, 2
  %shr63 = and i32 %and62, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.134, i32 noundef %shr63) #10
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 4
  %43 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base, align 4
  %add.ptr69 = getelementptr i8, ptr %42, i32 8
  %add.ptr70 = getelementptr i8, ptr %add.ptr69, i32 %44
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #10, !srcloc !388
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !446
  %shr75 = lshr i32 %46, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.140, i32 noundef %shr75) #10
  %sext = shl i32 %46, 16
  %conv79 = ashr exact i32 %sext, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.141, i32 noundef %conv79) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %inc = add nuw i32 %i.0628, 1
  %47 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %soc, align 4
  %num_tsensors = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %num_tsensors to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_tsensors, align 4
  %cmp = icmp ult i32 %inc, %50
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %regs82 = getelementptr inbounds %struct.tegra_soctherm, ptr %3, i32 0, i32 3
  %51 = ptrtoint ptr %regs82 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs82, align 4
  %add.ptr83 = getelementptr i8, ptr %52, i32 448
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #10, !srcloc !388
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !447
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.142, i32 noundef %54) #10
  %55 = ptrtoint ptr %regs82 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs82, align 4
  %add.ptr90 = getelementptr i8, ptr %56, i32 452
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #10, !srcloc !388
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !448
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.143, i32 noundef %58) #10
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.129) #10
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.144) #10
  %59 = ptrtoint ptr %regs82 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs82, align 4
  %add.ptr97 = getelementptr i8, ptr %60, i32 456
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97) #10, !srcloc !388
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !449
  %63 = lshr i32 %62, 24
  %mul.i587 = mul nuw nsw i32 %63, 1000
  %64 = and i32 %62, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i589 = icmp eq i32 %64, 0
  %add.i590 = add nuw nsw i32 %mul.i587, 500
  %spec.select.i591 = select i1 %tobool.not.i589, i32 %mul.i587, i32 %add.i590
  %65 = and i32 %62, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool5.not.i593 = icmp eq i32 %65, 0
  %mul7.i594 = sub nsw i32 0, %spec.select.i591
  %t.1.i595 = select i1 %tobool5.not.i593, i32 %spec.select.i591, i32 %mul7.i594
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.145, i32 noundef %t.1.i595) #10
  %conv.i596 = lshr i32 %62, 8
  %66 = and i32 %conv.i596, 255
  %mul.i597 = mul nuw nsw i32 %66, 1000
  %and2.i598 = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i598)
  %tobool.not.i599 = icmp eq i32 %and2.i598, 0
  %add.i600 = add nuw nsw i32 %mul.i597, 500
  %spec.select.i601 = select i1 %tobool.not.i599, i32 %mul.i597, i32 %add.i600
  %and4.i602 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i602)
  %tobool5.not.i603 = icmp eq i32 %and4.i602, 0
  %mul7.i604 = sub nsw i32 0, %spec.select.i601
  %t.1.i605 = select i1 %tobool5.not.i603, i32 %spec.select.i601, i32 %mul7.i604
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.146, i32 noundef %t.1.i605) #10
  %67 = ptrtoint ptr %regs82 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs82, align 4
  %add.ptr112 = getelementptr i8, ptr %68, i32 460
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr112) #10, !srcloc !388
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !450
  %conv.i606 = lshr i32 %70, 8
  %71 = and i32 %conv.i606, 255
  %mul.i607 = mul nuw nsw i32 %71, 1000
  %and2.i608 = and i32 %70, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i608)
  %tobool.not.i609 = icmp eq i32 %and2.i608, 0
  %add.i610 = add nuw nsw i32 %mul.i607, 500
  %spec.select.i611 = select i1 %tobool.not.i609, i32 %mul.i607, i32 %add.i610
  %and4.i612 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i612)
  %tobool5.not.i613 = icmp eq i32 %and4.i612, 0
  %mul7.i614 = sub nsw i32 0, %spec.select.i611
  %t.1.i615 = select i1 %tobool5.not.i613, i32 %spec.select.i611, i32 %mul7.i614
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.147, i32 noundef %t.1.i615) #10
  %72 = lshr i32 %70, 24
  %mul.i617 = mul nuw nsw i32 %72, 1000
  %73 = and i32 %70, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i619 = icmp eq i32 %73, 0
  %add.i620 = add nuw nsw i32 %mul.i617, 500
  %spec.select.i621 = select i1 %tobool.not.i619, i32 %mul.i617, i32 %add.i620
  %74 = and i32 %70, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool5.not.i623 = icmp eq i32 %74, 0
  %mul7.i624 = sub nsw i32 0, %spec.select.i621
  %t.1.i625 = select i1 %tobool5.not.i623, i32 %spec.select.i621, i32 %mul7.i624
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.148, i32 noundef %t.1.i625) #10
  %75 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %soc, align 4
  %num_ttgs630 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %num_ttgs630 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_ttgs630, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp126631.not = icmp eq i32 %78, 0
  br i1 %cmp126631.not, label %for.end.for.end229_crit_edge, label %for.end.for.body128_crit_edge

for.end.for.body128_crit_edge:                    ; preds = %for.end
  br label %for.body128

for.end.for.end229_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end229

for.body128:                                      ; preds = %for.inc227.for.body128_crit_edge, %for.end.for.body128_crit_edge
  %i.1632 = phi i32 [ %inc228, %for.inc227.for.body128_crit_edge ], [ 0, %for.end.for.body128_crit_edge ]
  %arrayidx129 = getelementptr ptr, ptr %9, i32 %i.1632
  %79 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx129, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.149, ptr noundef %82) #10
  br label %for.body134

for.body134:                                      ; preds = %cond.end222.for.body134_crit_edge, %for.body128
  %level.0629 = phi i32 [ 0, %for.body128 ], [ %inc225, %cond.end222.for.body134_crit_edge ]
  %83 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx129, align 4
  %thermctl_lvl0_offset = getelementptr inbounds %struct.tegra_tsensor_group, ptr %84, i32 0, i32 13
  %85 = ptrtoint ptr %thermctl_lvl0_offset to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %thermctl_lvl0_offset, align 4
  %87 = ptrtoint ptr %regs82 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs82, align 4
  %conv139 = zext i16 %86 to i32
  %mul = shl i32 %level.0629, 5
  %add140 = add i32 %mul, %conv139
  %add.ptr141 = getelementptr i8, ptr %88, i32 %add140
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr141) #10, !srcloc !388
  %90 = tail call i32 @llvm.bswap.i32(i32 %89)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !451
  %91 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx129, align 4
  %thermctl_lvl0_up_thresh_mask = getelementptr inbounds %struct.tegra_tsensor_group, ptr %92, i32 0, i32 14
  %93 = ptrtoint ptr %thermctl_lvl0_up_thresh_mask to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %thermctl_lvl0_up_thresh_mask, align 4
  %and146 = and i32 %94, %90
  %95 = tail call i32 @llvm.cttz.i32(i32 %94, i1 true), !range !391
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %iszero = icmp eq i32 %94, 0
  %sub = select i1 %iszero, i32 -1, i32 %95
  %shr147 = lshr i32 %and146, %sub
  %96 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %soc, align 4
  %bptt = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %97, i32 0, i32 6
  %98 = ptrtoint ptr %bptt to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %bptt, align 4
  %conv.i = sub i32 32, %99
  %conv1.i = and i32 %conv.i, 255
  %shl.i = shl i32 %shr147, %conv1.i
  %shr.i = ashr i32 %shl.i, %conv1.i
  %thresh_grain = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %97, i32 0, i32 5
  %100 = ptrtoint ptr %thresh_grain to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %thresh_grain, align 4
  %mul152 = mul i32 %shr.i, %101
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.150, i32 noundef %level.0629, i32 noundef %mul152) #10
  %102 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx129, align 4
  %thermctl_lvl0_dn_thresh_mask = getelementptr inbounds %struct.tegra_tsensor_group, ptr %103, i32 0, i32 15
  %104 = ptrtoint ptr %thermctl_lvl0_dn_thresh_mask to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %thermctl_lvl0_dn_thresh_mask, align 4
  %and154 = and i32 %105, %90
  %106 = tail call i32 @llvm.cttz.i32(i32 %105, i1 true), !range !391
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %iszero155 = icmp eq i32 %105, 0
  %sub157 = select i1 %iszero155, i32 -1, i32 %106
  %shr158 = lshr i32 %and154, %sub157
  %107 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %soc, align 4
  %bptt160 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %108, i32 0, i32 6
  %109 = ptrtoint ptr %bptt160 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %bptt160, align 4
  %conv.i581 = sub i32 32, %110
  %conv1.i582 = and i32 %conv.i581, 255
  %shl.i583 = shl i32 %shr158, %conv1.i582
  %shr.i584 = ashr i32 %shl.i583, %conv1.i582
  %thresh_grain164 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %108, i32 0, i32 5
  %111 = ptrtoint ptr %thresh_grain164 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %thresh_grain164, align 4
  %mul165 = mul i32 %shr.i584, %112
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.151, i32 noundef %mul165) #10
  %and166 = lshr i32 %90, 8
  %shr170 = and i32 %and166, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.128, i32 noundef %shr170) #10
  %and171 = lshr i32 %90, 5
  %shr175 = and i32 %and171, 3
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.152) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr175)
  %.not = icmp eq i32 %shr175, 3
  br i1 %.not, label %for.body134.if.end188_crit_edge, label %switch.lookup

for.body134.if.end188_crit_edge:                  ; preds = %for.body134
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end188

switch.lookup:                                    ; preds = %for.body134
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.regs_show, i32 0, i32 %shr175
  %113 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %113)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %if.end188

if.end188:                                        ; preds = %switch.lookup, %for.body134.if.end188_crit_edge
  %.str.155.sink = phi ptr [ %switch.load, %switch.lookup ], [ @.str.157, %for.body134.if.end188_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.153, ptr noundef nonnull %.str.155.sink) #10
  %and189 = lshr i32 %90, 3
  %shr193 = and i32 %and189, 3
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.158) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr193)
  %.not642 = icmp eq i32 %shr193, 3
  br i1 %.not642, label %if.end188.if.end207_crit_edge, label %switch.lookup639

if.end188.if.end207_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end207

switch.lookup639:                                 ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep640 = getelementptr inbounds [3 x ptr], ptr @switch.table.regs_show.185, i32 0, i32 %shr193
  %114 = ptrtoint ptr %switch.gep640 to i32
  call void @__asan_load4_noabort(i32 %114)
  %switch.load641 = load ptr, ptr %switch.gep640, align 4
  br label %if.end207

if.end207:                                        ; preds = %switch.lookup639, %if.end188.if.end207_crit_edge
  %.str.155.sink638 = phi ptr [ %switch.load641, %switch.lookup639 ], [ @.str.157, %if.end188.if.end207_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.153, ptr noundef nonnull %.str.155.sink638) #10
  %and208 = and i32 %90, 3
  %115 = zext i32 %and208 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %and208, label %cond.false218 [
    i32 0, label %if.end207.cond.end222_crit_edge
    i32 1, label %cond.end222.fold.split
  ]

if.end207.cond.end222_crit_edge:                  ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end222

cond.false218:                                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and208)
  %cmp219 = icmp eq i32 %and208, 2
  %cond = select i1 %cmp219, ptr @.str.162, ptr @.str.163
  br label %cond.end222

cond.end222.fold.split:                           ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end222

cond.end222:                                      ; preds = %cond.end222.fold.split, %cond.false218, %if.end207.cond.end222_crit_edge
  %cond223 = phi ptr [ @.str.160, %if.end207.cond.end222_crit_edge ], [ %cond, %cond.false218 ], [ @.str.161, %cond.end222.fold.split ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.159, ptr noundef nonnull %cond223) #10
  %inc225 = add nuw nsw i32 %level.0629, 1
  %exitcond.not = icmp eq i32 %inc225, 4
  br i1 %exitcond.not, label %for.inc227, label %cond.end222.for.body134_crit_edge

cond.end222.for.body134_crit_edge:                ; preds = %cond.end222
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body134

for.inc227:                                       ; preds = %cond.end222
  %inc228 = add nuw i32 %i.1632, 1
  %116 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %soc, align 4
  %num_ttgs = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %117, i32 0, i32 3
  %118 = ptrtoint ptr %num_ttgs to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %num_ttgs, align 4
  %cmp126 = icmp ult i32 %inc228, %119
  br i1 %cmp126, label %for.inc227.for.body128_crit_edge, label %for.inc227.for.end229_crit_edge

for.inc227.for.end229_crit_edge:                  ; preds = %for.inc227
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end229

for.inc227.for.body128_crit_edge:                 ; preds = %for.inc227
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body128

for.end229:                                       ; preds = %for.inc227.for.end229_crit_edge, %for.end.for.end229_crit_edge
  %120 = ptrtoint ptr %regs82 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regs82, align 4
  %add.ptr233 = getelementptr i8, ptr %121, i32 148
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr233) #10, !srcloc !388
  %123 = tail call i32 @llvm.bswap.i32(i32 %122)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !452
  %and237 = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and237)
  %tobool238.not = icmp eq i32 %and237, 0
  %cond239 = select i1 %tobool238.not, ptr @.str.166, ptr @.str.165
  %and240 = and i32 %123, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and240)
  %tobool241.not = icmp eq i32 %and240, 0
  %cond242 = select i1 %tobool241.not, ptr @.str.166, ptr @.str.165
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.164, ptr noundef nonnull %cond239, ptr noundef nonnull %cond242) #10
  %124 = ptrtoint ptr %regs82 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs82, align 4
  %add.ptr254 = getelementptr i8, ptr %125, i32 16
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr254) #10, !srcloc !388
  %127 = tail call i32 @llvm.bswap.i32(i32 %126)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !453
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.167, i32 noundef 0, i32 noundef %127) #10
  %128 = ptrtoint ptr %regs82 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs82, align 4
  %add.ptr264 = getelementptr i8, ptr %129, i32 20
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr264) #10, !srcloc !388
  %131 = tail call i32 @llvm.bswap.i32(i32 %130)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !454
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.168, i32 noundef %131) #10
  %132 = ptrtoint ptr %regs82 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs82, align 4
  %add.ptr254.1 = getelementptr i8, ptr %133, i32 48
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr254.1) #10, !srcloc !388
  %135 = tail call i32 @llvm.bswap.i32(i32 %134)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !453
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.167, i32 noundef 1, i32 noundef %135) #10
  %136 = ptrtoint ptr %regs82 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs82, align 4
  %add.ptr264.1 = getelementptr i8, ptr %137, i32 52
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr264.1) #10, !srcloc !388
  %139 = tail call i32 @llvm.bswap.i32(i32 %138)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !454
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.168, i32 noundef %139) #10
  %140 = ptrtoint ptr %regs82 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs82, align 4
  %add.ptr254.2 = getelementptr i8, ptr %141, i32 80
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr254.2) #10, !srcloc !388
  %143 = tail call i32 @llvm.bswap.i32(i32 %142)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !453
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.167, i32 noundef 2, i32 noundef %143) #10
  %144 = ptrtoint ptr %regs82 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regs82, align 4
  %add.ptr264.2 = getelementptr i8, ptr %145, i32 84
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr264.2) #10, !srcloc !388
  %147 = tail call i32 @llvm.bswap.i32(i32 %146)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !454
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.168, i32 noundef %147) #10
  %148 = ptrtoint ptr %regs82 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regs82, align 4
  %add.ptr254.3 = getelementptr i8, ptr %149, i32 112
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr254.3) #10, !srcloc !388
  %151 = tail call i32 @llvm.bswap.i32(i32 %150)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !453
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.167, i32 noundef 3, i32 noundef %151) #10
  %152 = ptrtoint ptr %regs82 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %regs82, align 4
  %add.ptr264.3 = getelementptr i8, ptr %153, i32 116
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr264.3) #10, !srcloc !388
  %155 = tail call i32 @llvm.bswap.i32(i32 %154)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !454
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.168, i32 noundef %155) #10
  %156 = ptrtoint ptr %regs82 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regs82, align 4
  %add.ptr274 = getelementptr i8, ptr %157, i32 128
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr274) #10, !srcloc !388
  %159 = tail call i32 @llvm.bswap.i32(i32 %158)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !455
  %160 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %9, align 4
  %thermtrip_any_en_mask = getelementptr inbounds %struct.tegra_tsensor_group, ptr %161, i32 0, i32 10
  %162 = ptrtoint ptr %thermtrip_any_en_mask to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %thermtrip_any_en_mask, align 4
  %and279 = and i32 %163, %159
  %164 = tail call i32 @llvm.cttz.i32(i32 %163, i1 true), !range !391
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %iszero282 = icmp eq i32 %163, 0
  %sub284 = select i1 %iszero282, i32 -1, i32 %164
  %shr285 = lshr i32 %and279, %sub284
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.169, i32 noundef %shr285) #10
  %165 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %soc, align 4
  %num_ttgs288634 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %166, i32 0, i32 3
  %167 = ptrtoint ptr %num_ttgs288634 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %num_ttgs288634, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp289635.not = icmp eq i32 %168, 0
  br i1 %cmp289635.not, label %for.end229.for.end315_crit_edge, label %for.end229.for.body291_crit_edge

for.end229.for.body291_crit_edge:                 ; preds = %for.end229
  br label %for.body291

for.end229.for.end315_crit_edge:                  ; preds = %for.end229
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end315

for.body291:                                      ; preds = %for.body291.for.body291_crit_edge, %for.end229.for.body291_crit_edge
  %i.2636 = phi i32 [ %inc314, %for.body291.for.body291_crit_edge ], [ 0, %for.end229.for.body291_crit_edge ]
  %arrayidx292 = getelementptr ptr, ptr %9, i32 %i.2636
  %169 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx292, align 4
  %thermtrip_enable_mask = getelementptr inbounds %struct.tegra_tsensor_group, ptr %170, i32 0, i32 9
  %171 = ptrtoint ptr %thermtrip_enable_mask to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %thermtrip_enable_mask, align 4
  %and293 = and i32 %172, %159
  %173 = tail call i32 @llvm.cttz.i32(i32 %172, i1 true), !range !391
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %iszero296 = icmp eq i32 %172, 0
  %sub298 = select i1 %iszero296, i32 -1, i32 %173
  %shr299 = lshr i32 %and293, %sub298
  %174 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %170, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.170, ptr noundef %175, i32 noundef %shr299) #10
  %176 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %arrayidx292, align 4
  %thermtrip_threshold_mask = getelementptr inbounds %struct.tegra_tsensor_group, ptr %177, i32 0, i32 11
  %178 = ptrtoint ptr %thermtrip_threshold_mask to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %thermtrip_threshold_mask, align 4
  %and303 = and i32 %179, %159
  %180 = tail call i32 @llvm.cttz.i32(i32 %179, i1 true), !range !391
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %iszero306 = icmp eq i32 %179, 0
  %sub308 = select i1 %iszero306, i32 -1, i32 %180
  %shr309 = lshr i32 %and303, %sub308
  %181 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %soc, align 4
  %thresh_grain311 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %182, i32 0, i32 5
  %183 = ptrtoint ptr %thresh_grain311 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %thresh_grain311, align 4
  %mul312 = mul i32 %shr309, %184
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.171, i32 noundef %mul312) #10
  %inc314 = add nuw i32 %i.2636, 1
  %185 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %soc, align 4
  %num_ttgs288 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %186, i32 0, i32 3
  %187 = ptrtoint ptr %num_ttgs288 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %num_ttgs288, align 4
  %cmp289 = icmp ult i32 %inc314, %188
  br i1 %cmp289, label %for.body291.for.body291_crit_edge, label %for.body291.for.end315_crit_edge

for.body291.for.end315_crit_edge:                 ; preds = %for.body291
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end315

for.body291.for.body291_crit_edge:                ; preds = %for.body291
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body291

for.end315:                                       ; preds = %for.body291.for.end315_crit_edge, %for.end229.for.end315_crit_edge
  %189 = ptrtoint ptr %regs82 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %regs82, align 4
  %add.ptr319 = getelementptr i8, ptr %190, i32 1024
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr319) #10, !srcloc !388
  %192 = tail call i32 @llvm.bswap.i32(i32 %191)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !456
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.129) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.172, i32 noundef %192) #10
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.173) #10
  %193 = ptrtoint ptr %regs82 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %regs82, align 4
  %add.ptr326 = getelementptr i8, ptr %194, i32 1064
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr326) #10, !srcloc !388
  %196 = tail call i32 @llvm.bswap.i32(i32 %195)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !457
  %and330 = lshr i32 %196, 12
  %shr331 = and i32 %and330, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.174, i32 noundef %shr331) #10
  %and332 = lshr i32 %196, 4
  %shr333 = and i32 %and332, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.175, i32 noundef %shr333) #10
  %and334 = and i32 %196, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.176, i32 noundef %and334) #10
  %197 = ptrtoint ptr %regs82 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %regs82, align 4
  %add.ptr339 = getelementptr i8, ptr %198, i32 1048
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr339) #10, !srcloc !388
  %200 = tail call i32 @llvm.bswap.i32(i32 %199)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  %201 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %soc, align 4
  %use_ccroc = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %202, i32 0, i32 7
  %203 = ptrtoint ptr %use_ccroc to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %use_ccroc, align 4, !range !381
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool344.not = icmp eq i8 %204, 0
  br i1 %tobool344.not, label %if.else348, label %for.end315.if.end355_crit_edge

for.end315.if.end355_crit_edge:                   ; preds = %for.end315
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end355

if.else348:                                       ; preds = %for.end315
  call void @__sanitizer_cov_trace_pc() #12
  %and349 = lshr i32 %200, 12
  %shr350 = and i32 %and349, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.178, i32 noundef %shr350) #10
  %and351 = lshr i32 %200, 4
  %shr352 = and i32 %and351, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.179, i32 noundef %shr352) #10
  br label %if.end355

if.end355:                                        ; preds = %if.else348, %for.end315.if.end355_crit_edge
  %.str.176.sink = phi ptr [ @.str.176, %if.else348 ], [ @.str.177, %for.end315.if.end355_crit_edge ]
  %and353 = and i32 %200, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull %.str.176.sink, i32 noundef %and353) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soctherm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call = tail call fastcc i32 @soctherm_clk_enable(ptr noundef %add.ptr, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soctherm_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %soc1 = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %soc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc1, align 4
  %call2 = tail call fastcc i32 @soctherm_clk_enable(ptr noundef %add.ptr, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup15.sink.split_crit_edge

entry.cleanup15.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup15.sink.split

if.end:                                           ; preds = %entry
  tail call fastcc void @soctherm_init(ptr noundef %add.ptr)
  %num_ttgs = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %num_ttgs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ttgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp36.not = icmp eq i32 %5, 0
  br i1 %cmp36.not, label %if.end.cleanup15_crit_edge, label %for.body.lr.ph

if.end.cleanup15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup15

for.body.lr.ph:                                   ; preds = %if.end
  %thermctl_tzs = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 9
  %ttgs = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %3, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.037, 1
  %6 = ptrtoint ptr %num_ttgs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ttgs, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup15_crit_edge

for.cond.cleanup15_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup15

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %8 = ptrtoint ptr %thermctl_tzs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %thermctl_tzs, align 4
  %10 = ptrtoint ptr %ttgs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ttgs, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %i.037
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %id = getelementptr inbounds %struct.tegra_tsensor_group, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %id, align 4
  %idxprom = zext i8 %15 to i32
  %arrayidx4 = getelementptr ptr, ptr %9, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx4, align 4
  %call7 = tail call fastcc i32 @tegra_soctherm_set_hwtrips(ptr noundef %dev, ptr noundef %13, ptr noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %for.cond, label %for.body.cleanup15.sink.split_crit_edge

for.body.cleanup15.sink.split_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup15.sink.split

cleanup15.sink.split:                             ; preds = %for.body.cleanup15.sink.split_crit_edge, %entry.cleanup15.sink.split_crit_edge
  %.str.183.sink = phi ptr [ @.str.180, %entry.cleanup15.sink.split_crit_edge ], [ @.str.183, %for.body.cleanup15.sink.split_crit_edge ]
  %retval.2.ph = phi i32 [ %call2, %entry.cleanup15.sink.split_crit_edge ], [ %call7, %for.body.cleanup15.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.183.sink) #13
  br label %cleanup15

cleanup15:                                        ; preds = %cleanup15.sink.split, %for.cond.cleanup15_crit_edge, %if.end.cleanup15_crit_edge
  %retval.2 = phi i32 [ 0, %if.end.cleanup15_crit_edge ], [ %retval.2.ph, %cleanup15.sink.split ], [ 0, %for.cond.cleanup15_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 189)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 189)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35, !37, !38, !39, !41, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63, !64, !65, !66, !67, !69, !70, !71, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !111, !112, !113, !115, !117, !119, !121, !122, !123, !125, !127, !129, !131, !133, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !179, !181, !182, !184, !185, !187, !188, !189, !191, !193, !194, !195, !197, !198, !199, !200, !202, !203, !205, !207, !208, !209, !211, !212, !214, !216, !218, !219, !220, !221, !223, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !239, !240, !242, !243, !245, !246, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !366, !367, !368, !370, !371}
!llvm.module.flags = !{!372, !373, !374, !375, !376, !377, !378, !379}
!llvm.ident = !{!380}

!0 = !{ptr @__initcall__kmod_tegra_soctherm__244_2322_tegra_soctherm_driver_init6, !1, !"__initcall__kmod_tegra_soctherm__244_2322_tegra_soctherm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2322, i32 1}
!2 = !{ptr @__exitcall_tegra_soctherm_driver_exit, !1, !"__exitcall_tegra_soctherm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author245, !4, !"__UNIQUE_ID_author245", i1 false, i1 false}
!4 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2324, i32 1}
!5 = !{ptr @__UNIQUE_ID_description246, !6, !"__UNIQUE_ID_description246", i1 false, i1 false}
!6 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2325, i32 1}
!7 = !{ptr @__UNIQUE_ID_file247, !8, !"__UNIQUE_ID_file247", i1 false, i1 false}
!8 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2326, i32 1}
!9 = !{ptr @__UNIQUE_ID_license248, !8, !"__UNIQUE_ID_license248", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2317, i32 11}
!12 = !{ptr @tegra_soctherm_driver, !13, !"tegra_soctherm_driver", i1 false, i1 false}
!13 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2313, i32 31}
!14 = !{ptr @tegra_soctherm_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2137, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2142, i32 60}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2144, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @tegra_soctherm_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @tegra_soctherm_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2149, i32 65}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2151, i32 4}
!31 = !{ptr @tegra_soctherm_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @tegra_soctherm_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2155, i32 67}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2157, i32 4}
!37 = !{ptr @tegra_soctherm_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @tegra_soctherm_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2162, i32 52}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2164, i32 3}
!43 = !{ptr @tegra_soctherm_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @tegra_soctherm_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2168, i32 50}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2170, i32 3}
!49 = !{ptr @tegra_soctherm_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @tegra_soctherm_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2176, i32 3}
!53 = !{ptr @tegra_soctherm_probe._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @tegra_soctherm_probe._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2234, i32 4}
!57 = !{ptr @tegra_soctherm_probe._entry.27, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @tegra_soctherm_probe._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1584, i32 48}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1586, i32 3}
!63 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @soctherm_thermtrips_parse._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @soctherm_thermtrips_parse._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1599, i32 3}
!69 = !{ptr @soctherm_thermtrips_parse._entry.34, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @soctherm_thermtrips_parse._entry_ptr.36, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1705, i32 46}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1707, i32 3}
!75 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @soctherm_init_hw_throt_cdev._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @soctherm_init_hw_throt_cdev._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1720, i32 4}
!80 = !{ptr @soctherm_init_hw_throt_cdev._entry.40, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @soctherm_init_hw_throt_cdev._entry_ptr.42, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1726, i32 4}
!84 = !{ptr @soctherm_init_hw_throt_cdev._entry.43, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @soctherm_init_hw_throt_cdev._entry_ptr.45, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1744, i32 5}
!88 = !{ptr @soctherm_init_hw_throt_cdev._entry.46, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @soctherm_init_hw_throt_cdev._entry_ptr.48, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/thermal/tegra/soctherm.c", i32 290, i32 21}
!92 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/thermal/tegra/soctherm.c", i32 291, i32 21}
!94 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/thermal/tegra/soctherm.c", i32 292, i32 21}
!96 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/thermal/tegra/soctherm.c", i32 293, i32 21}
!98 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/thermal/tegra/soctherm.c", i32 294, i32 21}
!100 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/thermal/tegra/soctherm.c", i32 295, i32 21}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/thermal/tegra/soctherm.c", i32 296, i32 21}
!104 = distinct !{null, !105, !"throt_names", i1 false, i1 false}
!105 = !{!"../drivers/thermal/tegra/soctherm.c", i32 289, i32 26}
!106 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1650, i32 33}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1652, i32 3}
!110 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @soctherm_throt_cfg_parse._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @soctherm_throt_cfg_parse._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1658, i32 8}
!115 = !{ptr @.str.60, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1659, i32 8}
!117 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1672, i32 33}
!119 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1681, i32 2}
!121 = !{ptr @soctherm_throt_cfg_parse._entry.62, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @soctherm_throt_cfg_parse._entry_ptr.64, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.65, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1622, i32 35}
!125 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1627, i32 35}
!127 = !{ptr @.str.67, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1632, i32 35}
!129 = !{ptr @.str.68, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1635, i32 35}
!131 = !{ptr @throt_cooling_ops, !132, !"throt_cooling_ops", i1 false, i1 false}
!132 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1566, i32 48}
!133 = !{ptr @tegra_of_thermal_ops, !134, !"tegra_of_thermal_ops", i1 false, i1 false}
!134 = !{!"../drivers/thermal/tegra/soctherm.c", i32 716, i32 48}
!135 = !{ptr @.str.69, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/thermal/tegra/soctherm.c", i32 704, i32 2}
!137 = !{ptr @.str.70, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @tegra_thermctl_set_trips.__UNIQUE_ID_ddebug234, !136, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!139 = !{ptr @.str.71, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/thermal/tegra/soctherm.c", i32 453, i32 3}
!141 = !{ptr @.str.72, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @enforce_temp_range.__UNIQUE_ID_ddebug231, !140, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!143 = !{ptr @.str.73, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/thermal/tegra/soctherm.c", i32 539, i32 4}
!145 = !{ptr @.str.74, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.75, !144, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @throttrip_program._entry, !144, !"_entry", i1 false, i1 false}
!148 = !{ptr @throttrip_program._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.76, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/thermal/tegra/soctherm.c", i32 788, i32 3}
!151 = !{ptr @.str.77, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @tegra_soctherm_set_hwtrips._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @tegra_soctherm_set_hwtrips._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.79, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/thermal/tegra/soctherm.c", i32 792, i32 2}
!156 = !{ptr @tegra_soctherm_set_hwtrips._entry.78, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @tegra_soctherm_set_hwtrips._entry_ptr.80, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.82, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/thermal/tegra/soctherm.c", i32 797, i32 3}
!160 = !{ptr @tegra_soctherm_set_hwtrips._entry.81, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @tegra_soctherm_set_hwtrips._entry_ptr.83, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.85, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/thermal/tegra/soctherm.c", i32 816, i32 4}
!164 = !{ptr @tegra_soctherm_set_hwtrips._entry.84, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @tegra_soctherm_set_hwtrips._entry_ptr.86, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.88, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/thermal/tegra/soctherm.c", i32 821, i32 3}
!168 = !{ptr @tegra_soctherm_set_hwtrips._entry.87, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @tegra_soctherm_set_hwtrips._entry_ptr.89, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.91, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/thermal/tegra/soctherm.c", i32 828, i32 3}
!172 = !{ptr @tegra_soctherm_set_hwtrips._entry.90, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @tegra_soctherm_set_hwtrips._entry_ptr.92, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.93, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2018, i32 3}
!176 = !{ptr @.str.94, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @soctherm_interrupts_init._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @soctherm_interrupts_init._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.95, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2024, i32 3}
!181 = !{ptr @soctherm_interrupts_init.__UNIQUE_ID_ddebug242, !180, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!182 = !{ptr @.str.96, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2030, i32 3}
!184 = !{ptr @soctherm_interrupts_init.__UNIQUE_ID_ddebug243, !183, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!185 = !{ptr @.str.98, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2042, i32 3}
!187 = !{ptr @soctherm_interrupts_init._entry.97, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @soctherm_interrupts_init._entry_ptr.99, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.100, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2051, i32 6}
!191 = !{ptr @.str.102, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2054, i32 3}
!193 = !{ptr @soctherm_interrupts_init._entry.101, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @soctherm_interrupts_init._entry_ptr.103, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.104, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1262, i32 3}
!197 = !{ptr @.str.105, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @soctherm_oc_int_init._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @soctherm_oc_int_init._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @soctherm_oc_int_init.__key, !201, !"__key", i1 false, i1 false}
!201 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1266, i32 2}
!202 = !{ptr @.str.106, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.107, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1269, i32 32}
!205 = !{ptr @.str.109, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1283, i32 3}
!207 = !{ptr @soctherm_oc_int_init._entry.108, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @soctherm_oc_int_init._entry_ptr.110, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.111, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1287, i32 2}
!211 = !{ptr @soctherm_oc_int_init.__UNIQUE_ID_ddebug239, !210, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!212 = !{ptr @soc_irq_cdata, !213, !"soc_irq_cdata", i1 false, i1 false}
!213 = !{!"../drivers/thermal/tegra/soctherm.c", i32 358, i32 41}
!214 = !{ptr @soctherm_oc_domain_ops, !215, !"soctherm_oc_domain_ops", i1 false, i1 false}
!215 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1242, i32 36}
!216 = !{ptr @.str.112, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/thermal/tegra/soctherm.c", i32 928, i32 3}
!218 = !{ptr @.str.113, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @soctherm_thermal_isr_thread._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @soctherm_thermal_isr_thread._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.114, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1047, i32 2}
!223 = !{ptr @.str.115, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @soctherm_edp_isr_thread._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @soctherm_edp_isr_thread._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.117, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1082, i32 3}
!228 = !{ptr @soctherm_edp_isr_thread._entry.116, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @soctherm_edp_isr_thread._entry_ptr.118, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.119, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/thermal/tegra/soctherm.c", i32 990, i32 3}
!232 = !{ptr @.str.120, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @soctherm_handle_alarm.__UNIQUE_ID_ddebug235, !231, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!234 = !{ptr @.str.121, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/thermal/tegra/soctherm.c", i32 995, i32 3}
!236 = !{ptr @soctherm_handle_alarm.__UNIQUE_ID_ddebug236, !235, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!237 = !{ptr @.str.122, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1000, i32 3}
!239 = !{ptr @soctherm_handle_alarm.__UNIQUE_ID_ddebug237, !238, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!240 = !{ptr @.str.123, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1005, i32 3}
!242 = !{ptr @soctherm_handle_alarm.__UNIQUE_ID_ddebug238, !241, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!243 = !{ptr @.str.124, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1014, i32 3}
!245 = !{ptr @soctherm_handle_alarm._entry, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @soctherm_handle_alarm._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.125, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1499, i32 22}
!249 = !{ptr @regs_fops, !250, !"regs_fops", i1 false, i1 false}
!250 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1488, i32 1}
!251 = !{ptr @.str.126, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1301, i32 14}
!253 = !{ptr @.str.127, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1307, i32 17}
!255 = !{ptr @.str.128, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1308, i32 17}
!257 = !{ptr @.str.129, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1311, i32 16}
!259 = !{ptr @.str.130, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1316, i32 17}
!261 = !{ptr @.str.131, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1318, i32 17}
!263 = !{ptr @.str.132, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1320, i32 17}
!265 = !{ptr @.str.133, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1324, i32 17}
!267 = !{ptr @.str.134, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1326, i32 17}
!269 = !{ptr @.str.135, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1330, i32 17}
!271 = !{ptr @.str.136, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1336, i32 17}
!273 = !{ptr @.str.137, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1338, i32 17}
!275 = !{ptr @.str.138, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1340, i32 17}
!277 = !{ptr @.str.139, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1342, i32 17}
!279 = !{ptr @.str.140, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1348, i32 17}
!281 = !{ptr @.str.141, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1350, i32 17}
!283 = !{ptr @.str.142, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1354, i32 16}
!285 = !{ptr @.str.143, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1357, i32 16}
!287 = !{ptr @.str.144, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1360, i32 14}
!289 = !{ptr @.str.145, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1364, i32 16}
!291 = !{ptr @.str.146, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1366, i32 16}
!293 = !{ptr @.str.147, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1369, i32 16}
!295 = !{ptr @.str.148, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1371, i32 16}
!297 = !{ptr @.str.149, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1374, i32 17}
!299 = !{ptr @.str.150, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1386, i32 18}
!301 = !{ptr @.str.151, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1392, i32 18}
!303 = !{ptr @.str.152, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1400, i32 16}
!305 = !{ptr @.str.153, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1402, i32 19}
!307 = !{ptr @.str.154, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1402, i32 28}
!309 = !{ptr @.str.155, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1404, i32 28}
!311 = !{ptr @.str.156, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1406, i32 28}
!313 = !{ptr @.str.157, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1408, i32 28}
!315 = !{ptr @.str.158, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1412, i32 16}
!317 = !{ptr @.str.159, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1424, i32 18}
!319 = !{ptr @.str.160, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1425, i32 21}
!321 = !{ptr @.str.161, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1426, i32 21}
!323 = !{ptr @.str.162, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1427, i32 21}
!325 = !{ptr @.str.163, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1427, i32 29}
!327 = !{ptr @.str.164, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1432, i32 16}
!329 = !{ptr @.str.165, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1433, i32 28}
!331 = !{ptr @.str.166, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1433, i32 35}
!333 = !{ptr @.str.167, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1441, i32 17}
!335 = !{ptr @.str.168, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1445, i32 17}
!337 = !{ptr @.str.169, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1450, i32 16}
!339 = !{ptr @.str.170, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1453, i32 17}
!341 = !{ptr @.str.171, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1456, i32 17}
!343 = !{ptr @.str.172, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1461, i32 16}
!345 = !{ptr @.str.173, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1463, i32 14}
!347 = !{ptr @.str.174, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1466, i32 16}
!349 = !{ptr @.str.175, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1468, i32 16}
!351 = !{ptr @.str.176, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1470, i32 16}
!353 = !{ptr @.str.177, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1475, i32 17}
!355 = !{ptr @.str.178, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1478, i32 17}
!357 = !{ptr @.str.179, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/thermal/tegra/soctherm.c", i32 1480, i32 17}
!359 = !{ptr @tegra_soctherm_of_match, !360, !"tegra_soctherm_of_match", i1 false, i1 false}
!360 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2092, i32 34}
!361 = !{ptr @tegra_soctherm_pm, !362, !"tegra_soctherm_pm", i1 false, i1 false}
!362 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2311, i32 8}
!363 = !{ptr @.str.180, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2289, i32 3}
!365 = !{ptr @.str.181, !364, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @soctherm_resume._entry, !364, !"_entry", i1 false, i1 false}
!367 = !{ptr @soctherm_resume._entry_ptr, !364, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.183, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/thermal/tegra/soctherm.c", i32 2302, i32 4}
!370 = !{ptr @soctherm_resume._entry.182, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @soctherm_resume._entry_ptr.184, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{i32 1, !"wchar_size", i32 2}
!373 = !{i32 1, !"min_enum_size", i32 4}
!374 = !{i32 8, !"branch-target-enforcement", i32 0}
!375 = !{i32 8, !"sign-return-address", i32 0}
!376 = !{i32 8, !"sign-return-address-all", i32 0}
!377 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!378 = !{i32 7, !"uwtable", i32 1}
!379 = !{i32 7, !"frame-pointer", i32 2}
!380 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!381 = !{i8 0, i8 2}
!382 = !{!"branch_weights", i32 1, i32 2000}
!383 = !{!"auto-init"}
!384 = !{i64 2154045140}
!385 = !{i64 5289071}
!386 = !{i64 2154045605}
!387 = !{i64 2154045990}
!388 = !{i64 5289489}
!389 = !{i64 2154186300}
!390 = !{i64 2154186800}
!391 = !{i32 0, i32 33}
!392 = !{i64 2154187563}
!393 = !{i64 2154187969}
!394 = !{i64 2154044931}
!395 = !{i64 2154044078}
!396 = !{i64 2154168940}
!397 = !{i64 2154169514}
!398 = !{i64 2154170135}
!399 = !{i64 2154170757}
!400 = !{i64 2154100444}
!401 = !{i64 2154102093}
!402 = !{i64 2154159150}
!403 = !{i64 2154160227}
!404 = !{i64 2154161188}
!405 = !{i64 2154162261}
!406 = !{i64 2154163344}
!407 = !{i64 2154164375}
!408 = !{i64 2154165101}
!409 = !{i64 2154166161}
!410 = !{i64 2154167100}
!411 = !{i64 2154171481}
!412 = !{i64 2154172129}
!413 = !{i64 2154172814}
!414 = !{i64 2154173254}
!415 = !{i64 2154175059}
!416 = !{i64 2154175646}
!417 = !{i64 2154176049}
!418 = !{i64 2148552565, i64 2148552570, i64 2148552583, i64 2148552627, i64 2148552661, i64 2148552682}
!419 = !{i64 2154140906}
!420 = !{i64 2154046819}
!421 = !{i64 2154079034}
!422 = !{i64 2154079517}
!423 = !{i64 2154080294}
!424 = !{i64 2154080894}
!425 = !{i64 2154084650}
!426 = !{i64 2154077825}
!427 = !{i64 2154078314}
!428 = !{i64 2154066073}
!429 = !{i64 2154067101}
!430 = !{i64 2154069570}
!431 = !{i64 2154071145}
!432 = !{i64 2154095956}
!433 = !{i64 2154096171}
!434 = !{i64 2154096821}
!435 = !{i64 2154097701}
!436 = !{i64 2154099786}
!437 = !{i64 2154119167}
!438 = !{i64 2154119384}
!439 = !{i64 2154114015}
!440 = !{i64 2154116114}
!441 = !{i64 2154118508}
!442 = !{i64 2154126694}
!443 = !{i64 2154127748}
!444 = !{i64 2154128599}
!445 = !{i64 2154129440}
!446 = !{i64 2154130953}
!447 = !{i64 2154131627}
!448 = !{i64 2154132115}
!449 = !{i64 2154132603}
!450 = !{i64 2154133277}
!451 = !{i64 2154134105}
!452 = !{i64 2154135096}
!453 = !{i64 2154135751}
!454 = !{i64 2154136398}
!455 = !{i64 2154136881}
!456 = !{i64 2154137804}
!457 = !{i64 2154138292}
!458 = !{i64 2154139312}
