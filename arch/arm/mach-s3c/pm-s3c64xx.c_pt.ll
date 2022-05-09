; ModuleID = '/llk/IR_all_yes/arch/arm/mach-s3c/pm-s3c64xx.c_pt.bc'
source_filename = "../arch/arm/mach-s3c/pm-s3c64xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sleep_save = type { ptr, i32 }
%struct.dev_power_governor = type { ptr, ptr }
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
%struct.s3c64xx_pm_domain = type { ptr, i32, i32, %struct.generic_pm_domain }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.81 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.81 = type { %struct.mutex }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.samsung_wakeup_mask = type { i32, i32 }

@s3c_irqwake_eintmask = external dso_local local_unnamed_addr global i32, align 4
@core_save = internal global { [2 x %struct.sleep_save], [16 x i8] } { [2 x %struct.sleep_save] [%struct.sleep_save { ptr inttoptr (i32 -162528816 to ptr), i32 0 }, %struct.sleep_save { ptr inttoptr (i32 -162528812 to ptr), i32 0 }], [16 x i8] zeroinitializer }, align 32
@misc_save = internal global { [12 x %struct.sleep_save], [32 x i8] } { [12 x %struct.sleep_save] [%struct.sleep_save { ptr inttoptr (i32 -166723328 to ptr), i32 0 }, %struct.sleep_save { ptr inttoptr (i32 -166723324 to ptr), i32 0 }, %struct.sleep_save { ptr inttoptr (i32 -166723320 to ptr), i32 0 }, %struct.sleep_save { ptr inttoptr (i32 -162528864 to ptr), i32 0 }, %struct.sleep_save { ptr inttoptr (i32 -162528848 to ptr), i32 0 }, %struct.sleep_save { ptr inttoptr (i32 -162528844 to ptr), i32 0 }, %struct.sleep_save { ptr inttoptr (i32 -162528832 to ptr), i32 0 }, %struct.sleep_save { ptr inttoptr (i32 -162528828 to ptr), i32 0 }, %struct.sleep_save { ptr inttoptr (i32 -162528824 to ptr), i32 0 }, %struct.sleep_save { ptr inttoptr (i32 -166723312 to ptr), i32 0 }, %struct.sleep_save { ptr inttoptr (i32 -161480692 to ptr), i32 0 }, %struct.sleep_save { ptr inttoptr (i32 -166721520 to ptr), i32 0 }], [32 x i8] zeroinitializer }, align 32
@pm_domain_always_on_gov = external dso_local global %struct.dev_power_governor, align 4
@s3c64xx_pm_domains = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @s3c64xx_pm_etm, ptr @s3c64xx_pm_g, ptr @s3c64xx_pm_v, ptr @s3c64xx_pm_i, ptr @s3c64xx_pm_p, ptr @s3c64xx_pm_s, ptr @s3c64xx_pm_f], [36 x i8] zeroinitializer }, align 32
@s3c_device_fb = external dso_local global %struct.platform_device, align 8
@s3c64xx_pm_f = internal global { %struct.s3c64xx_pm_domain, [328 x i8] } { %struct.s3c64xx_pm_domain { ptr @.str.10, i32 16384, i32 16, %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr null, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr @s3c64xx_pd_off, ptr @s3c64xx_pd_on, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.81 zeroinitializer } }, [328 x i8] zeroinitializer }, align 32
@__initcall__kmod_pm_s3c64xx__288_400_s3c64xx_pm_initcall3 = internal global ptr @s3c64xx_pm_initcall, section ".initcall3.init", align 4
@s3c64xx_pm_irom = internal global { %struct.s3c64xx_pm_domain, [328 x i8] } { %struct.s3c64xx_pm_domain { ptr @.str, i32 1073741824, i32 0, %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr null, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr @s3c64xx_pd_off, ptr @s3c64xx_pd_on, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.81 zeroinitializer } }, [328 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IROM\00", [27 x i8] zeroinitializer }, align 32
@s3c64xx_pd_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Failed to start domain %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s3c64xx_pd_on\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"arch/arm/mach-s3c/pm-s3c64xx.c\00", [33 x i8] zeroinitializer }, align 32
@s3c64xx_pd_on._entry_ptr = internal global ptr @s3c64xx_pd_on._entry, section ".printk_index", align 4
@s3c64xx_pm_etm = internal global { %struct.s3c64xx_pm_domain, [328 x i8] } { %struct.s3c64xx_pm_domain { ptr @.str.4, i32 65536, i32 64, %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr null, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr @s3c64xx_pd_off, ptr @s3c64xx_pd_on, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.81 zeroinitializer } }, [328 x i8] zeroinitializer }, align 32
@s3c64xx_pm_g = internal global { %struct.s3c64xx_pm_domain, [328 x i8] } { %struct.s3c64xx_pm_domain { ptr @.str.5, i32 1024, i32 0, %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr null, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr @s3c64xx_pd_off, ptr @s3c64xx_pd_on, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.81 zeroinitializer } }, [328 x i8] zeroinitializer }, align 32
@s3c64xx_pm_v = internal global { %struct.s3c64xx_pm_domain, [328 x i8] } { %struct.s3c64xx_pm_domain { ptr @.str.6, i32 512, i32 2, %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr null, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr @s3c64xx_pd_off, ptr @s3c64xx_pd_on, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.81 zeroinitializer } }, [328 x i8] zeroinitializer }, align 32
@s3c64xx_pm_i = internal global { %struct.s3c64xx_pm_domain, [328 x i8] } { %struct.s3c64xx_pm_domain { ptr @.str.7, i32 4096, i32 4, %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr null, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr @s3c64xx_pd_off, ptr @s3c64xx_pd_on, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.81 zeroinitializer } }, [328 x i8] zeroinitializer }, align 32
@s3c64xx_pm_p = internal global { %struct.s3c64xx_pm_domain, [328 x i8] } { %struct.s3c64xx_pm_domain { ptr @.str.8, i32 8192, i32 8, %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr null, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr @s3c64xx_pd_off, ptr @s3c64xx_pd_on, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.81 zeroinitializer } }, [328 x i8] zeroinitializer }, align 32
@s3c64xx_pm_s = internal global { %struct.s3c64xx_pm_domain, [328 x i8] } { %struct.s3c64xx_pm_domain { ptr @.str.9, i32 32768, i32 32, %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr null, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr @s3c64xx_pd_off, ptr @s3c64xx_pd_on, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.81 zeroinitializer } }, [328 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ETM\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"G\00", [30 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"V\00", [30 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"I\00", [30 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"P\00", [30 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"S\00", [30 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"F\00", [30 x i8] zeroinitializer }, align 32
@pm_cpu_prep = external dso_local local_unnamed_addr global ptr, align 4
@pm_cpu_sleep = external dso_local local_unnamed_addr global ptr, align 4
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DEBUG_LED0\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DEBUG_LED1\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DEBUG_LED2\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DEBUG_LED3\00", [21 x i8] zeroinitializer }, align 32
@samsung_cpu_id = external dso_local local_unnamed_addr global i32, align 4
@wake_irqs = internal constant { [10 x %struct.samsung_wakeup_mask], [48 x i8] } { [10 x %struct.samsung_wakeup_mask] [%struct.samsung_wakeup_mask { i32 92, i32 1024 }, %struct.samsung_wakeup_mask { i32 34, i32 2048 }, %struct.samsung_wakeup_mask { i32 94, i32 4096 }, %struct.samsung_wakeup_mask { i32 88, i32 16384 }, %struct.samsung_wakeup_mask { i32 89, i32 32768 }, %struct.samsung_wakeup_mask { i32 81, i32 65536 }, %struct.samsung_wakeup_mask { i32 -1879048192, i32 128 }, %struct.samsung_wakeup_mask { i32 -1879048192, i32 512 }, %struct.samsung_wakeup_mask { i32 -1879048192, i32 8192 }, %struct.samsung_wakeup_mask { i32 -1879048192, i32 512 }], [48 x i8] zeroinitializer }, align 32
@s3c64xx_cpu_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016Failed to suspend the system\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s3c64xx_cpu_suspend\00", [44 x i8] zeroinitializer }, align 32
@s3c64xx_cpu_suspend._entry_ptr = internal global ptr @s3c64xx_cpu_suspend._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 910163968, i64 910229504]
@___asan_gen_.17 = private unnamed_addr constant [10 x i8] c"core_save\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 194, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant [10 x i8] c"misc_save\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 199, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"s3c64xx_pm_domains\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 166, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"s3c64xx_pm_f\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 113, i32 33 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"s3c64xx_pm_irom\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 84, i32 33 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 85, i32 10 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 76, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"s3c64xx_pm_etm\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 93, i32 33 }
@___asan_gen_.50 = private unnamed_addr constant [13 x i8] c"s3c64xx_pm_g\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 143, i32 33 }
@___asan_gen_.53 = private unnamed_addr constant [13 x i8] c"s3c64xx_pm_v\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 152, i32 33 }
@___asan_gen_.56 = private unnamed_addr constant [13 x i8] c"s3c64xx_pm_i\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 133, i32 33 }
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"s3c64xx_pm_p\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 123, i32 33 }
@___asan_gen_.62 = private unnamed_addr constant [13 x i8] c"s3c64xx_pm_s\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 103, i32 33 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 94, i32 10 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 144, i32 10 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 153, i32 10 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 134, i32 10 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 124, i32 10 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 104, i32 10 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 114, i32 10 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 388, i32 32 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 389, i32 32 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 390, i32 32 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 391, i32 32 }
@___asan_gen_.98 = private unnamed_addr constant [10 x i8] c"wake_irqs\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 283, i32 41 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [34 x i8] c"../arch/arm/mach-s3c/pm-s3c64xx.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 278, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__initcall__kmod_pm_s3c64xx__288_400_s3c64xx_pm_initcall3, ptr @s3c64xx_cpu_suspend._entry, ptr @s3c64xx_cpu_suspend._entry_ptr, ptr @s3c64xx_pd_on._entry, ptr @s3c64xx_pd_on._entry_ptr, ptr @core_save, ptr @misc_save, ptr @s3c64xx_pm_domains, ptr @s3c64xx_pm_f, ptr @s3c64xx_pm_irom, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @s3c64xx_pm_etm, ptr @s3c64xx_pm_g, ptr @s3c64xx_pm_v, ptr @s3c64xx_pm_i, ptr @s3c64xx_pm_p, ptr @s3c64xx_pm_s, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @wake_irqs, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_save to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @misc_save to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_pm_domains to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_pm_f to i32), i32 1368, i32 1696, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_pm_irom to i32), i32 1368, i32 1696, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_pd_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_pm_etm to i32), i32 1368, i32 1696, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_pm_g to i32), i32 1368, i32 1696, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_pm_v to i32), i32 1368, i32 1696, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_pm_i to i32), i32 1368, i32 1696, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_pm_p to i32), i32 1368, i32 1696, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_pm_s to i32), i32 1368, i32 1696, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wake_irqs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_cpu_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c_pm_debug_smdkled(i32 noundef %set, i32 noundef %clear) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !72
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @trace_hardirqs_off() #4
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %and = and i32 %clear, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %do.end11.if.end17_crit_edge, label %if.then15

