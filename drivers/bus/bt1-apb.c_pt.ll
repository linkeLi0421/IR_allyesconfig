; ModuleID = '/llk/IR_all_yes/drivers/bus/bt1-apb.c_pt.bc'
source_filename = "../drivers/bus/bt1-apb.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.bt1_apb = type { ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.atomic_t }

@__initcall__kmod_bt1_apb__191_417_bt1_apb_driver_init6 = internal global ptr @bt1_apb_driver_init, section ".initcall6.init", align 4
@bt1_apb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bt1_apb_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bt1_apb_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bt1_apb_driver_exit = internal global ptr @bt1_apb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author192 = internal constant [63 x i8] c"bt1_apb.author=Serge Semin <Sergey.Semin@baikalelectronics.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description193 = internal constant [45 x i8] c"bt1_apb.description=Baikal-T1 APB-bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file194 = internal constant [33 x i8] c"bt1_apb.file=drivers/bus/bt1-apb\00", section ".modinfo", align 1
@__UNIQUE_ID_license195 = internal constant [23 x i8] c"bt1_apb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bt1-apb\00", [24 x i8] zeroinitializer }, align 32
@bt1_apb_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"baikal,bt1-apb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bt1_apb_create_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 138, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Can't add APB EHB data clear action\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bt1_apb_create_data\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/bus/bt1-apb.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bt1_apb_create_data._entry_ptr = internal global ptr @bt1_apb_create_data._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ehb\00", [28 x i8] zeroinitializer }, align 32
@bt1_apb_request_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 156, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Couldn't map APB EHB registers\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bt1_apb_request_regs\00", [43 x i8] zeroinitializer }, align 32
@bt1_apb_request_regs._entry_ptr = internal global ptr @bt1_apb_request_regs._entry, section ".printk_index", align 4
@bt1_apb_request_regs._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bt1_apb_regmap_cfg = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"bt1_apb:160:(&bt1_apb_regmap_cfg)->lock\00", [56 x i8] zeroinitializer }, align 32
@bt1_apb_request_regs._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.3, i32 162, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Couldn't create APB EHB regmap\0A\00", [32 x i8] zeroinitializer }, align 32
@bt1_apb_request_regs._entry_ptr.12 = internal global ptr @bt1_apb_request_regs._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nodev\00", [26 x i8] zeroinitializer }, align 32
@bt1_apb_request_regs._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.3, i32 168, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't map reserved region\0A\00", [34 x i8] zeroinitializer }, align 32
@bt1_apb_request_regs._entry_ptr.16 = internal global ptr @bt1_apb_request_regs._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"prst\00", [27 x i8] zeroinitializer }, align 32
@bt1_apb_request_rst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 179, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't get reset control line\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bt1_apb_request_rst\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bt1_apb_request_rst._entry_ptr = internal global ptr @bt1_apb_request_rst._entry, section ".printk_index", align 4
@bt1_apb_request_rst._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.3, i32 185, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to deassert the reset line\0A\00", [61 x i8] zeroinitializer }, align 32
@bt1_apb_request_rst._entry_ptr.23 = internal global ptr @bt1_apb_request_rst._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@bt1_apb_request_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 203, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Couldn't get APB clock descriptor\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bt1_apb_request_clk\00", [44 x i8] zeroinitializer }, align 32
@bt1_apb_request_clk._entry_ptr = internal global ptr @bt1_apb_request_clk._entry, section ".printk_index", align 4
@bt1_apb_request_clk._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 209, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't enable the APB clock\0A\00", [33 x i8] zeroinitializer }, align 32
@bt1_apb_request_clk._entry_ptr.29 = internal global ptr @bt1_apb_request_clk._entry.27, section ".printk_index", align 4
@bt1_apb_request_clk._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.3, i32 215, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Can't add APB EHB clocks disable action\0A\00", [55 x i8] zeroinitializer }, align 32
@bt1_apb_request_clk._entry_ptr.32 = internal global ptr @bt1_apb_request_clk._entry.30, section ".printk_index", align 4
@bt1_apb_request_clk._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.26, ptr @.str.3, i32 221, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid clock rate\0A\00", [44 x i8] zeroinitializer }, align 32
@bt1_apb_request_clk._entry_ptr.35 = internal global ptr @bt1_apb_request_clk._entry.33, section ".printk_index", align 4
@bt1_apb_request_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 247, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't request APB EHB IRQ\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bt1_apb_request_irq\00", [44 x i8] zeroinitializer }, align 32
@bt1_apb_request_irq._entry_ptr = internal global ptr @bt1_apb_request_irq._entry, section ".printk_index", align 4
@bt1_apb_request_irq._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 253, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Can't add APB EHB IRQs clear action\0A\00", [59 x i8] zeroinitializer }, align 32
@bt1_apb_request_irq._entry_ptr.40 = internal global ptr @bt1_apb_request_irq._entry.38, section ".printk_index", align 4
@bt1_apb_isr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.41, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.bt1_apb_isr = private unnamed_addr constant [12 x i8] c"bt1_apb_isr\00", align 1
@bt1_apb_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @__func__.bt1_apb_isr, ptr @.str.3, i32 102, ptr @.str.43, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"APB-bus fault %d: Slave access timeout at 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@bt1_apb_isr._entry_ptr = internal global ptr @bt1_apb_isr._entry, section ".printk_index", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@bt1_apb_sysfs_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bt1_apb_sysfs_group, ptr null], [24 x i8] zeroinitializer }, align 32
@bt1_apb_init_sysfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 361, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to create EHB APB sysfs nodes\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bt1_apb_init_sysfs\00", [45 x i8] zeroinitializer }, align 32
@bt1_apb_init_sysfs._entry_ptr = internal global ptr @bt1_apb_init_sysfs._entry, section ".printk_index", align 4
@bt1_apb_init_sysfs._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.3, i32 367, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Can't add APB EHB sysfs remove action\0A\00", [57 x i8] zeroinitializer }, align 32
@bt1_apb_init_sysfs._entry_ptr.48 = internal global ptr @bt1_apb_init_sysfs._entry.46, section ".printk_index", align 4
@bt1_apb_sysfs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @bt1_apb_sysfs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@bt1_apb_sysfs_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_count, ptr @dev_attr_timeout, ptr @dev_attr_inject_error, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_timeout = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @timeout_show, ptr @timeout_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_inject_error = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @inject_error_show, ptr @inject_error_store }, [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"count\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"inject_error\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error injection: nodev irq\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"irq\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.56 = private unnamed_addr constant [15 x i8] c"bt1_apb_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 410, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 413, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"bt1_apb_of_match\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 404, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 138, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 154, i32 53 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 156, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [19 x i8] c"bt1_apb_regmap_cfg\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 63, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 160, i32 14 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 162, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 166, i32 57 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 168, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 177, i32 66 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 179, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 185, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 201, i32 37 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 203, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 209, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 215, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 221, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 247, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 253, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 99, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [21 x i8] c"bt1_apb_sysfs_groups\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 361, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 367, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [20 x i8] c"bt1_apb_sysfs_group\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 346, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant [20 x i8] c"bt1_apb_sysfs_attrs\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 340, i32 26 }
@___asan_gen_.224 = private unnamed_addr constant [15 x i8] c"dev_attr_count\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [17 x i8] c"dev_attr_timeout\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [22 x i8] c"dev_attr_inject_error\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 272, i32 8 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 270, i32 35 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 310, i32 8 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 288, i32 35 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 338, i32 8 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 315, i32 35 }
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.252 = private constant [25 x i8] c"../drivers/bus/bt1-apb.c\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 330, i32 29 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_author192, ptr @__UNIQUE_ID_description193, ptr @__UNIQUE_ID_file194, ptr @__UNIQUE_ID_license195, ptr @__exitcall_bt1_apb_driver_exit, ptr @__initcall__kmod_bt1_apb__191_417_bt1_apb_driver_init6, ptr @bt1_apb_create_data._entry, ptr @bt1_apb_create_data._entry_ptr, ptr @bt1_apb_driver_exit, ptr @bt1_apb_init_sysfs._entry, ptr @bt1_apb_init_sysfs._entry.46, ptr @bt1_apb_init_sysfs._entry_ptr, ptr @bt1_apb_init_sysfs._entry_ptr.48, ptr @bt1_apb_isr._entry, ptr @bt1_apb_isr._entry_ptr, ptr @bt1_apb_request_clk._entry, ptr @bt1_apb_request_clk._entry.27, ptr @bt1_apb_request_clk._entry.30, ptr @bt1_apb_request_clk._entry.33, ptr @bt1_apb_request_clk._entry_ptr, ptr @bt1_apb_request_clk._entry_ptr.29, ptr @bt1_apb_request_clk._entry_ptr.32, ptr @bt1_apb_request_clk._entry_ptr.35, ptr @bt1_apb_request_irq._entry, ptr @bt1_apb_request_irq._entry.38, ptr @bt1_apb_request_irq._entry_ptr, ptr @bt1_apb_request_irq._entry_ptr.40, ptr @bt1_apb_request_regs._entry, ptr @bt1_apb_request_regs._entry.10, ptr @bt1_apb_request_regs._entry.14, ptr @bt1_apb_request_regs._entry_ptr, ptr @bt1_apb_request_regs._entry_ptr.12, ptr @bt1_apb_request_regs._entry_ptr.16, ptr @bt1_apb_request_rst._entry, ptr @bt1_apb_request_rst._entry.21, ptr @bt1_apb_request_rst._entry_ptr, ptr @bt1_apb_request_rst._entry_ptr.23, ptr @bt1_apb_driver, ptr @.str, ptr @bt1_apb_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @bt1_apb_request_regs._key, ptr @bt1_apb_regmap_cfg, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @bt1_apb_isr._rs, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @bt1_apb_sysfs_groups, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @bt1_apb_sysfs_group, ptr @bt1_apb_sysfs_attrs, ptr @dev_attr_count, ptr @dev_attr_timeout, ptr @dev_attr_inject_error, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_apb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_apb_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_apb_create_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_apb_request_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_apb_request_regs._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_apb_regmap_cfg to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_apb_request_regs._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_apb_request_regs._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_apb_request_rst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_apb_request_rst._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_apb_request_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_apb_request_clk._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_apb_request_clk._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_apb_request_clk._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_apb_request_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_apb_request_irq._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_apb_isr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_apb_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_apb_sysfs_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_apb_init_sysfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_apb_init_sysfs._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_apb_sysfs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_apb_sysfs_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_timeout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_inject_error to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bt1_apb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bt1_apb_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bt1_apb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @bt1_apb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt1_apb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 32, i32 noundef 3520) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call3.i = tail call i32 @devm_add_action(ptr noundef %dev1.i, ptr noundef nonnull @bt1_apb_clear_data, ptr noundef nonnull %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end7.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.1) #11
  %0 = inttoptr i32 %call3.i to ptr
  br label %bt1_apb_create_data.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1.i, ptr %call.i.i, align 4
  %count.i = getelementptr inbounds %struct.bt1_apb, ptr %call.i.i, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #8
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %count.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i.i, ptr %driver_data.i.i.i, align 4
  br label %bt1_apb_create_data.exit

bt1_apb_create_data.exit:                         ; preds = %if.end7.i, %do.end.i
  %retval.0.i = phi ptr [ %0, %do.end.i ], [ %call.i.i, %if.end7.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %bt1_apb_create_data.exit.if.then_crit_edge, label %if.end

bt1_apb_create_data.exit.if.then_crit_edge:       ; preds = %bt1_apb_create_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %bt1_apb_create_data.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i65 = phi ptr [ %retval.0.i, %bt1_apb_create_data.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %4 = ptrtoint ptr %retval.0.i65 to i32
  br label %cleanup

if.end:                                           ; preds = %bt1_apb_create_data.exit
  %5 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %retval.0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 -16
  %call.i = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.6) #8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %7 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %retval.0.i, align 4
  br i1 %cmp.i.i, label %do.end.i38, label %if.end.i39

do.end.i38:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.7) #11
  br label %bt1_apb_request_regs.exit

if.end.i39:                                       ; preds = %if.end
  %call6.i = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %8, ptr noundef null, ptr noundef %call.i, ptr noundef nonnull @bt1_apb_regmap_cfg, ptr noundef nonnull @bt1_apb_request_regs._key, ptr noundef nonnull @.str.9) #8
  %regs7.i = getelementptr inbounds %struct.bt1_apb, ptr %retval.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %regs7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call6.i, ptr %regs7.i, align 4
  %cmp.i43.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i43.i, label %do.end13.i, label %if.end17.i

