; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-mpc8xxx.c_pt.bc'
source_filename = "../drivers/gpio/gpio-mpc8xxx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mpc8xxx_gpio_devtype = type { ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mpc8xxx_gpio_chip = type { %struct.gpio_chip, ptr, %struct.raw_spinlock, ptr, ptr, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_gpio_mpc8xxx__229_458_mpc8xxx_init3 = internal global ptr @mpc8xxx_init, section ".initcall3.init", align 4
@mpc8xxx_plat_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mpc8xxx_probe, ptr @mpc8xxx_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mpc8xxx_gpio_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpio-mpc8xxx\00", [19 x i8] zeroinitializer }, align 32
@mpc8xxx_gpio_ids = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mpc8349-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mpc8572-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mpc8572_gpio_devtype }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mpc8610-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mpc5121-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mpc512x_gpio_devtype }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mpc5125-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mpc5125_gpio_devtype }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,pq3-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1028a-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1088a-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qoriq-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@mpc8xxx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&mpc8xxx_gc->lock\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"little-endian\00", [18 x i8] zeroinitializer }, align 32
@mpc8xxx_probe.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 84, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpio_mpc8xxx\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mpc8xxx_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/gpio/gpio-mpc8xxx.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"GPIO registers are LITTLE endian\0A\00", [62 x i8] zeroinitializer }, align 32
@mpc8xxx_probe.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, i8 0, i8 86, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"GPIO registers are BIG endian\0A\00", [33 x i8] zeroinitializer }, align 32
@mpc8xxx_gpio_devtype_default = internal constant { %struct.mpc8xxx_gpio_devtype, [20 x i8] } { %struct.mpc8xxx_gpio_devtype { ptr null, ptr null, ptr @mpc8xxx_irq_set_type }, [20 x i8] zeroinitializer }, align 32
@mpc8xxx_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.18, ptr null, ptr null, ptr null, ptr null, ptr @mpc8xxx_irq_ack, ptr @mpc8xxx_irq_mask, ptr null, ptr @mpc8xxx_irq_unmask, ptr null, ptr null, ptr null, ptr @mpc8xxx_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,qoriq-gpio\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,ls1028a-gpio\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,ls1088a-gpio\00", [47 x i8] zeroinitializer }, align 32
@mpc8xxx_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mpc8xxx_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mpc8xxx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.5, i32 386, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"GPIO chip registration failed with status %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mpc8xxx_probe._entry_ptr = internal global ptr @mpc8xxx_probe._entry, section ".printk_index", align 4
@mpc8xxx_gpio_irq_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @mpc8xxx_gpio_irq_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpio-cascade\00", [19 x i8] zeroinitializer }, align 32
@mpc8xxx_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 413, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to devm_request_irq(%d), ret = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@mpc8xxx_probe._entry_ptr.17 = internal global ptr @mpc8xxx_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mpc8xxx-gpio\00", [19 x i8] zeroinitializer }, align 32
@mpc8572_gpio_devtype = internal constant { %struct.mpc8xxx_gpio_devtype, [20 x i8] } { %struct.mpc8xxx_gpio_devtype { ptr null, ptr @mpc8572_gpio_get, ptr null }, [20 x i8] zeroinitializer }, align 32
@mpc512x_gpio_devtype = internal constant { %struct.mpc8xxx_gpio_devtype, [20 x i8] } { %struct.mpc8xxx_gpio_devtype { ptr @mpc5121_gpio_dir_out, ptr null, ptr @mpc512x_irq_set_type }, [20 x i8] zeroinitializer }, align 32
@mpc5125_gpio_devtype = internal constant { %struct.mpc8xxx_gpio_devtype, [20 x i8] } { %struct.mpc8xxx_gpio_devtype { ptr @mpc5125_gpio_dir_out, ptr null, ptr @mpc512x_irq_set_type }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@___asan_gen_.20 = private unnamed_addr constant [20 x i8] c"mpc8xxx_plat_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 443, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 447, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"mpc8xxx_gpio_ids\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 291, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 319, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 328, i32 44 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 336, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 346, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [29 x i8] c"mpc8xxx_gpio_devtype_default\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 287, i32 42 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"mpc8xxx_irq_chip\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 244, i32 24 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 377, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 378, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 379, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 383, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 385, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [21 x i8] c"mpc8xxx_gpio_irq_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 262, i32 36 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 408, i32 41 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 411, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 245, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant [21 x i8] c"mpc8572_gpio_devtype\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 283, i32 42 }
@___asan_gen_.104 = private unnamed_addr constant [21 x i8] c"mpc512x_gpio_devtype\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 273, i32 42 }
@___asan_gen_.107 = private unnamed_addr constant [21 x i8] c"mpc5125_gpio_devtype\00", align 1
@___asan_gen_.108 = private constant [31 x i8] c"../drivers/gpio/gpio-mpc8xxx.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 278, i32 42 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__initcall__kmod_gpio_mpc8xxx__229_458_mpc8xxx_init3, ptr @mpc8xxx_probe._entry, ptr @mpc8xxx_probe._entry.15, ptr @mpc8xxx_probe._entry_ptr, ptr @mpc8xxx_probe._entry_ptr.17, ptr @mpc8xxx_plat_driver, ptr @.str, ptr @mpc8xxx_gpio_ids, ptr @mpc8xxx_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mpc8xxx_gpio_devtype_default, ptr @mpc8xxx_irq_chip, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @mpc8xxx_probe.lock_key, ptr @mpc8xxx_probe.request_key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @mpc8xxx_gpio_irq_ops, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @mpc8572_gpio_devtype, ptr @mpc512x_gpio_devtype, ptr @mpc5125_gpio_devtype], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc8xxx_plat_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc8xxx_gpio_ids to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc8xxx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc8xxx_gpio_devtype_default to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc8xxx_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc8xxx_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc8xxx_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc8xxx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc8xxx_gpio_irq_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc8xxx_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc8572_gpio_devtype to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc512x_gpio_devtype to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc5125_gpio_devtype to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mpc8xxx_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mpc8xxx_plat_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpc8xxx_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 408, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.mpc8xxx_gpio_chip, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mpc8xxx_probe.__key, i16 noundef signext 2) #5
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %regs = getelementptr inbounds %struct.mpc8xxx_gpio_chip, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %parent, align 4
  %call.i213 = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.2) #5
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 8
  br i1 %call.i213, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end8
  %call18 = tail call i32 @bgpio_init(ptr noundef nonnull %call.i, ptr noundef %dev, i32 noundef 4, ptr noundef %add.ptr, ptr noundef null, ptr noundef null, ptr noundef %7, ptr noundef null, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.body22, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body22:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mpc8xxx_probe.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mpc8xxx_probe, %if.end61)) #5
          to label %if.then28 [label %if.end61], !srcloc !66