do.end11.if.end17_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then15:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call ptr @gpio_to_desc(i32 noundef 156) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 0) #4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %do.end11.if.end17_crit_edge
  %and19 = and i32 %set, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end17.for.inc_crit_edge, label %if.then21

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %call.i63 = tail call ptr @gpio_to_desc(i32 noundef 156) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i63, i32 noundef 1) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %if.end17.for.inc_crit_edge
  %and.1 = and i32 %clear, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool14.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool14.not.1, label %for.inc.if.end17.1_crit_edge, label %if.then15.1

for.inc.if.end17.1_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17.1

if.then15.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.1 = tail call ptr @gpio_to_desc(i32 noundef 157) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.1, i32 noundef 0) #4
  br label %if.end17.1

if.end17.1:                                       ; preds = %if.then15.1, %for.inc.if.end17.1_crit_edge
  %and19.1 = and i32 %set, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.1)
  %tobool20.not.1 = icmp eq i32 %and19.1, 0
  br i1 %tobool20.not.1, label %if.end17.1.for.inc.1_crit_edge, label %if.then21.1

if.end17.1.for.inc.1_crit_edge:                   ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then21.1:                                      ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #6
  %call.i63.1 = tail call ptr @gpio_to_desc(i32 noundef 157) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i63.1, i32 noundef 1) #4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then21.1, %if.end17.1.for.inc.1_crit_edge
  %and.2 = and i32 %clear, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool14.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool14.not.2, label %for.inc.1.if.end17.2_crit_edge, label %if.then15.2