do.end13.i:                                       ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %retval.0.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.11) #11
  %12 = ptrtoint ptr %regs7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs7.i, align 4
  br label %bt1_apb_request_regs.exit

if.end17.i:                                       ; preds = %if.end.i39
  %call18.i = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.13) #8
  %res.i = getelementptr inbounds %struct.bt1_apb, ptr %retval.0.i, i32 0, i32 2
  %14 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call18.i, ptr %res.i, align 4
  %cmp.i44.i = icmp ugt ptr %call18.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44.i, label %do.end24.i, label %if.end17.i.if.end26.i_crit_edge

if.end17.i.if.end26.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

do.end24.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %retval.0.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.15) #11
  %17 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load ptr, ptr %res.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end24.i, %if.end17.i.if.end26.i_crit_edge
  %18 = phi ptr [ %.pr, %do.end24.i ], [ %call18.i, %if.end17.i.if.end26.i_crit_edge ]
  %cmp.i.i.i = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end26.i.bt1_apb_request_regs.exit_crit_edge, label %if.end26.i.if.end5_crit_edge

if.end26.i.if.end5_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end26.i.bt1_apb_request_regs.exit_crit_edge:   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bt1_apb_request_regs.exit

bt1_apb_request_regs.exit:                        ; preds = %if.end26.i.bt1_apb_request_regs.exit_crit_edge, %do.end13.i, %do.end.i38
  %retval.0.i40.in = phi ptr [ %call.i, %do.end.i38 ], [ %13, %do.end13.i ], [ %18, %if.end26.i.bt1_apb_request_regs.exit_crit_edge ]
  %retval.0.i40 = ptrtoint ptr %retval.0.i40.in to i32
  %tobool.not = icmp eq ptr %retval.0.i40.in, null
  br i1 %tobool.not, label %bt1_apb_request_regs.exit.if.end5_crit_edge, label %bt1_apb_request_regs.exit.cleanup_crit_edge