if.then28:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mpc8xxx_probe.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.6) #5
  br label %if.end61

if.else:                                          ; preds = %if.end8
  %call38 = tail call i32 @bgpio_init(ptr noundef nonnull %call.i, ptr noundef %dev, i32 noundef 4, ptr noundef %add.ptr, ptr noundef null, ptr noundef null, ptr noundef %7, ptr noundef null, i32 noundef 9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %do.body42, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mpc8xxx_probe.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mpc8xxx_probe, %if.end61)) #5
          to label %if.then56 [label %if.end61], !srcloc !66

if.then56:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mpc8xxx_probe.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.7) #5
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %do.body42, %if.then28, %do.body22
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %8 = ptrtoint ptr %direction_output to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %direction_output, align 4
  %direction_output62 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %direction_output62 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %direction_output62, align 4
  %call64 = tail call ptr @device_get_match_data(ptr noundef %dev) #5
  %tobool65.not = icmp eq ptr %call64, null
  %spec.store.select = select i1 %tobool65.not, ptr @mpc8xxx_gpio_devtype_default, ptr %call64
  %irq_set_type = getelementptr inbounds %struct.mpc8xxx_gpio_devtype, ptr %spec.store.select, i32 0, i32 2
  %11 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irq_set_type, align 4
  %tobool68.not = icmp eq ptr %12, null
  br i1 %tobool68.not, label %if.end61.if.end71_crit_edge, label %if.then69