for.inc.1.if.end17.2_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17.2

if.then15.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.2 = tail call ptr @gpio_to_desc(i32 noundef 158) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.2, i32 noundef 0) #4
  br label %if.end17.2

if.end17.2:                                       ; preds = %if.then15.2, %for.inc.1.if.end17.2_crit_edge
  %and19.2 = and i32 %set, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.2)
  %tobool20.not.2 = icmp eq i32 %and19.2, 0
  br i1 %tobool20.not.2, label %if.end17.2.for.inc.2_crit_edge, label %if.then21.2

if.end17.2.for.inc.2_crit_edge:                   ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.then21.2:                                      ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #6
  %call.i63.2 = tail call ptr @gpio_to_desc(i32 noundef 158) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i63.2, i32 noundef 1) #4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then21.2, %if.end17.2.for.inc.2_crit_edge
  %and.3 = and i32 %clear, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool14.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool14.not.3, label %for.inc.2.if.end17.3_crit_edge, label %if.then15.3

for.inc.2.if.end17.3_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17.3

if.then15.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.3 = tail call ptr @gpio_to_desc(i32 noundef 159) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.3, i32 noundef 0) #4
  br label %if.end17.3

if.end17.3:                                       ; preds = %if.then15.3, %for.inc.2.if.end17.3_crit_edge
  %and19.3 = and i32 %set, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.3)
  %tobool20.not.3 = icmp eq i32 %and19.3, 0
  br i1 %tobool20.not.3, label %if.end17.3.for.inc.3_crit_edge, label %if.then21.3