bt1_apb_request_regs.exit.cleanup_crit_edge:      ; preds = %bt1_apb_request_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

bt1_apb_request_regs.exit.if.end5_crit_edge:      ; preds = %bt1_apb_request_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end5:                                          ; preds = %bt1_apb_request_regs.exit.if.end5_crit_edge, %if.end26.i.if.end5_crit_edge
  %19 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %retval.0.i, align 4
  %call.i.i41 = tail call ptr @__devm_reset_control_get(ptr noundef %20, ptr noundef nonnull @.str.17, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #8
  %prst.i = getelementptr inbounds %struct.bt1_apb, ptr %retval.0.i, i32 0, i32 6
  %21 = ptrtoint ptr %prst.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i41, ptr %prst.i, align 4
  %cmp.i.i42 = icmp ugt ptr %call.i.i41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i42, label %bt1_apb_request_rst.exit, label %if.end.i45

if.end.i45:                                       ; preds = %if.end5
  %call7.i = tail call i32 @reset_control_deassert(ptr noundef %call.i.i41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i44 = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i44, label %if.end.i45.if.end9_crit_edge, label %bt1_apb_request_rst.exit.thread70

if.end.i45.if.end9_crit_edge:                     ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

bt1_apb_request_rst.exit.thread70:                ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %retval.0.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.22) #11
  br label %cleanup

bt1_apb_request_rst.exit:                         ; preds = %if.end5
  %24 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %retval.0.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.18) #11
  %26 = ptrtoint ptr %prst.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prst.i, align 4
  %28 = ptrtoint ptr %27 to i32
  %tobool7.not = icmp eq ptr %27, null
  br i1 %tobool7.not, label %bt1_apb_request_rst.exit.if.end9_crit_edge, label %bt1_apb_request_rst.exit.cleanup_crit_edge