if.end61.if.end71_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.then69:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %12, ptr getelementptr inbounds (%struct.irq_chip, ptr @mpc8xxx_irq_chip, i32 0, i32 13), align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end61.if.end71_crit_edge
  %13 = ptrtoint ptr %spec.store.select to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spec.store.select, align 4
  %tobool72.not = icmp eq ptr %14, null
  br i1 %tobool72.not, label %if.end71.if.end76_crit_edge, label %if.then73

if.end71.if.end76_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %direction_output, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %if.end71.if.end76_crit_edge
  %gpio_get = getelementptr inbounds %struct.mpc8xxx_gpio_devtype, ptr %spec.store.select, i32 0, i32 1
  %16 = ptrtoint ptr %gpio_get to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpio_get, align 4
  %tobool77.not = icmp eq ptr %17, null
  br i1 %tobool77.not, label %if.end76.if.end80_crit_edge, label %if.then78

if.end76.if.end80_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.then78:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %18 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %get, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.end76.if.end80_crit_edge
  %to_irq = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 15
  %19 = ptrtoint ptr %to_irq to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mpc8xxx_gpio_to_irq, ptr %to_irq, align 4
  %call82 = tail call ptr @dev_fwnode(ptr noundef %dev) #5
  %call83 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %lor.lhs.false, label %if.end80.if.then92_crit_edge

if.end80.if.then92_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then92

lor.lhs.false:                                    ; preds = %if.end80
  %call85 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %lor.lhs.false87, label %lor.lhs.false.if.then92_crit_edge

lor.lhs.false.if.then92_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then92

lor.lhs.false87:                                  ; preds = %lor.lhs.false
  %call88 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %lor.lhs.false87.if.end95_crit_edge, label %lor.lhs.false87.if.then92_crit_edge

lor.lhs.false87.if.then92_crit_edge:              ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then92

lor.lhs.false87.if.end95_crit_edge:               ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

if.then92:                                        ; preds = %lor.lhs.false87.if.then92_crit_edge, %lor.lhs.false.if.then92_crit_edge, %if.end80.if.then92_crit_edge
  %write_reg = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 25
  %20 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_reg, align 4
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr94 = getelementptr i8, ptr %23, i32 24
  tail call void %21(ptr noundef %add.ptr94, i32 noundef -1) #5
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %lor.lhs.false87.if.end95_crit_edge
  %call98 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @mpc8xxx_probe.lock_key, ptr noundef nonnull @mpc8xxx_probe.request_key) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end105, label %do.end103

do.end103:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call98) #8
  br label %cleanup

