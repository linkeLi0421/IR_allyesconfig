; ModuleID = '/llk/IR_all_yes/drivers/input/misc/pmic8xxx-pwrkey.c_pt.bc'
source_filename = "../drivers/input/misc/pmic8xxx-pwrkey.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.pmic8xxx_pwrkey = type { i32, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_pmic8xxx_pwrkey__228_449_pmic8xxx_pwrkey_driver_init6 = internal global ptr @pmic8xxx_pwrkey_driver_init, section ".initcall6.init", align 4
@pmic8xxx_pwrkey_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pmic8xxx_pwrkey_probe, ptr null, ptr @pmic8xxx_pwrkey_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pm8xxx_pwr_key_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm8xxx_pwr_key_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pmic8xxx_pwrkey_driver_exit = internal global ptr @pmic8xxx_pwrkey_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias229 = internal constant [47 x i8] c"pmic8xxx_pwrkey.alias=platform:pmic8xxx_pwrkey\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [54 x i8] c"pmic8xxx_pwrkey.description=PMIC8XXX Power Key driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [56 x i8] c"pmic8xxx_pwrkey.file=drivers/input/misc/pmic8xxx-pwrkey\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [31 x i8] c"pmic8xxx_pwrkey.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [58 x i8] c"pmic8xxx_pwrkey.author=Trilok Soni <tsoni@codeaurora.org>\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pm8xxx-pwrkey\00", [18 x i8] zeroinitializer }, align 32
@pm8xxx_pwr_key_id_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8058-pwrkey\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8058_pwrkey_shutdown }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8921-pwrkey\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8921_pwrkey_shutdown }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@pm8xxx_pwr_key_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pmic8xxx_pwrkey_suspend, ptr @pmic8xxx_pwrkey_resume, ptr @pmic8xxx_pwrkey_suspend, ptr @pmic8xxx_pwrkey_resume, ptr @pmic8xxx_pwrkey_suspend, ptr @pmic8xxx_pwrkey_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"debounce\00", [23 x i8] zeroinitializer }, align 32
@pmic8xxx_pwrkey_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 350, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"invalid power key trigger delay\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pmic8xxx_pwrkey_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/input/misc/pmic8xxx-pwrkey.c\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pmic8xxx_pwrkey_probe._entry_ptr = internal global ptr @pmic8xxx_pwrkey_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pull-up\00", [24 x i8] zeroinitializer }, align 32
@pmic8xxx_pwrkey_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 358, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to locate regmap for the device\0A\00", [56 x i8] zeroinitializer }, align 32
@pmic8xxx_pwrkey_probe._entry_ptr.10 = internal global ptr @pmic8xxx_pwrkey_probe._entry.8, section ".printk_index", align 4
@pmic8xxx_pwrkey_probe.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.3, ptr @.str.4, ptr @.str.12, i8 0, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pmic8xxx_pwrkey\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Can't allocate power button\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pmic8xxx_pwrkey/input0\00", [41 x i8] zeroinitializer }, align 32
@pmic8xxx_pwrkey_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 386, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed reading PON_CNTL_1 err=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@pmic8xxx_pwrkey_probe._entry_ptr.16 = internal global ptr @pmic8xxx_pwrkey_probe._entry.14, section ".printk_index", align 4
@pmic8xxx_pwrkey_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 399, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed writing PON_CNTL_1 err=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@pmic8xxx_pwrkey_probe._entry_ptr.19 = internal global ptr @pmic8xxx_pwrkey_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pmic8xxx_pwrkey_press\00", [42 x i8] zeroinitializer }, align 32
@pmic8xxx_pwrkey_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 408, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can't get %d IRQ for pwrkey: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@pmic8xxx_pwrkey_probe._entry_ptr.23 = internal global ptr @pmic8xxx_pwrkey_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pmic8xxx_pwrkey_release\00", [40 x i8] zeroinitializer }, align 32
@pmic8xxx_pwrkey_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 417, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@pmic8xxx_pwrkey_probe._entry_ptr.26 = internal global ptr @pmic8xxx_pwrkey_probe._entry.25, section ".printk_index", align 4
@pmic8xxx_pwrkey_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 423, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Can't register power key: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@pmic8xxx_pwrkey_probe._entry_ptr.29 = internal global ptr @pmic8xxx_pwrkey_probe._entry.27, section ".printk_index", align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@pm8058_disable_smps_locally_set_pull_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: regulator already disabled\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"pm8058_disable_smps_locally_set_pull_down\00", [54 x i8] zeroinitializer }, align 32
@pm8058_disable_smps_locally_set_pull_down._entry_ptr = internal global ptr @pm8058_disable_smps_locally_set_pull_down._entry, section ".printk_index", align 4
@switch.table.pm8058_disable_smps_locally_set_pull_down = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 224, i32 224, i32 192], [20 x i8] zeroinitializer }, align 32
@switch.table.pm8058_disable_smps_locally_set_pull_down.32 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 145, i32 144, i32 144], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant [23 x i8] c"pmic8xxx_pwrkey_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 440, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 444, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [24 x i8] c"pm8xxx_pwr_key_id_table\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 433, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [22 x i8] c"pm8xxx_pwr_key_pm_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 123, i32 8 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 345, i32 46 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 350, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 354, i32 53 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 358, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 372, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 379, i32 14 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 386, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 399, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 405, i32 11 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 407, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 414, i32 11 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 416, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 423, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private constant [40 x i8] c"../drivers/input/misc/pmic8xxx-pwrkey.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 200, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant [55 x i8] c"switch.table.pm8058_disable_smps_locally_set_pull_down\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [58 x i8] c"switch.table.pm8058_disable_smps_locally_set_pull_down.32\00", align 1
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_alias229, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_pmic8xxx_pwrkey_driver_exit, ptr @__initcall__kmod_pmic8xxx_pwrkey__228_449_pmic8xxx_pwrkey_driver_init6, ptr @pm8058_disable_smps_locally_set_pull_down._entry, ptr @pm8058_disable_smps_locally_set_pull_down._entry_ptr, ptr @pmic8xxx_pwrkey_driver_exit, ptr @pmic8xxx_pwrkey_probe._entry, ptr @pmic8xxx_pwrkey_probe._entry.14, ptr @pmic8xxx_pwrkey_probe._entry.17, ptr @pmic8xxx_pwrkey_probe._entry.21, ptr @pmic8xxx_pwrkey_probe._entry.25, ptr @pmic8xxx_pwrkey_probe._entry.27, ptr @pmic8xxx_pwrkey_probe._entry.8, ptr @pmic8xxx_pwrkey_probe._entry_ptr, ptr @pmic8xxx_pwrkey_probe._entry_ptr.10, ptr @pmic8xxx_pwrkey_probe._entry_ptr.16, ptr @pmic8xxx_pwrkey_probe._entry_ptr.19, ptr @pmic8xxx_pwrkey_probe._entry_ptr.23, ptr @pmic8xxx_pwrkey_probe._entry_ptr.26, ptr @pmic8xxx_pwrkey_probe._entry_ptr.29, ptr @pmic8xxx_pwrkey_driver, ptr @.str, ptr @pm8xxx_pwr_key_id_table, ptr @pm8xxx_pwr_key_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @switch.table.pm8058_disable_smps_locally_set_pull_down, ptr @switch.table.pm8058_disable_smps_locally_set_pull_down.32], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_pwrkey_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_pwr_key_id_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_pwr_key_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_pwrkey_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_pwrkey_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_pwrkey_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_pwrkey_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_pwrkey_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_pwrkey_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_pwrkey_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8058_disable_smps_locally_set_pull_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pm8058_disable_smps_locally_set_pull_down to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pm8058_disable_smps_locally_set_pull_down.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic8xxx_pwrkey_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pmic8xxx_pwrkey_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pmic8xxx_pwrkey_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @pmic8xxx_pwrkey_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic8xxx_pwrkey_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pon_cntl = alloca i32, align 4
  %kpd_delay = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pon_cntl) #6
  %0 = ptrtoint ptr %pon_cntl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pon_cntl, align 4, !annotation !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kpd_delay) #6
  %1 = ptrtoint ptr %kpd_delay to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %kpd_delay, align 4, !annotation !79
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull %kpd_delay, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %kpd_delay to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 15625, ptr %kpd_delay, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %kpd_delay to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %kpd_delay, align 4
  %7 = add i32 %6, -2000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1984376, i32 %7)
  %8 = icmp ult i32 %7, -1984376
  br i1 %8, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call.i = call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.7, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i, null
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %call11 = call ptr @dev_get_regmap(ptr noundef %12, ptr noundef null) #6
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  %call.i164 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #6
  %tobool21.not = icmp eq ptr %call.i164, null
  br i1 %tobool21.not, label %if.end18.cleanup_crit_edge, label %if.end23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %call25 = call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %shutdown_fn = getelementptr inbounds %struct.pmic8xxx_pwrkey, ptr %call.i164, i32 0, i32 2
  %13 = ptrtoint ptr %shutdown_fn to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call25, ptr %shutdown_fn, align 4
  %regmap26 = getelementptr inbounds %struct.pmic8xxx_pwrkey, ptr %call.i164, i32 0, i32 1
  %14 = ptrtoint ptr %regmap26 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call11, ptr %regmap26, align 4
  %15 = ptrtoint ptr %call.i164 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call1, ptr %call.i164, align 4
  %call29 = call ptr @devm_input_allocate_device(ptr noundef %dev) #6
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %do.body32, label %if.end43