bt1_apb_request_rst.exit.cleanup_crit_edge:       ; preds = %bt1_apb_request_rst.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

bt1_apb_request_rst.exit.if.end9_crit_edge:       ; preds = %bt1_apb_request_rst.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end9:                                          ; preds = %bt1_apb_request_rst.exit.if.end9_crit_edge, %if.end.i45.if.end9_crit_edge
  %29 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %retval.0.i, align 4
  %call.i47 = tail call ptr @devm_clk_get(ptr noundef %30, ptr noundef nonnull @.str.24) #8
  %pclk.i = getelementptr inbounds %struct.bt1_apb, ptr %retval.0.i, i32 0, i32 5
  %31 = ptrtoint ptr %pclk.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i47, ptr %pclk.i, align 4
  %cmp.i.i48 = icmp ugt ptr %call.i47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i48, label %bt1_apb_request_clk.exit, label %if.end.i51

if.end.i51:                                       ; preds = %if.end9
  %call.i.i50 = tail call i32 @clk_prepare(ptr noundef %call.i47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i50)
  %tobool.not.i.i = icmp eq i32 %call.i.i50, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i51.do.end11.i52_crit_edge

if.end.i51.do.end11.i52_crit_edge:                ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11.i52

if.end.i.i:                                       ; preds = %if.end.i51
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %call.i47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end13.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call.i47) #8
  br label %do.end11.i52