if.end17.3.for.inc.3_crit_edge:                   ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

if.then21.3:                                      ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_pc() #6
  %call.i63.3 = tail call ptr @gpio_to_desc(i32 noundef 159) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i63.3, i32 noundef 1) #4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then21.3, %if.end17.3.for.inc.3_crit_edge
  br i1 %tobool.not, label %if.then34, label %for.inc.3.do.body36_crit_edge

for.inc.3.do.body36_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body36

if.then34:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @trace_hardirqs_on() #4
  br label %do.body36

do.body36:                                        ; preds = %if.then34, %for.inc.3.do.body36_crit_edge
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !73
  %and.i.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool44.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool44.not, label %if.then48, label %do.body36.do.end51_crit_edge, !prof !74

do.body36.do.end51_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end51

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @warn_bogus_irq_restore() #4
  br label %do.end51

do.end51:                                         ; preds = %if.then48, %do.body36.do.end51_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #4, !srcloc !75
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c_pm_configure_extint() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @s3c_irqwake_eintmask to i32))
  %0 = load i32, ptr @s3c_irqwake_eintmask, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -166721528 to ptr), i32 %0) #4, !srcloc !76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c_pm_restore_core() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -166721528 to ptr), i32 0) #4, !srcloc !76
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !72
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body36.i.critedge

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @trace_hardirqs_off() #4
  %call.i63.2.i.c = tail call ptr @gpio_to_desc(i32 noundef 158) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i63.2.i.c, i32 noundef 1) #4
  tail call void @trace_hardirqs_on() #4
  br label %do.body36.i

do.body36.i.critedge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i63.2.i.c1 = tail call ptr @gpio_to_desc(i32 noundef 158) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i63.2.i.c1, i32 noundef 1) #4
  br label %do.body36.i

do.body36.i:                                      ; preds = %do.body36.i.critedge, %if.then.i
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !73
  %and.i.i.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool44.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool44.not.i, label %if.then48.i, label %do.body36.i.s3c_pm_debug_smdkled.exit_crit_edge, !prof !74

do.body36.i.s3c_pm_debug_smdkled.exit_crit_edge:  ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %s3c_pm_debug_smdkled.exit

if.then48.i:                                      ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @warn_bogus_irq_restore() #4
  br label %s3c_pm_debug_smdkled.exit

