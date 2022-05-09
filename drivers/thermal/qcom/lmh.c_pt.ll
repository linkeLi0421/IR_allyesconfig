; ModuleID = '/llk/IR_all_yes/drivers/thermal/qcom/lmh.c_pt.bc'
source_filename = "../drivers/thermal/qcom/lmh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.lmh_hw_data = type { ptr, ptr, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_lmh__187_229_lmh_driver_init6 = internal global ptr @lmh_driver_init, section ".initcall6.init", align 4
@lmh_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lmh_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @lmh_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lmh_driver_exit = internal global ptr @lmh_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file188 = internal constant [34 x i8] c"lmh.file=drivers/thermal/qcom/lmh\00", section ".modinfo", align 1
@__UNIQUE_ID_license189 = internal constant [19 x i8] c"lmh.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [32 x i8] c"lmh.description=QCOM LMh driver\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qcom-lmh\00", [23 x i8] zeroinitializer }, align 32
@lmh_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-lmh\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpus\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qcom,lmh-temp-high-millicelsius\00", [32 x i8] zeroinitializer }, align 32
@lmh_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 111, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"missing qcom,lmh-temp-high-millicelsius property\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lmh_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/thermal/qcom/lmh.c\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lmh_probe._entry_ptr = internal global ptr @lmh_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qcom,lmh-temp-low-millicelsius\00", [33 x i8] zeroinitializer }, align 32
@lmh_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 117, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"missing qcom,lmh-temp-low-millicelsius property\0A\00", [47 x i8] zeroinitializer }, align 32
@lmh_probe._entry_ptr.11 = internal global ptr @lmh_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qcom,lmh-temp-arm-millicelsius\00", [33 x i8] zeroinitializer }, align 32
@lmh_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 123, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"missing qcom,lmh-temp-arm-millicelsius property\0A\00", [47 x i8] zeroinitializer }, align 32
@lmh_probe._entry_ptr.15 = internal global ptr @lmh_probe._entry.13, section ".printk_index", align 4
@lmh_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 137, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Wrong CPU id associated with LMh node\0A\00", [57 x i8] zeroinitializer }, align 32
@lmh_probe._entry_ptr.18 = internal global ptr @lmh_probe._entry.16, section ".printk_index", align 4
@lmh_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 147, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error %d enabling current subfunction\0A\00", [57 x i8] zeroinitializer }, align 32
@lmh_probe._entry_ptr.21 = internal global ptr @lmh_probe._entry.19, section ".printk_index", align 4
@lmh_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.4, ptr @.str.5, i32 152, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error %d enabling reliability subfunction\0A\00", [53 x i8] zeroinitializer }, align 32
@lmh_probe._entry_ptr.24 = internal global ptr @lmh_probe._entry.22, section ".printk_index", align 4
@lmh_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.4, ptr @.str.5, i32 157, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error %d enabling BCL subfunction\0A\00", [61 x i8] zeroinitializer }, align 32
@lmh_probe._entry_ptr.27 = internal global ptr @lmh_probe._entry.25, section ".printk_index", align 4
@lmh_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.4, ptr @.str.5, i32 162, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error %d enabling thermal subfunction\0A\00", [57 x i8] zeroinitializer }, align 32
@lmh_probe._entry_ptr.30 = internal global ptr @lmh_probe._entry.28, section ".printk_index", align 4
@lmh_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.4, ptr @.str.5, i32 168, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error %d changing profile\0A\00", [37 x i8] zeroinitializer }, align 32
@lmh_probe._entry_ptr.33 = internal global ptr @lmh_probe._entry.31, section ".printk_index", align 4
@lmh_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.4, ptr @.str.5, i32 176, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error setting thermal ARM threshold%d\0A\00", [57 x i8] zeroinitializer }, align 32
@lmh_probe._entry_ptr.36 = internal global ptr @lmh_probe._entry.34, section ".printk_index", align 4
@lmh_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.4, ptr @.str.5, i32 183, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error setting thermal HI threshold%d\0A\00", [58 x i8] zeroinitializer }, align 32
@lmh_probe._entry_ptr.39 = internal global ptr @lmh_probe._entry.37, section ".printk_index", align 4
@lmh_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.4, ptr @.str.5, i32 190, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@lmh_probe._entry_ptr.41 = internal global ptr @lmh_probe._entry.40, section ".printk_index", align 4
@lmh_irq_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @lmh_irq_map, ptr null, ptr @irq_domain_xlate_onecell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@lmh_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.4, ptr @.str.5, i32 197, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error adding irq_domain\0A\00", [39 x i8] zeroinitializer }, align 32
@lmh_probe._entry_ptr.44 = internal global ptr @lmh_probe._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lmh-irq\00", [24 x i8] zeroinitializer }, align 32
@lmh_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.4, ptr @.str.5, i32 207, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error %d registering irq %x\0A\00", [35 x i8] zeroinitializer }, align 32
@lmh_probe._entry_ptr.48 = internal global ptr @lmh_probe._entry.46, section ".printk_index", align 4
@lmh_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.49, ptr null, ptr null, ptr @lmh_enable_interrupt, ptr @lmh_disable_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lmh\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"lmh_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 221, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 224, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant [10 x i8] c"lmh_table\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 215, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 103, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 109, i32 33 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 111, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 115, i32 33 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 117, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 121, i32 33 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 123, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 137, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 147, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 152, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 157, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 162, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 168, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 176, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 183, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 190, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [12 x i8] c"lmh_irq_ops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 81, i32 36 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 197, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 205, i32 11 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 207, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant [13 x i8] c"lmh_irq_chip\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 65, i32 24 }
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private constant [30 x i8] c"../drivers/thermal/qcom/lmh.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 66, i32 20 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file188, ptr @__UNIQUE_ID_license189, ptr @__exitcall_lmh_driver_exit, ptr @__initcall__kmod_lmh__187_229_lmh_driver_init6, ptr @lmh_driver_exit, ptr @lmh_probe._entry, ptr @lmh_probe._entry.13, ptr @lmh_probe._entry.16, ptr @lmh_probe._entry.19, ptr @lmh_probe._entry.22, ptr @lmh_probe._entry.25, ptr @lmh_probe._entry.28, ptr @lmh_probe._entry.31, ptr @lmh_probe._entry.34, ptr @lmh_probe._entry.37, ptr @lmh_probe._entry.40, ptr @lmh_probe._entry.42, ptr @lmh_probe._entry.46, ptr @lmh_probe._entry.9, ptr @lmh_probe._entry_ptr, ptr @lmh_probe._entry_ptr.11, ptr @lmh_probe._entry_ptr.15, ptr @lmh_probe._entry_ptr.18, ptr @lmh_probe._entry_ptr.21, ptr @lmh_probe._entry_ptr.24, ptr @lmh_probe._entry_ptr.27, ptr @lmh_probe._entry_ptr.30, ptr @lmh_probe._entry_ptr.33, ptr @lmh_probe._entry_ptr.36, ptr @lmh_probe._entry_ptr.39, ptr @lmh_probe._entry_ptr.41, ptr @lmh_probe._entry_ptr.44, ptr @lmh_probe._entry_ptr.48, ptr @lmh_driver, ptr @.str, ptr @lmh_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @lmh_irq_ops, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @lmh_irq_chip, ptr @.str.49], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmh_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmh_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmh_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmh_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmh_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmh_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmh_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmh_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmh_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmh_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmh_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmh_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmh_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmh_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmh_irq_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmh_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmh_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmh_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lmh_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lmh_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lmh_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @lmh_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmh_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %temp_low = alloca i32, align 4
  %temp_high = alloca i32, align 4
  %temp_arm = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp_low) #5
  %2 = ptrtoint ptr %temp_low to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %temp_low, align 4, !annotation !98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp_high) #5
  %3 = ptrtoint ptr %temp_high to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %temp_high, align 4, !annotation !98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp_arm) #5
  %4 = ptrtoint ptr %temp_arm to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %temp_arm, align 4, !annotation !98
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %7 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i201 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201)
  %tobool.not.i = icmp eq i32 %call.i201, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  br label %cleanup