do.end11.i52:                                     ; preds = %if.then3.i.i, %if.end.i51.do.end11.i52_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i50, %if.end.i51.do.end11.i52_crit_edge ]
  %32 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %retval.0.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.28) #11
  br label %cleanup

if.end13.i:                                       ; preds = %if.end.i.i
  %34 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %retval.0.i, align 4
  %call.i49.i = tail call i32 @devm_add_action(ptr noundef %35, ptr noundef nonnull @bt1_apb_disable_clk, ptr noundef %retval.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49.i)
  %tobool.not.i50.i = icmp eq i32 %call.i49.i, 0
  %36 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pclk.i, align 4
  br i1 %tobool.not.i50.i, label %if.end22.i, label %do.end20.i

do.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef %37) #8
  tail call void @clk_unprepare(ptr noundef %37) #8
  %38 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %retval.0.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.31) #11
  br label %cleanup

if.end22.i:                                       ; preds = %if.end13.i
  %call24.i = tail call i32 @clk_get_rate(ptr noundef %37) #8
  %rate.i = getelementptr inbounds %struct.bt1_apb, ptr %retval.0.i, i32 0, i32 4
  %40 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call24.i, ptr %rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool26.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool26.not.i, label %do.end30.i, label %if.end22.i.if.end13_crit_edge

if.end22.i.if.end13_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.end30.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %retval.0.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.34) #11
  br label %cleanup

bt1_apb_request_clk.exit:                         ; preds = %if.end9
  %43 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %retval.0.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.25) #11
  %45 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pclk.i, align 4
  %47 = ptrtoint ptr %46 to i32
  %tobool11.not = icmp eq ptr %46, null
  br i1 %tobool11.not, label %bt1_apb_request_clk.exit.if.end13_crit_edge, label %bt1_apb_request_clk.exit.cleanup_crit_edge

bt1_apb_request_clk.exit.cleanup_crit_edge:       ; preds = %bt1_apb_request_clk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

bt1_apb_request_clk.exit.if.end13_crit_edge:      ; preds = %bt1_apb_request_clk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end13:                                         ; preds = %bt1_apb_request_clk.exit.if.end13_crit_edge, %if.end22.i.if.end13_crit_edge
  %48 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %retval.0.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %49, i32 -16
  %call.i55 = tail call i32 @platform_get_irq(ptr noundef %add.ptr.i54, i32 noundef 0) #8
  %irq.i = getelementptr inbounds %struct.bt1_apb, ptr %retval.0.i, i32 0, i32 3
  %50 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call.i55, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %cmp.i56 = icmp slt i32 %call.i55, 0
  br i1 %cmp.i56, label %if.end13.cleanup_crit_edge, label %if.end.i59

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i59:                                       ; preds = %if.end13
  %51 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %retval.0.i, align 4
  %call.i.i57 = tail call i32 @devm_request_threaded_irq(ptr noundef %52, i32 noundef %call.i55, ptr noundef nonnull @bt1_apb_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %retval.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i57)
  %tobool.not.i58 = icmp eq i32 %call.i.i57, 0
  %53 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %retval.0.i, align 4
  br i1 %tobool.not.i58, label %if.end8.i, label %do.end.i60