if.end105:                                        ; preds = %if.end95
  %call106 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irqn = getelementptr inbounds %struct.mpc8xxx_gpio_chip, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %irqn to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call106, ptr %irqn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp = icmp slt i32 %call106, 0
  br i1 %cmp, label %if.end105.cleanup_crit_edge, label %if.end110

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end110:                                        ; preds = %if.end105
  %call.i214 = tail call ptr @__irq_domain_add(ptr noundef %call82, i32 noundef 32, i32 noundef 32, i32 noundef 0, ptr noundef nonnull @mpc8xxx_gpio_irq_ops, ptr noundef nonnull %call.i) #5
  %irq = getelementptr inbounds %struct.mpc8xxx_gpio_chip, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i214, ptr %irq, align 4
  %tobool113.not = icmp eq ptr %call.i214, null
  br i1 %tobool113.not, label %if.end110.cleanup_crit_edge, label %if.end115

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end115:                                        ; preds = %if.end110
  %write_reg116 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 25
  %26 = ptrtoint ptr %write_reg116 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_reg116, align 4
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add.ptr118 = getelementptr i8, ptr %29, i32 12
  tail call void %27(ptr noundef %add.ptr118, i32 noundef -1) #5
  %30 = ptrtoint ptr %write_reg116 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_reg116, align 4
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %add.ptr121 = getelementptr i8, ptr %33, i32 16
  tail call void %31(ptr noundef %add.ptr121, i32 noundef 0) #5
  %34 = ptrtoint ptr %irqn to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irqn, align 4
  %call.i215 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %35, ptr noundef nonnull @mpc8xxx_gpio_irq_cascade, ptr noundef null, i32 noundef 65664, ptr noundef nonnull @.str.14, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215)
  %tobool125.not = icmp eq i32 %call.i215, 0
  br i1 %tobool125.not, label %if.end115.cleanup_crit_edge, label %do.end129

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end129:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %irqn to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irqn, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %37, i32 noundef %call.i215) #8
  %38 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %irq, align 4
  tail call void @irq_domain_remove(ptr noundef %39) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end129, %if.end115.cleanup_crit_edge, %if.end110.cleanup_crit_edge, %if.end105.cleanup_crit_edge, %do.end103, %if.else.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then5 ], [ %call98, %do.end103 ], [ %call.i215, %do.end129 ], [ -12, %entry.cleanup_crit_edge ], [ %call18, %if.then13.cleanup_crit_edge ], [ %call38, %if.else.cleanup_crit_edge ], [ %call106, %if.end105.cleanup_crit_edge ], [ 0, %if.end110.cleanup_crit_edge ], [ 0, %if.end115.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpc8xxx_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.mpc8xxx_gpio_chip, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %irqn = getelementptr inbounds %struct.mpc8xxx_gpio_chip, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %irqn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irqn, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %5, ptr noundef null, ptr noundef null) #5
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq, align 4
  tail call void @irq_domain_remove(ptr noundef %7) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgpio_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpc8xxx_gpio_to_irq(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %irq = getelementptr inbounds %struct.mpc8xxx_gpio_chip, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq, align 4
  %tobool.not = icmp ne ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %offset)
  %cmp = icmp ult i32 %offset, 32
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @irq_create_mapping_affinity(ptr noundef nonnull %1, i32 noundef %offset, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpc8xxx_gpio_irq_cascade(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #5
  %read_reg = getelementptr inbounds %struct.gpio_chip, ptr %data, i32 0, i32 24
  %0 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_reg, align 4
  %regs = getelementptr inbounds %struct.mpc8xxx_gpio_chip, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  %call = tail call i32 %1(ptr noundef %add.ptr) #5
  %4 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg, align 4
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 16
  %call5 = tail call i32 %5(ptr noundef %add.ptr4) #5
  %and = and i32 %call5, %call
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %mask, align 4
  %call6 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask, i32 noundef 32, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call6)
  %cmp16 = icmp slt i32 %call6, 32
  br i1 %cmp16, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %irq7 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, ptr %data, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ %call6, %for.body.lr.ph ], [ %call9, %for.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %irq7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq7, align 4
  %sub = sub i32 31, %i.017
  %call8 = call i32 @generic_handle_domain_irq(ptr noundef %10, i32 noundef %sub) #5
  %add = add nsw i32 %i.017, 1
  %call9 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask, i32 noundef 32, i32 noundef %add) #5
  %cmp = icmp slt i32 %call9, 32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpc8xxx_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %flow_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %2 = zext i32 %flow_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %flow_type, label %entry.cleanup_crit_edge [
    i32 2, label %do.body
    i32 3, label %do.body18
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.mpc8xxx_gpio_chip, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %write_reg = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write_reg, align 4
  %regs = getelementptr inbounds %struct.mpc8xxx_gpio_chip, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 20
  %read_reg = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 24
  %7 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_reg, align 4
  %call5 = tail call i32 %8(ptr noundef %add.ptr) #5
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %9 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hwirq.i, align 4
  %shl.i = lshr i32 -2147483648, %10
  %or = or i32 %shl.i, %call5
  tail call void %4(ptr noundef %add.ptr, i32 noundef %or) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  br label %cleanup

do.body18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lock24 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, ptr %1, i32 0, i32 2
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock24) #5
  %write_reg28 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 25
  %11 = ptrtoint ptr %write_reg28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_reg28, align 4
  %regs29 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %regs29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs29, align 4
  %add.ptr30 = getelementptr i8, ptr %14, i32 20
  %read_reg31 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 24
  %15 = ptrtoint ptr %read_reg31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_reg31, align 4
  %call34 = tail call i32 %16(ptr noundef %add.ptr30) #5
  %hwirq.i62 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %17 = ptrtoint ptr %hwirq.i62 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hwirq.i62, align 4
  %shl.i63 = lshr i32 -2147483648, %18
  %neg = xor i32 %shl.i63, -1
  %and = and i32 %call34, %neg
  tail call void %12(ptr noundef %add.ptr30, i32 noundef %and) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock24, i32 noundef %call25) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body18, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body18 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpc8xxx_irq_ack(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %write_reg = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg, align 4
  %regs = getelementptr inbounds %struct.mpc8xxx_gpio_chip, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 12
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq.i, align 4
  %shl.i = lshr i32 -2147483648, %7
  tail call void %3(ptr noundef %add.ptr, i32 noundef %shl.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpc8xxx_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %lock = getelementptr inbounds %struct.mpc8xxx_gpio_chip, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %write_reg = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg, align 4
  %regs = getelementptr inbounds %struct.mpc8xxx_gpio_chip, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 16
  %read_reg = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg, align 4
  %call5 = tail call i32 %7(ptr noundef %add.ptr) #5
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %8 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq.i, align 4
  %shl.i = lshr i32 -2147483648, %9
  %neg = xor i32 %shl.i, -1
  %and = and i32 %call5, %neg
  tail call void %3(ptr noundef %add.ptr, i32 noundef %and) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpc8xxx_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %lock = getelementptr inbounds %struct.mpc8xxx_gpio_chip, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %write_reg = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg, align 4
  %regs = getelementptr inbounds %struct.mpc8xxx_gpio_chip, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 16
  %read_reg = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg, align 4
  %call5 = tail call i32 %7(ptr noundef %add.ptr) #5
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %8 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq.i, align 4
  %shl.i = lshr i32 -2147483648, %9
  %or = or i32 %shl.i, %call5
  tail call void %3(ptr noundef %add.ptr, i32 noundef %or) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpc8xxx_gpio_irq_map(ptr nocapture noundef readonly %h, i32 noundef %irq, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %h, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #5
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @mpc8xxx_irq_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpc8572_gpio_get(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %read_reg = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 24
  %0 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_reg, align 4
  %regs = getelementptr inbounds %struct.mpc8xxx_gpio_chip, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %call1 = tail call i32 %1(ptr noundef %3) #5
  %4 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg, align 4
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 8
  %call5 = tail call i32 %5(ptr noundef %add.ptr4) #5
  %neg = xor i32 %call1, -1
  %and = and i32 %call5, %neg
  %bgpio_data = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 35
  %8 = ptrtoint ptr %bgpio_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bgpio_data, align 4
  %and6 = and i32 %9, %call1
  %or = or i32 %and6, %and
  %shl.i = lshr i32 -2147483648, %gpio
  %and8 = and i32 %or, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool = icmp ne i32 %and8, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpc5121_gpio_dir_out(ptr noundef %gc, i32 noundef %gpio, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %gpio)
  %cmp = icmp ugt i32 %gpio, 27
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %direction_output = getelementptr inbounds %struct.mpc8xxx_gpio_chip, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %direction_output to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %direction_output, align 4
  %call1 = tail call i32 %1(ptr noundef %gc, i32 noundef %gpio, i32 noundef %val) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpc512x_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %flow_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp = icmp ult i32 %3, 16
  %regs = getelementptr inbounds %struct.mpc8xxx_gpio_chip, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %.neg = mul nsw i32 %3, -2
  %mul = add nsw i32 %.neg, 30
  %rem = shl i32 %3, 1
  %sub5 = and i32 %rem, 30
  %mul6 = xor i32 %sub5, 30
  %shift.0 = select i1 %cmp, i32 %mul, i32 %mul6
  %reg.0.v = select i1 %cmp, i32 20, i32 24
  %reg.0 = getelementptr i8, ptr %5, i32 %reg.0.v
  %6 = zext i32 %flow_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %flow_type, label %entry.cleanup_crit_edge [
    i32 2, label %entry.do.body_crit_edge
    i32 8, label %entry.do.body_crit_edge106
    i32 1, label %entry.do.body21_crit_edge
    i32 4, label %entry.do.body21_crit_edge107
    i32 3, label %do.body49
  ]

entry.do.body21_crit_edge107:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body21

entry.do.body21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body21

entry.do.body_crit_edge106:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge106
  %lock = getelementptr inbounds %struct.mpc8xxx_gpio_chip, ptr %1, i32 0, i32 2
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %write_reg = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 25
  %7 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_reg, align 4
  %read_reg = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 24
  %9 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_reg, align 4
  %call9 = tail call i32 %10(ptr noundef %reg.0) #5
  %shl = shl i32 3, %shift.0
  %neg = xor i32 %shl, -1
  %and = and i32 %call9, %neg
  %shl10 = shl i32 2, %shift.0
  %or = or i32 %and, %shl10
  tail call void %8(ptr noundef %reg.0, i32 noundef %or) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #5
  br label %cleanup

do.body21:                                        ; preds = %entry.do.body21_crit_edge, %entry.do.body21_crit_edge107
  %lock27 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, ptr %1, i32 0, i32 2
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock27) #5
  %write_reg31 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 25
  %11 = ptrtoint ptr %write_reg31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_reg31, align 4
  %read_reg32 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 24
  %13 = ptrtoint ptr %read_reg32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_reg32, align 4
  %call33 = tail call i32 %14(ptr noundef %reg.0) #5
  %shl34 = shl i32 3, %shift.0
  %neg35 = xor i32 %shl34, -1
  %and36 = and i32 %call33, %neg35
  %shl37 = shl nuw i32 1, %shift.0
  %or38 = or i32 %and36, %shl37
  tail call void %12(ptr noundef %reg.0, i32 noundef %or38) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock27, i32 noundef %call28) #5
  br label %cleanup

do.body49:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lock55 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, ptr %1, i32 0, i32 2
  %call56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock55) #5
  %write_reg59 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 25
  %15 = ptrtoint ptr %write_reg59 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_reg59, align 4
  %read_reg60 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 24
  %17 = ptrtoint ptr %read_reg60 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_reg60, align 4
  %call61 = tail call i32 %18(ptr noundef %reg.0) #5
  %shl62 = shl i32 3, %shift.0
  %neg63 = xor i32 %shl62, -1
  %and64 = and i32 %call61, %neg63
  tail call void %16(ptr noundef %reg.0, i32 noundef %and64) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock55, i32 noundef %call56) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body49, %do.body21, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body49 ], [ 0, %do.body21 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpc5125_gpio_dir_out(ptr noundef %gc, i32 noundef %gpio, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %gpio)
  %cmp = icmp ult i32 %gpio, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %direction_output = getelementptr inbounds %struct.mpc8xxx_gpio_chip, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %direction_output to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %direction_output, align 4
  %call1 = tail call i32 %1(ptr noundef %gc, i32 noundef %gpio, i32 noundef %val) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !16, !17, !19, !20, !22, !24, !26, !28, !29, !31, !32, !33, !34, !35, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__initcall__kmod_gpio_mpc8xxx__229_458_mpc8xxx_init3, !1, !"__initcall__kmod_gpio_mpc8xxx__229_458_mpc8xxx_init3", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-mpc8xxx.c", i32 458, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-mpc8xxx.c", i32 447, i32 11}