of_parse_phandle.exit:                            ; preds = %if.end8
  %8 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %of_parse_phandle.exit.cleanup_crit_edge, label %if.end12

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %of_parse_phandle.exit
  %call13 = call i32 @of_cpu_node_to_id(ptr noundef nonnull %9) #5
  call void @of_node_put(ptr noundef nonnull %9) #5
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %temp_high, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool15.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool15.not, label %if.end17, label %do.end

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %call.i.i202 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %temp_low, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i202)
  %tobool19.not = icmp sgt i32 %call.i.i202, -1
  br i1 %tobool19.not, label %if.end24, label %do.end23

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %call.i.i203 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %temp_arm, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i203)
  %tobool26.not = icmp sgt i32 %call.i.i203, -1
  br i1 %tobool26.not, label %if.end31, label %do.end30

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %10 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call13, label %do.end38 [
    i32 0, label %if.end31.if.end40_crit_edge
    i32 4, label %if.then34
  ]

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end40:                                         ; preds = %if.then34, %if.end31.if.end40_crit_edge
  %node_id.0 = phi i32 [ 1668297005, %if.then34 ], [ 1668296749, %if.end31.if.end40_crit_edge ]
  %call41 = call zeroext i1 @qcom_scm_lmh_dcvsh_available() #5
  br i1 %call41, label %if.end43, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end43:                                         ; preds = %if.end40
  %call44 = call i32 @qcom_scm_lmh_dcvsh(i32 noundef 1129467476, i32 noundef 1162756684, i32 noundef 1, i64 noundef 1145263699, i32 noundef %node_id.0, i64 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end43.if.end50_crit_edge, label %do.end49

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %call44) #8
  br label %if.end50