do.end.i60:                                       ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.36) #11
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i59
  %call10.i = tail call i32 @devm_add_action(ptr noundef %54, ptr noundef nonnull @bt1_apb_clear_irq, ptr noundef %retval.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end17, label %do.end15.i

do.end15.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %retval.0.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.39) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %regs.i = getelementptr inbounds %struct.bt1_apb, ptr %retval.0.i, i32 0, i32 1
  %57 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i, align 4
  %call.i34.i = tail call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 0, i32 noundef 3, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call18 = tail call fastcc i32 @bt1_apb_init_sysfs(ptr noundef %retval.0.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end15.i, %do.end.i60, %if.end13.cleanup_crit_edge, %bt1_apb_request_clk.exit.cleanup_crit_edge, %do.end30.i, %do.end20.i, %do.end11.i52, %bt1_apb_request_rst.exit.cleanup_crit_edge, %bt1_apb_request_rst.exit.thread70, %bt1_apb_request_regs.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %retval.0.i40, %bt1_apb_request_regs.exit.cleanup_crit_edge ], [ %28, %bt1_apb_request_rst.exit.cleanup_crit_edge ], [ %47, %bt1_apb_request_clk.exit.cleanup_crit_edge ], [ %call18, %if.end17 ], [ %call7.i, %bt1_apb_request_rst.exit.thread70 ], [ -22, %do.end30.i ], [ %call.i49.i, %do.end20.i ], [ %retval.0.i.ph.i, %do.end11.i52 ], [ %call.i55, %if.end13.cleanup_crit_edge ], [ %call10.i, %do.end15.i ], [ %call.i.i57, %do.end.i60 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bt1_apb_init_sysfs(ptr noundef %apb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %apb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %apb, align 4
  %call = tail call i32 @device_add_groups(ptr noundef %1, ptr noundef nonnull @bt1_apb_sysfs_groups) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %2 = ptrtoint ptr %apb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %apb, align 4
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.44) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @devm_add_action(ptr noundef %3, ptr noundef nonnull @bt1_apb_remove_sysfs, ptr noundef %apb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %do.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %apb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apb, align 4
  tail call void @device_remove_groups(ptr noundef %5, ptr noundef nonnull @bt1_apb_sysfs_groups) #8
  %6 = ptrtoint ptr %apb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %apb, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.47) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call.i, %do.end8 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bt1_apb_clear_data(ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %driver_data.i.i = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bt1_apb_disable_clk(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pclk = getelementptr inbounds %struct.bt1_apb, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %1) #8
  tail call void @clk_unprepare(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt1_apb_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #8
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %addr, align 4
  %regs = getelementptr inbounds %struct.bt1_apb, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 4, ptr noundef nonnull %addr) #8
  %call1 = call i32 @___ratelimit(ptr noundef nonnull @bt1_apb_isr._rs, ptr noundef nonnull @__func__.bt1_apb_isr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %count = getelementptr inbounds %struct.bt1_apb, ptr %data, i32 0, i32 7
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !134
  call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #8
  %5 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #8, !srcloc !135
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %5, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !136
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %4, ptr noundef nonnull @.str.42, i32 noundef %asmresult.i.i.i.i, i32 noundef %7) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  call void @arch_trigger_cpumask_backtrace(ptr noundef nonnull @__cpu_online_mask, i1 noundef zeroext false) #8
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bt1_apb_clear_irq(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.bt1_apb, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_trigger_cpumask_backtrace(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bt1_apb_remove_sysfs(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @device_remove_groups(ptr noundef %1, ptr noundef nonnull @bt1_apb_sysfs_groups) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @count_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %count = getelementptr inbounds %struct.bt1_apb, ptr %1, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count, i32 noundef 4) #8
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %count, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.50, i32 noundef %3) #8
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timeout_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #8
  %2 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %n, align 4, !annotation !137
  %regs = getelementptr inbounds %struct.bt1_apb, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 8, ptr noundef nonnull %n) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n, align 4
  %conv.i = zext i32 %6 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000000
  %rate.i = getelementptr inbounds %struct.bt1_apb, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp167.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp167.i, label %if.then171.i, label %if.else177.i, !prof !138

if.then171.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv172.i = trunc i64 %mul.i to i32
  %div175.i = udiv i32 %conv172.i, %8
  br label %bt1_apb_n_to_timeout_us.exit

if.else177.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %mul.i) #12, !srcloc !139
  %asmresult1.i.i = extractvalue { i64, i64 } %9, 1
  %extract.t288.i = trunc i64 %asmresult1.i.i to i32
  br label %bt1_apb_n_to_timeout_us.exit

bt1_apb_n_to_timeout_us.exit:                     ; preds = %if.else177.i, %if.then171.i
  %timeout.0.off0.i = phi i32 [ %div175.i, %if.then171.i ], [ %extract.t288.i, %if.else177.i ]
  %call3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.52, i32 noundef %timeout.0.off0.i) #8
  br label %cleanup