!4 = !{ptr @mpc8xxx_plat_driver, !5, !"mpc8xxx_plat_driver", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-mpc8xxx.c", i32 443, i32 31}
!6 = !{ptr @mpc8xxx_probe.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-mpc8xxx.c", i32 319, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpio/gpio-mpc8xxx.c", i32 328, i32 44}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpio/gpio-mpc8xxx.c", i32 336, i32 3}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mpc8xxx_probe.__UNIQUE_ID_ddebug227, !12, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpio/gpio-mpc8xxx.c", i32 346, i32 3}
!19 = !{ptr @mpc8xxx_probe.__UNIQUE_ID_ddebug228, !18, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpio/gpio-mpc8xxx.c", i32 377, i32 34}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpio/gpio-mpc8xxx.c", i32 378, i32 34}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpio/gpio-mpc8xxx.c", i32 379, i32 34}
!26 = !{ptr @mpc8xxx_probe.lock_key, !27, !"lock_key", i1 false, i1 false}
!27 = !{!"../drivers/gpio/gpio-mpc8xxx.c", i32 383, i32 8}
!28 = !{ptr @mpc8xxx_probe.request_key, !27, !"request_key", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpio/gpio-mpc8xxx.c", i32 385, i32 3}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mpc8xxx_probe._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @mpc8xxx_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpio/gpio-mpc8xxx.c", i32 408, i32 41}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpio/gpio-mpc8xxx.c", i32 411, i32 3}
!39 = !{ptr @mpc8xxx_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mpc8xxx_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @mpc8xxx_gpio_devtype_default, !42, !"mpc8xxx_gpio_devtype_default", i1 false, i1 false}
!42 = !{!"../drivers/gpio/gpio-mpc8xxx.c", i32 287, i32 42}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpio/gpio-mpc8xxx.c", i32 245, i32 11}
!45 = !{ptr @mpc8xxx_irq_chip, !46, !"mpc8xxx_irq_chip", i1 false, i1 false}
!46 = !{!"../drivers/gpio/gpio-mpc8xxx.c", i32 244, i32 24}
!47 = !{ptr @mpc8xxx_gpio_irq_ops, !48, !"mpc8xxx_gpio_irq_ops", i1 false, i1 false}
!48 = !{!"../drivers/gpio/gpio-mpc8xxx.c", i32 262, i32 36}
!49 = !{ptr @mpc8xxx_gpio_ids, !50, !"mpc8xxx_gpio_ids", i1 false, i1 false}
!50 = !{!"../drivers/gpio/gpio-mpc8xxx.c", i32 291, i32 34}
!51 = !{ptr @mpc8572_gpio_devtype, !52, !"mpc8572_gpio_devtype", i1 false, i1 false}
!52 = !{!"../drivers/gpio/gpio-mpc8xxx.c", i32 283, i32 42}
!53 = !{ptr @mpc512x_gpio_devtype, !54, !"mpc512x_gpio_devtype", i1 false, i1 false}
!54 = !{!"../drivers/gpio/gpio-mpc8xxx.c", i32 273, i32 42}
!55 = !{ptr @mpc5125_gpio_devtype, !56, !"mpc5125_gpio_devtype", i1 false, i1 false}
!56 = !{!"../drivers/gpio/gpio-mpc8xxx.c", i32 278, i32 42}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i64 2148958402, i64 2148958407, i64 2148958420, i64 2148958464, i64 2148958498, i64 2148958519}