if.end50:                                         ; preds = %do.end49, %if.end43.if.end50_crit_edge
  %call51 = call i32 @qcom_scm_lmh_dcvsh(i32 noundef 1380273152, i32 noundef 1162756684, i32 noundef 1, i64 noundef 1145263699, i32 noundef %node_id.0, i64 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end50.if.end57_crit_edge, label %do.end56

if.end50.if.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

do.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %call51) #8
  br label %if.end57

if.end57:                                         ; preds = %do.end56, %if.end50.if.end57_crit_edge
  %call58 = call i32 @qcom_scm_lmh_dcvsh(i32 noundef 1111706624, i32 noundef 1162756684, i32 noundef 1, i64 noundef 1145263699, i32 noundef %node_id.0, i64 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end57.if.end64_crit_edge, label %do.end63

if.end57.if.end64_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %call58) #8
  br label %if.end64

if.end64:                                         ; preds = %do.end63, %if.end57.if.end64_crit_edge
  %call65 = call i32 @qcom_scm_lmh_dcvsh(i32 noundef 1414024524, i32 noundef 1162756684, i32 noundef 1, i64 noundef 1145263699, i32 noundef %node_id.0, i64 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end71, label %do.end70

do.end70:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %call65) #8
  br label %cleanup

if.end71:                                         ; preds = %if.end64
  %call72 = call i32 @qcom_scm_lmh_profile_change(i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end78, label %do.end77

do.end77:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %call72) #8
  br label %cleanup

if.end78:                                         ; preds = %if.end71
  %11 = ptrtoint ptr %temp_arm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %temp_arm, align 4
  %call79 = call i32 @qcom_scm_lmh_dcvsh(i32 noundef 1414024524, i32 noundef 1095912704, i32 noundef %12, i64 noundef 1145263699, i32 noundef %node_id.0, i64 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end85, label %do.end84

do.end84:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35, i32 noundef %call79) #8
  br label %cleanup

if.end85:                                         ; preds = %if.end78
  %13 = ptrtoint ptr %temp_high to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %temp_high, align 4
  %call86 = call i32 @qcom_scm_lmh_dcvsh(i32 noundef 1414024524, i32 noundef 1212761928, i32 noundef %14, i64 noundef 1145263699, i32 noundef %node_id.0, i64 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end92, label %do.end91

do.end91:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38, i32 noundef %call86) #8
  br label %cleanup