cleanup:                                          ; preds = %bt1_apb_n_to_timeout_us.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %bt1_apb_n_to_timeout_us.exit ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timeout_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %timeout = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeout) #8
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %timeout, align 4, !annotation !137
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %timeout) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %timeout, align 4
  %conv.i = zext i32 %4 to i64
  %rate.i = getelementptr inbounds %struct.bt1_apb, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rate.i, align 4
  %conv1.i = zext i32 %6 to i64
  %mul.i = mul nuw i64 %conv1.i, %conv.i
  %7 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul.i) #12, !srcloc !140
  %8 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul.i, i64 %7, i32 0) #12, !srcloc !141
  %asmresult10.i.i = extractvalue { i64, i32 } %8, 0
  %div162264.i = lshr i64 %asmresult10.i.i, 18
  %extract.t265.i = trunc i64 %div162264.i to i32
  %9 = call i32 @llvm.umax.i32(i32 %extract.t265.i, i32 1023)
  %regs = getelementptr inbounds %struct.bt1_apb, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %call10 = call i32 @regmap_write(ptr noundef %11, i32 noundef 8, i32 noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  %cond14 = select i1 %tobool.not, i32 %count, i32 %call10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond14, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeout) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inject_error_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.54) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inject_error_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call zeroext i1 @sysfs_streq(ptr noundef %data, ptr noundef nonnull @.str.13) #8
  br i1 %call1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %res = getelementptr inbounds %struct.bt1_apb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  br label %cleanup

if.else:                                          ; preds = %entry
  %call4 = tail call zeroext i1 @sysfs_streq(ptr noundef %data, ptr noundef nonnull @.str.55) #8
  br i1 %call4, label %if.then5, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %regs = getelementptr inbounds %struct.bt1_apb, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.else.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ %count, %if.then5 ], [ %count, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !34, !35, !36, !38, !40, !41, !42, !44, !46, !48, !49, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !106, !108, !109, !111, !113, !114, !116, !118, !119, !121, !123}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @__initcall__kmod_bt1_apb__191_417_bt1_apb_driver_init6, !1, !"__initcall__kmod_bt1_apb__191_417_bt1_apb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/bus/bt1-apb.c", i32 417, i32 1}