do.body32:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pmic8xxx_pwrkey_probe.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pmic8xxx_pwrkey_probe, %if.then38)) #6
          to label %cleanup [label %if.then38], !srcloc !80

if.then38:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pmic8xxx_pwrkey_probe.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.12) #6
  br label %cleanup

if.end43:                                         ; preds = %if.end23
  call void @input_set_capability(ptr noundef nonnull %call29, i32 noundef 1, i32 noundef 116) #6
  %16 = ptrtoint ptr %call29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.11, ptr %call29, align 8
  %phys = getelementptr inbounds %struct.input_dev, ptr %call29, i32 0, i32 1
  %17 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.13, ptr %phys, align 4
  %18 = ptrtoint ptr %kpd_delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %kpd_delay, align 4
  %call50 = call i32 @regmap_read(ptr noundef nonnull %call11, i32 noundef 28, ptr noundef nonnull %pon_cntl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %do.end56, label %if.end58

do.end56:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call50) #9
  br label %cleanup

if.end58:                                         ; preds = %if.end43
  %shl = shl i32 %19, 6
  %div = udiv i32 %shl, 1000000
  %20 = call i32 @llvm.ctlz.i32(i32 %div, i1 true) #6, !range !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %shl)
  %21 = icmp ult i32 %shl, 1000000
  %22 = ptrtoint ptr %pon_cntl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pon_cntl, align 4
  %and = and i32 %23, -136
  %sub.i.op.i = and i32 %20, 7
  %sub.i.op.i.op = xor i32 %sub.i.op.i, 7
  %and59 = select i1 %21, i32 7, i32 %sub.i.op.i.op
  %masksel = select i1 %tobool.i.not, i32 0, i32 128
  %or = or i32 %and59, %masksel
  %storemerge = or i32 %or, %and
  store i32 %storemerge, ptr %pon_cntl, align 4
  %call65 = call i32 @regmap_write(ptr noundef nonnull %call11, i32 noundef 28, i32 noundef %storemerge) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %do.end71, label %if.end73