s3c_pm_debug_smdkled.exit:                        ; preds = %if.then48.i, %do.body36.i.s3c_pm_debug_smdkled.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #4, !srcloc !75
  tail call void @s3c_pm_do_restore_core(ptr noundef nonnull @core_save, i32 noundef 2) #4
  tail call void @s3c_pm_do_restore(ptr noundef nonnull @misc_save, i32 noundef 12) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_pm_do_restore_core(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_pm_do_restore(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c_pm_save_core() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @s3c_pm_do_save(ptr noundef nonnull @misc_save, i32 noundef 12) #4
  tail call void @s3c_pm_do_save(ptr noundef nonnull @core_save, i32 noundef 2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_pm_do_save(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3c64xx_pm_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @s3c_pm_init() #7
  %call1 = tail call i32 @pm_genpd_init(ptr noundef getelementptr inbounds (%struct.s3c64xx_pm_domain, ptr @s3c64xx_pm_irom, i32 0, i32 3), ptr noundef nonnull @pm_domain_always_on_gov, i1 noundef zeroext false) #4
  br label %for.body4

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %entry
  %i.118 = phi i32 [ 0, %entry ], [ %inc9, %for.body4.for.body4_crit_edge ]
  %arrayidx5 = getelementptr [7 x ptr], ptr @s3c64xx_pm_domains, i32 0, i32 %i.118
  %0 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx5, align 4
  %pd6 = getelementptr inbounds %struct.s3c64xx_pm_domain, ptr %1, i32 0, i32 3
  %call7 = tail call i32 @pm_genpd_init(ptr noundef %pd6, ptr noundef null, i1 noundef zeroext false) #4
  %inc9 = add nuw nsw i32 %i.118, 1
  %exitcond.not = icmp eq i32 %inc9, 7
  br i1 %exitcond.not, label %for.end10, label %for.body4.for.body4_crit_edge

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body4

for.end10:                                        ; preds = %for.body4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.platform_device, ptr @s3c_device_fb, i32 0, i32 3, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.platform_device, ptr @s3c_device_fb, i32 0, i32 3, i32 7), align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.end10.if.end_crit_edge, label %if.then

for.end10.if.end_crit_edge:                       ; preds = %for.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %for.end10
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = tail call i32 @pm_genpd_add_device(ptr noundef getelementptr inbounds (%struct.s3c64xx_pm_domain, ptr @s3c64xx_pm_f, i32 0, i32 3), ptr noundef getelementptr inbounds (%struct.platform_device, ptr @s3c_device_fb, i32 0, i32 3)) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end10.if.end_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @s3c_pm_init() local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_add_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_pm_initcall() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @samsung_cpu_id to i32))
  %0 = load i32, ptr @samsung_cpu_id, align 4
  %and.i = and i32 %0, -4096
  %1 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %entry.return_crit_edge [
    i32 910163968, label %entry.if.end_crit_edge
    i32 910229504, label %entry.if.end_crit_edge20
  ]

entry.if.end_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge20
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_cpu_prep to i32))
  store ptr @s3c64xx_pm_prepare, ptr @pm_cpu_prep, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_cpu_sleep to i32))
  store ptr @s3c64xx_cpu_suspend, ptr @pm_cpu_sleep, align 4
  %call3 = tail call i32 @gpio_request(i32 noundef 156, ptr noundef nonnull @.str.11) #4
  %call4 = tail call i32 @gpio_request(i32 noundef 157, ptr noundef nonnull @.str.12) #4
  %call5 = tail call i32 @gpio_request(i32 noundef 158, ptr noundef nonnull @.str.13) #4
  %call6 = tail call i32 @gpio_request(i32 noundef 159, ptr noundef nonnull @.str.14) #4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef 156) #4
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i, i32 noundef 0) #4
  %call.i14 = tail call ptr @gpio_to_desc(i32 noundef 157) #4
  %call1.i15 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i14, i32 noundef 0) #4
  %call.i16 = tail call ptr @gpio_to_desc(i32 noundef 158) #4
  %call1.i17 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i16, i32 noundef 0) #4
  %call.i18 = tail call ptr @gpio_to_desc(i32 noundef 159) #4
  %call1.i19 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i18, i32 noundef 0) #4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_pd_off(ptr nocapture noundef readonly %domain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -166721520 to ptr)) #4, !srcloc !77
  %ena = getelementptr i8, ptr %domain, i32 -12
  %1 = ptrtoint ptr %ena to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ena, align 4
  %neg = xor i32 %2, -1
  %and = and i32 %0, %neg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -166721520 to ptr), i32 %and) #4, !srcloc !76
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_pd_on(ptr nocapture noundef readonly %domain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %domain, i32 -16
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -166721520 to ptr)) #4, !srcloc !77
  %ena = getelementptr i8, ptr %domain, i32 -12
  %1 = ptrtoint ptr %ena to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ena, align 4
  %or = or i32 %2, %0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -166721520 to ptr), i32 %or) #4, !srcloc !76
  %pwr_stat = getelementptr i8, ptr %domain, i32 -8
  %3 = ptrtoint ptr %pwr_stat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pwr_stat, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %do.cond12.do.body_crit_edge, %entry.do.body_crit_edge
  %retry.0 = phi i32 [ %dec, %do.cond12.do.body_crit_edge ], [ 1000000, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !78
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !79
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -166721268 to ptr)) #4, !srcloc !77
  %6 = ptrtoint ptr %pwr_stat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pwr_stat, align 8
  %and = and i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.cond12, label %do.end14

do.cond12:                                        ; preds = %do.body
  %dec = add nsw i32 %retry.0, -1
  %tobool13.not = icmp eq i32 %retry.0, 0
  br i1 %tobool13.not, label %do.cond12.cleanup_crit_edge, label %do.cond12.do.body_crit_edge