!2 = !{ptr @__exitcall_bt1_apb_driver_exit, !1, !"__exitcall_bt1_apb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author192, !4, !"__UNIQUE_ID_author192", i1 false, i1 false}
!4 = !{!"../drivers/bus/bt1-apb.c", i32 419, i32 1}
!5 = !{ptr @__UNIQUE_ID_description193, !6, !"__UNIQUE_ID_description193", i1 false, i1 false}
!6 = !{!"../drivers/bus/bt1-apb.c", i32 420, i32 1}
!7 = !{ptr @__UNIQUE_ID_file194, !8, !"__UNIQUE_ID_file194", i1 false, i1 false}
!8 = !{!"../drivers/bus/bt1-apb.c", i32 421, i32 1}
!9 = !{ptr @__UNIQUE_ID_license195, !8, !"__UNIQUE_ID_license195", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/bus/bt1-apb.c", i32 413, i32 11}
!12 = !{ptr @bt1_apb_driver, !13, !"bt1_apb_driver", i1 false, i1 false}
!13 = !{!"../drivers/bus/bt1-apb.c", i32 410, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/bus/bt1-apb.c", i32 138, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bt1_apb_create_data._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @bt1_apb_create_data._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/bus/bt1-apb.c", i32 154, i32 53}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/bus/bt1-apb.c", i32 156, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @bt1_apb_request_regs._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @bt1_apb_request_regs._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @bt1_apb_request_regs._key, !30, !"_key", i1 false, i1 false}
!30 = !{!"../drivers/bus/bt1-apb.c", i32 160, i32 14}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/bus/bt1-apb.c", i32 162, i32 3}
!34 = !{ptr @bt1_apb_request_regs._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @bt1_apb_request_regs._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/bus/bt1-apb.c", i32 166, i32 57}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/bus/bt1-apb.c", i32 168, i32 3}
!40 = !{ptr @bt1_apb_request_regs._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @bt1_apb_request_regs._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @bt1_apb_regmap_cfg, !43, !"bt1_apb_regmap_cfg", i1 false, i1 false}
!43 = !{!"../drivers/bus/bt1-apb.c", i32 63, i32 35}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/bus/bt1-apb.c", i32 177, i32 66}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/bus/bt1-apb.c", i32 179, i32 3}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @bt1_apb_request_rst._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @bt1_apb_request_rst._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/bus/bt1-apb.c", i32 185, i32 3}
!54 = !{ptr @bt1_apb_request_rst._entry.21, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @bt1_apb_request_rst._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/bus/bt1-apb.c", i32 201, i32 37}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/bus/bt1-apb.c", i32 203, i32 3}
!60 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @bt1_apb_request_clk._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @bt1_apb_request_clk._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/bus/bt1-apb.c", i32 209, i32 3}
!65 = !{ptr @bt1_apb_request_clk._entry.27, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @bt1_apb_request_clk._entry_ptr.29, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/bus/bt1-apb.c", i32 215, i32 3}
!69 = !{ptr @bt1_apb_request_clk._entry.30, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @bt1_apb_request_clk._entry_ptr.32, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/bus/bt1-apb.c", i32 221, i32 3}
!73 = !{ptr @bt1_apb_request_clk._entry.33, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @bt1_apb_request_clk._entry_ptr.35, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/bus/bt1-apb.c", i32 247, i32 3}
!77 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @bt1_apb_request_irq._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @bt1_apb_request_irq._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/bus/bt1-apb.c", i32 253, i32 3}
!82 = !{ptr @bt1_apb_request_irq._entry.38, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @bt1_apb_request_irq._entry_ptr.40, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/bus/bt1-apb.c", i32 99, i32 2}
!86 = !{ptr @bt1_apb_isr._rs, !85, !"_rs", i1 false, i1 false}
!87 = !{ptr @__func__.bt1_apb_isr, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @bt1_apb_isr._entry, !85, !"_entry", i1 false, i1 false}
!91 = !{ptr @bt1_apb_isr._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/bus/bt1-apb.c", i32 361, i32 3}
!94 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @bt1_apb_init_sysfs._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @bt1_apb_init_sysfs._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/bus/bt1-apb.c", i32 367, i32 3}
!99 = !{ptr @bt1_apb_init_sysfs._entry.46, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @bt1_apb_init_sysfs._entry_ptr.48, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @bt1_apb_sysfs_groups, !102, !"bt1_apb_sysfs_groups", i1 false, i1 false}
!102 = !{!"../drivers/bus/bt1-apb.c", i32 346, i32 1}
!103 = !{ptr @bt1_apb_sysfs_group, !102, !"bt1_apb_sysfs_group", i1 false, i1 false}
!104 = !{ptr @bt1_apb_sysfs_attrs, !105, !"bt1_apb_sysfs_attrs", i1 false, i1 false}
!105 = !{!"../drivers/bus/bt1-apb.c", i32 340, i32 26}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/bus/bt1-apb.c", i32 272, i32 8}
!108 = !{ptr @dev_attr_count, !107, !"dev_attr_count", i1 false, i1 false}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/bus/bt1-apb.c", i32 270, i32 35}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/bus/bt1-apb.c", i32 310, i32 8}
!113 = !{ptr @dev_attr_timeout, !112, !"dev_attr_timeout", i1 false, i1 false}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/bus/bt1-apb.c", i32 288, i32 35}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/bus/bt1-apb.c", i32 338, i32 8}
!118 = !{ptr @dev_attr_inject_error, !117, !"dev_attr_inject_error", i1 false, i1 false}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/bus/bt1-apb.c", i32 315, i32 35}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/bus/bt1-apb.c", i32 330, i32 29}
!123 = !{ptr @bt1_apb_of_match, !124, !"bt1_apb_of_match", i1 false, i1 false}
!124 = !{!"../drivers/bus/bt1-apb.c", i32 404, i32 34}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{i64 2148302587}
!135 = !{i64 2148217896, i64 2148217928, i64 2148217957, i64 2148217991, i64 2148218022, i64 2148218045}
!136 = !{i64 2148302816}
!137 = !{!"auto-init"}
!138 = !{!"branch_weights", i32 2000, i32 1}
!139 = !{i64 2148607710, i64 2148607990, i64 2148608324, i64 2148608658}
!140 = !{i64 1121879, i64 1121906}
!141 = !{i64 1122574, i64 1122601, i64 1122634, i64 1122655, i64 1122682, i64 1122708}
!142 = !{i64 4880079}
!143 = !{i64 2153299247}