do.end71:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call65) #9
  br label %cleanup

if.end73:                                         ; preds = %if.end58
  %call.i165 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call1, ptr noundef nonnull @pwrkey_press_irq, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.20, ptr noundef nonnull %call29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %tobool76.not = icmp eq i32 %call.i165, 0
  br i1 %tobool76.not, label %if.end82, label %do.end80

do.end80:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call1, i32 noundef %call.i165) #9
  br label %cleanup

if.end82:                                         ; preds = %if.end73
  %call.i166 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call, ptr noundef nonnull @pwrkey_release_irq, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef nonnull %call29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %tobool85.not = icmp eq i32 %call.i166, 0
  br i1 %tobool85.not, label %if.end91, label %do.end89

do.end89:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call, i32 noundef %call.i166) #9
  br label %cleanup

if.end91:                                         ; preds = %if.end82
  %call92 = call i32 @input_register_device(ptr noundef nonnull %call29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end99, label %do.end97

do.end97:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %call92) #9
  br label %cleanup

if.end99:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i164, ptr %driver_data.i.i, align 4
  %call101 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %do.end97, %do.end89, %do.end80, %do.end71, %do.end56, %if.then38, %do.body32, %if.end18.cleanup_crit_edge, %do.end16, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call50, %do.end56 ], [ %call65, %do.end71 ], [ %call.i165, %do.end80 ], [ %call.i166, %do.end89 ], [ %call92, %do.end97 ], [ 0, %if.end99 ], [ -19, %do.end16 ], [ -12, %if.end18.cleanup_crit_edge ], [ -12, %if.then38 ], [ -12, %do.body32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kpd_delay) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pon_cntl) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pmic8xxx_pwrkey_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %2 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp = icmp eq i32 %2, 6
  %shutdown_fn = getelementptr inbounds %struct.pmic8xxx_pwrkey, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %shutdown_fn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %shutdown_fn, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  %call3 = tail call i32 %4(ptr noundef %1, i1 noundef zeroext %cmp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %spec.select = select i1 %cmp, i32 248, i32 240
  %regmap = getelementptr inbounds %struct.pmic8xxx_pwrkey, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 28, i32 noundef 248, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwrkey_press_irq(i32 noundef %irq, ptr noundef %_pwr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @input_event(ptr noundef %_pwr, i32 noundef 1, i32 noundef 116, i32 noundef 1) #6
  tail call void @input_event(ptr noundef %_pwr, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwrkey_release_irq(i32 noundef %irq, ptr noundef %_pwr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @input_event(ptr noundef %_pwr, i32 noundef 1, i32 noundef 116, i32 noundef 0) #6
  tail call void @input_event(ptr noundef %_pwr, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8058_pwrkey_shutdown(ptr nocapture noundef readonly %pwrkey, i1 noundef zeroext %reset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.pmic8xxx_pwrkey, ptr %pwrkey, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  br i1 %reset, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @pm8058_disable_smps_locally_set_pull_down(ptr noundef %1, i16 noundef zeroext 4, i16 noundef zeroext 132, i16 noundef zeroext 24, i8 noundef zeroext -128)
  tail call fastcc void @pm8058_disable_smps_locally_set_pull_down(ptr noundef %1, i16 noundef zeroext 5, i16 noundef zeroext 133, i16 noundef zeroext 24, i8 noundef zeroext 64)
  tail call fastcc void @pm8058_disable_smps_locally_set_pull_down(ptr noundef %1, i16 noundef zeroext 273, i16 noundef zeroext 282, i16 noundef zeroext 456, i8 noundef zeroext -112)
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 456, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call.i1.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 288, i32 noundef 192, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 289, i32 noundef 191, i32 noundef 147, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select = select i1 %reset, i32 4, i32 0
  %call.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 43, i32 noundef 4, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i25, %if.end8 ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8921_pwrkey_shutdown(ptr nocapture noundef readonly %pwrkey, i1 noundef zeroext %reset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.pmic8xxx_pwrkey, ptr %pwrkey, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %spec.select = select i1 %reset, i32 4, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 266, i32 noundef 4, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm8058_disable_smps_locally_set_pull_down(ptr noundef %regmap, i16 noundef zeroext %ctrl_addr, i16 noundef zeroext %test2_addr, i16 noundef zeroext %master_enable_addr, i8 noundef zeroext %master_enable_bit) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !79
  %conv = zext i16 %test2_addr to i32
  %call = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef %conv, i32 noundef 112) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef %conv, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg, align 4
  %and = and i32 %2, 2
  store i32 %and, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end6.if.end64_crit_edge, label %if.then8

if.end6.if.end64_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then8:                                         ; preds = %if.end6
  %conv9 = zext i16 %ctrl_addr to i32
  %call10 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef %conv9, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.then8
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %5 = lshr i32 %4, 6
  %conv18 = and i32 %5, 3
  %switch.tableidx = add nsw i32 %conv18, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  br i1 %6, label %switch.lookup, label %do.end

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #9
  br label %cleanup

switch.lookup:                                    ; preds = %if.end13
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.pm8058_disable_smps_locally_set_pull_down, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep5 = getelementptr inbounds [3 x i32], ptr @switch.table.pm8058_disable_smps_locally_set_pull_down.32, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load6 = load i32, ptr %switch.gep5, align 4
  %conv23 = and i32 %4, 63
  %add = add nuw nsw i32 %conv23, 1
  %9 = lshr i32 %add, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %conv23)
  %cmp28 = icmp eq i32 %conv23, 63
  %call34 = call i32 @regmap_write(ptr noundef %regmap, i32 noundef %conv, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %switch.lookup
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef %conv, i32 noundef 241, i32 noundef %switch.load6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool41.not = icmp eq i32 %call.i, 0
  br i1 %tobool41.not, label %if.end43, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %if.end37
  %call46 = call i32 @regmap_write(ptr noundef %regmap, i32 noundef %conv, i32 noundef 112) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end49:                                         ; preds = %if.end43
  %call.i1 = call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef %conv, i32 noundef 242, i32 noundef 240, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool52.not = icmp eq i32 %call.i1, 0
  br i1 %tobool52.not, label %if.end54, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end54:                                         ; preds = %if.end49
  %conv58 = select i1 %cmp28, i32 31, i32 %9
  %or59 = or i32 %switch.load, %conv58
  %call.i2 = call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef %conv9, i32 noundef 255, i32 noundef %or59, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool61.not = icmp eq i32 %call.i2, 0
  br i1 %tobool61.not, label %if.end54.if.end64_crit_edge, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end54.if.end64_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.end64:                                         ; preds = %if.end54.if.end64_crit_edge, %if.end6.if.end64_crit_edge
  %conv65 = zext i16 %master_enable_addr to i32
  %conv66 = zext i8 %master_enable_bit to i32
  %call.i3 = call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef %conv65, i32 noundef %conv66, i32 noundef %conv66, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool69.not = icmp eq i32 %call.i3, 0
  br i1 %tobool69.not, label %if.end71, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end71:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %conv72 = zext i16 %ctrl_addr to i32
  %call.i4 = call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef %conv72, i32 noundef 192, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.end64.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %do.end, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic8xxx_pwrkey_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic8xxx_pwrkey_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !54, !56, !57, !59, !60, !61, !63, !65, !66, !67, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_pmic8xxx_pwrkey__228_449_pmic8xxx_pwrkey_driver_init6, !1, !"__initcall__kmod_pmic8xxx_pwrkey__228_449_pmic8xxx_pwrkey_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/pmic8xxx-pwrkey.c", i32 449, i32 1}
!2 = !{ptr @__exitcall_pmic8xxx_pwrkey_driver_exit, !1, !"__exitcall_pmic8xxx_pwrkey_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias229, !4, !"__UNIQUE_ID_alias229", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/pmic8xxx-pwrkey.c", i32 451, i32 1}
!5 = !{ptr @__UNIQUE_ID_description230, !6, !"__UNIQUE_ID_description230", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/pmic8xxx-pwrkey.c", i32 452, i32 1}
!7 = !{ptr @__UNIQUE_ID_file231, !8, !"__UNIQUE_ID_file231", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/pmic8xxx-pwrkey.c", i32 453, i32 1}
!9 = !{ptr @__UNIQUE_ID_license232, !8, !"__UNIQUE_ID_license232", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_author233, !11, !"__UNIQUE_ID_author233", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/pmic8xxx-pwrkey.c", i32 454, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/pmic8xxx-pwrkey.c", i32 444, i32 11}
!14 = !{ptr @pmic8xxx_pwrkey_driver, !15, !"pmic8xxx_pwrkey_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/pmic8xxx-pwrkey.c", i32 440, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/misc/pmic8xxx-pwrkey.c", i32 345, i32 46}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/misc/pmic8xxx-pwrkey.c", i32 350, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @pmic8xxx_pwrkey_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @pmic8xxx_pwrkey_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/misc/pmic8xxx-pwrkey.c", i32 354, i32 53}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/misc/pmic8xxx-pwrkey.c", i32 358, i32 3}
!30 = !{ptr @pmic8xxx_pwrkey_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @pmic8xxx_pwrkey_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/misc/pmic8xxx-pwrkey.c", i32 372, i32 3}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @pmic8xxx_pwrkey_probe.__UNIQUE_ID_ddebug227, !33, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/misc/pmic8xxx-pwrkey.c", i32 379, i32 14}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/misc/pmic8xxx-pwrkey.c", i32 386, i32 3}
!40 = !{ptr @pmic8xxx_pwrkey_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @pmic8xxx_pwrkey_probe._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/misc/pmic8xxx-pwrkey.c", i32 399, i32 3}
!44 = !{ptr @pmic8xxx_pwrkey_probe._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @pmic8xxx_pwrkey_probe._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/misc/pmic8xxx-pwrkey.c", i32 405, i32 11}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/misc/pmic8xxx-pwrkey.c", i32 407, i32 3}
!50 = !{ptr @pmic8xxx_pwrkey_probe._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @pmic8xxx_pwrkey_probe._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/misc/pmic8xxx-pwrkey.c", i32 414, i32 11}
!54 = !{ptr @pmic8xxx_pwrkey_probe._entry.25, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../drivers/input/misc/pmic8xxx-pwrkey.c", i32 416, i32 3}
!56 = !{ptr @pmic8xxx_pwrkey_probe._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/misc/pmic8xxx-pwrkey.c", i32 423, i32 3}
!59 = !{ptr @pmic8xxx_pwrkey_probe._entry.27, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @pmic8xxx_pwrkey_probe._entry_ptr.29, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @pm8xxx_pwr_key_id_table, !62, !"pm8xxx_pwr_key_id_table", i1 false, i1 false}
!62 = !{!"../drivers/input/misc/pmic8xxx-pwrkey.c", i32 433, i32 34}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/misc/pmic8xxx-pwrkey.c", i32 200, i32 4}
!65 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @pm8058_disable_smps_locally_set_pull_down._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @pm8058_disable_smps_locally_set_pull_down._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @pm8xxx_pwr_key_pm_ops, !69, !"pm8xxx_pwr_key_pm_ops", i1 false, i1 false}
!69 = !{!"../drivers/input/misc/pmic8xxx-pwrkey.c", i32 123, i32 8}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"auto-init"}
!80 = !{i64 2148964149, i64 2148964154, i64 2148964167, i64 2148964211, i64 2148964245, i64 2148964266}
!81 = !{i32 0, i32 33}