do.cond12.do.body_crit_edge:                      ; preds = %do.cond12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.cond12.cleanup_crit_edge:                      ; preds = %do.cond12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end14:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.0)
  %tobool15.not = icmp eq i32 %retry.0, 0
  br i1 %tobool15.not, label %do.end19, label %do.end14.cleanup_crit_edge

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end19:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %9) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %do.end14.cleanup_crit_edge, %do.cond12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end19 ], [ 0, %do.end14.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.cond12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c64xx_pm_prepare() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @samsung_sync_wakemask(ptr noundef nonnull inttoptr (i32 -166721532 to ptr), ptr noundef nonnull @wake_irqs, i32 noundef 10) #4
  %call = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @s3c_cpu_resume to i32)) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -166721024 to ptr), i32 %call) #4, !srcloc !76
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -166721272 to ptr)) #4, !srcloc !77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -166721272 to ptr), i32 %0) #4, !srcloc !76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_cpu_suspend(i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -166721532 to ptr)) #4, !srcloc !77
  %or = or i32 %0, 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -166721532 to ptr), i32 %or) #4, !srcloc !76
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -166721272 to ptr)) #4, !srcloc !77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -166721272 to ptr), i32 %1) #4, !srcloc !76
  tail call void @s3c_pm_debug_smdkled(i32 noundef 6, i32 noundef 15)
  tail call void asm sideeffect "b 1f\0A\09.align 5\0A\091:\0A\09mcr p15, 0, $0, c7, c10, 5\0A\09mcr p15, 0, $0, c7, c10, 4\0A\09mcr p15, 0, $0, c7, c0, 4", "r"(i32 0) #4, !srcloc !80
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_sync_wakemask(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_cpu_resume() #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_pm_s3c64xx__288_400_s3c64xx_pm_initcall3, !1, !"__initcall__kmod_pm_s3c64xx__288_400_s3c64xx_pm_initcall3", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 400, i32 1}
!2 = !{ptr @core_save, !3, !"core_save", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 194, i32 26}
!4 = !{ptr @misc_save, !5, !"misc_save", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 199, i32 26}
!6 = distinct !{null, !7, !"s3c64xx_always_on_pm_domains", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 162, i32 34}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 85, i32 10}
!10 = !{ptr @s3c64xx_pm_irom, !11, !"s3c64xx_pm_irom", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 84, i32 33}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 76, i32 4}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @s3c64xx_pd_on._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @s3c64xx_pd_on._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @s3c64xx_pm_domains, !19, !"s3c64xx_pm_domains", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 166, i32 34}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 94, i32 10}
!22 = !{ptr @s3c64xx_pm_etm, !23, !"s3c64xx_pm_etm", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 93, i32 33}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 144, i32 10}
!26 = !{ptr @s3c64xx_pm_g, !27, !"s3c64xx_pm_g", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 143, i32 33}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 153, i32 10}
!30 = !{ptr @s3c64xx_pm_v, !31, !"s3c64xx_pm_v", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 152, i32 33}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 134, i32 10}
!34 = !{ptr @s3c64xx_pm_i, !35, !"s3c64xx_pm_i", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 133, i32 33}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 124, i32 10}
!38 = !{ptr @s3c64xx_pm_p, !39, !"s3c64xx_pm_p", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 123, i32 33}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 104, i32 10}
!42 = !{ptr @s3c64xx_pm_s, !43, !"s3c64xx_pm_s", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 103, i32 33}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 114, i32 10}
!46 = !{ptr @s3c64xx_pm_f, !47, !"s3c64xx_pm_f", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 113, i32 33}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 388, i32 32}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 389, i32 32}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 390, i32 32}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 391, i32 32}
!56 = !{ptr @wake_irqs, !57, !"wake_irqs", i1 false, i1 false}
!57 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 283, i32 41}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../arch/arm/mach-s3c/pm-s3c64xx.c", i32 278, i32 2}
!60 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @s3c64xx_cpu_suspend._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @s3c64xx_cpu_suspend._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i64 934341, i64 934402}
!73 = !{i64 937073}
!74 = !{!"branch_weights", i32 1, i32 2000}
!75 = !{i64 937358}
!76 = !{i64 5370705}
!77 = !{i64 5371123}
!78 = !{i64 2155389582}
!79 = !{i64 2155389424}
!80 = !{i64 5665, i64 5672, i64 5692, i64 5706, i64 5744, i64 5782}