if.end92:                                         ; preds = %if.end85
  %15 = ptrtoint ptr %temp_low to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %temp_low, align 4
  %call93 = call i32 @qcom_scm_lmh_dcvsh(i32 noundef 1414024524, i32 noundef 1280268032, i32 noundef %16, i64 noundef 1145263699, i32 noundef %node_id.0, i64 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end99, label %do.end98

do.end98:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35, i32 noundef %call93) #8
  br label %cleanup

if.end99:                                         ; preds = %if.end92
  %call100 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.lmh_hw_data, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call100, ptr %irq, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @lmh_irq_ops, ptr noundef nonnull %call.i) #5
  %domain = getelementptr inbounds %struct.lmh_hw_data, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call1.i, ptr %domain, align 4
  %tobool103.not = icmp eq ptr %call1.i, null
  br i1 %tobool103.not, label %do.end107, label %if.end108

do.end107:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43) #8
  br label %cleanup

if.end108:                                        ; preds = %if.end99
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  call void @irq_modify_status(i32 noundef %20, i32 noundef 0, i32 noundef 4096) #5
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  %call.i204 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %22, ptr noundef nonnull @lmh_handle_irq, ptr noundef null, i32 noundef 24576, ptr noundef nonnull @.str.45, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204)
  %tobool112.not = icmp eq i32 %call.i204, 0
  br i1 %tobool112.not, label %if.end108.cleanup_crit_edge, label %do.end116

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end116:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.47, i32 noundef %call.i204, i32 noundef %24) #8
  %25 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %domain, align 4
  call void @irq_domain_remove(ptr noundef %26) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end116, %if.end108.cleanup_crit_edge, %do.end107, %do.end98, %do.end91, %do.end84, %do.end77, %do.end70, %if.end40.cleanup_crit_edge, %do.end38, %do.end30, %do.end23, %do.end, %of_parse_phandle.exit.cleanup_crit_edge, %of_parse_phandle.exit.thread, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then5 ], [ %call.i.i, %do.end ], [ %call.i.i202, %do.end23 ], [ %call.i.i203, %do.end30 ], [ %call65, %do.end70 ], [ %call72, %do.end77 ], [ %call79, %do.end84 ], [ %call86, %do.end91 ], [ %call93, %do.end98 ], [ %call.i204, %do.end116 ], [ -22, %do.end107 ], [ -22, %do.end38 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %of_parse_phandle.exit.cleanup_crit_edge ], [ -22, %if.end40.cleanup_crit_edge ], [ 0, %if.end108.cleanup_crit_edge ], [ -22, %of_parse_phandle.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp_arm) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp_high) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp_low) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_cpu_node_to_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qcom_scm_lmh_dcvsh_available() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_lmh_dcvsh(i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_lmh_profile_change(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmh_handle_irq(i32 noundef %hw_irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.lmh_hw_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #5
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irq.i, align 4, !annotation !98
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %irq.i) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %irq_find_mapping.exit.thread, label %irq_find_mapping.exit

irq_find_mapping.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #5
  br label %if.end

irq_find_mapping.exit:                            ; preds = %entry
  %3 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %irq_find_mapping.exit.if.end_crit_edge, label %if.then

irq_find_mapping.exit.if.end_crit_edge:           ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = call i32 @generic_handle_irq(i32 noundef %4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %irq_find_mapping.exit.if.end_crit_edge, %irq_find_mapping.exit.thread
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmh_irq_map(ptr nocapture noundef readonly %d, i32 noundef %irq, i32 noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @lmh_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #5
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onecell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lmh_enable_interrupt(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -16777216) #5, !srcloc !100
  %irq = getelementptr inbounds %struct.lmh_hw_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lmh_disable_interrupt(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq = getelementptr inbounds %struct.lmh_hw_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !73, !74, !75, !77, !79, !80, !81, !83, !85, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__initcall__kmod_lmh__187_229_lmh_driver_init6, !1, !"__initcall__kmod_lmh__187_229_lmh_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/qcom/lmh.c", i32 229, i32 1}
!2 = !{ptr @__exitcall_lmh_driver_exit, !1, !"__exitcall_lmh_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file188, !4, !"__UNIQUE_ID_file188", i1 false, i1 false}
!4 = !{!"../drivers/thermal/qcom/lmh.c", i32 231, i32 1}
!5 = !{ptr @__UNIQUE_ID_license189, !4, !"__UNIQUE_ID_license189", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description190, !7, !"__UNIQUE_ID_description190", i1 false, i1 false}
!7 = !{!"../drivers/thermal/qcom/lmh.c", i32 232, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/thermal/qcom/lmh.c", i32 224, i32 11}
!10 = !{ptr @lmh_driver, !11, !"lmh_driver", i1 false, i1 false}
!11 = !{!"../drivers/thermal/qcom/lmh.c", i32 221, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/thermal/qcom/lmh.c", i32 103, i32 34}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/thermal/qcom/lmh.c", i32 109, i32 33}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/thermal/qcom/lmh.c", i32 111, i32 3}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @lmh_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @lmh_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/thermal/qcom/lmh.c", i32 115, i32 33}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/thermal/qcom/lmh.c", i32 117, i32 3}
!28 = !{ptr @lmh_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @lmh_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/thermal/qcom/lmh.c", i32 121, i32 33}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/thermal/qcom/lmh.c", i32 123, i32 3}
!34 = !{ptr @lmh_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @lmh_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/thermal/qcom/lmh.c", i32 137, i32 3}
!38 = !{ptr @lmh_probe._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @lmh_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/thermal/qcom/lmh.c", i32 147, i32 3}
!42 = !{ptr @lmh_probe._entry.19, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @lmh_probe._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/thermal/qcom/lmh.c", i32 152, i32 3}
!46 = !{ptr @lmh_probe._entry.22, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @lmh_probe._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/thermal/qcom/lmh.c", i32 157, i32 3}
!50 = !{ptr @lmh_probe._entry.25, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @lmh_probe._entry_ptr.27, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/thermal/qcom/lmh.c", i32 162, i32 3}
!54 = !{ptr @lmh_probe._entry.28, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @lmh_probe._entry_ptr.30, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/thermal/qcom/lmh.c", i32 168, i32 3}
!58 = !{ptr @lmh_probe._entry.31, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @lmh_probe._entry_ptr.33, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/thermal/qcom/lmh.c", i32 176, i32 3}
!62 = !{ptr @lmh_probe._entry.34, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @lmh_probe._entry_ptr.36, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/thermal/qcom/lmh.c", i32 183, i32 3}
!66 = !{ptr @lmh_probe._entry.37, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @lmh_probe._entry_ptr.39, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @lmh_probe._entry.40, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../drivers/thermal/qcom/lmh.c", i32 190, i32 3}
!70 = !{ptr @lmh_probe._entry_ptr.41, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.43, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/thermal/qcom/lmh.c", i32 197, i32 3}
!73 = !{ptr @lmh_probe._entry.42, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @lmh_probe._entry_ptr.44, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.45, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/thermal/qcom/lmh.c", i32 205, i32 11}
!77 = !{ptr @.str.47, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/thermal/qcom/lmh.c", i32 207, i32 3}
!79 = !{ptr @lmh_probe._entry.46, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @lmh_probe._entry_ptr.48, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @lmh_irq_ops, !82, !"lmh_irq_ops", i1 false, i1 false}
!82 = !{!"../drivers/thermal/qcom/lmh.c", i32 81, i32 36}
!83 = !{ptr @.str.49, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/thermal/qcom/lmh.c", i32 66, i32 20}
!85 = !{ptr @lmh_irq_chip, !86, !"lmh_irq_chip", i1 false, i1 false}
!86 = !{!"../drivers/thermal/qcom/lmh.c", i32 65, i32 24}
!87 = !{ptr @lmh_table, !88, !"lmh_table", i1 false, i1 false}
!88 = !{!"../drivers/thermal/qcom/lmh.c", i32 215, i32 34}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"auto-init"}
!99 = !{i64 2153158590}
!100 = !{i64 4620146}
